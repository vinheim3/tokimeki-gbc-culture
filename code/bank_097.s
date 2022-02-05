; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $097", ROMX[$4000], BANK[$97]

	db $38, $97                                      ; $4000: $38 $97
	scf                                              ; $4002: $37
	inc sp                                           ; $4003: $33
	add hl, bc                                       ; $4004: $09
	cpl                                              ; $4005: $2f
	ld [hl-], a                                      ; $4006: $32
	add hl, sp                                       ; $4007: $39
	dec sp                                           ; $4008: $3b
	ld c, b                                          ; $4009: $48
	scf                                              ; $400a: $37
	ld [hl], $eb                                     ; $400b: $36 $eb
	add h                                            ; $400d: $84
	xor e                                            ; $400e: $ab
	db $ec                                           ; $400f: $ec
	di                                               ; $4010: $f3
	ld [hl], l                                       ; $4011: $75
	ld a, l                                          ; $4012: $7d

jr_097_4013:
	xor $15                                          ; $4013: $ee $15
	ldh a, [rAUDTERM]                                ; $4015: $f0 $25
	xor b                                            ; $4017: $a8
	ldh a, [rAUD4POLY]                               ; $4018: $f0 $22
	ld a, l                                          ; $401a: $7d
	ld h, l                                          ; $401b: $65
	ld d, d                                          ; $401c: $52
	ld c, d                                          ; $401d: $4a
	sub [hl]                                         ; $401e: $96
	dec sp                                           ; $401f: $3b
	ccf                                              ; $4020: $3f
	ld c, [hl]                                       ; $4021: $4e
	sub a                                            ; $4022: $97
	ld c, b                                          ; $4023: $48
	and e                                            ; $4024: $a3
	cpl                                              ; $4025: $2f
	ld [hl-], a                                      ; $4026: $32
	pop hl                                           ; $4027: $e1
	ld b, d                                          ; $4028: $42
	db $eb                                           ; $4029: $eb
	ld h, b                                          ; $402a: $60
	inc de                                           ; $402b: $13
	ld b, d                                          ; $402c: $42
	ldh a, [$38]                                     ; $402d: $f0 $38
	ld d, e                                          ; $402f: $53
	inc [hl]                                         ; $4030: $34
	ld b, l                                          ; $4031: $45
	inc a                                            ; $4032: $3c
	dec sp                                           ; $4033: $3b
	dec a                                            ; $4034: $3d
	ld a, [hl-]                                      ; $4035: $3a
	ld [hl], h                                       ; $4036: $74
	xor b                                            ; $4037: $a8
	xor $10                                          ; $4038: $ee $10
	db $ed                                           ; $403a: $ed
	ld e, b                                          ; $403b: $58
	and e                                            ; $403c: $a3
	cpl                                              ; $403d: $2f
	db $ed                                           ; $403e: $ed
	ld l, [hl]                                       ; $403f: $6e
	ld l, b                                          ; $4040: $68
	ld c, e                                          ; $4041: $4b
	ld a, b                                          ; $4042: $78
	ccf                                              ; $4043: $3f
	inc de                                           ; $4044: $13
	ld b, l                                          ; $4045: $45
	inc a                                            ; $4046: $3c

jr_097_4047:
	dec sp                                           ; $4047: $3b
	dec a                                            ; $4048: $3d
	ld a, [hl-]                                      ; $4049: $3a
	xor b                                            ; $404a: $a8
	ld e, b                                          ; $404b: $58
	ccf                                              ; $404c: $3f
	inc [hl]                                         ; $404d: $34
	db $ec                                           ; $404e: $ec
	push bc                                          ; $404f: $c5
	db $ed                                           ; $4050: $ed
	ld e, b                                          ; $4051: $58
	and e                                            ; $4052: $a3
	ld b, [hl]                                       ; $4053: $46
	dec sp                                           ; $4054: $3b
	inc [hl]                                         ; $4055: $34
	dec d                                            ; $4056: $15
	and b                                            ; $4057: $a0
	cpl                                              ; $4058: $2f
	ld b, e                                          ; $4059: $43
	ld b, [hl]                                       ; $405a: $46
	ld c, l                                          ; $405b: $4d
	inc [hl]                                         ; $405c: $34
	db $ed                                           ; $405d: $ed
	xor c                                            ; $405e: $a9
	xor c                                            ; $405f: $a9
	db $eb                                           ; $4060: $eb
	rst FarCall                                          ; $4061: $f7
	and c                                            ; $4062: $a1
	ld b, l                                          ; $4063: $45
	inc a                                            ; $4064: $3c
	dec sp                                           ; $4065: $3b
	dec a                                            ; $4066: $3d
	ld d, b                                          ; $4067: $50
	xor e                                            ; $4068: $ab
	inc hl                                           ; $4069: $23
	xor $06                                          ; $406a: $ee $06
	ld b, a                                          ; $406c: $47
	ld a, d                                          ; $406d: $7a
	ld d, b                                          ; $406e: $50
	ld a, [hl-]                                      ; $406f: $3a
	jr c, jr_097_4013                                ; $4070: $38 $a1

	cpl                                              ; $4072: $2f
	ld b, e                                          ; $4073: $43
	xor $1f                                          ; $4074: $ee $1f
	inc [hl]                                         ; $4076: $34
	pop af                                           ; $4077: $f1
	pop af                                           ; $4078: $f1
	dec sp                                           ; $4079: $3b
	ccf                                              ; $407a: $3f
	ld d, l                                          ; $407b: $55
	ld b, l                                          ; $407c: $45
	and b                                            ; $407d: $a0
	ldh a, [rIF]                                     ; $407e: $f0 $0f
	ld e, c                                          ; $4080: $59
	ldh a, [$60]                                     ; $4081: $f0 $60
	ldh a, [$c4]                                     ; $4083: $f0 $c4
	ld e, c                                          ; $4085: $59
	xor h                                            ; $4086: $ac
	db $eb                                           ; $4087: $eb
	ld h, e                                          ; $4088: $63
	ld c, h                                          ; $4089: $4c
	and b                                            ; $408a: $a0
	cpl                                              ; $408b: $2f
	ld [hl-], a                                      ; $408c: $32
	db $ec                                           ; $408d: $ec
	di                                               ; $408e: $f3
	ld d, e                                          ; $408f: $53
	jr c, @+$3c                                      ; $4090: $38 $3a

	inc a                                            ; $4092: $3c
	dec sp                                           ; $4093: $3b
	dec a                                            ; $4094: $3d
	ld d, b                                          ; $4095: $50
	inc de                                           ; $4096: $13
	ld c, a                                          ; $4097: $4f
	dec sp                                           ; $4098: $3b
	ld c, c                                          ; $4099: $49
	db $ec                                           ; $409a: $ec
	cp c                                             ; $409b: $b9
	ld b, d                                          ; $409c: $42
	ld b, a                                          ; $409d: $47
	inc sp                                           ; $409e: $33
	add hl, bc                                       ; $409f: $09
	db $ec                                           ; $40a0: $ec
	ld bc, $9e34                                     ; $40a1: $01 $34 $9e
	xor $2d                                          ; $40a4: $ee $2d
	add b                                            ; $40a6: $80
	ld c, a                                          ; $40a7: $4f

Call_097_40a8:
	inc de                                           ; $40a8: $13
	xor $06                                          ; $40a9: $ee $06
	ld b, a                                          ; $40ab: $47
	db $eb                                           ; $40ac: $eb
	xor a                                            ; $40ad: $af
	ldh a, [rIF]                                     ; $40ae: $f0 $0f
	ld e, c                                          ; $40b0: $59
	ldh a, [$60]                                     ; $40b1: $f0 $60
	ldh a, [$c4]                                     ; $40b3: $f0 $c4
	ld e, c                                          ; $40b5: $59
	inc de                                           ; $40b6: $13
	ld l, [hl]                                       ; $40b7: $6e
	dec sp                                           ; $40b8: $3b
	ccf                                              ; $40b9: $3f
	dec a                                            ; $40ba: $3d
	ld b, l                                          ; $40bb: $45
	ld c, h                                          ; $40bc: $4c
	and b                                            ; $40bd: $a0
	cpl                                              ; $40be: $2f
	ld b, e                                          ; $40bf: $43
	ld b, b                                          ; $40c0: $40
	add hl, sp                                       ; $40c1: $39
	ld b, h                                          ; $40c2: $44
	ld c, h                                          ; $40c3: $4c
	xor b                                            ; $40c4: $a8
	jr c, jr_097_4047                                ; $40c5: $38 $80

	inc a                                            ; $40c7: $3c
	ld d, b                                          ; $40c8: $50
	ldh a, [$34]                                     ; $40c9: $f0 $34
	ldh a, [$cf]                                     ; $40cb: $f0 $cf
	ld b, a                                          ; $40cd: $47
	ld a, [hl-]                                      ; $40ce: $3a
	dec sp                                           ; $40cf: $3b
	dec a                                            ; $40d0: $3d
	ld b, d                                          ; $40d1: $42
	inc a                                            ; $40d2: $3c
	ld a, [hl-]                                      ; $40d3: $3a
	and b                                            ; $40d4: $a0
	ldh a, [$f4]                                     ; $40d5: $f0 $f4
	ld e, [hl]                                       ; $40d7: $5e
	ccf                                              ; $40d8: $3f
	ld a, [hl-]                                      ; $40d9: $3a
	jr c, jr_097_411e                                ; $40da: $38 $42

	xor c                                            ; $40dc: $a9
	pop af                                           ; $40dd: $f1
	add hl, de                                       ; $40de: $19
	adc c                                            ; $40df: $89
	ldh a, [rTIMA]                                   ; $40e0: $f0 $05
	ld b, d                                          ; $40e2: $42
	ldh a, [rBGP]                                    ; $40e3: $f0 $47
	inc [hl]                                         ; $40e5: $34
	ldh a, [$6f]                                     ; $40e6: $f0 $6f
	ldh a, [$0b]                                     ; $40e8: $f0 $0b
	ld b, a                                          ; $40ea: $47
	db $ed                                           ; $40eb: $ed
	ld h, d                                          ; $40ec: $62
	ld c, c                                          ; $40ed: $49
	inc de                                           ; $40ee: $13
	db $eb                                           ; $40ef: $eb
	xor a                                            ; $40f0: $af
	ldh a, [rIF]                                     ; $40f1: $f0 $0f
	ld e, c                                          ; $40f3: $59
	ldh a, [$60]                                     ; $40f4: $f0 $60
	ldh a, [$c4]                                     ; $40f6: $f0 $c4
	ld e, c                                          ; $40f8: $59
	ld b, d                                          ; $40f9: $42
	xor $1d                                          ; $40fa: $ee $1d
	inc de                                           ; $40fc: $13
	db $eb                                           ; $40fd: $eb
	ld d, [hl]                                       ; $40fe: $56
	ld b, d                                          ; $40ff: $42
	ldh a, [$98]                                     ; $4100: $f0 $98
	ld b, h                                          ; $4102: $44
	dec sp                                           ; $4103: $3b
	ld e, l                                          ; $4104: $5d
	and c                                            ; $4105: $a1
	cpl                                              ; $4106: $2f
	ld b, e                                          ; $4107: $43
	ld c, b                                          ; $4108: $48
	halt                                             ; $4109: $76
	inc a                                            ; $410a: $3c
	and c                                            ; $410b: $a1
	ld h, e                                          ; $410c: $63
	ldh a, [rAUD3HIGH]                               ; $410d: $f0 $1e
	inc h                                            ; $410f: $24
	inc h                                            ; $4110: $24
	inc h                                            ; $4111: $24
	inc h                                            ; $4112: $24
	inc h                                            ; $4113: $24
	dec a                                            ; $4114: $3d
	ldh a, [rAUD3HIGH]                               ; $4115: $f0 $1e
	inc h                                            ; $4117: $24
	inc h                                            ; $4118: $24
	inc h                                            ; $4119: $24
	inc h                                            ; $411a: $24
	inc h                                            ; $411b: $24
	ld a, $a0                                        ; $411c: $3e $a0

jr_097_411e:
	cpl                                              ; $411e: $2f
	ld b, e                                          ; $411f: $43
	ld d, h                                          ; $4120: $54
	ld d, b                                          ; $4121: $50
	and d                                            ; $4122: $a2
	ld e, h                                          ; $4123: $5c
	ld d, [hl]                                       ; $4124: $56
	ld b, [hl]                                       ; $4125: $46
	inc [hl]                                         ; $4126: $34
	ld [hl], b                                       ; $4127: $70
	ld [hl], c                                       ; $4128: $71
	ld b, c                                          ; $4129: $41
	scf                                              ; $412a: $37
	inc de                                           ; $412b: $13
	db $eb                                           ; $412c: $eb
	ccf                                              ; $412d: $3f
	and b                                            ; $412e: $a0
	cpl                                              ; $412f: $2f
	ld b, e                                          ; $4130: $43
	add h                                            ; $4131: $84
	ld h, d                                          ; $4132: $62
	inc a                                            ; $4133: $3c
	ld d, b                                          ; $4134: $50
	inc a                                            ; $4135: $3c
	dec sp                                           ; $4136: $3b
	ccf                                              ; $4137: $3f
	ld c, b                                          ; $4138: $48
	add hl, bc                                       ; $4139: $09
	ld b, [hl]                                       ; $413a: $46
	dec sp                                           ; $413b: $3b
	xor l                                            ; $413c: $ad
	ld c, h                                          ; $413d: $4c
	add l                                            ; $413e: $85
	inc [hl]                                         ; $413f: $34
	ld [hl], d                                       ; $4140: $72
	ccf                                              ; $4141: $3f
	and d                                            ; $4142: $a2
	cpl                                              ; $4143: $2f
	ld b, e                                          ; $4144: $43
	ld e, [hl]                                       ; $4145: $5e
	and c                                            ; $4146: $a1
	ldh a, [c]                                       ; $4147: $f2
	ld b, e                                          ; $4148: $43
	ld c, b                                          ; $4149: $48
	and b                                            ; $414a: $a0
	cpl                                              ; $414b: $2f
	ld b, e                                          ; $414c: $43
	adc b                                            ; $414d: $88
	sub c                                            ; $414e: $91
	ld b, h                                          ; $414f: $44
	ld c, b                                          ; $4150: $48
	and b                                            ; $4151: $a0
	ldh a, [$57]                                     ; $4152: $f0 $57
	ldh a, [$ae]                                     ; $4154: $f0 $ae
	xor e                                            ; $4156: $ab
	db $ed                                           ; $4157: $ed
	daa                                              ; $4158: $27
	ld l, c                                          ; $4159: $69
	db $eb                                           ; $415a: $eb
	xor a                                            ; $415b: $af
	ld c, h                                          ; $415c: $4c
	ld c, b                                          ; $415d: $48
	and b                                            ; $415e: $a0
	cpl                                              ; $415f: $2f
	ld [hl-], a                                      ; $4160: $32
	ldh a, [rAUD4POLY]                               ; $4161: $f0 $22
	ld h, l                                          ; $4163: $65
	ldh a, [rDIV]                                    ; $4164: $f0 $04
	sub e                                            ; $4166: $93
	ldh a, [$1f]                                     ; $4167: $f0 $1f
	ld e, c                                          ; $4169: $59
	add e                                            ; $416a: $83
	ld b, a                                          ; $416b: $47
	inc de                                           ; $416c: $13
	db $ed                                           ; $416d: $ed
	and e                                            ; $416e: $a3
	ld a, $3a                                        ; $416f: $3e $3a
	ld e, h                                          ; $4171: $5c
	ld d, [hl]                                       ; $4172: $56
	ld a, [hl-]                                      ; $4173: $3a
	and e                                            ; $4174: $a3
	cpl                                              ; $4175: $2f
	ld [hl-], a                                      ; $4176: $32
	ld b, [hl]                                       ; $4177: $46
	dec sp                                           ; $4178: $3b
	inc [hl]                                         ; $4179: $34
	db $ed                                           ; $417a: $ed
	ld d, e                                          ; $417b: $53
	ld b, h                                          ; $417c: $44
	dec [hl]                                         ; $417d: $35
	inc sp                                           ; $417e: $33
	inc de                                           ; $417f: $13
	ld [hl+], a                                      ; $4180: $22
	ldh a, [$b3]                                     ; $4181: $f0 $b3
	ld e, b                                          ; $4183: $58
	pop af                                           ; $4184: $f1
	dec [hl]                                         ; $4185: $35
	ld b, c                                          ; $4186: $41
	and b                                            ; $4187: $a0
	ld l, e                                          ; $4188: $6b
	inc a                                            ; $4189: $3c
	xor $1c                                          ; $418a: $ee $1c
	xor c                                            ; $418c: $a9
	ld de, $56f0                                     ; $418d: $11 $f0 $56
	and b                                            ; $4190: $a0
	cpl                                              ; $4191: $2f
	pop af                                           ; $4192: $f1
	pop af                                           ; $4193: $f1
	dec sp                                           ; $4194: $3b
	ccf                                              ; $4195: $3f
	jr c, @+$57                                      ; $4196: $38 $55

	ld b, l                                          ; $4198: $45
	add hl, bc                                       ; $4199: $09
	ld d, d                                          ; $419a: $52
	ld b, [hl]                                       ; $419b: $46
	inc [hl]                                         ; $419c: $34
	sub c                                            ; $419d: $91
	ldh a, [$59]                                     ; $419e: $f0 $59
	ld b, d                                          ; $41a0: $42
	ld d, h                                          ; $41a1: $54
	ld c, c                                          ; $41a2: $49
	ld c, h                                          ; $41a3: $4c
	and b                                            ; $41a4: $a0
	cpl                                              ; $41a5: $2f
	ld b, b                                          ; $41a6: $40
	ld c, l                                          ; $41a7: $4d
	ld e, e                                          ; $41a8: $5b
	ld d, [hl]                                       ; $41a9: $56
	inc [hl]                                         ; $41aa: $34
	ld h, h                                          ; $41ab: $64
	ldh a, [$bc]                                     ; $41ac: $f0 $bc
	ld b, a                                          ; $41ae: $47
	add hl, bc                                       ; $41af: $09
	ld b, b                                          ; $41b0: $40
	add hl, sp                                       ; $41b1: $39
	ld c, b                                          ; $41b2: $48
	ld e, b                                          ; $41b3: $58
	ld b, l                                          ; $41b4: $45
	ld a, [hl-]                                      ; $41b5: $3a
	ld d, b                                          ; $41b6: $50
	and b                                            ; $41b7: $a0
	cpl                                              ; $41b8: $2f
	ld [hl-], a                                      ; $41b9: $32
	db $ed                                           ; $41ba: $ed
	ld d, e                                          ; $41bb: $53
	inc [hl]                                         ; $41bc: $34
	pop af                                           ; $41bd: $f1
	or $40                                           ; $41be: $f6 $40
	add hl, sp                                       ; $41c0: $39
	ld a, [hl-]                                      ; $41c1: $3a
	inc de                                           ; $41c2: $13
	pop af                                           ; $41c3: $f1
	inc h                                            ; $41c4: $24
	adc e                                            ; $41c5: $8b
	ld b, h                                          ; $41c6: $44
	dec sp                                           ; $41c7: $3b
	dec a                                            ; $41c8: $3d
	ld a, [hl-]                                      ; $41c9: $3a
	ld [hl], h                                       ; $41ca: $74
	and e                                            ; $41cb: $a3
	cpl                                              ; $41cc: $2f
	ld [hl-], a                                      ; $41cd: $32
	db $ed                                           ; $41ce: $ed
	ld d, e                                          ; $41cf: $53
	xor h                                            ; $41d0: $ac
	pop af                                           ; $41d1: $f1
	or $40                                           ; $41d2: $f6 $40
	add hl, sp                                       ; $41d4: $39
	ld b, h                                          ; $41d5: $44
	ld a, [hl-]                                      ; $41d6: $3a
	ld [hl], h                                       ; $41d7: $74
	and e                                            ; $41d8: $a3
	ld d, l                                          ; $41d9: $55
	dec sp                                           ; $41da: $3b
	inc [hl]                                         ; $41db: $34
	ld d, l                                          ; $41dc: $55
	ld a, $f2                                        ; $41dd: $3e $f2
	sbc [hl]                                         ; $41df: $9e
	ld b, c                                          ; $41e0: $41
	and b                                            ; $41e1: $a0
	cpl                                              ; $41e2: $2f
	ld b, e                                          ; $41e3: $43
	db $ec                                           ; $41e4: $ec
	cp c                                             ; $41e5: $b9
	ld d, b                                          ; $41e6: $50
	xor h                                            ; $41e7: $ac
	halt                                             ; $41e8: $76
	ld b, d                                          ; $41e9: $42
	ldh a, [$3e]                                     ; $41ea: $f0 $3e
	ldh a, [$ac]                                     ; $41ec: $f0 $ac
	pop af                                           ; $41ee: $f1
	sbc l                                            ; $41ef: $9d
	add hl, sp                                       ; $41f0: $39
	and c                                            ; $41f1: $a1
	ld l, a                                          ; $41f2: $6f
	ld c, e                                          ; $41f3: $4b
	add a                                            ; $41f4: $87
	ldh a, [$5b]                                     ; $41f5: $f0 $5b
	ldh a, [$5e]                                     ; $41f7: $f0 $5e
	ld b, l                                          ; $41f9: $45
	and b                                            ; $41fa: $a0
	cpl                                              ; $41fb: $2f
	ld b, e                                          ; $41fc: $43
	ld b, b                                          ; $41fd: $40
	ld b, c                                          ; $41fe: $41
	ld a, [hl-]                                      ; $41ff: $3a
	ld d, h                                          ; $4200: $54
	ld c, c                                          ; $4201: $49
	ld a, [hl-]                                      ; $4202: $3a
	jr c, jr_097_424a                                ; $4203: $38 $45

	xor b                                            ; $4205: $a8
	ld b, b                                          ; $4206: $40
	ld b, c                                          ; $4207: $41
	ld a, [hl-]                                      ; $4208: $3a
	db $f4                                           ; $4209: $f4
	rst FarCall                                          ; $420a: $f7
	ldh a, [$ac]                                     ; $420b: $f0 $ac
	ld e, e                                          ; $420d: $5b
	ld d, [hl]                                       ; $420e: $56
	pop af                                           ; $420f: $f1
	ld a, a                                          ; $4210: $7f
	pop af                                           ; $4211: $f1
	ld e, l                                          ; $4212: $5d
	ldh a, [$d8]                                     ; $4213: $f0 $d8
	ld d, l                                          ; $4215: $55
	ld b, l                                          ; $4216: $45
	and b                                            ; $4217: $a0
	ld d, d                                          ; $4218: $52
	ld b, [hl]                                       ; $4219: $46
	xor h                                            ; $421a: $ac
	ld b, b                                          ; $421b: $40
	ld d, h                                          ; $421c: $54
	ld d, d                                          ; $421d: $52
	ld c, d                                          ; $421e: $4a
	add d                                            ; $421f: $82
	add hl, sp                                       ; $4220: $39
	ld b, d                                          ; $4221: $42
	ld a, [hl-]                                      ; $4222: $3a
	ld d, b                                          ; $4223: $50
	xor h                                            ; $4224: $ac
	pop af                                           ; $4225: $f1
	sbc l                                            ; $4226: $9d
	dec sp                                           ; $4227: $3b
	ccf                                              ; $4228: $3f
	ld b, [hl]                                       ; $4229: $46
	ldh a, [rSB]                                     ; $422a: $f0 $01
	ccf                                              ; $422c: $3f
	ld c, a                                          ; $422d: $4f
	ld b, l                                          ; $422e: $45
	ld d, l                                          ; $422f: $55
	ccf                                              ; $4230: $3f
	ld b, l                                          ; $4231: $45
	and b                                            ; $4232: $a0
	cpl                                              ; $4233: $2f
	ld b, e                                          ; $4234: $43
	ld e, e                                          ; $4235: $5b
	ld d, [hl]                                       ; $4236: $56
	inc [hl]                                         ; $4237: $34
	db $ec                                           ; $4238: $ec
	rrca                                             ; $4239: $0f
	and c                                            ; $423a: $a1
	ld d, d                                          ; $423b: $52
	inc [hl]                                         ; $423c: $34
	sbc c                                            ; $423d: $99
	dec sp                                           ; $423e: $3b
	ccf                                              ; $423f: $3f
	and b                                            ; $4240: $a0

jr_097_4241:
	cpl                                              ; $4241: $2f
	ld b, e                                          ; $4242: $43
	db $ed                                           ; $4243: $ed
	ld d, e                                          ; $4244: $53
	xor b                                            ; $4245: $a8
	ld a, [hl-]                                      ; $4246: $3a
	inc [hl]                                         ; $4247: $34
	ld l, e                                          ; $4248: $6b
	ld d, c                                          ; $4249: $51

jr_097_424a:
	ld c, [hl]                                       ; $424a: $4e
	ld b, d                                          ; $424b: $42
	and c                                            ; $424c: $a1
	ld d, h                                          ; $424d: $54
	add hl, sp                                       ; $424e: $39
	ld d, c                                          ; $424f: $51
	ld c, l                                          ; $4250: $4d
	ld a, e                                          ; $4251: $7b
	xor h                                            ; $4252: $ac
	ld b, [hl]                                       ; $4253: $46
	ld a, [hl-]                                      ; $4254: $3a
	dec a                                            ; $4255: $3d
	ld c, a                                          ; $4256: $4f
	ldh a, [rHDMA4]                                  ; $4257: $f0 $54
	ld a, $4b                                        ; $4259: $3e $4b
	inc de                                           ; $425b: $13
	di                                               ; $425c: $f3
	ld a, d                                          ; $425d: $7a
	inc a                                            ; $425e: $3c
	jr c, jr_097_42ac                                ; $425f: $38 $4b

	sbc h                                            ; $4261: $9c
	ld b, l                                          ; $4262: $45
	and b                                            ; $4263: $a0
	cpl                                              ; $4264: $2f
	ld [hl-], a                                      ; $4265: $32
	db $ed                                           ; $4266: $ed
	ld d, e                                          ; $4267: $53
	ld c, c                                          ; $4268: $49
	inc de                                           ; $4269: $13
	di                                               ; $426a: $f3
	adc e                                            ; $426b: $8b
	ld h, d                                          ; $426c: $62
	di                                               ; $426d: $f3
	ld h, d                                          ; $426e: $62
	ld [hl], c                                       ; $426f: $71
	ld c, [hl]                                       ; $4270: $4e
	ld a, [hl-]                                      ; $4271: $3a
	ld b, c                                          ; $4272: $41
	ccf                                              ; $4273: $3f
	xor h                                            ; $4274: $ac
	ld a, $34                                        ; $4275: $3e $34
	pop af                                           ; $4277: $f1
	and d                                            ; $4278: $a2
	ld a, c                                          ; $4279: $79
	ld b, h                                          ; $427a: $44
	ld a, [hl-]                                      ; $427b: $3a
	ld [hl], h                                       ; $427c: $74
	and e                                            ; $427d: $a3
	cpl                                              ; $427e: $2f
	ld [hl-], a                                      ; $427f: $32
	ldh a, [rSCY]                                    ; $4280: $f0 $42
	ldh a, [c]                                       ; $4282: $f2
	ld l, h                                          ; $4283: $6c
	xor h                                            ; $4284: $ac
	ldh a, [rSVBK]                                   ; $4285: $f0 $70
	ld b, a                                          ; $4287: $47
	ldh a, [$ac]                                     ; $4288: $f0 $ac
	jr c, jr_097_42c9                                ; $428a: $38 $3d

	sub a                                            ; $428c: $97
	and e                                            ; $428d: $a3
	cpl                                              ; $428e: $2f
	ld [hl-], a                                      ; $428f: $32
	db $ed                                           ; $4290: $ed
	xor a                                            ; $4291: $af
	ld a, [hl-]                                      ; $4292: $3a
	jr c, jr_097_4241                                ; $4293: $38 $ac

	ld l, d                                          ; $4295: $6a
	ldh a, [rAUD1HIGH]                               ; $4296: $f0 $14
	ld c, e                                          ; $4298: $4b
	xor $08                                          ; $4299: $ee $08
	ld c, d                                          ; $429b: $4a
	inc de                                           ; $429c: $13
	db $eb                                           ; $429d: $eb
	xor a                                            ; $429e: $af
	ld h, d                                          ; $429f: $62
	di                                               ; $42a0: $f3
	add h                                            ; $42a1: $84
	add hl, sp                                       ; $42a2: $39
	inc a                                            ; $42a3: $3c
	and e                                            ; $42a4: $a3
	cpl                                              ; $42a5: $2f
	ld b, e                                          ; $42a6: $43
	jp hl                                            ; $42a7: $e9


	add sp, $37                                      ; $42a8: $e8 $37
	scf                                              ; $42aa: $37
	inc de                                           ; $42ab: $13

jr_097_42ac:
	ld b, [hl]                                       ; $42ac: $46
	ld [hl], h                                       ; $42ad: $74
	inc [hl]                                         ; $42ae: $34
	sub b                                            ; $42af: $90
	ld a, $38                                        ; $42b0: $3e $38
	ld a, [hl-]                                      ; $42b2: $3a
	ld [hl], h                                       ; $42b3: $74
	and b                                            ; $42b4: $a0
	cpl                                              ; $42b5: $2f
	ld [hl-], a                                      ; $42b6: $32
	add hl, sp                                       ; $42b7: $39
	ldh a, [c]                                       ; $42b8: $f2
	ld l, h                                          ; $42b9: $6c
	inc [hl]                                         ; $42ba: $34
	ld a, b                                          ; $42bb: $78
	ldh a, [rAUD1HIGH]                               ; $42bc: $f0 $14
	ld d, h                                          ; $42be: $54
	ld b, b                                          ; $42bf: $40
	ld c, e                                          ; $42c0: $4b
	inc de                                           ; $42c1: $13
	sub b                                            ; $42c2: $90
	ld a, $38                                        ; $42c3: $3e $38
	db $eb                                           ; $42c5: $eb
	xor a                                            ; $42c6: $af
	ld h, d                                          ; $42c7: $62
	pop af                                           ; $42c8: $f1

jr_097_42c9:
	sub b                                            ; $42c9: $90
	ld [hl], b                                       ; $42ca: $70
	ld d, c                                          ; $42cb: $51
	sub a                                            ; $42cc: $97
	and e                                            ; $42cd: $a3
	cpl                                              ; $42ce: $2f
	ld b, e                                          ; $42cf: $43
	ld b, [hl]                                       ; $42d0: $46
	dec sp                                           ; $42d1: $3b
	inc [hl]                                         ; $42d2: $34
	pop af                                           ; $42d3: $f1
	dec d                                            ; $42d4: $15
	ld c, l                                          ; $42d5: $4d
	ccf                                              ; $42d6: $3f
	dec a                                            ; $42d7: $3d
	ld e, l                                          ; $42d8: $5d
	ld e, d                                          ; $42d9: $5a
	xor h                                            ; $42da: $ac
	db $ed                                           ; $42db: $ed
	ld d, a                                          ; $42dc: $57
	inc [hl]                                         ; $42dd: $34
	db $ed                                           ; $42de: $ed
	xor c                                            ; $42df: $a9
	db $ec                                           ; $42e0: $ec
	inc h                                            ; $42e1: $24
	inc de                                           ; $42e2: $13
	db $ec                                           ; $42e3: $ec
	ret c                                            ; $42e4: $d8

	inc a                                            ; $42e5: $3c
	and b                                            ; $42e6: $a0
	cpl                                              ; $42e7: $2f
	ld [$ac10], a                                    ; $42e8: $ea $10 $ac
	jp hl                                            ; $42eb: $e9


	add l                                            ; $42ec: $85
	add hl, bc                                       ; $42ed: $09
	cpl                                              ; $42ee: $2f
	ld [$0912], a                                    ; $42ef: $ea $12 $09
	cpl                                              ; $42f2: $2f
	jp hl                                            ; $42f3: $e9


	add [hl]                                         ; $42f4: $86
	add hl, bc                                       ; $42f5: $09
	cpl                                              ; $42f6: $2f
	ld b, e                                          ; $42f7: $43
	db $eb                                           ; $42f8: $eb
	dec a                                            ; $42f9: $3d
	inc de                                           ; $42fa: $13
	ld [$a011], a                                    ; $42fb: $ea $11 $a0
	add hl, bc                                       ; $42fe: $09
	ld b, l                                          ; $42ff: $45
	ld h, h                                          ; $4300: $64
	xor b                                            ; $4301: $a8
	ret                                              ; $4302: $c9


	inc [hl]                                         ; $4303: $34
	ldh a, [rAUDVOL]                                 ; $4304: $f0 $24
	ld d, e                                          ; $4306: $53
	ld b, [hl]                                       ; $4307: $46
	ld c, [hl]                                       ; $4308: $4e
	ld b, c                                          ; $4309: $41
	ld b, h                                          ; $430a: $44
	and b                                            ; $430b: $a0
	cpl                                              ; $430c: $2f
	ld b, e                                          ; $430d: $43
	ld e, [hl]                                       ; $430e: $5e
	dec sp                                           ; $430f: $3b
	xor c                                            ; $4310: $a9
	ldh a, [rAUDVOL]                                 ; $4311: $f0 $24
	dec sp                                           ; $4313: $3b
	ccf                                              ; $4314: $3f
	and c                                            ; $4315: $a1
	db $ec                                           ; $4316: $ec
	dec h                                            ; $4317: $25
	xor h                                            ; $4318: $ac
	pop af                                           ; $4319: $f1
	ld [hl], c                                       ; $431a: $71
	pop af                                           ; $431b: $f1
	dec c                                            ; $431c: $0d
	ld b, d                                          ; $431d: $42
	ldh a, [$37]                                     ; $431e: $f0 $37
	ld b, d                                          ; $4320: $42
	ld c, c                                          ; $4321: $49
	ld d, h                                          ; $4322: $54
	ld b, a                                          ; $4323: $47
	inc de                                           ; $4324: $13
	ld a, b                                          ; $4325: $78
	ccf                                              ; $4326: $3f
	ld d, l                                          ; $4327: $55
	ld c, l                                          ; $4328: $4d
	ld c, [hl]                                       ; $4329: $4e
	inc a                                            ; $432a: $3c
	and c                                            ; $432b: $a1
	cpl                                              ; $432c: $2f
	ld b, e                                          ; $432d: $43
	ld [$a0c3], a                                    ; $432e: $ea $c3 $a0
	cpl                                              ; $4331: $2f
	ld b, e                                          ; $4332: $43
	ld l, e                                          ; $4333: $6b
	ld b, d                                          ; $4334: $42
	inc [hl]                                         ; $4335: $34
	ldh a, [rAUDVOL]                                 ; $4336: $f0 $24
	ld b, h                                          ; $4338: $44
	and c                                            ; $4339: $a1
	ldh a, [$5a]                                     ; $433a: $f0 $5a
	ldh a, [$5a]                                     ; $433c: $f0 $5a
	xor l                                            ; $433e: $ad
	ldh a, [$31]                                     ; $433f: $f0 $31
	ld c, e                                          ; $4341: $4b
	ld a, [hl-]                                      ; $4342: $3a
	xor l                                            ; $4343: $ad
	ld h, h                                          ; $4344: $64
	jr c, jr_097_437b                                ; $4345: $38 $34

	db $ec                                           ; $4347: $ec
	xor $78                                          ; $4348: $ee $78
	jr c, @+$47                                      ; $434a: $38 $45

	and b                                            ; $434c: $a0
	db $eb                                           ; $434d: $eb
	ld h, h                                          ; $434e: $64
	and b                                            ; $434f: $a0
	ldh a, [$31]                                     ; $4350: $f0 $31
	ld c, e                                          ; $4352: $4b
	inc [hl]                                         ; $4353: $34
	db $ed                                           ; $4354: $ed
	add e                                            ; $4355: $83
	ld c, c                                          ; $4356: $49
	ldh a, [$9a]                                     ; $4357: $f0 $9a
	ld e, h                                          ; $4359: $5c
	ldh a, [rTMA]                                    ; $435a: $f0 $06
	add hl, sp                                       ; $435c: $39
	inc de                                           ; $435d: $13
	ld d, h                                          ; $435e: $54
	ld c, c                                          ; $435f: $49
	ld b, a                                          ; $4360: $47
	ld a, [hl-]                                      ; $4361: $3a
	dec sp                                           ; $4362: $3b
	dec a                                            ; $4363: $3d
	ld b, c                                          ; $4364: $41
	ld b, h                                          ; $4365: $44
	and b                                            ; $4366: $a0
	ld e, b                                          ; $4367: $58
	ld [hl], h                                       ; $4368: $74
	xor h                                            ; $4369: $ac
	db $ed                                           ; $436a: $ed
	ld c, $ea                                        ; $436b: $0e $ea
	xor c                                            ; $436d: $a9
	and b                                            ; $436e: $a0
	ld hl, $10ee                                     ; $436f: $21 $ee $10
	xor $10                                          ; $4372: $ee $10
	and b                                            ; $4374: $a0
	ldh a, [$31]                                     ; $4375: $f0 $31
	ld c, e                                          ; $4377: $4b
	inc [hl]                                         ; $4378: $34
	db $ed                                           ; $4379: $ed
	or e                                             ; $437a: $b3

jr_097_437b:
	ld c, c                                          ; $437b: $49
	ldh a, [$9a]                                     ; $437c: $f0 $9a
	ld e, h                                          ; $437e: $5c
	ldh a, [rTMA]                                    ; $437f: $f0 $06
	add hl, sp                                       ; $4381: $39
	inc de                                           ; $4382: $13
	ld d, h                                          ; $4383: $54
	ld c, c                                          ; $4384: $49
	ld b, a                                          ; $4385: $47
	ld a, [hl-]                                      ; $4386: $3a
	dec sp                                           ; $4387: $3b
	dec a                                            ; $4388: $3d
	ld b, c                                          ; $4389: $41
	ld b, h                                          ; $438a: $44
	and b                                            ; $438b: $a0
	ld e, b                                          ; $438c: $58
	ld [hl], h                                       ; $438d: $74
	xor h                                            ; $438e: $ac
	db $ed                                           ; $438f: $ed
	ld c, $67                                        ; $4390: $0e $67
	ld d, l                                          ; $4392: $55
	ld h, e                                          ; $4393: $63
	ld b, l                                          ; $4394: $45
	and b                                            ; $4395: $a0
	db $ed                                           ; $4396: $ed
	ld b, [hl]                                       ; $4397: $46
	inc [hl]                                         ; $4398: $34
	db $eb                                           ; $4399: $eb
	ld h, h                                          ; $439a: $64
	and b                                            ; $439b: $a0
	ldh a, [$31]                                     ; $439c: $f0 $31
	ld c, e                                          ; $439e: $4b
	inc [hl]                                         ; $439f: $34
	db $ed                                           ; $43a0: $ed
	cp [hl]                                          ; $43a1: $be
	ld c, c                                          ; $43a2: $49
	ldh a, [$9a]                                     ; $43a3: $f0 $9a
	ld e, h                                          ; $43a5: $5c
	ldh a, [rTMA]                                    ; $43a6: $f0 $06
	add hl, sp                                       ; $43a8: $39
	inc de                                           ; $43a9: $13
	ld d, h                                          ; $43aa: $54
	ld c, c                                          ; $43ab: $49
	ld b, a                                          ; $43ac: $47
	ld a, [hl-]                                      ; $43ad: $3a
	dec sp                                           ; $43ae: $3b
	dec a                                            ; $43af: $3d
	ld b, c                                          ; $43b0: $41
	ld b, h                                          ; $43b1: $44
	and b                                            ; $43b2: $a0
	db $eb                                           ; $43b3: $eb
	ld h, h                                          ; $43b4: $64
	xor b                                            ; $43b5: $a8
	ld de, $56f0                                     ; $43b6: $11 $f0 $56
	and b                                            ; $43b9: $a0
	ldh a, [$31]                                     ; $43ba: $f0 $31
	ld c, e                                          ; $43bc: $4b
	inc [hl]                                         ; $43bd: $34
	xor $25                                          ; $43be: $ee $25
	ld c, c                                          ; $43c0: $49
	ldh a, [$9a]                                     ; $43c1: $f0 $9a
	ld e, h                                          ; $43c3: $5c
	ldh a, [rTMA]                                    ; $43c4: $f0 $06
	add hl, sp                                       ; $43c6: $39
	inc de                                           ; $43c7: $13
	ld d, h                                          ; $43c8: $54
	ld c, c                                          ; $43c9: $49
	ld b, a                                          ; $43ca: $47
	ld a, [hl-]                                      ; $43cb: $3a
	dec sp                                           ; $43cc: $3b
	dec a                                            ; $43cd: $3d
	ld b, c                                          ; $43ce: $41
	ld b, h                                          ; $43cf: $44
	and b                                            ; $43d0: $a0
	ldh a, [$31]                                     ; $43d1: $f0 $31
	ld c, e                                          ; $43d3: $4b
	inc [hl]                                         ; $43d4: $34
	xor $26                                          ; $43d5: $ee $26
	ld c, c                                          ; $43d7: $49
	ldh a, [$9a]                                     ; $43d8: $f0 $9a
	ld e, h                                          ; $43da: $5c
	ldh a, [rTMA]                                    ; $43db: $f0 $06
	add hl, sp                                       ; $43dd: $39
	inc de                                           ; $43de: $13
	ld d, h                                          ; $43df: $54
	ld c, c                                          ; $43e0: $49
	ld b, a                                          ; $43e1: $47
	ld a, [hl-]                                      ; $43e2: $3a
	dec sp                                           ; $43e3: $3b
	dec a                                            ; $43e4: $3d
	ld b, c                                          ; $43e5: $41
	ld b, h                                          ; $43e6: $44
	and b                                            ; $43e7: $a0
	ld b, b                                          ; $43e8: $40
	ld c, l                                          ; $43e9: $4d
	ld e, e                                          ; $43ea: $5b
	ld d, [hl]                                       ; $43eb: $56
	xor h                                            ; $43ec: $ac
	db $ed                                           ; $43ed: $ed
	ld c, $ea                                        ; $43ee: $0e $ea
	xor c                                            ; $43f0: $a9
	and b                                            ; $43f1: $a0
	ldh a, [$31]                                     ; $43f2: $f0 $31
	ld c, e                                          ; $43f4: $4b
	inc [hl]                                         ; $43f5: $34
	xor $0a                                          ; $43f6: $ee $0a
	ld c, c                                          ; $43f8: $49
	ldh a, [$9a]                                     ; $43f9: $f0 $9a
	ld e, h                                          ; $43fb: $5c
	ldh a, [rTMA]                                    ; $43fc: $f0 $06
	add hl, sp                                       ; $43fe: $39
	inc de                                           ; $43ff: $13
	ld d, h                                          ; $4400: $54
	ld c, c                                          ; $4401: $49
	ld b, a                                          ; $4402: $47
	ld a, [hl-]                                      ; $4403: $3a
	dec sp                                           ; $4404: $3b
	dec a                                            ; $4405: $3d
	ld b, c                                          ; $4406: $41
	ld b, h                                          ; $4407: $44
	and b                                            ; $4408: $a0
	ld h, h                                          ; $4409: $64
	sbc [hl]                                         ; $440a: $9e
	ld b, a                                          ; $440b: $47
	db $ec                                           ; $440c: $ec
	cp b                                             ; $440d: $b8
	ld b, a                                          ; $440e: $47
	inc de                                           ; $440f: $13
	add d                                            ; $4410: $82
	jr c, jr_097_4450                                ; $4411: $38 $3d

	inc a                                            ; $4413: $3c
	dec sp                                           ; $4414: $3b
	dec a                                            ; $4415: $3d
	ld b, c                                          ; $4416: $41
	ld b, h                                          ; $4417: $44
	xor b                                            ; $4418: $a8
	db $ec                                           ; $4419: $ec
	ld sp, $2fa0                                     ; $441a: $31 $a0 $2f
	ld b, e                                          ; $441d: $43
	adc e                                            ; $441e: $8b
	ldh a, [$72]                                     ; $441f: $f0 $72
	xor l                                            ; $4421: $ad
	jr c, @-$7e                                      ; $4422: $38 $80

	ld b, d                                          ; $4424: $42
	ldh a, [$2a]                                     ; $4425: $f0 $2a

jr_097_4427:
	ld b, a                                          ; $4427: $47
	xor l                                            ; $4428: $ad
	jp hl                                            ; $4429: $e9


	ld a, d                                          ; $442a: $7a
	and b                                            ; $442b: $a0
	add hl, bc                                       ; $442c: $09
	cpl                                              ; $442d: $2f
	ld b, e                                          ; $442e: $43
	xor $2d                                          ; $442f: $ee $2d
	inc [hl]                                         ; $4431: $34
	ld de, $4a13                                     ; $4432: $11 $13 $4a
	ld d, c                                          ; $4435: $51
	ld e, l                                          ; $4436: $5d
	ld e, d                                          ; $4437: $5a
	and b                                            ; $4438: $a0
	ld b, [hl]                                       ; $4439: $46
	dec sp                                           ; $443a: $3b
	inc [hl]                                         ; $443b: $34
	ld l, a                                          ; $443c: $6f
	xor h                                            ; $443d: $ac
	db $ed                                           ; $443e: $ed
	xor b                                            ; $443f: $a8
	ld c, c                                          ; $4440: $49
	pop af                                           ; $4441: $f1
	ld d, [hl]                                       ; $4442: $56
	ld a, $52                                        ; $4443: $3e $52
	ld d, c                                          ; $4445: $51
	ld d, e                                          ; $4446: $53
	and b                                            ; $4447: $a0
	cpl                                              ; $4448: $2f
	ld b, e                                          ; $4449: $43
	ld b, [hl]                                       ; $444a: $46
	inc [hl]                                         ; $444b: $34
	db $ed                                           ; $444c: $ed
	xor c                                            ; $444d: $a9
	xor c                                            ; $444e: $a9
	ld e, d                                          ; $444f: $5a

jr_097_4450:
	add hl, sp                                       ; $4450: $39
	inc a                                            ; $4451: $3c
	ld a, $3d                                        ; $4452: $3e $3d
	ld b, d                                          ; $4454: $42
	and c                                            ; $4455: $a1
	ld b, [hl]                                       ; $4456: $46
	dec sp                                           ; $4457: $3b
	inc [hl]                                         ; $4458: $34
	ld d, $a8                                        ; $4459: $16 $a8
	ld c, h                                          ; $445b: $4c
	add l                                            ; $445c: $85
	inc [hl]                                         ; $445d: $34
	ld l, d                                          ; $445e: $6a
	inc [hl]                                         ; $445f: $34
	ldh a, [$c9]                                     ; $4460: $f0 $c9
	jr c, jr_097_44a3                                ; $4462: $38 $3f

	jr c, jr_097_44b4                                ; $4464: $38 $4e

	inc a                                            ; $4466: $3c
	ld a, [hl-]                                      ; $4467: $3a
	and c                                            ; $4468: $a1
	cpl                                              ; $4469: $2f
	ld b, e                                          ; $446a: $43
	ld e, [hl]                                       ; $446b: $5e
	xor c                                            ; $446c: $a9
	ld c, b                                          ; $446d: $48
	inc hl                                           ; $446e: $23
	ldh a, [$c9]                                     ; $446f: $f0 $c9
	jr c, jr_097_44b2                                ; $4471: $38 $3f

	jr c, jr_097_44c3                                ; $4473: $38 $4e

	ld e, l                                          ; $4475: $5d
	ld e, d                                          ; $4476: $5a
	and b                                            ; $4477: $a0
	adc b                                            ; $4478: $88
	sub c                                            ; $4479: $91
	ld [hl], $b4                                     ; $447a: $36 $b4
	inc de                                           ; $447c: $13
	xor $06                                          ; $447d: $ee $06
	ld b, a                                          ; $447f: $47
	db $ed                                           ; $4480: $ed
	adc l                                            ; $4481: $8d
	ld a, $3a                                        ; $4482: $3e $3a
	jr c, jr_097_4427                                ; $4484: $38 $a1

	cpl                                              ; $4486: $2f
	xor $1f                                          ; $4487: $ee $1f
	inc [hl]                                         ; $4489: $34
	jr c, jr_097_44c4                                ; $448a: $38 $38

	ld b, l                                          ; $448c: $45
	add hl, bc                                       ; $448d: $09
	cpl                                              ; $448e: $2f
	ld b, e                                          ; $448f: $43
	db $ed                                           ; $4490: $ed
	adc l                                            ; $4491: $8d
	xor c                                            ; $4492: $a9
	xor $1f                                          ; $4493: $ee $1f
	inc [hl]                                         ; $4495: $34
	jr c, jr_097_44d0                                ; $4496: $38 $38

	ld b, l                                          ; $4498: $45
	and b                                            ; $4499: $a0
	ld e, e                                          ; $449a: $5b
	ld d, [hl]                                       ; $449b: $56
	ld b, [hl]                                       ; $449c: $46
	xor h                                            ; $449d: $ac
	ld l, d                                          ; $449e: $6a
	inc a                                            ; $449f: $3c
	ld d, b                                          ; $44a0: $50
	ldh a, [rSVBK]                                   ; $44a1: $f0 $70

jr_097_44a3:
	ld b, d                                          ; $44a3: $42
	sbc [hl]                                         ; $44a4: $9e
	ld b, a                                          ; $44a5: $47
	ld h, a                                          ; $44a6: $67
	ld d, l                                          ; $44a7: $55
	ld c, h                                          ; $44a8: $4c

jr_097_44a9:
	and b                                            ; $44a9: $a0
	cpl                                              ; $44aa: $2f
	ld b, e                                          ; $44ab: $43
	xor $1f                                          ; $44ac: $ee $1f
	inc [hl]                                         ; $44ae: $34
	ldh a, [rTAC]                                    ; $44af: $f0 $07
	inc a                                            ; $44b1: $3c

jr_097_44b2:
	dec sp                                           ; $44b2: $3b
	dec a                                            ; $44b3: $3d

jr_097_44b4:
	and b                                            ; $44b4: $a0
	cpl                                              ; $44b5: $2f
	ld h, $ed                                        ; $44b6: $26 $ed
	ld e, h                                          ; $44b8: $5c
	dec h                                            ; $44b9: $25
	add hl, bc                                       ; $44ba: $09
	cpl                                              ; $44bb: $2f
	ld b, e                                          ; $44bc: $43
	db $ed                                           ; $44bd: $ed
	adc l                                            ; $44be: $8d
	ld a, [hl-]                                      ; $44bf: $3a
	ld b, c                                          ; $44c0: $41
	ccf                                              ; $44c1: $3f
	di                                               ; $44c2: $f3

jr_097_44c3:
	or e                                             ; $44c3: $b3

jr_097_44c4:
	ld a, $f0                                        ; $44c4: $3e $f0

jr_097_44c6:
	cp $57                                           ; $44c6: $fe $57
	inc de                                           ; $44c8: $13
	ld b, h                                          ; $44c9: $44
	ld a, [hl-]                                      ; $44ca: $3a
	ld [hl], h                                       ; $44cb: $74
	dec [hl]                                         ; $44cc: $35
	db $dd                                           ; $44cd: $dd
	ldh a, [$f0]                                     ; $44ce: $f0 $f0

jr_097_44d0:
	ld b, a                                          ; $44d0: $47
	ld h, a                                          ; $44d1: $67
	ld d, l                                          ; $44d2: $55
	inc a                                            ; $44d3: $3c
	and b                                            ; $44d4: $a0
	cpl                                              ; $44d5: $2f
	jr c, jr_097_4546                                ; $44d6: $38 $6e

	inc [hl]                                         ; $44d8: $34
	ld l, [hl]                                       ; $44d9: $6e
	ld [hl], c                                       ; $44da: $71
	ccf                                              ; $44db: $3f
	ld h, h                                          ; $44dc: $64
	ld d, l                                          ; $44dd: $55
	ld b, l                                          ; $44de: $45
	add hl, bc                                       ; $44df: $09
	ld b, b                                          ; $44e0: $40
	add hl, sp                                       ; $44e1: $39
	xor l                                            ; $44e2: $ad
	ld e, e                                          ; $44e3: $5b
	ld d, [hl]                                       ; $44e4: $56
	ld b, [hl]                                       ; $44e5: $46
	inc [hl]                                         ; $44e6: $34
	ld h, h                                          ; $44e7: $64
	ld l, [hl]                                       ; $44e8: $6e
	ld d, c                                          ; $44e9: $51
	ld l, h                                          ; $44ea: $6c
	ld a, [hl-]                                      ; $44eb: $3a
	ld e, b                                          ; $44ec: $58
	jr c, jr_097_4537                                ; $44ed: $38 $48

	and b                                            ; $44ef: $a0

jr_097_44f0:
	cpl                                              ; $44f0: $2f
	ld b, e                                          ; $44f1: $43
	ret                                              ; $44f2: $c9


	inc de                                           ; $44f3: $13
	ld [$4834], a                                    ; $44f4: $ea $34 $48
	and b                                            ; $44f7: $a0
	ld b, b                                          ; $44f8: $40
	ld c, l                                          ; $44f9: $4d
	ld e, e                                          ; $44fa: $5b
	ld d, [hl]                                       ; $44fb: $56
	xor h                                            ; $44fc: $ac
	pop af                                           ; $44fd: $f1
	jr z, jr_097_44f0                                ; $44fe: $28 $f0

	ld b, h                                          ; $4500: $44
	ld d, d                                          ; $4501: $52
	ld c, d                                          ; $4502: $4a
	ld h, a                                          ; $4503: $67
	inc a                                            ; $4504: $3c
	ld a, [hl-]                                      ; $4505: $3a
	jr c, jr_097_44a9                                ; $4506: $38 $a1

	cpl                                              ; $4508: $2f
	ld b, e                                          ; $4509: $43
	ld b, b                                          ; $450a: $40
	add hl, sp                                       ; $450b: $39
	ld b, h                                          ; $450c: $44
	ld c, h                                          ; $450d: $4c
	and b                                            ; $450e: $a0
	db $ed                                           ; $450f: $ed
	adc l                                            ; $4510: $8d
	ld a, [hl-]                                      ; $4511: $3a
	ld b, c                                          ; $4512: $41
	ccf                                              ; $4513: $3f
	inc de                                           ; $4514: $13
	di                                               ; $4515: $f3
	or e                                             ; $4516: $b3
	ld a, $f0                                        ; $4517: $3e $f0
	cp $57                                           ; $4519: $fe $57
	ld b, l                                          ; $451b: $45
	ld c, h                                          ; $451c: $4c
	and b                                            ; $451d: $a0
	ld c, h                                          ; $451e: $4c
	add l                                            ; $451f: $85
	and b                                            ; $4520: $a0
	cpl                                              ; $4521: $2f
	ld b, e                                          ; $4522: $43
	ld b, c                                          ; $4523: $41
	and c                                            ; $4524: $a1
	ld d, h                                          ; $4525: $54
	add hl, sp                                       ; $4526: $39
	ld l, [hl]                                       ; $4527: $6e
	dec sp                                           ; $4528: $3b
	ccf                                              ; $4529: $3f
	ld c, [hl]                                       ; $452a: $4e
	ld c, c                                          ; $452b: $49
	ld c, b                                          ; $452c: $48
	inc hl                                           ; $452d: $23
	inc de                                           ; $452e: $13
	ld [hl], a                                       ; $452f: $77
	jr c, jr_097_44c6                                ; $4530: $38 $94

	ld e, b                                          ; $4532: $58
	ld a, [hl-]                                      ; $4533: $3a
	jr c, @-$5d                                      ; $4534: $38 $a1

	cpl                                              ; $4536: $2f

jr_097_4537:
	ld b, e                                          ; $4537: $43
	ld l, e                                          ; $4538: $6b
	ld h, d                                          ; $4539: $62
	and c                                            ; $453a: $a1
	ldh a, [$08]                                     ; $453b: $f0 $08
	ld d, b                                          ; $453d: $50
	xor $10                                          ; $453e: $ee $10
	add hl, bc                                       ; $4540: $09
	pop af                                           ; $4541: $f1
	add hl, de                                       ; $4542: $19
	adc c                                            ; $4543: $89
	sbc a                                            ; $4544: $9f
	ld b, d                                          ; $4545: $42

jr_097_4546:
	ldh a, [c]                                       ; $4546: $f2

jr_097_4547:
	inc b                                            ; $4547: $04
	inc [hl]                                         ; $4548: $34
	ldh a, [hDisp0_SCX]                                     ; $4549: $f0 $84
	add h                                            ; $454b: $84
	ld c, d                                          ; $454c: $4a
	inc de                                           ; $454d: $13
	ld d, h                                          ; $454e: $54
	add hl, sp                                       ; $454f: $39
	ld l, [hl]                                       ; $4550: $6e
	dec sp                                           ; $4551: $3b
	ccf                                              ; $4552: $3f
	db $ed                                           ; $4553: $ed
	adc l                                            ; $4554: $8d
	ld h, d                                          ; $4555: $62
	ld a, $3f                                        ; $4556: $3e $3f
	jr c, jr_097_4599                                ; $4558: $38 $3f

	ld c, b                                          ; $455a: $48
	add hl, bc                                       ; $455b: $09
	cpl                                              ; $455c: $2f
	ld b, e                                          ; $455d: $43
	ld a, $3f                                        ; $455e: $3e $3f
	jr c, jr_097_45a1                                ; $4560: $38 $3f

	and c                                            ; $4562: $a1
	ld d, $3b                                        ; $4563: $16 $3b
	dec a                                            ; $4565: $3d
	ld d, b                                          ; $4566: $50
	xor h                                            ; $4567: $ac
	pop af                                           ; $4568: $f1
	add hl, hl                                       ; $4569: $29
	adc [hl]                                         ; $456a: $8e
	dec sp                                           ; $456b: $3b
	ccf                                              ; $456c: $3f
	ld l, e                                          ; $456d: $6b
	adc b                                            ; $456e: $88
	ld c, a                                          ; $456f: $4f
	db $ed                                           ; $4570: $ed
	adc l                                            ; $4571: $8d
	ld b, a                                          ; $4572: $47
	rla                                              ; $4573: $17
	pop af                                           ; $4574: $f1
	scf                                              ; $4575: $37
	ld h, d                                          ; $4576: $62
	ldh a, [$ac]                                     ; $4577: $f0 $ac
	ld e, l                                          ; $4579: $5d
	ld b, l                                          ; $457a: $45
	add hl, sp                                       ; $457b: $39
	ld c, c                                          ; $457c: $49
	ld a, $3f                                        ; $457d: $3e $3f
	ld c, b                                          ; $457f: $48
	add hl, bc                                       ; $4580: $09
	cpl                                              ; $4581: $2f
	ld b, e                                          ; $4582: $43
	ldh a, [$ac]                                     ; $4583: $f0 $ac
	ld e, l                                          ; $4585: $5d
	ld b, l                                          ; $4586: $45
	add hl, sp                                       ; $4587: $39
	ld c, c                                          ; $4588: $49
	ld a, $3f                                        ; $4589: $3e $3f
	and c                                            ; $458b: $a1
	ldh a, [$a3]                                     ; $458c: $f0 $a3
	ld b, a                                          ; $458e: $47
	ld b, [hl]                                       ; $458f: $46
	dec sp                                           ; $4590: $3b
	dec a                                            ; $4591: $3d
	ldh a, [rAUD3LOW]                                ; $4592: $f0 $1d
	ld [hl], e                                       ; $4594: $73
	ldh a, [$2b]                                     ; $4595: $f0 $2b
	db $f4                                           ; $4597: $f4
	ld e, c                                          ; $4598: $59

jr_097_4599:
	ld b, d                                          ; $4599: $42
	inc de                                           ; $459a: $13
	ldh a, [rAUD2HIGH]                               ; $459b: $f0 $19
	ld b, a                                          ; $459d: $47
	db $ed                                           ; $459e: $ed
	adc l                                            ; $459f: $8d
	ld b, d                                          ; $45a0: $42

jr_097_45a1:
	pop af                                           ; $45a1: $f1
	scf                                              ; $45a2: $37
	ld d, e                                          ; $45a3: $53
	pop af                                           ; $45a4: $f1
	add c                                            ; $45a5: $81
	ld h, c                                          ; $45a6: $61
	ccf                                              ; $45a7: $3f
	xor $10                                          ; $45a8: $ee $10
	add hl, bc                                       ; $45aa: $09
	cpl                                              ; $45ab: $2f
	ld b, e                                          ; $45ac: $43
	ld b, [hl]                                       ; $45ad: $46
	dec sp                                           ; $45ae: $3b
	inc [hl]                                         ; $45af: $34
	ld [hl], a                                       ; $45b0: $77
	jr c, jr_097_4547                                ; $45b1: $38 $94

	ld a, $3d                                        ; $45b3: $3e $3d
	scf                                              ; $45b5: $37
	inc de                                           ; $45b6: $13
	ldh a, [rAUD3LOW]                                ; $45b7: $f0 $1d

jr_097_45b9:
	ld [hl], e                                       ; $45b9: $73
	ldh a, [$2b]                                     ; $45ba: $f0 $2b
	db $f4                                           ; $45bc: $f4
	ld e, c                                          ; $45bd: $59
	ld d, e                                          ; $45be: $53
	db $f4                                           ; $45bf: $f4
	and d                                            ; $45c0: $a2
	ld e, [hl]                                       ; $45c1: $5e
	ldh a, [$3e]                                     ; $45c2: $f0 $3e
	ld d, e                                          ; $45c4: $53
	dec sp                                           ; $45c5: $3b
	dec a                                            ; $45c6: $3d
	ld b, c                                          ; $45c7: $41
	ld b, h                                          ; $45c8: $44
	xor e                                            ; $45c9: $ab
	ld d, d                                          ; $45ca: $52
	jr c, jr_097_4608                                ; $45cb: $38 $3b

	dec a                                            ; $45cd: $3d
	ld b, l                                          ; $45ce: $45
	inc [hl]                                         ; $45cf: $34
	ld b, [hl]                                       ; $45d0: $46
	ld c, l                                          ; $45d1: $4d
	ld c, e                                          ; $45d2: $4b
	ld c, b                                          ; $45d3: $48
	and b                                            ; $45d4: $a0
	db $ec                                           ; $45d5: $ec
	ld de, $3d3e                                     ; $45d6: $11 $3e $3d
	ld h, e                                          ; $45d9: $63
	ld b, l                                          ; $45da: $45
	ld c, h                                          ; $45db: $4c
	and b                                            ; $45dc: $a0
	cpl                                              ; $45dd: $2f
	ld b, e                                          ; $45de: $43
	db $ed                                           ; $45df: $ed
	ld e, e                                          ; $45e0: $5b
	db $ec                                           ; $45e1: $ec
	inc de                                           ; $45e2: $13
	db $ed                                           ; $45e3: $ed
	adc l                                            ; $45e4: $8d
	ld h, d                                          ; $45e5: $62
	inc de                                           ; $45e6: $13
	ld [hl], d                                       ; $45e7: $72
	ld a, c                                          ; $45e8: $79
	ccf                                              ; $45e9: $3f
	ld l, [hl]                                       ; $45ea: $6e
	ld e, a                                          ; $45eb: $5f

jr_097_45ec:
	add hl, sp                                       ; $45ec: $39
	ld c, c                                          ; $45ed: $49
	ld [hl], a                                       ; $45ee: $77
	dec sp                                           ; $45ef: $3b
	ccf                                              ; $45f0: $3f
	ld b, h                                          ; $45f1: $44
	ld a, [hl-]                                      ; $45f2: $3a
	ld c, b                                          ; $45f3: $48
	and b                                            ; $45f4: $a0
	db $ed                                           ; $45f5: $ed
	ld h, h                                          ; $45f6: $64
	ld a, $3d                                        ; $45f7: $3e $3d
	ld b, d                                          ; $45f9: $42
	ld b, l                                          ; $45fa: $45
	xor b                                            ; $45fb: $a8
	ldh a, [$34]                                     ; $45fc: $f0 $34
	add h                                            ; $45fe: $84
	ld b, a                                          ; $45ff: $47
	ld a, [hl-]                                      ; $4600: $3a
	dec sp                                           ; $4601: $3b
	ld h, c                                          ; $4602: $61
	ld d, [hl]                                       ; $4603: $56
	dec sp                                           ; $4604: $3b
	ccf                                              ; $4605: $3f
	dec a                                            ; $4606: $3d
	ld c, a                                          ; $4607: $4f

jr_097_4608:
	ld b, d                                          ; $4608: $42
	and b                                            ; $4609: $a0
	cpl                                              ; $460a: $2f
	ld b, e                                          ; $460b: $43
	db $ed                                           ; $460c: $ed
	ld h, h                                          ; $460d: $64
	ld a, $3f                                        ; $460e: $3e $3f
	ld d, l                                          ; $4610: $55
	ld c, l                                          ; $4611: $4d
	dec a                                            ; $4612: $3d
	ld b, c                                          ; $4613: $41
	ld b, h                                          ; $4614: $44
	ld c, b                                          ; $4615: $48
	add hl, bc                                       ; $4616: $09
	add hl, sp                                       ; $4617: $39
	ldh a, [rSCY]                                    ; $4618: $f0 $42
	ldh a, [rSCY]                                    ; $461a: $f0 $42
	inc [hl]                                         ; $461c: $34
	ld c, d                                          ; $461d: $4a
	ld c, a                                          ; $461e: $4f
	xor h                                            ; $461f: $ac
	jr c, jr_097_4674                                ; $4620: $38 $52

	ld [hl], a                                       ; $4622: $77
	jr c, jr_097_45b9                                ; $4623: $38 $94

	ld d, c                                          ; $4625: $51
	ld c, c                                          ; $4626: $49
	xor h                                            ; $4627: $ac
	ret                                              ; $4628: $c9


	ld h, h                                          ; $4629: $64
	inc a                                            ; $462a: $3c
	ld a, $38                                        ; $462b: $3e $38
	ld b, l                                          ; $462d: $45
	ld c, h                                          ; $462e: $4c
	and b                                            ; $462f: $a0
	cpl                                              ; $4630: $2f
	ld b, e                                          ; $4631: $43
	ld c, a                                          ; $4632: $4f
	add hl, sp                                       ; $4633: $39
	pop af                                           ; $4634: $f1
	dec d                                            ; $4635: $15
	ld c, l                                          ; $4636: $4d
	ld b, l                                          ; $4637: $45
	add hl, sp                                       ; $4638: $39
	xor e                                            ; $4639: $ab
	ld b, b                                          ; $463a: $40
	ld b, c                                          ; $463b: $41
	ld a, [hl-]                                      ; $463c: $3a
	ldh a, [c]                                       ; $463d: $f2

jr_097_463e:
	ld a, c                                          ; $463e: $79
	ld b, d                                          ; $463f: $42
	ld d, h                                          ; $4640: $54
	ld c, c                                          ; $4641: $49
	ld c, e                                          ; $4642: $4b
	and b                                            ; $4643: $a0
	ldh a, [$f1]                                     ; $4644: $f0 $f1
	ldh a, [$9d]                                     ; $4646: $f0 $9d
	dec [hl]                                         ; $4648: $35
	rla                                              ; $4649: $17
	ld l, a                                          ; $464a: $6f
	ld b, a                                          ; $464b: $47
	ld c, c                                          ; $464c: $49
	dec sp                                           ; $464d: $3b
	ccf                                              ; $464e: $3f
	ld c, e                                          ; $464f: $4b
	inc de                                           ; $4650: $13
	add a                                            ; $4651: $87
	pop af                                           ; $4652: $f1
	inc d                                            ; $4653: $14
	ld a, [hl-]                                      ; $4654: $3a
	ld [hl], a                                       ; $4655: $77
	jr c, jr_097_45ec                                ; $4656: $38 $94

	ld b, d                                          ; $4658: $42
	ld l, l                                          ; $4659: $6d
	add b                                            ; $465a: $80
	ld b, l                                          ; $465b: $45
	and b                                            ; $465c: $a0
	ld b, [hl]                                       ; $465d: $46
	dec sp                                           ; $465e: $3b
	inc [hl]                                         ; $465f: $34
	ld d, $37                                        ; $4660: $16 $37
	inc de                                           ; $4662: $13
	ldh a, [$a3]                                     ; $4663: $f0 $a3
	ld b, a                                          ; $4665: $47
	scf                                              ; $4666: $37
	and d                                            ; $4667: $a2
	cpl                                              ; $4668: $2f
	ld b, e                                          ; $4669: $43
	ld e, [hl]                                       ; $466a: $5e
	ld e, [hl]                                       ; $466b: $5e
	dec sp                                           ; $466c: $3b
	scf                                              ; $466d: $37
	and c                                            ; $466e: $a1
	db $ed                                           ; $466f: $ed
	ld a, h                                          ; $4670: $7c
	ld b, l                                          ; $4671: $45
	inc [hl]                                         ; $4672: $34
	db $ed                                           ; $4673: $ed

jr_097_4674:
	ld a, h                                          ; $4674: $7c
	and b                                            ; $4675: $a0
	cpl                                              ; $4676: $2f
	ld b, e                                          ; $4677: $43
	ld d, h                                          ; $4678: $54
	ld d, b                                          ; $4679: $50
	dec sp                                           ; $467a: $3b

jr_097_467b:
	and d                                            ; $467b: $a2
	ld e, h                                          ; $467c: $5c
	ld d, [hl]                                       ; $467d: $56
	inc [hl]                                         ; $467e: $34
	db $eb                                           ; $467f: $eb
	ccf                                              ; $4680: $3f
	and b                                            ; $4681: $a0
	ld b, [hl]                                       ; $4682: $46
	dec sp                                           ; $4683: $3b
	ld c, c                                          ; $4684: $49
	jr c, jr_097_46c0                                ; $4685: $38 $39

	ldh a, [$2a]                                     ; $4687: $f0 $2a
	ld b, a                                          ; $4689: $47
	inc de                                           ; $468a: $13
	ld [$4c67], a                                    ; $468b: $ea $67 $4c
	and b                                            ; $468e: $a0
	db $ed                                           ; $468f: $ed
	ld d, a                                          ; $4690: $57
	ld [$a8b7], a                                    ; $4691: $ea $b7 $a8
	or h                                             ; $4694: $b4
	inc [hl]                                         ; $4695: $34
	ld h, h                                          ; $4696: $64
	ld l, [hl]                                       ; $4697: $6e
	ld d, c                                          ; $4698: $51
	ld l, h                                          ; $4699: $6c
	ld a, [hl-]                                      ; $469a: $3a
	ld e, b                                          ; $469b: $58
	jr c, jr_097_463e                                ; $469c: $38 $a0

	cpl                                              ; $469e: $2f
	ld b, e                                          ; $469f: $43
	ld h, h                                          ; $46a0: $64
	ld l, [hl]                                       ; $46a1: $6e
	ld d, c                                          ; $46a2: $51
	ld l, h                                          ; $46a3: $6c
	and b                                            ; $46a4: $a0
	cpl                                              ; $46a5: $2f
	db $dd                                           ; $46a6: $dd
	xor $06                                          ; $46a7: $ee $06
	ld b, a                                          ; $46a9: $47
	ld a, d                                          ; $46aa: $7a
	ld e, a                                          ; $46ab: $5f
	add hl, sp                                       ; $46ac: $39
	add hl, bc                                       ; $46ad: $09
	ld b, b                                          ; $46ae: $40
	ld c, l                                          ; $46af: $4d
	ld e, e                                          ; $46b0: $5b
	ld d, [hl]                                       ; $46b1: $56
	inc [hl]                                         ; $46b2: $34
	or b                                             ; $46b3: $b0
	and b                                            ; $46b4: $a0
	cpl                                              ; $46b5: $2f
	db $eb                                           ; $46b6: $eb
	ld c, a                                          ; $46b7: $4f
	inc a                                            ; $46b8: $3c
	ld d, b                                          ; $46b9: $50
	inc [hl]                                         ; $46ba: $34
	jr c, @+$3a                                      ; $46bb: $38 $38

	ld b, l                                          ; $46bd: $45
	add hl, bc                                       ; $46be: $09
	ld c, a                                          ; $46bf: $4f

jr_097_46c0:
	add hl, sp                                       ; $46c0: $39
	ld d, c                                          ; $46c1: $51
	dec sp                                           ; $46c2: $3b
	inc a                                            ; $46c3: $3c
	ld d, a                                          ; $46c4: $57
	di                                               ; $46c5: $f3
	ld b, a                                          ; $46c6: $47
	ld c, h                                          ; $46c7: $4c
	and b                                            ; $46c8: $a0
	add hl, sp                                       ; $46c9: $39
	ldh a, [rSCY]                                    ; $46ca: $f0 $42
	ldh a, [rSCY]                                    ; $46cc: $f0 $42
	ld c, b                                          ; $46ce: $48
	and b                                            ; $46cf: $a0
	cpl                                              ; $46d0: $2f
	ld b, e                                          ; $46d1: $43
	ld e, d                                          ; $46d2: $5a
	inc [hl]                                         ; $46d3: $34
	db $eb                                           ; $46d4: $eb
	rst FarCall                                          ; $46d5: $f7
	xor c                                            ; $46d6: $a9
	pop af                                           ; $46d7: $f1
	ld d, $47                                        ; $46d8: $16 $47
	ldh a, [c]                                       ; $46da: $f2
	ld bc, $9438                                     ; $46db: $01 $38 $94
	ld a, $3f                                        ; $46de: $3e $3f
	and b                                            ; $46e0: $a0
	db $ed                                           ; $46e1: $ed
	ld b, e                                          ; $46e2: $43
	xor h                                            ; $46e3: $ac
	ld [hl], a                                       ; $46e4: $77
	jr c, jr_097_467b                                ; $46e5: $38 $94

	db $eb                                           ; $46e7: $eb
	ld d, [hl]                                       ; $46e8: $56
	ld b, c                                          ; $46e9: $41
	ld b, h                                          ; $46ea: $44
	ld c, a                                          ; $46eb: $4f
	ld b, c                                          ; $46ec: $41
	and b                                            ; $46ed: $a0
	ldh a, [$f4]                                     ; $46ee: $f0 $f4
	ld e, [hl]                                       ; $46f0: $5e
	ccf                                              ; $46f1: $3f
	ld c, [hl]                                       ; $46f2: $4e
	xor c                                            ; $46f3: $a9
	ldh a, [$08]                                     ; $46f4: $f0 $08
	ld d, b                                          ; $46f6: $50
	inc [hl]                                         ; $46f7: $34
	pop af                                           ; $46f8: $f1
	add hl, de                                       ; $46f9: $19
	ld e, b                                          ; $46fa: $58
	jr c, jr_097_4746                                ; $46fb: $38 $49

	ld e, h                                          ; $46fd: $5c
	ld b, a                                          ; $46fe: $47
	ld c, b                                          ; $46ff: $48
	add hl, bc                                       ; $4700: $09
	ldh a, [$9b]                                     ; $4701: $f0 $9b
	ldh a, [$28]                                     ; $4703: $f0 $28
	ld b, d                                          ; $4705: $42
	ldh a, [rSVBK]                                   ; $4706: $f0 $70
	ld b, d                                          ; $4708: $42
	di                                               ; $4709: $f3
	ld e, l                                          ; $470a: $5d
	ld b, a                                          ; $470b: $47
	xor h                                            ; $470c: $ac
	di                                               ; $470d: $f3
	db $db                                           ; $470e: $db

jr_097_470f:
	ld b, d                                          ; $470f: $42
	pop af                                           ; $4710: $f1
	rst GetHLinHL                                          ; $4711: $cf
	ld d, e                                          ; $4712: $53
	ld b, [hl]                                       ; $4713: $46
	dec sp                                           ; $4714: $3b
	ccf                                              ; $4715: $3f
	ld c, b                                          ; $4716: $48
	inc hl                                           ; $4717: $23
	di                                               ; $4718: $f3
	ld b, a                                          ; $4719: $47
	ld b, a                                          ; $471a: $47
	ld a, [hl-]                                      ; $471b: $3a
	ld c, [hl]                                       ; $471c: $4e
	ld c, c                                          ; $471d: $49
	inc de                                           ; $471e: $13
	ldh a, [$31]                                     ; $471f: $f0 $31
	ld d, e                                          ; $4721: $53
	jr c, jr_097_475f                                ; $4722: $38 $3b

	ldh a, [$36]                                     ; $4724: $f0 $36
	jr c, @-$7e                                      ; $4726: $38 $80

	jr c, jr_097_4769                                ; $4728: $38 $3f

	dec a                                            ; $472a: $3d
	db $ec                                           ; $472b: $ec
	ret c                                            ; $472c: $d8

	and b                                            ; $472d: $a0
	cpl                                              ; $472e: $2f
	ld b, e                                          ; $472f: $43
	ld b, b                                          ; $4730: $40
	add hl, sp                                       ; $4731: $39
	ld b, h                                          ; $4732: $44
	dec sp                                           ; $4733: $3b
	ld e, l                                          ; $4734: $5d
	and c                                            ; $4735: $a1
	ld c, d                                          ; $4736: $4a
	ld c, h                                          ; $4737: $4c
	inc [hl]                                         ; $4738: $34
	ld d, $53                                        ; $4739: $16 $53
	xor h                                            ; $473b: $ac
	ld b, e                                          ; $473c: $43
	ld d, h                                          ; $473d: $54
	dec sp                                           ; $473e: $3b
	ld b, b                                          ; $473f: $40
	ld d, a                                          ; $4740: $57
	pop af                                           ; $4741: $f1
	inc b                                            ; $4742: $04
	ld e, a                                          ; $4743: $5f
	add hl, sp                                       ; $4744: $39
	adc l                                            ; $4745: $8d

jr_097_4746:
	ldh a, [$eb]                                     ; $4746: $f0 $eb
	dec sp                                           ; $4748: $3b
	ccf                                              ; $4749: $3f
	ld c, b                                          ; $474a: $48
	add hl, bc                                       ; $474b: $09
	cpl                                              ; $474c: $2f
	ld b, e                                          ; $474d: $43
	ldh a, [rSCY]                                    ; $474e: $f0 $42
	ldh a, [$be]                                     ; $4750: $f0 $be
	ldh a, [rSCY]                                    ; $4752: $f0 $42
	ldh a, [$be]                                     ; $4754: $f0 $be
	ld c, b                                          ; $4756: $48
	ld [hl+], a                                      ; $4757: $22
	daa                                              ; $4758: $27
	scf                                              ; $4759: $37
	scf                                              ; $475a: $37
	ld [hl], $25                                     ; $475b: $36 $25
	add hl, bc                                       ; $475d: $09
	ld [hl], a                                       ; $475e: $77

jr_097_475f:
	jr c, @-$6a                                      ; $475f: $38 $94

	ld a, $3d                                        ; $4761: $3e $3d
	and c                                            ; $4763: $a1
	cpl                                              ; $4764: $2f
	ld b, e                                          ; $4765: $43
	ld b, b                                          ; $4766: $40
	inc [hl]                                         ; $4767: $34
	ld b, b                                          ; $4768: $40

jr_097_4769:
	ld c, l                                          ; $4769: $4d
	ld c, e                                          ; $476a: $4b
	pop af                                           ; $476b: $f1
	add d                                            ; $476c: $82
	inc a                                            ; $476d: $3c
	ld c, b                                          ; $476e: $48
	add hl, bc                                       ; $476f: $09
	cpl                                              ; $4770: $2f
	ld b, e                                          ; $4771: $43
	ld h, b                                          ; $4772: $60
	ld [hl+], a                                      ; $4773: $22
	ld h, b                                          ; $4774: $60
	ld [hl+], a                                      ; $4775: $22
	ld h, b                                          ; $4776: $60
	ld [hl+], a                                      ; $4777: $22
	ld [hl], a                                       ; $4778: $77
	jr c, jr_097_470f                                ; $4779: $38 $94

	ld a, $3d                                        ; $477b: $3e $3d
	ld [hl+], a                                      ; $477d: $22
	ld h, b                                          ; $477e: $60
	ld [hl+], a                                      ; $477f: $22
	ld h, b                                          ; $4780: $60
	ld [hl+], a                                      ; $4781: $22
	ld h, b                                          ; $4782: $60
	add hl, bc                                       ; $4783: $09
	add hl, sp                                       ; $4784: $39
	ldh a, [rSCY]                                    ; $4785: $f0 $42
	ldh a, [rSCY]                                    ; $4787: $f0 $42
	xor h                                            ; $4789: $ac
	ld d, $3b                                        ; $478a: $16 $3b
	dec a                                            ; $478c: $3d
	ld d, b                                          ; $478d: $50
	xor h                                            ; $478e: $ac

jr_097_478f:
	ld b, e                                          ; $478f: $43
	jr c, @+$3f                                      ; $4790: $38 $3d

	jr c, jr_097_47d9                                ; $4792: $38 $45

	pop af                                           ; $4794: $f1
	dec [hl]                                         ; $4795: $35
	ldh a, [$eb]                                     ; $4796: $f0 $eb
	dec sp                                           ; $4798: $3b
	ccf                                              ; $4799: $3f
	inc de                                           ; $479a: $13
	add a                                            ; $479b: $87
	ldh a, [c]                                       ; $479c: $f2
	adc c                                            ; $479d: $89
	ld e, h                                          ; $479e: $5c
	ld a, $3d                                        ; $479f: $3e $3d
	ld b, c                                          ; $47a1: $41
	ld b, h                                          ; $47a2: $44
	ld b, l                                          ; $47a3: $45
	ld c, h                                          ; $47a4: $4c
	and b                                            ; $47a5: $a0
	cpl                                              ; $47a6: $2f
	ld b, e                                          ; $47a7: $43
	ld b, [hl]                                       ; $47a8: $46
	inc [hl]                                         ; $47a9: $34
	ld b, [hl]                                       ; $47aa: $46
	ld c, l                                          ; $47ab: $4d
	ld c, e                                          ; $47ac: $4b
	ld c, h                                          ; $47ad: $4c
	ld c, b                                          ; $47ae: $48
	db $ed                                           ; $47af: $ed
	ld e, e                                          ; $47b0: $5b
	inc de                                           ; $47b1: $13
	di                                               ; $47b2: $f3
	db $db                                           ; $47b3: $db
	ld h, d                                          ; $47b4: $62
	pop af                                           ; $47b5: $f1
	inc b                                            ; $47b6: $04
	dec sp                                           ; $47b7: $3b
	ccf                                              ; $47b8: $3f
	ld b, [hl]                                       ; $47b9: $46
	ldh a, [rSB]                                     ; $47ba: $f0 $01
	ld b, l                                          ; $47bc: $45
	add hl, sp                                       ; $47bd: $39
	ld c, c                                          ; $47be: $49
	ld [hl], a                                       ; $47bf: $77
	dec sp                                           ; $47c0: $3b
	ccf                                              ; $47c1: $3f
	ld c, b                                          ; $47c2: $48
	add hl, bc                                       ; $47c3: $09
	xor $1e                                          ; $47c4: $ee $1e
	ldh a, [c]                                       ; $47c6: $f2
	inc b                                            ; $47c7: $04
	ld b, d                                          ; $47c8: $42
	inc de                                           ; $47c9: $13
	ld d, $3b                                        ; $47ca: $16 $3b
	ccf                                              ; $47cc: $3f
	xor h                                            ; $47cd: $ac
	ldh a, [$80]                                     ; $47ce: $f0 $80
	ldh a, [$c5]                                     ; $47d0: $f0 $c5

jr_097_47d2:
	ldh a, [c]                                       ; $47d2: $f2
	adc c                                            ; $47d3: $89
	ld e, h                                          ; $47d4: $5c
	di                                               ; $47d5: $f3
	ld a, h                                          ; $47d6: $7c
	ld b, h                                          ; $47d7: $44
	dec sp                                           ; $47d8: $3b

jr_097_47d9:
	dec a                                            ; $47d9: $3d
	ld b, c                                          ; $47da: $41
	ld b, h                                          ; $47db: $44
	ld b, l                                          ; $47dc: $45
	ld c, h                                          ; $47dd: $4c
	and b                                            ; $47de: $a0
	cpl                                              ; $47df: $2f
	ld b, e                                          ; $47e0: $43
	db $eb                                           ; $47e1: $eb
	ld c, a                                          ; $47e2: $4f
	inc a                                            ; $47e3: $3c
	ld d, b                                          ; $47e4: $50
	xor h                                            ; $47e5: $ac
	ldh a, [$98]                                     ; $47e6: $f0 $98
	ld b, a                                          ; $47e8: $47
	ld c, a                                          ; $47e9: $4f
	add d                                            ; $47ea: $82
	add hl, sp                                       ; $47eb: $39
	ld a, [hl-]                                      ; $47ec: $3a
	ld b, l                                          ; $47ed: $45
	and b                                            ; $47ee: $a0
	xor $1f                                          ; $47ef: $ee $1f
	xor b                                            ; $47f1: $a8
	ldh a, [hDisp0_SCX]                                     ; $47f2: $f0 $84
	add h                                            ; $47f4: $84
	ld b, h                                          ; $47f5: $44
	ld e, l                                          ; $47f6: $5d
	ld b, d                                          ; $47f7: $42
	ld [hl], a                                       ; $47f8: $77
	jr c, jr_097_478f                                ; $47f9: $38 $94

	ld b, h                                          ; $47fb: $44
	ld b, l                                          ; $47fc: $45
	ld c, h                                          ; $47fd: $4c
	and b                                            ; $47fe: $a0
	db $ec                                           ; $47ff: $ec
	ld bc, $4fac                                     ; $4800: $01 $ac $4f
	add hl, sp                                       ; $4803: $39
	ld d, c                                          ; $4804: $51
	sbc l                                            ; $4805: $9d
	ldh a, [$d8]                                     ; $4806: $f0 $d8
	ld a, [hl-]                                      ; $4808: $3a
	pop af                                           ; $4809: $f1
	inc e                                            ; $480a: $1c
	ld d, a                                          ; $480b: $57
	ld c, h                                          ; $480c: $4c
	and b                                            ; $480d: $a0
	ld e, b                                          ; $480e: $58
	ld d, c                                          ; $480f: $51
	ld d, e                                          ; $4810: $53
	ld b, a                                          ; $4811: $47
	inc de                                           ; $4812: $13
	ldh a, [rAUD1ENV]                                ; $4813: $f0 $12
	sbc a                                            ; $4815: $9f
	ldh a, [rTIMA]                                   ; $4816: $f0 $05
	ld b, a                                          ; $4818: $47
	ld c, a                                          ; $4819: $4f
	ld a, [hl-]                                      ; $481a: $3a
	ld c, [hl]                                       ; $481b: $4e
	ld c, c                                          ; $481c: $49
	inc de                                           ; $481d: $13
	ldh a, [$d8]                                     ; $481e: $f0 $d8
	ld a, [hl-]                                      ; $4820: $3a
	pop af                                           ; $4821: $f1
	inc e                                            ; $4822: $1c
	ld d, a                                          ; $4823: $57
	ld h, d                                          ; $4824: $62
	di                                               ; $4825: $f3
	add h                                            ; $4826: $84
	add hl, sp                                       ; $4827: $39
	ld a, [hl-]                                      ; $4828: $3a
	ld b, c                                          ; $4829: $41
	ccf                                              ; $482a: $3f
	sbc d                                            ; $482b: $9a
	ld c, e                                          ; $482c: $4b
	inc de                                           ; $482d: $13
	ld a, [hl-]                                      ; $482e: $3a
	jr c, jr_097_488e                                ; $482f: $38 $5d

	ld e, d                                          ; $4831: $5a
	ld c, b                                          ; $4832: $48
	and b                                            ; $4833: $a0
	cpl                                              ; $4834: $2f
	ld b, e                                          ; $4835: $43
	ld a, [hl-]                                      ; $4836: $3a
	jr c, jr_097_4896                                ; $4837: $38 $5d

	ld e, d                                          ; $4839: $5a
	and c                                            ; $483a: $a1
	ld [hl], a                                       ; $483b: $77

jr_097_483c:
	jr c, jr_097_47d2                                ; $483c: $38 $94

	ld a, $61                                        ; $483e: $3e $61
	ld d, [hl]                                       ; $4840: $56
	add hl, sp                                       ; $4841: $39
	ld b, d                                          ; $4842: $42
	ld b, l                                          ; $4843: $45
	ld c, h                                          ; $4844: $4c
	add l                                            ; $4845: $85
	xor b                                            ; $4846: $a8
	inc hl                                           ; $4847: $23
	add hl, sp                                       ; $4848: $39
	ldh a, [rSCY]                                    ; $4849: $f0 $42
	ldh a, [rSCY]                                    ; $484b: $f0 $42

jr_097_484d:
	ld c, b                                          ; $484d: $48
	add hl, bc                                       ; $484e: $09
	cpl                                              ; $484f: $2f
	ld b, e                                          ; $4850: $43
	ld a, [hl-]                                      ; $4851: $3a
	inc [hl]                                         ; $4852: $34
	ld l, e                                          ; $4853: $6b
	ld h, d                                          ; $4854: $62
	ld c, b                                          ; $4855: $48
	xor c                                            ; $4856: $a9
	ld [hl-], a                                      ; $4857: $32
	ldh a, [$64]                                     ; $4858: $f0 $64
	ld a, [hl-]                                      ; $485a: $3a
	db $ed                                           ; $485b: $ed
	rst AddAOntoHL                                          ; $485c: $ef
	inc sp                                           ; $485d: $33
	add hl, bc                                       ; $485e: $09
	pop af                                           ; $485f: $f1
	dec d                                            ; $4860: $15
	ld c, l                                          ; $4861: $4d
	ld h, c                                          ; $4862: $61
	ld d, [hl]                                       ; $4863: $56
	dec sp                                           ; $4864: $3b
	dec a                                            ; $4865: $3d
	ld b, d                                          ; $4866: $42
	xor c                                            ; $4867: $a9
	ldh a, [$08]                                     ; $4868: $f0 $08
	ld d, b                                          ; $486a: $50
	inc [hl]                                         ; $486b: $34
	pop af                                           ; $486c: $f1
	add hl, de                                       ; $486d: $19
	ld e, b                                          ; $486e: $58
	jr c, jr_097_48ba                                ; $486f: $38 $49

	ld e, h                                          ; $4871: $5c
	ld l, a                                          ; $4872: $6f
	ld b, d                                          ; $4873: $42
	ldh a, [rSVBK]                                   ; $4874: $f0 $70
	ld c, d                                          ; $4876: $4a
	ld c, b                                          ; $4877: $48
	add hl, bc                                       ; $4878: $09
	ldh a, [hDisp0_SCX]                                     ; $4879: $f0 $84
	add h                                            ; $487b: $84
	ld c, d                                          ; $487c: $4a
	ldh a, [$d8]                                     ; $487d: $f0 $d8
	ld a, [hl-]                                      ; $487f: $3a
	pop af                                           ; $4880: $f1
	inc e                                            ; $4881: $1c
	ld d, a                                          ; $4882: $57

jr_097_4883:
	ld b, d                                          ; $4883: $42
	ld h, h                                          ; $4884: $64
	di                                               ; $4885: $f3
	add h                                            ; $4886: $84
	jr c, jr_097_48eb                                ; $4887: $38 $62

	inc de                                           ; $4889: $13
	ld a, $3d                                        ; $488a: $3e $3d
	ld d, h                                          ; $488c: $54
	ld c, c                                          ; $488d: $49

jr_097_488e:
	ld d, e                                          ; $488e: $53
	ld b, [hl]                                       ; $488f: $46
	dec sp                                           ; $4890: $3b
	dec a                                            ; $4891: $3d
	db $ec                                           ; $4892: $ec
	ret c                                            ; $4893: $d8

	and b                                            ; $4894: $a0
	cpl                                              ; $4895: $2f

jr_097_4896:
	ld b, e                                          ; $4896: $43
	ld b, b                                          ; $4897: $40
	ld b, c                                          ; $4898: $41
	ld a, [hl-]                                      ; $4899: $3a
	ld d, h                                          ; $489a: $54

jr_097_489b:
	ld c, c                                          ; $489b: $49
	ld c, a                                          ; $489c: $4f
	ld b, [hl]                                       ; $489d: $46
	dec sp                                           ; $489e: $3b
	dec a                                            ; $489f: $3d
	ld a, [hl-]                                      ; $48a0: $3a
	ld [hl], h                                       ; $48a1: $74
	and b                                            ; $48a2: $a0
	ld d, d                                          ; $48a3: $52
	ld b, h                                          ; $48a4: $44
	ld [hl], a                                       ; $48a5: $77
	jr c, jr_097_483c                                ; $48a6: $38 $94

	ld e, b                                          ; $48a8: $58
	ld a, [hl-]                                      ; $48a9: $3a
	jr c, jr_097_484d                                ; $48aa: $38 $a1

	cpl                                              ; $48ac: $2f
	ld b, e                                          ; $48ad: $43
	ld a, [hl-]                                      ; $48ae: $3a
	inc [hl]                                         ; $48af: $34
	ld l, e                                          ; $48b0: $6b
	ld h, d                                          ; $48b1: $62
	and c                                            ; $48b2: $a1
	ldh a, [$08]                                     ; $48b3: $f0 $08
	ld d, b                                          ; $48b5: $50
	xor h                                            ; $48b6: $ac
	ld d, $3b                                        ; $48b7: $16 $3b
	dec a                                            ; $48b9: $3d

jr_097_48ba:
	ld d, b                                          ; $48ba: $50
	xor h                                            ; $48bb: $ac
	di                                               ; $48bc: $f3
	ld c, d                                          ; $48bd: $4a
	db $f4                                           ; $48be: $f4
	ld hl, $f262                                     ; $48bf: $21 $62 $f2
	and a                                            ; $48c2: $a7
	ld l, h                                          ; $48c3: $6c
	pop af                                           ; $48c4: $f1
	sub b                                            ; $48c5: $90
	ldh a, [$cb]                                     ; $48c6: $f0 $cb
	ccf                                              ; $48c8: $3f
	add l                                            ; $48c9: $85
	ld c, b                                          ; $48ca: $48
	add hl, bc                                       ; $48cb: $09
	pop af                                           ; $48cc: $f1
	sub a                                            ; $48cd: $97
	ldh a, [$1f]                                     ; $48ce: $f0 $1f
	pop af                                           ; $48d0: $f1
	sub a                                            ; $48d1: $97
	ldh a, [$1f]                                     ; $48d2: $f0 $1f
	ld b, a                                          ; $48d4: $47
	ld a, [hl-]                                      ; $48d5: $3a
	dec sp                                           ; $48d6: $3b
	ld h, c                                          ; $48d7: $61
	ld d, [hl]                                       ; $48d8: $56
	dec sp                                           ; $48d9: $3b
	dec a                                            ; $48da: $3d
	ld b, d                                          ; $48db: $42
	ld b, l                                          ; $48dc: $45
	and b                                            ; $48dd: $a0
	cpl                                              ; $48de: $2f
	ld b, e                                          ; $48df: $43
	ld h, b                                          ; $48e0: $60
	ld [hl+], a                                      ; $48e1: $22
	ld [hl+], a                                      ; $48e2: $22
	ld [hl+], a                                      ; $48e3: $22
	ld h, b                                          ; $48e4: $60
	ld [hl+], a                                      ; $48e5: $22
	ld [hl+], a                                      ; $48e6: $22
	ld [hl+], a                                      ; $48e7: $22
	ld h, b                                          ; $48e8: $60
	ld [hl+], a                                      ; $48e9: $22
	ld [hl+], a                                      ; $48ea: $22

jr_097_48eb:
	ld [hl+], a                                      ; $48eb: $22
	ld [hl], a                                       ; $48ec: $77
	jr c, jr_097_4883                                ; $48ed: $38 $94

	ld a, $3d                                        ; $48ef: $3e $3d
	ld [hl+], a                                      ; $48f1: $22
	ld [hl+], a                                      ; $48f2: $22
	ld [hl+], a                                      ; $48f3: $22
	ld h, b                                          ; $48f4: $60
	ld [hl+], a                                      ; $48f5: $22
	ld [hl+], a                                      ; $48f6: $22
	ld [hl+], a                                      ; $48f7: $22

jr_097_48f8:
	ld h, b                                          ; $48f8: $60
	ld [hl+], a                                      ; $48f9: $22
	ld [hl+], a                                      ; $48fa: $22
	ld [hl+], a                                      ; $48fb: $22
	ld h, b                                          ; $48fc: $60
	add hl, bc                                       ; $48fd: $09
	add hl, sp                                       ; $48fe: $39
	ldh a, [rSCY]                                    ; $48ff: $f0 $42
	ldh a, [rSCY]                                    ; $4901: $f0 $42
	inc [hl]                                         ; $4903: $34
	ld [hl], a                                       ; $4904: $77
	jr c, jr_097_489b                                ; $4905: $38 $94

	ld a, $3d                                        ; $4907: $3e $3d
	and c                                            ; $4909: $a1

jr_097_490a:
	cpl                                              ; $490a: $2f
	ld b, e                                          ; $490b: $43
	ld b, [hl]                                       ; $490c: $46
	ld [hl], h                                       ; $490d: $74
	xor $10                                          ; $490e: $ee $10
	add hl, bc                                       ; $4910: $09
	ldh a, [$de]                                     ; $4911: $f0 $de
	ld [hl], e                                       ; $4913: $73
	sub e                                            ; $4914: $93
	ldh a, [rP1]                                     ; $4915: $f0 $00
	ld a, $3d                                        ; $4917: $3e $3d
	ld h, e                                          ; $4919: $63
	ld b, l                                          ; $491a: $45
	xor b                                            ; $491b: $a8
	xor $1e                                          ; $491c: $ee $1e
	ldh a, [rBGP]                                    ; $491e: $f0 $47
	ld c, e                                          ; $4920: $4b
	ld c, b                                          ; $4921: $48
	inc hl                                           ; $4922: $23
	db $ed                                           ; $4923: $ed
	ld h, h                                          ; $4924: $64
	ld a, $3d                                        ; $4925: $3e $3d
	ld b, c                                          ; $4927: $41
	ld b, h                                          ; $4928: $44
	inc a                                            ; $4929: $3c
	ld d, b                                          ; $492a: $50
	and b                                            ; $492b: $a0
	cpl                                              ; $492c: $2f
	ld b, e                                          ; $492d: $43
	ldh a, [$f4]                                     ; $492e: $f0 $f4
	ld e, [hl]                                       ; $4930: $5e
	ccf                                              ; $4931: $3f
	ld a, [hl-]                                      ; $4932: $3a
	jr c, @+$44                                      ; $4933: $38 $42

	ld c, e                                          ; $4935: $4b
	inc de                                           ; $4936: $13
	db $ed                                           ; $4937: $ed
	xor c                                            ; $4938: $a9
	ld b, h                                          ; $4939: $44
	ld a, [hl-]                                      ; $493a: $3a
	ld c, b                                          ; $493b: $48
	and b                                            ; $493c: $a0
	ld e, [hl]                                       ; $493d: $5e
	dec sp                                           ; $493e: $3b
	ld [hl], $a2                                     ; $493f: $36 $a2

jr_097_4941:
	cpl                                              ; $4941: $2f
	ld b, e                                          ; $4942: $43
	ld b, e                                          ; $4943: $43
	ld d, h                                          ; $4944: $54
	ld c, l                                          ; $4945: $4d
	ldh a, [c]                                       ; $4946: $f2
	and a                                            ; $4947: $a7
	ld [hl], c                                       ; $4948: $71
	ld a, [hl-]                                      ; $4949: $3a
	jr c, jr_097_48f8                                ; $494a: $38 $ac

	ldh a, [c]                                       ; $494c: $f2
	and a                                            ; $494d: $a7
	ld b, c                                          ; $494e: $41
	ld c, d                                          ; $494f: $4a
	dec [hl]                                         ; $4950: $35
	ldh a, [$eb]                                     ; $4951: $f0 $eb
	dec sp                                           ; $4953: $3b
	ccf                                              ; $4954: $3f
	xor h                                            ; $4955: $ac
	db $ec                                           ; $4956: $ec
	add c                                            ; $4957: $81
	ldh a, [c]                                       ; $4958: $f2
	and a                                            ; $4959: $a7
	ld d, d                                          ; $495a: $52
	ld a, c                                          ; $495b: $79
	dec a                                            ; $495c: $3d
	ld b, d                                          ; $495d: $42
	ld c, e                                          ; $495e: $4b
	ldh a, [$98]                                     ; $495f: $f0 $98
	ld b, h                                          ; $4961: $44
	and c                                            ; $4962: $a1
	rst JumpTable                                          ; $4963: $c7
	ld b, h                                          ; $4964: $44
	dec sp                                           ; $4965: $3b
	dec a                                            ; $4966: $3d
	xor c                                            ; $4967: $a9
	inc hl                                           ; $4968: $23
	ld h, b                                          ; $4969: $60
	inc hl                                           ; $496a: $23
	ld h, b                                          ; $496b: $60
	ld b, [hl]                                       ; $496c: $46
	dec sp                                           ; $496d: $3b
	xor $10                                          ; $496e: $ee $10
	add hl, bc                                       ; $4970: $09
	cpl                                              ; $4971: $2f
	ld b, e                                          ; $4972: $43
	ld [hl], a                                       ; $4973: $77
	jr c, jr_097_490a                                ; $4974: $38 $94

	ld a, $3d                                        ; $4976: $3e $3d
	inc a                                            ; $4978: $3c
	and c                                            ; $4979: $a1
	db $eb                                           ; $497a: $eb
	ld d, c                                          ; $497b: $51
	xor h                                            ; $497c: $ac
	ld [$4ca3], a                                    ; $497d: $ea $a3 $4c
	dec [hl]                                         ; $4980: $35
	inc hl                                           ; $4981: $23
	inc de                                           ; $4982: $13
	jp hl                                            ; $4983: $e9


	adc h                                            ; $4984: $8c
	and c                                            ; $4985: $a1
	ld e, h                                          ; $4986: $5c
	ld d, [hl]                                       ; $4987: $56
	ld b, [hl]                                       ; $4988: $46
	inc [hl]                                         ; $4989: $34
	db $eb                                           ; $498a: $eb
	ccf                                              ; $498b: $3f
	and b                                            ; $498c: $a0
	cpl                                              ; $498d: $2f
	ld b, e                                          ; $498e: $43
	ld d, d                                          ; $498f: $52
	dec sp                                           ; $4990: $3b
	dec a                                            ; $4991: $3d
	ld d, l                                          ; $4992: $55
	ld c, b                                          ; $4993: $48
	xor h                                            ; $4994: $ac
	inc h                                            ; $4995: $24
	ld d, d                                          ; $4996: $52
	inc [hl]                                         ; $4997: $34
	db $ec                                           ; $4998: $ec
	ld [$39a0], sp                                   ; $4999: $08 $a0 $39
	ldh a, [rSCY]                                    ; $499c: $f0 $42
	ldh a, [rSCY]                                    ; $499e: $f0 $42
	xor h                                            ; $49a0: $ac
	ld d, h                                          ; $49a1: $54
	ld c, l                                          ; $49a2: $4d
	ld c, a                                          ; $49a3: $4f
	ldh a, [hDisp0_SCX]                                     ; $49a4: $f0 $84
	add h                                            ; $49a6: $84
	ld b, h                                          ; $49a7: $44
	ld e, l                                          ; $49a8: $5d
	ld b, d                                          ; $49a9: $42
	ld [hl], a                                       ; $49aa: $77
	jr c, jr_097_4941                                ; $49ab: $38 $94

	ld b, h                                          ; $49ad: $44
	ld c, h                                          ; $49ae: $4c
	and b                                            ; $49af: $a0
	ld b, [hl]                                       ; $49b0: $46
	dec sp                                           ; $49b1: $3b
	inc [hl]                                         ; $49b2: $34
	ld d, $a0                                        ; $49b3: $16 $a0
	cpl                                              ; $49b5: $2f
	ld b, e                                          ; $49b6: $43
	db $ed                                           ; $49b7: $ed
	xor c                                            ; $49b8: $a9
	inc [hl]                                         ; $49b9: $34
	db $eb                                           ; $49ba: $eb
	rst FarCall                                          ; $49bb: $f7
	and c                                            ; $49bc: $a1
	ldh a, [rSVBK]                                   ; $49bd: $f0 $70
	ld c, a                                          ; $49bf: $4f
	ld h, h                                          ; $49c0: $64
	ldh a, [c]                                       ; $49c1: $f2
	ld d, c                                          ; $49c2: $51
	ldh a, [$cd]                                     ; $49c3: $f0 $cd
	ldh a, [c]                                       ; $49c5: $f2
	ld sp, $3e44                                     ; $49c6: $31 $44 $3e
	inc [hl]                                         ; $49c9: $34
	rla                                              ; $49ca: $17
	db $ec                                           ; $49cb: $ec
	ld a, [de]                                       ; $49cc: $1a
	inc [hl]                                         ; $49cd: $34
	xor $06                                          ; $49ce: $ee $06
	ld b, a                                          ; $49d0: $47
	ld a, d                                          ; $49d1: $7a
	ld e, a                                          ; $49d2: $5f
	add hl, sp                                       ; $49d3: $39
	ld c, c                                          ; $49d4: $49
	inc de                                           ; $49d5: $13
	ld [hl], a                                       ; $49d6: $77
	dec sp                                           ; $49d7: $3b
	ccf                                              ; $49d8: $3f
	ld c, b                                          ; $49d9: $48
	and b                                            ; $49da: $a0
	ld b, b                                          ; $49db: $40
	add hl, sp                                       ; $49dc: $39
	xor l                                            ; $49dd: $ad
	ld e, e                                          ; $49de: $5b
	ld d, [hl]                                       ; $49df: $56
	ld b, [hl]                                       ; $49e0: $46
	inc [hl]                                         ; $49e1: $34
	ld l, a                                          ; $49e2: $6f
	inc [hl]                                         ; $49e3: $34
	ldh a, [$bc]                                     ; $49e4: $f0 $bc
	ld b, a                                          ; $49e6: $47
	ld a, d                                          ; $49e7: $7a
	ld c, [hl]                                       ; $49e8: $4e
	ld c, h                                          ; $49e9: $4c
	and b                                            ; $49ea: $a0
	add hl, bc                                       ; $49eb: $09
	cpl                                              ; $49ec: $2f
	ld b, e                                          ; $49ed: $43
	db $ec                                           ; $49ee: $ec
	ld h, [hl]                                       ; $49ef: $66
	pop af                                           ; $49f0: $f1
	jp nc, $faed                                     ; $49f1: $d2 $ed $fa

	ld b, h                                          ; $49f4: $44
	and b                                            ; $49f5: $a0
	cpl                                              ; $49f6: $2f
	ld b, e                                          ; $49f7: $43
	pop af                                           ; $49f8: $f1
	ld [$4a7f], a                                    ; $49f9: $ea $7f $4a
	pop af                                           ; $49fc: $f1
	ld de, $65f0                                     ; $49fd: $11 $f0 $65
	ld d, e                                          ; $4a00: $53
	inc de                                           ; $4a01: $13
	di                                               ; $4a02: $f3
	inc e                                            ; $4a03: $1c
	jr c, @+$5f                                      ; $4a04: $38 $5d

	ld e, d                                          ; $4a06: $5a
	inc [hl]                                         ; $4a07: $34
	ld c, c                                          ; $4a08: $49
	ld b, a                                          ; $4a09: $47
	inc a                                            ; $4a0a: $3c
	ld d, l                                          ; $4a0b: $55
	ld h, a                                          ; $4a0c: $67
	inc a                                            ; $4a0d: $3c
	ld a, [hl-]                                      ; $4a0e: $3a
	ld e, h                                          ; $4a0f: $5c
	ld d, [hl]                                       ; $4a10: $56
	and b                                            ; $4a11: $a0
	cpl                                              ; $4a12: $2f
	ld b, e                                          ; $4a13: $43
	db $eb                                           ; $4a14: $eb
	inc a                                            ; $4a15: $3c
	xor h                                            ; $4a16: $ac
	add sp, -$38                                     ; $4a17: $e8 $c8
	and b                                            ; $4a19: $a0
	cpl                                              ; $4a1a: $2f
	ld [$ac10], a                                    ; $4a1b: $ea $10 $ac
	jp hl                                            ; $4a1e: $e9


	add l                                            ; $4a1f: $85
	add hl, bc                                       ; $4a20: $09
	cpl                                              ; $4a21: $2f
	ld [$0912], a                                    ; $4a22: $ea $12 $09
	cpl                                              ; $4a25: $2f
	jp hl                                            ; $4a26: $e9


	add [hl]                                         ; $4a27: $86
	add hl, bc                                       ; $4a28: $09
	cpl                                              ; $4a29: $2f
	ld b, e                                          ; $4a2a: $43
	db $eb                                           ; $4a2b: $eb
	dec a                                            ; $4a2c: $3d
	inc de                                           ; $4a2d: $13
	ld [$a011], a                                    ; $4a2e: $ea $11 $a0
	cpl                                              ; $4a31: $2f
	ld b, e                                          ; $4a32: $43
	ld h, h                                          ; $4a33: $64
	ld h, h                                          ; $4a34: $64
	ld h, h                                          ; $4a35: $64
	ld h, h                                          ; $4a36: $64
	ld h, h                                          ; $4a37: $64
	xor h                                            ; $4a38: $ac
	ld h, h                                          ; $4a39: $64
	ldh a, [c]                                       ; $4a3a: $f2
	add h                                            ; $4a3b: $84
	ld d, e                                          ; $4a3c: $53
	ld [hl], h                                       ; $4a3d: $74
	ld c, b                                          ; $4a3e: $48
	and b                                            ; $4a3f: $a0
	cpl                                              ; $4a40: $2f
	ld [hl-], a                                      ; $4a41: $32
	db $ed                                           ; $4a42: $ed
	ld [$6c42], sp                                   ; $4a43: $08 $42 $6c
	ld b, c                                          ; $4a46: $41
	ld a, [hl-]                                      ; $4a47: $3a
	ld d, e                                          ; $4a48: $53
	inc de                                           ; $4a49: $13
	ldh a, [c]                                       ; $4a4a: $f2
	ld [de], a                                       ; $4a4b: $12
	ld c, l                                          ; $4a4c: $4d
	ccf                                              ; $4a4d: $3f
	jr c, @+$50                                      ; $4a4e: $38 $4e

	xor b                                            ; $4a50: $a8
	ld d, h                                          ; $4a51: $54
	ld c, l                                          ; $4a52: $4d
	ld c, e                                          ; $4a53: $4b
	inc [hl]                                         ; $4a54: $34
	ldh a, [$b7]                                     ; $4a55: $f0 $b7
	ldh a, [rAUD2HIGH]                               ; $4a57: $f0 $19
	ldh a, [c]                                       ; $4a59: $f2
	call c, $a33c                                    ; $4a5a: $dc $3c $a3
	ld l, a                                          ; $4a5d: $6f
	ld b, d                                          ; $4a5e: $42
	ldh a, [$d0]                                     ; $4a5f: $f0 $d0
	ldh a, [c]                                       ; $4a61: $f2
	call z, $c0f0                                    ; $4a62: $cc $f0 $c0
	ld c, d                                          ; $4a65: $4a
	inc de                                           ; $4a66: $13
	ld d, h                                          ; $4a67: $54
	ld b, c                                          ; $4a68: $41
	ld a, [hl-]                                      ; $4a69: $3a
	sbc d                                            ; $4a6a: $9a
	ld b, a                                          ; $4a6b: $47
	ld a, [hl-]                                      ; $4a6c: $3a
	dec sp                                           ; $4a6d: $3b
	ccf                                              ; $4a6e: $3f
	xor l                                            ; $4a6f: $ad
	sbc $eb                                          ; $4a70: $de $eb
	ccf                                              ; $4a72: $3f
	and b                                            ; $4a73: $a0
	cpl                                              ; $4a74: $2f
	ld [hl-], a                                      ; $4a75: $32
	db $ed                                           ; $4a76: $ed
	xor c                                            ; $4a77: $a9
	ld d, e                                          ; $4a78: $53
	xor h                                            ; $4a79: $ac
	add sp, $4d                                      ; $4a7a: $e8 $4d
	inc sp                                           ; $4a7c: $33
	add hl, bc                                       ; $4a7d: $09
	db $eb                                           ; $4a7e: $eb
	ccf                                              ; $4a7f: $3f
	xor b                                            ; $4a80: $a8
	sbc $34                                          ; $4a81: $de $34
	db $eb                                           ; $4a83: $eb
	ccf                                              ; $4a84: $3f
	and b                                            ; $4a85: $a0
	cpl                                              ; $4a86: $2f
	ld [hl-], a                                      ; $4a87: $32
	ld d, h                                          ; $4a88: $54
	ld c, l                                          ; $4a89: $4d
	ld c, d                                          ; $4a8a: $4a
	xor h                                            ; $4a8b: $ac
	add sp, -$30                                     ; $4a8c: $e8 $d0
	xor b                                            ; $4a8e: $a8
	ld c, d                                          ; $4a8f: $4a
	ld c, a                                          ; $4a90: $4f
	inc [hl]                                         ; $4a91: $34
	ldh a, [rIE]                                     ; $4a92: $f0 $ff
	ld a, $38                                        ; $4a94: $3e $38
	adc l                                            ; $4a96: $8d
	ld c, b                                          ; $4a97: $48
	and e                                            ; $4a98: $a3
	cpl                                              ; $4a99: $2f
	add sp, -$2f                                     ; $4a9a: $e8 $d1
	inc de                                           ; $4a9c: $13
	add sp, -$33                                     ; $4a9d: $e8 $cd
	and b                                            ; $4a9f: $a0
	cpl                                              ; $4aa0: $2f
	jp hl                                            ; $4aa1: $e9


	dec e                                            ; $4aa2: $1d
	xor b                                            ; $4aa3: $a8
	db $ed                                           ; $4aa4: $ed
	xor c                                            ; $4aa5: $a9
	ld c, a                                          ; $4aa6: $4f
	inc [hl]                                         ; $4aa7: $34

Call_097_4aa8:
	ldh a, [$d9]                                     ; $4aa8: $f0 $d9
	ld h, c                                          ; $4aaa: $61
	ldh a, [hDisp1_WX]                                     ; $4aab: $f0 $96
	dec sp                                           ; $4aad: $3b
	dec a                                            ; $4aae: $3d
	ld l, h                                          ; $4aaf: $6c
	dec a                                            ; $4ab0: $3d
	jr c, jr_097_4af7                                ; $4ab1: $38 $44

	and e                                            ; $4ab3: $a3
	cpl                                              ; $4ab4: $2f
	ld [hl-], a                                      ; $4ab5: $32
	ld a, [hl-]                                      ; $4ab6: $3a
	ld b, c                                          ; $4ab7: $41
	ld b, h                                          ; $4ab8: $44
	inc a                                            ; $4ab9: $3c
	inc [hl]                                         ; $4aba: $34
	ldh a, [$65]                                     ; $4abb: $f0 $65
	ldh a, [rAUD2HIGH]                               ; $4abd: $f0 $19
	ld b, a                                          ; $4abf: $47
	ldh a, [$7f]                                     ; $4ac0: $f0 $7f
	ld d, e                                          ; $4ac2: $53
	inc de                                           ; $4ac3: $13
	ld l, h                                          ; $4ac4: $6c
	ld a, [hl-]                                      ; $4ac5: $3a
	ldh a, [$cb]                                     ; $4ac6: $f0 $cb
	dec sp                                           ; $4ac8: $3b
	ccf                                              ; $4ac9: $3f
	ld d, l                                          ; $4aca: $55
	ld c, [hl]                                       ; $4acb: $4e
	ldh a, [$78]                                     ; $4acc: $f0 $78
	ld e, e                                          ; $4ace: $5b
	ld d, e                                          ; $4acf: $53
	ld d, c                                          ; $4ad0: $51
	ld c, [hl]                                       ; $4ad1: $4e
	and e                                            ; $4ad2: $a3
	cpl                                              ; $4ad3: $2f
	ld [hl-], a                                      ; $4ad4: $32
	ld h, h                                          ; $4ad5: $64
	ld h, h                                          ; $4ad6: $64
	ld h, h                                          ; $4ad7: $64
	ld h, h                                          ; $4ad8: $64
	ld h, h                                          ; $4ad9: $64
	dec sp                                           ; $4ada: $3b
	dec sp                                           ; $4adb: $3b
	dec sp                                           ; $4adc: $3b
	scf                                              ; $4add: $37
	scf                                              ; $4ade: $37
	inc sp                                           ; $4adf: $33
	add hl, bc                                       ; $4ae0: $09
	cpl                                              ; $4ae1: $2f
	ld [hl-], a                                      ; $4ae2: $32
	ldh a, [rSCY]                                    ; $4ae3: $f0 $42
	ldh a, [c]                                       ; $4ae5: $f2
	ld l, h                                          ; $4ae6: $6c
	xor l                                            ; $4ae7: $ad
	ld l, d                                          ; $4ae8: $6a
	ld l, b                                          ; $4ae9: $68
	ld c, d                                          ; $4aea: $4a
	db $ed                                           ; $4aeb: $ed
	ld a, [$f04f]                                    ; $4aec: $fa $4f $f0
	adc $63                                          ; $4aef: $ce $63
	ld d, a                                          ; $4af1: $57
	ld b, h                                          ; $4af2: $44
	and e                                            ; $4af3: $a3
	cpl                                              ; $4af4: $2f
	ld h, $98                                        ; $4af5: $26 $98

jr_097_4af7:
	ldh a, [$7c]                                     ; $4af7: $f0 $7c
	pop af                                           ; $4af9: $f1
	ld c, l                                          ; $4afa: $4d
	pop af                                           ; $4afb: $f1
	ld c, l                                          ; $4afc: $4d
	pop af                                           ; $4afd: $f1
	ld c, l                                          ; $4afe: $4d
	xor $10                                          ; $4aff: $ee $10
	dec h                                            ; $4b01: $25
	add hl, bc                                       ; $4b02: $09
	cpl                                              ; $4b03: $2f
	ld [hl-], a                                      ; $4b04: $32
	ld b, c                                          ; $4b05: $41
	scf                                              ; $4b06: $37
	xor c                                            ; $4b07: $a9
	ld h, h                                          ; $4b08: $64
	db $ed                                           ; $4b09: $ed
	ei                                               ; $4b0a: $fb
	ld b, a                                          ; $4b0b: $47
	ldh a, [$98]                                     ; $4b0c: $f0 $98
	inc a                                            ; $4b0e: $3c
	sub [hl]                                         ; $4b0f: $96
	dec sp                                           ; $4b10: $3b
	ccf                                              ; $4b11: $3f
	ld c, [hl]                                       ; $4b12: $4e
	inc de                                           ; $4b13: $13
	db $eb                                           ; $4b14: $eb
	sbc l                                            ; $4b15: $9d
	and e                                            ; $4b16: $a3
	cpl                                              ; $4b17: $2f
	db $ec                                           ; $4b18: $ec
	rla                                              ; $4b19: $17
	scf                                              ; $4b1a: $37
	ld b, d                                          ; $4b1b: $42
	sub a                                            ; $4b1c: $97
	jr c, jr_097_4b80                                ; $4b1d: $38 $61

	ld d, [hl]                                       ; $4b1f: $56
	ld e, [hl]                                       ; $4b20: $5e
	and d                                            ; $4b21: $a2
	cpl                                              ; $4b22: $2f
	ld [hl-], a                                      ; $4b23: $32
	ld e, d                                          ; $4b24: $5a
	ld c, l                                          ; $4b25: $4d
	ld d, e                                          ; $4b26: $53
	db $ec                                           ; $4b27: $ec
	ld a, [bc]                                       ; $4b28: $0a
	ld [hl], $33                                     ; $4b29: $36 $33
	add hl, bc                                       ; $4b2b: $09
	cpl                                              ; $4b2c: $2f
	jr c, jr_097_4b9d                                ; $4b2d: $38 $6e

	inc [hl]                                         ; $4b2f: $34
	ld l, [hl]                                       ; $4b30: $6e
	ld [hl], c                                       ; $4b31: $71
	ccf                                              ; $4b32: $3f
	ld h, h                                          ; $4b33: $64
	ld d, h                                          ; $4b34: $54
	add hl, sp                                       ; $4b35: $39
	add hl, bc                                       ; $4b36: $09
	cpl                                              ; $4b37: $2f
	ld [hl-], a                                      ; $4b38: $32
	ld b, b                                          ; $4b39: $40
	add hl, sp                                       ; $4b3a: $39
	ld b, h                                          ; $4b3b: $44
	ld a, [hl-]                                      ; $4b3c: $3a
	inc [hl]                                         ; $4b3d: $34
	halt                                             ; $4b3e: $76
	ld c, e                                          ; $4b3f: $4b
	inc de                                           ; $4b40: $13
	ld b, b                                          ; $4b41: $40
	ld b, c                                          ; $4b42: $41
	ld a, [hl-]                                      ; $4b43: $3a
	ld d, h                                          ; $4b44: $54
	ld c, c                                          ; $4b45: $49
	ld h, d                                          ; $4b46: $62
	ld d, c                                          ; $4b47: $51
	ld c, [hl]                                       ; $4b48: $4e
	ldh a, [$ab]                                     ; $4b49: $f0 $ab
	db $ec                                           ; $4b4b: $ec
	ret c                                            ; $4b4c: $d8

	and e                                            ; $4b4d: $a3
	cpl                                              ; $4b4e: $2f
	ld [hl-], a                                      ; $4b4f: $32
	ldh a, [rSCY]                                    ; $4b50: $f0 $42
	dec sp                                           ; $4b52: $3b
	inc [hl]                                         ; $4b53: $34
	halt                                             ; $4b54: $76
	ld c, c                                          ; $4b55: $49
	ld a, $3d                                        ; $4b56: $3e $3d
	ld d, h                                          ; $4b58: $54
	ld c, c                                          ; $4b59: $49
	ld d, e                                          ; $4b5a: $53
	xor h                                            ; $4b5b: $ac
	ldh a, [rHDMA4]                                  ; $4b5c: $f0 $54
	ld a, $f1                                        ; $4b5e: $3e $f1
	or c                                             ; $4b60: $b1
	dec sp                                           ; $4b61: $3b
	ccf                                              ; $4b62: $3f
	db $ec                                           ; $4b63: $ec
	push de                                          ; $4b64: $d5
	adc l                                            ; $4b65: $8d
	and e                                            ; $4b66: $a3
	cpl                                              ; $4b67: $2f
	ld [hl-], a                                      ; $4b68: $32
	add hl, sp                                       ; $4b69: $39
	ldh a, [c]                                       ; $4b6a: $f2
	ld l, h                                          ; $4b6b: $6c
	inc [hl]                                         ; $4b6c: $34
	di                                               ; $4b6d: $f3
	ld [hl], c                                       ; $4b6e: $71
	ld h, d                                          ; $4b6f: $62
	ldh a, [c]                                       ; $4b70: $f2
	and a                                            ; $4b71: $a7
	ld b, c                                          ; $4b72: $41
	ld c, d                                          ; $4b73: $4a
	inc de                                           ; $4b74: $13
	db $ed                                           ; $4b75: $ed
	adc c                                            ; $4b76: $89
	ld d, c                                          ; $4b77: $51
	ld c, [hl]                                       ; $4b78: $4e
	inc a                                            ; $4b79: $3c
	and e                                            ; $4b7a: $a3
	cpl                                              ; $4b7b: $2f
	db $f4                                           ; $4b7c: $f4
	ld l, $42                                        ; $4b7d: $2e $42
	di                                               ; $4b7f: $f3

jr_097_4b80:
	sub d                                            ; $4b80: $92
	inc a                                            ; $4b81: $3c
	ld d, b                                          ; $4b82: $50
	ld b, d                                          ; $4b83: $42
	sub a                                            ; $4b84: $97
	ld d, l                                          ; $4b85: $55
	add hl, bc                                       ; $4b86: $09
	cpl                                              ; $4b87: $2f
	pop af                                           ; $4b88: $f1
	jp nz, $f041                                     ; $4b89: $c2 $41 $f0

	add hl, de                                       ; $4b8c: $19
	ld b, d                                          ; $4b8d: $42
	di                                               ; $4b8e: $f3
	sub d                                            ; $4b8f: $92
	inc a                                            ; $4b90: $3c
	ld d, b                                          ; $4b91: $50
	ld b, d                                          ; $4b92: $42
	sub a                                            ; $4b93: $97
	ld d, l                                          ; $4b94: $55
	add hl, bc                                       ; $4b95: $09
	cpl                                              ; $4b96: $2f
	db $f4                                           ; $4b97: $f4
	dec l                                            ; $4b98: $2d
	ld b, d                                          ; $4b99: $42
	di                                               ; $4b9a: $f3
	sub d                                            ; $4b9b: $92
	inc a                                            ; $4b9c: $3c

jr_097_4b9d:
	ld d, b                                          ; $4b9d: $50
	ld b, d                                          ; $4b9e: $42
	sub a                                            ; $4b9f: $97
	ld d, l                                          ; $4ba0: $55
	add hl, bc                                       ; $4ba1: $09
	cpl                                              ; $4ba2: $2f
	ld b, e                                          ; $4ba3: $43
	db $ec                                           ; $4ba4: $ec
	rla                                              ; $4ba5: $17
	xor h                                            ; $4ba6: $ac
	ldh a, [rTIMA]                                   ; $4ba7: $f0 $05
	ld e, h                                          ; $4ba9: $5c
	ccf                                              ; $4baa: $3f
	ccf                                              ; $4bab: $3f
	ld b, l                                          ; $4bac: $45
	inc a                                            ; $4bad: $3c
	dec sp                                           ; $4bae: $3b
	dec a                                            ; $4baf: $3d
	and b                                            ; $4bb0: $a0
	ld e, h                                          ; $4bb1: $5c
	ld d, [hl]                                       ; $4bb2: $56
	ld b, [hl]                                       ; $4bb3: $46
	ld [hl], h                                       ; $4bb4: $74
	pop af                                           ; $4bb5: $f1
	dec [hl]                                         ; $4bb6: $35
	scf                                              ; $4bb7: $37
	inc de                                           ; $4bb8: $13
	ld b, d                                          ; $4bb9: $42
	sub a                                            ; $4bba: $97
	ld e, h                                          ; $4bbb: $5c
	ld b, l                                          ; $4bbc: $45
	pop af                                           ; $4bbd: $f1
	dec [hl]                                         ; $4bbe: $35
	and d                                            ; $4bbf: $a2
	cpl                                              ; $4bc0: $2f
	ld h, $eb                                        ; $4bc1: $26 $eb
	reti                                             ; $4bc3: $d9


	dec h                                            ; $4bc4: $25
	add hl, bc                                       ; $4bc5: $09
	cpl                                              ; $4bc6: $2f
	ld [hl-], a                                      ; $4bc7: $32
	db $ec                                           ; $4bc8: $ec
	push de                                          ; $4bc9: $d5
	xor b                                            ; $4bca: $a8
	ld b, [hl]                                       ; $4bcb: $46
	ld d, d                                          ; $4bcc: $52
	ld d, a                                          ; $4bcd: $57
	ld b, d                                          ; $4bce: $42
	ldh a, [$29]                                     ; $4bcf: $f0 $29
	ld a, $58                                        ; $4bd1: $3e $58
	ld b, a                                          ; $4bd3: $47
	inc de                                           ; $4bd4: $13
	pop af                                           ; $4bd5: $f1
	dec l                                            ; $4bd6: $2d
	ld h, d                                          ; $4bd7: $62
	sub h                                            ; $4bd8: $94
	ld a, $3f                                        ; $4bd9: $3e $3f
	db $ec                                           ; $4bdb: $ec
	push de                                          ; $4bdc: $d5
	and e                                            ; $4bdd: $a3
	cpl                                              ; $4bde: $2f
	ld [hl-], a                                      ; $4bdf: $32
	ld b, [hl]                                       ; $4be0: $46
	ld [hl], h                                       ; $4be1: $74
	ld c, b                                          ; $4be2: $48
	xor h                                            ; $4be3: $ac
	ldh a, [rVBK]                                    ; $4be4: $f0 $4f
	ld d, e                                          ; $4be6: $53
	ldh a, [c]                                       ; $4be7: $f2
	di                                               ; $4be8: $f3
	ld h, e                                          ; $4be9: $63
	ld c, l                                          ; $4bea: $4d
	ld c, [hl]                                       ; $4beb: $4e
	adc l                                            ; $4bec: $8d
	and e                                            ; $4bed: $a3
	ld e, h                                          ; $4bee: $5c
	ld d, [hl]                                       ; $4bef: $56
	ld b, [hl]                                       ; $4bf0: $46
	ld [hl], h                                       ; $4bf1: $74
	ld [hl], h                                       ; $4bf2: $74
	scf                                              ; $4bf3: $37
	scf                                              ; $4bf4: $37
	inc de                                           ; $4bf5: $13
	ldh a, [$98]                                     ; $4bf6: $f0 $98
	inc a                                            ; $4bf8: $3c
	ld b, d                                          ; $4bf9: $42
	sub a                                            ; $4bfa: $97
	jr c, jr_097_4c3c                                ; $4bfb: $38 $3f

	ld c, [hl]                                       ; $4bfd: $4e
	pop af                                           ; $4bfe: $f1
	dec [hl]                                         ; $4bff: $35
	and d                                            ; $4c00: $a2
	cpl                                              ; $4c01: $2f
	ld [hl-], a                                      ; $4c02: $32
	ld l, [hl]                                       ; $4c03: $6e
	ld a, e                                          ; $4c04: $7b
	jr c, jr_097_4c3e                                ; $4c05: $38 $37

	ldh a, [$e1]                                     ; $4c07: $f0 $e1
	ldh a, [rSB]                                     ; $4c09: $f0 $01
	ld c, [hl]                                       ; $4c0b: $4e
	adc l                                            ; $4c0c: $8d
	scf                                              ; $4c0d: $37
	inc sp                                           ; $4c0e: $33
	add hl, bc                                       ; $4c0f: $09
	cpl                                              ; $4c10: $2f
	ld b, e                                          ; $4c11: $43
	ldh a, [rSCY]                                    ; $4c12: $f0 $42
	ldh a, [c]                                       ; $4c14: $f2
	ld l, h                                          ; $4c15: $6c
	xor h                                            ; $4c16: $ac
	ld l, e                                          ; $4c17: $6b
	ld c, c                                          ; $4c18: $49
	inc a                                            ; $4c19: $3c
	ldh a, [$e1]                                     ; $4c1a: $f0 $e1
	ldh a, [rSB]                                     ; $4c1c: $f0 $01
	ld e, h                                          ; $4c1e: $5c
	dec sp                                           ; $4c1f: $3b
	dec a                                            ; $4c20: $3d
	ld b, l                                          ; $4c21: $45
	add hl, sp                                       ; $4c22: $39
	ld b, h                                          ; $4c23: $44
	ld a, [hl-]                                      ; $4c24: $3a
	xor b                                            ; $4c25: $a8
	ld [hl-], a                                      ; $4c26: $32
	ldh a, [$d2]                                     ; $4c27: $f0 $d2
	ld h, d                                          ; $4c29: $62
	ld [hl], d                                       ; $4c2a: $72
	ld d, b                                          ; $4c2b: $50
	ld c, l                                          ; $4c2c: $4d
	dec a                                            ; $4c2d: $3d
	ld a, a                                          ; $4c2e: $7f
	ld c, a                                          ; $4c2f: $4f
	ld d, c                                          ; $4c30: $51
	ld c, [hl]                                       ; $4c31: $4e
	ld e, l                                          ; $4c32: $5d
	ld e, d                                          ; $4c33: $5a
	ld c, b                                          ; $4c34: $48
	inc sp                                           ; $4c35: $33
	add hl, bc                                       ; $4c36: $09
	cpl                                              ; $4c37: $2f
	ld b, e                                          ; $4c38: $43
	ldh a, [$cb]                                     ; $4c39: $f0 $cb
	ld h, [hl]                                       ; $4c3b: $66

jr_097_4c3c:
	add l                                            ; $4c3c: $85
	add l                                            ; $4c3d: $85

jr_097_4c3e:
	add l                                            ; $4c3e: $85
	pop af                                           ; $4c3f: $f1
	dec [hl]                                         ; $4c40: $35
	and d                                            ; $4c41: $a2
	ld h, h                                          ; $4c42: $64
	add hl, sp                                       ; $4c43: $39
	xor h                                            ; $4c44: $ac
	db $ed                                           ; $4c45: $ed
	dec d                                            ; $4c46: $15
	xor $06                                          ; $4c47: $ee $06
	ld b, a                                          ; $4c49: $47
	ld e, d                                          ; $4c4a: $5a
	add hl, sp                                       ; $4c4b: $39
	ld b, h                                          ; $4c4c: $44
	and b                                            ; $4c4d: $a0
	cpl                                              ; $4c4e: $2f
	ld b, e                                          ; $4c4f: $43
	ld e, [hl]                                       ; $4c50: $5e
	inc [hl]                                         ; $4c51: $34
	pop af                                           ; $4c52: $f1
	ld b, $f1                                        ; $4c53: $06 $f1
	ld a, $3e                                        ; $4c55: $3e $3e

jr_097_4c57:
	ld c, c                                          ; $4c57: $49
	ld e, h                                          ; $4c58: $5c
	ld d, d                                          ; $4c59: $52
	ld d, c                                          ; $4c5a: $51
	and b                                            ; $4c5b: $a0
	cpl                                              ; $4c5c: $2f
	ld [hl-], a                                      ; $4c5d: $32
	ld c, e                                          ; $4c5e: $4b
	ld [hl], h                                       ; $4c5f: $74
	ld c, b                                          ; $4c60: $48
	xor h                                            ; $4c61: $ac
	ldh a, [$d8]                                     ; $4c62: $f0 $d8
	ld e, d                                          ; $4c64: $5a
	jr c, jr_097_4c57                                ; $4c65: $38 $f0

	inc e                                            ; $4c67: $1c
	ld b, a                                          ; $4c68: $47
	ld b, [hl]                                       ; $4c69: $46
	dec sp                                           ; $4c6a: $3b
	dec a                                            ; $4c6b: $3d
	adc l                                            ; $4c6c: $8d
	inc sp                                           ; $4c6d: $33
	add hl, bc                                       ; $4c6e: $09
	cpl                                              ; $4c6f: $2f
	ld b, e                                          ; $4c70: $43
	ld l, e                                          ; $4c71: $6b
	ld b, h                                          ; $4c72: $44
	ld d, h                                          ; $4c73: $54
	ld c, l                                          ; $4c74: $4d
	xor c                                            ; $4c75: $a9
	ldh a, [$5c]                                     ; $4c76: $f0 $5c
	pop af                                           ; $4c78: $f1
	ld a, e                                          ; $4c79: $7b
	ldh a, [hDisp1_WY]                                     ; $4c7a: $f0 $95
	ld b, h                                          ; $4c7c: $44
	ld a, [hl-]                                      ; $4c7d: $3a
	xor b                                            ; $4c7e: $a8
	ld c, a                                          ; $4c7f: $4f
	ld a, $3c                                        ; $4c80: $3e $3c
	ld a, $3f                                        ; $4c82: $3e $3f
	inc [hl]                                         ; $4c84: $34
	db $ec                                           ; $4c85: $ec
	di                                               ; $4c86: $f3
	ld b, d                                          ; $4c87: $42
	inc a                                            ; $4c88: $3c
	xor c                                            ; $4c89: $a9
	pop af                                           ; $4c8a: $f1
	add [hl]                                         ; $4c8b: $86
	ldh a, [rHDMA1]                                  ; $4c8c: $f0 $51
	ld h, c                                          ; $4c8e: $61
	ld b, d                                          ; $4c8f: $42
	ld l, [hl]                                       ; $4c90: $6e
	ld c, [hl]                                       ; $4c91: $4e
	sbc d                                            ; $4c92: $9a
	ld c, e                                          ; $4c93: $4b
	ld h, e                                          ; $4c94: $63
	inc a                                            ; $4c95: $3c
	ld d, b                                          ; $4c96: $50
	ld b, c                                          ; $4c97: $41
	and b                                            ; $4c98: $a0
	cpl                                              ; $4c99: $2f
	ld d, h                                          ; $4c9a: $54
	add hl, sp                                       ; $4c9b: $39
	ld a, $3f                                        ; $4c9c: $3e $3f
	pop af                                           ; $4c9e: $f1
	jp nc, $faed                                     ; $4c9f: $d2 $ed $fa

	ld c, e                                          ; $4ca2: $4b
	ldh a, [$ce]                                     ; $4ca3: $f0 $ce
	ldh a, [c]                                       ; $4ca5: $f2
	ld e, b                                          ; $4ca6: $58
	ld a, $3d                                        ; $4ca7: $3e $3d
	and b                                            ; $4ca9: $a0
	add hl, bc                                       ; $4caa: $09
	ld b, [hl]                                       ; $4cab: $46
	dec sp                                           ; $4cac: $3b
	inc [hl]                                         ; $4cad: $34
	ld d, $a8                                        ; $4cae: $16 $a8
	db $ec                                           ; $4cb0: $ec
	ret nc                                           ; $4cb1: $d0

	ld c, e                                          ; $4cb2: $4b
	ld e, d                                          ; $4cb3: $5a
	add hl, sp                                       ; $4cb4: $39
	and c                                            ; $4cb5: $a1
	cpl                                              ; $4cb6: $2f
	ld b, e                                          ; $4cb7: $43
	db $ec                                           ; $4cb8: $ec
	ret nc                                           ; $4cb9: $d0

	ld b, a                                          ; $4cba: $47
	inc de                                           ; $4cbb: $13
	sub [hl]                                         ; $4cbc: $96
	dec sp                                           ; $4cbd: $3b
	dec a                                            ; $4cbe: $3d
	ld b, d                                          ; $4cbf: $42
	xor $2d                                          ; $4cc0: $ee $2d
	jr c, jr_097_4d21                                ; $4cc2: $38 $5d

	ld e, d                                          ; $4cc4: $5a
	xor h                                            ; $4cc5: $ac
	ld l, e                                          ; $4cc6: $6b
	inc a                                            ; $4cc7: $3c
	ld d, b                                          ; $4cc8: $50
	ld l, [hl]                                       ; $4cc9: $6e
	dec sp                                           ; $4cca: $3b
	ccf                                              ; $4ccb: $3f
	jr c, @+$3a                                      ; $4ccc: $38 $38

	ld b, d                                          ; $4cce: $42
	inc a                                            ; $4ccf: $3c
	ld c, b                                          ; $4cd0: $48
	and b                                            ; $4cd1: $a0
	ld c, c                                          ; $4cd2: $49
	ld d, a                                          ; $4cd3: $57
	ld b, [hl]                                       ; $4cd4: $46
	ld e, [hl]                                       ; $4cd5: $5e
	sbc h                                            ; $4cd6: $9c
	inc [hl]                                         ; $4cd7: $34
	sub b                                            ; $4cd8: $90
	db $f4                                           ; $4cd9: $f4
	nop                                              ; $4cda: $00
	ld d, e                                          ; $4cdb: $53
	inc de                                           ; $4cdc: $13
	ldh a, [$fa]                                     ; $4cdd: $f0 $fa

jr_097_4cdf:
	ld [hl], c                                       ; $4cdf: $71
	ld c, [hl]                                       ; $4ce0: $4e
	ld b, l                                          ; $4ce1: $45
	add hl, sp                                       ; $4ce2: $39
	ld b, a                                          ; $4ce3: $47
	ld a, [hl-]                                      ; $4ce4: $3a
	ld d, b                                          ; $4ce5: $50
	ld a, [hl-]                                      ; $4ce6: $3a
	jr c, jr_097_4d32                                ; $4ce7: $38 $49

	ld c, b                                          ; $4ce9: $48
	and b                                            ; $4cea: $a0
	cpl                                              ; $4ceb: $2f
	ld b, e                                          ; $4cec: $43
	sub b                                            ; $4ced: $90
	db $f4                                           ; $4cee: $f4
	nop                                              ; $4cef: $00
	inc a                                            ; $4cf0: $3c
	ld [hl], h                                       ; $4cf1: $74
	xor l                                            ; $4cf2: $ad
	db $ed                                           ; $4cf3: $ed
	ld e, e                                          ; $4cf4: $5b
	db $ec                                           ; $4cf5: $ec
	db $ed                                           ; $4cf6: $ed
	ld c, a                                          ; $4cf7: $4f
	ld d, b                                          ; $4cf8: $50
	ld h, h                                          ; $4cf9: $64
	add hl, sp                                       ; $4cfa: $39
	inc a                                            ; $4cfb: $3c
	ld a, [hl-]                                      ; $4cfc: $3a
	and b                                            ; $4cfd: $a0
	ld e, [hl]                                       ; $4cfe: $5e
	dec sp                                           ; $4cff: $3b
	inc [hl]                                         ; $4d00: $34
	ld l, a                                          ; $4d01: $6f
	ld b, a                                          ; $4d02: $47
	ld c, b                                          ; $4d03: $48
	xor c                                            ; $4d04: $a9
	ldh a, [$2d]                                     ; $4d05: $f0 $2d
	dec sp                                           ; $4d07: $3b
	ccf                                              ; $4d08: $3f
	ld c, [hl]                                       ; $4d09: $4e
	rst FarCall                                          ; $4d0a: $f7
	ld l, b                                          ; $4d0b: $68
	ldh a, [c]                                       ; $4d0c: $f2
	dec de                                           ; $4d0d: $1b
	ld c, d                                          ; $4d0e: $4a
	inc de                                           ; $4d0f: $13
	db $ec                                           ; $4d10: $ec
	cp c                                             ; $4d11: $b9
	ld d, b                                          ; $4d12: $50
	ld c, b                                          ; $4d13: $48
	and b                                            ; $4d14: $a0
	cpl                                              ; $4d15: $2f
	ld b, e                                          ; $4d16: $43
	db $ed                                           ; $4d17: $ed
	xor c                                            ; $4d18: $a9
	ld b, d                                          ; $4d19: $42
	ldh a, [$2d]                                     ; $4d1a: $f0 $2d
	dec sp                                           ; $4d1c: $3b
	ccf                                              ; $4d1d: $3f
	ld c, [hl]                                       ; $4d1e: $4e
	inc de                                           ; $4d1f: $13
	rst FarCall                                          ; $4d20: $f7

jr_097_4d21:
	ld l, b                                          ; $4d21: $68
	ldh a, [c]                                       ; $4d22: $f2
	dec de                                           ; $4d23: $1b
	ld b, h                                          ; $4d24: $44
	ld c, c                                          ; $4d25: $49
	pop af                                           ; $4d26: $f1
	sub d                                            ; $4d27: $92
	ld d, c                                          ; $4d28: $51
	ldh a, [$cb]                                     ; $4d29: $f0 $cb
	ld c, [hl]                                       ; $4d2b: $4e
	inc a                                            ; $4d2c: $3c
	ld c, a                                          ; $4d2d: $4f
	inc de                                           ; $4d2e: $13
	ld a, $4d                                        ; $4d2f: $3e $4d
	ld a, [hl-]                                      ; $4d31: $3a

jr_097_4d32:
	jr c, jr_097_4d91                                ; $4d32: $38 $5d

	ld e, d                                          ; $4d34: $5a
	xor b                                            ; $4d35: $a8
	ld c, c                                          ; $4d36: $49
	ld d, a                                          ; $4d37: $57
	ld b, [hl]                                       ; $4d38: $46
	ld e, [hl]                                       ; $4d39: $5e
	sbc h                                            ; $4d3a: $9c
	inc [hl]                                         ; $4d3b: $34
	db $ec                                           ; $4d3c: $ec
	jr jr_097_4cdf                                   ; $4d3d: $18 $a0

	ld b, b                                          ; $4d3f: $40
	ld c, l                                          ; $4d40: $4d
	ld e, e                                          ; $4d41: $5b
	ld d, [hl]                                       ; $4d42: $56
	inc [hl]                                         ; $4d43: $34
	sub d                                            ; $4d44: $92
	adc [hl]                                         ; $4d45: $8e
	ld e, a                                          ; $4d46: $5f
	add hl, sp                                       ; $4d47: $39
	ld c, h                                          ; $4d48: $4c
	and b                                            ; $4d49: $a0
	cpl                                              ; $4d4a: $2f
	ld b, e                                          ; $4d4b: $43
	db $ec                                           ; $4d4c: $ec
	ret nc                                           ; $4d4d: $d0

	ld b, a                                          ; $4d4e: $47
	sub [hl]                                         ; $4d4f: $96
	dec sp                                           ; $4d50: $3b
	dec a                                            ; $4d51: $3d
	ld b, d                                          ; $4d52: $42
	ld c, e                                          ; $4d53: $4b
	inc de                                           ; $4d54: $13
	db $ec                                           ; $4d55: $ec
	ld [$6bac], sp                                   ; $4d56: $08 $ac $6b
	inc a                                            ; $4d59: $3c
	ld d, b                                          ; $4d5a: $50
	ld l, [hl]                                       ; $4d5b: $6e
	dec sp                                           ; $4d5c: $3b
	ccf                                              ; $4d5d: $3f
	jr c, jr_097_4d98                                ; $4d5e: $38 $38

	ld b, d                                          ; $4d60: $42
	inc a                                            ; $4d61: $3c
	ld c, b                                          ; $4d62: $48
	and b                                            ; $4d63: $a0
	ld c, c                                          ; $4d64: $49
	ld d, a                                          ; $4d65: $57
	ld b, [hl]                                       ; $4d66: $46
	ld e, [hl]                                       ; $4d67: $5e
	sbc h                                            ; $4d68: $9c
	xor h                                            ; $4d69: $ac
	sub b                                            ; $4d6a: $90
	db $f4                                           ; $4d6b: $f4
	nop                                              ; $4d6c: $00
	ld d, e                                          ; $4d6d: $53
	ldh a, [$fa]                                     ; $4d6e: $f0 $fa
	ld [hl], c                                       ; $4d70: $71
	ld c, [hl]                                       ; $4d71: $4e
	ld b, l                                          ; $4d72: $45
	add hl, sp                                       ; $4d73: $39
	ld b, a                                          ; $4d74: $47
	inc de                                           ; $4d75: $13
	ld a, [hl-]                                      ; $4d76: $3a
	ld d, b                                          ; $4d77: $50
	ld a, [hl-]                                      ; $4d78: $3a
	ld d, l                                          ; $4d79: $55
	ld h, c                                          ; $4d7a: $61
	ld d, [hl]                                       ; $4d7b: $56
	ld c, h                                          ; $4d7c: $4c
	and b                                            ; $4d7d: $a0
	ret nc                                           ; $4d7e: $d0

	xor b                                            ; $4d7f: $a8
	ld l, a                                          ; $4d80: $6f
	ld b, d                                          ; $4d81: $42
	ldh a, [$2d]                                     ; $4d82: $f0 $2d
	dec sp                                           ; $4d84: $3b
	ccf                                              ; $4d85: $3f
	ld c, [hl]                                       ; $4d86: $4e
	rst FarCall                                          ; $4d87: $f7
	ld l, b                                          ; $4d88: $68
	ldh a, [c]                                       ; $4d89: $f2
	dec de                                           ; $4d8a: $1b
	ld b, h                                          ; $4d8b: $44
	ld e, l                                          ; $4d8c: $5d
	ld c, d                                          ; $4d8d: $4a
	inc de                                           ; $4d8e: $13
	jr c, jr_097_4dc9                                ; $4d8f: $38 $38

jr_097_4d91:
	ld a, [hl-]                                      ; $4d91: $3a
	ld d, b                                          ; $4d92: $50
	ld c, b                                          ; $4d93: $48

jr_097_4d94:
	and b                                            ; $4d94: $a0
	cpl                                              ; $4d95: $2f
	ld b, e                                          ; $4d96: $43
	ld b, b                                          ; $4d97: $40

jr_097_4d98:
	ld c, l                                          ; $4d98: $4d
	ld c, d                                          ; $4d99: $4a
	db $ed                                           ; $4d9a: $ed
	ld [hl], e                                       ; $4d9b: $73
	ld c, d                                          ; $4d9c: $4a
	ld d, c                                          ; $4d9d: $51
	xor b                                            ; $4d9e: $a8
	pop af                                           ; $4d9f: $f1
	and $88                                          ; $4da0: $e6 $88
	pop af                                           ; $4da2: $f1
	inc bc                                           ; $4da3: $03
	ld a, [hl-]                                      ; $4da4: $3a
	ld d, h                                          ; $4da5: $54
	ld c, c                                          ; $4da6: $49
	inc a                                            ; $4da7: $3c
	ld d, b                                          ; $4da8: $50
	inc de                                           ; $4da9: $13
	db $ec                                           ; $4daa: $ec
	ld c, $49                                        ; $4dab: $0e $49
	ld c, h                                          ; $4dad: $4c
	and b                                            ; $4dae: $a0
	ld c, c                                          ; $4daf: $49
	ld d, a                                          ; $4db0: $57
	ld b, [hl]                                       ; $4db1: $46
	ld e, [hl]                                       ; $4db2: $5e
	sbc h                                            ; $4db3: $9c
	xor h                                            ; $4db4: $ac
	sub b                                            ; $4db5: $90
	db $f4                                           ; $4db6: $f4
	nop                                              ; $4db7: $00
	ld d, e                                          ; $4db8: $53
	ldh a, [$fa]                                     ; $4db9: $f0 $fa
	ld [hl], c                                       ; $4dbb: $71
	ld c, [hl]                                       ; $4dbc: $4e
	ld b, l                                          ; $4dbd: $45
	add hl, sp                                       ; $4dbe: $39
	ld b, a                                          ; $4dbf: $47
	inc de                                           ; $4dc0: $13
	ld a, [hl-]                                      ; $4dc1: $3a
	ld d, b                                          ; $4dc2: $50
	ld a, [hl-]                                      ; $4dc3: $3a
	jr c, jr_097_4e0f                                ; $4dc4: $38 $49

	ld c, h                                          ; $4dc6: $4c
	and b                                            ; $4dc7: $a0
	cpl                                              ; $4dc8: $2f

jr_097_4dc9:
	ld b, e                                          ; $4dc9: $43
	sub b                                            ; $4dca: $90
	db $f4                                           ; $4dcb: $f4
	nop                                              ; $4dcc: $00
	inc a                                            ; $4dcd: $3c
	ld [hl], h                                       ; $4dce: $74
	ld c, b                                          ; $4dcf: $48
	and b                                            ; $4dd0: $a0
	ld b, b                                          ; $4dd1: $40
	ld c, l                                          ; $4dd2: $4d
	ld e, e                                          ; $4dd3: $5b
	ld d, [hl]                                       ; $4dd4: $56
	xor h                                            ; $4dd5: $ac
	sub d                                            ; $4dd6: $92
	adc [hl]                                         ; $4dd7: $8e
	dec sp                                           ; $4dd8: $3b
	ccf                                              ; $4dd9: $3f
	ldh a, [$dd]                                     ; $4dda: $f0 $dd
	ldh a, [$9c]                                     ; $4ddc: $f0 $9c
	ld a, $3f                                        ; $4dde: $3e $3f
	ld c, h                                          ; $4de0: $4c
	and b                                            ; $4de1: $a0
	cpl                                              ; $4de2: $2f
	ld b, e                                          ; $4de3: $43
	ld b, [hl]                                       ; $4de4: $46
	dec sp                                           ; $4de5: $3b
	inc [hl]                                         ; $4de6: $34
	db $ed                                           ; $4de7: $ed
	xor c                                            ; $4de8: $a9
	xor b                                            ; $4de9: $a8
	ld l, e                                          ; $4dea: $6b
	inc a                                            ; $4deb: $3c
	ld d, b                                          ; $4dec: $50
	db $ed                                           ; $4ded: $ed
	ld d, l                                          ; $4dee: $55
	ld d, b                                          ; $4def: $50
	jr c, jr_097_4e2a                                ; $4df0: $38 $38

	ld b, d                                          ; $4df2: $42
	inc a                                            ; $4df3: $3c
	xor h                                            ; $4df4: $ac
	ldh a, [rTAC]                                    ; $4df5: $f0 $07
	inc a                                            ; $4df7: $3c
	ld d, b                                          ; $4df8: $50
	ld a, [hl-]                                      ; $4df9: $3a
	ld d, l                                          ; $4dfa: $55
	ccf                                              ; $4dfb: $3f
	ld c, b                                          ; $4dfc: $48
	and b                                            ; $4dfd: $a0
	ld hl, $ebeb                                     ; $4dfe: $21 $eb $eb
	xor b                                            ; $4e01: $a8
	jr nz, jr_097_4d94                               ; $4e02: $20 $90

	db $f4                                           ; $4e04: $f4
	nop                                              ; $4e05: $00
	ld c, e                                          ; $4e06: $4b
	ldh a, [$fa]                                     ; $4e07: $f0 $fa
	ld [hl], c                                       ; $4e09: $71
	ld c, [hl]                                       ; $4e0a: $4e
	ld b, l                                          ; $4e0b: $45
	add hl, sp                                       ; $4e0c: $39
	ld b, a                                          ; $4e0d: $47
	inc de                                           ; $4e0e: $13

jr_097_4e0f:
	ld a, [hl-]                                      ; $4e0f: $3a
	dec sp                                           ; $4e10: $3b
	dec a                                            ; $4e11: $3d
	ld b, d                                          ; $4e12: $42
	and c                                            ; $4e13: $a1
	cpl                                              ; $4e14: $2f
	ld b, e                                          ; $4e15: $43
	ld b, b                                          ; $4e16: $40
	add hl, sp                                       ; $4e17: $39
	inc a                                            ; $4e18: $3c
	ld [hl], h                                       ; $4e19: $74
	xor h                                            ; $4e1a: $ac
	sub b                                            ; $4e1b: $90
	db $f4                                           ; $4e1c: $f4
	nop                                              ; $4e1d: $00
	inc a                                            ; $4e1e: $3c
	ld [hl], h                                       ; $4e1f: $74
	ld c, b                                          ; $4e20: $48
	and b                                            ; $4e21: $a0
	cpl                                              ; $4e22: $2f
	ld b, e                                          ; $4e23: $43
	ld b, [hl]                                       ; $4e24: $46
	dec sp                                           ; $4e25: $3b
	inc [hl]                                         ; $4e26: $34
	db $ed                                           ; $4e27: $ed
	xor c                                            ; $4e28: $a9
	xor b                                            ; $4e29: $a8

jr_097_4e2a:
	pop de                                           ; $4e2a: $d1
	xor $2b                                          ; $4e2b: $ee $2b
	ld d, e                                          ; $4e2d: $53
	inc de                                           ; $4e2e: $13
	ldh a, [$3e]                                     ; $4e2f: $f0 $3e
	ldh a, [rSTAT]                                   ; $4e31: $f0 $41
	ld a, $3a                                        ; $4e33: $3e $3a
	ld d, l                                          ; $4e35: $55
	ccf                                              ; $4e36: $3f
	ld c, b                                          ; $4e37: $48
	and b                                            ; $4e38: $a0
	ld b, b                                          ; $4e39: $40
	ld c, l                                          ; $4e3a: $4d
	ld c, e                                          ; $4e3b: $4b
	inc [hl]                                         ; $4e3c: $34
	db $ed                                           ; $4e3d: $ed
	ld h, c                                          ; $4e3e: $61
	ld c, a                                          ; $4e3f: $4f
	xor $19                                          ; $4e40: $ee $19
	inc de                                           ; $4e42: $13
	ld a, $3a                                        ; $4e43: $3e $3a
	jr c, jr_097_4e90                                ; $4e45: $38 $49

	xor $05                                          ; $4e47: $ee $05
	ld b, h                                          ; $4e49: $44
	ld c, c                                          ; $4e4a: $49
	ld [hl], a                                       ; $4e4b: $77
	add hl, sp                                       ; $4e4c: $39
	ld a, [hl-]                                      ; $4e4d: $3a
	ld c, b                                          ; $4e4e: $48
	and b                                            ; $4e4f: $a0
	cpl                                              ; $4e50: $2f
	ld b, e                                          ; $4e51: $43
	ld b, b                                          ; $4e52: $40
	ld c, l                                          ; $4e53: $4d
	ld a, [hl-]                                      ; $4e54: $3a
	ld d, a                                          ; $4e55: $57
	ld b, a                                          ; $4e56: $47
	xor h                                            ; $4e57: $ac
	xor $19                                          ; $4e58: $ee $19
	ld a, $3f                                        ; $4e5a: $3e $3f
	ld c, [hl]                                       ; $4e5c: $4e
	add b                                            ; $4e5d: $80
	ld c, a                                          ; $4e5e: $4f
	ld d, a                                          ; $4e5f: $57
	inc de                                           ; $4e60: $13
	ld a, [hl-]                                      ; $4e61: $3a
	ld b, c                                          ; $4e62: $41
	ld b, h                                          ; $4e63: $44
	ld e, l                                          ; $4e64: $5d
	ld e, d                                          ; $4e65: $5a
	ld a, [hl-]                                      ; $4e66: $3a
	ld [hl], h                                       ; $4e67: $74
	and b                                            ; $4e68: $a0
	db $ed                                           ; $4e69: $ed
	ld e, l                                          ; $4e6a: $5d

jr_097_4e6b:
	ld b, d                                          ; $4e6b: $42
	xor $2b                                          ; $4e6c: $ee $2b
	ld h, d                                          ; $4e6e: $62
	inc de                                           ; $4e6f: $13
	di                                               ; $4e70: $f3
	ld e, e                                          ; $4e71: $5b
	ldh a, [$99]                                     ; $4e72: $f0 $99
	ld a, $3f                                        ; $4e74: $3e $3f
	xor h                                            ; $4e76: $ac
	ldh a, [$5c]                                     ; $4e77: $f0 $5c
	jr c, jr_097_4e6b                                ; $4e79: $38 $f0

	jr z, @+$64                                      ; $4e7b: $28 $62

	db $ec                                           ; $4e7d: $ec
	ld a, c                                          ; $4e7e: $79
	ld d, c                                          ; $4e7f: $51
	ld c, [hl]                                       ; $4e80: $4e
	ld b, d                                          ; $4e81: $42
	ld c, a                                          ; $4e82: $4f
	inc de                                           ; $4e83: $13
	jr c, jr_097_4ebe                                ; $4e84: $38 $38

	ld c, c                                          ; $4e86: $49
	ld [hl], a                                       ; $4e87: $77
	add hl, sp                                       ; $4e88: $39
	ld e, l                                          ; $4e89: $5d
	ld e, d                                          ; $4e8a: $5a
	ld c, b                                          ; $4e8b: $48
	and b                                            ; $4e8c: $a0
	cpl                                              ; $4e8d: $2f
	ld b, e                                          ; $4e8e: $43
	ld b, l                                          ; $4e8f: $45

jr_097_4e90:
	ld a, $ac                                        ; $4e90: $3e $ac

jr_097_4e92:
	ld b, b                                          ; $4e92: $40
	ld c, l                                          ; $4e93: $4d
	ld h, d                                          ; $4e94: $62
	ld l, [hl]                                       ; $4e95: $6e
	dec sp                                           ; $4e96: $3b
	ccf                                              ; $4e97: $3f
	ld l, h                                          ; $4e98: $6c
	ld b, l                                          ; $4e99: $45
	add hl, sp                                       ; $4e9a: $39
	xor b                                            ; $4e9b: $a8
	ldh a, [$0a]                                     ; $4e9c: $f0 $0a
	pop af                                           ; $4e9e: $f1
	jr jr_097_4e92                                   ; $4e9f: $18 $f1

	ld a, c                                          ; $4ea1: $79
	pop af                                           ; $4ea2: $f1
	ld h, d                                          ; $4ea3: $62
	ld b, a                                          ; $4ea4: $47
	ld c, c                                          ; $4ea5: $49
	ld d, a                                          ; $4ea6: $57
	inc a                                            ; $4ea7: $3c
	inc a                                            ; $4ea8: $3c
	ld c, [hl]                                       ; $4ea9: $4e
	inc a                                            ; $4eaa: $3c
	and b                                            ; $4eab: $a0
	ld b, b                                          ; $4eac: $40
	ld c, l                                          ; $4ead: $4d
	ld e, e                                          ; $4eae: $5b
	ld d, [hl]                                       ; $4eaf: $56
	inc [hl]                                         ; $4eb0: $34
	cp d                                             ; $4eb1: $ba
	xor b                                            ; $4eb2: $a8
	db $ed                                           ; $4eb3: $ed
	ld h, [hl]                                       ; $4eb4: $66
	ld a, $3f                                        ; $4eb5: $3e $3f
	ld c, [hl]                                       ; $4eb7: $4e
	inc a                                            ; $4eb8: $3c
	ld d, b                                          ; $4eb9: $50
	and b                                            ; $4eba: $a0
	ld b, b                                          ; $4ebb: $40
	ld c, l                                          ; $4ebc: $4d
	ld c, e                                          ; $4ebd: $4b

jr_097_4ebe:
	inc [hl]                                         ; $4ebe: $34
	db $ed                                           ; $4ebf: $ed
	ld h, c                                          ; $4ec0: $61
	ld c, a                                          ; $4ec1: $4f
	inc de                                           ; $4ec2: $13
	xor $19                                          ; $4ec3: $ee $19
	ld a, $3a                                        ; $4ec5: $3e $3a
	jr c, jr_097_4f12                                ; $4ec7: $38 $49

	xor $05                                          ; $4ec9: $ee $05
	ld b, l                                          ; $4ecb: $45
	and b                                            ; $4ecc: $a0
	dec a                                            ; $4ecd: $3d
	ld b, h                                          ; $4ece: $44
	xor $2b                                          ; $4ecf: $ee $2b
	ld d, c                                          ; $4ed1: $51
	ld c, [hl]                                       ; $4ed2: $4e
	ld b, h                                          ; $4ed3: $44
	ld e, l                                          ; $4ed4: $5d
	ld e, e                                          ; $4ed5: $5b
	ld d, [hl]                                       ; $4ed6: $56
	inc de                                           ; $4ed7: $13
	ld a, [hl-]                                      ; $4ed8: $3a
	ld d, l                                          ; $4ed9: $55
	ccf                                              ; $4eda: $3f
	inc [hl]                                         ; $4edb: $34
	ldh a, [$5c]                                     ; $4edc: $f0 $5c
	jr c, @-$0e                                      ; $4ede: $38 $f0

	jr z, @+$64                                      ; $4ee0: $28 $62

	pop af                                           ; $4ee2: $f1
	add d                                            ; $4ee3: $82
	ldh a, [c]                                       ; $4ee4: $f2
	sbc a                                            ; $4ee5: $9f
	ld a, $3f                                        ; $4ee6: $3e $3f
	xor h                                            ; $4ee8: $ac
	ldh a, [hDisp1_WX]                                     ; $4ee9: $f0 $96
	ld a, $3f                                        ; $4eeb: $3e $3f
	jr c, jr_097_4f2b                                ; $4eed: $38 $3c

	ld a, [hl-]                                      ; $4eef: $3a
	jr c, jr_097_4f3b                                ; $4ef0: $38 $49

	and b                                            ; $4ef2: $a0
	cpl                                              ; $4ef3: $2f
	ld b, e                                          ; $4ef4: $43
	ld b, b                                          ; $4ef5: $40
	add hl, sp                                       ; $4ef6: $39
	inc a                                            ; $4ef7: $3c
	xor b                                            ; $4ef8: $a8
	ld l, d                                          ; $4ef9: $6a
	ldh a, [$0d]                                     ; $4efa: $f0 $0d
	inc a                                            ; $4efc: $3c
	ld d, b                                          ; $4efd: $50
	ld a, a                                          ; $4efe: $7f
	ld h, d                                          ; $4eff: $62
	ldh a, [$9a]                                     ; $4f00: $f0 $9a
	ld e, l                                          ; $4f02: $5d
	ccf                                              ; $4f03: $3f
	inc de                                           ; $4f04: $13
	xor $19                                          ; $4f05: $ee $19
	ld a, $45                                        ; $4f07: $3e $45
	add hl, sp                                       ; $4f09: $39
	and b                                            ; $4f0a: $a0
	cpl                                              ; $4f0b: $2f
	ld b, e                                          ; $4f0c: $43
	ld c, c                                          ; $4f0d: $49
	ld d, a                                          ; $4f0e: $57
	ld b, [hl]                                       ; $4f0f: $46
	ld e, [hl]                                       ; $4f10: $5e
	sbc h                                            ; $4f11: $9c

jr_097_4f12:
	ld c, e                                          ; $4f12: $4b
	xor h                                            ; $4f13: $ac
	xor $19                                          ; $4f14: $ee $19
	ld a, $3f                                        ; $4f16: $3e $3f
	ld c, [hl]                                       ; $4f18: $4e
	add b                                            ; $4f19: $80
	ld c, a                                          ; $4f1a: $4f
	ld d, a                                          ; $4f1b: $57
	inc de                                           ; $4f1c: $13
	ld a, [hl-]                                      ; $4f1d: $3a
	ld b, c                                          ; $4f1e: $41
	ld b, h                                          ; $4f1f: $44
	ld e, l                                          ; $4f20: $5d
	ld e, d                                          ; $4f21: $5a
	ld a, [hl-]                                      ; $4f22: $3a
	ld [hl], h                                       ; $4f23: $74
	and b                                            ; $4f24: $a0
	ld c, c                                          ; $4f25: $49
	ld d, a                                          ; $4f26: $57
	ld b, [hl]                                       ; $4f27: $46
	ld e, [hl]                                       ; $4f28: $5e
	sbc h                                            ; $4f29: $9c
	ld e, e                                          ; $4f2a: $5b

jr_097_4f2b:
	ld d, [hl]                                       ; $4f2b: $56
	xor h                                            ; $4f2c: $ac
	ldh a, [$3e]                                     ; $4f2d: $f0 $3e
	ldh a, [rSTAT]                                   ; $4f2f: $f0 $41
	ld c, e                                          ; $4f31: $4b
	pop af                                           ; $4f32: $f1
	ld a, [$383e]                                    ; $4f33: $fa $3e $38
	ld h, e                                          ; $4f36: $63
	ld b, l                                          ; $4f37: $45
	xor b                                            ; $4f38: $a8

jr_097_4f39:
	ld b, b                                          ; $4f39: $40
	ld c, l                                          ; $4f3a: $4d

jr_097_4f3b:
	ld e, e                                          ; $4f3b: $5b
	ld d, [hl]                                       ; $4f3c: $56
	inc [hl]                                         ; $4f3d: $34
	cp d                                             ; $4f3e: $ba
	and b                                            ; $4f3f: $a0
	cpl                                              ; $4f40: $2f
	ld b, e                                          ; $4f41: $43
	ld a, a                                          ; $4f42: $7f
	ldh a, [rTMA]                                    ; $4f43: $f0 $06
	ld h, d                                          ; $4f45: $62

jr_097_4f46:
	sub [hl]                                         ; $4f46: $96
	ld c, l                                          ; $4f47: $4d
	ccf                                              ; $4f48: $3f
	xor h                                            ; $4f49: $ac
	xor $19                                          ; $4f4a: $ee $19
	ld a, $3f                                        ; $4f4c: $3e $3f
	ld l, h                                          ; $4f4e: $6c
	ld c, [hl]                                       ; $4f4f: $4e
	inc a                                            ; $4f50: $3c
	and b                                            ; $4f51: $a0
	ld hl, $ebeb                                     ; $4f52: $21 $eb $eb
	xor b                                            ; $4f55: $a8
	jr nz, jr_097_4f46                               ; $4f56: $20 $ee

	add hl, de                                       ; $4f58: $19
	ldh a, [$d0]                                     ; $4f59: $f0 $d0
	pop af                                           ; $4f5b: $f1
	cp [hl]                                          ; $4f5c: $be
	db $ec                                           ; $4f5d: $ec
	ret c                                            ; $4f5e: $d8

	ld b, d                                          ; $4f5f: $42
	and c                                            ; $4f60: $a1
	cpl                                              ; $4f61: $2f
	ld b, e                                          ; $4f62: $43
	ld [$a035], a                                    ; $4f63: $ea $35 $a0
	ld b, [hl]                                       ; $4f66: $46
	dec sp                                           ; $4f67: $3b
	inc [hl]                                         ; $4f68: $34
	ld d, $a8                                        ; $4f69: $16 $a8
	pop af                                           ; $4f6b: $f1
	ld sp, $4268                                     ; $4f6c: $31 $68 $42
	xor $2b                                          ; $4f6f: $ee $2b
	xor h                                            ; $4f71: $ac
	ld h, e                                          ; $4f72: $63
	ld d, a                                          ; $4f73: $57
	ld c, c                                          ; $4f74: $49
	ld b, l                                          ; $4f75: $45
	inc a                                            ; $4f76: $3c
	dec sp                                           ; $4f77: $3b
	dec a                                            ; $4f78: $3d
	ld c, h                                          ; $4f79: $4c
	and b                                            ; $4f7a: $a0
	cpl                                              ; $4f7b: $2f
	ld b, e                                          ; $4f7c: $43
	ld b, b                                          ; $4f7d: $40
	add hl, sp                                       ; $4f7e: $39
	xor c                                            ; $4f7f: $a9
	ld c, d                                          ; $4f80: $4a
	ld c, a                                          ; $4f81: $4f
	inc [hl]                                         ; $4f82: $34
	ld d, d                                          ; $4f83: $52
	ld b, h                                          ; $4f84: $44
	ld d, d                                          ; $4f85: $52
	ld b, h                                          ; $4f86: $44
	ld b, h                                          ; $4f87: $44
	ld b, l                                          ; $4f88: $45
	xor b                                            ; $4f89: $a8
	ld c, a                                          ; $4f8a: $4f
	dec sp                                           ; $4f8b: $3b
	ld c, c                                          ; $4f8c: $49
	xor $19                                          ; $4f8d: $ee $19
	ld a, $3a                                        ; $4f8f: $3e $3a
	ld d, l                                          ; $4f91: $55
	ld h, c                                          ; $4f92: $61
	ld d, [hl]                                       ; $4f93: $56
	and b                                            ; $4f94: $a0
	ld b, b                                          ; $4f95: $40
	ld c, l                                          ; $4f96: $4d
	ld c, e                                          ; $4f97: $4b
	inc [hl]                                         ; $4f98: $34
	ld b, b                                          ; $4f99: $40
	add hl, sp                                       ; $4f9a: $39
	ld b, h                                          ; $4f9b: $44
	ld e, l                                          ; $4f9c: $5d
	ld e, d                                          ; $4f9d: $5a
	xor b                                            ; $4f9e: $a8
	ld d, h                                          ; $4f9f: $54
	ld b, d                                          ; $4fa0: $42
	sbc l                                            ; $4fa1: $9d
	ld d, b                                          ; $4fa2: $50
	jr c, jr_097_4f39                                ; $4fa3: $38 $94

	ld a, b                                          ; $4fa5: $78
	ld c, l                                          ; $4fa6: $4d
	ld a, e                                          ; $4fa7: $7b
	xor h                                            ; $4fa8: $ac
	pop af                                           ; $4fa9: $f1
	db $fc                                           ; $4faa: $fc
	ldh a, [rOCPS]                                   ; $4fab: $f0 $6a
	ld b, h                                          ; $4fad: $44
	ld c, c                                          ; $4fae: $49
	ld [hl], a                                       ; $4faf: $77
	add hl, sp                                       ; $4fb0: $39
	ld a, [hl-]                                      ; $4fb1: $3a
	ld c, b                                          ; $4fb2: $48
	and b                                            ; $4fb3: $a0
	cpl                                              ; $4fb4: $2f
	ld b, e                                          ; $4fb5: $43
	db $ec                                           ; $4fb6: $ec
	add hl, bc                                       ; $4fb7: $09
	inc de                                           ; $4fb8: $13
	ld l, [hl]                                       ; $4fb9: $6e
	dec sp                                           ; $4fba: $3b
	ccf                                              ; $4fbb: $3f
	ld c, [hl]                                       ; $4fbc: $4e
	ld b, c                                          ; $4fbd: $41
	ld b, h                                          ; $4fbe: $44
	inc a                                            ; $4fbf: $3c
	ld d, b                                          ; $4fc0: $50
	xor h                                            ; $4fc1: $ac
	ld a, c                                          ; $4fc2: $79
	ld [hl], c                                       ; $4fc3: $71
	ccf                                              ; $4fc4: $3f
	db $ed                                           ; $4fc5: $ed
	xor c                                            ; $4fc6: $a9
	sbc l                                            ; $4fc7: $9d
	ld d, b                                          ; $4fc8: $50
	jr c, jr_097_4fde                                ; $4fc9: $38 $13

	add hl, sp                                       ; $4fcb: $39
	ld d, d                                          ; $4fcc: $52
	ld d, l                                          ; $4fcd: $55
	xor $2b                                          ; $4fce: $ee $2b
	ld a, $3d                                        ; $4fd0: $3e $3d
	jr c, jr_097_5020                                ; $4fd2: $38 $4c

	and b                                            ; $4fd4: $a0
	ld e, [hl]                                       ; $4fd5: $5e
	dec sp                                           ; $4fd6: $3b
	inc [hl]                                         ; $4fd7: $34
	ld l, a                                          ; $4fd8: $6f
	ld a, [hl-]                                      ; $4fd9: $3a
	ld b, c                                          ; $4fda: $41
	ccf                                              ; $4fdb: $3f
	xor h                                            ; $4fdc: $ac
	ld b, b                                          ; $4fdd: $40

jr_097_4fde:
	ld b, c                                          ; $4fde: $41
	ld a, [hl-]                                      ; $4fdf: $3a
	ld b, a                                          ; $4fe0: $47
	add a                                            ; $4fe1: $87

jr_097_4fe2:
	ld a, $3d                                        ; $4fe2: $3e $3d
	ld d, h                                          ; $4fe4: $54
	ld c, c                                          ; $4fe5: $49
	ldh a, [rAUD1LOW]                                ; $4fe6: $f0 $13
	jr c, jr_097_502f                                ; $4fe8: $38 $45

	and b                                            ; $4fea: $a0
	cpl                                              ; $4feb: $2f
	ld b, e                                          ; $4fec: $43
	jr c, jr_097_5027                                ; $4fed: $38 $38

	ld b, d                                          ; $4fef: $42
	xor b                                            ; $4ff0: $a8
	db $ed                                           ; $4ff1: $ed
	xor c                                            ; $4ff2: $a9
	ld d, e                                          ; $4ff3: $53
	halt                                             ; $4ff4: $76
	ld b, d                                          ; $4ff5: $42
	ldh a, [rAUD3LEVEL]                              ; $4ff6: $f0 $1c
	ldh a, [c]                                       ; $4ff8: $f2
	ld [hl], a                                       ; $4ff9: $77
	ld a, [hl-]                                      ; $4ffa: $3a
	ld b, c                                          ; $4ffb: $41
	ld b, h                                          ; $4ffc: $44

jr_097_4ffd:
	inc a                                            ; $4ffd: $3c
	ld d, b                                          ; $4ffe: $50
	and b                                            ; $4fff: $a0
	ld b, b                                          ; $5000: $40
	ld c, l                                          ; $5001: $4d
	ld e, e                                          ; $5002: $5b
	ld d, [hl]                                       ; $5003: $56
	xor h                                            ; $5004: $ac
	ldh a, [c]                                       ; $5005: $f2
	ld sp, hl                                        ; $5006: $f9
	jr c, jr_097_4ffd                                ; $5007: $38 $f4

	ld e, b                                          ; $5009: $58
	ld e, b                                          ; $500a: $58
	ld c, l                                          ; $500b: $4d
	ld a, [hl-]                                      ; $500c: $3a
	jr c, jr_097_5054                                ; $500d: $38 $45

	add hl, sp                                       ; $500f: $39
	ld b, a                                          ; $5010: $47
	inc de                                           ; $5011: $13
	sub d                                            ; $5012: $92
	adc [hl]                                         ; $5013: $8e
	ld d, b                                          ; $5014: $50
	ld a, [hl-]                                      ; $5015: $3a
	ld d, l                                          ; $5016: $55
	dec sp                                           ; $5017: $3b
	ld h, c                                          ; $5018: $61
	ld d, [hl]                                       ; $5019: $56
	and b                                            ; $501a: $a0
	cpl                                              ; $501b: $2f
	ld b, e                                          ; $501c: $43
	or h                                             ; $501d: $b4
	xor h                                            ; $501e: $ac
	ld h, h                                          ; $501f: $64

jr_097_5020:
	pop af                                           ; $5020: $f1
	ld d, a                                          ; $5021: $57
	jr c, jr_097_506b                                ; $5022: $38 $47

	sub d                                            ; $5024: $92
	adc [hl]                                         ; $5025: $8e
	ld e, a                                          ; $5026: $5f

jr_097_5027:
	add hl, sp                                       ; $5027: $39
	and b                                            ; $5028: $a0
	ld b, [hl]                                       ; $5029: $46
	dec sp                                           ; $502a: $3b
	inc [hl]                                         ; $502b: $34
	ld d, $a8                                        ; $502c: $16 $a8
	pop af                                           ; $502e: $f1

jr_097_502f:
	ld sp, $4268                                     ; $502f: $31 $68 $42
	xor $2b                                          ; $5032: $ee $2b
	xor h                                            ; $5034: $ac
	ld h, e                                          ; $5035: $63
	ld d, a                                          ; $5036: $57
	ld c, c                                          ; $5037: $49
	ld b, l                                          ; $5038: $45
	inc a                                            ; $5039: $3c
	dec sp                                           ; $503a: $3b
	dec a                                            ; $503b: $3d
	ld b, l                                          ; $503c: $45
	and b                                            ; $503d: $a0
	ld b, b                                          ; $503e: $40
	ld c, l                                          ; $503f: $4d
	ld c, e                                          ; $5040: $4b
	inc [hl]                                         ; $5041: $34
	ld b, b                                          ; $5042: $40
	add hl, sp                                       ; $5043: $39

jr_097_5044:
	ld b, h                                          ; $5044: $44
	ld e, l                                          ; $5045: $5d
	ld e, d                                          ; $5046: $5a
	xor b                                            ; $5047: $a8
	ld d, h                                          ; $5048: $54
	ld b, d                                          ; $5049: $42
	sbc l                                            ; $504a: $9d
	ld d, b                                          ; $504b: $50
	jr c, jr_097_4fe2                                ; $504c: $38 $94

	ld a, b                                          ; $504e: $78
	ld c, l                                          ; $504f: $4d
	ld a, e                                          ; $5050: $7b
	xor h                                            ; $5051: $ac
	pop af                                           ; $5052: $f1
	db $fc                                           ; $5053: $fc

jr_097_5054:
	ldh a, [rOCPS]                                   ; $5054: $f0 $6a
	ld b, l                                          ; $5056: $45
	and b                                            ; $5057: $a0
	ld l, a                                          ; $5058: $6f
	ld a, [hl-]                                      ; $5059: $3a
	ld b, c                                          ; $505a: $41
	ccf                                              ; $505b: $3f
	inc [hl]                                         ; $505c: $34
	ld b, b                                          ; $505d: $40
	ld b, c                                          ; $505e: $41
	ld a, [hl-]                                      ; $505f: $3a
	ld b, a                                          ; $5060: $47
	inc de                                           ; $5061: $13
	add a                                            ; $5062: $87
	ld a, $3d                                        ; $5063: $3e $3d
	ld d, h                                          ; $5065: $54
	ld c, c                                          ; $5066: $49
	ldh a, [rAUD1LOW]                                ; $5067: $f0 $13
	jr c, jr_097_50ce                                ; $5069: $38 $63

jr_097_506b:
	ld b, l                                          ; $506b: $45
	and b                                            ; $506c: $a0
	cpl                                              ; $506d: $2f
	ld b, e                                          ; $506e: $43
	jr c, jr_097_50a9                                ; $506f: $38 $38

	ld b, d                                          ; $5071: $42
	xor b                                            ; $5072: $a8
	db $ed                                           ; $5073: $ed

jr_097_5074:
	xor c                                            ; $5074: $a9
	ld d, e                                          ; $5075: $53
	halt                                             ; $5076: $76
	ld b, d                                          ; $5077: $42
	inc de                                           ; $5078: $13
	ldh a, [rAUD3LEVEL]                              ; $5079: $f0 $1c
	ldh a, [c]                                       ; $507b: $f2
	ld [hl], a                                       ; $507c: $77
	ld a, [hl-]                                      ; $507d: $3a
	ld b, c                                          ; $507e: $41
	ld b, h                                          ; $507f: $44
	inc a                                            ; $5080: $3c
	ld d, b                                          ; $5081: $50
	and b                                            ; $5082: $a0

jr_097_5083:
	ld b, b                                          ; $5083: $40
	ld c, l                                          ; $5084: $4d
	ld e, e                                          ; $5085: $5b
	ld d, [hl]                                       ; $5086: $56
	inc [hl]                                         ; $5087: $34
	ld l, a                                          ; $5088: $6f
	ld c, a                                          ; $5089: $4f
	inc de                                           ; $508a: $13
	ldh a, [c]                                       ; $508b: $f2
	ld sp, hl                                        ; $508c: $f9
	jr c, jr_097_5083                                ; $508d: $38 $f4

	ld e, b                                          ; $508f: $58
	ld e, b                                          ; $5090: $58
	ld c, l                                          ; $5091: $4d
	ld a, [hl-]                                      ; $5092: $3a
	jr c, jr_097_50da                                ; $5093: $38 $45

	add hl, sp                                       ; $5095: $39
	ld b, a                                          ; $5096: $47
	inc de                                           ; $5097: $13
	sub d                                            ; $5098: $92
	adc [hl]                                         ; $5099: $8e
	ld d, b                                          ; $509a: $50
	ld a, [hl-]                                      ; $509b: $3a
	jr c, jr_097_50e7                                ; $509c: $38 $49

	ld c, h                                          ; $509e: $4c
	and b                                            ; $509f: $a0
	ld b, b                                          ; $50a0: $40
	ld c, l                                          ; $50a1: $4d
	ld c, e                                          ; $50a2: $4b
	inc [hl]                                         ; $50a3: $34
	ld b, b                                          ; $50a4: $40
	add hl, sp                                       ; $50a5: $39
	ld b, h                                          ; $50a6: $44
	ld e, l                                          ; $50a7: $5d
	ld e, d                                          ; $50a8: $5a

jr_097_50a9:
	xor b                                            ; $50a9: $a8
	ld d, h                                          ; $50aa: $54
	ld b, d                                          ; $50ab: $42
	sbc l                                            ; $50ac: $9d
	ld d, b                                          ; $50ad: $50
	jr c, jr_097_5044                                ; $50ae: $38 $94

	ld a, b                                          ; $50b0: $78
	ld c, l                                          ; $50b1: $4d
	ld a, e                                          ; $50b2: $7b

jr_097_50b3:
	xor h                                            ; $50b3: $ac
	pop af                                           ; $50b4: $f1
	db $fc                                           ; $50b5: $fc
	ldh a, [rOCPS]                                   ; $50b6: $f0 $6a
	ld b, h                                          ; $50b8: $44
	ld c, c                                          ; $50b9: $49
	ld [hl], a                                       ; $50ba: $77
	add hl, sp                                       ; $50bb: $39

jr_097_50bc:
	ld h, e                                          ; $50bc: $63
	ld b, l                                          ; $50bd: $45
	and b                                            ; $50be: $a0
	di                                               ; $50bf: $f3
	dec de                                           ; $50c0: $1b
	jr c, jr_097_50b3                                ; $50c1: $38 $f0

	inc e                                            ; $50c3: $1c
	ldh a, [c]                                       ; $50c4: $f2
	ld [hl], a                                       ; $50c5: $77
	ld c, h                                          ; $50c6: $4c
	xor b                                            ; $50c7: $a8
	ld b, b                                          ; $50c8: $40
	ld c, l                                          ; $50c9: $4d
	ld e, e                                          ; $50ca: $5b
	ld d, [hl]                                       ; $50cb: $56
	xor h                                            ; $50cc: $ac
	ld h, h                                          ; $50cd: $64

jr_097_50ce:
	pop af                                           ; $50ce: $f1
	ld d, a                                          ; $50cf: $57
	jr c, jr_097_50bc                                ; $50d0: $38 $ea

	jr nz, jr_097_5074                               ; $50d2: $20 $a0

	cpl                                              ; $50d4: $2f
	ld [hl-], a                                      ; $50d5: $32
	ld b, b                                          ; $50d6: $40
	ld b, c                                          ; $50d7: $41
	ld a, [hl-]                                      ; $50d8: $3a
	ld b, a                                          ; $50d9: $47

jr_097_50da:
	di                                               ; $50da: $f3
	dec de                                           ; $50db: $1b
	jr c, @+$4b                                      ; $50dc: $38 $49

	inc de                                           ; $50de: $13
	ld [hl], a                                       ; $50df: $77
	ld h, e                                          ; $50e0: $63
	ld a, [hl-]                                      ; $50e1: $3a
	jr c, @+$43                                      ; $50e2: $38 $41

	ld b, h                                          ; $50e4: $44
	ld e, l                                          ; $50e5: $5d
	ld e, d                                          ; $50e6: $5a

jr_097_50e7:
	ld c, b                                          ; $50e7: $48
	and e                                            ; $50e8: $a3
	cpl                                              ; $50e9: $2f
	ld b, e                                          ; $50ea: $43
	ld b, [hl]                                       ; $50eb: $46
	dec sp                                           ; $50ec: $3b
	inc [hl]                                         ; $50ed: $34

jr_097_50ee:
	db $ed                                           ; $50ee: $ed
	xor c                                            ; $50ef: $a9
	xor b                                            ; $50f0: $a8
	pop af                                           ; $50f1: $f1
	ld sp, $4268                                     ; $50f2: $31 $68 $42
	xor $2b                                          ; $50f5: $ee $2b
	ld c, e                                          ; $50f7: $4b
	inc de                                           ; $50f8: $13
	db $eb                                           ; $50f9: $eb
	ld d, b                                          ; $50fa: $50
	and c                                            ; $50fb: $a1
	ld hl, $ebeb                                     ; $50fc: $21 $eb $eb
	xor b                                            ; $50ff: $a8
	jr nz, jr_097_50ee                               ; $5100: $20 $ec

	sub $4c                                          ; $5102: $d6 $4c
	and b                                            ; $5104: $a0
	cpl                                              ; $5105: $2f
	ld b, e                                          ; $5106: $43
	ld b, b                                          ; $5107: $40
	add hl, sp                                       ; $5108: $39
	inc a                                            ; $5109: $3c
	ld [hl], h                                       ; $510a: $74
	xor h                                            ; $510b: $ac
	ld c, a                                          ; $510c: $4f
	add hl, sp                                       ; $510d: $39
	ldh a, [rHDMA4]                                  ; $510e: $f0 $54
	ld a, $ee                                        ; $5110: $3e $ee
	add hl, de                                       ; $5112: $19
	ld a, $3a                                        ; $5113: $3e $3a
	jr c, jr_097_5160                                ; $5115: $38 $49

	inc de                                           ; $5117: $13
	xor $05                                          ; $5118: $ee $05
	inc a                                            ; $511a: $3c
	ld c, b                                          ; $511b: $48
	and b                                            ; $511c: $a0
	ld b, [hl]                                       ; $511d: $46
	dec sp                                           ; $511e: $3b
	inc [hl]                                         ; $511f: $34
	ld d, $a8                                        ; $5120: $16 $a8
	pop af                                           ; $5122: $f1
	ld sp, $4268                                     ; $5123: $31 $68 $42
	xor $2b                                          ; $5126: $ee $2b
	inc [hl]                                         ; $5128: $34
	ld b, l                                          ; $5129: $45
	inc a                                            ; $512a: $3c
	dec sp                                           ; $512b: $3b
	dec a                                            ; $512c: $3d
	ld c, h                                          ; $512d: $4c
	and b                                            ; $512e: $a0
	cpl                                              ; $512f: $2f
	ld b, e                                          ; $5130: $43
	ld b, b                                          ; $5131: $40
	add hl, sp                                       ; $5132: $39
	xor c                                            ; $5133: $a9
	ld d, h                                          ; $5134: $54
	ld b, d                                          ; $5135: $42
	ldh a, [c]                                       ; $5136: $f2
	inc b                                            ; $5137: $04
	inc [hl]                                         ; $5138: $34
	ldh a, [rHDMA4]                                  ; $5139: $f0 $54
	ld a, $4b                                        ; $513b: $3e $4b
	ldh a, [$67]                                     ; $513d: $f0 $67
	ldh a, [$9f]                                     ; $513f: $f0 $9f
	ld d, e                                          ; $5141: $53
	inc de                                           ; $5142: $13
	sub h                                            ; $5143: $94
	ccf                                              ; $5144: $3f
	ld e, h                                          ; $5145: $5c
	dec a                                            ; $5146: $3d
	ld b, c                                          ; $5147: $41
	ld b, h                                          ; $5148: $44
	and b                                            ; $5149: $a0
	ld c, a                                          ; $514a: $4f
	add hl, sp                                       ; $514b: $39
	pop af                                           ; $514c: $f1
	daa                                              ; $514d: $27
	ldh a, [$1f]                                     ; $514e: $f0 $1f
	ldh a, [rIF]                                     ; $5150: $f0 $0f
	ld e, c                                          ; $5152: $59
	ld l, c                                          ; $5153: $69
	ld c, a                                          ; $5154: $4f
	inc de                                           ; $5155: $13
	pop af                                           ; $5156: $f1
	ld l, c                                          ; $5157: $69
	ld a, a                                          ; $5158: $7f
	ld c, d                                          ; $5159: $4a
	ld a, $66                                        ; $515a: $3e $66
	add hl, sp                                       ; $515c: $39
	and c                                            ; $515d: $a1
	cpl                                              ; $515e: $2f
	ld b, e                                          ; $515f: $43

jr_097_5160:
	ld c, c                                          ; $5160: $49
	ld d, a                                          ; $5161: $57
	ld b, [hl]                                       ; $5162: $46
	ld e, [hl]                                       ; $5163: $5e
	sbc h                                            ; $5164: $9c
	ld c, e                                          ; $5165: $4b
	ld c, h                                          ; $5166: $4c
	xor h                                            ; $5167: $ac
	ldh a, [c]                                       ; $5168: $f2
	dec e                                            ; $5169: $1d
	adc [hl]                                         ; $516a: $8e
	ld d, c                                          ; $516b: $51
	ld c, [hl]                                       ; $516c: $4e
	ld e, l                                          ; $516d: $5d
	ld e, d                                          ; $516e: $5a
	ld c, b                                          ; $516f: $48
	and b                                            ; $5170: $a0
	sub d                                            ; $5171: $92
	adc [hl]                                         ; $5172: $8e
	dec sp                                           ; $5173: $3b
	dec a                                            ; $5174: $3d
	ld d, b                                          ; $5175: $50
	xor h                                            ; $5176: $ac
	ldh a, [$ca]                                     ; $5177: $f0 $ca
	ldh a, [c]                                       ; $5179: $f2
	or [hl]                                          ; $517a: $b6
	pop af                                           ; $517b: $f1
	ld b, c                                          ; $517c: $41
	ldh a, [$8b]                                     ; $517d: $f0 $8b
	sub b                                            ; $517f: $90
	ldh a, [rAUD1LEN]                                ; $5180: $f0 $11
	ld h, l                                          ; $5182: $65
	ldh a, [$60]                                     ; $5183: $f0 $60
	add e                                            ; $5185: $83
	ld l, c                                          ; $5186: $69
	ld b, a                                          ; $5187: $47
	inc de                                           ; $5188: $13
	sub h                                            ; $5189: $94
	ldh a, [$30]                                     ; $518a: $f0 $30
	ld c, d                                          ; $518c: $4a
	ld e, h                                          ; $518d: $5c
	ld a, [hl-]                                      ; $518e: $3a
	jr c, jr_097_51cd                                ; $518f: $38 $3c

	ld a, [hl-]                                      ; $5191: $3a
	ld c, b                                          ; $5192: $48
	and b                                            ; $5193: $a0
	cpl                                              ; $5194: $2f
	ld b, e                                          ; $5195: $43
	ld d, d                                          ; $5196: $52
	ld b, h                                          ; $5197: $44
	inc [hl]                                         ; $5198: $34
	halt                                             ; $5199: $76
	ldh a, [rSTAT]                                   ; $519a: $f0 $41
	ld b, d                                          ; $519c: $42
	ldh a, [$31]                                     ; $519d: $f0 $31
	ldh a, [$7f]                                     ; $519f: $f0 $7f
	ld e, e                                          ; $51a1: $5b
	ld d, [hl]                                       ; $51a2: $56
	inc de                                           ; $51a3: $13
	ret                                              ; $51a4: $c9


	ldh a, [rAUD1LOW]                                ; $51a5: $f0 $13
	ldh a, [$63]                                     ; $51a7: $f0 $63
	ld b, h                                          ; $51a9: $44
	ld c, c                                          ; $51aa: $49
	ld [hl], a                                       ; $51ab: $77
	add hl, sp                                       ; $51ac: $39
	ld b, l                                          ; $51ad: $45
	and b                                            ; $51ae: $a0
	ld b, b                                          ; $51af: $40
	ld c, l                                          ; $51b0: $4d
	ld e, e                                          ; $51b1: $5b
	ld d, [hl]                                       ; $51b2: $56
	inc [hl]                                         ; $51b3: $34
	sub h                                            ; $51b4: $94
	ldh a, [$30]                                     ; $51b5: $f0 $30
	ld c, d                                          ; $51b7: $4a
	ld e, h                                          ; $51b8: $5c
	ld c, [hl]                                       ; $51b9: $4e
	inc de                                           ; $51ba: $13
	ld b, l                                          ; $51bb: $45
	add hl, sp                                       ; $51bc: $39
	ld b, a                                          ; $51bd: $47
	sub d                                            ; $51be: $92
	adc [hl]                                         ; $51bf: $8e
	ld d, b                                          ; $51c0: $50
	ld a, [hl-]                                      ; $51c1: $3a
	ld d, l                                          ; $51c2: $55
	dec sp                                           ; $51c3: $3b
	ld h, c                                          ; $51c4: $61
	ld d, [hl]                                       ; $51c5: $56
	and b                                            ; $51c6: $a0
	cpl                                              ; $51c7: $2f
	ld b, e                                          ; $51c8: $43
	ld b, l                                          ; $51c9: $45
	ld a, $ac                                        ; $51ca: $3e $ac
	ld h, h                                          ; $51cc: $64

jr_097_51cd:
	pop af                                           ; $51cd: $f1
	ld d, a                                          ; $51ce: $57
	jr c, jr_097_5218                                ; $51cf: $38 $47

	sub d                                            ; $51d1: $92
	adc [hl]                                         ; $51d2: $8e
	ld e, a                                          ; $51d3: $5f
	add hl, sp                                       ; $51d4: $39
	and b                                            ; $51d5: $a0
	ld b, [hl]                                       ; $51d6: $46
	dec sp                                           ; $51d7: $3b
	inc [hl]                                         ; $51d8: $34
	ld d, $a8                                        ; $51d9: $16 $a8
	pop af                                           ; $51db: $f1
	ld sp, $4268                                     ; $51dc: $31 $68 $42
	xor $2b                                          ; $51df: $ee $2b
	inc [hl]                                         ; $51e1: $34
	ld b, l                                          ; $51e2: $45
	inc a                                            ; $51e3: $3c
	dec sp                                           ; $51e4: $3b
	dec a                                            ; $51e5: $3d
	ld b, l                                          ; $51e6: $45
	and b                                            ; $51e7: $a0
	ld c, a                                          ; $51e8: $4f
	add hl, sp                                       ; $51e9: $39
	pop af                                           ; $51ea: $f1
	daa                                              ; $51eb: $27
	ldh a, [$1f]                                     ; $51ec: $f0 $1f
	ldh a, [rIF]                                     ; $51ee: $f0 $0f
	ld e, c                                          ; $51f0: $59
	ld l, c                                          ; $51f1: $69
	ld c, a                                          ; $51f2: $4f
	inc de                                           ; $51f3: $13
	pop af                                           ; $51f4: $f1
	ld l, c                                          ; $51f5: $69
	ld a, a                                          ; $51f6: $7f
	ld b, h                                          ; $51f7: $44
	ld c, h                                          ; $51f8: $4c
	and c                                            ; $51f9: $a1
	sub d                                            ; $51fa: $92
	adc [hl]                                         ; $51fb: $8e
	dec sp                                           ; $51fc: $3b
	dec a                                            ; $51fd: $3d
	ld d, b                                          ; $51fe: $50
	xor h                                            ; $51ff: $ac
	ldh a, [$ca]                                     ; $5200: $f0 $ca
	ldh a, [c]                                       ; $5202: $f2
	or [hl]                                          ; $5203: $b6
	pop af                                           ; $5204: $f1
	ld b, c                                          ; $5205: $41
	ldh a, [$8b]                                     ; $5206: $f0 $8b
	sub b                                            ; $5208: $90
	ldh a, [rAUD1LEN]                                ; $5209: $f0 $11
	ld h, l                                          ; $520b: $65
	ldh a, [$60]                                     ; $520c: $f0 $60
	add e                                            ; $520e: $83
	ld l, c                                          ; $520f: $69
	ld b, a                                          ; $5210: $47
	inc de                                           ; $5211: $13
	sub h                                            ; $5212: $94
	ldh a, [$30]                                     ; $5213: $f0 $30
	ld c, d                                          ; $5215: $4a
	ld e, h                                          ; $5216: $5c
	ld c, [hl]                                       ; $5217: $4e

jr_097_5218:
	inc a                                            ; $5218: $3c
	ld c, a                                          ; $5219: $4f
	ld c, h                                          ; $521a: $4c
	and b                                            ; $521b: $a0
	cpl                                              ; $521c: $2f
	ld b, e                                          ; $521d: $43
	ld l, d                                          ; $521e: $6a
	ld b, d                                          ; $521f: $42
	halt                                             ; $5220: $76
	ldh a, [rSTAT]                                   ; $5221: $f0 $41
	ld b, d                                          ; $5223: $42
	ldh a, [$31]                                     ; $5224: $f0 $31
	ldh a, [$7f]                                     ; $5226: $f0 $7f
	ld e, e                                          ; $5228: $5b
	ld d, [hl]                                       ; $5229: $56
	inc de                                           ; $522a: $13
	ret                                              ; $522b: $c9


	ldh a, [rAUD1LOW]                                ; $522c: $f0 $13
	ldh a, [$63]                                     ; $522e: $f0 $63
	ld b, h                                          ; $5230: $44
	ld c, c                                          ; $5231: $49
	ld [hl], a                                       ; $5232: $77
	add hl, sp                                       ; $5233: $39
	ld b, l                                          ; $5234: $45
	and b                                            ; $5235: $a0
	ld b, b                                          ; $5236: $40
	ld c, l                                          ; $5237: $4d
	ld e, e                                          ; $5238: $5b
	ld d, [hl]                                       ; $5239: $56
	inc [hl]                                         ; $523a: $34
	sub h                                            ; $523b: $94
	ldh a, [$30]                                     ; $523c: $f0 $30
	ld c, d                                          ; $523e: $4a
	ld e, h                                          ; $523f: $5c
	ld c, [hl]                                       ; $5240: $4e
	inc de                                           ; $5241: $13
	ld b, l                                          ; $5242: $45
	add hl, sp                                       ; $5243: $39
	ld b, a                                          ; $5244: $47
	sub d                                            ; $5245: $92
	adc [hl]                                         ; $5246: $8e

Call_097_5247:
	ld e, a                                          ; $5247: $5f
	add hl, sp                                       ; $5248: $39
	ld b, l                                          ; $5249: $45

jr_097_524a:
	and b                                            ; $524a: $a0
	ld b, b                                          ; $524b: $40
	ld c, l                                          ; $524c: $4d
	ld e, e                                          ; $524d: $5b
	ld d, [hl]                                       ; $524e: $56
	xor h                                            ; $524f: $ac
	sub h                                            ; $5250: $94
	ldh a, [$30]                                     ; $5251: $f0 $30
	ld c, d                                          ; $5253: $4a
	ld e, h                                          ; $5254: $5c
	ld c, [hl]                                       ; $5255: $4e
	ld b, l                                          ; $5256: $45
	add hl, sp                                       ; $5257: $39
	ld b, a                                          ; $5258: $47
	inc de                                           ; $5259: $13
	sub d                                            ; $525a: $92
	adc [hl]                                         ; $525b: $8e
	ld d, b                                          ; $525c: $50
	ld a, [hl-]                                      ; $525d: $3a
	ld e, h                                          ; $525e: $5c
	ld d, [hl]                                       ; $525f: $56
	and b                                            ; $5260: $a0
	cpl                                              ; $5261: $2f
	ld b, e                                          ; $5262: $43
	ld b, [hl]                                       ; $5263: $46
	dec sp                                           ; $5264: $3b
	inc [hl]                                         ; $5265: $34
	db $ed                                           ; $5266: $ed
	xor c                                            ; $5267: $a9
	xor b                                            ; $5268: $a8
	pop af                                           ; $5269: $f1
	ld sp, $4268                                     ; $526a: $31 $68 $42
	xor $2b                                          ; $526d: $ee $2b
	ld c, e                                          ; $526f: $4b
	db $eb                                           ; $5270: $eb
	ld d, b                                          ; $5271: $50
	and c                                            ; $5272: $a1
	ld hl, $ebeb                                     ; $5273: $21 $eb $eb
	xor b                                            ; $5276: $a8
	jr nz, jr_097_524a                               ; $5277: $20 $d1

	ld b, l                                          ; $5279: $45
	inc a                                            ; $527a: $3c
	dec sp                                           ; $527b: $3b
	dec a                                            ; $527c: $3d
	ld b, c                                          ; $527d: $41
	db $ec                                           ; $527e: $ec
	ret c                                            ; $527f: $d8

	and c                                            ; $5280: $a1
	cpl                                              ; $5281: $2f
	ld b, e                                          ; $5282: $43
	ld b, h                                          ; $5283: $44
	ld b, c                                          ; $5284: $41
	ld b, h                                          ; $5285: $44
	ld b, c                                          ; $5286: $41
	ld c, c                                          ; $5287: $49
	xor h                                            ; $5288: $ac
	ldh a, [$67]                                     ; $5289: $f0 $67
	ldh a, [$9f]                                     ; $528b: $f0 $9f
	ld d, e                                          ; $528d: $53
	ldh a, [$9a]                                     ; $528e: $f0 $9a
	jr c, jr_097_52d1                                ; $5290: $38 $3f

	ld e, h                                          ; $5292: $5c
	dec a                                            ; $5293: $3d
	sub a                                            ; $5294: $97
	and b                                            ; $5295: $a0
	ld b, [hl]                                       ; $5296: $46
	dec sp                                           ; $5297: $3b
	inc [hl]                                         ; $5298: $34
	ld d, $a8                                        ; $5299: $16 $a8
	ldh a, [hDisp0_WX]                                     ; $529b: $f0 $89
	ldh a, [$c4]                                     ; $529d: $f0 $c4
	ld e, c                                          ; $529f: $59
	ld h, l                                          ; $52a0: $65
	ld b, a                                          ; $52a1: $47
	db $ed                                           ; $52a2: $ed
	sub b                                            ; $52a3: $90
	ld d, c                                          ; $52a4: $51
	ld c, [hl]                                       ; $52a5: $4e
	dec sp                                           ; $52a6: $3b
	ccf                                              ; $52a7: $3f
	ldh a, [rAUDVOL]                                 ; $52a8: $f0 $24
	inc de                                           ; $52aa: $13
	adc b                                            ; $52ab: $88
	sub c                                            ; $52ac: $91
	ld a, [hl-]                                      ; $52ad: $3a
	ld b, d                                          ; $52ae: $42
	and c                                            ; $52af: $a1
	cpl                                              ; $52b0: $2f
	ld b, e                                          ; $52b1: $43
	ld e, [hl]                                       ; $52b2: $5e
	ld e, c                                          ; $52b3: $59
	dec sp                                           ; $52b4: $3b
	inc [hl]                                         ; $52b5: $34
	db $ec                                           ; $52b6: $ec
	dec b                                            ; $52b7: $05
	ld b, l                                          ; $52b8: $45
	halt                                             ; $52b9: $76
	xor b                                            ; $52ba: $a8
	ld e, d                                          ; $52bb: $5a
	ld d, h                                          ; $52bc: $54
	inc a                                            ; $52bd: $3c
	ld d, b                                          ; $52be: $50
	ld b, b                                          ; $52bf: $40
	add hl, sp                                       ; $52c0: $39
	jr c, jr_097_52fc                                ; $52c1: $38 $39

	ldh a, [rAUDVOL]                                 ; $52c3: $f0 $24
	ld d, e                                          ; $52c5: $53
	inc de                                           ; $52c6: $13
	sub h                                            ; $52c7: $94
	ccf                                              ; $52c8: $3f
	ld d, l                                          ; $52c9: $55
	ld c, [hl]                                       ; $52ca: $4e
	ld b, c                                          ; $52cb: $41
	ld b, h                                          ; $52cc: $44
	and c                                            ; $52cd: $a1
	ld l, h                                          ; $52ce: $6c
	ld b, c                                          ; $52cf: $41
	ld a, [hl-]                                      ; $52d0: $3a

jr_097_52d1:
	ld d, e                                          ; $52d1: $53
	pop af                                           ; $52d2: $f1
	adc e                                            ; $52d3: $8b
	ld a, $3f                                        ; $52d4: $3e $3f
	ld c, [hl]                                       ; $52d6: $4e
	inc a                                            ; $52d7: $3c
	ld d, b                                          ; $52d8: $50
	xor l                                            ; $52d9: $ad
	ld c, d                                          ; $52da: $4a
	ld c, a                                          ; $52db: $4f
	inc [hl]                                         ; $52dc: $34
	db $ec                                           ; $52dd: $ec
	cp c                                             ; $52de: $b9
	ld c, b                                          ; $52df: $48
	and b                                            ; $52e0: $a0
	cpl                                              ; $52e1: $2f
	ld b, e                                          ; $52e2: $43
	ldh a, [$08]                                     ; $52e3: $f0 $08
	ld d, b                                          ; $52e5: $50
	inc [hl]                                         ; $52e6: $34
	ld b, b                                          ; $52e7: $40
	ld b, c                                          ; $52e8: $41
	ld a, [hl-]                                      ; $52e9: $3a
	ldh a, [rAUDVOL]                                 ; $52ea: $f0 $24
	ld b, l                                          ; $52ec: $45
	ld d, a                                          ; $52ed: $57
	ld c, a                                          ; $52ee: $4f
	ld e, b                                          ; $52ef: $58
	xor h                                            ; $52f0: $ac
	ldh a, [$ca]                                     ; $52f1: $f0 $ca
	ldh a, [c]                                       ; $52f3: $f2
	or [hl]                                          ; $52f4: $b6
	pop af                                           ; $52f5: $f1
	ld b, c                                          ; $52f6: $41
	ldh a, [$8b]                                     ; $52f7: $f0 $8b
	sub b                                            ; $52f9: $90
	ldh a, [rAUD1LEN]                                ; $52fa: $f0 $11

jr_097_52fc:
	ld h, l                                          ; $52fc: $65
	ldh a, [$60]                                     ; $52fd: $f0 $60
	add e                                            ; $52ff: $83
	ld l, c                                          ; $5300: $69
	ld b, a                                          ; $5301: $47

jr_097_5302:
	xor h                                            ; $5302: $ac
	sub h                                            ; $5303: $94
	ldh a, [$30]                                     ; $5304: $f0 $30
	ld c, d                                          ; $5306: $4a
	ld e, h                                          ; $5307: $5c
	ld c, [hl]                                       ; $5308: $4e
	inc a                                            ; $5309: $3c
	ld c, a                                          ; $530a: $4f
	ld a, $4d                                        ; $530b: $3e $4d
	ld a, [hl-]                                      ; $530d: $3a
	jr c, jr_097_5351                                ; $530e: $38 $41

	inc de                                           ; $5310: $13
	db $ec                                           ; $5311: $ec
	jr nz, jr_097_5302                               ; $5312: $20 $ee

	add hl, de                                       ; $5314: $19
	ld a, $45                                        ; $5315: $3e $45
	add hl, sp                                       ; $5317: $39
	ld b, l                                          ; $5318: $45
	and b                                            ; $5319: $a0
	xor $1f                                          ; $531a: $ee $1f
	xor b                                            ; $531c: $a8
	ldh a, [$ca]                                     ; $531d: $f0 $ca
	ldh a, [c]                                       ; $531f: $f2
	or [hl]                                          ; $5320: $b6
	pop af                                           ; $5321: $f1
	ld b, c                                          ; $5322: $41
	ldh a, [$8b]                                     ; $5323: $f0 $8b
	sub b                                            ; $5325: $90
	ldh a, [rAUD1LEN]                                ; $5326: $f0 $11
	ld h, l                                          ; $5328: $65
	ldh a, [$60]                                     ; $5329: $f0 $60
	add e                                            ; $532b: $83
	ld l, c                                          ; $532c: $69
	ld b, a                                          ; $532d: $47
	inc de                                           ; $532e: $13
	sub h                                            ; $532f: $94
	ldh a, [$30]                                     ; $5330: $f0 $30
	ld a, $45                                        ; $5332: $3e $45
	add hl, sp                                       ; $5334: $39
	ld c, h                                          ; $5335: $4c
	and b                                            ; $5336: $a0
	cpl                                              ; $5337: $2f

Call_097_5338:
	ld b, e                                          ; $5338: $43
	ld b, b                                          ; $5339: $40
	ld b, d                                          ; $533a: $42
	di                                               ; $533b: $f3
	ld b, e                                          ; $533c: $43
	ld b, a                                          ; $533d: $47
	ld c, e                                          ; $533e: $4b
	xor h                                            ; $533f: $ac
	xor $19                                          ; $5340: $ee $19
	inc [hl]                                         ; $5342: $34
	xor $19                                          ; $5343: $ee $19
	and b                                            ; $5345: $a0
	ld b, [hl]                                       ; $5346: $46
	dec sp                                           ; $5347: $3b
	inc [hl]                                         ; $5348: $34
	ld d, $a8                                        ; $5349: $16 $a8
	ldh a, [hDisp0_WX]                                     ; $534b: $f0 $89
	ldh a, [$c4]                                     ; $534d: $f0 $c4
	ld e, c                                          ; $534f: $59
	ld h, l                                          ; $5350: $65

jr_097_5351:
	ld b, a                                          ; $5351: $47
	db $ed                                           ; $5352: $ed
	sub b                                            ; $5353: $90
	ld d, c                                          ; $5354: $51
	ld c, [hl]                                       ; $5355: $4e
	dec sp                                           ; $5356: $3b
	ccf                                              ; $5357: $3f
	ldh a, [rAUDVOL]                                 ; $5358: $f0 $24
	inc de                                           ; $535a: $13
	adc b                                            ; $535b: $88
	sub c                                            ; $535c: $91
	and c                                            ; $535d: $a1
	ld l, h                                          ; $535e: $6c
	ld b, c                                          ; $535f: $41
	ld a, [hl-]                                      ; $5360: $3a
	ld d, e                                          ; $5361: $53
	pop af                                           ; $5362: $f1
	adc e                                            ; $5363: $8b
	ld a, $3f                                        ; $5364: $3e $3f
	dec a                                            ; $5366: $3d
	ld h, e                                          ; $5367: $63
	ld b, l                                          ; $5368: $45
	xor b                                            ; $5369: $a8
	ld l, e                                          ; $536a: $6b
	ld b, h                                          ; $536b: $44
	inc [hl]                                         ; $536c: $34
	ld h, a                                          ; $536d: $67
	inc a                                            ; $536e: $3c
	ld a, [hl-]                                      ; $536f: $3a
	jr c, @+$44                                      ; $5370: $38 $42

	and b                                            ; $5372: $a0
	call c, $f0a8                                    ; $5373: $dc $a8 $f0
	jp z, $b6f2                                      ; $5376: $ca $f2 $b6

	pop af                                           ; $5379: $f1
	ld b, c                                          ; $537a: $41
	ldh a, [$8b]                                     ; $537b: $f0 $8b
	sub b                                            ; $537d: $90
	ldh a, [rAUD1LEN]                                ; $537e: $f0 $11
	ld h, l                                          ; $5380: $65
	ldh a, [$60]                                     ; $5381: $f0 $60
	add e                                            ; $5383: $83
	ld l, c                                          ; $5384: $69
	ld b, a                                          ; $5385: $47
	inc de                                           ; $5386: $13
	sub h                                            ; $5387: $94
	ldh a, [$30]                                     ; $5388: $f0 $30
	ld a, $3d                                        ; $538a: $3e $3d
	jr c, @+$3e                                      ; $538c: $38 $3c

	ld d, b                                          ; $538e: $50
	ld c, h                                          ; $538f: $4c
	and b                                            ; $5390: $a0
	ld b, b                                          ; $5391: $40
	ld c, l                                          ; $5392: $4d
	ld e, e                                          ; $5393: $5b
	ld d, [hl]                                       ; $5394: $56
	xor h                                            ; $5395: $ac
	ld [$a020], a                                    ; $5396: $ea $20 $a0
	ld l, h                                          ; $5399: $6c
	ld b, c                                          ; $539a: $41
	ld a, [hl-]                                      ; $539b: $3a
	ld d, e                                          ; $539c: $53
	pop af                                           ; $539d: $f1
	adc e                                            ; $539e: $8b
	ld a, $3f                                        ; $539f: $3e $3f
	dec a                                            ; $53a1: $3d
	ld h, e                                          ; $53a2: $63
	ld b, l                                          ; $53a3: $45
	xor b                                            ; $53a4: $a8
	ld h, a                                          ; $53a5: $67
	inc a                                            ; $53a6: $3c
	ld a, [hl-]                                      ; $53a7: $3a
	jr c, jr_097_53eb                                ; $53a8: $38 $41

	ld b, h                                          ; $53aa: $44
	and b                                            ; $53ab: $a0
	call c, Call_097_40a8                            ; $53ac: $dc $a8 $40
	ld c, l                                          ; $53af: $4d
	ld e, e                                          ; $53b0: $5b
	ld d, [hl]                                       ; $53b1: $56
	xor h                                            ; $53b2: $ac
	ld [$a020], a                                    ; $53b3: $ea $20 $a0
	cpl                                              ; $53b6: $2f
	ld b, e                                          ; $53b7: $43
	ld b, [hl]                                       ; $53b8: $46
	dec sp                                           ; $53b9: $3b
	inc [hl]                                         ; $53ba: $34
	db $ed                                           ; $53bb: $ed
	xor c                                            ; $53bc: $a9
	xor b                                            ; $53bd: $a8
	halt                                             ; $53be: $76

jr_097_53bf:
	ld b, d                                          ; $53bf: $42
	pop af                                           ; $53c0: $f1
	adc e                                            ; $53c1: $8b
	ld b, d                                          ; $53c2: $42
	sbc d                                            ; $53c3: $9a
	ldh a, [$0c]                                     ; $53c4: $f0 $0c
	jr c, jr_097_5405                                ; $53c6: $38 $3d

	and c                                            ; $53c8: $a1
	ld hl, $ebeb                                     ; $53c9: $21 $eb $eb
	xor b                                            ; $53cc: $a8
	jr nz, jr_097_53bf                               ; $53cd: $20 $f0

	adc c                                            ; $53cf: $89
	ldh a, [$c4]                                     ; $53d0: $f0 $c4
	ld e, c                                          ; $53d2: $59
	ld h, l                                          ; $53d3: $65
	ld b, a                                          ; $53d4: $47
	db $ed                                           ; $53d5: $ed
	sub b                                            ; $53d6: $90
	ld d, c                                          ; $53d7: $51
	ld c, [hl]                                       ; $53d8: $4e
	ld b, c                                          ; $53d9: $41
	ld c, d                                          ; $53da: $4a
	ld a, $66                                        ; $53db: $3e $66
	add hl, sp                                       ; $53dd: $39
	and b                                            ; $53de: $a0
	cpl                                              ; $53df: $2f
	ld b, e                                          ; $53e0: $43
	ld d, d                                          ; $53e1: $52
	dec sp                                           ; $53e2: $3b
	dec a                                            ; $53e3: $3d
	ld d, l                                          ; $53e4: $55
	xor h                                            ; $53e5: $ac
	ld e, d                                          ; $53e6: $5a
	ld d, h                                          ; $53e7: $54
	inc a                                            ; $53e8: $3c
	ld d, b                                          ; $53e9: $50
	ld b, b                                          ; $53ea: $40

jr_097_53eb:
	add hl, sp                                       ; $53eb: $39
	jr c, jr_097_5427                                ; $53ec: $38 $39

	ldh a, [rAUDVOL]                                 ; $53ee: $f0 $24
	ld d, e                                          ; $53f0: $53
	ld c, b                                          ; $53f1: $48
	and b                                            ; $53f2: $a0
	add hl, bc                                       ; $53f3: $09
	ld b, [hl]                                       ; $53f4: $46
	dec sp                                           ; $53f5: $3b
	inc [hl]                                         ; $53f6: $34
	ld d, $a8                                        ; $53f7: $16 $a8
	db $ec                                           ; $53f9: $ec
	ld h, $5a                                        ; $53fa: $26 $5a
	add hl, sp                                       ; $53fc: $39
	ld c, d                                          ; $53fd: $4a
	ld d, c                                          ; $53fe: $51
	inc a                                            ; $53ff: $3c
	and c                                            ; $5400: $a1
	cpl                                              ; $5401: $2f
	ld b, e                                          ; $5402: $43
	ldh a, [rSCX]                                    ; $5403: $f0 $43

jr_097_5405:
	ldh a, [$b8]                                     ; $5405: $f0 $b8
	adc a                                            ; $5407: $8f
	ld b, a                                          ; $5408: $47
	sub [hl]                                         ; $5409: $96
	dec sp                                           ; $540a: $3b
	dec a                                            ; $540b: $3d
	ld b, d                                          ; $540c: $42
	ld c, e                                          ; $540d: $4b
	inc de                                           ; $540e: $13
	db $ec                                           ; $540f: $ec
	ld [$f034], sp                                   ; $5410: $08 $34 $f0
	ld b, e                                          ; $5413: $43
	ld h, d                                          ; $5414: $62
	pop af                                           ; $5415: $f1
	ld l, $55                                        ; $5416: $2e $55
	db $ec                                           ; $5418: $ec
	or $ac                                           ; $5419: $f6 $ac
	pop de                                           ; $541b: $d1
	pop af                                           ; $541c: $f1
	ld a, [$383e]                                    ; $541d: $fa $3e $38
	ld c, h                                          ; $5420: $4c
	and b                                            ; $5421: $a0
	db $eb                                           ; $5422: $eb
	cp [hl]                                          ; $5423: $be
	ldh a, [$fa]                                     ; $5424: $f0 $fa
	ld b, c                                          ; $5426: $41

jr_097_5427:
	ld c, d                                          ; $5427: $4a
	ld l, h                                          ; $5428: $6c
	ld c, [hl]                                       ; $5429: $4e
	inc de                                           ; $542a: $13
	ld b, d                                          ; $542b: $42
	ld d, e                                          ; $542c: $53
	jr c, jr_097_5467                                ; $542d: $38 $38

	ld c, c                                          ; $542f: $49
	ld [hl], a                                       ; $5430: $77
	jr c, jr_097_5485                                ; $5431: $38 $52

	ld d, c                                          ; $5433: $51
	ld e, l                                          ; $5434: $5d
	ld e, d                                          ; $5435: $5a
	ld c, b                                          ; $5436: $48
	and b                                            ; $5437: $a0
	cpl                                              ; $5438: $2f
	ld b, e                                          ; $5439: $43
	ld b, b                                          ; $543a: $40
	add hl, sp                                       ; $543b: $39
	inc a                                            ; $543c: $3c
	ld [hl], h                                       ; $543d: $74
	xor h                                            ; $543e: $ac
	ld c, a                                          ; $543f: $4f
	dec sp                                           ; $5440: $3b
	ld c, c                                          ; $5441: $49
	adc b                                            ; $5442: $88
	ld h, d                                          ; $5443: $62
	ldh a, [$fa]                                     ; $5444: $f0 $fa
	ldh a, [$be]                                     ; $5446: $f0 $be
	ld d, h                                          ; $5448: $54
	ld c, c                                          ; $5449: $49
	inc a                                            ; $544a: $3c
	ld d, b                                          ; $544b: $50
	inc de                                           ; $544c: $13
	ldh a, [$bb]                                     ; $544d: $f0 $bb
	ld [hl], c                                       ; $544f: $71
	ld c, [hl]                                       ; $5450: $4e
	inc a                                            ; $5451: $3c
	and b                                            ; $5452: $a0
	ld l, d                                          ; $5453: $6a
	ldh a, [$0d]                                     ; $5454: $f0 $0d
	inc [hl]                                         ; $5456: $34
	adc b                                            ; $5457: $88
	ld h, d                                          ; $5458: $62
	ldh a, [rHDMA1]                                  ; $5459: $f0 $51
	dec sp                                           ; $545b: $3b
	ccf                                              ; $545c: $3f
	inc de                                           ; $545d: $13
	ld a, b                                          ; $545e: $78
	ld d, d                                          ; $545f: $52
	ld d, c                                          ; $5460: $51
	inc a                                            ; $5461: $3c
	ld d, b                                          ; $5462: $50
	inc [hl]                                         ; $5463: $34
	ld b, l                                          ; $5464: $45
	inc a                                            ; $5465: $3c
	dec sp                                           ; $5466: $3b

jr_097_5467:
	dec a                                            ; $5467: $3d
	ld d, b                                          ; $5468: $50
	xor h                                            ; $5469: $ac
	ldh a, [c]                                       ; $546a: $f2
	and h                                            ; $546b: $a4
	ldh a, [c]                                       ; $546c: $f2
	ld b, $f0                                        ; $546d: $06 $f0
	ld a, [$4a41]                                    ; $546f: $fa $41 $4a
	ld d, l                                          ; $5472: $55
	ld b, h                                          ; $5473: $44
	ld e, b                                          ; $5474: $58
	jr c, @-$5e                                      ; $5475: $38 $a0

	cpl                                              ; $5477: $2f
	ld b, e                                          ; $5478: $43
	ld b, [hl]                                       ; $5479: $46
	ld d, a                                          ; $547a: $57
	ld d, e                                          ; $547b: $53
	ld c, c                                          ; $547c: $49
	add hl, sp                                       ; $547d: $39
	xor b                                            ; $547e: $a8
	pop af                                           ; $547f: $f1
	jp hl                                            ; $5480: $e9


	inc a                                            ; $5481: $3c
	ld c, [hl]                                       ; $5482: $4e
	ld b, l                                          ; $5483: $45
	and b                                            ; $5484: $a0

jr_097_5485:
	ld b, [hl]                                       ; $5485: $46
	dec sp                                           ; $5486: $3b
	inc [hl]                                         ; $5487: $34
	ld d, $a8                                        ; $5488: $16 $a8
	ld e, d                                          ; $548a: $5a
	add hl, sp                                       ; $548b: $39
	ld c, d                                          ; $548c: $4a
	ld d, c                                          ; $548d: $51
	inc a                                            ; $548e: $3c
	xor c                                            ; $548f: $a9
	db $ec                                           ; $5490: $ec
	ld h, $a0                                        ; $5491: $26 $a0
	cpl                                              ; $5493: $2f
	ld b, e                                          ; $5494: $43
	ldh a, [rSCX]                                    ; $5495: $f0 $43
	ldh a, [$b8]                                     ; $5497: $f0 $b8
	adc a                                            ; $5499: $8f
	ld b, a                                          ; $549a: $47
	sub [hl]                                         ; $549b: $96
	dec sp                                           ; $549c: $3b
	dec a                                            ; $549d: $3d
	ld b, d                                          ; $549e: $42
	ld c, e                                          ; $549f: $4b
	inc de                                           ; $54a0: $13
	db $ec                                           ; $54a1: $ec
	ld [$f034], sp                                   ; $54a2: $08 $34 $f0
	ld b, e                                          ; $54a5: $43
	ld h, d                                          ; $54a6: $62
	pop af                                           ; $54a7: $f1
	ld l, $55                                        ; $54a8: $2e $55
	db $ec                                           ; $54aa: $ec
	or $ac                                           ; $54ab: $f6 $ac
	pop de                                           ; $54ad: $d1
	pop af                                           ; $54ae: $f1
	ld a, [$553e]                                    ; $54af: $fa $3e $55
	ccf                                              ; $54b2: $3f
	ld c, h                                          ; $54b3: $4c
	and b                                            ; $54b4: $a0
	adc b                                            ; $54b5: $88
	ld h, d                                          ; $54b6: $62
	adc $ec                                          ; $54b7: $ce $ec
	ld c, c                                          ; $54b9: $49
	inc de                                           ; $54ba: $13
	ld c, c                                          ; $54bb: $49
	inc [hl]                                         ; $54bc: $34
	pop af                                           ; $54bd: $f1
	ld a, [$383e]                                    ; $54be: $fa $3e $38
	ld c, c                                          ; $54c1: $49
	ld [hl], a                                       ; $54c2: $77
	jr c, @+$54                                      ; $54c3: $38 $52

	ld d, c                                          ; $54c5: $51
	ld b, l                                          ; $54c6: $45
	and b                                            ; $54c7: $a0
	ld l, a                                          ; $54c8: $6f
	ld b, d                                          ; $54c9: $42
	ldh a, [rHDMA1]                                  ; $54ca: $f0 $51
	dec sp                                           ; $54cc: $3b
	ccf                                              ; $54cd: $3f
	ld c, [hl]                                       ; $54ce: $4e
	adc b                                            ; $54cf: $88
	ld c, d                                          ; $54d0: $4a
	inc de                                           ; $54d1: $13
	ld b, l                                          ; $54d2: $45
	inc a                                            ; $54d3: $3c
	dec sp                                           ; $54d4: $3b
	dec a                                            ; $54d5: $3d
	ld d, b                                          ; $54d6: $50
	ld l, d                                          ; $54d7: $6a
	ldh a, [$0d]                                     ; $54d8: $f0 $0d
	ldh a, [rHDMA1]                                  ; $54da: $f0 $51
	dec sp                                           ; $54dc: $3b
	ccf                                              ; $54dd: $3f
	ld e, h                                          ; $54de: $5c
	ld d, d                                          ; $54df: $52
	ld d, c                                          ; $54e0: $51
	ld c, h                                          ; $54e1: $4c
	and b                                            ; $54e2: $a0
	ld b, [hl]                                       ; $54e3: $46
	dec sp                                           ; $54e4: $3b
	inc [hl]                                         ; $54e5: $34
	ld d, $a0                                        ; $54e6: $16 $a0
	adc b                                            ; $54e8: $88
	ld h, d                                          ; $54e9: $62
	adc $f0                                          ; $54ea: $ce $f0
	ld a, [$4a41]                                    ; $54ec: $fa $41 $4a
	xor h                                            ; $54ef: $ac
	db $ec                                           ; $54f0: $ec
	ld c, e                                          ; $54f1: $4b
	ld b, d                                          ; $54f2: $42
	ld d, e                                          ; $54f3: $53
	inc de                                           ; $54f4: $13
	jr c, jr_097_552f                                ; $54f5: $38 $38

	ld c, c                                          ; $54f7: $49
	ld [hl], a                                       ; $54f8: $77
	jr c, @+$54                                      ; $54f9: $38 $52

	ld d, c                                          ; $54fb: $51
	ld b, l                                          ; $54fc: $45
	and b                                            ; $54fd: $a0
	cpl                                              ; $54fe: $2f
	ld [hl-], a                                      ; $54ff: $32
	ld c, a                                          ; $5500: $4f
	dec sp                                           ; $5501: $3b
	ld c, c                                          ; $5502: $49
	adc b                                            ; $5503: $88

jr_097_5504:
	ld h, d                                          ; $5504: $62
	inc de                                           ; $5505: $13
	ldh a, [$fa]                                     ; $5506: $f0 $fa
	ldh a, [$be]                                     ; $5508: $f0 $be
	ld d, h                                          ; $550a: $54
	ld c, c                                          ; $550b: $49
	inc a                                            ; $550c: $3c
	ld d, b                                          ; $550d: $50
	ldh a, [$bb]                                     ; $550e: $f0 $bb
	ld [hl], c                                       ; $5510: $71
	ld c, [hl]                                       ; $5511: $4e
	inc a                                            ; $5512: $3c
	and e                                            ; $5513: $a3
	cpl                                              ; $5514: $2f
	ld b, e                                          ; $5515: $43
	ldh a, [rSCX]                                    ; $5516: $f0 $43
	ld h, d                                          ; $5518: $62
	pop af                                           ; $5519: $f1
	ld l, $55                                        ; $551a: $2e $55
	db $ec                                           ; $551c: $ec
	or $ac                                           ; $551d: $f6 $ac
	pop de                                           ; $551f: $d1
	pop af                                           ; $5520: $f1
	ld a, [$383e]                                    ; $5521: $fa $3e $38
	ld c, h                                          ; $5524: $4c
	xor b                                            ; $5525: $a8
	db $eb                                           ; $5526: $eb
	ld h, a                                          ; $5527: $67
	db $ec                                           ; $5528: $ec
	ld a, [bc]                                       ; $5529: $0a
	and c                                            ; $552a: $a1
	ld hl, $ebeb                                     ; $552b: $21 $eb $eb
	xor b                                            ; $552e: $a8

jr_097_552f:
	jr nz, jr_097_5571                               ; $552f: $20 $40

	ld c, l                                          ; $5531: $4d
	ld c, e                                          ; $5532: $4b
	inc [hl]                                         ; $5533: $34
	adc b                                            ; $5534: $88
	ld h, d                                          ; $5535: $62
	ldh a, [$fa]                                     ; $5536: $f0 $fa
	ld b, c                                          ; $5538: $41
	ld c, d                                          ; $5539: $4a
	inc de                                           ; $553a: $13
	ldh a, [$dd]                                     ; $553b: $f0 $dd
	ldh a, [$9c]                                     ; $553d: $f0 $9c
	ld a, $3a                                        ; $553f: $3e $3a
	jr c, jr_097_558c                                ; $5541: $38 $49

	ld c, b                                          ; $5543: $48
	and b                                            ; $5544: $a0
	ld b, [hl]                                       ; $5545: $46
	dec sp                                           ; $5546: $3b
	inc [hl]                                         ; $5547: $34
	ld d, $a8                                        ; $5548: $16 $a8
	pop af                                           ; $554a: $f1
	ld sp, $f168                                     ; $554b: $31 $68 $f1
	ld l, $38                                        ; $554e: $2e $38
	ccf                                              ; $5550: $3f
	jr c, jr_097_5590                                ; $5551: $38 $3d

	ldh a, [c]                                       ; $5553: $f2
	sub l                                            ; $5554: $95
	ldh a, [c]                                       ; $5555: $f2
	jr nc, jr_097_5504                               ; $5556: $30 $ac

	ldh a, [$fa]                                     ; $5558: $f0 $fa
	ld d, d                                          ; $555a: $52
	ld a, c                                          ; $555b: $79
	ccf                                              ; $555c: $3f
	ld c, a                                          ; $555d: $4f
	ld d, b                                          ; $555e: $50
	jr c, jr_097_55b3                                ; $555f: $38 $52

	ld a, $3d                                        ; $5561: $3e $3d
	and b                                            ; $5563: $a0
	cpl                                              ; $5564: $2f
	ld b, e                                          ; $5565: $43
	ld [$a932], a                                    ; $5566: $ea $32 $a9
	ldh a, [$67]                                     ; $5569: $f0 $67
	ldh a, [$9f]                                     ; $556b: $f0 $9f
	ld c, e                                          ; $556d: $4b
	ld a, [hl-]                                      ; $556e: $3a
	jr c, jr_097_55b2                                ; $556f: $38 $41

jr_097_5571:
	ld b, h                                          ; $5571: $44
	ld e, l                                          ; $5572: $5d
	ld e, d                                          ; $5573: $5a
	xor h                                            ; $5574: $ac
	rst FarCall                                          ; $5575: $f7
	ld e, h                                          ; $5576: $5c
	ldh a, [c]                                       ; $5577: $f2
	sbc e                                            ; $5578: $9b
	ld a, $3f                                        ; $5579: $3e $3f
	ld d, l                                          ; $557b: $55
	ld c, l                                          ; $557c: $4d
	ld c, [hl]                                       ; $557d: $4e
	inc a                                            ; $557e: $3c
	ld a, [hl-]                                      ; $557f: $3a
	and b                                            ; $5580: $a0
	db $ec                                           ; $5581: $ec
	cp c                                             ; $5582: $b9

jr_097_5583:
	ld b, d                                          ; $5583: $42
	ld c, d                                          ; $5584: $4a
	ld d, c                                          ; $5585: $51
	ld e, l                                          ; $5586: $5d
	ld e, d                                          ; $5587: $5a
	ld c, b                                          ; $5588: $48
	inc [hl]                                         ; $5589: $34
	inc hl                                           ; $558a: $23
	inc de                                           ; $558b: $13

jr_097_558c:
	ld c, a                                          ; $558c: $4f
	add hl, sp                                       ; $558d: $39
	ldh a, [rHDMA4]                                  ; $558e: $f0 $54

jr_097_5590:
	ld a, $ac                                        ; $5590: $3e $ac
	ld [$edd4], a                                    ; $5592: $ea $d4 $ed
	ld [hl], l                                       ; $5595: $75
	ld b, h                                          ; $5596: $44
	ld c, c                                          ; $5597: $49
	xor h                                            ; $5598: $ac
	ld c, a                                          ; $5599: $4f
	dec sp                                           ; $559a: $3b
	ld c, c                                          ; $559b: $49
	db $ec                                           ; $559c: $ec
	cp c                                             ; $559d: $b9
	ld c, c                                          ; $559e: $49
	ld [hl], a                                       ; $559f: $77
	jr c, @+$54                                      ; $55a0: $38 $52

	ld a, $3d                                        ; $55a2: $3e $3d
	and b                                            ; $55a4: $a0
	cpl                                              ; $55a5: $2f
	ld b, e                                          ; $55a6: $43
	ld b, b                                          ; $55a7: $40
	add hl, sp                                       ; $55a8: $39
	inc a                                            ; $55a9: $3c
	ld [hl], h                                       ; $55aa: $74
	xor h                                            ; $55ab: $ac
	ld [$edd4], a                                    ; $55ac: $ea $d4 $ed
	ld [hl], l                                       ; $55af: $75
	inc a                                            ; $55b0: $3c
	xor l                                            ; $55b1: $ad

jr_097_55b2:
	ld b, [hl]                                       ; $55b2: $46

jr_097_55b3:
	ld d, a                                          ; $55b3: $57
	ld d, e                                          ; $55b4: $53
	ld c, c                                          ; $55b5: $49
	add hl, sp                                       ; $55b6: $39
	inc [hl]                                         ; $55b7: $34
	db $ec                                           ; $55b8: $ec
	rst SubAFromDE                                          ; $55b9: $df
	and b                                            ; $55ba: $a0
	db $eb                                           ; $55bb: $eb
	ccf                                              ; $55bc: $3f
	xor b                                            ; $55bd: $a8
	db $fc                                           ; $55be: $fc
	inc sp                                           ; $55bf: $33
	ld b, b                                          ; $55c0: $40
	add hl, sp                                       ; $55c1: $39
	ld a, [hl-]                                      ; $55c2: $3a
	ld d, h                                          ; $55c3: $54
	ld c, c                                          ; $55c4: $49
	inc de                                           ; $55c5: $13
	add d                                            ; $55c6: $82
	dec sp                                           ; $55c7: $3b
	ld h, c                                          ; $55c8: $61
	ld d, [hl]                                       ; $55c9: $56
	dec sp                                           ; $55ca: $3b
	dec a                                            ; $55cb: $3d
	ld l, h                                          ; $55cc: $6c
	dec a                                            ; $55cd: $3d
	jr c, jr_097_561a                                ; $55ce: $38 $4a

	ld c, b                                          ; $55d0: $48
	and b                                            ; $55d1: $a0
	cpl                                              ; $55d2: $2f
	ld b, e                                          ; $55d3: $43
	ld c, c                                          ; $55d4: $49
	ld b, c                                          ; $55d5: $41
	ld c, d                                          ; $55d6: $4a
	ld c, a                                          ; $55d7: $4f
	ld a, [hl-]                                      ; $55d8: $3a
	jr c, jr_097_5583                                ; $55d9: $38 $a8

	ld h, c                                          ; $55db: $61
	ld d, [hl]                                       ; $55dc: $56
	ld b, c                                          ; $55dd: $41
	ld c, c                                          ; $55de: $49
	ld a, $3d                                        ; $55df: $3e $3d
	rst FarCall                                          ; $55e1: $f7
	ld e, h                                          ; $55e2: $5c
	ldh a, [c]                                       ; $55e3: $f2
	sbc e                                            ; $55e4: $9b
	ld c, d                                          ; $55e5: $4a
	inc de                                           ; $55e6: $13
	ld b, [hl]                                       ; $55e7: $46
	ld d, a                                          ; $55e8: $57
	ld d, e                                          ; $55e9: $53
	dec a                                            ; $55ea: $3d
	jr c, jr_097_5632                                ; $55eb: $38 $45

	and b                                            ; $55ed: $a0
	rst JumpTable                                          ; $55ee: $c7
	ld c, d                                          ; $55ef: $4a
	ld d, c                                          ; $55f0: $51
	inc a                                            ; $55f1: $3c
	xor c                                            ; $55f2: $a9
	jp z, $92ac                                      ; $55f3: $ca $ac $92

	adc [hl]                                         ; $55f6: $8e
	dec sp                                           ; $55f7: $3b
	ccf                                              ; $55f8: $3f
	ld d, l                                          ; $55f9: $55
	ld b, h                                          ; $55fa: $44
	ld e, b                                          ; $55fb: $58
	jr c, jr_097_564a                                ; $55fc: $38 $4c

	and b                                            ; $55fe: $a0
	or [hl]                                          ; $55ff: $b6
	xor l                                            ; $5600: $ad
	ld c, a                                          ; $5601: $4f
	add hl, sp                                       ; $5602: $39
	ldh a, [rHDMA4]                                  ; $5603: $f0 $54
	ld a, $ac                                        ; $5605: $3e $ac
	ld [$edd4], a                                    ; $5607: $ea $d4 $ed
	ld [hl], l                                       ; $560a: $75
	ld b, h                                          ; $560b: $44
	ld c, c                                          ; $560c: $49
	xor h                                            ; $560d: $ac
	db $ec                                           ; $560e: $ec
	cp c                                             ; $560f: $b9
	ld c, c                                          ; $5610: $49
	ld [hl], a                                       ; $5611: $77
	jr c, jr_097_5666                                ; $5612: $38 $52

	ld d, c                                          ; $5614: $51
	and b                                            ; $5615: $a0
	db $ed                                           ; $5616: $ed
	ld e, c                                          ; $5617: $59
	xor b                                            ; $5618: $a8
	ld d, h                                          ; $5619: $54

jr_097_561a:
	ld b, c                                          ; $561a: $41
	ld a, [hl-]                                      ; $561b: $3a
	sbc d                                            ; $561c: $9a
	sbc l                                            ; $561d: $9d
	ld d, b                                          ; $561e: $50
	jr c, @+$40                                      ; $561f: $38 $3e

	inc a                                            ; $5621: $3c
	xor h                                            ; $5622: $ac
	ldh a, [c]                                       ; $5623: $f2
	reti                                             ; $5624: $d9


	ld b, a                                          ; $5625: $47
	ldh a, [$d9]                                     ; $5626: $f0 $d9
	ld h, c                                          ; $5628: $61
	ld d, d                                          ; $5629: $52
	ld a, c                                          ; $562a: $79
	ld b, c                                          ; $562b: $41
	inc a                                            ; $562c: $3c
	ld d, b                                          ; $562d: $50
	and b                                            ; $562e: $a0
	cpl                                              ; $562f: $2f
	ld b, e                                          ; $5630: $43
	or h                                             ; $5631: $b4

jr_097_5632:
	xor h                                            ; $5632: $ac
	ld [$edd4], a                                    ; $5633: $ea $d4 $ed
	ld [hl], l                                       ; $5636: $75
	dec sp                                           ; $5637: $3b
	ccf                                              ; $5638: $3f
	ld l, [hl]                                       ; $5639: $6e
	add b                                            ; $563a: $80
	ld h, d                                          ; $563b: $62
	inc de                                           ; $563c: $13
	xor $17                                          ; $563d: $ee $17
	ld a, $3f                                        ; $563f: $3e $3f
	ld l, h                                          ; $5641: $6c
	ld c, [hl]                                       ; $5642: $4e
	inc a                                            ; $5643: $3c
	and b                                            ; $5644: $a0
	sub d                                            ; $5645: $92
	adc [hl]                                         ; $5646: $8e
	dec sp                                           ; $5647: $3b
	ccf                                              ; $5648: $3f
	ld d, l                                          ; $5649: $55

jr_097_564a:
	ld b, h                                          ; $564a: $44
	ld e, b                                          ; $564b: $58
	jr c, jr_097_569a                                ; $564c: $38 $4c

	and b                                            ; $564e: $a0
	or [hl]                                          ; $564f: $b6
	xor l                                            ; $5650: $ad
	ld c, a                                          ; $5651: $4f
	add hl, sp                                       ; $5652: $39
	ldh a, [rHDMA4]                                  ; $5653: $f0 $54
	ld a, $ac                                        ; $5655: $3e $ac
	ld [$edd4], a                                    ; $5657: $ea $d4 $ed
	ld [hl], l                                       ; $565a: $75
	ld b, h                                          ; $565b: $44
	ld c, c                                          ; $565c: $49
	inc de                                           ; $565d: $13
	jr c, jr_097_5698                                ; $565e: $38 $38

	ld c, c                                          ; $5660: $49
	ld [hl], a                                       ; $5661: $77
	jr c, jr_097_56b6                                ; $5662: $38 $52

	ld d, c                                          ; $5664: $51
	ld b, l                                          ; $5665: $45

jr_097_5666:
	and b                                            ; $5666: $a0
	jp z, $92ac                                      ; $5667: $ca $ac $92

	adc [hl]                                         ; $566a: $8e
	dec sp                                           ; $566b: $3b
	ccf                                              ; $566c: $3f
	ld d, l                                          ; $566d: $55
	ld b, h                                          ; $566e: $44
	ld e, b                                          ; $566f: $58
	jr c, jr_097_56be                                ; $5670: $38 $4c

	and b                                            ; $5672: $a0
	cpl                                              ; $5673: $2f
	ld b, e                                          ; $5674: $43
	ld b, [hl]                                       ; $5675: $46
	dec sp                                           ; $5676: $3b
	inc [hl]                                         ; $5677: $34
	db $ec                                           ; $5678: $ec
	rst SubAFromDE                                          ; $5679: $df
	xor b                                            ; $567a: $a8
	ld [$ac65], a                                    ; $567b: $ea $65 $ac
	ldh a, [$fa]                                     ; $567e: $f0 $fa
	ld b, c                                          ; $5680: $41
	ld c, d                                          ; $5681: $4a
	ld d, l                                          ; $5682: $55
	ld c, l                                          ; $5683: $4d
	dec a                                            ; $5684: $3d
	and c                                            ; $5685: $a1
	ld hl, $ebeb                                     ; $5686: $21 $eb $eb
	xor b                                            ; $5689: $a8
	jr nz, @-$0e                                     ; $568a: $20 $f0

	ld a, [$bef0]                                    ; $568c: $fa $f0 $be
	add h                                            ; $568f: $84
	ld b, d                                          ; $5690: $42
	sbc d                                            ; $5691: $9a
	ld h, d                                          ; $5692: $62
	inc de                                           ; $5693: $13
	ldh a, [$a4]                                     ; $5694: $f0 $a4
	ld e, [hl]                                       ; $5696: $5e
	ccf                                              ; $5697: $3f

jr_097_5698:
	ldh a, [rAUD1LOW]                                ; $5698: $f0 $13

jr_097_569a:
	jr c, jr_097_56e5                                ; $569a: $38 $49

	ld [hl], a                                       ; $569c: $77
	jr c, jr_097_56f1                                ; $569d: $38 $52

	ld d, c                                          ; $569f: $51
	and b                                            ; $56a0: $a0
	cpl                                              ; $56a1: $2f
	ld b, e                                          ; $56a2: $43
	xor $1e                                          ; $56a3: $ee $1e
	db $ed                                           ; $56a5: $ed
	ld [hl], l                                       ; $56a6: $75
	ld e, e                                          ; $56a7: $5b
	ld d, [hl]                                       ; $56a8: $56
	xor h                                            ; $56a9: $ac
	ld a, [hl]                                       ; $56aa: $7e
	ld d, l                                          ; $56ab: $55
	ldh a, [rTAC]                                    ; $56ac: $f0 $07
	inc a                                            ; $56ae: $3c
	ld d, b                                          ; $56af: $50
	ld a, [hl-]                                      ; $56b0: $3a
	inc a                                            ; $56b1: $3c
	dec sp                                           ; $56b2: $3b
	dec a                                            ; $56b3: $3d
	ld b, d                                          ; $56b4: $42
	inc a                                            ; $56b5: $3c

jr_097_56b6:
	ld a, [hl-]                                      ; $56b6: $3a
	xor c                                            ; $56b7: $a9
	ld c, a                                          ; $56b8: $4f
	add hl, sp                                       ; $56b9: $39
	ldh a, [rHDMA4]                                  ; $56ba: $f0 $54
	ld a, $ee                                        ; $56bc: $3e $ee

jr_097_56be:
	rla                                              ; $56be: $17
	ld a, $3f                                        ; $56bf: $3e $3f
	ld l, h                                          ; $56c1: $6c
	ld c, [hl]                                       ; $56c2: $4e
	inc a                                            ; $56c3: $3c
	and b                                            ; $56c4: $a0
	ld b, [hl]                                       ; $56c5: $46
	dec sp                                           ; $56c6: $3b
	inc [hl]                                         ; $56c7: $34
	ld d, $a8                                        ; $56c8: $16 $a8
	db $ec                                           ; $56ca: $ec
	rst AddAOntoHL                                          ; $56cb: $ef
	pop af                                           ; $56cc: $f1
	ld l, $38                                        ; $56cd: $2e $38
	ccf                                              ; $56cf: $3f
	jr c, jr_097_570f                                ; $56d0: $38 $3d

	pop af                                           ; $56d2: $f1
	add hl, de                                       ; $56d3: $19
	pop af                                           ; $56d4: $f1
	dec c                                            ; $56d5: $0d
	xor h                                            ; $56d6: $ac
	ldh a, [$fa]                                     ; $56d7: $f0 $fa
	ld d, d                                          ; $56d9: $52
	ld a, c                                          ; $56da: $79
	ccf                                              ; $56db: $3f
	ld c, a                                          ; $56dc: $4f
	ld d, b                                          ; $56dd: $50
	jr c, jr_097_5732                                ; $56de: $38 $52

	ld a, $3d                                        ; $56e0: $3e $3d
	and b                                            ; $56e2: $a0
	add e                                            ; $56e3: $83
	ld l, c                                          ; $56e4: $69

jr_097_56e5:
	ld e, c                                          ; $56e5: $59
	ldh a, [rP1]                                     ; $56e6: $f0 $00
	ld e, c                                          ; $56e8: $59
	ldh a, [$67]                                     ; $56e9: $f0 $67
	ldh a, [$65]                                     ; $56eb: $f0 $65
	ld c, e                                          ; $56ed: $4b
	xor h                                            ; $56ee: $ac
	ldh a, [rAUD4ENV]                                ; $56ef: $f0 $21

jr_097_56f1:
	ldh a, [rAUD4GO]                                 ; $56f1: $f0 $23
	jr c, jr_097_573e                                ; $56f3: $38 $49

	ld [hl], a                                       ; $56f5: $77
	jr c, jr_097_574a                                ; $56f6: $38 $52

	ld a, $3d                                        ; $56f8: $3e $3d
	ld e, l                                          ; $56fa: $5d
	ld e, d                                          ; $56fb: $5a
	ld c, b                                          ; $56fc: $48
	and b                                            ; $56fd: $a0
	cpl                                              ; $56fe: $2f
	ld b, e                                          ; $56ff: $43
	ld e, l                                          ; $5700: $5d
	ld e, d                                          ; $5701: $5a
	ld c, b                                          ; $5702: $48
	and c                                            ; $5703: $a1
	ld l, e                                          ; $5704: $6b
	ld h, d                                          ; $5705: $62
	add d                                            ; $5706: $82
	jr c, jr_097_5746                                ; $5707: $38 $3d

	jr c, jr_097_574d                                ; $5709: $38 $42

	inc a                                            ; $570b: $3c
	xor h                                            ; $570c: $ac
	ret                                              ; $570d: $c9


	ld [hl], d                                       ; $570e: $72

jr_097_570f:
	ld e, [hl]                                       ; $570f: $5e
	ld a, [hl-]                                      ; $5710: $3a
	ld d, l                                          ; $5711: $55
	ccf                                              ; $5712: $3f
	ld c, b                                          ; $5713: $48
	dec [hl]                                         ; $5714: $35
	inc hl                                           ; $5715: $23
	inc de                                           ; $5716: $13
	ld [hl], b                                       ; $5717: $70
	inc [hl]                                         ; $5718: $34
	inc h                                            ; $5719: $24
	db $eb                                           ; $571a: $eb
	ccf                                              ; $571b: $3f
	and b                                            ; $571c: $a0
	cpl                                              ; $571d: $2f
	ld b, e                                          ; $571e: $43
	jr c, jr_097_578f                                ; $571f: $38 $6e

	inc [hl]                                         ; $5721: $34
	ld b, [hl]                                       ; $5722: $46
	ld d, a                                          ; $5723: $57
	ld d, e                                          ; $5724: $53
	ld c, c                                          ; $5725: $49
	add hl, sp                                       ; $5726: $39
	xor b                                            ; $5727: $a8
	ldh a, [$60]                                     ; $5728: $f0 $60
	ld e, c                                          ; $572a: $59
	ldh a, [rAUD3LOW]                                ; $572b: $f0 $1d
	inc a                                            ; $572d: $3c
	ld [hl], h                                       ; $572e: $74
	ld c, b                                          ; $572f: $48
	dec [hl]                                         ; $5730: $35
	inc hl                                           ; $5731: $23

jr_097_5732:
	inc de                                           ; $5732: $13
	ldh a, [$b6]                                     ; $5733: $f0 $b6
	ld b, a                                          ; $5735: $47
	ldh a, [$a4]                                     ; $5736: $f0 $a4
	ld e, [hl]                                       ; $5738: $5e
	ccf                                              ; $5739: $3f
	ld a, [hl-]                                      ; $573a: $3a
	inc a                                            ; $573b: $3c
	dec sp                                           ; $573c: $3b
	dec a                                            ; $573d: $3d

jr_097_573e:
	ld a, [hl-]                                      ; $573e: $3a
	ld [hl], h                                       ; $573f: $74
	and b                                            ; $5740: $a0
	ld [$481e], a                                    ; $5741: $ea $1e $48
	and b                                            ; $5744: $a0
	cpl                                              ; $5745: $2f

jr_097_5746:
	ld b, e                                          ; $5746: $43
	ld c, c                                          ; $5747: $49
	ld d, a                                          ; $5748: $57
	ld b, [hl]                                       ; $5749: $46

jr_097_574a:
	ld e, [hl]                                       ; $574a: $5e
	sbc h                                            ; $574b: $9c
	inc de                                           ; $574c: $13

jr_097_574d:
	ldh a, [c]                                       ; $574d: $f2
	ld [hl], e                                       ; $574e: $73
	pop af                                           ; $574f: $f1
	add a                                            ; $5750: $87
	inc [hl]                                         ; $5751: $34
	ldh a, [$f9]                                     ; $5752: $f0 $f9
	pop af                                           ; $5754: $f1
	ldh [c], a                                       ; $5755: $e2
	inc [hl]                                         ; $5756: $34
	ldh a, [rHDMA2]                                  ; $5757: $f0 $52
	ld c, d                                          ; $5759: $4a
	inc de                                           ; $575a: $13
	pop af                                           ; $575b: $f1
	ld l, $38                                        ; $575c: $2e $38
	ccf                                              ; $575e: $3f
	ld l, h                                          ; $575f: $6c
	ld c, [hl]                                       ; $5760: $4e
	inc a                                            ; $5761: $3c
	and b                                            ; $5762: $a0
	ldh a, [rAUD4ENV]                                ; $5763: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5765: $f0 $23
	jr c, jr_097_57b2                                ; $5767: $38 $49

	inc de                                           ; $5769: $13
	ld [hl], a                                       ; $576a: $77
	jr c, jr_097_57bf                                ; $576b: $38 $52

	ld a, $3d                                        ; $576d: $3e $3d
	ld e, l                                          ; $576f: $5d
	ld e, d                                          ; $5770: $5a
	xor e                                            ; $5771: $ab
	db $ec                                           ; $5772: $ec
	ld h, a                                          ; $5773: $67
	ld b, l                                          ; $5774: $45
	ld d, l                                          ; $5775: $55
	ldh a, [rTAC]                                    ; $5776: $f0 $07
	inc a                                            ; $5778: $3c
	ld d, b                                          ; $5779: $50
	ld a, [hl-]                                      ; $577a: $3a
	ld d, l                                          ; $577b: $55
	ccf                                              ; $577c: $3f
	ld c, b                                          ; $577d: $48
	and b                                            ; $577e: $a0
	cpl                                              ; $577f: $2f
	ld b, e                                          ; $5780: $43
	ldh a, [$60]                                     ; $5781: $f0 $60
	ld e, c                                          ; $5783: $59
	ldh a, [rAUD3LOW]                                ; $5784: $f0 $1d
	inc a                                            ; $5786: $3c
	ld [hl], h                                       ; $5787: $74
	xor l                                            ; $5788: $ad
	ldh a, [$b6]                                     ; $5789: $f0 $b6
	ld b, a                                          ; $578b: $47
	ldh a, [$a4]                                     ; $578c: $f0 $a4
	ld e, [hl]                                       ; $578e: $5e

jr_097_578f:
	ccf                                              ; $578f: $3f
	ld a, [hl-]                                      ; $5790: $3a
	inc a                                            ; $5791: $3c
	dec sp                                           ; $5792: $3b
	dec a                                            ; $5793: $3d
	ld a, [hl-]                                      ; $5794: $3a
	ld [hl], h                                       ; $5795: $74
	and b                                            ; $5796: $a0
	db $eb                                           ; $5797: $eb
	ccf                                              ; $5798: $3f
	dec [hl]                                         ; $5799: $35
	inc hl                                           ; $579a: $23
	inc de                                           ; $579b: $13
	ld l, a                                          ; $579c: $6f
	db $ed                                           ; $579d: $ed
	ld b, e                                          ; $579e: $43
	inc [hl]                                         ; $579f: $34
	ld b, b                                          ; $57a0: $40
	ld b, c                                          ; $57a1: $41
	ld a, [hl-]                                      ; $57a2: $3a
	ld b, a                                          ; $57a3: $47
	pop af                                           ; $57a4: $f1
	ld l, $5d                                        ; $57a5: $2e $5d
	ld c, [hl]                                       ; $57a7: $4e
	inc de                                           ; $57a8: $13
	ld h, e                                          ; $57a9: $63
	ld e, l                                          ; $57aa: $5d
	db $ec                                           ; $57ab: $ec
	ret c                                            ; $57ac: $d8

	ld b, d                                          ; $57ad: $42
	ld b, a                                          ; $57ae: $47
	ld c, b                                          ; $57af: $48
	and b                                            ; $57b0: $a0
	cpl                                              ; $57b1: $2f

jr_097_57b2:
	ld b, e                                          ; $57b2: $43
	jr c, @+$70                                      ; $57b3: $38 $6e

	inc [hl]                                         ; $57b5: $34
	ld b, [hl]                                       ; $57b6: $46
	ld d, a                                          ; $57b7: $57
	ld d, e                                          ; $57b8: $53
	ld c, c                                          ; $57b9: $49
	add hl, sp                                       ; $57ba: $39
	xor b                                            ; $57bb: $a8
	ld c, c                                          ; $57bc: $49
	ld d, a                                          ; $57bd: $57
	ld b, [hl]                                       ; $57be: $46

jr_097_57bf:
	ld e, [hl]                                       ; $57bf: $5e
	sbc h                                            ; $57c0: $9c
	inc de                                           ; $57c1: $13
	ld d, d                                          ; $57c2: $52
	dec a                                            ; $57c3: $3d
	pop af                                           ; $57c4: $f1
	ld l, $38                                        ; $57c5: $2e $38
	ccf                                              ; $57c7: $3f
	ld l, h                                          ; $57c8: $6c
	ld c, [hl]                                       ; $57c9: $4e
	ld b, l                                          ; $57ca: $45
	and b                                            ; $57cb: $a0
	ldh a, [rAUD4ENV]                                ; $57cc: $f0 $21
	ldh a, [rAUD4GO]                                 ; $57ce: $f0 $23
	jr c, jr_097_581b                                ; $57d0: $38 $49

	inc de                                           ; $57d2: $13
	ld [hl], a                                       ; $57d3: $77
	jr c, jr_097_5828                                ; $57d4: $38 $52

	ld a, $3d                                        ; $57d6: $3e $3d
	ld e, l                                          ; $57d8: $5d
	ld e, d                                          ; $57d9: $5a
	xor h                                            ; $57da: $ac
	ld b, [hl]                                       ; $57db: $46
	ld d, d                                          ; $57dc: $52
	ld d, a                                          ; $57dd: $57
	inc [hl]                                         ; $57de: $34
	db $ec                                           ; $57df: $ec
	ld h, a                                          ; $57e0: $67
	inc de                                           ; $57e1: $13
	ld [hl], d                                       ; $57e2: $72
	ld e, [hl]                                       ; $57e3: $5e
	ld d, d                                          ; $57e4: $52
	ld a, c                                          ; $57e5: $79
	ld b, c                                          ; $57e6: $41
	ld c, d                                          ; $57e7: $4a
	ld a, $3d                                        ; $57e8: $3e $3d
	and b                                            ; $57ea: $a0
	cpl                                              ; $57eb: $2f
	ld b, e                                          ; $57ec: $43
	ldh a, [$60]                                     ; $57ed: $f0 $60
	ld e, c                                          ; $57ef: $59
	ldh a, [rAUD3LOW]                                ; $57f0: $f0 $1d
	inc a                                            ; $57f2: $3c
	ld [hl], h                                       ; $57f3: $74
	xor b                                            ; $57f4: $a8
	ld b, l                                          ; $57f5: $45
	ld a, $92                                        ; $57f6: $3e $92
	adc [hl]                                         ; $57f8: $8e
	dec sp                                           ; $57f9: $3b
	ccf                                              ; $57fa: $3f
	ld l, h                                          ; $57fb: $6c
	ld c, [hl]                                       ; $57fc: $4e
	inc a                                            ; $57fd: $3c
	ld a, [hl-]                                      ; $57fe: $3a
	xor b                                            ; $57ff: $a8
	ld b, [hl]                                       ; $5800: $46
	ld d, a                                          ; $5801: $57
	ld d, e                                          ; $5802: $53
	ld c, c                                          ; $5803: $49
	add hl, sp                                       ; $5804: $39
	inc [hl]                                         ; $5805: $34
	db $ec                                           ; $5806: $ec
	rst SubAFromDE                                          ; $5807: $df
	and b                                            ; $5808: $a0
	cpl                                              ; $5809: $2f
	ld b, e                                          ; $580a: $43
	ld b, [hl]                                       ; $580b: $46
	dec sp                                           ; $580c: $3b
	inc [hl]                                         ; $580d: $34
	db $ec                                           ; $580e: $ec
	rst SubAFromDE                                          ; $580f: $df
	xor b                                            ; $5810: $a8
	jp hl                                            ; $5811: $e9


jr_097_5812:
	sub $13                                          ; $5812: $d6 $13
	ldh a, [$fa]                                     ; $5814: $f0 $fa
	ld b, c                                          ; $5816: $41
	ld c, d                                          ; $5817: $4a
	ld d, l                                          ; $5818: $55
	ld c, l                                          ; $5819: $4d
	dec a                                            ; $581a: $3d

jr_097_581b:
	and c                                            ; $581b: $a1
	ld hl, $ebeb                                     ; $581c: $21 $eb $eb
	dec [hl]                                         ; $581f: $35
	inc hl                                           ; $5820: $23
	inc de                                           ; $5821: $13
	jr nz, jr_097_5812                               ; $5822: $20 $ee

	ld e, $f1                                        ; $5824: $1e $f1
	add hl, de                                       ; $5826: $19
	pop af                                           ; $5827: $f1

jr_097_5828:
	dec c                                            ; $5828: $0d
	ld c, d                                          ; $5829: $4a
	ld l, e                                          ; $582a: $6b
	ld h, d                                          ; $582b: $62
	inc de                                           ; $582c: $13
	add d                                            ; $582d: $82
	jr c, jr_097_586d                                ; $582e: $38 $3d

	inc a                                            ; $5830: $3c
	dec sp                                           ; $5831: $3b
	dec a                                            ; $5832: $3d
	ld b, d                                          ; $5833: $42
	and c                                            ; $5834: $a1
	cpl                                              ; $5835: $2f
	ld b, e                                          ; $5836: $43
	ld l, e                                          ; $5837: $6b
	ld d, e                                          ; $5838: $53
	add d                                            ; $5839: $82
	jr c, jr_097_5879                                ; $583a: $38 $3d

	jr c, @+$3e                                      ; $583c: $38 $3c

	xor l                                            ; $583e: $ad
	ldh a, [$60]                                     ; $583f: $f0 $60
	ld e, c                                          ; $5841: $59
	ldh a, [rAUD3LOW]                                ; $5842: $f0 $1d
	ld a, [hl-]                                      ; $5844: $3a
	ld b, c                                          ; $5845: $41
	ccf                                              ; $5846: $3f
	xor h                                            ; $5847: $ac
	ldh a, [$a4]                                     ; $5848: $f0 $a4
	ld e, [hl]                                       ; $584a: $5e
	ccf                                              ; $584b: $3f
	ld a, [hl-]                                      ; $584c: $3a
	inc a                                            ; $584d: $3c
	dec sp                                           ; $584e: $3b
	dec a                                            ; $584f: $3d
	inc a                                            ; $5850: $3c
	ld d, b                                          ; $5851: $50
	ld a, [hl-]                                      ; $5852: $3a
	ld [hl], h                                       ; $5853: $74
	ld c, b                                          ; $5854: $48
	and b                                            ; $5855: $a0
	cpl                                              ; $5856: $2f
	ld b, e                                          ; $5857: $43
	ld [$a932], a                                    ; $5858: $ea $32 $a9
	ldh a, [$80]                                     ; $585b: $f0 $80
	ldh a, [$c5]                                     ; $585d: $f0 $c5
	inc [hl]                                         ; $585f: $34
	ldh a, [$67]                                     ; $5860: $f0 $67
	ldh a, [$9f]                                     ; $5862: $f0 $9f
	ld b, [hl]                                       ; $5864: $46
	ld c, [hl]                                       ; $5865: $4e
	ld b, c                                          ; $5866: $41
	ld b, h                                          ; $5867: $44
	ld e, l                                          ; $5868: $5d
	ld e, d                                          ; $5869: $5a
	and b                                            ; $586a: $a0
	ld d, c                                          ; $586b: $51
	ld [hl], b                                       ; $586c: $70

jr_097_586d:
	ld d, l                                          ; $586d: $55
	cp e                                             ; $586e: $bb
	ld c, d                                          ; $586f: $4a
	ld d, c                                          ; $5870: $51
	xor b                                            ; $5871: $a8
	ld l, a                                          ; $5872: $6f
	ld c, a                                          ; $5873: $4f
	inc [hl]                                         ; $5874: $34
	xor $1e                                          ; $5875: $ee $1e
	sbc l                                            ; $5877: $9d
	ld d, b                                          ; $5878: $50

jr_097_5879:
	jr c, jr_097_588e                                ; $5879: $38 $13

	pop af                                           ; $587b: $f1
	ld l, $38                                        ; $587c: $2e $38
	ccf                                              ; $587e: $3f
	ld l, h                                          ; $587f: $6c
	dec a                                            ; $5880: $3d
	jr c, jr_097_58cd                                ; $5881: $38 $4a

	ld d, c                                          ; $5883: $51
	ld c, h                                          ; $5884: $4c
	and b                                            ; $5885: $a0
	cpl                                              ; $5886: $2f
	ld b, e                                          ; $5887: $43
	jr c, jr_097_58f8                                ; $5888: $38 $6e

	jr c, jr_097_58fa                                ; $588a: $38 $6e

	xor b                                            ; $588c: $a8
	db $ec                                           ; $588d: $ec

jr_097_588e:
	rst SubAFromDE                                          ; $588e: $df
	ld b, a                                          ; $588f: $47
	ld c, e                                          ; $5890: $4b
	xor h                                            ; $5891: $ac
	ld d, d                                          ; $5892: $52
	ld b, h                                          ; $5893: $44
	db $f4                                           ; $5894: $f4
	sbc h                                            ; $5895: $9c
	ld a, e                                          ; $5896: $7b
	ld a, [hl-]                                      ; $5897: $3a
	jr c, @+$47                                      ; $5898: $38 $45

	and b                                            ; $589a: $a0
	ld b, b                                          ; $589b: $40
	ld b, c                                          ; $589c: $41
	ld a, [hl-]                                      ; $589d: $3a
	ld d, h                                          ; $589e: $54
	ld c, c                                          ; $589f: $49
	ld a, [hl-]                                      ; $58a0: $3a
	jr c, jr_097_58ed                                ; $58a1: $38 $4a

	ld d, c                                          ; $58a3: $51
	xor b                                            ; $58a4: $a8
	ldh a, [$d6]                                     ; $58a5: $f0 $d6
	ld b, d                                          ; $58a7: $42
	ldh a, [$a5]                                     ; $58a8: $f0 $a5
	ldh a, [c]                                       ; $58aa: $f2
	ld a, [bc]                                       ; $58ab: $0a
	ld c, a                                          ; $58ac: $4f
	xor h                                            ; $58ad: $ac
	ld d, d                                          ; $58ae: $52
	dec a                                            ; $58af: $3d
	ldh a, [$fa]                                     ; $58b0: $f0 $fa
	ld d, d                                          ; $58b2: $52
	ld a, c                                          ; $58b3: $79
	ccf                                              ; $58b4: $3f
	ld d, l                                          ; $58b5: $55
	ld b, h                                          ; $58b6: $44
	ld e, b                                          ; $58b7: $58
	jr c, jr_097_5906                                ; $58b8: $38 $4c

	and b                                            ; $58ba: $a0
	cpl                                              ; $58bb: $2f
	ld b, e                                          ; $58bc: $43
	sub c                                            ; $58bd: $91
	ldh a, [$59]                                     ; $58be: $f0 $59
	xor b                                            ; $58c0: $a8
	db $ec                                           ; $58c1: $ec
	cp b                                             ; $58c2: $b8
	ld b, a                                          ; $58c3: $47
	inc de                                           ; $58c4: $13
	ldh a, [$fa]                                     ; $58c5: $f0 $fa
	ld b, c                                          ; $58c7: $41
	ld c, d                                          ; $58c8: $4a
	ld c, a                                          ; $58c9: $4f
	ld d, b                                          ; $58ca: $50
	add hl, sp                                       ; $58cb: $39
	add b                                            ; $58cc: $80

jr_097_58cd:
	ld c, a                                          ; $58cd: $4f
	ld d, a                                          ; $58ce: $57
	ld b, h                                          ; $58cf: $44
	ld b, l                                          ; $58d0: $45
	and b                                            ; $58d1: $a0
	adc b                                            ; $58d2: $88
	sub c                                            ; $58d3: $91
	ld c, d                                          ; $58d4: $4a
	ld d, c                                          ; $58d5: $51
	inc a                                            ; $58d6: $3c
	ld [hl], $23                                     ; $58d7: $36 $23
	inc de                                           ; $58d9: $13
	ld c, c                                          ; $58da: $49
	ccf                                              ; $58db: $3f
	ld c, a                                          ; $58dc: $4f
	inc [hl]                                         ; $58dd: $34
	ldh a, [$29]                                     ; $58de: $f0 $29
	ld a, $38                                        ; $58e0: $3e $38
	ld c, d                                          ; $58e2: $4a
	ld d, c                                          ; $58e3: $51
	and b                                            ; $58e4: $a0
	ld d, c                                          ; $58e5: $51
	ld [hl], b                                       ; $58e6: $70
	ld d, l                                          ; $58e7: $55
	jr c, jr_097_5922                                ; $58e8: $38 $38

	ld c, d                                          ; $58ea: $4a
	ld d, c                                          ; $58eb: $51
	ld c, h                                          ; $58ec: $4c

jr_097_58ed:
	xor b                                            ; $58ed: $a8
	ld l, a                                          ; $58ee: $6f
	ld c, a                                          ; $58ef: $4f
	inc [hl]                                         ; $58f0: $34
	xor $1e                                          ; $58f1: $ee $1e
	sbc l                                            ; $58f3: $9d
	ld d, b                                          ; $58f4: $50
	jr c, jr_097_590a                                ; $58f5: $38 $13

	pop af                                           ; $58f7: $f1

jr_097_58f8:
	ld l, $5d                                        ; $58f8: $2e $5d

jr_097_58fa:
	dec a                                            ; $58fa: $3d
	ld d, b                                          ; $58fb: $50
	jr c, jr_097_5936                                ; $58fc: $38 $38

	ld b, d                                          ; $58fe: $42
	ld b, a                                          ; $58ff: $47
	ld c, b                                          ; $5900: $48
	and b                                            ; $5901: $a0
	cpl                                              ; $5902: $2f
	ld b, e                                          ; $5903: $43
	ld b, b                                          ; $5904: $40
	inc [hl]                                         ; $5905: $34

jr_097_5906:
	ld b, b                                          ; $5906: $40
	ld b, c                                          ; $5907: $41
	ld a, [hl-]                                      ; $5908: $3a
	ld d, h                                          ; $5909: $54

jr_097_590a:
	ld c, c                                          ; $590a: $49
	ld a, [hl-]                                      ; $590b: $3a
	jr c, jr_097_5953                                ; $590c: $38 $45

	xor b                                            ; $590e: $a8
	ld c, d                                          ; $590f: $4a
	ld c, a                                          ; $5910: $4f
	inc [hl]                                         ; $5911: $34
	db $ec                                           ; $5912: $ec
	cp c                                             ; $5913: $b9
	xor b                                            ; $5914: $a8
	ld a, a                                          ; $5915: $7f
	ld b, a                                          ; $5916: $47
	sub [hl]                                         ; $5917: $96
	dec sp                                           ; $5918: $3b
	ccf                                              ; $5919: $3f
	ld c, a                                          ; $591a: $4f
	ld d, b                                          ; $591b: $50
	ld e, [hl]                                       ; $591c: $5e
	ccf                                              ; $591d: $3f
	and b                                            ; $591e: $a0
	ldh a, [$d6]                                     ; $591f: $f0 $d6
	ld b, d                                          ; $5921: $42

jr_097_5922:
	ldh a, [$a5]                                     ; $5922: $f0 $a5
	ldh a, [c]                                       ; $5924: $f2
	ld a, [bc]                                       ; $5925: $0a
	ld c, a                                          ; $5926: $4f
	xor h                                            ; $5927: $ac
	ld d, d                                          ; $5928: $52
	dec a                                            ; $5929: $3d
	ldh a, [$fa]                                     ; $592a: $f0 $fa
	ld d, d                                          ; $592c: $52
	ld a, c                                          ; $592d: $79
	ccf                                              ; $592e: $3f
	ld d, l                                          ; $592f: $55
	ld b, h                                          ; $5930: $44
	ld e, b                                          ; $5931: $58
	jr c, jr_097_5980                                ; $5932: $38 $4c

	and b                                            ; $5934: $a0
	cpl                                              ; $5935: $2f

jr_097_5936:
	ld b, e                                          ; $5936: $43
	sub c                                            ; $5937: $91
	ldh a, [$59]                                     ; $5938: $f0 $59
	xor b                                            ; $593a: $a8
	db $ec                                           ; $593b: $ec
	cp b                                             ; $593c: $b8
	ld b, a                                          ; $593d: $47
	inc de                                           ; $593e: $13
	ldh a, [$fa]                                     ; $593f: $f0 $fa
	ld b, c                                          ; $5941: $41
	ld c, d                                          ; $5942: $4a
	ld c, a                                          ; $5943: $4f
	ld d, b                                          ; $5944: $50
	ld h, h                                          ; $5945: $64
	add hl, sp                                       ; $5946: $39
	ld c, c                                          ; $5947: $49
	ld [hl], a                                       ; $5948: $77
	dec sp                                           ; $5949: $3b
	ccf                                              ; $594a: $3f
	ld c, [hl]                                       ; $594b: $4e
	ld b, l                                          ; $594c: $45
	and b                                            ; $594d: $a0
	adc b                                            ; $594e: $88
	sub c                                            ; $594f: $91
	ld c, d                                          ; $5950: $4a
	ld d, c                                          ; $5951: $51
	inc a                                            ; $5952: $3c

jr_097_5953:
	ld [hl], $23                                     ; $5953: $36 $23
	inc de                                           ; $5955: $13
	jp z, $90ac                                      ; $5956: $ca $ac $90

	ld a, $6c                                        ; $5959: $3e $6c
	ld b, a                                          ; $595b: $47
	sbc c                                            ; $595c: $99
	dec sp                                           ; $595d: $3b

jr_097_595e:
	ccf                                              ; $595e: $3f
	ld d, d                                          ; $595f: $52
	ld d, c                                          ; $5960: $51
	ld c, h                                          ; $5961: $4c
	and b                                            ; $5962: $a0
	cpl                                              ; $5963: $2f
	ld b, e                                          ; $5964: $43
	ld [$a932], a                                    ; $5965: $ea $32 $a9
	add sp, -$0c                                     ; $5968: $e8 $f4
	and b                                            ; $596a: $a0
	ld d, c                                          ; $596b: $51
	ld [hl], b                                       ; $596c: $70
	ld d, l                                          ; $596d: $55
	cp e                                             ; $596e: $bb
	ld c, d                                          ; $596f: $4a
	ld d, c                                          ; $5970: $51
	xor b                                            ; $5971: $a8
	jr c, jr_097_59ac                                ; $5972: $38 $38

	ldh a, [$a5]                                     ; $5974: $f0 $a5
	ldh a, [c]                                       ; $5976: $f2
	ld a, [bc]                                       ; $5977: $0a
	ld b, h                                          ; $5978: $44
	ld c, c                                          ; $5979: $49
	ld [hl], a                                       ; $597a: $77
	jr c, jr_097_59cf                                ; $597b: $38 $52

	ld a, $3d                                        ; $597d: $3e $3d
	and b                                            ; $597f: $a0

jr_097_5980:
	cpl                                              ; $5980: $2f
	ld b, e                                          ; $5981: $43
	rst JumpTable                                          ; $5982: $c7
	xor c                                            ; $5983: $a9
	ld b, [hl]                                       ; $5984: $46
	ld d, a                                          ; $5985: $57
	ld d, e                                          ; $5986: $53
	ld c, c                                          ; $5987: $49
	add hl, sp                                       ; $5988: $39
	and b                                            ; $5989: $a0
	ldh a, [$d6]                                     ; $598a: $f0 $d6
	ld b, d                                          ; $598c: $42
	ldh a, [$a5]                                     ; $598d: $f0 $a5
	ldh a, [c]                                       ; $598f: $f2
	ld a, [bc]                                       ; $5990: $0a
	ld c, a                                          ; $5991: $4f
	xor h                                            ; $5992: $ac
	sub b                                            ; $5993: $90
	ld a, $6c                                        ; $5994: $3e $6c
	ld b, a                                          ; $5996: $47
	ld a, $3f                                        ; $5997: $3e $3f
	ld d, d                                          ; $5999: $52
	ld d, c                                          ; $599a: $51
	ld c, h                                          ; $599b: $4c
	and b                                            ; $599c: $a0
	ld hl, $ebeb                                     ; $599d: $21 $eb $eb
	xor b                                            ; $59a0: $a8
	jr nz, jr_097_595e                               ; $59a1: $20 $bb

	ld c, c                                          ; $59a3: $49
	ld [hl], a                                       ; $59a4: $77
	jr c, jr_097_59f9                                ; $59a5: $38 $52

	ld d, c                                          ; $59a7: $51
	ld b, l                                          ; $59a8: $45
	and b                                            ; $59a9: $a0
	cpl                                              ; $59aa: $2f
	ld b, e                                          ; $59ab: $43

jr_097_59ac:
	ld b, b                                          ; $59ac: $40
	add hl, sp                                       ; $59ad: $39
	inc a                                            ; $59ae: $3c
	inc [hl]                                         ; $59af: $34
	db $ec                                           ; $59b0: $ec
	cp c                                             ; $59b1: $b9
	xor b                                            ; $59b2: $a8
	ld b, b                                          ; $59b3: $40
	ld b, d                                          ; $59b4: $42
	db $f4                                           ; $59b5: $f4
	add hl, de                                       ; $59b6: $19
	ld b, a                                          ; $59b7: $47
	ld c, e                                          ; $59b8: $4b
	xor h                                            ; $59b9: $ac
	add b                                            ; $59ba: $80
	ld d, d                                          ; $59bb: $52
	ld d, b                                          ; $59bc: $50
	ld a, [hl-]                                      ; $59bd: $3a
	ld b, b                                          ; $59be: $40
	add hl, sp                                       ; $59bf: $39
	ld a, [hl-]                                      ; $59c0: $3a
	ldh a, [$d2]                                     ; $59c1: $f0 $d2
	ld a, $3f                                        ; $59c3: $3e $3f
	ld c, [hl]                                       ; $59c5: $4e
	ld b, l                                          ; $59c6: $45
	ld a, [hl-]                                      ; $59c7: $3a
	ld c, b                                          ; $59c8: $48
	and b                                            ; $59c9: $a0
	cpl                                              ; $59ca: $2f
	ld b, e                                          ; $59cb: $43
	db $eb                                           ; $59cc: $eb
	ld d, b                                          ; $59cd: $50
	xor c                                            ; $59ce: $a9

jr_097_59cf:
	add sp, -$0c                                     ; $59cf: $e8 $f4
	and b                                            ; $59d1: $a0
	ld c, c                                          ; $59d2: $49
	ccf                                              ; $59d3: $3f
	ld c, a                                          ; $59d4: $4f
	db $eb                                           ; $59d5: $eb
	ld d, h                                          ; $59d6: $54
	inc de                                           ; $59d7: $13
	ldh a, [$a5]                                     ; $59d8: $f0 $a5
	ldh a, [c]                                       ; $59da: $f2
	ld a, [bc]                                       ; $59db: $0a
	ld c, d                                          ; $59dc: $4a
	ld a, $3d                                        ; $59dd: $3e $3d
	xor b                                            ; $59df: $a8
	ld c, a                                          ; $59e0: $4f
	add hl, sp                                       ; $59e1: $39
	inc [hl]                                         ; $59e2: $34
	db $ed                                           ; $59e3: $ed
	ld h, l                                          ; $59e4: $65
	ld a, $61                                        ; $59e5: $3e $61
	ld d, [hl]                                       ; $59e7: $56
	dec sp                                           ; $59e8: $3b
	ccf                                              ; $59e9: $3f
	ld c, b                                          ; $59ea: $48
	and b                                            ; $59eb: $a0
	cpl                                              ; $59ec: $2f
	ld b, e                                          ; $59ed: $43
	ld b, b                                          ; $59ee: $40
	add hl, sp                                       ; $59ef: $39
	xor c                                            ; $59f0: $a9
	ld b, [hl]                                       ; $59f1: $46
	ld d, a                                          ; $59f2: $57
	ld d, e                                          ; $59f3: $53
	ld c, c                                          ; $59f4: $49
	add hl, sp                                       ; $59f5: $39
	xor b                                            ; $59f6: $a8
	ldh a, [$80]                                     ; $59f7: $f0 $80

jr_097_59f9:
	ldh a, [$c5]                                     ; $59f9: $f0 $c5
	inc [hl]                                         ; $59fb: $34
	ld a, a                                          ; $59fc: $7f
	ld b, a                                          ; $59fd: $47
	sub [hl]                                         ; $59fe: $96
	dec sp                                           ; $59ff: $3b
	ccf                                              ; $5a00: $3f
	ld c, [hl]                                       ; $5a01: $4e
	ld b, c                                          ; $5a02: $41
	ld b, h                                          ; $5a03: $44
	and b                                            ; $5a04: $a0
	ld l, d                                          ; $5a05: $6a
	ldh a, [$0d]                                     ; $5a06: $f0 $0d
	ld b, d                                          ; $5a08: $42
	db $ed                                           ; $5a09: $ed
	add hl, bc                                       ; $5a0a: $09
	ld b, a                                          ; $5a0b: $47
	xor h                                            ; $5a0c: $ac
	db $ed                                           ; $5a0d: $ed
	sub e                                            ; $5a0e: $93
	ld a, $3f                                        ; $5a0f: $3e $3f
	ld l, h                                          ; $5a11: $6c
	dec a                                            ; $5a12: $3d
	ld d, b                                          ; $5a13: $50
	inc de                                           ; $5a14: $13
	ld e, d                                          ; $5a15: $5a
	add hl, sp                                       ; $5a16: $39
	ld c, d                                          ; $5a17: $4a
	ld a, $66                                        ; $5a18: $3e $66
	add hl, sp                                       ; $5a1a: $39
	and c                                            ; $5a1b: $a1
	cpl                                              ; $5a1c: $2f
	ld b, e                                          ; $5a1d: $43
	db $ed                                           ; $5a1e: $ed
	add hl, bc                                       ; $5a1f: $09
	inc a                                            ; $5a20: $3c
	xor l                                            ; $5a21: $ad
	ld b, b                                          ; $5a22: $40
	ld d, h                                          ; $5a23: $54
	ld d, d                                          ; $5a24: $52
	ld c, d                                          ; $5a25: $4a
	ld b, d                                          ; $5a26: $42
	ld [hl], l                                       ; $5a27: $75
	pop af                                           ; $5a28: $f1
	dec e                                            ; $5a29: $1d
	ldh a, [$03]                                     ; $5a2a: $f0 $03
	ld e, e                                          ; $5a2c: $5b
	ld d, [hl]                                       ; $5a2d: $56
	inc de                                           ; $5a2e: $13
	ld a, [hl-]                                      ; $5a2f: $3a
	jr c, jr_097_5a7b                                ; $5a30: $38 $49

	ld [hl], a                                       ; $5a32: $77
	add hl, sp                                       ; $5a33: $39
	ld e, l                                          ; $5a34: $5d
	ld e, d                                          ; $5a35: $5a
	ld a, [hl-]                                      ; $5a36: $3a
	ld [hl], h                                       ; $5a37: $74
	and b                                            ; $5a38: $a0
	ld b, b                                          ; $5a39: $40
	ld b, c                                          ; $5a3a: $41
	ld a, [hl-]                                      ; $5a3b: $3a
	ld d, h                                          ; $5a3c: $54
	ld c, c                                          ; $5a3d: $49
	ld a, [hl-]                                      ; $5a3e: $3a
	jr c, jr_097_5a8a                                ; $5a3f: $38 $49

	inc de                                           ; $5a41: $13
	ld [hl], a                                       ; $5a42: $77
	jr c, jr_097_5a97                                ; $5a43: $38 $52

	ld d, c                                          ; $5a45: $51
	ld b, l                                          ; $5a46: $45
	and b                                            ; $5a47: $a0
	cpl                                              ; $5a48: $2f
	ld b, e                                          ; $5a49: $43
	or h                                             ; $5a4a: $b4
	xor h                                            ; $5a4b: $ac
	sub d                                            ; $5a4c: $92
	adc [hl]                                         ; $5a4d: $8e
	dec sp                                           ; $5a4e: $3b
	ccf                                              ; $5a4f: $3f
	ld l, h                                          ; $5a50: $6c
	ld c, [hl]                                       ; $5a51: $4e
	inc a                                            ; $5a52: $3c
	ld a, [hl-]                                      ; $5a53: $3a
	and b                                            ; $5a54: $a0
	cpl                                              ; $5a55: $2f
	ld b, e                                          ; $5a56: $43
	db $eb                                           ; $5a57: $eb
	ld d, b                                          ; $5a58: $50
	xor c                                            ; $5a59: $a9
	ldh a, [$80]                                     ; $5a5a: $f0 $80
	ldh a, [$c5]                                     ; $5a5c: $f0 $c5
	inc [hl]                                         ; $5a5e: $34
	ldh a, [$67]                                     ; $5a5f: $f0 $67
	ldh a, [$9f]                                     ; $5a61: $f0 $9f
	ld b, [hl]                                       ; $5a63: $46
	ld c, [hl]                                       ; $5a64: $4e
	ld b, c                                          ; $5a65: $41
	ld b, h                                          ; $5a66: $44
	ld e, l                                          ; $5a67: $5d
	ld e, d                                          ; $5a68: $5a
	and b                                            ; $5a69: $a0
	db $eb                                           ; $5a6a: $eb
	ld d, h                                          ; $5a6b: $54
	inc de                                           ; $5a6c: $13
	ldh a, [$a5]                                     ; $5a6d: $f0 $a5
	ldh a, [c]                                       ; $5a6f: $f2
	ld a, [bc]                                       ; $5a70: $0a
	ld c, d                                          ; $5a71: $4a
	ld a, $3d                                        ; $5a72: $3e $3d
	xor b                                            ; $5a74: $a8
	ld c, a                                          ; $5a75: $4f
	add hl, sp                                       ; $5a76: $39
	ldh a, [$d9]                                     ; $5a77: $f0 $d9
	pop af                                           ; $5a79: $f1
	reti                                             ; $5a7a: $d9


jr_097_5a7b:
	ld a, [hl-]                                      ; $5a7b: $3a
	ldh a, [rSCX]                                    ; $5a7c: $f0 $43
	db $f4                                           ; $5a7e: $f4
	ld b, h                                          ; $5a7f: $44
	ldh a, [rSVBK]                                   ; $5a80: $f0 $70
	ld c, d                                          ; $5a82: $4a
	ld d, c                                          ; $5a83: $51
	ld c, h                                          ; $5a84: $4c
	and b                                            ; $5a85: $a0
	cpl                                              ; $5a86: $2f
	ld b, e                                          ; $5a87: $43
	ld b, b                                          ; $5a88: $40
	inc [hl]                                         ; $5a89: $34

jr_097_5a8a:
	ld b, b                                          ; $5a8a: $40
	ld c, l                                          ; $5a8b: $4d
	ld c, e                                          ; $5a8c: $4b
	pop af                                           ; $5a8d: $f1
	db $d3                                           ; $5a8e: $d3
	ld [hl], c                                       ; $5a8f: $71
	ld d, c                                          ; $5a90: $51
	ldh a, [$cb]                                     ; $5a91: $f0 $cb
	ld b, h                                          ; $5a93: $44
	ld b, l                                          ; $5a94: $45
	xor b                                            ; $5a95: $a8
	ld b, b                                          ; $5a96: $40

jr_097_5a97:
	ld d, a                                          ; $5a97: $57
	ld d, [hl]                                       ; $5a98: $56
	inc [hl]                                         ; $5a99: $34
	db $ed                                           ; $5a9a: $ed
	ld e, l                                          ; $5a9b: $5d
	ld c, d                                          ; $5a9c: $4a
	ld c, a                                          ; $5a9d: $4f
	inc de                                           ; $5a9e: $13
	ldh a, [$80]                                     ; $5a9f: $f0 $80
	ldh a, [$c5]                                     ; $5aa1: $f0 $c5
	inc [hl]                                         ; $5aa3: $34
	ld a, a                                          ; $5aa4: $7f
	ld b, a                                          ; $5aa5: $47
	sub [hl]                                         ; $5aa6: $96
	dec sp                                           ; $5aa7: $3b
	ccf                                              ; $5aa8: $3f
	ld c, [hl]                                       ; $5aa9: $4e
	ld e, l                                          ; $5aaa: $5d
	ld e, d                                          ; $5aab: $5a
	and b                                            ; $5aac: $a0
	ld l, d                                          ; $5aad: $6a
	ldh a, [$0d]                                     ; $5aae: $f0 $0d
	ld b, d                                          ; $5ab0: $42
	db $ed                                           ; $5ab1: $ed
	add hl, bc                                       ; $5ab2: $09
	ld b, a                                          ; $5ab3: $47
	xor h                                            ; $5ab4: $ac
	db $ed                                           ; $5ab5: $ed
	sub e                                            ; $5ab6: $93
	ld d, c                                          ; $5ab7: $51
	ldh a, [$8c]                                     ; $5ab8: $f0 $8c
	ld e, h                                          ; $5aba: $5c
	ld b, h                                          ; $5abb: $44
	ld c, c                                          ; $5abc: $49
	ld [hl], a                                       ; $5abd: $77
	jr c, jr_097_5b12                                ; $5abe: $38 $52

	ld d, c                                          ; $5ac0: $51
	ld b, l                                          ; $5ac1: $45
	and b                                            ; $5ac2: $a0
	cpl                                              ; $5ac3: $2f
	ld b, e                                          ; $5ac4: $43
	db $ed                                           ; $5ac5: $ed
	add hl, bc                                       ; $5ac6: $09
	inc a                                            ; $5ac7: $3c
	xor l                                            ; $5ac8: $ad
	ld b, b                                          ; $5ac9: $40
	ld d, h                                          ; $5aca: $54
	ld d, d                                          ; $5acb: $52
	ld c, d                                          ; $5acc: $4a
	add d                                            ; $5acd: $82
	add hl, sp                                       ; $5ace: $39
	ld a, [hl-]                                      ; $5acf: $3a
	ld d, b                                          ; $5ad0: $50
	xor h                                            ; $5ad1: $ac
	db $ed                                           ; $5ad2: $ed
	sub e                                            ; $5ad3: $93
	ld a, $3f                                        ; $5ad4: $3e $3f
	ld l, h                                          ; $5ad6: $6c
	ld b, l                                          ; $5ad7: $45
	add hl, sp                                       ; $5ad8: $39
	inc a                                            ; $5ad9: $3c
	ld a, [hl-]                                      ; $5ada: $3a
	and b                                            ; $5adb: $a0
	sub d                                            ; $5adc: $92
	adc [hl]                                         ; $5add: $8e
	dec sp                                           ; $5ade: $3b
	ccf                                              ; $5adf: $3f
	ld d, l                                          ; $5ae0: $55
	ld b, h                                          ; $5ae1: $44
	ld e, b                                          ; $5ae2: $58
	jr c, jr_097_5b31                                ; $5ae3: $38 $4c

	xor b                                            ; $5ae5: $a8
	db $ed                                           ; $5ae6: $ed
	ld h, [hl]                                       ; $5ae7: $66
	ld a, $3f                                        ; $5ae8: $3e $3f
	ld d, d                                          ; $5aea: $52
	ld d, c                                          ; $5aeb: $51
	inc a                                            ; $5aec: $3c
	ld d, b                                          ; $5aed: $50
	and b                                            ; $5aee: $a0
	db $eb                                           ; $5aef: $eb
	ld d, h                                          ; $5af0: $54
	inc de                                           ; $5af1: $13
	ldh a, [$a5]                                     ; $5af2: $f0 $a5
	ldh a, [c]                                       ; $5af4: $f2
	ld a, [bc]                                       ; $5af5: $0a
	ld c, d                                          ; $5af6: $4a
	ld d, c                                          ; $5af7: $51
	ld c, h                                          ; $5af8: $4c
	xor b                                            ; $5af9: $a8
	ld c, c                                          ; $5afa: $49
	ccf                                              ; $5afb: $3f
	ld c, a                                          ; $5afc: $4f
	ldh a, [rAUD1ENV]                                ; $5afd: $f0 $12
	sbc a                                            ; $5aff: $9f
	ldh a, [rTIMA]                                   ; $5b00: $f0 $05
	ld b, d                                          ; $5b02: $42
	ldh a, [$a5]                                     ; $5b03: $f0 $a5
	ldh a, [c]                                       ; $5b05: $f2
	ld a, [bc]                                       ; $5b06: $0a
	ld c, c                                          ; $5b07: $49
	ld c, e                                          ; $5b08: $4b
	xor h                                            ; $5b09: $ac
	ld [hl], a                                       ; $5b0a: $77
	ld e, [hl]                                       ; $5b0b: $5e
	ld d, d                                          ; $5b0c: $52
	ld a, c                                          ; $5b0d: $79
	ld b, c                                          ; $5b0e: $41
	ld c, h                                          ; $5b0f: $4c
	and b                                            ; $5b10: $a0
	ld l, d                                          ; $5b11: $6a

jr_097_5b12:
	ldh a, [$0d]                                     ; $5b12: $f0 $0d
	ld b, d                                          ; $5b14: $42
	db $ed                                           ; $5b15: $ed
	add hl, bc                                       ; $5b16: $09
	ld b, a                                          ; $5b17: $47
	xor h                                            ; $5b18: $ac
	pop af                                           ; $5b19: $f1
	ld a, [de]                                       ; $5b1a: $1a
	pop af                                           ; $5b1b: $f1
	inc c                                            ; $5b1c: $0c
	sub h                                            ; $5b1d: $94
	ld d, c                                          ; $5b1e: $51
	ldh a, [$8c]                                     ; $5b1f: $f0 $8c
	ld e, h                                          ; $5b21: $5c
	ld b, h                                          ; $5b22: $44
	ld c, c                                          ; $5b23: $49
	inc de                                           ; $5b24: $13
	ld [hl], a                                       ; $5b25: $77
	jr c, @+$54                                      ; $5b26: $38 $52

	ld d, c                                          ; $5b28: $51
	ld e, l                                          ; $5b29: $5d
	ld e, d                                          ; $5b2a: $5a
	ld c, b                                          ; $5b2b: $48
	and b                                            ; $5b2c: $a0
	ld hl, $ebeb                                     ; $5b2d: $21 $eb $eb
	xor b                                            ; $5b30: $a8

jr_097_5b31:
	jr nz, @-$11                                     ; $5b31: $20 $ed

	add hl, bc                                       ; $5b33: $09
	ld b, a                                          ; $5b34: $47
	db $ed                                           ; $5b35: $ed
	sub e                                            ; $5b36: $93
	ld a, $3f                                        ; $5b37: $3e $3f
	ld l, h                                          ; $5b39: $6c
	dec a                                            ; $5b3a: $3d
	ld d, b                                          ; $5b3b: $50
	inc de                                           ; $5b3c: $13
	ld e, d                                          ; $5b3d: $5a
	add hl, sp                                       ; $5b3e: $39
	ld c, d                                          ; $5b3f: $4a
	ld d, c                                          ; $5b40: $51
	and c                                            ; $5b41: $a1
	cpl                                              ; $5b42: $2f
	ld b, e                                          ; $5b43: $43
	db $ed                                           ; $5b44: $ed
	add hl, bc                                       ; $5b45: $09
	inc a                                            ; $5b46: $3c
	ld c, b                                          ; $5b47: $48
	dec [hl]                                         ; $5b48: $35
	inc hl                                           ; $5b49: $23
	inc de                                           ; $5b4a: $13
	db $ed                                           ; $5b4b: $ed
	sub e                                            ; $5b4c: $93
	ld a, $3f                                        ; $5b4d: $3e $3f
	ld l, h                                          ; $5b4f: $6c
	ld b, l                                          ; $5b50: $45
	add hl, sp                                       ; $5b51: $39
	inc a                                            ; $5b52: $3c
	ld a, [hl-]                                      ; $5b53: $3a
	and b                                            ; $5b54: $a0
	cpl                                              ; $5b55: $2f
	ld b, e                                          ; $5b56: $43
	db $ed                                           ; $5b57: $ed
	ld d, a                                          ; $5b58: $57
	inc [hl]                                         ; $5b59: $34
	db $f4                                           ; $5b5a: $f4
	ld h, d                                          ; $5b5b: $62
	pop af                                           ; $5b5c: $f1
	add hl, sp                                       ; $5b5d: $39
	ld a, $62                                        ; $5b5e: $3e $62
	inc de                                           ; $5b60: $13
	ld l, [hl]                                       ; $5b61: $6e
	ld c, [hl]                                       ; $5b62: $4e
	dec sp                                           ; $5b63: $3b
	ccf                                              ; $5b64: $3f
	add d                                            ; $5b65: $82
	dec sp                                           ; $5b66: $3b
	ccf                                              ; $5b67: $3f
	dec a                                            ; $5b68: $3d
	ld a, [hl-]                                      ; $5b69: $3a
	and b                                            ; $5b6a: $a0
	ldh a, [$ab]                                     ; $5b6b: $f0 $ab
	ldh a, [rAUD2ENV]                                ; $5b6d: $f0 $17
	ld c, d                                          ; $5b6f: $4a
	inc [hl]                                         ; $5b70: $34
	ld d, l                                          ; $5b71: $55
	ld e, e                                          ; $5b72: $5b
	ld h, d                                          ; $5b73: $62
	pop af                                           ; $5b74: $f1
	ld e, a                                          ; $5b75: $5f
	jr c, jr_097_5bb7                                ; $5b76: $38 $3f

	xor h                                            ; $5b78: $ac
	ldh a, [$cd]                                     ; $5b79: $f0 $cd
	ld e, e                                          ; $5b7b: $5b
	ldh a, [rDMA]                                    ; $5b7c: $f0 $46
	ldh a, [c]                                       ; $5b7e: $f2
	ld [hl], h                                       ; $5b7f: $74
	ld b, d                                          ; $5b80: $42
	add h                                            ; $5b81: $84
	ld c, c                                          ; $5b82: $49
	inc de                                           ; $5b83: $13
	ldh a, [c]                                       ; $5b84: $f2
	ld b, h                                          ; $5b85: $44
	ldh a, [$3d]                                     ; $5b86: $f0 $3d
	ld h, d                                          ; $5b88: $62
	di                                               ; $5b89: $f3
	ld h, d                                          ; $5b8a: $62
	ldh a, [$be]                                     ; $5b8b: $f0 $be
	ld b, l                                          ; $5b8d: $45
	add hl, sp                                       ; $5b8e: $39
	ld b, a                                          ; $5b8f: $47
	and b                                            ; $5b90: $a0
	cpl                                              ; $5b91: $2f
	ld b, e                                          ; $5b92: $43
	halt                                             ; $5b93: $76
	ld c, c                                          ; $5b94: $49
	ldh a, [c]                                       ; $5b95: $f2
	ld b, h                                          ; $5b96: $44
	ldh a, [$3d]                                     ; $5b97: $f0 $3d
	ld h, d                                          ; $5b99: $62
	di                                               ; $5b9a: $f3
	ld h, d                                          ; $5b9b: $62
	ldh a, [$be]                                     ; $5b9c: $f0 $be
	ld b, d                                          ; $5b9e: $42
	ld c, e                                          ; $5b9f: $4b

jr_097_5ba0:
	xor h                                            ; $5ba0: $ac
	pop af                                           ; $5ba1: $f1
	inc l                                            ; $5ba2: $2c
	pop af                                           ; $5ba3: $f1
	pop de                                           ; $5ba4: $d1
	ldh a, [rDMA]                                    ; $5ba5: $f0 $46
	ld b, d                                          ; $5ba7: $42
	pop hl                                           ; $5ba8: $e1
	ld b, h                                          ; $5ba9: $44
	xor b                                            ; $5baa: $a8
	ld e, d                                          ; $5bab: $5a
	ld b, c                                          ; $5bac: $41
	ld a, [hl-]                                      ; $5bad: $3a
	pop af                                           ; $5bae: $f1
	ld b, [hl]                                       ; $5baf: $46
	ld b, h                                          ; $5bb0: $44
	ld e, a                                          ; $5bb1: $5f
	add hl, sp                                       ; $5bb2: $39
	and b                                            ; $5bb3: $a0
	db $ed                                           ; $5bb4: $ed
	ld c, [hl]                                       ; $5bb5: $4e
	xor h                                            ; $5bb6: $ac

jr_097_5bb7:
	pop af                                           ; $5bb7: $f1
	inc l                                            ; $5bb8: $2c
	pop af                                           ; $5bb9: $f1
	pop de                                           ; $5bba: $d1
	ldh a, [rDMA]                                    ; $5bbb: $f0 $46
	ld b, d                                          ; $5bbd: $42
	ldh a, [$38]                                     ; $5bbe: $f0 $38
	ld c, d                                          ; $5bc0: $4a
	ld d, c                                          ; $5bc1: $51
	inc a                                            ; $5bc2: $3c
	and c                                            ; $5bc3: $a1
	cpl                                              ; $5bc4: $2f
	ld b, e                                          ; $5bc5: $43
	ld b, [hl]                                       ; $5bc6: $46
	dec sp                                           ; $5bc7: $3b
	inc [hl]                                         ; $5bc8: $34
	ld b, b                                          ; $5bc9: $40
	add hl, sp                                       ; $5bca: $39
	ld b, h                                          ; $5bcb: $44
	ld b, l                                          ; $5bcc: $45
	and b                                            ; $5bcd: $a0
	ld [hl], d                                       ; $5bce: $72
	add b                                            ; $5bcf: $80

jr_097_5bd0:
	inc a                                            ; $5bd0: $3c
	dec sp                                           ; $5bd1: $3b
	ccf                                              ; $5bd2: $3f
	inc [hl]                                         ; $5bd3: $34
	db $ec                                           ; $5bd4: $ec
	cp c                                             ; $5bd5: $b9
	xor b                                            ; $5bd6: $a8
	ld l, a                                          ; $5bd7: $6f
	inc [hl]                                         ; $5bd8: $34
	db $ed                                           ; $5bd9: $ed
	add d                                            ; $5bda: $82
	db $ed                                           ; $5bdb: $ed
	add e                                            ; $5bdc: $83
	ld c, c                                          ; $5bdd: $49
	jr c, jr_097_5c18                                ; $5bde: $38 $38

	ld d, d                                          ; $5be0: $52
	ld d, c                                          ; $5be1: $51
	xor b                                            ; $5be2: $a8
	db $ec                                           ; $5be3: $ec
	jr jr_097_5bd0                                   ; $5be4: $18 $ea

	or [hl]                                          ; $5be6: $b6
	and b                                            ; $5be7: $a0
	cpl                                              ; $5be8: $2f
	ld b, e                                          ; $5be9: $43
	ld b, [hl]                                       ; $5bea: $46
	dec sp                                           ; $5beb: $3b
	inc [hl]                                         ; $5bec: $34
	halt                                             ; $5bed: $76
	xor h                                            ; $5bee: $ac
	ld de, $a812                                     ; $5bef: $11 $12 $a8
	db $eb                                           ; $5bf2: $eb
	ld l, c                                          ; $5bf3: $69
	inc [hl]                                         ; $5bf4: $34
	db $ec                                           ; $5bf5: $ec
	jr jr_097_5ba0                                   ; $5bf6: $18 $a8

	ld [hl-], a                                      ; $5bf8: $32
	ld h, h                                          ; $5bf9: $64
	ld c, c                                          ; $5bfa: $49
	ld a, [hl-]                                      ; $5bfb: $3a
	ld a, $38                                        ; $5bfc: $3e $38
	ldh a, [$78]                                     ; $5bfe: $f0 $78
	ld e, e                                          ; $5c00: $5b
	ld b, d                                          ; $5c01: $42
	pop af                                           ; $5c02: $f1
	ld b, [hl]                                       ; $5c03: $46
	ld b, h                                          ; $5c04: $44
	ld a, [hl-]                                      ; $5c05: $3a
	and e                                            ; $5c06: $a3
	cpl                                              ; $5c07: $2f
	ld b, e                                          ; $5c08: $43
	ldh a, [$d6]                                     ; $5c09: $f0 $d6
	ld c, e                                          ; $5c0b: $4b
	xor h                                            ; $5c0c: $ac
	halt                                             ; $5c0d: $76
	ldh a, [rSTAT]                                   ; $5c0e: $f0 $41
	ld b, d                                          ; $5c10: $42
	ldh a, [rDMA]                                    ; $5c11: $f0 $46
	ld l, h                                          ; $5c13: $6c
	dec a                                            ; $5c14: $3d
	jr c, jr_097_5c5b                                ; $5c15: $38 $44

	ld c, h                                          ; $5c17: $4c

jr_097_5c18:
	xor b                                            ; $5c18: $a8
	ld b, b                                          ; $5c19: $40
	ld c, l                                          ; $5c1a: $4d
	ld e, e                                          ; $5c1b: $5b
	ld d, [hl]                                       ; $5c1c: $56
	inc [hl]                                         ; $5c1d: $34
	db $ec                                           ; $5c1e: $ec
	push bc                                          ; $5c1f: $c5
	ld h, a                                          ; $5c20: $67
	ld d, h                                          ; $5c21: $54
	add hl, sp                                       ; $5c22: $39
	and b                                            ; $5c23: $a0
	ld c, e                                          ; $5c24: $4b
	inc [hl]                                         ; $5c25: $34
	xor $2d                                          ; $5c26: $ee $2d
	and b                                            ; $5c28: $a0
	cpl                                              ; $5c29: $2f
	ld b, e                                          ; $5c2a: $43
	ldh a, [$80]                                     ; $5c2b: $f0 $80
	ldh a, [$c5]                                     ; $5c2d: $f0 $c5
	inc [hl]                                         ; $5c2f: $34
	ldh a, [$d0]                                     ; $5c30: $f0 $d0
	ld a, a                                          ; $5c32: $7f
	ldh a, [hDisp1_WY]                                     ; $5c33: $f0 $95
	ld b, h                                          ; $5c35: $44
	ld c, h                                          ; $5c36: $4c
	and b                                            ; $5c37: $a0
	ld e, h                                          ; $5c38: $5c
	ld d, [hl]                                       ; $5c39: $56
	dec sp                                           ; $5c3a: $3b
	and b                                            ; $5c3b: $a0
	cpl                                              ; $5c3c: $2f
	ld b, e                                          ; $5c3d: $43
	ld h, h                                          ; $5c3e: $64
	ld h, e                                          ; $5c3f: $63
	dec sp                                           ; $5c40: $3b
	xor b                                            ; $5c41: $a8
	ld e, d                                          ; $5c42: $5a
	inc [hl]                                         ; $5c43: $34
	db $eb                                           ; $5c44: $eb
	rst FarCall                                          ; $5c45: $f7
	xor c                                            ; $5c46: $a9
	db $ec                                           ; $5c47: $ec
	rst SubAFromDE                                          ; $5c48: $df
	and b                                            ; $5c49: $a0
	jr c, jr_097_5c80                                ; $5c4a: $38 $34

	jr c, jr_097_5ca0                                ; $5c4c: $38 $52

	xor h                                            ; $5c4e: $ac
	ld l, e                                          ; $5c4f: $6b
	inc a                                            ; $5c50: $3c
	ldh a, [$2c]                                     ; $5c51: $f0 $2c
	ldh a, [$99]                                     ; $5c53: $f0 $99
	ld d, e                                          ; $5c55: $53
	ld c, b                                          ; $5c56: $48
	and b                                            ; $5c57: $a0
	cpl                                              ; $5c58: $2f
	ld b, e                                          ; $5c59: $43
	ld e, [hl]                                       ; $5c5a: $5e

jr_097_5c5b:
	dec sp                                           ; $5c5b: $3b
	xor c                                            ; $5c5c: $a9
	ldh a, [$2c]                                     ; $5c5d: $f0 $2c
	ldh a, [$99]                                     ; $5c5f: $f0 $99
	xor c                                            ; $5c61: $a9
	ld l, e                                          ; $5c62: $6b
	ld c, a                                          ; $5c63: $4f
	jr c, jr_097_5ca0                                ; $5c64: $38 $3a

	jr c, jr_097_5cc5                                ; $5c66: $38 $5d

	ld e, d                                          ; $5c68: $5a
	ld c, b                                          ; $5c69: $48
	and b                                            ; $5c6a: $a0
	ld e, [hl]                                       ; $5c6b: $5e
	dec sp                                           ; $5c6c: $3b
	inc [hl]                                         ; $5c6d: $34
	ld c, d                                          ; $5c6e: $4a
	ld c, a                                          ; $5c6f: $4f
	xor l                                            ; $5c70: $ad
	ldh a, [$08]                                     ; $5c71: $f0 $08
	ld d, b                                          ; $5c73: $50
	xor l                                            ; $5c74: $ad
	ldh a, [$08]                                     ; $5c75: $f0 $08
	ld d, b                                          ; $5c77: $50
	inc [hl]                                         ; $5c78: $34
	ld d, d                                          ; $5c79: $52
	dec a                                            ; $5c7a: $3d
	and d                                            ; $5c7b: $a2
	cpl                                              ; $5c7c: $2f
	ld b, e                                          ; $5c7d: $43
	ld b, [hl]                                       ; $5c7e: $46
	ld [hl], h                                       ; $5c7f: $74

jr_097_5c80:
	xor b                                            ; $5c80: $a8
	ld b, [hl]                                       ; $5c81: $46
	ld c, l                                          ; $5c82: $4d
	ld c, e                                          ; $5c83: $4b
	inc [hl]                                         ; $5c84: $34
	pop af                                           ; $5c85: $f1
	ld a, a                                          ; $5c86: $7f
	ld b, d                                          ; $5c87: $42
	ldh a, [$99]                                     ; $5c88: $f0 $99
	ld b, h                                          ; $5c8a: $44
	ld b, l                                          ; $5c8b: $45
	xor b                                            ; $5c8c: $a8
	add a                                            ; $5c8d: $87
	ldh a, [$5b]                                     ; $5c8e: $f0 $5b
	ldh a, [$5e]                                     ; $5c90: $f0 $5e
	ld b, h                                          ; $5c92: $44
	inc a                                            ; $5c93: $3c
	ld d, b                                          ; $5c94: $50
	ld h, a                                          ; $5c95: $67
	ld d, h                                          ; $5c96: $54
	add hl, sp                                       ; $5c97: $39
	and b                                            ; $5c98: $a0
	ld c, d                                          ; $5c99: $4a
	ld c, a                                          ; $5c9a: $4f
	xor h                                            ; $5c9b: $ac
	db $ec                                           ; $5c9c: $ec
	reti                                             ; $5c9d: $d9


	ldh a, [$71]                                     ; $5c9e: $f0 $71

jr_097_5ca0:
	jr c, jr_097_5ce4                                ; $5ca0: $38 $42

	ld c, d                                          ; $5ca2: $4a
	xor l                                            ; $5ca3: $ad
	ld c, a                                          ; $5ca4: $4f
	add hl, sp                                       ; $5ca5: $39
	ldh a, [rHDMA4]                                  ; $5ca6: $f0 $54
	ld a, $40                                        ; $5ca8: $3e $40
	ld a, e                                          ; $5caa: $7b
	ld b, a                                          ; $5cab: $47
	ld b, l                                          ; $5cac: $45
	dec sp                                           ; $5cad: $3b
	ccf                                              ; $5cae: $3f
	xor h                                            ; $5caf: $ac
	pop af                                           ; $5cb0: $f1
	ld h, $38                                        ; $5cb1: $26 $38
	ccf                                              ; $5cb3: $3f
	ld c, a                                          ; $5cb4: $4f
	jr c, jr_097_5cef                                ; $5cb5: $38 $38

	ld c, d                                          ; $5cb7: $4a
	ld d, c                                          ; $5cb8: $51
	inc a                                            ; $5cb9: $3c
	and c                                            ; $5cba: $a1
	cpl                                              ; $5cbb: $2f
	ld b, e                                          ; $5cbc: $43
	db $ec                                           ; $5cbd: $ec
	dec l                                            ; $5cbe: $2d
	inc [hl]                                         ; $5cbf: $34
	jr c, jr_097_5cfa                                ; $5cc0: $38 $38

	ld b, l                                          ; $5cc2: $45
	xor b                                            ; $5cc3: $a8
	ld [hl-], a                                      ; $5cc4: $32

jr_097_5cc5:
	halt                                             ; $5cc5: $76
	dec sp                                           ; $5cc6: $3b
	ccf                                              ; $5cc7: $3f
	inc [hl]                                         ; $5cc8: $34
	add b                                            ; $5cc9: $80
	jr c, jr_097_5d0b                                ; $5cca: $38 $3f

	ld c, [hl]                                       ; $5ccc: $4e
	ldh a, [c]                                       ; $5ccd: $f2
	ld l, h                                          ; $5cce: $6c
	and e                                            ; $5ccf: $a3
	cpl                                              ; $5cd0: $2f
	ld [hl-], a                                      ; $5cd1: $32
	ld d, h                                          ; $5cd2: $54
	add hl, sp                                       ; $5cd3: $39
	ld a, $3f                                        ; $5cd4: $3e $3f
	xor h                                            ; $5cd6: $ac
	db $f4                                           ; $5cd7: $f4
	ld h, d                                          ; $5cd8: $62
	pop af                                           ; $5cd9: $f1
	add hl, sp                                       ; $5cda: $39
	ld a, $4b                                        ; $5cdb: $3e $4b
	ldh a, [$ce]                                     ; $5cdd: $f0 $ce
	ld h, e                                          ; $5cdf: $63
	dec sp                                           ; $5ce0: $3b
	dec a                                            ; $5ce1: $3d
	and e                                            ; $5ce2: $a3
	cpl                                              ; $5ce3: $2f

jr_097_5ce4:
	ld b, e                                          ; $5ce4: $43
	db $ec                                           ; $5ce5: $ec
	rst SubAFromDE                                          ; $5ce6: $df
	ld c, c                                          ; $5ce7: $49
	inc de                                           ; $5ce8: $13
	ldh a, [$2d]                                     ; $5ce9: $f0 $2d
	ld d, a                                          ; $5ceb: $57
	ldh a, [rTMA]                                    ; $5cec: $f0 $06
	ld e, [hl]                                       ; $5cee: $5e

jr_097_5cef:
	dec a                                            ; $5cef: $3d
	inc a                                            ; $5cf0: $3c
	ld d, b                                          ; $5cf1: $50
	xor h                                            ; $5cf2: $ac
	ld d, h                                          ; $5cf3: $54
	ld c, l                                          ; $5cf4: $4d
	inc a                                            ; $5cf5: $3c
	ld d, b                                          ; $5cf6: $50
	ld b, d                                          ; $5cf7: $42
	adc a                                            ; $5cf8: $8f
	pop af                                           ; $5cf9: $f1

jr_097_5cfa:
	rrca                                             ; $5cfa: $0f
	ldh a, [rOBP0]                                   ; $5cfb: $f0 $48
	ld c, e                                          ; $5cfd: $4b
	inc de                                           ; $5cfe: $13
	ld c, a                                          ; $5cff: $4f
	dec sp                                           ; $5d00: $3b
	ld c, c                                          ; $5d01: $49
	sub b                                            ; $5d02: $90
	ld a, $55                                        ; $5d03: $3e $55
	ld a, [hl-]                                      ; $5d05: $3a
	ld c, [hl]                                       ; $5d06: $4e
	sub a                                            ; $5d07: $97
	and b                                            ; $5d08: $a0
	ld l, a                                          ; $5d09: $6f
	ld c, b                                          ; $5d0a: $48

jr_097_5d0b:
	dec [hl]                                         ; $5d0b: $35
	ld [hl+], a                                      ; $5d0c: $22
	inc de                                           ; $5d0d: $13
	ld e, d                                          ; $5d0e: $5a
	add hl, sp                                       ; $5d0f: $39
	ld h, h                                          ; $5d10: $64
	push af                                          ; $5d11: $f5
	ld l, d                                          ; $5d12: $6a
	ldh a, [rKEY1]                                   ; $5d13: $f0 $4d
	ld h, d                                          ; $5d15: $62
	ld a, $3d                                        ; $5d16: $3e $3d
	ld d, b                                          ; $5d18: $50
	inc de                                           ; $5d19: $13
	jr c, @+$3a                                      ; $5d1a: $38 $38

	ld b, d                                          ; $5d1c: $42
	inc a                                            ; $5d1d: $3c
	ld c, b                                          ; $5d1e: $48
	and b                                            ; $5d1f: $a0
	cpl                                              ; $5d20: $2f
	ld [hl-], a                                      ; $5d21: $32
	db $ec                                           ; $5d22: $ec
	rst SubAFromDE                                          ; $5d23: $df
	ld d, e                                          ; $5d24: $53
	inc de                                           ; $5d25: $13
	add sp, $4d                                      ; $5d26: $e8 $4d
	inc sp                                           ; $5d28: $33
	add hl, bc                                       ; $5d29: $09
	db $eb                                           ; $5d2a: $eb
	ccf                                              ; $5d2b: $3f
	inc [hl]                                         ; $5d2c: $34
	di                                               ; $5d2d: $f3
	inc de                                           ; $5d2e: $13
	ld e, b                                          ; $5d2f: $58
	ld b, c                                          ; $5d30: $41
	dec [hl]                                         ; $5d31: $35
	inc h                                            ; $5d32: $24
	inc de                                           ; $5d33: $13
	sbc $34                                          ; $5d34: $de $34
	db $eb                                           ; $5d36: $eb
	ccf                                              ; $5d37: $3f
	ld c, b                                          ; $5d38: $48
	and b                                            ; $5d39: $a0
	cpl                                              ; $5d3a: $2f
	ld [hl-], a                                      ; $5d3b: $32
	ld d, h                                          ; $5d3c: $54
	ld c, l                                          ; $5d3d: $4d
	ld c, d                                          ; $5d3e: $4a
	xor h                                            ; $5d3f: $ac
	ld l, d                                          ; $5d40: $6a
	ld l, b                                          ; $5d41: $68
	ld b, d                                          ; $5d42: $42
	pop af                                           ; $5d43: $f1
	rrca                                             ; $5d44: $0f
	ldh a, [rOBP0]                                   ; $5d45: $f0 $48
	ld c, e                                          ; $5d47: $4b
	ldh a, [rAUD1LOW]                                ; $5d48: $f0 $13
	ld a, $44                                        ; $5d4a: $3e $44
	ld a, [hl-]                                      ; $5d4c: $3a
	xor b                                            ; $5d4d: $a8
	ld c, d                                          ; $5d4e: $4a
	ld c, a                                          ; $5d4f: $4f
	inc [hl]                                         ; $5d50: $34
	ldh a, [rIE]                                     ; $5d51: $f0 $ff
	ld a, $38                                        ; $5d53: $3e $38
	adc l                                            ; $5d55: $8d
	ld c, b                                          ; $5d56: $48
	and e                                            ; $5d57: $a3
	cpl                                              ; $5d58: $2f
	add sp, -$2f                                     ; $5d59: $e8 $d1
	inc de                                           ; $5d5b: $13
	add sp, -$33                                     ; $5d5c: $e8 $cd
	and b                                            ; $5d5e: $a0
	cpl                                              ; $5d5f: $2f
	ld [hl-], a                                      ; $5d60: $32
	ld e, b                                          ; $5d61: $58
	ld b, [hl]                                       ; $5d62: $46
	inc [hl]                                         ; $5d63: $34
	pop af                                           ; $5d64: $f1
	rrca                                             ; $5d65: $0f
	ldh a, [rOBP0]                                   ; $5d66: $f0 $48
	di                                               ; $5d68: $f3
	ld [$81f0], sp                                   ; $5d69: $08 $f0 $81
	ld b, h                                          ; $5d6c: $44
	xor b                                            ; $5d6d: $a8
	db $ec                                           ; $5d6e: $ec
	rst SubAFromDE                                          ; $5d6f: $df
	ld c, a                                          ; $5d70: $4f
	inc de                                           ; $5d71: $13
	ldh a, [$d9]                                     ; $5d72: $f0 $d9
	ld h, c                                          ; $5d74: $61
	ldh a, [hDisp1_WX]                                     ; $5d75: $f0 $96
	dec sp                                           ; $5d77: $3b
	dec a                                            ; $5d78: $3d
	ld l, h                                          ; $5d79: $6c
	dec a                                            ; $5d7a: $3d
	jr c, jr_097_5dc1                                ; $5d7b: $38 $44

	ld a, $a3                                        ; $5d7d: $3e $a3
	add hl, bc                                       ; $5d7f: $09
	ldh a, [$aa]                                     ; $5d80: $f0 $aa
	adc c                                            ; $5d82: $89
	adc a                                            ; $5d83: $8f
	ld c, e                                          ; $5d84: $4b
	ld e, d                                          ; $5d85: $5a
	add hl, sp                                       ; $5d86: $39
	and c                                            ; $5d87: $a1
	cpl                                              ; $5d88: $2f
	ld b, e                                          ; $5d89: $43
	ldh a, [$aa]                                     ; $5d8a: $f0 $aa
	adc c                                            ; $5d8c: $89
	adc a                                            ; $5d8d: $8f
	ld b, a                                          ; $5d8e: $47
	sub [hl]                                         ; $5d8f: $96
	dec sp                                           ; $5d90: $3b
	dec a                                            ; $5d91: $3d
	ld b, d                                          ; $5d92: $42
	ld c, e                                          ; $5d93: $4b
	inc de                                           ; $5d94: $13
	db $ec                                           ; $5d95: $ec
	ld [$6b34], sp                                   ; $5d96: $08 $34 $6b
	inc a                                            ; $5d99: $3c
	ld d, b                                          ; $5d9a: $50
	inc de                                           ; $5d9b: $13
	ldh a, [$dd]                                     ; $5d9c: $f0 $dd
	ldh a, [$9c]                                     ; $5d9e: $f0 $9c
	ld a, $3d                                        ; $5da0: $3e $3d
	ld d, b                                          ; $5da2: $50
	jr c, jr_097_5ddd                                ; $5da3: $38 $38

	ld b, d                                          ; $5da5: $42
	inc a                                            ; $5da6: $3c
	ld c, b                                          ; $5da7: $48
	and b                                            ; $5da8: $a0
	db $ec                                           ; $5da9: $ec
	ld h, l                                          ; $5daa: $65
	ld b, d                                          ; $5dab: $42
	inc de                                           ; $5dac: $13
	pop af                                           ; $5dad: $f1
	inc b                                            ; $5dae: $04
	ld d, a                                          ; $5daf: $57
	db $f4                                           ; $5db0: $f4
	push hl                                          ; $5db1: $e5
	jr c, jr_097_5dff                                ; $5db2: $38 $4b

	ldh a, [$f4]                                     ; $5db4: $f0 $f4
	ld e, [hl]                                       ; $5db6: $5e
	dec a                                            ; $5db7: $3d
	ld b, d                                          ; $5db8: $42

jr_097_5db9:
	and c                                            ; $5db9: $a1
	cpl                                              ; $5dba: $2f
	ld b, e                                          ; $5dbb: $43
	ld b, b                                          ; $5dbc: $40
	add hl, sp                                       ; $5dbd: $39
	inc a                                            ; $5dbe: $3c
	xor b                                            ; $5dbf: $a8
	ldh a, [c]                                       ; $5dc0: $f2

jr_097_5dc1:
	inc a                                            ; $5dc1: $3c
	ldh a, [c]                                       ; $5dc2: $f2
	cp c                                             ; $5dc3: $b9
	ld b, d                                          ; $5dc4: $42
	pop af                                           ; $5dc5: $f1
	sbc l                                            ; $5dc6: $9d
	jr c, jr_097_5db9                                ; $5dc7: $38 $f0

	jr c, jr_097_5e2d                                ; $5dc9: $38 $62

	ldh a, [$f4]                                     ; $5dcb: $f0 $f4
	ld e, [hl]                                       ; $5dcd: $5e
	ld a, [hl-]                                      ; $5dce: $3a
	jr c, @+$4b                                      ; $5dcf: $38 $49

	xor h                                            ; $5dd1: $ac
	sbc d                                            ; $5dd2: $9a
	pop af                                           ; $5dd3: $f1
	ld sp, hl                                        ; $5dd4: $f9
	ld b, a                                          ; $5dd5: $47
	add b                                            ; $5dd6: $80
	ld a, [hl-]                                      ; $5dd7: $3a
	ld d, e                                          ; $5dd8: $53
	ld c, [hl]                                       ; $5dd9: $4e
	ld c, a                                          ; $5dda: $4f
	ld b, c                                          ; $5ddb: $41
	ld c, h                                          ; $5ddc: $4c

jr_097_5ddd:
	and b                                            ; $5ddd: $a0
	db $eb                                           ; $5dde: $eb
	ld d, l                                          ; $5ddf: $55
	xor $2a                                          ; $5de0: $ee $2a
	ld c, d                                          ; $5de2: $4a
	xor h                                            ; $5de3: $ac
	pop af                                           ; $5de4: $f1
	ld hl, sp-$0f                                    ; $5de5: $f8 $f1
	ld d, b                                          ; $5de7: $50
	ld a, $3d                                        ; $5de8: $3e $3d
	ld d, b                                          ; $5dea: $50
	inc [hl]                                         ; $5deb: $34

jr_097_5dec:
	pop af                                           ; $5dec: $f1
	or d                                             ; $5ded: $b2
	pop af                                           ; $5dee: $f1
	ld c, b                                          ; $5def: $48
	ld b, l                                          ; $5df0: $45
	and b                                            ; $5df1: $a0
	cpl                                              ; $5df2: $2f
	ld b, e                                          ; $5df3: $43
	or h                                             ; $5df4: $b4
	xor h                                            ; $5df5: $ac
	db $ec                                           ; $5df6: $ec
	ldh [rBGP], a                                    ; $5df7: $e0 $47
	ld b, a                                          ; $5df9: $47
	db $ec                                           ; $5dfa: $ec
	db $ed                                           ; $5dfb: $ed
	inc de                                           ; $5dfc: $13
	ld c, a                                          ; $5dfd: $4f
	ld d, b                                          ; $5dfe: $50

jr_097_5dff:
	ld h, h                                          ; $5dff: $64
	add hl, sp                                       ; $5e00: $39
	inc a                                            ; $5e01: $3c
	ld a, [hl-]                                      ; $5e02: $3a
	and b                                            ; $5e03: $a0
	ld d, d                                          ; $5e04: $52
	inc [hl]                                         ; $5e05: $34
	db $eb                                           ; $5e06: $eb
	sub a                                            ; $5e07: $97
	ld a, [hl-]                                      ; $5e08: $3a
	ld d, b                                          ; $5e09: $50
	xor h                                            ; $5e0a: $ac
	db $ec                                           ; $5e0b: $ec
	db $ed                                           ; $5e0c: $ed
	ld b, [hl]                                       ; $5e0d: $46
	ldh a, [rSB]                                     ; $5e0e: $f0 $01
	ccf                                              ; $5e10: $3f
	ld c, a                                          ; $5e11: $4f
	ret nc                                           ; $5e12: $d0

	and b                                            ; $5e13: $a0
	cpl                                              ; $5e14: $2f
	ld b, e                                          ; $5e15: $43
	or h                                             ; $5e16: $b4
	xor h                                            ; $5e17: $ac
	ld h, h                                          ; $5e18: $64
	ldh a, [$c8]                                     ; $5e19: $f0 $c8
	jr c, jr_097_5e6e                                ; $5e1b: $38 $51

	ld c, [hl]                                       ; $5e1d: $4e
	ld b, l                                          ; $5e1e: $45
	and b                                            ; $5e1f: $a0
	ld b, e                                          ; $5e20: $43
	ld [$f0b6], a                                    ; $5e21: $ea $b6 $f0
	db $eb                                           ; $5e24: $eb
	inc de                                           ; $5e25: $13
	ld c, d                                          ; $5e26: $4a
	ld a, $66                                        ; $5e27: $3e $66
	add hl, sp                                       ; $5e29: $39
	and c                                            ; $5e2a: $a1
	cpl                                              ; $5e2b: $2f
	ld b, e                                          ; $5e2c: $43

jr_097_5e2d:
	xor $2d                                          ; $5e2d: $ee $2d
	xor l                                            ; $5e2f: $ad
	ld [$a0b6], a                                    ; $5e30: $ea $b6 $a0

jr_097_5e33:
	ldh a, [c]                                       ; $5e33: $f2
	inc a                                            ; $5e34: $3c
	ldh a, [c]                                       ; $5e35: $f2
	cp c                                             ; $5e36: $b9
	ld b, d                                          ; $5e37: $42
	pop af                                           ; $5e38: $f1
	inc b                                            ; $5e39: $04
	ld d, a                                          ; $5e3a: $57
	db $f4                                           ; $5e3b: $f4
	push hl                                          ; $5e3c: $e5
	jr c, jr_097_5ea1                                ; $5e3d: $38 $62

	inc de                                           ; $5e3f: $13
	ld a, $3b                                        ; $5e40: $3e $3b
	inc a                                            ; $5e42: $3c
	ld d, a                                          ; $5e43: $57
	ld c, c                                          ; $5e44: $49
	ldh a, [$f4]                                     ; $5e45: $f0 $f4
	ld e, [hl]                                       ; $5e47: $5e
	ld a, [hl-]                                      ; $5e48: $3a
	ld e, b                                          ; $5e49: $58
	jr c, jr_097_5dec                                ; $5e4a: $38 $a0

	cpl                                              ; $5e4c: $2f
	ld b, e                                          ; $5e4d: $43
	ld b, b                                          ; $5e4e: $40
	add hl, sp                                       ; $5e4f: $39
	ld b, h                                          ; $5e50: $44
	ld c, h                                          ; $5e51: $4c
	xor b                                            ; $5e52: $a8
	ld d, d                                          ; $5e53: $52
	sbc h                                            ; $5e54: $9c
	ld c, e                                          ; $5e55: $4b
	ld b, b                                          ; $5e56: $40
	ld c, l                                          ; $5e57: $4d
	inc a                                            ; $5e58: $3c
	ld d, b                                          ; $5e59: $50
	ld l, [hl]                                       ; $5e5a: $6e
	ld c, [hl]                                       ; $5e5b: $4e
	inc a                                            ; $5e5c: $3c
	ld a, [hl-]                                      ; $5e5d: $3a
	and b                                            ; $5e5e: $a0
	db $eb                                           ; $5e5f: $eb
	ld d, l                                          ; $5e60: $55
	xor $2a                                          ; $5e61: $ee $2a
	ld c, d                                          ; $5e63: $4a
	xor h                                            ; $5e64: $ac
	ld l, a                                          ; $5e65: $6f
	ld d, e                                          ; $5e66: $53
	di                                               ; $5e67: $f3
	sbc $5c                                          ; $5e68: $de $5c
	pop af                                           ; $5e6a: $f1
	adc c                                            ; $5e6b: $89
	ld d, d                                          ; $5e6c: $52
	ld c, l                                          ; $5e6d: $4d

jr_097_5e6e:
	dec a                                            ; $5e6e: $3d
	ld d, b                                          ; $5e6f: $50
	pop af                                           ; $5e70: $f1
	sbc $4e                                          ; $5e71: $de $4e
	inc a                                            ; $5e73: $3c
	ld d, b                                          ; $5e74: $50
	and b                                            ; $5e75: $a0
	cpl                                              ; $5e76: $2f
	ld b, e                                          ; $5e77: $43
	ld b, b                                          ; $5e78: $40
	inc [hl]                                         ; $5e79: $34
	or h                                             ; $5e7a: $b4
	xor h                                            ; $5e7b: $ac
	db $ec                                           ; $5e7c: $ec
	ldh [rBGP], a                                    ; $5e7d: $e0 $47
	db $ec                                           ; $5e7f: $ec
	db $ed                                           ; $5e80: $ed
	inc de                                           ; $5e81: $13
	ld c, a                                          ; $5e82: $4f
	ld d, b                                          ; $5e83: $50
	ld h, h                                          ; $5e84: $64
	add hl, sp                                       ; $5e85: $39
	inc a                                            ; $5e86: $3c
	ld a, [hl-]                                      ; $5e87: $3a
	and b                                            ; $5e88: $a0
	db $ed                                           ; $5e89: $ed
	ld e, l                                          ; $5e8a: $5d
	ld c, d                                          ; $5e8b: $4a
	ldh a, [$f4]                                     ; $5e8c: $f0 $f4
	ld e, [hl]                                       ; $5e8e: $5e
	ld a, [hl-]                                      ; $5e8f: $3a
	ld e, b                                          ; $5e90: $58
	jr c, jr_097_5e33                                ; $5e91: $38 $a0

	cpl                                              ; $5e93: $2f
	ld b, e                                          ; $5e94: $43
	xor $10                                          ; $5e95: $ee $10
	xor $10                                          ; $5e97: $ee $10
	and b                                            ; $5e99: $a0
	db $ec                                           ; $5e9a: $ec
	ld h, l                                          ; $5e9b: $65
	ld b, d                                          ; $5e9c: $42
	inc de                                           ; $5e9d: $13
	pop af                                           ; $5e9e: $f1
	inc b                                            ; $5e9f: $04
	ld d, a                                          ; $5ea0: $57

jr_097_5ea1:
	db $f4                                           ; $5ea1: $f4
	push hl                                          ; $5ea2: $e5
	jr c, jr_097_5ef0                                ; $5ea3: $38 $4b

	ldh a, [$f4]                                     ; $5ea5: $f0 $f4
	ld e, [hl]                                       ; $5ea7: $5e
	dec a                                            ; $5ea8: $3d
	ld b, c                                          ; $5ea9: $41
	ld c, d                                          ; $5eaa: $4a
	ld a, $66                                        ; $5eab: $3e $66
	add hl, sp                                       ; $5ead: $39
	ld c, h                                          ; $5eae: $4c
	and b                                            ; $5eaf: $a0
	ld h, c                                          ; $5eb0: $61
	ld d, [hl]                                       ; $5eb1: $56
	ld b, c                                          ; $5eb2: $41
	ld c, c                                          ; $5eb3: $49
	ldh a, [$f4]                                     ; $5eb4: $f0 $f4
	ld e, [hl]                                       ; $5eb6: $5e
	ccf                                              ; $5eb7: $3f
	ld b, l                                          ; $5eb8: $45
	xor b                                            ; $5eb9: $a8
	sbc d                                            ; $5eba: $9a
	pop af                                           ; $5ebb: $f1
	ld sp, hl                                        ; $5ebc: $f9
	ld b, a                                          ; $5ebd: $47
	di                                               ; $5ebe: $f3
	sbc $5c                                          ; $5ebf: $de $5c
	pop af                                           ; $5ec1: $f1
	adc c                                            ; $5ec2: $89
	ld d, d                                          ; $5ec3: $52
	ld c, l                                          ; $5ec4: $4d
	ld c, [hl]                                       ; $5ec5: $4e
	ld b, d                                          ; $5ec6: $42
	ld c, e                                          ; $5ec7: $4b
	ldh a, [$64]                                     ; $5ec8: $f0 $64
	ld b, l                                          ; $5eca: $45
	and b                                            ; $5ecb: $a0
	cpl                                              ; $5ecc: $2f
	ld b, e                                          ; $5ecd: $43
	ld b, [hl]                                       ; $5ece: $46
	dec sp                                           ; $5ecf: $3b
	inc [hl]                                         ; $5ed0: $34
	db $ec                                           ; $5ed1: $ec
	ldh [$a8], a                                     ; $5ed2: $e0 $a8
	ld l, e                                          ; $5ed4: $6b
	inc a                                            ; $5ed5: $3c
	ld d, b                                          ; $5ed6: $50
	ldh a, [$dd]                                     ; $5ed7: $f0 $dd

jr_097_5ed9:
	ldh a, [$9c]                                     ; $5ed9: $f0 $9c
	ld a, $3d                                        ; $5edb: $3e $3d
	ld d, b                                          ; $5edd: $50
	inc de                                           ; $5ede: $13
	jr c, jr_097_5f19                                ; $5edf: $38 $38

	ld b, d                                          ; $5ee1: $42
	inc a                                            ; $5ee2: $3c

jr_097_5ee3:
	ld a, [hl-]                                      ; $5ee3: $3a
	and c                                            ; $5ee4: $a1
	ld hl, $10ee                                     ; $5ee5: $21 $ee $10
	xor $10                                          ; $5ee8: $ee $10
	xor b                                            ; $5eea: $a8
	jr nz, jr_097_5ed9                               ; $5eeb: $20 $ec

	ld h, l                                          ; $5eed: $65
	ld b, d                                          ; $5eee: $42
	pop af                                           ; $5eef: $f1

jr_097_5ef0:
	sbc l                                            ; $5ef0: $9d
	jr c, jr_097_5ee3                                ; $5ef1: $38 $f0

	jr c, jr_097_5f44                                ; $5ef3: $38 $4f

	inc de                                           ; $5ef5: $13
	db $ec                                           ; $5ef6: $ec
	dec b                                            ; $5ef7: $05
	ld d, l                                          ; $5ef8: $55
	ld a, c                                          ; $5ef9: $79

jr_097_5efa:
	ld b, a                                          ; $5efa: $47
	and b                                            ; $5efb: $a0
	cpl                                              ; $5efc: $2f
	ld b, e                                          ; $5efd: $43
	ld b, b                                          ; $5efe: $40
	add hl, sp                                       ; $5eff: $39
	inc a                                            ; $5f00: $3c
	ld [hl], h                                       ; $5f01: $74
	xor h                                            ; $5f02: $ac
	db $ec                                           ; $5f03: $ec
	ld h, l                                          ; $5f04: $65
	ld b, d                                          ; $5f05: $42
	pop af                                           ; $5f06: $f1
	sbc l                                            ; $5f07: $9d
	jr c, jr_097_5efa                                ; $5f08: $38 $f0

	jr c, jr_097_5f48                                ; $5f0a: $38 $3c

	ld [hl], h                                       ; $5f0c: $74
	ld c, b                                          ; $5f0d: $48
	and b                                            ; $5f0e: $a0
	cpl                                              ; $5f0f: $2f
	ld b, e                                          ; $5f10: $43
	ld b, [hl]                                       ; $5f11: $46
	dec sp                                           ; $5f12: $3b
	inc [hl]                                         ; $5f13: $34
	db $ec                                           ; $5f14: $ec
	ldh [$a8], a                                     ; $5f15: $e0 $a8
	xor $2a                                          ; $5f17: $ee $2a

jr_097_5f19:
	ld d, e                                          ; $5f19: $53
	ldh a, [rHDMA5]                                  ; $5f1a: $f0 $55
	pop af                                           ; $5f1c: $f1
	add b                                            ; $5f1d: $80
	ld a, e                                          ; $5f1e: $7b
	dec sp                                           ; $5f1f: $3b
	inc a                                            ; $5f20: $3c
	ld d, a                                          ; $5f21: $57
	ld c, d                                          ; $5f22: $4a
	inc de                                           ; $5f23: $13
	pop af                                           ; $5f24: $f1
	sbc $3b                                          ; $5f25: $de $3b
	ld h, c                                          ; $5f27: $61
	ld d, [hl]                                       ; $5f28: $56
	add hl, sp                                       ; $5f29: $39
	ld b, l                                          ; $5f2a: $45
	and b                                            ; $5f2b: $a0
	ld e, d                                          ; $5f2c: $5a
	add hl, sp                                       ; $5f2d: $39
	ld l, [hl]                                       ; $5f2e: $6e
	ld c, l                                          ; $5f2f: $4d
	ld a, e                                          ; $5f30: $7b
	xor h                                            ; $5f31: $ac
	ld d, h                                          ; $5f32: $54
	ld b, c                                          ; $5f33: $41
	ld a, [hl-]                                      ; $5f34: $3a
	xor $2a                                          ; $5f35: $ee $2a
	ld c, d                                          ; $5f37: $4a
	ldh a, [rHDMA5]                                  ; $5f38: $f0 $55
	pop af                                           ; $5f3a: $f1
	add b                                            ; $5f3b: $80
	ld d, c                                          ; $5f3c: $51
	ld c, [hl]                                       ; $5f3d: $4e
	ld b, d                                          ; $5f3e: $42
	xor c                                            ; $5f3f: $a9
	ldh a, [$d0]                                     ; $5f40: $f0 $d0
	ld [hl], a                                       ; $5f42: $77
	ldh a, [c]                                       ; $5f43: $f2

jr_097_5f44:
	or b                                             ; $5f44: $b0
	ld c, h                                          ; $5f45: $4c
	and b                                            ; $5f46: $a0
	cpl                                              ; $5f47: $2f

jr_097_5f48:
	ld b, e                                          ; $5f48: $43
	rst JumpTable                                          ; $5f49: $c7
	and c                                            ; $5f4a: $a1
	ld d, d                                          ; $5f4b: $52
	inc [hl]                                         ; $5f4c: $34
	db $eb                                           ; $5f4d: $eb
	inc [hl]                                         ; $5f4e: $34
	ld e, l                                          ; $5f4f: $5d
	ld e, d                                          ; $5f50: $5a
	xor h                                            ; $5f51: $ac
	ldh a, [rHDMA5]                                  ; $5f52: $f0 $55
	pop af                                           ; $5f54: $f1
	add b                                            ; $5f55: $80
	ld b, d                                          ; $5f56: $42
	ldh a, [$3a]                                     ; $5f57: $f0 $3a
	db $fc                                           ; $5f59: $fc
	ld a, [de]                                       ; $5f5a: $1a
	ld h, d                                          ; $5f5b: $62
	inc de                                           ; $5f5c: $13
	ld b, l                                          ; $5f5d: $45
	ld d, l                                          ; $5f5e: $55
	ldh a, [$75]                                     ; $5f5f: $f0 $75
	ldh a, [$8c]                                     ; $5f61: $f0 $8c
	ccf                                              ; $5f63: $3f
	ld l, h                                          ; $5f64: $6c
	ld a, [hl-]                                      ; $5f65: $3a
	ld e, b                                          ; $5f66: $58
	jr c, @-$5e                                      ; $5f67: $38 $a0

	cpl                                              ; $5f69: $2f
	ld b, e                                          ; $5f6a: $43
	ld b, b                                          ; $5f6b: $40
	ld c, l                                          ; $5f6c: $4d
	ld c, a                                          ; $5f6d: $4f
	ld b, b                                          ; $5f6e: $40
	add hl, sp                                       ; $5f6f: $39
	ld b, h                                          ; $5f70: $44
	ld c, h                                          ; $5f71: $4c
	xor b                                            ; $5f72: $a8
	ldh a, [rHDMA5]                                  ; $5f73: $f0 $55
	pop af                                           ; $5f75: $f1
	add b                                            ; $5f76: $80
	ld b, d                                          ; $5f77: $42
	ldh a, [$3a]                                     ; $5f78: $f0 $3a
	db $fc                                           ; $5f7a: $fc
	ld a, [de]                                       ; $5f7b: $1a
	inc a                                            ; $5f7c: $3c
	ld [hl], h                                       ; $5f7d: $74
	ld c, b                                          ; $5f7e: $48
	and b                                            ; $5f7f: $a0
	ldh a, [$cd]                                     ; $5f80: $f0 $cd
	ld e, e                                          ; $5f82: $5b
	pop af                                           ; $5f83: $f1
	ld d, h                                          ; $5f84: $54
	add e                                            ; $5f85: $83
	ld h, d                                          ; $5f86: $62
	ldh a, [hDisp0_SCX]                                     ; $5f87: $f0 $84
	ldh a, [$0d]                                     ; $5f89: $f0 $0d
	pop af                                           ; $5f8b: $f1
	ld h, c                                          ; $5f8c: $61
	ld e, l                                          ; $5f8d: $5d
	ld c, [hl]                                       ; $5f8e: $4e
	inc de                                           ; $5f8f: $13
	ld b, d                                          ; $5f90: $42
	ld c, e                                          ; $5f91: $4b
	inc [hl]                                         ; $5f92: $34
	push af                                          ; $5f93: $f5
	jr z, jr_097_5fd2                                ; $5f94: $28 $3c

	pop af                                           ; $5f96: $f1
	ld b, d                                          ; $5f97: $42
	ld b, d                                          ; $5f98: $42
	di                                               ; $5f99: $f3
	adc c                                            ; $5f9a: $89
	push af                                          ; $5f9b: $f5
	ld a, [hl+]                                      ; $5f9c: $2a
	ld b, l                                          ; $5f9d: $45
	and b                                            ; $5f9e: $a0
	cpl                                              ; $5f9f: $2f
	ld b, e                                          ; $5fa0: $43
	rst JumpTable                                          ; $5fa1: $c7
	ld b, h                                          ; $5fa2: $44
	ld c, h                                          ; $5fa3: $4c
	xor b                                            ; $5fa4: $a8
	ld b, [hl]                                       ; $5fa5: $46
	ld d, a                                          ; $5fa6: $57
	ld d, e                                          ; $5fa7: $53
	ld c, c                                          ; $5fa8: $49
	add hl, sp                                       ; $5fa9: $39
	and b                                            ; $5faa: $a0
	ldh a, [hDisp0_SCX]                                     ; $5fab: $f0 $84
	ldh a, [$0d]                                     ; $5fad: $f0 $0d
	ld c, a                                          ; $5faf: $4f
	pop af                                           ; $5fb0: $f1
	ld [hl], e                                       ; $5fb1: $73
	ldh a, [$0d]                                     ; $5fb2: $f0 $0d
	ld c, a                                          ; $5fb4: $4f
	inc de                                           ; $5fb5: $13
	ldh a, [$cd]                                     ; $5fb6: $f0 $cd
	ld e, e                                          ; $5fb8: $5b
	pop af                                           ; $5fb9: $f1
	ld d, h                                          ; $5fba: $54
	add e                                            ; $5fbb: $83
	ld h, d                                          ; $5fbc: $62
	ld d, c                                          ; $5fbd: $51
	ld c, [hl]                                       ; $5fbe: $4e
	ld b, d                                          ; $5fbf: $42
	ld c, e                                          ; $5fc0: $4b
	push af                                          ; $5fc1: $f5
	jr z, jr_097_6000                                ; $5fc2: $28 $3c

	pop af                                           ; $5fc4: $f1
	ld b, d                                          ; $5fc5: $42
	ld b, l                                          ; $5fc6: $45
	and b                                            ; $5fc7: $a0
	cpl                                              ; $5fc8: $2f
	ld b, e                                          ; $5fc9: $43
	rst JumpTable                                          ; $5fca: $c7
	ld b, h                                          ; $5fcb: $44
	ld e, l                                          ; $5fcc: $5d
	ld e, d                                          ; $5fcd: $5a
	ld c, b                                          ; $5fce: $48
	and b                                            ; $5fcf: $a0
	ldh a, [rHDMA5]                                  ; $5fd0: $f0 $55

jr_097_5fd2:
	pop af                                           ; $5fd2: $f1
	add b                                            ; $5fd3: $80
	ld a, $3d                                        ; $5fd4: $3e $3d
	ldh a, [$3a]                                     ; $5fd6: $f0 $3a
	db $fc                                           ; $5fd8: $fc
	ld a, [de]                                       ; $5fd9: $1a
	ld h, d                                          ; $5fda: $62
	inc de                                           ; $5fdb: $13
	ld h, c                                          ; $5fdc: $61
	ld d, [hl]                                       ; $5fdd: $56
	ld b, c                                          ; $5fde: $41
	ld c, c                                          ; $5fdf: $49
	ldh a, [$75]                                     ; $5fe0: $f0 $75
	ldh a, [$8c]                                     ; $5fe2: $f0 $8c
	ccf                                              ; $5fe4: $3f
	ld l, h                                          ; $5fe5: $6c
	dec a                                            ; $5fe6: $3d
	ld b, d                                          ; $5fe7: $42
	and c                                            ; $5fe8: $a1
	cpl                                              ; $5fe9: $2f
	ld b, e                                          ; $5fea: $43
	ld b, b                                          ; $5feb: $40
	add hl, sp                                       ; $5fec: $39
	inc a                                            ; $5fed: $3c
	xor b                                            ; $5fee: $a8
	ldh a, [rHDMA5]                                  ; $5fef: $f0 $55
	pop af                                           ; $5ff1: $f1
	add b                                            ; $5ff2: $80
	ld a, $3d                                        ; $5ff3: $3e $3d
	ldh a, [$3a]                                     ; $5ff5: $f0 $3a
	db $fc                                           ; $5ff7: $fc
	ld a, [de]                                       ; $5ff8: $1a
	inc a                                            ; $5ff9: $3c
	ld [hl], h                                       ; $5ffa: $74
	ld c, b                                          ; $5ffb: $48
	and b                                            ; $5ffc: $a0
	ld b, b                                          ; $5ffd: $40
	ld c, l                                          ; $5ffe: $4d
	ld c, d                                          ; $5fff: $4a

jr_097_6000:
	ld c, a                                          ; $6000: $4f
	xor $05                                          ; $6001: $ee $05
	ld a, [hl-]                                      ; $6003: $3a
	ld d, b                                          ; $6004: $50
	xor h                                            ; $6005: $ac
	ld b, [hl]                                       ; $6006: $46
	ld a, [hl-]                                      ; $6007: $3a
	dec a                                            ; $6008: $3d
	ld b, a                                          ; $6009: $47
	ld c, e                                          ; $600a: $4b
	pop af                                           ; $600b: $f1
	and e                                            ; $600c: $a3
	pop af                                           ; $600d: $f1
	ld [hl], d                                       ; $600e: $72
	ld d, e                                          ; $600f: $53
	ld a, [hl-]                                      ; $6010: $3a
	jr c, jr_097_6076                                ; $6011: $38 $63

	and b                                            ; $6013: $a0
	cpl                                              ; $6014: $2f
	ld b, e                                          ; $6015: $43
	rst JumpTable                                          ; $6016: $c7
	ld b, h                                          ; $6017: $44
	ld c, h                                          ; $6018: $4c
	xor b                                            ; $6019: $a8
	ld b, [hl]                                       ; $601a: $46
	ld d, a                                          ; $601b: $57
	ld d, e                                          ; $601c: $53
	ld c, c                                          ; $601d: $49
	add hl, sp                                       ; $601e: $39
	xor b                                            ; $601f: $a8
	db $ec                                           ; $6020: $ec
	ldh [$a0], a                                     ; $6021: $e0 $a0
	ld d, h                                          ; $6023: $54
	ld b, c                                          ; $6024: $41
	ld a, [hl-]                                      ; $6025: $3a
	inc de                                           ; $6026: $13
	db $eb                                           ; $6027: $eb
	ld d, e                                          ; $6028: $53
	xor $2a                                          ; $6029: $ee $2a
	ld c, d                                          ; $602b: $4a
	xor h                                            ; $602c: $ac
	ld b, l                                          ; $602d: $45
	ld d, l                                          ; $602e: $55
	ldh a, [rHDMA5]                                  ; $602f: $f0 $55
	pop af                                           ; $6031: $f1
	add b                                            ; $6032: $80
	ld a, [hl-]                                      ; $6033: $3a
	ld b, c                                          ; $6034: $41
	ccf                                              ; $6035: $3f
	inc de                                           ; $6036: $13
	sub h                                            ; $6037: $94
	ld a, b                                          ; $6038: $78
	ld c, [hl]                                       ; $6039: $4e
	ld h, e                                          ; $603a: $63
	ld c, h                                          ; $603b: $4c
	and b                                            ; $603c: $a0
	cpl                                              ; $603d: $2f
	ld b, e                                          ; $603e: $43
	ld b, b                                          ; $603f: $40
	xor h                                            ; $6040: $ac
	ld b, b                                          ; $6041: $40
	ld b, c                                          ; $6042: $41
	ld a, [hl-]                                      ; $6043: $3a
	sbc d                                            ; $6044: $9a
	add d                                            ; $6045: $82
	ld h, e                                          ; $6046: $63
	ld c, l                                          ; $6047: $4d
	ccf                                              ; $6048: $3f
	ld c, a                                          ; $6049: $4f
	ld c, b                                          ; $604a: $48
	and b                                            ; $604b: $a0
	ldh a, [rHDMA5]                                  ; $604c: $f0 $55
	pop af                                           ; $604e: $f1
	add b                                            ; $604f: $80
	ld b, d                                          ; $6050: $42
	ldh a, [$3a]                                     ; $6051: $f0 $3a
	db $fc                                           ; $6053: $fc
	ld a, [de]                                       ; $6054: $1a
	sbc l                                            ; $6055: $9d
	ld d, b                                          ; $6056: $50
	jr c, jr_097_606c                                ; $6057: $38 $13

	ld d, c                                          ; $6059: $51
	sbc l                                            ; $605a: $9d
	ldh a, [rTAC]                                    ; $605b: $f0 $07
	inc a                                            ; $605d: $3c
	ld c, [hl]                                       ; $605e: $4e
	ld h, e                                          ; $605f: $63
	ld c, h                                          ; $6060: $4c
	and b                                            ; $6061: $a0
	cpl                                              ; $6062: $2f
	ld b, e                                          ; $6063: $43
	jr c, jr_097_609a                                ; $6064: $38 $34

	jr c, jr_097_60d6                                ; $6066: $38 $6e

	xor b                                            ; $6068: $a8
	ldh a, [rHDMA5]                                  ; $6069: $f0 $55
	pop af                                           ; $606b: $f1

jr_097_606c:
	add b                                            ; $606c: $80
	ld b, d                                          ; $606d: $42
	ldh a, [$3a]                                     ; $606e: $f0 $3a
	db $fc                                           ; $6070: $fc
	ld a, [de]                                       ; $6071: $1a
	inc a                                            ; $6072: $3c
	ld [hl], h                                       ; $6073: $74
	xor l                                            ; $6074: $ad
	ld b, l                                          ; $6075: $45

jr_097_6076:
	ld d, l                                          ; $6076: $55
	ldh a, [$75]                                     ; $6077: $f0 $75
	ldh a, [$8c]                                     ; $6079: $f0 $8c
	ccf                                              ; $607b: $3f
	ld l, h                                          ; $607c: $6c
	ld c, [hl]                                       ; $607d: $4e
	inc a                                            ; $607e: $3c
	and b                                            ; $607f: $a0
	ldh a, [$34]                                     ; $6080: $f0 $34
	ld b, a                                          ; $6082: $47
	ldh a, [rAUD1LOW]                                ; $6083: $f0 $13
	ldh a, [$af]                                     ; $6085: $f0 $af
	ld a, [hl-]                                      ; $6087: $3a
	ld d, h                                          ; $6088: $54
	ld c, c                                          ; $6089: $49
	ld c, e                                          ; $608a: $4b
	xor h                                            ; $608b: $ac

jr_097_608c:
	ld a, $3a                                        ; $608c: $3e $3a
	ld d, l                                          ; $608e: $55
	ccf                                              ; $608f: $3f
	ld c, a                                          ; $6090: $4f
	jr c, @+$3a                                      ; $6091: $38 $38

	ld b, d                                          ; $6093: $42
	ld b, l                                          ; $6094: $45
	and b                                            ; $6095: $a0
	ld hl, $ebeb                                     ; $6096: $21 $eb $eb
	xor b                                            ; $6099: $a8

jr_097_609a:
	jr nz, jr_097_608c                               ; $609a: $20 $f0

	ld d, l                                          ; $609c: $55
	pop af                                           ; $609d: $f1
	add b                                            ; $609e: $80
	ld b, d                                          ; $609f: $42
	ldh a, [$3a]                                     ; $60a0: $f0 $3a
	db $fc                                           ; $60a2: $fc
	ld a, [de]                                       ; $60a3: $1a
	ld c, a                                          ; $60a4: $4f
	inc de                                           ; $60a5: $13
	ldh a, [$75]                                     ; $60a6: $f0 $75
	ldh a, [$8c]                                     ; $60a8: $f0 $8c
	ld a, [hl-]                                      ; $60aa: $3a
	jr c, jr_097_6102                                ; $60ab: $38 $55

	ld a, c                                          ; $60ad: $79
	ld b, a                                          ; $60ae: $47
	ld c, b                                          ; $60af: $48
	and b                                            ; $60b0: $a0
	cpl                                              ; $60b1: $2f
	ld b, e                                          ; $60b2: $43
	ld b, b                                          ; $60b3: $40
	add hl, sp                                       ; $60b4: $39
	inc a                                            ; $60b5: $3c
	ld [hl], h                                       ; $60b6: $74
	xor h                                            ; $60b7: $ac
	ldh a, [rHDMA5]                                  ; $60b8: $f0 $55
	pop af                                           ; $60ba: $f1
	add b                                            ; $60bb: $80
	ld b, d                                          ; $60bc: $42
	ldh a, [$3a]                                     ; $60bd: $f0 $3a
	db $fc                                           ; $60bf: $fc
	ld a, [de]                                       ; $60c0: $1a
	inc a                                            ; $60c1: $3c
	ld c, b                                          ; $60c2: $48
	and b                                            ; $60c3: $a0
	cpl                                              ; $60c4: $2f
	ld b, e                                          ; $60c5: $43
	ld b, [hl]                                       ; $60c6: $46
	dec sp                                           ; $60c7: $3b
	inc [hl]                                         ; $60c8: $34
	db $ec                                           ; $60c9: $ec
	ldh [$a8], a                                     ; $60ca: $e0 $a8
	ldh a, [$5f]                                     ; $60cc: $f0 $5f
	ldh a, [$9b]                                     ; $60ce: $f0 $9b
	inc [hl]                                         ; $60d0: $34
	adc b                                            ; $60d1: $88
	ld b, a                                          ; $60d2: $47
	ld a, [$3b38]                                    ; $60d3: $fa $38 $3b

jr_097_60d6:
	ccf                                              ; $60d6: $3f
	ld c, [hl]                                       ; $60d7: $4e
	xor $2a                                          ; $60d8: $ee $2a
	ld c, e                                          ; $60da: $4b
	inc de                                           ; $60db: $13
	ldh a, [c]                                       ; $60dc: $f2
	ld a, [hl]                                       ; $60dd: $7e
	ld e, h                                          ; $60de: $5c
	ccf                                              ; $60df: $3f
	ld e, h                                          ; $60e0: $5c
	ld h, c                                          ; $60e1: $61
	ld d, [hl]                                       ; $60e2: $56
	dec sp                                           ; $60e3: $3b
	ccf                                              ; $60e4: $3f
	ld c, b                                          ; $60e5: $48
	and b                                            ; $60e6: $a0
	ld d, d                                          ; $60e7: $52
	ld b, h                                          ; $60e8: $44
	xor h                                            ; $60e9: $ac
	ld b, b                                          ; $60ea: $40
	ld b, c                                          ; $60eb: $41
	ld a, [hl-]                                      ; $60ec: $3a
	sbc d                                            ; $60ed: $9a
	ld l, [hl]                                       ; $60ee: $6e
	dec sp                                           ; $60ef: $3b
	ccf                                              ; $60f0: $3f
	dec a                                            ; $60f1: $3d
	ld b, d                                          ; $60f2: $42
	xor c                                            ; $60f3: $a9
	jr c, @+$3a                                      ; $60f4: $38 $38

	pop af                                           ; $60f6: $f1
	cp $f2                                           ; $60f7: $fe $f2
	ccf                                              ; $60f9: $3f
	ld b, a                                          ; $60fa: $47
	xor h                                            ; $60fb: $ac
	db $ed                                           ; $60fc: $ed
	ld e, l                                          ; $60fd: $5d
	ld b, d                                          ; $60fe: $42
	ldh a, [$60]                                     ; $60ff: $f0 $60
	ld e, c                                          ; $6101: $59

jr_097_6102:
	ldh a, [rAUD3LOW]                                ; $6102: $f0 $1d
	ld h, d                                          ; $6104: $62
	ldh a, [rHDMA1]                                  ; $6105: $f0 $51
	dec sp                                           ; $6107: $3b
	dec a                                            ; $6108: $3d
	ld d, b                                          ; $6109: $50
	and c                                            ; $610a: $a1
	cpl                                              ; $610b: $2f
	ld b, e                                          ; $610c: $43
	ldh a, [$60]                                     ; $610d: $f0 $60
	ld e, c                                          ; $610f: $59
	ldh a, [rAUD3LOW]                                ; $6110: $f0 $1d
	inc a                                            ; $6112: $3c
	xor l                                            ; $6113: $ad
	ld l, e                                          ; $6114: $6b
	ld d, e                                          ; $6115: $53
	db $ec                                           ; $6116: $ec
	ld a, [bc]                                       ; $6117: $0a
	ld [hl], h                                       ; $6118: $74
	and b                                            ; $6119: $a0
	ld l, e                                          ; $611a: $6b
	ld a, [hl-]                                      ; $611b: $3a
	ld d, b                                          ; $611c: $50
	xor h                                            ; $611d: $ac
	ld l, a                                          ; $611e: $6f
	ld c, c                                          ; $611f: $49
	db $f4                                           ; $6120: $f4
	ld [hl-], a                                      ; $6121: $32
	ldh a, [$cd]                                     ; $6122: $f0 $cd
	xor $2a                                          ; $6124: $ee $2a
	ld c, d                                          ; $6126: $4a
	ld c, a                                          ; $6127: $4f
	ld d, c                                          ; $6128: $51
	ld c, [hl]                                       ; $6129: $4e
	and c                                            ; $612a: $a1
	cpl                                              ; $612b: $2f
	ld b, e                                          ; $612c: $43
	jr c, jr_097_6163                                ; $612d: $38 $34

	jr c, jr_097_619f                                ; $612f: $38 $6e

	xor b                                            ; $6131: $a8
	pop af                                           ; $6132: $f1
	ld b, $f1                                        ; $6133: $06 $f1
	ld a, $3e                                        ; $6135: $3e $3e

jr_097_6137:
	ccf                                              ; $6137: $3f
	ld h, h                                          ; $6138: $64
	ld d, l                                          ; $6139: $55
	ld b, l                                          ; $613a: $45
	and b                                            ; $613b: $a0
	ld b, b                                          ; $613c: $40
	add hl, sp                                       ; $613d: $39
	xor b                                            ; $613e: $a8
	ld a, [hl-]                                      ; $613f: $3a
	ld d, b                                          ; $6140: $50
	inc [hl]                                         ; $6141: $34
	ldh a, [rAUD1LOW]                                ; $6142: $f0 $13
	jr c, jr_097_6137                                ; $6144: $38 $f1

	sub $62                                          ; $6146: $d6 $62
	ei                                               ; $6148: $fb
	inc bc                                           ; $6149: $03
	pop af                                           ; $614a: $f1
	sbc l                                            ; $614b: $9d
	ld a, $3f                                        ; $614c: $3e $3f
	inc de                                           ; $614e: $13
	ldh a, [$a4]                                     ; $614f: $f0 $a4
	ld e, [hl]                                       ; $6151: $5e
	dec a                                            ; $6152: $3d
	ld d, b                                          ; $6153: $50
	and c                                            ; $6154: $a1
	cpl                                              ; $6155: $2f
	ld b, e                                          ; $6156: $43
	rst JumpTable                                          ; $6157: $c7
	ld b, h                                          ; $6158: $44
	ld c, h                                          ; $6159: $4c
	xor b                                            ; $615a: $a8
	ld b, [hl]                                       ; $615b: $46
	ld d, a                                          ; $615c: $57
	ld d, e                                          ; $615d: $53
	ld c, c                                          ; $615e: $49
	add hl, sp                                       ; $615f: $39
	xor b                                            ; $6160: $a8
	ld l, [hl]                                       ; $6161: $6e
	ld c, [hl]                                       ; $6162: $4e

jr_097_6163:
	ld a, a                                          ; $6163: $7f
	ld d, e                                          ; $6164: $53
	sub h                                            ; $6165: $94
	ccf                                              ; $6166: $3f
	ld e, h                                          ; $6167: $5c
	dec a                                            ; $6168: $3d
	ld b, l                                          ; $6169: $45
	and b                                            ; $616a: $a0
	ld b, b                                          ; $616b: $40
	ld b, c                                          ; $616c: $41
	ld a, [hl-]                                      ; $616d: $3a
	xor $2a                                          ; $616e: $ee $2a
	xor h                                            ; $6170: $ac
	db $eb                                           ; $6171: $eb

jr_097_6172:
	ld d, e                                          ; $6172: $53
	ld b, a                                          ; $6173: $47
	ldh a, [$ec]                                     ; $6174: $f0 $ec
	ld d, d                                          ; $6176: $52
	dec sp                                           ; $6177: $3b
	ccf                                              ; $6178: $3f
	ld c, [hl]                                       ; $6179: $4e
	ld h, e                                          ; $617a: $63
	xor b                                            ; $617b: $a8
	ldh a, [$60]                                     ; $617c: $f0 $60
	ld e, c                                          ; $617e: $59
	ldh a, [rAUD3LOW]                                ; $617f: $f0 $1d
	ld c, d                                          ; $6181: $4a
	ld c, a                                          ; $6182: $4f
	ldh a, [$ec]                                     ; $6183: $f0 $ec
	ld [hl], c                                       ; $6185: $71
	dec a                                            ; $6186: $3d
	ld d, b                                          ; $6187: $50
	and c                                            ; $6188: $a1
	ld l, e                                          ; $6189: $6b
	inc a                                            ; $618a: $3c
	ld b, [hl]                                       ; $618b: $46
	ld c, [hl]                                       ; $618c: $4e
	ld h, e                                          ; $618d: $63
	ld b, l                                          ; $618e: $45
	ld c, h                                          ; $618f: $4c
	xor b                                            ; $6190: $a8
	push af                                          ; $6191: $f5
	ld hl, $3cf2                                     ; $6192: $21 $f2 $3c
	ld h, d                                          ; $6195: $62
	ldh a, [$a5]                                     ; $6196: $f0 $a5
	ld d, a                                          ; $6198: $57
	dec a                                            ; $6199: $3d
	jr c, jr_097_61e5                                ; $619a: $38 $49

	inc a                                            ; $619c: $3c
	xor h                                            ; $619d: $ac
	rst FarCall                                          ; $619e: $f7

jr_097_619f:
	dec h                                            ; $619f: $25
	ldh a, [c]                                       ; $61a0: $f2
	inc a                                            ; $61a1: $3c
	ld h, d                                          ; $61a2: $62
	ldh a, [$a5]                                     ; $61a3: $f0 $a5
	ld d, a                                          ; $61a5: $57
	dec a                                            ; $61a6: $3d
	jr c, jr_097_61f2                                ; $61a7: $38 $49

	inc a                                            ; $61a9: $3c
	and b                                            ; $61aa: $a0
	cpl                                              ; $61ab: $2f
	ld b, e                                          ; $61ac: $43
	db $ec                                           ; $61ad: $ec
	ldh [$a8], a                                     ; $61ae: $e0 $a8
	ld b, b                                          ; $61b0: $40

jr_097_61b1:
	ld c, l                                          ; $61b1: $4d
	inc [hl]                                         ; $61b2: $34
	push af                                          ; $61b3: $f5
	ld e, e                                          ; $61b4: $5b
	ldh a, [$38]                                     ; $61b5: $f0 $38
	ld c, c                                          ; $61b7: $49
	ld c, a                                          ; $61b8: $4f
	ldh a, [$cd]                                     ; $61b9: $f0 $cd
	ld e, e                                          ; $61bb: $5b
	ld c, b                                          ; $61bc: $48
	and b                                            ; $61bd: $a0
	ld [$a8ce], a                                    ; $61be: $ea $ce $a8
	ld b, b                                          ; $61c1: $40
	ld c, l                                          ; $61c2: $4d
	ld e, e                                          ; $61c3: $5b
	ld d, [hl]                                       ; $61c4: $56
	inc [hl]                                         ; $61c5: $34
	ldh a, [$6f]                                     ; $61c6: $f0 $6f
	ldh a, [$0b]                                     ; $61c8: $f0 $0b
	ld b, a                                          ; $61ca: $47
	ldh a, [$a4]                                     ; $61cb: $f0 $a4
	ld e, [hl]                                       ; $61cd: $5e
	ld a, [hl-]                                      ; $61ce: $3a
	ld e, b                                          ; $61cf: $58
	jr c, jr_097_6172                                ; $61d0: $38 $a0

	cpl                                              ; $61d2: $2f
	ld b, e                                          ; $61d3: $43
	ld b, [hl]                                       ; $61d4: $46
	inc [hl]                                         ; $61d5: $34
	ld b, [hl]                                       ; $61d6: $46
	ld d, a                                          ; $61d7: $57
	ld d, e                                          ; $61d8: $53
	ld c, c                                          ; $61d9: $49
	add hl, sp                                       ; $61da: $39
	xor b                                            ; $61db: $a8
	ld b, b                                          ; $61dc: $40
	add hl, sp                                       ; $61dd: $39
	ld d, c                                          ; $61de: $51
	ld c, [hl]                                       ; $61df: $4e
	ld b, l                                          ; $61e0: $45
	and b                                            ; $61e1: $a0
	ld b, b                                          ; $61e2: $40
	ld b, c                                          ; $61e3: $41
	ld a, [hl-]                                      ; $61e4: $3a

jr_097_61e5:
	xor $2a                                          ; $61e5: $ee $2a
	xor h                                            ; $61e7: $ac
	ld d, d                                          ; $61e8: $52
	ld b, h                                          ; $61e9: $44
	ld l, [hl]                                       ; $61ea: $6e
	dec sp                                           ; $61eb: $3b
	ccf                                              ; $61ec: $3f
	dec a                                            ; $61ed: $3d
	ld b, d                                          ; $61ee: $42
	xor c                                            ; $61ef: $a9
	ldh a, [$60]                                     ; $61f0: $f0 $60

jr_097_61f2:
	ld e, c                                          ; $61f2: $59
	ldh a, [rAUD3LOW]                                ; $61f3: $f0 $1d
	ld c, d                                          ; $61f5: $4a
	ld c, a                                          ; $61f6: $4f
	ldh a, [rHDMA1]                                  ; $61f7: $f0 $51
	ld h, c                                          ; $61f9: $61
	ld a, [hl-]                                      ; $61fa: $3a
	ld e, b                                          ; $61fb: $58
	jr c, @+$47                                      ; $61fc: $38 $45

	and b                                            ; $61fe: $a0
	db $ed                                           ; $61ff: $ed
	ld e, l                                          ; $6200: $5d
	ld c, d                                          ; $6201: $4a
	ldh a, [$a4]                                     ; $6202: $f0 $a4
	ld e, [hl]                                       ; $6204: $5e
	ld a, [hl-]                                      ; $6205: $3a
	ld e, b                                          ; $6206: $58
	jr c, jr_097_61b1                                ; $6207: $38 $a8

	ld l, a                                          ; $6209: $6f
	pop af                                           ; $620a: $f1
	ld c, e                                          ; $620b: $4b
	ldh a, [$3e]                                     ; $620c: $f0 $3e
	ld b, d                                          ; $620e: $42
	xor $17                                          ; $620f: $ee $17
	ld c, e                                          ; $6211: $4b
	sub h                                            ; $6212: $94
	ld a, b                                          ; $6213: $78
	ld a, [hl-]                                      ; $6214: $3a
	jr c, @+$49                                      ; $6215: $38 $47

	inc de                                           ; $6217: $13
	ldh a, [$ec]                                     ; $6218: $f0 $ec
	ld d, d                                          ; $621a: $52
	dec sp                                           ; $621b: $3b
	ccf                                              ; $621c: $3f
	ld c, [hl]                                       ; $621d: $4e
	ld e, l                                          ; $621e: $5d
	ld e, d                                          ; $621f: $5a
	and b                                            ; $6220: $a0
	cpl                                              ; $6221: $2f
	ld b, e                                          ; $6222: $43
	rst JumpTable                                          ; $6223: $c7
	ld b, h                                          ; $6224: $44
	ld c, h                                          ; $6225: $4c
	xor b                                            ; $6226: $a8
	ld l, e                                          ; $6227: $6b
	ld b, a                                          ; $6228: $47
	db $ec                                           ; $6229: $ec
	inc c                                            ; $622a: $0c
	ld a, [hl-]                                      ; $622b: $3a
	ld c, b                                          ; $622c: $48
	and b                                            ; $622d: $a0
	ld hl, $ebeb                                     ; $622e: $21 $eb $eb
	xor b                                            ; $6231: $a8
	jr nz, jr_097_6286                               ; $6232: $20 $52

	ld b, h                                          ; $6234: $44
	inc [hl]                                         ; $6235: $34
	ldh a, [$60]                                     ; $6236: $f0 $60
	ld e, c                                          ; $6238: $59
	ldh a, [rAUD3LOW]                                ; $6239: $f0 $1d
	ld c, a                                          ; $623b: $4f
	inc de                                           ; $623c: $13
	ldh a, [$ec]                                     ; $623d: $f0 $ec
	ld [hl], c                                       ; $623f: $71
	ccf                                              ; $6240: $3f
	ld a, [hl-]                                      ; $6241: $3a
	jr c, jr_097_627e                                ; $6242: $38 $3a

	ld b, c                                          ; $6244: $41
	ccf                                              ; $6245: $3f
	and b                                            ; $6246: $a0
	cpl                                              ; $6247: $2f
	ld b, e                                          ; $6248: $43
	ld b, b                                          ; $6249: $40
	add hl, sp                                       ; $624a: $39
	inc a                                            ; $624b: $3c
	ld [hl], h                                       ; $624c: $74
	xor h                                            ; $624d: $ac
	ldh a, [$60]                                     ; $624e: $f0 $60
	ld e, c                                          ; $6250: $59
	ldh a, [rAUD3LOW]                                ; $6251: $f0 $1d
	inc a                                            ; $6253: $3c
	ld c, b                                          ; $6254: $48
	and b                                            ; $6255: $a0
	pop af                                           ; $6256: $f1
	ld sp, $f168                                     ; $6257: $31 $68 $f1

jr_097_625a:
	xor l                                            ; $625a: $ad
	pop af                                           ; $625b: $f1
	and l                                            ; $625c: $a5
	ld a, $3d                                        ; $625d: $3e $3d
	xor $17                                          ; $625f: $ee $17
	xor b                                            ; $6261: $a8
	pop af                                           ; $6262: $f1
	ld d, e                                          ; $6263: $53
	db $f4                                           ; $6264: $f4
	and b                                            ; $6265: $a0
	ld d, c                                          ; $6266: $51
	ld c, l                                          ; $6267: $4d
	ld a, e                                          ; $6268: $7b
	inc [hl]                                         ; $6269: $34
	pop de                                           ; $626a: $d1
	ld c, h                                          ; $626b: $4c
	and b                                            ; $626c: $a0
	cpl                                              ; $626d: $2f
	ld b, e                                          ; $626e: $43
	pop af                                           ; $626f: $f1
	ld d, e                                          ; $6270: $53
	db $f4                                           ; $6271: $f4
	and b                                            ; $6272: $a0
	ld a, $3d                                        ; $6273: $3e $3d

jr_097_6275:
	ld d, b                                          ; $6275: $50
	ld b, d                                          ; $6276: $42
	ldh a, [rAUDVOL]                                 ; $6277: $f0 $24
	ld b, h                                          ; $6279: $44
	ld e, l                                          ; $627a: $5d
	ld e, d                                          ; $627b: $5a
	xor h                                            ; $627c: $ac
	ld d, d                                          ; $627d: $52

jr_097_627e:
	ld b, h                                          ; $627e: $44
	inc [hl]                                         ; $627f: $34
	ld e, d                                          ; $6280: $5a
	add hl, sp                                       ; $6281: $39
	ld a, [hl-]                                      ; $6282: $3a
	ld c, [hl]                                       ; $6283: $4e
	inc a                                            ; $6284: $3c
	inc de                                           ; $6285: $13

jr_097_6286:
	ldh a, [rTAC]                                    ; $6286: $f0 $07
	inc a                                            ; $6288: $3c

jr_097_6289:
	ld d, b                                          ; $6289: $50
	ld a, [hl-]                                      ; $628a: $3a
	jr c, @+$43                                      ; $628b: $38 $41

	ld b, h                                          ; $628d: $44
	ld b, l                                          ; $628e: $45
	ld c, h                                          ; $628f: $4c
	and b                                            ; $6290: $a0
	call c, $f1a8                                    ; $6291: $dc $a8 $f1
	ld d, e                                          ; $6294: $53
	db $f4                                           ; $6295: $f4
	and b                                            ; $6296: $a0
	ld a, $3a                                        ; $6297: $3e $3a
	jr c, jr_097_6289                                ; $6299: $38 $ee

	rla                                              ; $629b: $17
	ld a, [hl-]                                      ; $629c: $3a
	ld b, c                                          ; $629d: $41
	ccf                                              ; $629e: $3f
	xor h                                            ; $629f: $ac
	dec a                                            ; $62a0: $3d
	ld b, h                                          ; $62a1: $44
	ld b, d                                          ; $62a2: $42
	ldh a, [rBGP]                                    ; $62a3: $f0 $47
	ldh a, [$2a]                                     ; $62a5: $f0 $2a
	di                                               ; $62a7: $f3
	cp [hl]                                          ; $62a8: $be
	ld a, $44                                        ; $62a9: $3e $44
	inc a                                            ; $62ab: $3c

jr_097_62ac:
	ld d, b                                          ; $62ac: $50
	and b                                            ; $62ad: $a0
	cpl                                              ; $62ae: $2f
	ld b, e                                          ; $62af: $43
	ld c, c                                          ; $62b0: $49
	ld d, a                                          ; $62b1: $57
	ld b, [hl]                                       ; $62b2: $46
	ld e, [hl]                                       ; $62b3: $5e
	sbc h                                            ; $62b4: $9c
	xor h                                            ; $62b5: $ac
	pop af                                           ; $62b6: $f1
	ld d, e                                          ; $62b7: $53
	db $f4                                           ; $62b8: $f4
	and b                                            ; $62b9: $a0
	ld d, c                                          ; $62ba: $51
	ld c, [hl]                                       ; $62bb: $4e
	ld b, l                                          ; $62bc: $45
	add hl, sp                                       ; $62bd: $39

jr_097_62be:
	ld b, a                                          ; $62be: $47
	inc de                                           ; $62bf: $13
	sub d                                            ; $62c0: $92
	adc [hl]                                         ; $62c1: $8e
	dec sp                                           ; $62c2: $3b
	ccf                                              ; $62c3: $3f
	ld l, h                                          ; $62c4: $6c
	ld c, [hl]                                       ; $62c5: $4e
	ld b, l                                          ; $62c6: $45
	and b                                            ; $62c7: $a0
	ld d, d                                          ; $62c8: $52
	inc [hl]                                         ; $62c9: $34
	ld a, c                                          ; $62ca: $79
	jr c, jr_097_625a                                ; $62cb: $38 $8d

	jr c, jr_097_62e2                                ; $62cd: $38 $13

	db $ed                                           ; $62cf: $ed
	nop                                              ; $62d0: $00
	ld a, [hl-]                                      ; $62d1: $3a
	ld e, b                                          ; $62d2: $58
	jr c, jr_097_6275                                ; $62d3: $38 $a0

	pop af                                           ; $62d5: $f1
	ld sp, $f168                                     ; $62d6: $31 $68 $f1
	xor l                                            ; $62d9: $ad
	pop af                                           ; $62da: $f1
	and l                                            ; $62db: $a5
	ld a, $3d                                        ; $62dc: $3e $3d
	xor $17                                          ; $62de: $ee $17
	xor h                                            ; $62e0: $ac
	pop de                                           ; $62e1: $d1

jr_097_62e2:
	db $ec                                           ; $62e2: $ec
	ret c                                            ; $62e3: $d8

	and b                                            ; $62e4: $a0
	pop af                                           ; $62e5: $f1
	xor d                                            ; $62e6: $aa
	pop af                                           ; $62e7: $f1
	and e                                            ; $62e8: $a3
	ld b, d                                          ; $62e9: $42
	ld l, a                                          ; $62ea: $6f
	ld b, a                                          ; $62eb: $47
	ld a, [hl-]                                      ; $62ec: $3a
	ld d, b                                          ; $62ed: $50
	xor h                                            ; $62ee: $ac
	ld d, c                                          ; $62ef: $51
	sbc l                                            ; $62f0: $9d
	ld b, a                                          ; $62f1: $47
	ld b, h                                          ; $62f2: $44
	ld e, l                                          ; $62f3: $5d
	ld e, d                                          ; $62f4: $5a
	ld c, h                                          ; $62f5: $4c
	and b                                            ; $62f6: $a0
	cpl                                              ; $62f7: $2f
	ld b, e                                          ; $62f8: $43
	rst JumpTable                                          ; $62f9: $c7
	xor c                                            ; $62fa: $a9
	ld b, h                                          ; $62fb: $44
	dec sp                                           ; $62fc: $3b
	dec a                                            ; $62fd: $3d
	ld d, b                                          ; $62fe: $50
	inc [hl]                                         ; $62ff: $34
	ldh a, [$0b]                                     ; $6300: $f0 $0b
	pop af                                           ; $6302: $f1
	ld [hl], c                                       ; $6303: $71
	dec sp                                           ; $6304: $3b
	ccf                                              ; $6305: $3f
	ld d, l                                          ; $6306: $55
	ld c, l                                          ; $6307: $4d
	ld a, [hl-]                                      ; $6308: $3a
	jr c, jr_097_62ac                                ; $6309: $38 $a1

	ldh a, [$64]                                     ; $630b: $f0 $64
	ld b, l                                          ; $630d: $45
	xor b                                            ; $630e: $a8
	db $ed                                           ; $630f: $ed
	ld e, l                                          ; $6310: $5d
	ld b, d                                          ; $6311: $42
	xor $17                                          ; $6312: $ee $17
	ld c, d                                          ; $6314: $4a
	ldh a, [$0b]                                     ; $6315: $f0 $0b
	ld l, l                                          ; $6317: $6d
	db $f4                                           ; $6318: $f4
	db $10                                           ; $6319: $10
	ld b, l                                          ; $631a: $45
	and b                                            ; $631b: $a0
	cpl                                              ; $631c: $2f
	ld b, e                                          ; $631d: $43
	rst JumpTable                                          ; $631e: $c7
	xor b                                            ; $631f: $a8
	ld e, e                                          ; $6320: $5b
	ld d, [hl]                                       ; $6321: $56
	ld b, [hl]                                       ; $6322: $46
	inc [hl]                                         ; $6323: $34
	xor $08                                          ; $6324: $ee $08
	ld c, d                                          ; $6326: $4a
	sub d                                            ; $6327: $92
	adc [hl]                                         ; $6328: $8e
	ld c, [hl]                                       ; $6329: $4e
	inc a                                            ; $632a: $3c
	and b                                            ; $632b: $a0
	ld d, d                                          ; $632c: $52
	inc [hl]                                         ; $632d: $34
	ld a, c                                          ; $632e: $79
	jr c, jr_097_62be                                ; $632f: $38 $8d

	jr c, jr_097_6346                                ; $6331: $38 $13

	sub d                                            ; $6333: $92
	adc [hl]                                         ; $6334: $8e
	ld c, [hl]                                       ; $6335: $4e
	ld d, h                                          ; $6336: $54
	ld c, c                                          ; $6337: $49
	ld c, h                                          ; $6338: $4c
	and b                                            ; $6339: $a0
	cpl                                              ; $633a: $2f
	ld b, e                                          ; $633b: $43
	ld c, c                                          ; $633c: $49
	ld d, a                                          ; $633d: $57
	ld b, [hl]                                       ; $633e: $46
	ld e, [hl]                                       ; $633f: $5e
	sbc h                                            ; $6340: $9c
	inc de                                           ; $6341: $13
	sub d                                            ; $6342: $92
	adc [hl]                                         ; $6343: $8e
	dec sp                                           ; $6344: $3b
	ccf                                              ; $6345: $3f

jr_097_6346:
	ld l, h                                          ; $6346: $6c
	ld c, [hl]                                       ; $6347: $4e
	ld b, l                                          ; $6348: $45
	and b                                            ; $6349: $a0
	cpl                                              ; $634a: $2f
	ld b, e                                          ; $634b: $43
	ld b, [hl]                                       ; $634c: $46
	dec sp                                           ; $634d: $3b
	inc [hl]                                         ; $634e: $34
	db $ec                                           ; $634f: $ec
	ldh [$a8], a                                     ; $6350: $e0 $a8
	pop af                                           ; $6352: $f1
	ld sp, $f168                                     ; $6353: $31 $68 $f1
	xor l                                            ; $6356: $ad
	pop af                                           ; $6357: $f1
	and l                                            ; $6358: $a5
	ld a, $3d                                        ; $6359: $3e $3d

jr_097_635b:
	xor $17                                          ; $635b: $ee $17
	xor h                                            ; $635d: $ac
	ld e, d                                          ; $635e: $5a
	add hl, sp                                       ; $635f: $39
	ld [hl], a                                       ; $6360: $77
	dec sp                                           ; $6361: $3b
	dec a                                            ; $6362: $3d
	and c                                            ; $6363: $a1
	ld hl, $ebeb                                     ; $6364: $21 $eb $eb
	xor b                                            ; $6367: $a8
	jr nz, jr_097_635b                               ; $6368: $20 $f1

	ld d, e                                          ; $636a: $53
	db $f4                                           ; $636b: $f4
	and b                                            ; $636c: $a0
	ld d, c                                          ; $636d: $51
	ld c, l                                          ; $636e: $4d
	ld a, e                                          ; $636f: $7b
	xor h                                            ; $6370: $ac
	pop de                                           ; $6371: $d1
	db $ec                                           ; $6372: $ec
	ret c                                            ; $6373: $d8

	ld b, d                                          ; $6374: $42
	and c                                            ; $6375: $a1
	cpl                                              ; $6376: $2f
	ld b, e                                          ; $6377: $43
	pop af                                           ; $6378: $f1
	ld d, e                                          ; $6379: $53
	db $f4                                           ; $637a: $f4
	and b                                            ; $637b: $a0
	ld d, c                                          ; $637c: $51
	ld c, l                                          ; $637d: $4d
	ld a, e                                          ; $637e: $7b
	inc a                                            ; $637f: $3c
	xor l                                            ; $6380: $ad
	ld b, b                                          ; $6381: $40
	add hl, sp                                       ; $6382: $39
	ld b, h                                          ; $6383: $44
	ld b, l                                          ; $6384: $45
	ld a, [hl-]                                      ; $6385: $3a
	ld [hl], h                                       ; $6386: $74
	ld c, b                                          ; $6387: $48
	and b                                            ; $6388: $a0
	pop af                                           ; $6389: $f1
	ld sp, $f168                                     ; $638a: $31 $68 $f1
	xor l                                            ; $638d: $ad
	pop af                                           ; $638e: $f1
	and l                                            ; $638f: $a5
	ld a, $3d                                        ; $6390: $3e $3d
	xor $17                                          ; $6392: $ee $17
	xor h                                            ; $6394: $ac
	ld e, d                                          ; $6395: $5a
	add hl, sp                                       ; $6396: $39
	ld [hl], $f1                                     ; $6397: $36 $f1
	ld d, e                                          ; $6399: $53
	db $f4                                           ; $639a: $f4
	and b                                            ; $639b: $a0
	ld a, $40                                        ; $639c: $3e $40
	add hl, sp                                       ; $639e: $39
	and c                                            ; $639f: $a1
	cpl                                              ; $63a0: $2f
	ld b, e                                          ; $63a1: $43
	ld b, [hl]                                       ; $63a2: $46
	ld c, c                                          ; $63a3: $49
	inc [hl]                                         ; $63a4: $34
	ld c, a                                          ; $63a5: $4f
	add hl, sp                                       ; $63a6: $39
	db $ed                                           ; $63a7: $ed
	cp h                                             ; $63a8: $bc
	ld c, d                                          ; $63a9: $4a
	xor h                                            ; $63aa: $ac
	pop af                                           ; $63ab: $f1

jr_097_63ac:
	ld d, e                                          ; $63ac: $53
	db $f4                                           ; $63ad: $f4
	and b                                            ; $63ae: $a0
	ld a, $c0                                        ; $63af: $3e $c0
	and b                                            ; $63b1: $a0
	sub c                                            ; $63b2: $91
	ldh a, [$59]                                     ; $63b3: $f0 $59
	xor b                                            ; $63b5: $a8
	db $eb                                           ; $63b6: $eb
	cp h                                             ; $63b7: $bc
	ld h, d                                          ; $63b8: $62
	ldh a, [c]                                       ; $63b9: $f2
	ret                                              ; $63ba: $c9


	dec sp                                           ; $63bb: $3b
	ccf                                              ; $63bc: $3f
	ld c, [hl]                                       ; $63bd: $4e
	ld b, d                                          ; $63be: $42
	ld b, l                                          ; $63bf: $45
	ld c, h                                          ; $63c0: $4c
	and b                                            ; $63c1: $a0
	cpl                                              ; $63c2: $2f
	ld b, e                                          ; $63c3: $43
	ld b, b                                          ; $63c4: $40
	ld b, c                                          ; $63c5: $41

jr_097_63c6:
	ld a, [hl-]                                      ; $63c6: $3a
	ldh a, [c]                                       ; $63c7: $f2
	ld a, [hl+]                                      ; $63c8: $2a
	xor h                                            ; $63c9: $ac
	ldh a, [rAUD1ENV]                                ; $63ca: $f0 $12
	sbc a                                            ; $63cc: $9f
	ldh a, [rTIMA]                                   ; $63cd: $f0 $05
	ld b, a                                          ; $63cf: $47
	ld c, c                                          ; $63d0: $49
	ld c, l                                          ; $63d1: $4d
	ld c, [hl]                                       ; $63d2: $4e
	ld h, e                                          ; $63d3: $63
	ld e, l                                          ; $63d4: $5d
	ld a, [hl-]                                      ; $63d5: $3a
	jr c, jr_097_641d                                ; $63d6: $38 $45

	and b                                            ; $63d8: $a0
	pop af                                           ; $63d9: $f1
	ld d, e                                          ; $63da: $53
	db $f4                                           ; $63db: $f4
	and b                                            ; $63dc: $a0
	ld d, c                                          ; $63dd: $51
	ld c, l                                          ; $63de: $4d
	ld a, e                                          ; $63df: $7b
	xor h                                            ; $63e0: $ac
	pop af                                           ; $63e1: $f1
	inc b                                            ; $63e2: $04
	ld c, l                                          ; $63e3: $4d
	ld c, [hl]                                       ; $63e4: $4e
	ld h, e                                          ; $63e5: $63
	ld b, l                                          ; $63e6: $45
	xor b                                            ; $63e7: $a8
	pop af                                           ; $63e8: $f1
	ld d, e                                          ; $63e9: $53
	db $f4                                           ; $63ea: $f4
	and b                                            ; $63eb: $a0
	ld d, c                                          ; $63ec: $51
	ld c, l                                          ; $63ed: $4d
	ld a, e                                          ; $63ee: $7b
	inc [hl]                                         ; $63ef: $34
	ld b, h                                          ; $63f0: $44
	ld e, l                                          ; $63f1: $5d
	ld e, d                                          ; $63f2: $5a
	ld c, h                                          ; $63f3: $4c
	and b                                            ; $63f4: $a0
	cpl                                              ; $63f5: $2f
	ld b, e                                          ; $63f6: $43
	ldh a, [c]                                       ; $63f7: $f2
	ld a, [hl+]                                      ; $63f8: $2a
	ld c, e                                          ; $63f9: $4b
	pop af                                           ; $63fa: $f1
	inc b                                            ; $63fb: $04
	ld c, l                                          ; $63fc: $4d
	ld c, [hl]                                       ; $63fd: $4e
	inc a                                            ; $63fe: $3c
	ld e, d                                          ; $63ff: $5a
	add hl, sp                                       ; $6400: $39
	inc a                                            ; $6401: $3c
	inc de                                           ; $6402: $13
	ldh a, [rTAC]                                    ; $6403: $f0 $07
	inc a                                            ; $6405: $3c
	ld d, b                                          ; $6406: $50
	ld a, [hl-]                                      ; $6407: $3a
	jr c, jr_097_6467                                ; $6408: $38 $5d

	ld e, d                                          ; $640a: $5a
	xor h                                            ; $640b: $ac
	sub d                                            ; $640c: $92
	adc [hl]                                         ; $640d: $8e

jr_097_640e:
	dec sp                                           ; $640e: $3b
	ccf                                              ; $640f: $3f
	ld l, [hl]                                       ; $6410: $6e
	dec sp                                           ; $6411: $3b
	ccf                                              ; $6412: $3f
	ld l, h                                          ; $6413: $6c
	ld c, [hl]                                       ; $6414: $4e
	ld b, l                                          ; $6415: $45
	and b                                            ; $6416: $a0
	ld b, b                                          ; $6417: $40
	add hl, sp                                       ; $6418: $39
	xor b                                            ; $6419: $a8
	ld d, d                                          ; $641a: $52
	inc [hl]                                         ; $641b: $34
	ld a, c                                          ; $641c: $79

jr_097_641d:
	jr c, jr_097_63ac                                ; $641d: $38 $8d

	jr c, jr_097_640e                                ; $641f: $38 $ed

	nop                                              ; $6421: $00
	ld a, [hl-]                                      ; $6422: $3a
	ld e, b                                          ; $6423: $58
	jr c, jr_097_63c6                                ; $6424: $38 $a0

	pop af                                           ; $6426: $f1
	ld sp, $f168                                     ; $6427: $31 $68 $f1
	xor l                                            ; $642a: $ad
	pop af                                           ; $642b: $f1
	and l                                            ; $642c: $a5
	ld a, $3d                                        ; $642d: $3e $3d
	xor $17                                          ; $642f: $ee $17
	xor h                                            ; $6431: $ac
	pop af                                           ; $6432: $f1
	ld d, e                                          ; $6433: $53
	db $f4                                           ; $6434: $f4
	and b                                            ; $6435: $a0
	ld a, $40                                        ; $6436: $3e $40
	add hl, sp                                       ; $6438: $39
	and c                                            ; $6439: $a1
	sub c                                            ; $643a: $91
	ldh a, [$59]                                     ; $643b: $f0 $59
	xor b                                            ; $643d: $a8
	db $eb                                           ; $643e: $eb
	cp h                                             ; $643f: $bc
	ld h, d                                          ; $6440: $62
	pop af                                           ; $6441: $f1
	inc b                                            ; $6442: $04
	ld c, [hl]                                       ; $6443: $4e
	ld b, d                                          ; $6444: $42
	ld b, l                                          ; $6445: $45
	ld c, h                                          ; $6446: $4c
	and b                                            ; $6447: $a0
	ld b, b                                          ; $6448: $40
	add hl, sp                                       ; $6449: $39
	xor b                                            ; $644a: $a8
	ld b, b                                          ; $644b: $40
	ld b, c                                          ; $644c: $41
	ld a, [hl-]                                      ; $644d: $3a
	db $eb                                           ; $644e: $eb
	ld d, e                                          ; $644f: $53
	xor $17                                          ; $6450: $ee $17
	ld a, [hl-]                                      ; $6452: $3a
	ld b, d                                          ; $6453: $42
	and b                                            ; $6454: $a0
	cpl                                              ; $6455: $2f
	ld b, e                                          ; $6456: $43
	db $eb                                           ; $6457: $eb
	ld d, e                                          ; $6458: $53
	ld d, e                                          ; $6459: $53
	ld e, d                                          ; $645a: $5a
	add hl, sp                                       ; $645b: $39
	inc a                                            ; $645c: $3c
	ld c, e                                          ; $645d: $4b
	inc de                                           ; $645e: $13
	db $ec                                           ; $645f: $ec
	dec b                                            ; $6460: $05
	ld e, l                                          ; $6461: $5d
	ld e, d                                          ; $6462: $5a
	xor h                                            ; $6463: $ac
	pop af                                           ; $6464: $f1
	ld d, e                                          ; $6465: $53
	db $f4                                           ; $6466: $f4

jr_097_6467:
	and b                                            ; $6467: $a0
	ld e, b                                          ; $6468: $58

jr_097_6469:
	ld a, c                                          ; $6469: $79
	ld c, [hl]                                       ; $646a: $4e
	add b                                            ; $646b: $80
	ld c, a                                          ; $646c: $4f
	ld d, a                                          ; $646d: $57
	ld b, h                                          ; $646e: $44
	ld b, l                                          ; $646f: $45
	and b                                            ; $6470: $a0
	ld b, b                                          ; $6471: $40
	add hl, sp                                       ; $6472: $39
	xor b                                            ; $6473: $a8
	ld a, c                                          ; $6474: $79
	jr c, @-$71                                      ; $6475: $38 $8d

	jr c, jr_097_6469                                ; $6477: $38 $f0

	ld d, l                                          ; $6479: $55
	pop af                                           ; $647a: $f1
	add b                                            ; $647b: $80
	ld a, $3a                                        ; $647c: $3e $3a
	jr c, jr_097_64d4                                ; $647e: $38 $54

	ld c, c                                          ; $6480: $49
	ld c, h                                          ; $6481: $4c
	and b                                            ; $6482: $a0
	cpl                                              ; $6483: $2f
	ld b, e                                          ; $6484: $43
	pop af                                           ; $6485: $f1
	ld d, e                                          ; $6486: $53
	db $f4                                           ; $6487: $f4
	and b                                            ; $6488: $a0
	ld e, b                                          ; $6489: $58
	ld a, c                                          ; $648a: $79
	ld c, [hl]                                       ; $648b: $4e
	ld b, l                                          ; $648c: $45
	add hl, sp                                       ; $648d: $39
	xor b                                            ; $648e: $a8
	sub d                                            ; $648f: $92
	adc [hl]                                         ; $6490: $8e
	ld c, [hl]                                       ; $6491: $4e
	ld b, l                                          ; $6492: $45
	and b                                            ; $6493: $a0
	cpl                                              ; $6494: $2f
	ld b, e                                          ; $6495: $43
	ld b, [hl]                                       ; $6496: $46
	dec sp                                           ; $6497: $3b
	inc [hl]                                         ; $6498: $34
	db $ec                                           ; $6499: $ec
	ldh [$a8], a                                     ; $649a: $e0 $a8
	pop af                                           ; $649c: $f1
	ld sp, $f168                                     ; $649d: $31 $68 $f1
	xor l                                            ; $64a0: $ad
	pop af                                           ; $64a1: $f1
	and l                                            ; $64a2: $a5
	ld a, $3d                                        ; $64a3: $3e $3d
	inc de                                           ; $64a5: $13
	xor $17                                          ; $64a6: $ee $17
	ld e, d                                          ; $64a8: $5a
	add hl, sp                                       ; $64a9: $39
	ld [hl], a                                       ; $64aa: $77
	dec sp                                           ; $64ab: $3b
	dec a                                            ; $64ac: $3d
	and c                                            ; $64ad: $a1
	ld hl, $ebeb                                     ; $64ae: $21 $eb $eb
	xor b                                            ; $64b1: $a8
	jr nz, @-$13                                     ; $64b2: $20 $eb

	cp h                                             ; $64b4: $bc
	ld c, d                                          ; $64b5: $4a
	ld c, a                                          ; $64b6: $4f
	ld c, c                                          ; $64b7: $49
	dec sp                                           ; $64b8: $3b
	dec a                                            ; $64b9: $3d
	ld d, b                                          ; $64ba: $50
	and c                                            ; $64bb: $a1
	cpl                                              ; $64bc: $2f
	ld b, e                                          ; $64bd: $43
	db $eb                                           ; $64be: $eb
	cp h                                             ; $64bf: $bc
	inc a                                            ; $64c0: $3c
	xor h                                            ; $64c1: $ac
	pop af                                           ; $64c2: $f1
	inc b                                            ; $64c3: $04
	ld c, l                                          ; $64c4: $4d
	dec a                                            ; $64c5: $3d
	ld d, b                                          ; $64c6: $50
	jr c, jr_097_6501                                ; $64c7: $38 $38

	ld a, [hl-]                                      ; $64c9: $3a
	ld [hl], h                                       ; $64ca: $74
	ld c, b                                          ; $64cb: $48
	and b                                            ; $64cc: $a0
	cpl                                              ; $64cd: $2f
	ld b, e                                          ; $64ce: $43
	db $ed                                           ; $64cf: $ed
	ld d, a                                          ; $64d0: $57
	xor h                                            ; $64d1: $ac
	db $f4                                           ; $64d2: $f4
	ld h, d                                          ; $64d3: $62

jr_097_64d4:
	pop af                                           ; $64d4: $f1
	add hl, sp                                       ; $64d5: $39
	ld a, $62                                        ; $64d6: $3e $62
	ld l, [hl]                                       ; $64d8: $6e
	ld c, [hl]                                       ; $64d9: $4e
	dec sp                                           ; $64da: $3b
	ccf                                              ; $64db: $3f
	add d                                            ; $64dc: $82
	dec sp                                           ; $64dd: $3b
	ccf                                              ; $64de: $3f
	dec a                                            ; $64df: $3d
	ld a, [hl-]                                      ; $64e0: $3a
	and b                                            ; $64e1: $a0
	ldh a, [$ab]                                     ; $64e2: $f0 $ab
	ldh a, [rAUD2ENV]                                ; $64e4: $f0 $17
	ld c, d                                          ; $64e6: $4a
	inc [hl]                                         ; $64e7: $34
	ld d, l                                          ; $64e8: $55
	ld e, e                                          ; $64e9: $5b
	ld h, d                                          ; $64ea: $62
	pop af                                           ; $64eb: $f1
	ld e, a                                          ; $64ec: $5f
	jr c, jr_097_652e                                ; $64ed: $38 $3f

	xor h                                            ; $64ef: $ac
	ldh a, [$cd]                                     ; $64f0: $f0 $cd
	ld e, e                                          ; $64f2: $5b
	ldh a, [rDMA]                                    ; $64f3: $f0 $46
	ldh a, [c]                                       ; $64f5: $f2
	ld [hl], h                                       ; $64f6: $74
	ld b, d                                          ; $64f7: $42
	add h                                            ; $64f8: $84
	ld c, c                                          ; $64f9: $49
	inc de                                           ; $64fa: $13
	ldh a, [c]                                       ; $64fb: $f2
	ld b, h                                          ; $64fc: $44

jr_097_64fd:
	ldh a, [$3d]                                     ; $64fd: $f0 $3d
	ld h, d                                          ; $64ff: $62
	di                                               ; $6500: $f3

jr_097_6501:
	ld h, d                                          ; $6501: $62
	ldh a, [$be]                                     ; $6502: $f0 $be
	ld b, l                                          ; $6504: $45
	add hl, sp                                       ; $6505: $39
	ld b, a                                          ; $6506: $47
	and b                                            ; $6507: $a0
	cpl                                              ; $6508: $2f
	ld b, e                                          ; $6509: $43
	halt                                             ; $650a: $76
	ld c, c                                          ; $650b: $49
	ldh a, [c]                                       ; $650c: $f2
	ld b, h                                          ; $650d: $44
	ldh a, [$3d]                                     ; $650e: $f0 $3d
	ld h, d                                          ; $6510: $62
	di                                               ; $6511: $f3
	ld h, d                                          ; $6512: $62
	ldh a, [$be]                                     ; $6513: $f0 $be
	ld b, d                                          ; $6515: $42
	ld c, e                                          ; $6516: $4b
	xor h                                            ; $6517: $ac
	pop af                                           ; $6518: $f1
	inc l                                            ; $6519: $2c
	pop af                                           ; $651a: $f1
	pop de                                           ; $651b: $d1
	ldh a, [rDMA]                                    ; $651c: $f0 $46
	ld b, d                                          ; $651e: $42
	pop hl                                           ; $651f: $e1
	ld b, h                                          ; $6520: $44
	xor b                                            ; $6521: $a8
	ld e, d                                          ; $6522: $5a
	ld b, c                                          ; $6523: $41
	ld a, [hl-]                                      ; $6524: $3a
	pop af                                           ; $6525: $f1
	ld b, [hl]                                       ; $6526: $46
	ld b, h                                          ; $6527: $44
	ld e, a                                          ; $6528: $5f
	add hl, sp                                       ; $6529: $39
	and b                                            ; $652a: $a0
	ld b, [hl]                                       ; $652b: $46
	ld a, [hl-]                                      ; $652c: $3a
	dec a                                            ; $652d: $3d

jr_097_652e:
	ld d, e                                          ; $652e: $53
	pop af                                           ; $652f: $f1
	inc l                                            ; $6530: $2c
	pop af                                           ; $6531: $f1
	pop de                                           ; $6532: $d1
	ldh a, [rDMA]                                    ; $6533: $f0 $46
	ld c, h                                          ; $6535: $4c
	and b                                            ; $6536: $a0
	cpl                                              ; $6537: $2f
	ld b, e                                          ; $6538: $43
	ld b, [hl]                                       ; $6539: $46
	dec sp                                           ; $653a: $3b
	inc [hl]                                         ; $653b: $34
	ld b, b                                          ; $653c: $40
	add hl, sp                                       ; $653d: $39
	ld b, h                                          ; $653e: $44
	ld b, l                                          ; $653f: $45
	and b                                            ; $6540: $a0
	ld l, a                                          ; $6541: $6f
	ld c, e                                          ; $6542: $4b
	inc [hl]                                         ; $6543: $34
	db $ec                                           ; $6544: $ec
	inc a                                            ; $6545: $3c
	ld b, l                                          ; $6546: $45
	and b                                            ; $6547: $a0
	cpl                                              ; $6548: $2f
	ld b, e                                          ; $6549: $43
	ld b, [hl]                                       ; $654a: $46
	dec sp                                           ; $654b: $3b
	inc [hl]                                         ; $654c: $34
	halt                                             ; $654d: $76
	xor h                                            ; $654e: $ac
	ld de, $a812                                     ; $654f: $11 $12 $a8
	db $ec                                           ; $6552: $ec
	jr jr_097_64fd                                   ; $6553: $18 $a8

	ld [hl-], a                                      ; $6555: $32
	ld a, [hl-]                                      ; $6556: $3a
	ld b, c                                          ; $6557: $41
	inc a                                            ; $6558: $3c
	ldh a, [$71]                                     ; $6559: $f0 $71
	jr c, jr_097_6597                                ; $655b: $38 $3a

	ld c, b                                          ; $655d: $48
	and e                                            ; $655e: $a3
	cpl                                              ; $655f: $2f
	ld b, e                                          ; $6560: $43
	ldh a, [$d6]                                     ; $6561: $f0 $d6
	ld c, e                                          ; $6563: $4b
	inc [hl]                                         ; $6564: $34
	halt                                             ; $6565: $76
	ldh a, [rSTAT]                                   ; $6566: $f0 $41
	ld b, d                                          ; $6568: $42
	ldh a, [rDMA]                                    ; $6569: $f0 $46
	inc de                                           ; $656b: $13
	ld l, h                                          ; $656c: $6c
	dec a                                            ; $656d: $3d
	jr c, jr_097_65b4                                ; $656e: $38 $44

	ld c, h                                          ; $6570: $4c
	xor b                                            ; $6571: $a8
	ld b, b                                          ; $6572: $40
	ld c, l                                          ; $6573: $4d
	ld e, e                                          ; $6574: $5b
	ld d, [hl]                                       ; $6575: $56
	inc [hl]                                         ; $6576: $34
	db $ec                                           ; $6577: $ec
	push bc                                          ; $6578: $c5
	ld h, a                                          ; $6579: $67
	ld d, h                                          ; $657a: $54
	add hl, sp                                       ; $657b: $39
	and b                                            ; $657c: $a0
	call c, $2fa0                                    ; $657d: $dc $a0 $2f
	ld b, e                                          ; $6580: $43
	ldh a, [$80]                                     ; $6581: $f0 $80
	ldh a, [$c5]                                     ; $6583: $f0 $c5
	inc [hl]                                         ; $6585: $34
	ldh a, [$d0]                                     ; $6586: $f0 $d0
	ld a, a                                          ; $6588: $7f
	ldh a, [hDisp1_WY]                                     ; $6589: $f0 $95
	ld b, h                                          ; $658b: $44
	ld c, h                                          ; $658c: $4c
	and b                                            ; $658d: $a0
	ld e, d                                          ; $658e: $5a
	ld d, h                                          ; $658f: $54
	ld d, e                                          ; $6590: $53
	and c                                            ; $6591: $a1
	cpl                                              ; $6592: $2f
	ld b, e                                          ; $6593: $43
	ld e, [hl]                                       ; $6594: $5e
	xor c                                            ; $6595: $a9
	db $ec                                           ; $6596: $ec

jr_097_6597:
	ldh [rWX], a                                     ; $6597: $e0 $4b
	ldh a, [$71]                                     ; $6599: $f0 $71
	ld d, l                                          ; $659b: $55
	ld a, [hl-]                                      ; $659c: $3a
	jr c, jr_097_65e1                                ; $659d: $38 $42

	and c                                            ; $659f: $a1
	db $ed                                           ; $65a0: $ed
	ld e, [hl]                                       ; $65a1: $5e
	ldh a, [$71]                                     ; $65a2: $f0 $71
	ld d, l                                          ; $65a4: $55
	ld a, [hl-]                                      ; $65a5: $3a
	jr c, jr_097_660b                                ; $65a6: $38 $63

	and b                                            ; $65a8: $a0
	cpl                                              ; $65a9: $2f
	ld b, e                                          ; $65aa: $43
	di                                               ; $65ab: $f3
	inc l                                            ; $65ac: $2c
	di                                               ; $65ad: $f3
	dec l                                            ; $65ae: $2d
	ld c, c                                          ; $65af: $49
	inc a                                            ; $65b0: $3c
	ld c, d                                          ; $65b1: $4a
	ld c, [hl]                                       ; $65b2: $4e
	inc a                                            ; $65b3: $3c

jr_097_65b4:
	ld c, a                                          ; $65b4: $4f
	ld b, l                                          ; $65b5: $45
	and b                                            ; $65b6: $a0
	pop af                                           ; $65b7: $f1
	or d                                             ; $65b8: $b2
	pop af                                           ; $65b9: $f1
	ld c, b                                          ; $65ba: $48
	db $ec                                           ; $65bb: $ec
	ret c                                            ; $65bc: $d8

	ld b, d                                          ; $65bd: $42
	ld [hl], $23                                     ; $65be: $36 $23
	inc de                                           ; $65c0: $13
	di                                               ; $65c1: $f3
	inc l                                            ; $65c2: $2c
	di                                               ; $65c3: $f3
	dec l                                            ; $65c4: $2d

jr_097_65c5:
	ld a, [hl-]                                      ; $65c5: $3a
	ld b, c                                          ; $65c6: $41
	ccf                                              ; $65c7: $3f
	xor h                                            ; $65c8: $ac
	ld b, b                                          ; $65c9: $40
	ld b, c                                          ; $65ca: $41
	ld a, [hl-]                                      ; $65cb: $3a
	db $ec                                           ; $65cc: $ec
	and h                                            ; $65cd: $a4
	ld a, [hl-]                                      ; $65ce: $3a
	ld c, a                                          ; $65cf: $4f
	ld b, d                                          ; $65d0: $42
	inc de                                           ; $65d1: $13
	jr c, @+$50                                      ; $65d2: $38 $4e

	ld h, e                                          ; $65d4: $63
	ld e, l                                          ; $65d5: $5d
	ld a, [hl-]                                      ; $65d6: $3a
	jr c, jr_097_65c5                                ; $65d7: $38 $ec

	ret c                                            ; $65d9: $d8

	and b                                            ; $65da: $a0
	cpl                                              ; $65db: $2f
	ld b, e                                          ; $65dc: $43
	rst JumpTable                                          ; $65dd: $c7
	dec [hl]                                         ; $65de: $35
	rla                                              ; $65df: $17
	ld [hl-], a                                      ; $65e0: $32

jr_097_65e1:
	ldh a, [$2f]                                     ; $65e1: $f0 $2f
	ldh a, [$7c]                                     ; $65e3: $f0 $7c
	ld [hl], e                                       ; $65e5: $73
	ld c, c                                          ; $65e6: $49
	inc a                                            ; $65e7: $3c
	xor h                                            ; $65e8: $ac
	ldh a, [$71]                                     ; $65e9: $f0 $71
	ld d, e                                          ; $65eb: $53
	dec sp                                           ; $65ec: $3b
	ccf                                              ; $65ed: $3f
	ld c, a                                          ; $65ee: $4f
	jr c, jr_097_6629                                ; $65ef: $38 $38

	ld b, d                                          ; $65f1: $42
	ld b, a                                          ; $65f2: $47
	ld c, b                                          ; $65f3: $48
	and e                                            ; $65f4: $a3
	ldh a, [$08]                                     ; $65f5: $f0 $08
	ld d, b                                          ; $65f7: $50
	inc [hl]                                         ; $65f8: $34
	ld e, b                                          ; $65f9: $58
	dec sp                                           ; $65fa: $3b
	ld e, b                                          ; $65fb: $58
	ld c, c                                          ; $65fc: $49
	ld h, a                                          ; $65fd: $67
	ld d, l                                          ; $65fe: $55
	ld h, e                                          ; $65ff: $63
	ld b, l                                          ; $6600: $45
	and b                                            ; $6601: $a0
	cpl                                              ; $6602: $2f
	ld b, e                                          ; $6603: $43
	ld c, e                                          ; $6604: $4b
	inc [hl]                                         ; $6605: $34
	xor $2d                                          ; $6606: $ee $2d
	xor b                                            ; $6608: $a8
	ld [hl-], a                                      ; $6609: $32
	halt                                             ; $660a: $76

jr_097_660b:
	dec sp                                           ; $660b: $3b
	ccf                                              ; $660c: $3f
	inc [hl]                                         ; $660d: $34
	add b                                            ; $660e: $80
	jr c, jr_097_6650                                ; $660f: $38 $3f

	ld a, [hl-]                                      ; $6611: $3a
	jr c, jr_097_664e                                ; $6612: $38 $3a

	ld [hl], h                                       ; $6614: $74
	and e                                            ; $6615: $a3
	cpl                                              ; $6616: $2f
	ld [hl-], a                                      ; $6617: $32
	ld d, h                                          ; $6618: $54
	add hl, sp                                       ; $6619: $39
	ld a, $3f                                        ; $661a: $3e $3f
	xor h                                            ; $661c: $ac
	db $f4                                           ; $661d: $f4
	ld h, d                                          ; $661e: $62
	pop af                                           ; $661f: $f1
	add hl, sp                                       ; $6620: $39
	ld a, $4b                                        ; $6621: $3e $4b
	ldh a, [$ce]                                     ; $6623: $f0 $ce
	ld h, e                                          ; $6625: $63
	dec sp                                           ; $6626: $3b
	dec a                                            ; $6627: $3d
	and e                                            ; $6628: $a3

jr_097_6629:
	cpl                                              ; $6629: $2f
	ld b, e                                          ; $662a: $43
	db $ec                                           ; $662b: $ec
	ldh [rOBP1], a                                   ; $662c: $e0 $49
	inc de                                           ; $662e: $13
	ldh a, [$2d]                                     ; $662f: $f0 $2d
	ld d, a                                          ; $6631: $57
	ldh a, [rTMA]                                    ; $6632: $f0 $06
	ld e, [hl]                                       ; $6634: $5e
	dec a                                            ; $6635: $3d
	ld e, l                                          ; $6636: $5d
	ld e, d                                          ; $6637: $5a
	xor h                                            ; $6638: $ac
	ld d, h                                          ; $6639: $54
	ld c, l                                          ; $663a: $4d
	inc a                                            ; $663b: $3c
	ld d, b                                          ; $663c: $50
	ld b, d                                          ; $663d: $42
	adc a                                            ; $663e: $8f
	pop af                                           ; $663f: $f1
	rrca                                             ; $6640: $0f
	ldh a, [rOBP0]                                   ; $6641: $f0 $48
	ld c, e                                          ; $6643: $4b
	inc de                                           ; $6644: $13
	sub b                                            ; $6645: $90

jr_097_6646:
	ld a, $55                                        ; $6646: $3e $55
	ld a, [hl-]                                      ; $6648: $3a
	ld c, [hl]                                       ; $6649: $4e
	ld b, d                                          ; $664a: $42
	inc a                                            ; $664b: $3c
	ld a, [hl-]                                      ; $664c: $3a
	ld [hl], h                                       ; $664d: $74

jr_097_664e:
	ld c, b                                          ; $664e: $48
	and b                                            ; $664f: $a0

jr_097_6650:
	xor $14                                          ; $6650: $ee $14
	xor c                                            ; $6652: $a9
	ldh a, [c]                                       ; $6653: $f2
	xor a                                            ; $6654: $af
	ld b, d                                          ; $6655: $42
	ldh a, [$75]                                     ; $6656: $f0 $75
	ldh a, [rTMA]                                    ; $6658: $f0 $06
	ld h, d                                          ; $665a: $62
	inc de                                           ; $665b: $13
	ldh a, [$2a]                                     ; $665c: $f0 $2a
	ldh a, [$f5]                                     ; $665e: $f0 $f5
	ld e, [hl]                                       ; $6660: $5e
	dec a                                            ; $6661: $3d
	inc a                                            ; $6662: $3c
	ld a, $50                                        ; $6663: $3e $50
	and c                                            ; $6665: $a1
	cpl                                              ; $6666: $2f
	ld [hl-], a                                      ; $6667: $32
	db $ec                                           ; $6668: $ec
	ldh [rHDMA3], a                                  ; $6669: $e0 $53
	inc de                                           ; $666b: $13
	ld l, d                                          ; $666c: $6a
	ldh a, [$7d]                                     ; $666d: $f0 $7d
	ld b, d                                          ; $666f: $42
	db $ed                                           ; $6670: $ed
	and c                                            ; $6671: $a1
	ld h, d                                          ; $6672: $62
	ldh a, [$a5]                                     ; $6673: $f0 $a5
	dec sp                                           ; $6675: $3b
	dec a                                            ; $6676: $3d
	ld b, d                                          ; $6677: $42
	inc a                                            ; $6678: $3c
	xor l                                            ; $6679: $ad
	ld l, e                                          ; $667a: $6b
	ld h, d                                          ; $667b: $62
	sub [hl]                                         ; $667c: $96
	ld c, l                                          ; $667d: $4d
	dec a                                            ; $667e: $3d
	ld b, c                                          ; $667f: $41
	ld b, h                                          ; $6680: $44
	ld [hl], $33                                     ; $6681: $36 $33
	add hl, bc                                       ; $6683: $09
	ld e, d                                          ; $6684: $5a
	ld d, h                                          ; $6685: $54
	ld c, d                                          ; $6686: $4a
	inc de                                           ; $6687: $13
	ldh a, [$2a]                                     ; $6688: $f0 $2a
	ldh a, [$f5]                                     ; $668a: $f0 $f5
	dec sp                                           ; $668c: $3b
	dec a                                            ; $668d: $3d
	ld b, d                                          ; $668e: $42
	inc a                                            ; $668f: $3c
	ld a, $50                                        ; $6690: $3e $50
	xor b                                            ; $6692: $a8
	ldh a, [c]                                       ; $6693: $f2
	rra                                              ; $6694: $1f
	ldh a, [c]                                       ; $6695: $f2
	sbc h                                            ; $6696: $9c
	ld a, [hl-]                                      ; $6697: $3a
	xor $17                                          ; $6698: $ee $17
	ld b, d                                          ; $669a: $42
	dec a                                            ; $669b: $3d
	ld [hl], c                                       ; $669c: $71
	ld b, l                                          ; $669d: $45
	xor b                                            ; $669e: $a8
	db $ed                                           ; $669f: $ed
	adc c                                            ; $66a0: $89
	ld a, $3a                                        ; $66a1: $3e $3a
	ld e, b                                          ; $66a3: $58
	jr c, jr_097_6646                                ; $66a4: $38 $a0

	cpl                                              ; $66a6: $2f
	ld [hl-], a                                      ; $66a7: $32
	ld c, a                                          ; $66a8: $4f
	inc [hl]                                         ; $66a9: $34
	ld c, a                                          ; $66aa: $4f
	add hl, sp                                       ; $66ab: $39
	xor b                                            ; $66ac: $a8
	db $ec                                           ; $66ad: $ec
	ldh [rSCY], a                                    ; $66ae: $e0 $42
	db $ed                                           ; $66b0: $ed
	ldh a, [c]                                       ; $66b1: $f2
	ld b, d                                          ; $66b2: $42
	ldh a, [rBGP]                                    ; $66b3: $f0 $47
	ld c, e                                          ; $66b5: $4b
	inc de                                           ; $66b6: $13
	db $ed                                           ; $66b7: $ed
	and c                                            ; $66b8: $a1
	pop af                                           ; $66b9: $f1
	or h                                             ; $66ba: $b4
	ld e, h                                          ; $66bb: $5c
	ld c, d                                          ; $66bc: $4a
	ld c, a                                          ; $66bd: $4f
	jr c, @+$3a                                      ; $66be: $38 $38

	ld c, b                                          ; $66c0: $48
	and e                                            ; $66c1: $a3
	cpl                                              ; $66c2: $2f
	add sp, -$2f                                     ; $66c3: $e8 $d1
	inc de                                           ; $66c5: $13
	add sp, -$33                                     ; $66c6: $e8 $cd
	and b                                            ; $66c8: $a0
	cpl                                              ; $66c9: $2f
	ld [hl-], a                                      ; $66ca: $32
	ld e, b                                          ; $66cb: $58
	ld b, [hl]                                       ; $66cc: $46
	inc [hl]                                         ; $66cd: $34
	xor $17                                          ; $66ce: $ee $17
	di                                               ; $66d0: $f3
	ld [$81f0], sp                                   ; $66d1: $08 $f0 $81
	ld b, h                                          ; $66d4: $44
	dec [hl]                                         ; $66d5: $35
	inc hl                                           ; $66d6: $23
	inc de                                           ; $66d7: $13
	db $ec                                           ; $66d8: $ec
	ldh [rBGP], a                                    ; $66d9: $e0 $47
	ld c, e                                          ; $66db: $4b
	xor h                                            ; $66dc: $ac
	ldh a, [$71]                                     ; $66dd: $f0 $71
	jr c, jr_097_671d                                ; $66df: $38 $3c

	ld d, b                                          ; $66e1: $50
	ldh a, [rSCX]                                    ; $66e2: $f0 $43
	db $f4                                           ; $66e4: $f4
	add c                                            ; $66e5: $81
	add d                                            ; $66e6: $82
	ld e, [hl]                                       ; $66e7: $5e
	ld a, [hl-]                                      ; $66e8: $3a
	jr c, jr_097_6729                                ; $66e9: $38 $3e

	and e                                            ; $66eb: $a3
	add hl, bc                                       ; $66ec: $09
	cpl                                              ; $66ed: $2f
	ld b, e                                          ; $66ee: $43
	ld b, [hl]                                       ; $66ef: $46
	dec sp                                           ; $66f0: $3b
	inc [hl]                                         ; $66f1: $34
	db $ec                                           ; $66f2: $ec
	pop hl                                           ; $66f3: $e1
	xor b                                            ; $66f4: $a8
	pop af                                           ; $66f5: $f1
	ld sp, $f068                                     ; $66f6: $31 $68 $f0
	cp l                                             ; $66f9: $bd
	jr c, @+$41                                      ; $66fa: $38 $3f

	dec a                                            ; $66fc: $3d
	ldh a, [$3f]                                     ; $66fd: $f0 $3f
	ld b, d                                          ; $66ff: $42
	sbc d                                            ; $6700: $9a
	ld b, h                                          ; $6701: $44
	ld e, l                                          ; $6702: $5d
	ld e, d                                          ; $6703: $5a
	xor h                                            ; $6704: $ac
	db $eb                                           ; $6705: $eb
	ld h, a                                          ; $6706: $67
	ld a, [hl]                                       ; $6707: $7e
	ld d, l                                          ; $6708: $55
	ld a, [hl-]                                      ; $6709: $3a
	ld c, [hl]                                       ; $670a: $4e
	inc a                                            ; $670b: $3c
	ld a, [hl-]                                      ; $670c: $3a
	and c                                            ; $670d: $a1
	ld c, c                                          ; $670e: $49
	ld d, a                                          ; $670f: $57
	ld b, [hl]                                       ; $6710: $46
	ld e, [hl]                                       ; $6711: $5e
	sbc h                                            ; $6712: $9c
	xor h                                            ; $6713: $ac
	ldh a, [c]                                       ; $6714: $f2
	ret z                                            ; $6715: $c8

	ld h, d                                          ; $6716: $62
	add hl, sp                                       ; $6717: $39
	ld d, d                                          ; $6718: $52
	ld d, l                                          ; $6719: $55
	ld c, c                                          ; $671a: $49
	ld d, b                                          ; $671b: $50
	ld e, [hl]                                       ; $671c: $5e

jr_097_671d:
	ld c, [hl]                                       ; $671d: $4e
	xor $19                                          ; $671e: $ee $19
	inc de                                           ; $6720: $13
	ld a, $3f                                        ; $6721: $3e $3f
	ld l, h                                          ; $6723: $6c
	dec a                                            ; $6724: $3d
	ld d, b                                          ; $6725: $50
	ld e, d                                          ; $6726: $5a
	add hl, sp                                       ; $6727: $39
	inc a                                            ; $6728: $3c

jr_097_6729:
	ld a, [hl-]                                      ; $6729: $3a
	and b                                            ; $672a: $a0
	cpl                                              ; $672b: $2f
	ld b, e                                          ; $672c: $43
	ldh a, [c]                                       ; $672d: $f2
	ret z                                            ; $672e: $c8

	ld h, d                                          ; $672f: $62
	add hl, sp                                       ; $6730: $39
	ld d, d                                          ; $6731: $52
	ld d, l                                          ; $6732: $55
	inc a                                            ; $6733: $3c
	ld [hl], h                                       ; $6734: $74
	xor l                                            ; $6735: $ad
	sbc $ed                                          ; $6736: $de $ed
	ld h, c                                          ; $6738: $61
	ld c, a                                          ; $6739: $4f
	ldh a, [$bd]                                     ; $673a: $f0 $bd
	ld d, l                                          ; $673c: $55
	ld a, $3c                                        ; $673d: $3e $3c
	ld a, [hl-]                                      ; $673f: $3a
	jr c, jr_097_677c                                ; $6740: $38 $3a

	inc de                                           ; $6742: $13
	ld d, h                                          ; $6743: $54
	ld d, a                                          ; $6744: $57
	ld d, [hl]                                       ; $6745: $56
	ld c, b                                          ; $6746: $48
	and b                                            ; $6747: $a0
	ld h, e                                          ; $6748: $63
	ld d, a                                          ; $6749: $57
	ld c, c                                          ; $674a: $49
	ldh a, [$7b]                                     ; $674b: $f0 $7b
	ld h, l                                          ; $674d: $65
	add e                                            ; $674e: $83
	ld d, e                                          ; $674f: $53
	jr c, jr_097_678a                                ; $6750: $38 $38

	inc a                                            ; $6752: $3c
	ld d, b                                          ; $6753: $50
	xor h                                            ; $6754: $ac
	ld d, c                                          ; $6755: $51
	sbc l                                            ; $6756: $9d
	ld b, a                                          ; $6757: $47
	ldh a, [$3e]                                     ; $6758: $f0 $3e
	ldh a, [$0b]                                     ; $675a: $f0 $0b
	ld b, a                                          ; $675c: $47
	inc de                                           ; $675d: $13
	ld a, [hl-]                                      ; $675e: $3a
	ld c, [hl]                                       ; $675f: $4e
	ld c, c                                          ; $6760: $49
	ld [hl], a                                       ; $6761: $77
	add hl, sp                                       ; $6762: $39
	ld h, e                                          ; $6763: $63
	and b                                            ; $6764: $a0
	cpl                                              ; $6765: $2f
	ld b, e                                          ; $6766: $43
	rst JumpTable                                          ; $6767: $c7
	xor c                                            ; $6768: $a9
	ld b, [hl]                                       ; $6769: $46
	ld d, a                                          ; $676a: $57
	ld d, e                                          ; $676b: $53
	ld c, c                                          ; $676c: $49
	add hl, sp                                       ; $676d: $39
	xor b                                            ; $676e: $a8
	ld a, a                                          ; $676f: $7f
	ldh a, [rTMA]                                    ; $6770: $f0 $06
	sub [hl]                                         ; $6772: $96
	ld c, l                                          ; $6773: $4d
	ccf                                              ; $6774: $3f
	ld l, [hl]                                       ; $6775: $6e
	ld c, [hl]                                       ; $6776: $4e
	inc a                                            ; $6777: $3c
	ld a, [hl-]                                      ; $6778: $3a
	and b                                            ; $6779: $a0
	ld b, b                                          ; $677a: $40
	ld c, l                                          ; $677b: $4d

jr_097_677c:
	ld e, e                                          ; $677c: $5b
	ld d, [hl]                                       ; $677d: $56
	xor h                                            ; $677e: $ac
	ld [$4504], a                                    ; $677f: $ea $04 $45
	xor b                                            ; $6782: $a8
	cp d                                             ; $6783: $ba
	and b                                            ; $6784: $a0
	ld c, c                                          ; $6785: $49
	ld d, a                                          ; $6786: $57
	ld b, [hl]                                       ; $6787: $46
	ld e, [hl]                                       ; $6788: $5e
	sbc h                                            ; $6789: $9c

jr_097_678a:
	xor h                                            ; $678a: $ac
	ldh a, [c]                                       ; $678b: $f2
	ret z                                            ; $678c: $c8

	ld h, d                                          ; $678d: $62
	add hl, sp                                       ; $678e: $39
	ld d, d                                          ; $678f: $52
	ld d, l                                          ; $6790: $55
	ld c, c                                          ; $6791: $49
	ld d, b                                          ; $6792: $50
	ld e, [hl]                                       ; $6793: $5e
	ld c, [hl]                                       ; $6794: $4e
	xor $19                                          ; $6795: $ee $19
	inc de                                           ; $6797: $13
	ld a, $3f                                        ; $6798: $3e $3f
	ld l, h                                          ; $679a: $6c
	dec a                                            ; $679b: $3d
	ld d, b                                          ; $679c: $50
	ld e, d                                          ; $679d: $5a
	add hl, sp                                       ; $679e: $39
	and c                                            ; $679f: $a1

Call_097_67a0:
	call c, $eda8                                    ; $67a0: $dc $a8 $ed
	ld h, c                                          ; $67a3: $61
	ld c, a                                          ; $67a4: $4f
	ld l, c                                          ; $67a5: $69
	ldh a, [rSC]                                     ; $67a6: $f0 $02
	ld a, l                                          ; $67a8: $7d
	ld b, [hl]                                       ; $67a9: $46
	ld c, [hl]                                       ; $67aa: $4e
	ld b, d                                          ; $67ab: $42
	ld l, h                                          ; $67ac: $6c
	ld b, l                                          ; $67ad: $45
	and b                                            ; $67ae: $a0
	cpl                                              ; $67af: $2f
	ld b, e                                          ; $67b0: $43
	or h                                             ; $67b1: $b4
	xor h                                            ; $67b2: $ac
	ld a, a                                          ; $67b3: $7f
	ldh a, [rTMA]                                    ; $67b4: $f0 $06
	sub [hl]                                         ; $67b6: $96
	ld c, l                                          ; $67b7: $4d
	ccf                                              ; $67b8: $3f
	ld l, [hl]                                       ; $67b9: $6e
	ld c, [hl]                                       ; $67ba: $4e
	inc a                                            ; $67bb: $3c
	ld a, [hl-]                                      ; $67bc: $3a
	and b                                            ; $67bd: $a0
	ld [$a804], a                                    ; $67be: $ea $04 $a8
	cp d                                             ; $67c1: $ba
	and b                                            ; $67c2: $a0
	ld c, c                                          ; $67c3: $49
	ld d, a                                          ; $67c4: $57
	ld b, [hl]                                       ; $67c5: $46
	ld e, [hl]                                       ; $67c6: $5e
	sbc h                                            ; $67c7: $9c
	xor h                                            ; $67c8: $ac
	ldh a, [c]                                       ; $67c9: $f2
	ret z                                            ; $67ca: $c8

	ld h, d                                          ; $67cb: $62
	add hl, sp                                       ; $67cc: $39
	ld d, d                                          ; $67cd: $52
	ld d, l                                          ; $67ce: $55
	ld c, c                                          ; $67cf: $49
	ld d, b                                          ; $67d0: $50
	ld e, [hl]                                       ; $67d1: $5e
	ld c, [hl]                                       ; $67d2: $4e
	xor $19                                          ; $67d3: $ee $19
	ld h, d                                          ; $67d5: $62
	inc de                                           ; $67d6: $13
	ld a, $3f                                        ; $67d7: $3e $3f
	ld l, h                                          ; $67d9: $6c
	ld c, [hl]                                       ; $67da: $4e
	ld b, d                                          ; $67db: $42
	ld c, e                                          ; $67dc: $4b
	ld e, d                                          ; $67dd: $5a
	add hl, sp                                       ; $67de: $39

jr_097_67df:
	and c                                            ; $67df: $a1
	ld b, b                                          ; $67e0: $40
	ld c, l                                          ; $67e1: $4d
	ld e, e                                          ; $67e2: $5b
	ld d, [hl]                                       ; $67e3: $56
	inc [hl]                                         ; $67e4: $34
	cp d                                             ; $67e5: $ba
	and b                                            ; $67e6: $a0
	ld hl, $ebeb                                     ; $67e7: $21 $eb $eb
	xor b                                            ; $67ea: $a8
	jr nz, jr_097_67df                               ; $67eb: $20 $f2

	ret z                                            ; $67ed: $c8

	ld h, d                                          ; $67ee: $62
	add hl, sp                                       ; $67ef: $39
	ld d, d                                          ; $67f0: $52
	ld d, l                                          ; $67f1: $55
	ld c, c                                          ; $67f2: $49
	ld d, b                                          ; $67f3: $50
	ld e, [hl]                                       ; $67f4: $5e
	ld c, [hl]                                       ; $67f5: $4e
	inc de                                           ; $67f6: $13
	xor $19                                          ; $67f7: $ee $19
	ld c, d                                          ; $67f9: $4a
	ld c, a                                          ; $67fa: $4f
	ld a, $3d                                        ; $67fb: $3e $3d
	ld d, b                                          ; $67fd: $50
	and c                                            ; $67fe: $a1
	cpl                                              ; $67ff: $2f
	ld b, e                                          ; $6800: $43
	ld b, b                                          ; $6801: $40
	add hl, sp                                       ; $6802: $39
	inc a                                            ; $6803: $3c
	ld [hl], h                                       ; $6804: $74
	xor h                                            ; $6805: $ac
	ldh a, [c]                                       ; $6806: $f2
	ret z                                            ; $6807: $c8

	ld h, d                                          ; $6808: $62
	add hl, sp                                       ; $6809: $39
	ld d, d                                          ; $680a: $52
	ld d, l                                          ; $680b: $55
	inc a                                            ; $680c: $3c
	ld [hl], h                                       ; $680d: $74
	ld c, b                                          ; $680e: $48
	and b                                            ; $680f: $a0
	ld b, [hl]                                       ; $6810: $46
	dec sp                                           ; $6811: $3b
	inc [hl]                                         ; $6812: $34
	ld d, $a8                                        ; $6813: $16 $a8
	pop af                                           ; $6815: $f1
	ld sp, $f068                                     ; $6816: $31 $68 $f0
	cp l                                             ; $6819: $bd
	jr c, jr_097_685b                                ; $681a: $38 $3f

	dec a                                            ; $681c: $3d
	ldh a, [$3f]                                     ; $681d: $f0 $3f
	ld c, h                                          ; $681f: $4c
	xor h                                            ; $6820: $ac
	ld e, b                                          ; $6821: $58
	dec sp                                           ; $6822: $3b
	ld e, h                                          ; $6823: $5c
	ld [hl], d                                       ; $6824: $72
	ld a, c                                          ; $6825: $79
	ccf                                              ; $6826: $3f
	ld c, a                                          ; $6827: $4f
	ld d, b                                          ; $6828: $50
	dec sp                                           ; $6829: $3b
	dec a                                            ; $682a: $3d
	ld h, e                                          ; $682b: $63
	and b                                            ; $682c: $a0
	cpl                                              ; $682d: $2f
	ld b, e                                          ; $682e: $43
	ld [$a932], a                                    ; $682f: $ea $32 $a9
	ld l, e                                          ; $6832: $6b
	inc a                                            ; $6833: $3c
	jr c, jr_097_686e                                ; $6834: $38 $38

	ldh a, [$3d]                                     ; $6836: $f0 $3d
	ldh a, [$32]                                     ; $6838: $f0 $32
	ldh a, [rAUD4LEN]                                ; $683a: $f0 $20
	ld a, l                                          ; $683c: $7d
	add e                                            ; $683d: $83
	ld c, e                                          ; $683e: $4b
	inc de                                           ; $683f: $13
	ld a, [hl-]                                      ; $6840: $3a
	jr c, jr_097_687f                                ; $6841: $38 $3c

	ld a, [hl-]                                      ; $6843: $3a
	and c                                            ; $6844: $a1
	add hl, sp                                       ; $6845: $39
	ld e, c                                          ; $6846: $59
	ld b, c                                          ; $6847: $41
	inc [hl]                                         ; $6848: $34
	ld c, a                                          ; $6849: $4f
	add hl, sp                                       ; $684a: $39
	ldh a, [rHDMA4]                                  ; $684b: $f0 $54
	ld a, $ac                                        ; $684d: $3e $ac
	db $ed                                           ; $684f: $ed
	adc [hl]                                         ; $6850: $8e
	ld b, a                                          ; $6851: $47
	ld a, a                                          ; $6852: $7f
	ld h, d                                          ; $6853: $62
	ldh a, [$9a]                                     ; $6854: $f0 $9a
	ld e, l                                          ; $6856: $5d
	ccf                                              ; $6857: $3f
	inc de                                           ; $6858: $13
	ldh a, [$bd]                                     ; $6859: $f0 $bd

jr_097_685b:
	ld d, l                                          ; $685b: $55
	ld c, c                                          ; $685c: $49
	jr c, jr_097_6897                                ; $685d: $38 $38

	ld c, c                                          ; $685f: $49
	ld [hl], a                                       ; $6860: $77
	add hl, sp                                       ; $6861: $39
	ld h, e                                          ; $6862: $63
	and b                                            ; $6863: $a0
	cpl                                              ; $6864: $2f
	ld b, e                                          ; $6865: $43
	db $ed                                           ; $6866: $ed
	adc [hl]                                         ; $6867: $8e
	ld b, a                                          ; $6868: $47
	ld a, a                                          ; $6869: $7f
	ld h, d                                          ; $686a: $62
	ldh a, [$9a]                                     ; $686b: $f0 $9a
	ld e, l                                          ; $686d: $5d

jr_097_686e:
	ccf                                              ; $686e: $3f
	inc de                                           ; $686f: $13
	inc a                                            ; $6870: $3c
	ld [hl], h                                       ; $6871: $74
	ld c, b                                          ; $6872: $48
	dec [hl]                                         ; $6873: $35
	ld b, l                                          ; $6874: $45
	ld a, $92                                        ; $6875: $3e $92
	adc [hl]                                         ; $6877: $8e
	dec sp                                           ; $6878: $3b
	ccf                                              ; $6879: $3f
	ld l, h                                          ; $687a: $6c
	ld c, [hl]                                       ; $687b: $4e
	inc a                                            ; $687c: $3c
	and b                                            ; $687d: $a0
	ld d, c                                          ; $687e: $51

jr_097_687f:
	ld [hl], b                                       ; $687f: $70
	ld d, l                                          ; $6880: $55

jr_097_6881:
	ldh a, [$7b]                                     ; $6881: $f0 $7b
	ld h, l                                          ; $6883: $65
	add e                                            ; $6884: $83
	ld d, e                                          ; $6885: $53
	jr c, jr_097_68c0                                ; $6886: $38 $38

	inc a                                            ; $6888: $3c
	ld d, b                                          ; $6889: $50
	xor h                                            ; $688a: $ac
	ld d, c                                          ; $688b: $51
	sbc l                                            ; $688c: $9d
	ld b, a                                          ; $688d: $47
	ld a, [hl]                                       ; $688e: $7e
	jr c, jr_097_6881                                ; $688f: $38 $f0

	ccf                                              ; $6891: $3f
	ld d, e                                          ; $6892: $53
	inc de                                           ; $6893: $13
	ldh a, [$bd]                                     ; $6894: $f0 $bd
	ld e, l                                          ; $6896: $5d

jr_097_6897:
	ld c, [hl]                                       ; $6897: $4e
	ld b, l                                          ; $6898: $45
	add hl, sp                                       ; $6899: $39
	ld b, a                                          ; $689a: $47
	ld a, [hl-]                                      ; $689b: $3a
	ld c, [hl]                                       ; $689c: $4e
	ld h, e                                          ; $689d: $63
	and b                                            ; $689e: $a0
	cpl                                              ; $689f: $2f
	ld b, e                                          ; $68a0: $43
	rst JumpTable                                          ; $68a1: $c7
	xor c                                            ; $68a2: $a9
	ld b, [hl]                                       ; $68a3: $46
	ld d, a                                          ; $68a4: $57
	ld d, e                                          ; $68a5: $53
	ld c, c                                          ; $68a6: $49
	add hl, sp                                       ; $68a7: $39
	and b                                            ; $68a8: $a0
	ld c, a                                          ; $68a9: $4f
	add hl, sp                                       ; $68aa: $39
	ldh a, [rHDMA4]                                  ; $68ab: $f0 $54
	ld a, $ac                                        ; $68ad: $3e $ac
	db $ed                                           ; $68af: $ed
	adc [hl]                                         ; $68b0: $8e
	ld b, a                                          ; $68b1: $47
	ld a, a                                          ; $68b2: $7f
	ld h, d                                          ; $68b3: $62
	ldh a, [$9a]                                     ; $68b4: $f0 $9a
	ld e, l                                          ; $68b6: $5d
	ccf                                              ; $68b7: $3f
	inc de                                           ; $68b8: $13
	ldh a, [$bd]                                     ; $68b9: $f0 $bd
	jr c, jr_097_68fa                                ; $68bb: $38 $3d

	ldh a, [$38]                                     ; $68bd: $f0 $38
	ld d, e                                          ; $68bf: $53

jr_097_68c0:
	pop af                                           ; $68c0: $f1
	dec e                                            ; $68c1: $1d
	ldh a, [rDIV]                                    ; $68c2: $f0 $04
	ld e, c                                          ; $68c4: $59
	ld c, h                                          ; $68c5: $4c
	and b                                            ; $68c6: $a0
	ld l, a                                          ; $68c7: $6f
	inc [hl]                                         ; $68c8: $34
	ld b, b                                          ; $68c9: $40
	ld c, l                                          ; $68ca: $4d
	ld b, h                                          ; $68cb: $44
	ld e, l                                          ; $68cc: $5d
	ld c, e                                          ; $68cd: $4b
	inc de                                           ; $68ce: $13
	ldh a, [$67]                                     ; $68cf: $f0 $67
	ldh a, [$9f]                                     ; $68d1: $f0 $9f
	ld b, [hl]                                       ; $68d3: $46
	ld c, [hl]                                       ; $68d4: $4e
	ld b, d                                          ; $68d5: $42
	ld b, l                                          ; $68d6: $45
	xor b                                            ; $68d7: $a8
	db $ec                                           ; $68d8: $ec
	cp c                                             ; $68d9: $b9
	ld d, b                                          ; $68da: $50
	pop af                                           ; $68db: $f1
	add hl, bc                                       ; $68dc: $09
	ldh a, [$a4]                                     ; $68dd: $f0 $a4
	ld b, a                                          ; $68df: $47
	ld a, $3f                                        ; $68e0: $3e $3f
	and b                                            ; $68e2: $a0
	cpl                                              ; $68e3: $2f
	ld b, e                                          ; $68e4: $43
	ld b, [hl]                                       ; $68e5: $46
	ld d, a                                          ; $68e6: $57
	ld d, e                                          ; $68e7: $53
	ld c, c                                          ; $68e8: $49
	add hl, sp                                       ; $68e9: $39
	xor b                                            ; $68ea: $a8
	pop af                                           ; $68eb: $f1
	add hl, bc                                       ; $68ec: $09
	ldh a, [$a4]                                     ; $68ed: $f0 $a4
	ld b, a                                          ; $68ef: $47
	ld e, b                                          ; $68f0: $58
	ld a, c                                          ; $68f1: $79
	ccf                                              ; $68f2: $3f
	ld c, a                                          ; $68f3: $4f
	ld d, b                                          ; $68f4: $50
	add hl, sp                                       ; $68f5: $39
	ld b, l                                          ; $68f6: $45
	and b                                            ; $68f7: $a0
	ld c, a                                          ; $68f8: $4f
	add hl, sp                                       ; $68f9: $39

jr_097_68fa:
	ldh a, [rHDMA4]                                  ; $68fa: $f0 $54
	ld a, $ac                                        ; $68fc: $3e $ac
	db $ed                                           ; $68fe: $ed
	adc [hl]                                         ; $68ff: $8e
	ld b, a                                          ; $6900: $47
	ld a, a                                          ; $6901: $7f
	ld h, d                                          ; $6902: $62
	pop af                                           ; $6903: $f1
	sbc l                                            ; $6904: $9d
	dec sp                                           ; $6905: $3b
	dec a                                            ; $6906: $3d
	ld d, b                                          ; $6907: $50
	inc de                                           ; $6908: $13
	pop af                                           ; $6909: $f1
	dec e                                            ; $690a: $1d
	ldh a, [rDIV]                                    ; $690b: $f0 $04
	ld e, c                                          ; $690d: $59
	ld b, h                                          ; $690e: $44
	ld c, c                                          ; $690f: $49
	ld [hl], a                                       ; $6910: $77
	add hl, sp                                       ; $6911: $39
	ld h, e                                          ; $6912: $63
	ld b, l                                          ; $6913: $45
	and b                                            ; $6914: $a0
	cpl                                              ; $6915: $2f
	ld b, e                                          ; $6916: $43
	db $ed                                           ; $6917: $ed
	adc [hl]                                         ; $6918: $8e
	ld b, a                                          ; $6919: $47
	ld a, a                                          ; $691a: $7f
	ld h, d                                          ; $691b: $62
	pop af                                           ; $691c: $f1
	sbc l                                            ; $691d: $9d
	dec sp                                           ; $691e: $3b
	ccf                                              ; $691f: $3f
	inc de                                           ; $6920: $13
	inc a                                            ; $6921: $3c
	ld [hl], h                                       ; $6922: $74
	ld c, b                                          ; $6923: $48
	dec [hl]                                         ; $6924: $35
	ld b, l                                          ; $6925: $45
	ld a, $92                                        ; $6926: $3e $92
	adc [hl]                                         ; $6928: $8e
	dec sp                                           ; $6929: $3b
	ccf                                              ; $692a: $3f
	ld l, h                                          ; $692b: $6c
	ld c, [hl]                                       ; $692c: $4e
	inc a                                            ; $692d: $3c
	and b                                            ; $692e: $a0
	cpl                                              ; $692f: $2f
	ld b, e                                          ; $6930: $43
	ld b, [hl]                                       ; $6931: $46
	dec sp                                           ; $6932: $3b
	inc [hl]                                         ; $6933: $34
	db $ec                                           ; $6934: $ec
	pop hl                                           ; $6935: $e1
	xor b                                            ; $6936: $a8
	pop af                                           ; $6937: $f1
	ld sp, $f068                                     ; $6938: $31 $68 $f0

jr_097_693b:
	cp l                                             ; $693b: $bd
	jr c, jr_097_697d                                ; $693c: $38 $3f

	dec a                                            ; $693e: $3d
	ldh a, [$3f]                                     ; $693f: $f0 $3f
	xor h                                            ; $6941: $ac
	ld [hl], d                                       ; $6942: $72
	ccf                                              ; $6943: $3f
	ld d, l                                          ; $6944: $55
	ld c, l                                          ; $6945: $4d
	dec a                                            ; $6946: $3d
	and c                                            ; $6947: $a1
	ld hl, $ebeb                                     ; $6948: $21 $eb $eb
	xor b                                            ; $694b: $a8
	jr nz, jr_097_693b                               ; $694c: $20 $ed

	adc [hl]                                         ; $694e: $8e
	ld b, a                                          ; $694f: $47
	ld a, a                                          ; $6950: $7f
	ld h, d                                          ; $6951: $62
	pop af                                           ; $6952: $f1
	sbc l                                            ; $6953: $9d
	dec sp                                           ; $6954: $3b
	ccf                                              ; $6955: $3f
	inc de                                           ; $6956: $13
	ld l, h                                          ; $6957: $6c
	dec a                                            ; $6958: $3d
	ld d, b                                          ; $6959: $50
	and c                                            ; $695a: $a1
	cpl                                              ; $695b: $2f
	ld b, e                                          ; $695c: $43
	ld b, b                                          ; $695d: $40
	add hl, sp                                       ; $695e: $39
	inc a                                            ; $695f: $3c
	ld [hl], h                                       ; $6960: $74
	xor h                                            ; $6961: $ac
	db $ed                                           ; $6962: $ed
	adc [hl]                                         ; $6963: $8e
	inc a                                            ; $6964: $3c
	ld [hl], h                                       ; $6965: $74
	ld c, b                                          ; $6966: $48
	and b                                            ; $6967: $a0
	ldh a, [$c5]                                     ; $6968: $f0 $c5
	ldh a, [c]                                       ; $696a: $f2
	jr z, jr_097_69af                                ; $696b: $28 $42

	pop af                                           ; $696d: $f1
	inc b                                            ; $696e: $04
	ld d, a                                          ; $696f: $57
	ldh a, [$38]                                     ; $6970: $f0 $38
	ld h, d                                          ; $6972: $62
	inc de                                           ; $6973: $13
	ld c, a                                          ; $6974: $4f
	add hl, sp                                       ; $6975: $39
	ldh a, [rHDMA4]                                  ; $6976: $f0 $54
	ld a, $f3                                        ; $6978: $3e $f3
	ld bc, $5ef0                                     ; $697a: $01 $f0 $5e

jr_097_697d:
	ld a, $3d                                        ; $697d: $3e $3d
	ld d, b                                          ; $697f: $50
	xor b                                            ; $6980: $a8
	pop af                                           ; $6981: $f1
	dec e                                            ; $6982: $1d
	add e                                            ; $6983: $83
	ld l, c                                          ; $6984: $69
	ld c, h                                          ; $6985: $4c
	and b                                            ; $6986: $a0
	cpl                                              ; $6987: $2f
	ld b, e                                          ; $6988: $43
	db $dd                                           ; $6989: $dd
	ldh a, [$c5]                                     ; $698a: $f0 $c5
	ldh a, [c]                                       ; $698c: $f2
	jr z, jr_097_69d3                                ; $698d: $28 $44

	ld a, [hl-]                                      ; $698f: $3a
	xor b                                            ; $6990: $a8
	ld a, [hl]                                       ; $6991: $7e
	ld d, l                                          ; $6992: $55
	ldh a, [$a4]                                     ; $6993: $f0 $a4
	ld e, [hl]                                       ; $6995: $5e
	ccf                                              ; $6996: $3f
	xor h                                            ; $6997: $ac
	ldh a, [$bd]                                     ; $6998: $f0 $bd
	jr c, jr_097_69db                                ; $699a: $38 $3f

	ld l, h                                          ; $699c: $6c
	ld c, [hl]                                       ; $699d: $4e
	inc a                                            ; $699e: $3c
	ld c, b                                          ; $699f: $48
	and b                                            ; $69a0: $a0
	inc a                                            ; $69a1: $3c
	ld a, [hl-]                                      ; $69a2: $3a
	ld d, a                                          ; $69a3: $57
	ldh a, [$7b]                                     ; $69a4: $f0 $7b
	ld h, l                                          ; $69a6: $65
	add e                                            ; $69a7: $83
	ld d, e                                          ; $69a8: $53
	jr c, jr_097_69e3                                ; $69a9: $38 $38

	inc a                                            ; $69ab: $3c
	ld d, b                                          ; $69ac: $50
	xor h                                            ; $69ad: $ac
	ld d, c                                          ; $69ae: $51

jr_097_69af:
	sbc l                                            ; $69af: $9d
	ld b, a                                          ; $69b0: $47
	inc [hl]                                         ; $69b1: $34
	ld l, a                                          ; $69b2: $6f
	ld a, [hl-]                                      ; $69b3: $3a
	ld b, c                                          ; $69b4: $41
	ccf                                              ; $69b5: $3f
	inc de                                           ; $69b6: $13
	ldh a, [c]                                       ; $69b7: $f2
	ld sp, hl                                        ; $69b8: $f9
	jr c, jr_097_69af                                ; $69b9: $38 $f4

	ld e, b                                          ; $69bb: $58
	ld e, b                                          ; $69bc: $58
	ld c, l                                          ; $69bd: $4d
	ld h, c                                          ; $69be: $61
	ld d, [hl]                                       ; $69bf: $56
	add hl, sp                                       ; $69c0: $39
	ld a, [hl-]                                      ; $69c1: $3a
	and b                                            ; $69c2: $a0
	cpl                                              ; $69c3: $2f
	ld b, e                                          ; $69c4: $43
	ld b, b                                          ; $69c5: $40
	ld b, c                                          ; $69c6: $41
	ld a, [hl-]                                      ; $69c7: $3a
	ld d, h                                          ; $69c8: $54
	ld c, c                                          ; $69c9: $49
	ld a, [hl-]                                      ; $69ca: $3a
	jr c, @+$3d                                      ; $69cb: $38 $3b

	ccf                                              ; $69cd: $3f
	xor h                                            ; $69ce: $ac
	ld d, d                                          ; $69cf: $52
	ld b, h                                          ; $69d0: $44
	ld d, d                                          ; $69d1: $52
	ld b, h                                          ; $69d2: $44

jr_097_69d3:
	ld b, h                                          ; $69d3: $44
	ld b, l                                          ; $69d4: $45
	and b                                            ; $69d5: $a0
	ldh a, [$c5]                                     ; $69d6: $f0 $c5
	ldh a, [c]                                       ; $69d8: $f2
	jr z, jr_097_6a1d                                ; $69d9: $28 $42

jr_097_69db:
	pop af                                           ; $69db: $f1
	inc b                                            ; $69dc: $04
	ld d, a                                          ; $69dd: $57
	ldh a, [$38]                                     ; $69de: $f0 $38
	ld h, d                                          ; $69e0: $62
	inc de                                           ; $69e1: $13
	ld c, a                                          ; $69e2: $4f

jr_097_69e3:
	add hl, sp                                       ; $69e3: $39
	ldh a, [rHDMA4]                                  ; $69e4: $f0 $54
	ld a, $f3                                        ; $69e6: $3e $f3
	ld bc, $5ef0                                     ; $69e8: $01 $f0 $5e
	ld a, $3d                                        ; $69eb: $3e $3d
	ld d, b                                          ; $69ed: $50
	xor h                                            ; $69ee: $ac
	pop af                                           ; $69ef: $f1
	dec e                                            ; $69f0: $1d
	ldh a, [rDIV]                                    ; $69f1: $f0 $04
	ld e, c                                          ; $69f3: $59
	ld b, h                                          ; $69f4: $44
	ld c, c                                          ; $69f5: $49
	ld [hl], a                                       ; $69f6: $77
	add hl, sp                                       ; $69f7: $39
	ld h, e                                          ; $69f8: $63
	ld b, l                                          ; $69f9: $45
	and b                                            ; $69fa: $a0
	cpl                                              ; $69fb: $2f
	ld b, e                                          ; $69fc: $43
	db $dd                                           ; $69fd: $dd
	ldh a, [$c5]                                     ; $69fe: $f0 $c5
	ldh a, [c]                                       ; $6a00: $f2
	jr z, @+$46                                      ; $6a01: $28 $44

	ld a, [hl-]                                      ; $6a03: $3a
	xor b                                            ; $6a04: $a8
	di                                               ; $6a05: $f3
	ld bc, $5ef0                                     ; $6a06: $01 $f0 $5e
	ld a, $3f                                        ; $6a09: $3e $3f
	ldh a, [$bd]                                     ; $6a0b: $f0 $bd
	jr c, jr_097_6a4e                                ; $6a0d: $38 $3f

	ld l, h                                          ; $6a0f: $6c
	ld c, [hl]                                       ; $6a10: $4e
	inc a                                            ; $6a11: $3c
	ld c, b                                          ; $6a12: $48
	and b                                            ; $6a13: $a0
	pop af                                           ; $6a14: $f1
	ld l, [hl]                                       ; $6a15: $6e
	ldh a, [$cf]                                     ; $6a16: $f0 $cf
	ldh a, [$bd]                                     ; $6a18: $f0 $bd
	jr c, jr_097_6a5b                                ; $6a1a: $38 $3f

	ld l, h                                          ; $6a1c: $6c

jr_097_6a1d:
	ccf                                              ; $6a1d: $3f
	xor h                                            ; $6a1e: $ac
	xor $19                                          ; $6a1f: $ee $19
	ld d, c                                          ; $6a21: $51
	ld c, [hl]                                       ; $6a22: $4e
	ld c, c                                          ; $6a23: $49
	jr c, jr_097_6a5e                                ; $6a24: $38 $38

	ld b, l                                          ; $6a26: $45
	and b                                            ; $6a27: $a0
	cpl                                              ; $6a28: $2f
	ld b, e                                          ; $6a29: $43
	ld b, [hl]                                       ; $6a2a: $46
	ld d, a                                          ; $6a2b: $57
	ld d, e                                          ; $6a2c: $53
	ld c, c                                          ; $6a2d: $49
	add hl, sp                                       ; $6a2e: $39
	xor b                                            ; $6a2f: $a8
	db $ec                                           ; $6a30: $ec
	xor [hl]                                         ; $6a31: $ae
	ld a, $3f                                        ; $6a32: $3e $3f
	ld l, h                                          ; $6a34: $6c
	ld c, [hl]                                       ; $6a35: $4e
	ld b, l                                          ; $6a36: $45
	and b                                            ; $6a37: $a0
	ldh a, [$c5]                                     ; $6a38: $f0 $c5
	ldh a, [c]                                       ; $6a3a: $f2
	jr z, jr_097_6a7f                                ; $6a3b: $28 $42

	pop af                                           ; $6a3d: $f1
	inc b                                            ; $6a3e: $04
	ld d, a                                          ; $6a3f: $57
	ldh a, [$38]                                     ; $6a40: $f0 $38
	ld h, d                                          ; $6a42: $62
	inc de                                           ; $6a43: $13
	ld c, a                                          ; $6a44: $4f
	add hl, sp                                       ; $6a45: $39
	ldh a, [rHDMA4]                                  ; $6a46: $f0 $54
	ld a, $f3                                        ; $6a48: $3e $f3
	ld bc, $5ef0                                     ; $6a4a: $01 $f0 $5e
	ld d, c                                          ; $6a4d: $51

jr_097_6a4e:
	ld c, [hl]                                       ; $6a4e: $4e
	ld c, c                                          ; $6a4f: $49
	inc de                                           ; $6a50: $13
	pop af                                           ; $6a51: $f1
	dec e                                            ; $6a52: $1d
	ldh a, [rDIV]                                    ; $6a53: $f0 $04
	ld e, c                                          ; $6a55: $59
	ld c, h                                          ; $6a56: $4c
	and b                                            ; $6a57: $a0
	ld hl, $ebeb                                     ; $6a58: $21 $eb $eb

jr_097_6a5b:
	xor b                                            ; $6a5b: $a8
	jr nz, jr_097_6a4e                               ; $6a5c: $20 $f0

jr_097_6a5e:
	push bc                                          ; $6a5e: $c5
	ldh a, [c]                                       ; $6a5f: $f2
	jr z, jr_097_6aa9                                ; $6a60: $28 $47

	ld a, a                                          ; $6a62: $7f
	ld h, d                                          ; $6a63: $62
	pop af                                           ; $6a64: $f1
	sbc l                                            ; $6a65: $9d
	dec sp                                           ; $6a66: $3b
	ccf                                              ; $6a67: $3f
	xor h                                            ; $6a68: $ac
	ldh a, [$bd]                                     ; $6a69: $f0 $bd
	jr c, jr_097_6aac                                ; $6a6b: $38 $3f

	ld l, h                                          ; $6a6d: $6c
	dec a                                            ; $6a6e: $3d
	ld d, b                                          ; $6a6f: $50
	and c                                            ; $6a70: $a1
	cpl                                              ; $6a71: $2f
	ld b, e                                          ; $6a72: $43
	ld b, b                                          ; $6a73: $40
	add hl, sp                                       ; $6a74: $39
	inc a                                            ; $6a75: $3c
	ld [hl], h                                       ; $6a76: $74
	xor h                                            ; $6a77: $ac
	ldh a, [$c5]                                     ; $6a78: $f0 $c5
	ldh a, [c]                                       ; $6a7a: $f2
	jr z, jr_097_6ab9                                ; $6a7b: $28 $3c

	ld [hl], h                                       ; $6a7d: $74
	ld c, b                                          ; $6a7e: $48

jr_097_6a7f:
	and b                                            ; $6a7f: $a0
	ld b, [hl]                                       ; $6a80: $46
	dec sp                                           ; $6a81: $3b
	inc [hl]                                         ; $6a82: $34
	ld d, $a8                                        ; $6a83: $16 $a8
	db $ec                                           ; $6a85: $ec
	rst AddAOntoHL                                          ; $6a86: $ef
	ldh a, [$bd]                                     ; $6a87: $f0 $bd
	jr c, jr_097_6aca                                ; $6a89: $38 $3f

	dec a                                            ; $6a8b: $3d
	ldh a, [$3f]                                     ; $6a8c: $f0 $3f
	xor h                                            ; $6a8e: $ac
	db $eb                                           ; $6a8f: $eb
	sbc d                                            ; $6a90: $9a
	ld c, h                                          ; $6a91: $4c
	and b                                            ; $6a92: $a0
	cpl                                              ; $6a93: $2f
	ld b, e                                          ; $6a94: $43
	ld c, d                                          ; $6a95: $4a
	ld a, $66                                        ; $6a96: $3e $66
	add hl, sp                                       ; $6a98: $39
	xor b                                            ; $6a99: $a8
	ld l, d                                          ; $6a9a: $6a
	ldh a, [$d3]                                     ; $6a9b: $f0 $d3
	ld b, d                                          ; $6a9d: $42
	ldh a, [$3f]                                     ; $6a9e: $f0 $3f
	ld c, e                                          ; $6aa0: $4b
	xor h                                            ; $6aa1: $ac
	ld h, e                                          ; $6aa2: $63
	ld d, a                                          ; $6aa3: $57
	ld c, c                                          ; $6aa4: $49
	ldh a, [$67]                                     ; $6aa5: $f0 $67
	ldh a, [$9f]                                     ; $6aa7: $f0 $9f

jr_097_6aa9:
	ld b, [hl]                                       ; $6aa9: $46
	ld c, [hl]                                       ; $6aaa: $4e
	ld b, c                                          ; $6aab: $41

jr_097_6aac:
	ld b, h                                          ; $6aac: $44
	and b                                            ; $6aad: $a0
	ld d, h                                          ; $6aae: $54
	ld b, d                                          ; $6aaf: $42
	ld d, d                                          ; $6ab0: $52
	ld d, d                                          ; $6ab1: $52
	inc [hl]                                         ; $6ab2: $34
	db $ed                                           ; $6ab3: $ed
	ld e, l                                          ; $6ab4: $5d
	ld b, d                                          ; $6ab5: $42
	ldh a, [$3f]                                     ; $6ab6: $f0 $3f
	ld b, d                                          ; $6ab8: $42

jr_097_6ab9:
	inc de                                           ; $6ab9: $13
	add e                                            ; $6aba: $83
	ldh a, [rDIV]                                    ; $6abb: $f0 $04
	ld a, l                                          ; $6abd: $7d
	ldh a, [$03]                                     ; $6abe: $f0 $03
	ld h, d                                          ; $6ac0: $62
	pop af                                           ; $6ac1: $f1
	add d                                            ; $6ac2: $82
	ldh a, [$d9]                                     ; $6ac3: $f0 $d9
	ld a, $3d                                        ; $6ac5: $3e $3d
	ld d, b                                          ; $6ac7: $50
	xor h                                            ; $6ac8: $ac
	ld d, d                                          ; $6ac9: $52

jr_097_6aca:
	ld e, b                                          ; $6aca: $58
	ld b, a                                          ; $6acb: $47
	db $eb                                           ; $6acc: $eb
	rrca                                             ; $6acd: $0f
	ld c, h                                          ; $6ace: $4c
	and b                                            ; $6acf: $a0
	cpl                                              ; $6ad0: $2f
	ld b, e                                          ; $6ad1: $43
	ld c, c                                          ; $6ad2: $49
	ld d, a                                          ; $6ad3: $57
	ld b, [hl]                                       ; $6ad4: $46
	ld e, [hl]                                       ; $6ad5: $5e
	sbc h                                            ; $6ad6: $9c
	xor h                                            ; $6ad7: $ac
	ld l, e                                          ; $6ad8: $6b
	inc a                                            ; $6ad9: $3c
	ld b, d                                          ; $6ada: $42
	ldh a, [$c1]                                     ; $6adb: $f0 $c1
	di                                               ; $6add: $f3
	ld e, d                                          ; $6ade: $5a
	ldh a, [rHDMA3]                                  ; $6adf: $f0 $53
	ld b, a                                          ; $6ae1: $47
	inc de                                           ; $6ae2: $13
	db $ed                                           ; $6ae3: $ed
	sub e                                            ; $6ae4: $93
	ld a, $3f                                        ; $6ae5: $3e $3f
	ld l, h                                          ; $6ae7: $6c
	ld b, l                                          ; $6ae8: $45
	add hl, sp                                       ; $6ae9: $39
	inc a                                            ; $6aea: $3c
	ld a, [hl-]                                      ; $6aeb: $3a
	ld c, b                                          ; $6aec: $48
	and b                                            ; $6aed: $a0
	ret                                              ; $6aee: $c9


	inc de                                           ; $6aef: $13
	ldh a, [rAUD1LOW]                                ; $6af0: $f0 $13
	or $d1                                           ; $6af2: $f6 $d1
	ld b, h                                          ; $6af4: $44
	ld c, c                                          ; $6af5: $49
	ld [hl], a                                       ; $6af6: $77
	add hl, sp                                       ; $6af7: $39
	ld e, l                                          ; $6af8: $5d
	ld e, d                                          ; $6af9: $5a
	xor h                                            ; $6afa: $ac
	ld l, l                                          ; $6afb: $6d
	ldh a, [$0d]                                     ; $6afc: $f0 $0d
	sub h                                            ; $6afe: $94
	ld a, $3f                                        ; $6aff: $3e $3f
	ld l, h                                          ; $6b01: $6c
	ld c, [hl]                                       ; $6b02: $4e
	ld b, d                                          ; $6b03: $42
	ld c, a                                          ; $6b04: $4f
	inc de                                           ; $6b05: $13
	ld a, [hl]                                       ; $6b06: $7e
	jr c, jr_097_6b45                                ; $6b07: $38 $3c

	ld c, a                                          ; $6b09: $4f
	ld c, h                                          ; $6b0a: $4c
	and b                                            ; $6b0b: $a0
	cpl                                              ; $6b0c: $2f
	ld b, e                                          ; $6b0d: $43
	db $ec                                           ; $6b0e: $ec
	pop hl                                           ; $6b0f: $e1
	ld d, e                                          ; $6b10: $53
	inc de                                           ; $6b11: $13
	ld b, b                                          ; $6b12: $40
	add hl, sp                                       ; $6b13: $39
	add d                                            ; $6b14: $82
	add hl, sp                                       ; $6b15: $39
	ld a, [hl-]                                      ; $6b16: $3a
	ld d, b                                          ; $6b17: $50
	inc [hl]                                         ; $6b18: $34
	ld c, a                                          ; $6b19: $4f
	add hl, sp                                       ; $6b1a: $39
	ldh a, [rHDMA4]                                  ; $6b1b: $f0 $54
	ld a, $ac                                        ; $6b1d: $3e $ac
	ldh a, [hDisp0_OBP1]                                     ; $6b1f: $f0 $87
	adc h                                            ; $6b21: $8c
	ld h, d                                          ; $6b22: $62
	ld [hl], d                                       ; $6b23: $72
	ccf                                              ; $6b24: $3f
	inc a                                            ; $6b25: $3c
	ld d, b                                          ; $6b26: $50
	ld b, a                                          ; $6b27: $47
	ld d, c                                          ; $6b28: $51
	ld c, [hl]                                       ; $6b29: $4e
	ld b, l                                          ; $6b2a: $45
	and b                                            ; $6b2b: $a0
	ld b, b                                          ; $6b2c: $40
	ld c, l                                          ; $6b2d: $4d
	ld d, e                                          ; $6b2e: $53
	pop af                                           ; $6b2f: $f1
	dec e                                            ; $6b30: $1d
	add e                                            ; $6b31: $83
	ld l, c                                          ; $6b32: $69
	ld b, h                                          ; $6b33: $44
	ld c, c                                          ; $6b34: $49
	ld [hl], a                                       ; $6b35: $77
	add hl, sp                                       ; $6b36: $39
	ld h, e                                          ; $6b37: $63
	xor b                                            ; $6b38: $a8
	ld b, b                                          ; $6b39: $40
	ld c, l                                          ; $6b3a: $4d
	ld e, e                                          ; $6b3b: $5b
	ld d, [hl]                                       ; $6b3c: $56
	inc [hl]                                         ; $6b3d: $34
	cp d                                             ; $6b3e: $ba
	xor b                                            ; $6b3f: $a8
	ld l, a                                          ; $6b40: $6f
	ld c, a                                          ; $6b41: $4f
	inc [hl]                                         ; $6b42: $34
	db $ed                                           ; $6b43: $ed
	ld h, [hl]                                       ; $6b44: $66

jr_097_6b45:
	ld a, $3f                                        ; $6b45: $3e $3f
	ld c, [hl]                                       ; $6b47: $4e
	ld h, e                                          ; $6b48: $63
	and b                                            ; $6b49: $a0
	ld d, h                                          ; $6b4a: $54
	ld b, d                                          ; $6b4b: $42
	ld d, d                                          ; $6b4c: $52
	ld d, d                                          ; $6b4d: $52
	inc [hl]                                         ; $6b4e: $34
	db $ed                                           ; $6b4f: $ed
	ld e, l                                          ; $6b50: $5d
	ld b, d                                          ; $6b51: $42
	ldh a, [$3f]                                     ; $6b52: $f0 $3f
	ld b, d                                          ; $6b54: $42
	inc de                                           ; $6b55: $13
	add e                                            ; $6b56: $83
	ldh a, [rDIV]                                    ; $6b57: $f0 $04
	ld a, l                                          ; $6b59: $7d
	ldh a, [$03]                                     ; $6b5a: $f0 $03
	ld h, d                                          ; $6b5c: $62
	pop af                                           ; $6b5d: $f1
	add d                                            ; $6b5e: $82
	ldh a, [$d9]                                     ; $6b5f: $f0 $d9
	ld a, $3d                                        ; $6b61: $3e $3d
	ld d, b                                          ; $6b63: $50
	xor h                                            ; $6b64: $ac
	ld d, d                                          ; $6b65: $52
	ld e, b                                          ; $6b66: $58
	ld b, a                                          ; $6b67: $47
	db $eb                                           ; $6b68: $eb
	rrca                                             ; $6b69: $0f
	ld b, l                                          ; $6b6a: $45
	and b                                            ; $6b6b: $a0
	cpl                                              ; $6b6c: $2f
	ld b, e                                          ; $6b6d: $43
	ld c, c                                          ; $6b6e: $49
	ld d, a                                          ; $6b6f: $57
	ld b, [hl]                                       ; $6b70: $46
	ld e, [hl]                                       ; $6b71: $5e
	sbc h                                            ; $6b72: $9c
	xor h                                            ; $6b73: $ac
	ld l, e                                          ; $6b74: $6b
	inc a                                            ; $6b75: $3c
	ld b, d                                          ; $6b76: $42
	ldh a, [$c1]                                     ; $6b77: $f0 $c1
	di                                               ; $6b79: $f3
	ld e, d                                          ; $6b7a: $5a
	ldh a, [rHDMA3]                                  ; $6b7b: $f0 $53
	ld b, a                                          ; $6b7d: $47
	inc de                                           ; $6b7e: $13
	db $ed                                           ; $6b7f: $ed
	sub e                                            ; $6b80: $93
	ld a, $3f                                        ; $6b81: $3e $3f
	ld l, h                                          ; $6b83: $6c
	ld b, l                                          ; $6b84: $45
	add hl, sp                                       ; $6b85: $39
	inc a                                            ; $6b86: $3c
	ld a, [hl-]                                      ; $6b87: $3a
	and b                                            ; $6b88: $a0
	ldh a, [$c1]                                     ; $6b89: $f0 $c1
	di                                               ; $6b8b: $f3
	ld e, d                                          ; $6b8c: $5a
	ldh a, [rHDMA3]                                  ; $6b8d: $f0 $53
	ld c, e                                          ; $6b8f: $4b
	xor h                                            ; $6b90: $ac
	ld d, d                                          ; $6b91: $52
	ld b, h                                          ; $6b92: $44
	ldh a, [rAUD1LOW]                                ; $6b93: $f0 $13
	or $d1                                           ; $6b95: $f6 $d1
	ld b, h                                          ; $6b97: $44
	ld c, c                                          ; $6b98: $49
	ld [hl], a                                       ; $6b99: $77
	add hl, sp                                       ; $6b9a: $39
	ld h, e                                          ; $6b9b: $63
	ld b, l                                          ; $6b9c: $45
	and b                                            ; $6b9d: $a0
	cpl                                              ; $6b9e: $2f
	ld b, e                                          ; $6b9f: $43
	or h                                             ; $6ba0: $b4
	xor h                                            ; $6ba1: $ac
	ld c, a                                          ; $6ba2: $4f
	add hl, sp                                       ; $6ba3: $39
	ldh a, [rHDMA4]                                  ; $6ba4: $f0 $54
	ld a, $ac                                        ; $6ba6: $3e $ac

Call_097_6ba8:
	di                                               ; $6ba8: $f3
	adc e                                            ; $6ba9: $8b
	ld h, d                                          ; $6baa: $62
	ld b, [hl]                                       ; $6bab: $46
	ldh a, [rSB]                                     ; $6bac: $f0 $01
	ccf                                              ; $6bae: $3f
	inc a                                            ; $6baf: $3c
	ld d, b                                          ; $6bb0: $50
	ld b, a                                          ; $6bb1: $47
	ld d, c                                          ; $6bb2: $51
	ld c, [hl]                                       ; $6bb3: $4e
	inc a                                            ; $6bb4: $3c
	and b                                            ; $6bb5: $a0
	ld b, b                                          ; $6bb6: $40
	ld c, l                                          ; $6bb7: $4d
	ld d, e                                          ; $6bb8: $53
	ret nc                                           ; $6bb9: $d0

	xor b                                            ; $6bba: $a8
	ld b, b                                          ; $6bbb: $40
	ld c, l                                          ; $6bbc: $4d
	ld e, e                                          ; $6bbd: $5b
	ld d, [hl]                                       ; $6bbe: $56
	inc [hl]                                         ; $6bbf: $34
	cp d                                             ; $6bc0: $ba
	and b                                            ; $6bc1: $a0
	ld d, h                                          ; $6bc2: $54
	ld b, d                                          ; $6bc3: $42
	ld d, d                                          ; $6bc4: $52
	ld d, d                                          ; $6bc5: $52
	inc [hl]                                         ; $6bc6: $34
	db $ed                                           ; $6bc7: $ed
	ld e, l                                          ; $6bc8: $5d
	ld b, d                                          ; $6bc9: $42
	ldh a, [$3f]                                     ; $6bca: $f0 $3f
	ld b, d                                          ; $6bcc: $42
	inc de                                           ; $6bcd: $13
	add e                                            ; $6bce: $83
	ldh a, [rDIV]                                    ; $6bcf: $f0 $04
	ld a, l                                          ; $6bd1: $7d
	ldh a, [$03]                                     ; $6bd2: $f0 $03
	ld h, d                                          ; $6bd4: $62
	pop af                                           ; $6bd5: $f1
	add d                                            ; $6bd6: $82
	ldh a, [$d9]                                     ; $6bd7: $f0 $d9
	ld a, $3d                                        ; $6bd9: $3e $3d
	ld d, b                                          ; $6bdb: $50
	xor h                                            ; $6bdc: $ac
	db $ec                                           ; $6bdd: $ec
	ld [hl], a                                       ; $6bde: $77
	ld c, h                                          ; $6bdf: $4c
	and b                                            ; $6be0: $a0
	ld b, b                                          ; $6be1: $40
	ld c, l                                          ; $6be2: $4d
	ld c, e                                          ; $6be3: $4b
	ldh a, [rAUD1LOW]                                ; $6be4: $f0 $13
	or $d1                                           ; $6be6: $f6 $d1
	ld b, h                                          ; $6be8: $44
	ld c, c                                          ; $6be9: $49
	inc de                                           ; $6bea: $13
	ld [hl], a                                       ; $6beb: $77
	add hl, sp                                       ; $6bec: $39
	ld h, e                                          ; $6bed: $63
	ld b, l                                          ; $6bee: $45
	xor b                                            ; $6bef: $a8
	add sp, -$0f                                     ; $6bf0: $e8 $f1
	xor b                                            ; $6bf2: $a8
	ld a, a                                          ; $6bf3: $7f
	sub b                                            ; $6bf4: $90
	ld b, a                                          ; $6bf5: $47
	call $2fa0                                       ; $6bf6: $cd $a0 $2f
	ld b, e                                          ; $6bf9: $43
	ld b, b                                          ; $6bfa: $40
	ld c, l                                          ; $6bfb: $4d
	ld c, a                                          ; $6bfc: $4f
	ld b, b                                          ; $6bfd: $40
	add hl, sp                                       ; $6bfe: $39
	ld b, h                                          ; $6bff: $44
	ld a, [hl-]                                      ; $6c00: $3a
	xor b                                            ; $6c01: $a8
	ld b, [hl]                                       ; $6c02: $46
	ld a, c                                          ; $6c03: $79
	ld d, b                                          ; $6c04: $50
	sbc h                                            ; $6c05: $9c
	inc [hl]                                         ; $6c06: $34
	sub d                                            ; $6c07: $92
	adc [hl]                                         ; $6c08: $8e
	ld c, [hl]                                       ; $6c09: $4e
	inc a                                            ; $6c0a: $3c
	and b                                            ; $6c0b: $a0
	cpl                                              ; $6c0c: $2f
	ld b, e                                          ; $6c0d: $43
	ld b, [hl]                                       ; $6c0e: $46
	dec sp                                           ; $6c0f: $3b
	inc [hl]                                         ; $6c10: $34
	db $ec                                           ; $6c11: $ec
	pop hl                                           ; $6c12: $e1
	xor b                                            ; $6c13: $a8
	db $ec                                           ; $6c14: $ec
	rst AddAOntoHL                                          ; $6c15: $ef

jr_097_6c16:
	ldh a, [$bd]                                     ; $6c16: $f0 $bd
	jr c, jr_097_6c57                                ; $6c18: $38 $3d

	ldh a, [$3f]                                     ; $6c1a: $f0 $3f
	xor h                                            ; $6c1c: $ac
	ld [hl], d                                       ; $6c1d: $72
	ccf                                              ; $6c1e: $3f
	ld d, l                                          ; $6c1f: $55
	ld c, l                                          ; $6c20: $4d
	dec a                                            ; $6c21: $3d
	and c                                            ; $6c22: $a1
	ld hl, $ebeb                                     ; $6c23: $21 $eb $eb
	xor b                                            ; $6c26: $a8
	jr nz, jr_097_6c16                               ; $6c27: $20 $ed

	ld e, l                                          ; $6c29: $5d
	ld b, d                                          ; $6c2a: $42
	ldh a, [$3f]                                     ; $6c2b: $f0 $3f
	ld b, d                                          ; $6c2d: $42
	add e                                            ; $6c2e: $83
	ldh a, [rDIV]                                    ; $6c2f: $f0 $04
	ld a, l                                          ; $6c31: $7d
	ldh a, [$03]                                     ; $6c32: $f0 $03
	ld h, d                                          ; $6c34: $62
	inc de                                           ; $6c35: $13
	ld a, $3b                                        ; $6c36: $3e $3b
	inc a                                            ; $6c38: $3c
	ld d, a                                          ; $6c39: $57
	ld c, c                                          ; $6c3a: $49
	ldh a, [rHDMA1]                                  ; $6c3b: $f0 $51
	dec sp                                           ; $6c3d: $3b
	dec a                                            ; $6c3e: $3d
	ld d, b                                          ; $6c3f: $50
	and c                                            ; $6c40: $a1
	cpl                                              ; $6c41: $2f
	ld b, e                                          ; $6c42: $43
	ld b, b                                          ; $6c43: $40
	add hl, sp                                       ; $6c44: $39
	inc a                                            ; $6c45: $3c
	ld [hl], h                                       ; $6c46: $74
	xor h                                            ; $6c47: $ac
	db $ed                                           ; $6c48: $ed
	ld e, l                                          ; $6c49: $5d
	ld b, d                                          ; $6c4a: $42
	ldh a, [$3f]                                     ; $6c4b: $f0 $3f
	inc a                                            ; $6c4d: $3c
	ld [hl], h                                       ; $6c4e: $74
	ld c, b                                          ; $6c4f: $48
	and b                                            ; $6c50: $a0
	ld b, [hl]                                       ; $6c51: $46
	dec sp                                           ; $6c52: $3b
	inc [hl]                                         ; $6c53: $34
	ld d, $a8                                        ; $6c54: $16 $a8
	db $ec                                           ; $6c56: $ec

jr_097_6c57:
	rst AddAOntoHL                                          ; $6c57: $ef
	ldh a, [$bd]                                     ; $6c58: $f0 $bd
	jr c, jr_097_6c9b                                ; $6c5a: $38 $3f

	dec a                                            ; $6c5c: $3d
	ldh a, [$3f]                                     ; $6c5d: $f0 $3f
	ld c, e                                          ; $6c5f: $4b
	xor h                                            ; $6c60: $ac
	xor $04                                          ; $6c61: $ee $04
	ld a, $3d                                        ; $6c63: $3e $3d
	and c                                            ; $6c65: $a1
	cpl                                              ; $6c66: $2f
	ld b, e                                          ; $6c67: $43
	ld d, d                                          ; $6c68: $52
	ld b, h                                          ; $6c69: $44
	ld b, h                                          ; $6c6a: $44
	ld b, l                                          ; $6c6b: $45
	xor b                                            ; $6c6c: $a8
	ld c, a                                          ; $6c6d: $4f
	add hl, sp                                       ; $6c6e: $39
	ld d, c                                          ; $6c6f: $51
	sbc l                                            ; $6c70: $9d
	inc de                                           ; $6c71: $13
	xor $04                                          ; $6c72: $ee $04
	ld b, d                                          ; $6c74: $42
	ldh a, [$cc]                                     ; $6c75: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6c77: $f0 $88
	ld b, h                                          ; $6c79: $44
	ld e, l                                          ; $6c7a: $5d
	ld e, d                                          ; $6c7b: $5a
	ld c, h                                          ; $6c7c: $4c
	and b                                            ; $6c7d: $a0
	ld b, b                                          ; $6c7e: $40
	ld b, d                                          ; $6c7f: $42
	ldh a, [$3f]                                     ; $6c80: $f0 $3f
	inc [hl]                                         ; $6c82: $34
	db $ed                                           ; $6c83: $ed
	ret                                              ; $6c84: $c9


	ld b, a                                          ; $6c85: $47
	inc de                                           ; $6c86: $13
	sub h                                            ; $6c87: $94
	ldh a, [$c1]                                     ; $6c88: $f0 $c1
	ld d, c                                          ; $6c8a: $51
	ld c, [hl]                                       ; $6c8b: $4e
	ld b, d                                          ; $6c8c: $42
	ld b, l                                          ; $6c8d: $45
	ld c, h                                          ; $6c8e: $4c
	and c                                            ; $6c8f: $a1
	cpl                                              ; $6c90: $2f
	ld b, e                                          ; $6c91: $43
	ld b, b                                          ; $6c92: $40
	ld b, d                                          ; $6c93: $42
	add b                                            ; $6c94: $80
	ld c, a                                          ; $6c95: $4f
	ld d, a                                          ; $6c96: $57
	ld b, h                                          ; $6c97: $44
	ld e, l                                          ; $6c98: $5d
	ld e, d                                          ; $6c99: $5a
	xor h                                            ; $6c9a: $ac

jr_097_6c9b:
	add a                                            ; $6c9b: $87
	ldh a, [$5b]                                     ; $6c9c: $f0 $5b
	ldh a, [$5e]                                     ; $6c9e: $f0 $5e
	inc a                                            ; $6ca0: $3c
	ld a, [hl-]                                      ; $6ca1: $3a
	xor h                                            ; $6ca2: $ac
	ret                                              ; $6ca3: $c9


	db $ed                                           ; $6ca4: $ed
	ld h, h                                          ; $6ca5: $64
	ld b, h                                          ; $6ca6: $44
	ld b, l                                          ; $6ca7: $45
	and b                                            ; $6ca8: $a0
	ldh a, [$32]                                     ; $6ca9: $f0 $32
	ld h, l                                          ; $6cab: $65
	ldh a, [hDisp0_WX]                                     ; $6cac: $f0 $89
	ldh a, [c]                                       ; $6cae: $f2
	daa                                              ; $6caf: $27
	ld e, c                                          ; $6cb0: $59
	ldh a, [rP1]                                     ; $6cb1: $f0 $00
	ld e, c                                          ; $6cb3: $59
	xor b                                            ; $6cb4: $a8
	db $ed                                           ; $6cb5: $ed
	ld h, h                                          ; $6cb6: $64
	ld a, [hl-]                                      ; $6cb7: $3a
	jr c, jr_097_6d1d                                ; $6cb8: $38 $63

	ld b, l                                          ; $6cba: $45
	xor b                                            ; $6cbb: $a8
	ldh a, [$67]                                     ; $6cbc: $f0 $67
	ldh a, [$9f]                                     ; $6cbe: $f0 $9f
	ld h, d                                          ; $6cc0: $62
	ldh a, [rHDMA1]                                  ; $6cc1: $f0 $51
	dec a                                            ; $6cc3: $3d
	ld a, [hl-]                                      ; $6cc4: $3a
	ld d, l                                          ; $6cc5: $55
	ld h, c                                          ; $6cc6: $61
	ld d, [hl]                                       ; $6cc7: $56
	and b                                            ; $6cc8: $a0
	cpl                                              ; $6cc9: $2f
	ld b, e                                          ; $6cca: $43
	ld b, [hl]                                       ; $6ccb: $46
	ld d, a                                          ; $6ccc: $57
	ld d, e                                          ; $6ccd: $53
	ld c, c                                          ; $6cce: $49
	add hl, sp                                       ; $6ccf: $39
	xor b                                            ; $6cd0: $a8
	db $ec                                           ; $6cd1: $ec
	pop hl                                           ; $6cd2: $e1
	xor b                                            ; $6cd3: $a8
	pop af                                           ; $6cd4: $f1
	rra                                              ; $6cd5: $1f
	ld a, a                                          ; $6cd6: $7f
	ld c, d                                          ; $6cd7: $4a
	ccf                                              ; $6cd8: $3f
	ld e, h                                          ; $6cd9: $5c
	dec a                                            ; $6cda: $3d
	ld b, l                                          ; $6cdb: $45
	and b                                            ; $6cdc: $a0
	ldh a, [$5f]                                     ; $6cdd: $f0 $5f
	ldh a, [$d7]                                     ; $6cdf: $f0 $d7
	ld d, d                                          ; $6ce1: $52
	ld c, d                                          ; $6ce2: $4a
	inc de                                           ; $6ce3: $13
	ld a, a                                          ; $6ce4: $7f
	ld h, d                                          ; $6ce5: $62
	pop af                                           ; $6ce6: $f1
	or h                                             ; $6ce7: $b4
	inc a                                            ; $6ce8: $3c
	ld a, [hl-]                                      ; $6ce9: $3a
	jr c, @+$4c                                      ; $6cea: $38 $4a

	inc [hl]                                         ; $6cec: $34
	cp d                                             ; $6ced: $ba
	and b                                            ; $6cee: $a0
	cpl                                              ; $6cef: $2f
	ld b, e                                          ; $6cf0: $43
	ld b, l                                          ; $6cf1: $45
	ld a, $ac                                        ; $6cf2: $3e $ac
	ld a, a                                          ; $6cf4: $7f
	ldh a, [rTMA]                                    ; $6cf5: $f0 $06
	sub [hl]                                         ; $6cf7: $96
	ld c, l                                          ; $6cf8: $4d
	ccf                                              ; $6cf9: $3f
	sub d                                            ; $6cfa: $92
	adc [hl]                                         ; $6cfb: $8e
	ld c, [hl]                                       ; $6cfc: $4e
	inc a                                            ; $6cfd: $3c
	and b                                            ; $6cfe: $a0
	add sp, -$0f                                     ; $6cff: $e8 $f1
	xor h                                            ; $6d01: $ac
	ld a, a                                          ; $6d02: $7f
	sub b                                            ; $6d03: $90
	ld b, a                                          ; $6d04: $47
	call Call_097_6ba8                               ; $6d05: $cd $a8 $6b
	ld c, c                                          ; $6d08: $49
	inc a                                            ; $6d09: $3c
	ld a, [hl-]                                      ; $6d0a: $3a
	ld c, [hl]                                       ; $6d0b: $4e
	ld h, e                                          ; $6d0c: $63
	and b                                            ; $6d0d: $a0
	cpl                                              ; $6d0e: $2f
	ld b, e                                          ; $6d0f: $43
	ld e, l                                          ; $6d10: $5d
	dec sp                                           ; $6d11: $3b
	ld d, h                                          ; $6d12: $54
	add hl, sp                                       ; $6d13: $39
	jr c, @+$3a                                      ; $6d14: $38 $38

	pop af                                           ; $6d16: $f1
	cp $f2                                           ; $6d17: $fe $f2
	ccf                                              ; $6d19: $3f
	inc de                                           ; $6d1a: $13
	ld b, h                                          ; $6d1b: $44
	ld e, l                                          ; $6d1c: $5d

jr_097_6d1d:
	ld e, d                                          ; $6d1d: $5a
	inc [hl]                                         ; $6d1e: $34
	ldh a, [$67]                                     ; $6d1f: $f0 $67
	ldh a, [$9f]                                     ; $6d21: $f0 $9f
	ld d, e                                          ; $6d23: $53
	sub h                                            ; $6d24: $94
	ccf                                              ; $6d25: $3f
	ld e, h                                          ; $6d26: $5c
	dec a                                            ; $6d27: $3d
	ld b, l                                          ; $6d28: $45
	and b                                            ; $6d29: $a0
	ld b, b                                          ; $6d2a: $40
	add hl, sp                                       ; $6d2b: $39
	ld b, b                                          ; $6d2c: $40
	add hl, sp                                       ; $6d2d: $39
	inc [hl]                                         ; $6d2e: $34
	ld b, b                                          ; $6d2f: $40
	ld b, d                                          ; $6d30: $42
	ldh a, [$75]                                     ; $6d31: $f0 $75
	adc h                                            ; $6d33: $8c
	xor b                                            ; $6d34: $a8
	ldh a, [$5f]                                     ; $6d35: $f0 $5f
	ldh a, [$d7]                                     ; $6d37: $f0 $d7
	ld d, d                                          ; $6d39: $52
	ld c, d                                          ; $6d3a: $4a
	ld a, a                                          ; $6d3b: $7f
	ld h, d                                          ; $6d3c: $62
	pop af                                           ; $6d3d: $f1
	or h                                             ; $6d3e: $b4
	inc a                                            ; $6d3f: $3c
	ld a, [hl-]                                      ; $6d40: $3a
	jr c, jr_097_6d8d                                ; $6d41: $38 $4a

	inc de                                           ; $6d43: $13
	sub d                                            ; $6d44: $92
	adc [hl]                                         ; $6d45: $8e
	ld c, [hl]                                       ; $6d46: $4e
	ld b, d                                          ; $6d47: $42
	ld b, l                                          ; $6d48: $45
	and b                                            ; $6d49: $a0
	cpl                                              ; $6d4a: $2f
	ld b, e                                          ; $6d4b: $43
	ld l, l                                          ; $6d4c: $6d
	ldh a, [$a9]                                     ; $6d4d: $f0 $a9
	inc [hl]                                         ; $6d4f: $34
	ld b, b                                          ; $6d50: $40
	ld b, d                                          ; $6d51: $42
	add b                                            ; $6d52: $80
	ld c, a                                          ; $6d53: $4f
	ld d, a                                          ; $6d54: $57
	ld b, h                                          ; $6d55: $44
	ld b, l                                          ; $6d56: $45
	and b                                            ; $6d57: $a0
	ld b, b                                          ; $6d58: $40
	ld c, l                                          ; $6d59: $4d
	ld e, e                                          ; $6d5a: $5b

jr_097_6d5b:
	ld d, [hl]                                       ; $6d5b: $56
	inc [hl]                                         ; $6d5c: $34
	cp d                                             ; $6d5d: $ba
	xor b                                            ; $6d5e: $a8
	ld l, a                                          ; $6d5f: $6f
	ld c, a                                          ; $6d60: $4f
	inc [hl]                                         ; $6d61: $34
	db $ed                                           ; $6d62: $ed
	ld h, [hl]                                       ; $6d63: $66
	ld a, $3f                                        ; $6d64: $3e $3f
	ld c, [hl]                                       ; $6d66: $4e
	ld h, e                                          ; $6d67: $63
	and b                                            ; $6d68: $a0
	ld hl, $ebeb                                     ; $6d69: $21 $eb $eb
	xor b                                            ; $6d6c: $a8
	jr nz, jr_097_6d5b                               ; $6d6d: $20 $ec

	ldh a, [$a8]                                     ; $6d6f: $f0 $a8
	db $ed                                           ; $6d71: $ed
	ret                                              ; $6d72: $c9


	ld b, a                                          ; $6d73: $47
	sub h                                            ; $6d74: $94
	ldh a, [$c1]                                     ; $6d75: $f0 $c1
	ld d, c                                          ; $6d77: $51
	ld c, [hl]                                       ; $6d78: $4e
	ld b, d                                          ; $6d79: $42
	ld b, l                                          ; $6d7a: $45
	ld c, h                                          ; $6d7b: $4c
	and b                                            ; $6d7c: $a0
	cpl                                              ; $6d7d: $2f
	ld b, e                                          ; $6d7e: $43
	ld c, a                                          ; $6d7f: $4f
	add hl, sp                                       ; $6d80: $39
	ldh a, [rHDMA4]                                  ; $6d81: $f0 $54
	ld a, $ed                                        ; $6d83: $3e $ed
	reti                                             ; $6d85: $d9


	ld a, $4a                                        ; $6d86: $3e $4a
	ld c, a                                          ; $6d88: $4f
	inc de                                           ; $6d89: $13
	ld d, c                                          ; $6d8a: $51
	ld c, [hl]                                       ; $6d8b: $4e
	inc a                                            ; $6d8c: $3c

jr_097_6d8d:
	ld c, b                                          ; $6d8d: $48
	and b                                            ; $6d8e: $a0
	cpl                                              ; $6d8f: $2f
	ld b, e                                          ; $6d90: $43
	db $ed                                           ; $6d91: $ed
	ld d, a                                          ; $6d92: $57
	inc [hl]                                         ; $6d93: $34
	db $f4                                           ; $6d94: $f4
	ld h, d                                          ; $6d95: $62
	pop af                                           ; $6d96: $f1
	add hl, sp                                       ; $6d97: $39
	ld a, $62                                        ; $6d98: $3e $62
	inc de                                           ; $6d9a: $13
	ld l, [hl]                                       ; $6d9b: $6e
	ld c, [hl]                                       ; $6d9c: $4e
	dec sp                                           ; $6d9d: $3b
	ccf                                              ; $6d9e: $3f
	add d                                            ; $6d9f: $82
	dec sp                                           ; $6da0: $3b
	ccf                                              ; $6da1: $3f
	dec a                                            ; $6da2: $3d
	ld a, [hl-]                                      ; $6da3: $3a
	and b                                            ; $6da4: $a0
	ldh a, [$ab]                                     ; $6da5: $f0 $ab
	ldh a, [rAUD2ENV]                                ; $6da7: $f0 $17
	ld c, d                                          ; $6da9: $4a
	inc [hl]                                         ; $6daa: $34
	ld d, l                                          ; $6dab: $55
	ld e, e                                          ; $6dac: $5b
	ld h, d                                          ; $6dad: $62
	pop af                                           ; $6dae: $f1
	ld e, a                                          ; $6daf: $5f
	jr c, jr_097_6df1                                ; $6db0: $38 $3f

	xor h                                            ; $6db2: $ac
	ldh a, [$cd]                                     ; $6db3: $f0 $cd
	ld e, e                                          ; $6db5: $5b
	ldh a, [rDMA]                                    ; $6db6: $f0 $46
	ldh a, [c]                                       ; $6db8: $f2
	ld [hl], h                                       ; $6db9: $74
	ld b, d                                          ; $6dba: $42
	add h                                            ; $6dbb: $84
	ld c, c                                          ; $6dbc: $49
	inc de                                           ; $6dbd: $13
	ldh a, [c]                                       ; $6dbe: $f2
	ld b, h                                          ; $6dbf: $44
	ldh a, [$3d]                                     ; $6dc0: $f0 $3d
	ld h, d                                          ; $6dc2: $62
	di                                               ; $6dc3: $f3
	ld h, d                                          ; $6dc4: $62
	ldh a, [$be]                                     ; $6dc5: $f0 $be
	ld b, l                                          ; $6dc7: $45
	add hl, sp                                       ; $6dc8: $39
	ld b, a                                          ; $6dc9: $47
	and b                                            ; $6dca: $a0
	cpl                                              ; $6dcb: $2f
	ld b, e                                          ; $6dcc: $43
	halt                                             ; $6dcd: $76

jr_097_6dce:
	ld c, c                                          ; $6dce: $49
	ldh a, [c]                                       ; $6dcf: $f2
	ld b, h                                          ; $6dd0: $44
	ldh a, [$3d]                                     ; $6dd1: $f0 $3d
	ld h, d                                          ; $6dd3: $62
	di                                               ; $6dd4: $f3
	ld h, d                                          ; $6dd5: $62
	ldh a, [$be]                                     ; $6dd6: $f0 $be
	ld b, d                                          ; $6dd8: $42
	ld c, e                                          ; $6dd9: $4b
	xor h                                            ; $6dda: $ac
	pop af                                           ; $6ddb: $f1
	inc l                                            ; $6ddc: $2c
	pop af                                           ; $6ddd: $f1
	pop de                                           ; $6dde: $d1
	ldh a, [rDMA]                                    ; $6ddf: $f0 $46
	ld b, d                                          ; $6de1: $42
	pop hl                                           ; $6de2: $e1
	ld b, h                                          ; $6de3: $44
	xor b                                            ; $6de4: $a8
	ld e, d                                          ; $6de5: $5a
	ld b, c                                          ; $6de6: $41
	ld a, [hl-]                                      ; $6de7: $3a
	pop af                                           ; $6de8: $f1
	ld b, [hl]                                       ; $6de9: $46
	ld b, h                                          ; $6dea: $44
	ld e, a                                          ; $6deb: $5f
	add hl, sp                                       ; $6dec: $39
	and b                                            ; $6ded: $a0
	pop af                                           ; $6dee: $f1
	sub a                                            ; $6def: $97
	ld a, l                                          ; $6df0: $7d

jr_097_6df1:
	inc [hl]                                         ; $6df1: $34
	di                                               ; $6df2: $f3
	sub [hl]                                         ; $6df3: $96
	ld e, c                                          ; $6df4: $59
	xor b                                            ; $6df5: $a8
	ld b, [hl]                                       ; $6df6: $46
	ld a, [hl-]                                      ; $6df7: $3a
	dec a                                            ; $6df8: $3d
	pop af                                           ; $6df9: $f1
	inc l                                            ; $6dfa: $2c
	pop af                                           ; $6dfb: $f1
	pop de                                           ; $6dfc: $d1
	ldh a, [rDMA]                                    ; $6dfd: $f0 $46
	ld c, d                                          ; $6dff: $4a
	ld a, $66                                        ; $6e00: $3e $66
	add hl, sp                                       ; $6e02: $39
	and b                                            ; $6e03: $a0
	cpl                                              ; $6e04: $2f
	ld b, e                                          ; $6e05: $43
	ld b, [hl]                                       ; $6e06: $46
	dec sp                                           ; $6e07: $3b
	inc [hl]                                         ; $6e08: $34
	ld b, b                                          ; $6e09: $40
	add hl, sp                                       ; $6e0a: $39
	ld b, h                                          ; $6e0b: $44
	ld b, l                                          ; $6e0c: $45
	and b                                            ; $6e0d: $a0
	ld l, a                                          ; $6e0e: $6f
	inc [hl]                                         ; $6e0f: $34
	db $ec                                           ; $6e10: $ec
	ld d, a                                          ; $6e11: $57
	xor b                                            ; $6e12: $a8
	db $eb                                           ; $6e13: $eb
	sub [hl]                                         ; $6e14: $96
	and b                                            ; $6e15: $a0
	cpl                                              ; $6e16: $2f
	ld b, e                                          ; $6e17: $43
	ld b, [hl]                                       ; $6e18: $46
	dec sp                                           ; $6e19: $3b
	inc [hl]                                         ; $6e1a: $34
	halt                                             ; $6e1b: $76
	xor h                                            ; $6e1c: $ac
	ld de, $a812                                     ; $6e1d: $11 $12 $a8
	db $eb                                           ; $6e20: $eb
	ld l, c                                          ; $6e21: $69
	inc [hl]                                         ; $6e22: $34
	db $ec                                           ; $6e23: $ec
	jr jr_097_6dce                                   ; $6e24: $18 $a8

	ld [hl-], a                                      ; $6e26: $32
	ldh a, [rPCM12]                                  ; $6e27: $f0 $76
	ldh a, [c]                                       ; $6e29: $f2
	ld b, $f0                                        ; $6e2a: $06 $f0
	ldh a, [hDisp0_SCX]                                     ; $6e2c: $f0 $84
	ld l, h                                          ; $6e2e: $6c
	dec a                                            ; $6e2f: $3d
	jr c, jr_097_6e6c                                ; $6e30: $38 $3a

	pop af                                           ; $6e32: $f1
	ld b, [hl]                                       ; $6e33: $46
	ld b, h                                          ; $6e34: $44
	ld a, [hl-]                                      ; $6e35: $3a
	and e                                            ; $6e36: $a3
	cpl                                              ; $6e37: $2f
	ld b, e                                          ; $6e38: $43
	ldh a, [$d6]                                     ; $6e39: $f0 $d6
	ld c, e                                          ; $6e3b: $4b
	xor h                                            ; $6e3c: $ac
	halt                                             ; $6e3d: $76
	ldh a, [rSTAT]                                   ; $6e3e: $f0 $41
	ld b, d                                          ; $6e40: $42
	ldh a, [rDMA]                                    ; $6e41: $f0 $46
	ld l, h                                          ; $6e43: $6c
	dec a                                            ; $6e44: $3d
	jr c, jr_097_6e8b                                ; $6e45: $38 $44

	ld c, h                                          ; $6e47: $4c
	xor b                                            ; $6e48: $a8
	ld b, b                                          ; $6e49: $40
	ld c, l                                          ; $6e4a: $4d
	ld e, e                                          ; $6e4b: $5b
	ld d, [hl]                                       ; $6e4c: $56
	inc [hl]                                         ; $6e4d: $34
	db $ec                                           ; $6e4e: $ec
	push bc                                          ; $6e4f: $c5
	ld h, a                                          ; $6e50: $67
	ld d, h                                          ; $6e51: $54
	add hl, sp                                       ; $6e52: $39
	and b                                            ; $6e53: $a0
	rst JumpTable                                          ; $6e54: $c7
	ld c, h                                          ; $6e55: $4c
	xor b                                            ; $6e56: $a8
	ld [$a0a9], a                                    ; $6e57: $ea $a9 $a0
	cpl                                              ; $6e5a: $2f
	ld b, e                                          ; $6e5b: $43
	ldh a, [$80]                                     ; $6e5c: $f0 $80
	ldh a, [$c5]                                     ; $6e5e: $f0 $c5
	inc [hl]                                         ; $6e60: $34
	ldh a, [$d0]                                     ; $6e61: $f0 $d0
	ld a, a                                          ; $6e63: $7f
	ldh a, [hDisp1_WY]                                     ; $6e64: $f0 $95
	ld b, h                                          ; $6e66: $44
	ld c, h                                          ; $6e67: $4c
	and b                                            ; $6e68: $a0
	ld e, h                                          ; $6e69: $5c
	ld d, [hl]                                       ; $6e6a: $56
	dec sp                                           ; $6e6b: $3b

jr_097_6e6c:
	and b                                            ; $6e6c: $a0
	cpl                                              ; $6e6d: $2f
	ld b, e                                          ; $6e6e: $43
	ld h, h                                          ; $6e6f: $64
	ld h, e                                          ; $6e70: $63
	dec sp                                           ; $6e71: $3b
	xor b                                            ; $6e72: $a8
	ld e, d                                          ; $6e73: $5a
	inc [hl]                                         ; $6e74: $34
	db $eb                                           ; $6e75: $eb
	rst FarCall                                          ; $6e76: $f7
	xor c                                            ; $6e77: $a9
	db $ec                                           ; $6e78: $ec
	pop hl                                           ; $6e79: $e1
	and b                                            ; $6e7a: $a0
	jr c, jr_097_6eb1                                ; $6e7b: $38 $34

	jr c, jr_097_6ed1                                ; $6e7d: $38 $52

	xor h                                            ; $6e7f: $ac
	ld l, e                                          ; $6e80: $6b
	inc a                                            ; $6e81: $3c
	ldh a, [$2c]                                     ; $6e82: $f0 $2c
	ldh a, [$99]                                     ; $6e84: $f0 $99
	ld d, e                                          ; $6e86: $53
	ld a, $3a                                        ; $6e87: $3e $3a
	inc a                                            ; $6e89: $3c
	dec sp                                           ; $6e8a: $3b

jr_097_6e8b:
	dec a                                            ; $6e8b: $3d
	and c                                            ; $6e8c: $a1
	cpl                                              ; $6e8d: $2f
	ld b, e                                          ; $6e8e: $43
	ldh a, [$2c]                                     ; $6e8f: $f0 $2c
	ldh a, [$99]                                     ; $6e91: $f0 $99
	xor c                                            ; $6e93: $a9
	ld a, a                                          ; $6e94: $7f
	ld d, e                                          ; $6e95: $53
	ldh a, [$9a]                                     ; $6e96: $f0 $9a
	inc a                                            ; $6e98: $3c
	ld a, [hl-]                                      ; $6e99: $3a
	inc a                                            ; $6e9a: $3c
	dec sp                                           ; $6e9b: $3b
	dec a                                            ; $6e9c: $3d
	ld e, l                                          ; $6e9d: $5d
	ld e, d                                          ; $6e9e: $5a
	xor b                                            ; $6e9f: $a8
	pop af                                           ; $6ea0: $f1
	ld a, a                                          ; $6ea1: $7f
	ld b, d                                          ; $6ea2: $42
	ldh a, [$99]                                     ; $6ea3: $f0 $99
	db $ec                                           ; $6ea5: $ec
	ret c                                            ; $6ea6: $d8

	and c                                            ; $6ea7: $a1
	ld e, [hl]                                       ; $6ea8: $5e
	dec sp                                           ; $6ea9: $3b
	xor c                                            ; $6eaa: $a9
	adc b                                            ; $6eab: $88
	sub c                                            ; $6eac: $91
	inc [hl]                                         ; $6ead: $34
	pop af                                           ; $6eae: $f1
	ld a, a                                          ; $6eaf: $7f
	ld b, d                                          ; $6eb0: $42

jr_097_6eb1:
	ldh a, [$99]                                     ; $6eb1: $f0 $99
	ld c, h                                          ; $6eb3: $4c
	xor b                                            ; $6eb4: $a8
	ld l, e                                          ; $6eb5: $6b
	ld b, h                                          ; $6eb6: $44
	inc [hl]                                         ; $6eb7: $34
	pop af                                           ; $6eb8: $f1
	cp c                                             ; $6eb9: $b9
	ldh a, [rVBK]                                    ; $6eba: $f0 $4f
	ld a, $3d                                        ; $6ebc: $3e $3d
	ld h, e                                          ; $6ebe: $63
	and b                                            ; $6ebf: $a0
	cpl                                              ; $6ec0: $2f
	ld b, e                                          ; $6ec1: $43
	db $ec                                           ; $6ec2: $ec
	pop hl                                           ; $6ec3: $e1
	ccf                                              ; $6ec4: $3f
	xor h                                            ; $6ec5: $ac
	ldh a, [$80]                                     ; $6ec6: $f0 $80
	ldh a, [$c5]                                     ; $6ec8: $f0 $c5
	inc [hl]                                         ; $6eca: $34
	ldh a, [$71]                                     ; $6ecb: $f0 $71
	ld d, e                                          ; $6ecd: $53
	ld d, a                                          ; $6ece: $57
	db $ec                                           ; $6ecf: $ec
	ld [hl+], a                                      ; $6ed0: $22

jr_097_6ed1:
	and b                                            ; $6ed1: $a0
	db $ed                                           ; $6ed2: $ed
	ld b, e                                          ; $6ed3: $43
	inc [hl]                                         ; $6ed4: $34
	db $ec                                           ; $6ed5: $ec
	reti                                             ; $6ed6: $d9


	xor h                                            ; $6ed7: $ac
	ld d, h                                          ; $6ed8: $54
	add hl, sp                                       ; $6ed9: $39
	jr c, jr_097_6f15                                ; $6eda: $38 $39

	ld b, d                                          ; $6edc: $42
	ld c, e                                          ; $6edd: $4b
	ldh a, [$71]                                     ; $6ede: $f0 $71
	jr c, jr_097_6f45                                ; $6ee0: $38 $63

	ld b, l                                          ; $6ee2: $45
	and b                                            ; $6ee3: $a0
	cpl                                              ; $6ee4: $2f
	ld b, e                                          ; $6ee5: $43
	ld b, b                                          ; $6ee6: $40
	ld d, a                                          ; $6ee7: $57
	ld d, [hl]                                       ; $6ee8: $56
	inc [hl]                                         ; $6ee9: $34
	ld b, b                                          ; $6eea: $40
	add hl, sp                                       ; $6eeb: $39
	ld b, h                                          ; $6eec: $44
	and b                                            ; $6eed: $a0
	ld b, h                                          ; $6eee: $44
	inc a                                            ; $6eef: $3c
	ld d, b                                          ; $6ef0: $50
	xor h                                            ; $6ef1: $ac
	ldh a, [$0a]                                     ; $6ef2: $f0 $0a
	ld [hl], c                                       ; $6ef4: $71
	ld b, a                                          ; $6ef5: $47
	ld [$a1a9], a                                    ; $6ef6: $ea $a9 $a1
	cpl                                              ; $6ef9: $2f
	ld b, e                                          ; $6efa: $43
	ld [$a0c3], a                                    ; $6efb: $ea $c3 $a0
	cpl                                              ; $6efe: $2f
	ld [hl-], a                                      ; $6eff: $32
	ld d, h                                          ; $6f00: $54
	add hl, sp                                       ; $6f01: $39
	ld a, $3f                                        ; $6f02: $3e $3f
	xor h                                            ; $6f04: $ac
	db $f4                                           ; $6f05: $f4
	ld h, d                                          ; $6f06: $62
	pop af                                           ; $6f07: $f1
	add hl, sp                                       ; $6f08: $39
	ld a, $4b                                        ; $6f09: $3e $4b
	ldh a, [$ce]                                     ; $6f0b: $f0 $ce
	ld h, e                                          ; $6f0d: $63
	dec sp                                           ; $6f0e: $3b
	dec a                                            ; $6f0f: $3d
	and e                                            ; $6f10: $a3
	cpl                                              ; $6f11: $2f
	ld b, e                                          ; $6f12: $43
	db $ec                                           ; $6f13: $ec
	pop hl                                           ; $6f14: $e1

jr_097_6f15:
	ld c, c                                          ; $6f15: $49
	inc de                                           ; $6f16: $13
	ldh a, [$2d]                                     ; $6f17: $f0 $2d
	ld d, a                                          ; $6f19: $57
	ldh a, [rTMA]                                    ; $6f1a: $f0 $06

jr_097_6f1c:
	ld e, [hl]                                       ; $6f1c: $5e
	dec a                                            ; $6f1d: $3d
	inc a                                            ; $6f1e: $3c
	ld d, b                                          ; $6f1f: $50
	xor h                                            ; $6f20: $ac
	ld d, h                                          ; $6f21: $54
	ld c, l                                          ; $6f22: $4d
	inc a                                            ; $6f23: $3c
	ld d, b                                          ; $6f24: $50
	ld b, d                                          ; $6f25: $42
	adc a                                            ; $6f26: $8f
	pop af                                           ; $6f27: $f1
	rrca                                             ; $6f28: $0f
	ldh a, [rOBP0]                                   ; $6f29: $f0 $48
	ld c, e                                          ; $6f2b: $4b
	inc de                                           ; $6f2c: $13
	ld c, a                                          ; $6f2d: $4f
	dec sp                                           ; $6f2e: $3b
	ld c, c                                          ; $6f2f: $49
	sub b                                            ; $6f30: $90
	ld a, $55                                        ; $6f31: $3e $55
	ld a, [hl-]                                      ; $6f33: $3a

Call_097_6f34:
	ld c, [hl]                                       ; $6f34: $4e
	sub a                                            ; $6f35: $97
	and b                                            ; $6f36: $a0
	db $ec                                           ; $6f37: $ec
	cpl                                              ; $6f38: $2f
	xor h                                            ; $6f39: $ac
	ld l, h                                          ; $6f3a: $6c
	ld b, c                                          ; $6f3b: $41
	ld a, [hl-]                                      ; $6f3c: $3a
	ld [hl], b                                       ; $6f3d: $70
	ld [hl], c                                       ; $6f3e: $71
	ld b, c                                          ; $6f3f: $41
	ld c, h                                          ; $6f40: $4c
	and b                                            ; $6f41: $a0
	cpl                                              ; $6f42: $2f
	ld [hl-], a                                      ; $6f43: $32
	db $ec                                           ; $6f44: $ec

jr_097_6f45:
	pop hl                                           ; $6f45: $e1
	ld d, e                                          ; $6f46: $53
	inc de                                           ; $6f47: $13
	add sp, $4d                                      ; $6f48: $e8 $4d
	inc sp                                           ; $6f4a: $33
	add hl, bc                                       ; $6f4b: $09
	ret                                              ; $6f4c: $c9


	rst FarCall                                          ; $6f4d: $f7
	call nz, Call_097_5338                           ; $6f4e: $c4 $38 $53
	ld a, $3d                                        ; $6f51: $3e $3d
	ld e, l                                          ; $6f53: $5d
	ld e, d                                          ; $6f54: $5a
	xor h                                            ; $6f55: $ac
	pop af                                           ; $6f56: $f1
	scf                                              ; $6f57: $37
	ld b, a                                          ; $6f58: $47
	inc a                                            ; $6f59: $3c
	ld e, l                                          ; $6f5a: $5d
	dec a                                            ; $6f5b: $3d
	ld d, b                                          ; $6f5c: $50
	xor h                                            ; $6f5d: $ac
	add a                                            ; $6f5e: $87
	ldh a, [$5b]                                     ; $6f5f: $f0 $5b
	ldh a, [$5e]                                     ; $6f61: $f0 $5e
	ld b, h                                          ; $6f63: $44
	ld c, c                                          ; $6f64: $49
	ld [hl], a                                       ; $6f65: $77
	dec sp                                           ; $6f66: $3b
	ccf                                              ; $6f67: $3f
	and b                                            ; $6f68: $a0
	cpl                                              ; $6f69: $2f
	ld [hl-], a                                      ; $6f6a: $32
	ld h, h                                          ; $6f6b: $64
	jr c, jr_097_6fd2                                ; $6f6c: $38 $64

	jr c, jr_097_6f1c                                ; $6f6e: $38 $ac

	ld b, b                                          ; $6f70: $40
	ld b, c                                          ; $6f71: $41
	ld a, [hl-]                                      ; $6f72: $3a
	ld b, d                                          ; $6f73: $42
	sub [hl]                                         ; $6f74: $96
	ld c, l                                          ; $6f75: $4d
	ld c, [hl]                                       ; $6f76: $4e
	ld a, [hl-]                                      ; $6f77: $3a
	ld [hl], h                                       ; $6f78: $74
	ld e, c                                          ; $6f79: $59
	scf                                              ; $6f7a: $37
	inc de                                           ; $6f7b: $13
	add hl, sp                                       ; $6f7c: $39
	add hl, sp                                       ; $6f7d: $39
	inc [hl]                                         ; $6f7e: $34
	ldh a, [rIE]                                     ; $6f7f: $f0 $ff
	ld a, $38                                        ; $6f81: $3e $38
	ld c, b                                          ; $6f83: $48
	and e                                            ; $6f84: $a3
	cpl                                              ; $6f85: $2f
	add sp, -$2f                                     ; $6f86: $e8 $d1
	inc de                                           ; $6f88: $13
	add sp, -$33                                     ; $6f89: $e8 $cd
	and b                                            ; $6f8b: $a0
	cpl                                              ; $6f8c: $2f
	ld [hl-], a                                      ; $6f8d: $32
	ld e, b                                          ; $6f8e: $58
	ld b, [hl]                                       ; $6f8f: $46
	inc [hl]                                         ; $6f90: $34
	pop af                                           ; $6f91: $f1
	rrca                                             ; $6f92: $0f
	ldh a, [rOBP0]                                   ; $6f93: $f0 $48
	di                                               ; $6f95: $f3
	ld [$81f0], sp                                   ; $6f96: $08 $f0 $81
	ld b, h                                          ; $6f99: $44
	xor b                                            ; $6f9a: $a8
	db $ec                                           ; $6f9b: $ec
	pop hl                                           ; $6f9c: $e1
	ld c, e                                          ; $6f9d: $4b
	inc [hl]                                         ; $6f9e: $34
	ld b, [hl]                                       ; $6f9f: $46
	ld d, d                                          ; $6fa0: $52
	ld d, a                                          ; $6fa1: $57
	inc de                                           ; $6fa2: $13
	ld a, a                                          ; $6fa3: $7f
	ld b, a                                          ; $6fa4: $47
	ld a, $3f                                        ; $6fa5: $3e $3f
	ld a, [hl-]                                      ; $6fa7: $3a
	jr c, jr_097_7016                                ; $6fa8: $38 $6c

	dec a                                            ; $6faa: $3d
	jr c, jr_097_6ff1                                ; $6fab: $38 $44

	and e                                            ; $6fad: $a3
	add hl, bc                                       ; $6fae: $09
	cpl                                              ; $6faf: $2f
	ld b, e                                          ; $6fb0: $43
	db $ec                                           ; $6fb1: $ec
	ld h, [hl]                                       ; $6fb2: $66
	inc de                                           ; $6fb3: $13
	db $ec                                           ; $6fb4: $ec
	call nz, $a844                                   ; $6fb5: $c4 $44 $a8
	ld b, [hl]                                       ; $6fb8: $46
	ld c, l                                          ; $6fb9: $4d
	inc [hl]                                         ; $6fba: $34
	db $ec                                           ; $6fbb: $ec
	ld bc, $67ad                                     ; $6fbc: $01 $ad $67
	ld e, h                                          ; $6fbf: $5c
	ldh a, [$bc]                                     ; $6fc0: $f0 $bc
	ld c, e                                          ; $6fc2: $4b
	ld e, d                                          ; $6fc3: $5a
	ld d, h                                          ; $6fc4: $54
	ld b, h                                          ; $6fc5: $44
	dec sp                                           ; $6fc6: $3b
	dec a                                            ; $6fc7: $3d
	dec sp                                           ; $6fc8: $3b
	ld e, l                                          ; $6fc9: $5d
	and c                                            ; $6fca: $a1
	cpl                                              ; $6fcb: $2f
	ld b, e                                          ; $6fcc: $43
	ldh a, [c]                                       ; $6fcd: $f2
	pop hl                                           ; $6fce: $e1
	di                                               ; $6fcf: $f3
	ld e, $f0                                        ; $6fd0: $1e $f0

jr_097_6fd2:
	ld e, $f0                                        ; $6fd2: $1e $f0
	sub d                                            ; $6fd4: $92
	ld a, [hl]                                       ; $6fd5: $7e
	ldh a, [$eb]                                     ; $6fd6: $f0 $eb
	add hl, bc                                       ; $6fd8: $09
	cpl                                              ; $6fd9: $2f
	ld b, e                                          ; $6fda: $43
	jp hl                                            ; $6fdb: $e9


	ld [$f2a8], sp                                   ; $6fdc: $08 $a8 $f2
	pop hl                                           ; $6fdf: $e1
	di                                               ; $6fe0: $f3
	ld e, $f0                                        ; $6fe1: $1e $f0
	ld e, $f0                                        ; $6fe3: $1e $f0
	sub d                                            ; $6fe5: $92
	ld a, [hl]                                       ; $6fe6: $7e
	ld b, h                                          ; $6fe7: $44
	xor b                                            ; $6fe8: $a8
	add sp, -$40                                     ; $6fe9: $e8 $c0
	and b                                            ; $6feb: $a0
	cpl                                              ; $6fec: $2f
	ld b, e                                          ; $6fed: $43
	ld c, c                                          ; $6fee: $49
	inc [hl]                                         ; $6fef: $34
	add d                                            ; $6ff0: $82

jr_097_6ff1:
	add hl, sp                                       ; $6ff1: $39
	pop af                                           ; $6ff2: $f1
	dec bc                                           ; $6ff3: $0b
	ld c, d                                          ; $6ff4: $4a
	xor h                                            ; $6ff5: $ac
	ld b, [hl]                                       ; $6ff6: $46
	dec sp                                           ; $6ff7: $3b
	ld c, c                                          ; $6ff8: $49
	jr c, jr_097_7034                                ; $6ff9: $38 $39

	ldh a, [$2a]                                     ; $6ffb: $f0 $2a
	ld b, a                                          ; $6ffd: $47
	inc [hl]                                         ; $6ffe: $34
	ldh a, [c]                                       ; $6fff: $f2
	pop hl                                           ; $7000: $e1
	di                                               ; $7001: $f3
	ld e, $44                                        ; $7002: $1e $44
	and b                                            ; $7004: $a0
	cpl                                              ; $7005: $2f
	ld b, e                                          ; $7006: $43
	di                                               ; $7007: $f3
	xor b                                            ; $7008: $a8
	di                                               ; $7009: $f3
	xor c                                            ; $700a: $a9
	ldh a, [$eb]                                     ; $700b: $f0 $eb
	add hl, bc                                       ; $700d: $09
	cpl                                              ; $700e: $2f
	ld b, e                                          ; $700f: $43
	jp hl                                            ; $7010: $e9


	ld [$f3a8], sp                                   ; $7011: $08 $a8 $f3
	xor b                                            ; $7014: $a8
	di                                               ; $7015: $f3

jr_097_7016:
	xor c                                            ; $7016: $a9
	ld b, h                                          ; $7017: $44
	xor b                                            ; $7018: $a8
	add sp, -$40                                     ; $7019: $e8 $c0
	and b                                            ; $701b: $a0
	cpl                                              ; $701c: $2f
	ld b, e                                          ; $701d: $43
	ld c, c                                          ; $701e: $49
	inc [hl]                                         ; $701f: $34
	add d                                            ; $7020: $82
	add hl, sp                                       ; $7021: $39
	pop af                                           ; $7022: $f1
	dec bc                                           ; $7023: $0b
	ld c, d                                          ; $7024: $4a
	xor h                                            ; $7025: $ac
	ld b, [hl]                                       ; $7026: $46
	dec sp                                           ; $7027: $3b
	ld c, c                                          ; $7028: $49
	jr c, jr_097_7064                                ; $7029: $38 $39

	ldh a, [$2a]                                     ; $702b: $f0 $2a
	ld b, a                                          ; $702d: $47
	inc [hl]                                         ; $702e: $34
	di                                               ; $702f: $f3
	xor b                                            ; $7030: $a8
	di                                               ; $7031: $f3
	xor c                                            ; $7032: $a9
	ld b, h                                          ; $7033: $44

jr_097_7034:
	and b                                            ; $7034: $a0
	cpl                                              ; $7035: $2f
	ld b, e                                          ; $7036: $43
	ldh a, [c]                                       ; $7037: $f2
	ld e, [hl]                                       ; $7038: $5e
	pop af                                           ; $7039: $f1
	cpl                                              ; $703a: $2f
	ldh a, [$ee]                                     ; $703b: $f0 $ee
	ldh a, [$eb]                                     ; $703d: $f0 $eb
	add hl, bc                                       ; $703f: $09
	cpl                                              ; $7040: $2f
	ld b, e                                          ; $7041: $43
	jp hl                                            ; $7042: $e9


	ld [$f2a8], sp                                   ; $7043: $08 $a8 $f2
	ld e, [hl]                                       ; $7046: $5e
	pop af                                           ; $7047: $f1
	cpl                                              ; $7048: $2f
	ldh a, [$ee]                                     ; $7049: $f0 $ee
	ld b, h                                          ; $704b: $44
	xor b                                            ; $704c: $a8
	add sp, -$40                                     ; $704d: $e8 $c0
	and b                                            ; $704f: $a0
	cpl                                              ; $7050: $2f
	ld b, e                                          ; $7051: $43
	ld c, c                                          ; $7052: $49
	inc [hl]                                         ; $7053: $34
	add d                                            ; $7054: $82
	add hl, sp                                       ; $7055: $39
	pop af                                           ; $7056: $f1
	dec bc                                           ; $7057: $0b
	ld c, d                                          ; $7058: $4a
	xor h                                            ; $7059: $ac
	ld b, [hl]                                       ; $705a: $46
	dec sp                                           ; $705b: $3b
	ld c, c                                          ; $705c: $49
	jr c, jr_097_7098                                ; $705d: $38 $39

	ldh a, [$2a]                                     ; $705f: $f0 $2a
	ld b, a                                          ; $7061: $47
	inc [hl]                                         ; $7062: $34
	ldh a, [c]                                       ; $7063: $f2

jr_097_7064:
	ld e, [hl]                                       ; $7064: $5e
	pop af                                           ; $7065: $f1
	cpl                                              ; $7066: $2f
	ldh a, [$ee]                                     ; $7067: $f0 $ee
	ld b, h                                          ; $7069: $44
	and b                                            ; $706a: $a0
	cpl                                              ; $706b: $2f
	ld b, e                                          ; $706c: $43
	db $ed                                           ; $706d: $ed
	ld d, a                                          ; $706e: $57
	xor h                                            ; $706f: $ac
	pop af                                           ; $7070: $f1
	ld h, a                                          ; $7071: $67
	ldh a, [$65]                                     ; $7072: $f0 $65
	ld h, a                                          ; $7074: $67
	ldh a, [rOBP0]                                   ; $7075: $f0 $48
	ld b, d                                          ; $7077: $42
	ld l, b                                          ; $7078: $68
	ld b, h                                          ; $7079: $44
	and b                                            ; $707a: $a0
	cpl                                              ; $707b: $2f
	ld [hl-], a                                      ; $707c: $32
	ldh a, [$58]                                     ; $707d: $f0 $58
	ld l, b                                          ; $707f: $68
	ldh a, [rAUD3LEVEL]                              ; $7080: $f0 $1c
	ld d, e                                          ; $7082: $53
	ldh a, [$ce]                                     ; $7083: $f0 $ce
	ldh a, [c]                                       ; $7085: $f2
	ld e, b                                          ; $7086: $58
	ld a, $3d                                        ; $7087: $3e $3d
	dec [hl]                                         ; $7089: $35
	rla                                              ; $708a: $17
	ld a, [hl-]                                      ; $708b: $3a
	ld b, c                                          ; $708c: $41
	inc a                                            ; $708d: $3c
	sbc h                                            ; $708e: $9c
	dec sp                                           ; $708f: $3b
	ld c, c                                          ; $7090: $49
	ldh a, [rAUD4LEN]                                ; $7091: $f0 $20
	add e                                            ; $7093: $83
	ld b, d                                          ; $7094: $42
	ldh a, [rAUD2HIGH]                               ; $7095: $f0 $19
	ld b, a                                          ; $7097: $47

jr_097_7098:
	inc de                                           ; $7098: $13
	jr c, jr_097_70d8                                ; $7099: $38 $3d

	ld b, l                                          ; $709b: $45
	add hl, sp                                       ; $709c: $39
	ld a, [hl-]                                      ; $709d: $3a
	ld a, a                                          ; $709e: $7f
	ld d, e                                          ; $709f: $53
	ld d, c                                          ; $70a0: $51
	ld c, [hl]                                       ; $70a1: $4e
	and e                                            ; $70a2: $a3
	cpl                                              ; $70a3: $2f
	ld b, e                                          ; $70a4: $43
	db $ed                                           ; $70a5: $ed
	ld d, a                                          ; $70a6: $57
	inc [hl]                                         ; $70a7: $34
	ldh a, [c]                                       ; $70a8: $f2
	pop hl                                           ; $70a9: $e1
	di                                               ; $70aa: $f3
	ld e, $4a                                        ; $70ab: $1e $4a
	inc de                                           ; $70ad: $13
	ldh a, [$7d]                                     ; $70ae: $f0 $7d
	inc a                                            ; $70b0: $3c
	ld d, b                                          ; $70b1: $50
	inc [hl]                                         ; $70b2: $34
	db $ec                                           ; $70b3: $ec
	jp $a044                                         ; $70b4: $c3 $44 $a0


	cpl                                              ; $70b7: $2f
	ld b, e                                          ; $70b8: $43
	db $ed                                           ; $70b9: $ed
	ld d, a                                          ; $70ba: $57
	inc [hl]                                         ; $70bb: $34
	db $f4                                           ; $70bc: $f4
	and c                                            ; $70bd: $a1
	di                                               ; $70be: $f3
	xor d                                            ; $70bf: $aa
	ld c, d                                          ; $70c0: $4a
	inc de                                           ; $70c1: $13
	ldh a, [$7d]                                     ; $70c2: $f0 $7d
	inc a                                            ; $70c4: $3c
	ld d, b                                          ; $70c5: $50
	inc [hl]                                         ; $70c6: $34
	db $ec                                           ; $70c7: $ec
	jp $a044                                         ; $70c8: $c3 $44 $a0


	cpl                                              ; $70cb: $2f
	ld b, e                                          ; $70cc: $43
	db $ed                                           ; $70cd: $ed
	ld d, a                                          ; $70ce: $57
	inc [hl]                                         ; $70cf: $34
	di                                               ; $70d0: $f3
	pop af                                           ; $70d1: $f1
	di                                               ; $70d2: $f3
	ldh a, [c]                                       ; $70d3: $f2
	ld c, d                                          ; $70d4: $4a
	inc de                                           ; $70d5: $13
	ldh a, [$7d]                                     ; $70d6: $f0 $7d

jr_097_70d8:
	inc a                                            ; $70d8: $3c
	ld d, b                                          ; $70d9: $50
	inc [hl]                                         ; $70da: $34
	db $ec                                           ; $70db: $ec
	jp $a044                                         ; $70dc: $c3 $44 $a0


	cpl                                              ; $70df: $2f
	ld b, e                                          ; $70e0: $43
	ld e, b                                          ; $70e1: $58
	ccf                                              ; $70e2: $3f
	inc [hl]                                         ; $70e3: $34
	sub h                                            ; $70e4: $94
	inc a                                            ; $70e5: $3c
	ld e, l                                          ; $70e6: $5d
	ld c, [hl]                                       ; $70e7: $4e
	inc a                                            ; $70e8: $3c
	ld c, b                                          ; $70e9: $48
	and b                                            ; $70ea: $a0
	cpl                                              ; $70eb: $2f
	pop hl                                           ; $70ec: $e1
	ld c, d                                          ; $70ed: $4a
	ld c, a                                          ; $70ee: $4f
	ldh a, [$3b]                                     ; $70ef: $f0 $3b
	dec sp                                           ; $70f1: $3b
	ccf                                              ; $70f2: $3f
	db $eb                                           ; $70f3: $eb
	adc e                                            ; $70f4: $8b
	and c                                            ; $70f5: $a1
	cpl                                              ; $70f6: $2f
	ld b, e                                          ; $70f7: $43
	or h                                             ; $70f8: $b4
	xor h                                            ; $70f9: $ac
	ldh a, [$98]                                     ; $70fa: $f0 $98
	ld h, d                                          ; $70fc: $62
	ldh a, [$3b]                                     ; $70fd: $f0 $3b
	ld h, h                                          ; $70ff: $64
	add hl, sp                                       ; $7100: $39
	inc a                                            ; $7101: $3c
	ld a, [hl-]                                      ; $7102: $3a
	and b                                            ; $7103: $a0
	cpl                                              ; $7104: $2f
	xor $08                                          ; $7105: $ee $08
	ld c, d                                          ; $7107: $4a
	db $eb                                           ; $7108: $eb
	adc e                                            ; $7109: $8b
	and c                                            ; $710a: $a1
	cpl                                              ; $710b: $2f
	ld b, e                                          ; $710c: $43
	ld e, b                                          ; $710d: $58
	ld d, c                                          ; $710e: $51
	ld d, e                                          ; $710f: $53
	ld b, a                                          ; $7110: $47
	inc [hl]                                         ; $7111: $34
	db $ed                                           ; $7112: $ed
	xor c                                            ; $7113: $a9
	ld h, d                                          ; $7114: $62
	inc de                                           ; $7115: $13
	jp hl                                            ; $7116: $e9


	ld hl, $eaad                                     ; $7117: $21 $ad $ea
	inc hl                                           ; $711a: $23
	and b                                            ; $711b: $a0
	cpl                                              ; $711c: $2f
	ld b, e                                          ; $711d: $43
	ld e, b                                          ; $711e: $58
	ld d, c                                          ; $711f: $51
	ld d, e                                          ; $7120: $53
	ld b, a                                          ; $7121: $47
	inc [hl]                                         ; $7122: $34
	db $ec                                           ; $7123: $ec
	rst SubAFromDE                                          ; $7124: $df
	ld h, d                                          ; $7125: $62
	inc de                                           ; $7126: $13
	jp hl                                            ; $7127: $e9


	ld hl, $eaad                                     ; $7128: $21 $ad $ea
	inc hl                                           ; $712b: $23
	and b                                            ; $712c: $a0
	cpl                                              ; $712d: $2f
	ld b, e                                          ; $712e: $43
	ld e, b                                          ; $712f: $58
	ld d, c                                          ; $7130: $51
	ld d, e                                          ; $7131: $53
	ld b, a                                          ; $7132: $47
	inc [hl]                                         ; $7133: $34
	db $ec                                           ; $7134: $ec
	ldh [$62], a                                     ; $7135: $e0 $62
	inc de                                           ; $7137: $13
	jp hl                                            ; $7138: $e9


	ld hl, $eaad                                     ; $7139: $21 $ad $ea
	inc hl                                           ; $713c: $23
	and b                                            ; $713d: $a0
	cpl                                              ; $713e: $2f
	ld b, e                                          ; $713f: $43
	ld e, b                                          ; $7140: $58
	ld d, c                                          ; $7141: $51
	ld d, e                                          ; $7142: $53
	ld b, a                                          ; $7143: $47
	inc [hl]                                         ; $7144: $34
	db $ec                                           ; $7145: $ec
	pop hl                                           ; $7146: $e1
	ld h, d                                          ; $7147: $62
	inc de                                           ; $7148: $13
	jp hl                                            ; $7149: $e9


	ld hl, $eaad                                     ; $714a: $21 $ad $ea
	inc hl                                           ; $714d: $23
	and b                                            ; $714e: $a0
	cpl                                              ; $714f: $2f
	ld b, e                                          ; $7150: $43
	ld e, b                                          ; $7151: $58
	ld d, c                                          ; $7152: $51
	ld d, e                                          ; $7153: $53
	ld b, a                                          ; $7154: $47
	inc [hl]                                         ; $7155: $34
	db $ed                                           ; $7156: $ed
	ld d, e                                          ; $7157: $53
	ld h, d                                          ; $7158: $62
	inc de                                           ; $7159: $13
	jp hl                                            ; $715a: $e9


	ld hl, $eaad                                     ; $715b: $21 $ad $ea
	inc hl                                           ; $715e: $23
	and b                                            ; $715f: $a0
	cpl                                              ; $7160: $2f
	ld b, e                                          ; $7161: $43
	ld e, b                                          ; $7162: $58
	ld d, c                                          ; $7163: $51
	ld d, e                                          ; $7164: $53
	ld b, a                                          ; $7165: $47
	inc [hl]                                         ; $7166: $34
	db $eb                                           ; $7167: $eb
	ld a, [$1362]                                    ; $7168: $fa $62 $13
	jp hl                                            ; $716b: $e9


	ld hl, $eaad                                     ; $716c: $21 $ad $ea
	inc hl                                           ; $716f: $23
	and b                                            ; $7170: $a0
	cpl                                              ; $7171: $2f
	ld b, e                                          ; $7172: $43
	ld e, b                                          ; $7173: $58
	ld d, c                                          ; $7174: $51
	ld d, e                                          ; $7175: $53
	ld b, a                                          ; $7176: $47
	inc [hl]                                         ; $7177: $34
	db $ec                                           ; $7178: $ec
	and $62                                          ; $7179: $e6 $62
	inc de                                           ; $717b: $13
	jp hl                                            ; $717c: $e9


	ld hl, $eaad                                     ; $717d: $21 $ad $ea
	inc hl                                           ; $7180: $23
	and b                                            ; $7181: $a0
	cpl                                              ; $7182: $2f
	ld b, e                                          ; $7183: $43
	ld h, h                                          ; $7184: $64
	db $f4                                           ; $7185: $f4
	db $f4                                           ; $7186: $f4
	ld c, e                                          ; $7187: $4b
	ldh a, [c]                                       ; $7188: $f2
	cp l                                             ; $7189: $bd
	ld d, l                                          ; $718a: $55
	ccf                                              ; $718b: $3f
	ldh a, [$f3]                                     ; $718c: $f0 $f3
	ld c, l                                          ; $718e: $4d
	ld c, [hl]                                       ; $718f: $4e
	ld c, h                                          ; $7190: $4c
	and b                                            ; $7191: $a0
	cpl                                              ; $7192: $2f
	ld b, e                                          ; $7193: $43
	ld d, h                                          ; $7194: $54
	ld c, l                                          ; $7195: $4d
	ld d, e                                          ; $7196: $53
	di                                               ; $7197: $f3
	pop af                                           ; $7198: $f1
	di                                               ; $7199: $f3
	ldh a, [c]                                       ; $719a: $f2
	ld b, d                                          ; $719b: $42
	sbc b                                            ; $719c: $98
	ld h, l                                          ; $719d: $65
	ldh a, [$6e]                                     ; $719e: $f0 $6e
	ldh a, [$03]                                     ; $71a0: $f0 $03
	xor h                                            ; $71a2: $ac
	ldh a, [rBGP]                                    ; $71a3: $f0 $47
	ldh a, [c]                                       ; $71a5: $f2
	ld [bc], a                                       ; $71a6: $02
	ldh a, [c]                                       ; $71a7: $f2
	ld d, a                                          ; $71a8: $57
	inc a                                            ; $71a9: $3c
	and b                                            ; $71aa: $a0
	cpl                                              ; $71ab: $2f
	ld b, e                                          ; $71ac: $43
	ld [$a8b3], a                                    ; $71ad: $ea $b3 $a8
	db $f4                                           ; $71b0: $f4
	inc bc                                           ; $71b1: $03
	db $f4                                           ; $71b2: $f4
	rra                                              ; $71b3: $1f
	di                                               ; $71b4: $f3
	ld a, [bc]                                       ; $71b5: $0a
	ldh a, [c]                                       ; $71b6: $f2
	ret c                                            ; $71b7: $d8

	and b                                            ; $71b8: $a0
	cpl                                              ; $71b9: $2f
	ld [hl-], a                                      ; $71ba: $32
	ldh a, [c]                                       ; $71bb: $f2
	adc h                                            ; $71bc: $8c
	ld l, b                                          ; $71bd: $68
	ldh a, [rAUD3LEVEL]                              ; $71be: $f0 $1c
	ld d, e                                          ; $71c0: $53
	ldh a, [$ce]                                     ; $71c1: $f0 $ce
	ldh a, [c]                                       ; $71c3: $f2
	ld e, b                                          ; $71c4: $58
	ld a, $3d                                        ; $71c5: $3e $3d
	xor b                                            ; $71c7: $a8
	ldh a, [$79]                                     ; $71c8: $f0 $79
	ld l, b                                          ; $71ca: $68
	ld c, e                                          ; $71cb: $4b
	inc [hl]                                         ; $71cc: $34
	db $ec                                           ; $71cd: $ec
	jp $a344                                         ; $71ce: $c3 $44 $a3


	cpl                                              ; $71d1: $2f
	ld b, e                                          ; $71d2: $43
	db $ed                                           ; $71d3: $ed
	ld d, a                                          ; $71d4: $57
	xor h                                            ; $71d5: $ac
	db $ec                                           ; $71d6: $ec
	jp $6842                                         ; $71d7: $c3 $42 $68


	ld b, h                                          ; $71da: $44
	xor b                                            ; $71db: $a8
	db $ed                                           ; $71dc: $ed
	xor c                                            ; $71dd: $a9
	db $eb                                           ; $71de: $eb
	ld [hl], e                                       ; $71df: $73
	inc de                                           ; $71e0: $13
	jp hl                                            ; $71e1: $e9


	add hl, hl                                       ; $71e2: $29
	ld c, b                                          ; $71e3: $48
	and b                                            ; $71e4: $a0
	cpl                                              ; $71e5: $2f
	ld b, e                                          ; $71e6: $43
	db $ed                                           ; $71e7: $ed
	ld d, a                                          ; $71e8: $57
	xor h                                            ; $71e9: $ac
	db $ec                                           ; $71ea: $ec
	jp $6842                                         ; $71eb: $c3 $42 $68


	ld b, h                                          ; $71ee: $44
	xor b                                            ; $71ef: $a8
	db $ec                                           ; $71f0: $ec
	rst SubAFromDE                                          ; $71f1: $df
	db $eb                                           ; $71f2: $eb
	ld [hl], e                                       ; $71f3: $73
	inc de                                           ; $71f4: $13
	jp hl                                            ; $71f5: $e9


	add hl, hl                                       ; $71f6: $29
	ld c, b                                          ; $71f7: $48
	and b                                            ; $71f8: $a0
	cpl                                              ; $71f9: $2f
	ld b, e                                          ; $71fa: $43
	db $ed                                           ; $71fb: $ed
	ld d, a                                          ; $71fc: $57
	xor h                                            ; $71fd: $ac
	db $ec                                           ; $71fe: $ec
	jp $6842                                         ; $71ff: $c3 $42 $68


	ld b, h                                          ; $7202: $44
	xor b                                            ; $7203: $a8
	db $ec                                           ; $7204: $ec
	ldh [$eb], a                                     ; $7205: $e0 $eb
	ld [hl], e                                       ; $7207: $73
	inc de                                           ; $7208: $13
	jp hl                                            ; $7209: $e9


	add hl, hl                                       ; $720a: $29
	ld c, b                                          ; $720b: $48
	and b                                            ; $720c: $a0
	cpl                                              ; $720d: $2f
	ld b, e                                          ; $720e: $43
	db $ed                                           ; $720f: $ed
	ld d, a                                          ; $7210: $57
	xor h                                            ; $7211: $ac
	db $ec                                           ; $7212: $ec
	jp $6842                                         ; $7213: $c3 $42 $68


	ld b, h                                          ; $7216: $44
	xor b                                            ; $7217: $a8
	db $ec                                           ; $7218: $ec
	pop hl                                           ; $7219: $e1
	db $eb                                           ; $721a: $eb
	ld [hl], e                                       ; $721b: $73
	inc de                                           ; $721c: $13
	jp hl                                            ; $721d: $e9


	add hl, hl                                       ; $721e: $29
	ld c, b                                          ; $721f: $48
	and b                                            ; $7220: $a0
	cpl                                              ; $7221: $2f
	ld b, e                                          ; $7222: $43
	db $ed                                           ; $7223: $ed
	ld d, a                                          ; $7224: $57
	xor h                                            ; $7225: $ac
	db $ec                                           ; $7226: $ec
	jp $6842                                         ; $7227: $c3 $42 $68


	ld b, h                                          ; $722a: $44
	xor b                                            ; $722b: $a8
	db $ed                                           ; $722c: $ed
	ld d, e                                          ; $722d: $53
	db $eb                                           ; $722e: $eb
	ld [hl], e                                       ; $722f: $73
	inc de                                           ; $7230: $13
	jp hl                                            ; $7231: $e9


	add hl, hl                                       ; $7232: $29
	ld c, b                                          ; $7233: $48
	and b                                            ; $7234: $a0
	cpl                                              ; $7235: $2f
	ld b, e                                          ; $7236: $43
	db $ed                                           ; $7237: $ed
	ld d, a                                          ; $7238: $57
	xor h                                            ; $7239: $ac
	db $ec                                           ; $723a: $ec
	jp $6842                                         ; $723b: $c3 $42 $68


	ld b, h                                          ; $723e: $44
	xor b                                            ; $723f: $a8
	db $eb                                           ; $7240: $eb
	ld a, [$73eb]                                    ; $7241: $fa $eb $73
	inc de                                           ; $7244: $13
	jp hl                                            ; $7245: $e9


	add hl, hl                                       ; $7246: $29
	ld c, b                                          ; $7247: $48
	and b                                            ; $7248: $a0
	cpl                                              ; $7249: $2f
	ld b, e                                          ; $724a: $43
	db $ed                                           ; $724b: $ed
	ld d, a                                          ; $724c: $57
	xor h                                            ; $724d: $ac
	db $ec                                           ; $724e: $ec
	jp $6842                                         ; $724f: $c3 $42 $68


	ld b, h                                          ; $7252: $44
	xor b                                            ; $7253: $a8
	db $ec                                           ; $7254: $ec
	and $eb                                          ; $7255: $e6 $eb
	ld [hl], e                                       ; $7257: $73
	inc de                                           ; $7258: $13
	jp hl                                            ; $7259: $e9


	add hl, hl                                       ; $725a: $29
	ld c, b                                          ; $725b: $48
	and b                                            ; $725c: $a0
	cpl                                              ; $725d: $2f
	ld b, e                                          ; $725e: $43
	ld l, d                                          ; $725f: $6a
	ld l, b                                          ; $7260: $68
	ld c, a                                          ; $7261: $4f
	xor h                                            ; $7262: $ac
	ld d, d                                          ; $7263: $52
	dec a                                            ; $7264: $3d
	adc e                                            ; $7265: $8b
	ldh a, [$72]                                     ; $7266: $f0 $72
	ld c, c                                          ; $7268: $49
	ld h, a                                          ; $7269: $67
	ld d, l                                          ; $726a: $55
	ld b, d                                          ; $726b: $42
	inc a                                            ; $726c: $3c
	xor l                                            ; $726d: $ad
	pop af                                           ; $726e: $f1
	xor b                                            ; $726f: $a8
	ld a, $38                                        ; $7270: $3e $38
	ld a, [hl-]                                      ; $7272: $3a
	ld [hl], h                                       ; $7273: $74
	and b                                            ; $7274: $a0
	cpl                                              ; $7275: $2f
	ld b, e                                          ; $7276: $43
	ldh a, [$c7]                                     ; $7277: $f0 $c7
	jr c, jr_097_72b5                                ; $7279: $38 $3a

	ld [hl], h                                       ; $727b: $74
	xor h                                            ; $727c: $ac
	ld d, d                                          ; $727d: $52
	ld b, h                                          ; $727e: $44
	ld a, b                                          ; $727f: $78
	ld a, [hl-]                                      ; $7280: $3a
	jr c, @+$44                                      ; $7281: $38 $42

	inc a                                            ; $7283: $3c
	ld a, [hl-]                                      ; $7284: $3a
	ld [hl], h                                       ; $7285: $74
	and b                                            ; $7286: $a0
	cpl                                              ; $7287: $2f
	ld b, e                                          ; $7288: $43
	ld b, [hl]                                       ; $7289: $46
	dec sp                                           ; $728a: $3b
	inc [hl]                                         ; $728b: $34
	di                                               ; $728c: $f3
	dec a                                            ; $728d: $3d
	ldh a, [c]                                       ; $728e: $f2
	or $f1                                           ; $728f: $f6 $f1
	ld b, h                                          ; $7291: $44
	ld b, h                                          ; $7292: $44
	xor b                                            ; $7293: $a8
	ret                                              ; $7294: $c9


	ld [hl], d                                       ; $7295: $72
	ccf                                              ; $7296: $3f
	jr c, jr_097_72ed                                ; $7297: $38 $54

	add hl, sp                                       ; $7299: $39
	ld b, l                                          ; $729a: $45
	and b                                            ; $729b: $a0
	cpl                                              ; $729c: $2f
	ld b, e                                          ; $729d: $43
	ld b, [hl]                                       ; $729e: $46
	dec sp                                           ; $729f: $3b
	inc [hl]                                         ; $72a0: $34
	sub e                                            ; $72a1: $93
	ldh a, [rSC]                                     ; $72a2: $f0 $02
	ld e, c                                          ; $72a4: $59
	sub e                                            ; $72a5: $93
	db $f4                                           ; $72a6: $f4
	ld d, a                                          ; $72a7: $57
	ldh a, [c]                                       ; $72a8: $f2
	ld sp, $a844                                     ; $72a9: $31 $44 $a8
	ldh a, [$6e]                                     ; $72ac: $f0 $6e
	ld e, c                                          ; $72ae: $59
	ld a, l                                          ; $72af: $7d
	pop af                                           ; $72b0: $f1
	ld b, l                                          ; $72b1: $45
	add [hl]                                         ; $72b2: $86
	ldh a, [$de]                                     ; $72b3: $f0 $de

jr_097_72b5:
	ld e, c                                          ; $72b5: $59
	add [hl]                                         ; $72b6: $86
	ldh a, [$3d]                                     ; $72b7: $f0 $3d
	ld h, l                                          ; $72b9: $65
	ldh a, [$de]                                     ; $72ba: $f0 $de
	sbc b                                            ; $72bc: $98
	ldh a, [$7c]                                     ; $72bd: $f0 $7c
	add e                                            ; $72bf: $83
	xor b                                            ; $72c0: $a8
	ld b, e                                          ; $72c1: $43
	ldh a, [rHDMA4]                                  ; $72c2: $f0 $54
	ldh a, [rAUD1HIGH]                               ; $72c4: $f0 $14
	ld b, l                                          ; $72c6: $45
	add a                                            ; $72c7: $87
	ldh a, [c]                                       ; $72c8: $f2
	rst SubAFromDE                                          ; $72c9: $df
	ld h, d                                          ; $72ca: $62
	ldh a, [c]                                       ; $72cb: $f2
	sub [hl]                                         ; $72cc: $96
	ld e, l                                          ; $72cd: $5d
	dec [hl]                                         ; $72ce: $35
	ldh a, [$eb]                                     ; $72cf: $f0 $eb
	inc de                                           ; $72d1: $13
	jr c, jr_097_730c                                ; $72d2: $38 $38

	add d                                            ; $72d4: $82
	pop af                                           ; $72d5: $f1
	adc h                                            ; $72d6: $8c
	ld b, h                                          ; $72d7: $44
	ld a, [hl-]                                      ; $72d8: $3a
	and b                                            ; $72d9: $a0
	cpl                                              ; $72da: $2f
	ld b, e                                          ; $72db: $43
	db $ec                                           ; $72dc: $ec
	inc de                                           ; $72dd: $13
	inc [hl]                                         ; $72de: $34
	pop af                                           ; $72df: $f1
	call nz, $bcf1                                   ; $72e0: $c4 $f1 $bc
	ld e, l                                          ; $72e3: $5d
	ld b, h                                          ; $72e4: $44
	ld c, h                                          ; $72e5: $4c
	and b                                            ; $72e6: $a0
	cpl                                              ; $72e7: $2f
	ld b, e                                          ; $72e8: $43
	jp hl                                            ; $72e9: $e9


	or c                                             ; $72ea: $b1
	xor l                                            ; $72eb: $ad
	db $eb                                           ; $72ec: $eb

jr_097_72ed:
	add l                                            ; $72ed: $85
	xor l                                            ; $72ee: $ad
	add sp, -$77                                     ; $72ef: $e8 $89
	and b                                            ; $72f1: $a0
	cpl                                              ; $72f2: $2f
	ld [hl-], a                                      ; $72f3: $32
	ld b, b                                          ; $72f4: $40
	ld a, $3f                                        ; $72f5: $3e $3f
	xor h                                            ; $72f7: $ac
	pop af                                           ; $72f8: $f1
	pop de                                           ; $72f9: $d1
	ld l, b                                          ; $72fa: $68
	ldh a, [rAUD3LEVEL]                              ; $72fb: $f0 $1c
	ld d, e                                          ; $72fd: $53
	ldh a, [$ce]                                     ; $72fe: $f0 $ce
	ldh a, [c]                                       ; $7300: $f2
	ld e, b                                          ; $7301: $58
	ld a, $3d                                        ; $7302: $3e $3d
	and e                                            ; $7304: $a3
	cpl                                              ; $7305: $2f
	ld b, e                                          ; $7306: $43
	db $ed                                           ; $7307: $ed
	ld d, a                                          ; $7308: $57
	inc [hl]                                         ; $7309: $34
	ldh a, [$5f]                                     ; $730a: $f0 $5f

jr_097_730c:
	ldh a, [$ce]                                     ; $730c: $f0 $ce
	ld l, b                                          ; $730e: $68
	dec [hl]                                         ; $730f: $35
	rla                                              ; $7310: $17
	ld c, a                                          ; $7311: $4f
	add hl, sp                                       ; $7312: $39
	ld d, c                                          ; $7313: $51
	sbc l                                            ; $7314: $9d
	inc de                                           ; $7315: $13
	db $ec                                           ; $7316: $ec
	call nz, $f04f                                   ; $7317: $c4 $4f $f0
	adc $63                                          ; $731a: $ce $63
	ld d, a                                          ; $731c: $57
	ld b, h                                          ; $731d: $44
	and b                                            ; $731e: $a0
	cpl                                              ; $731f: $2f
	ld b, e                                          ; $7320: $43
	ld b, [hl]                                       ; $7321: $46
	ld b, [hl]                                       ; $7322: $46
	inc [hl]                                         ; $7323: $34
	ldh a, [$f3]                                     ; $7324: $f0 $f3
	ld c, l                                          ; $7326: $4d
	dec a                                            ; $7327: $3d
	xor l                                            ; $7328: $ad
	db $ec                                           ; $7329: $ec
	ld hl, sp-$10                                    ; $732a: $f8 $f0
	xor h                                            ; $732c: $ac
	jr c, jr_097_736c                                ; $732d: $38 $3d

	ld b, l                                          ; $732f: $45
	xor b                                            ; $7330: $a8
	db $ec                                           ; $7331: $ec
	call nz, $f04f                                   ; $7332: $c4 $4f $f0
	adc $63                                          ; $7335: $ce $63
	ld d, a                                          ; $7337: $57
	ld b, h                                          ; $7338: $44
	and b                                            ; $7339: $a0
	cpl                                              ; $733a: $2f
	ld b, e                                          ; $733b: $43
	ld b, [hl]                                       ; $733c: $46
	ld e, c                                          ; $733d: $59
	ld b, [hl]                                       ; $733e: $46

jr_097_733f:
	xor h                                            ; $733f: $ac
	ldh a, [c]                                       ; $7340: $f2
	pop hl                                           ; $7341: $e1
	di                                               ; $7342: $f3
	ld e, $52                                        ; $7343: $1e $52
	ld c, d                                          ; $7345: $4a
	ld h, a                                          ; $7346: $67
	dec sp                                           ; $7347: $3b
	ccf                                              ; $7348: $3f
	xor h                                            ; $7349: $ac
	adc e                                            ; $734a: $8b
	ldh a, [$72]                                     ; $734b: $f0 $72
	ld c, c                                          ; $734d: $49
	db $eb                                           ; $734e: $eb
	ld sp, $565b                                     ; $734f: $31 $5b $56
	inc de                                           ; $7352: $13
	ldh a, [c]                                       ; $7353: $f2
	rst SubAFromHL                                          ; $7354: $d7
	ld a, $38                                        ; $7355: $3e $38
	ld b, l                                          ; $7357: $45
	ld a, [hl-]                                      ; $7358: $3a
	ld [hl], h                                       ; $7359: $74
	ld c, b                                          ; $735a: $48
	and b                                            ; $735b: $a0
	cpl                                              ; $735c: $2f
	ld b, e                                          ; $735d: $43
	ld b, [hl]                                       ; $735e: $46
	ld e, c                                          ; $735f: $59
	ld b, [hl]                                       ; $7360: $46
	xor h                                            ; $7361: $ac
	ldh a, [c]                                       ; $7362: $f2
	ld e, [hl]                                       ; $7363: $5e
	pop af                                           ; $7364: $f1
	cpl                                              ; $7365: $2f
	ldh a, [$ee]                                     ; $7366: $f0 $ee
	ld d, d                                          ; $7368: $52
	ld c, d                                          ; $7369: $4a
	ld h, a                                          ; $736a: $67
	dec sp                                           ; $736b: $3b

jr_097_736c:
	ccf                                              ; $736c: $3f
	xor h                                            ; $736d: $ac
	adc e                                            ; $736e: $8b
	ldh a, [$72]                                     ; $736f: $f0 $72
	ld c, c                                          ; $7371: $49
	db $eb                                           ; $7372: $eb
	ld sp, $565b                                     ; $7373: $31 $5b $56
	inc de                                           ; $7376: $13
	ldh a, [c]                                       ; $7377: $f2
	rst SubAFromHL                                          ; $7378: $d7
	ld a, $38                                        ; $7379: $3e $38
	ld b, l                                          ; $737b: $45
	ld a, [hl-]                                      ; $737c: $3a
	ld [hl], h                                       ; $737d: $74
	ld c, b                                          ; $737e: $48
	and b                                            ; $737f: $a0
	cpl                                              ; $7380: $2f
	ld b, e                                          ; $7381: $43
	ld b, [hl]                                       ; $7382: $46
	ld e, c                                          ; $7383: $59
	ld b, [hl]                                       ; $7384: $46
	xor h                                            ; $7385: $ac
	di                                               ; $7386: $f3
	xor b                                            ; $7387: $a8
	di                                               ; $7388: $f3
	xor c                                            ; $7389: $a9
	ld d, d                                          ; $738a: $52
	ld c, d                                          ; $738b: $4a
	ld h, a                                          ; $738c: $67
	dec sp                                           ; $738d: $3b
	ccf                                              ; $738e: $3f
	xor h                                            ; $738f: $ac
	adc e                                            ; $7390: $8b
	ldh a, [$72]                                     ; $7391: $f0 $72
	ld c, c                                          ; $7393: $49
	db $eb                                           ; $7394: $eb
	ld sp, $565b                                     ; $7395: $31 $5b $56
	inc de                                           ; $7398: $13
	ldh a, [c]                                       ; $7399: $f2
	rst SubAFromHL                                          ; $739a: $d7
	ld a, $38                                        ; $739b: $3e $38
	ld b, l                                          ; $739d: $45
	ld a, [hl-]                                      ; $739e: $3a
	ld [hl], h                                       ; $739f: $74
	ld c, b                                          ; $73a0: $48
	and b                                            ; $73a1: $a0
	cpl                                              ; $73a2: $2f
	ld b, e                                          ; $73a3: $43
	ld d, c                                          ; $73a4: $51
	ld [hl], b                                       ; $73a5: $70
	ld d, l                                          ; $73a6: $55
	inc [hl]                                         ; $73a7: $34
	ld [hl], a                                       ; $73a8: $77
	jr c, jr_097_733f                                ; $73a9: $38 $94

	db $f4                                           ; $73ab: $f4
	ld d, [hl]                                       ; $73ac: $56
	jr c, @+$15                                      ; $73ad: $38 $13

	db $ec                                           ; $73af: $ec
	call nz, $3b44                                   ; $73b0: $c4 $44 $3b
	dec a                                            ; $73b3: $3d
	ld a, [hl-]                                      ; $73b4: $3a
	and b                                            ; $73b5: $a0
	cpl                                              ; $73b6: $2f
	ld b, e                                          ; $73b7: $43
	db $eb                                           ; $73b8: $eb
	ld h, e                                          ; $73b9: $63
	ld e, l                                          ; $73ba: $5d
	ld e, d                                          ; $73bb: $5a
	xor h                                            ; $73bc: $ac
	ret                                              ; $73bd: $c9


	inc [hl]                                         ; $73be: $34
	ldh a, [rVBK]                                    ; $73bf: $f0 $4f
	ldh a, [$8d]                                     ; $73c1: $f0 $8d
	ld d, a                                          ; $73c3: $57
	ld d, e                                          ; $73c4: $53
	inc de                                           ; $73c5: $13
	ld b, [hl]                                       ; $73c6: $46
	dec sp                                           ; $73c7: $3b
	dec a                                            ; $73c8: $3d
	ld a, [hl-]                                      ; $73c9: $3a
	ld [hl], h                                       ; $73ca: $74
	and b                                            ; $73cb: $a0
	cpl                                              ; $73cc: $2f
	ld b, e                                          ; $73cd: $43
	ld b, [hl]                                       ; $73ce: $46
	dec sp                                           ; $73cf: $3b
	xor h                                            ; $73d0: $ac
	ld l, d                                          ; $73d1: $6a
	ld [hl], a                                       ; $73d2: $77
	jr c, @+$46                                      ; $73d3: $38 $44

	ld a, $3d                                        ; $73d5: $3e $3d
	ld e, l                                          ; $73d7: $5d
	ld e, d                                          ; $73d8: $5a
	xor h                                            ; $73d9: $ac
	db $ed                                           ; $73da: $ed
	ld d, a                                          ; $73db: $57
	xor h                                            ; $73dc: $ac
	add sp, -$38                                     ; $73dd: $e8 $c8
	and b                                            ; $73df: $a0
	cpl                                              ; $73e0: $2f
	ld [hl-], a                                      ; $73e1: $32
	pop af                                           ; $73e2: $f1
	ld b, a                                          ; $73e3: $47
	ld h, a                                          ; $73e4: $67
	ld b, d                                          ; $73e5: $42
	ldh a, [rBGP]                                    ; $73e6: $f0 $47
	ld c, e                                          ; $73e8: $4b
	inc de                                           ; $73e9: $13
	pop af                                           ; $73ea: $f1
	ld a, h                                          ; $73eb: $7c
	ld a, c                                          ; $73ec: $79
	ld a, [hl-]                                      ; $73ed: $3a
	inc a                                            ; $73ee: $3c
	dec sp                                           ; $73ef: $3b
	dec a                                            ; $73f0: $3d
	ld e, l                                          ; $73f1: $5d
	ld e, d                                          ; $73f2: $5a
	xor h                                            ; $73f3: $ac
	db $eb                                           ; $73f4: $eb
	ld h, b                                          ; $73f5: $60
	ld c, c                                          ; $73f6: $49
	inc a                                            ; $73f7: $3c
	xor h                                            ; $73f8: $ac
	db $eb                                           ; $73f9: $eb
	ld e, c                                          ; $73fa: $59
	inc a                                            ; $73fb: $3c
	ld a, [hl-]                                      ; $73fc: $3a
	and e                                            ; $73fd: $a3
	cpl                                              ; $73fe: $2f
	ld [$0912], a                                    ; $73ff: $ea $12 $09
	cpl                                              ; $7402: $2f
	jp hl                                            ; $7403: $e9


	add [hl]                                         ; $7404: $86
	add hl, bc                                       ; $7405: $09
	cpl                                              ; $7406: $2f
	ld b, e                                          ; $7407: $43
	db $eb                                           ; $7408: $eb
	dec a                                            ; $7409: $3d
	inc de                                           ; $740a: $13
	ld [$a011], a                                    ; $740b: $ea $11 $a0
	cpl                                              ; $740e: $2f
	ld b, e                                          ; $740f: $43
	db $eb                                           ; $7410: $eb
	inc a                                            ; $7411: $3c
	xor h                                            ; $7412: $ac
	add sp, -$38                                     ; $7413: $e8 $c8
	and b                                            ; $7415: $a0
	cpl                                              ; $7416: $2f
	ld [$ac10], a                                    ; $7417: $ea $10 $ac
	jp hl                                            ; $741a: $e9


	add l                                            ; $741b: $85
	add hl, bc                                       ; $741c: $09
	add hl, bc                                       ; $741d: $09
	ld b, [hl]                                       ; $741e: $46
	dec sp                                           ; $741f: $3b
	inc [hl]                                         ; $7420: $34
	ld d, $a0                                        ; $7421: $16 $a0
	cpl                                              ; $7423: $2f
	ld b, e                                          ; $7424: $43
	ld l, e                                          ; $7425: $6b
	ld b, h                                          ; $7426: $44
	inc [hl]                                         ; $7427: $34
	db $ed                                           ; $7428: $ed
	xor c                                            ; $7429: $a9
	db $ec                                           ; $742a: $ec
	ret c                                            ; $742b: $d8

	inc a                                            ; $742c: $3c
	and b                                            ; $742d: $a0
	ld c, h                                          ; $742e: $4c
	ld e, [hl]                                       ; $742f: $5e
	inc [hl]                                         ; $7430: $34
	ld d, h                                          ; $7431: $54
	ld c, l                                          ; $7432: $4d
	inc a                                            ; $7433: $3c
	ld d, b                                          ; $7434: $50
	inc de                                           ; $7435: $13
	sub h                                            ; $7436: $94
	inc a                                            ; $7437: $3c
	ld e, l                                          ; $7438: $5d
	ld c, [hl]                                       ; $7439: $4e
	ld c, c                                          ; $743a: $49
	ld d, h                                          ; $743b: $54
	ld a, [hl-]                                      ; $743c: $3a
	ld b, d                                          ; $743d: $42
	and c                                            ; $743e: $a1
	cpl                                              ; $743f: $2f
	ld b, e                                          ; $7440: $43
	ld b, [hl]                                       ; $7441: $46
	ld b, [hl]                                       ; $7442: $46
	inc [hl]                                         ; $7443: $34
	ld b, b                                          ; $7444: $40
	add hl, sp                                       ; $7445: $39
	ld b, h                                          ; $7446: $44
	ld b, l                                          ; $7447: $45
	and b                                            ; $7448: $a0
	db $ec                                           ; $7449: $ec
	cp c                                             ; $744a: $b9
	ld d, b                                          ; $744b: $50
	ld c, b                                          ; $744c: $48
	xor h                                            ; $744d: $ac
	inc hl                                           ; $744e: $23
	ld [$a126], a                                    ; $744f: $ea $26 $a1
	cpl                                              ; $7452: $2f
	jp hl                                            ; $7453: $e9


	ld c, d                                          ; $7454: $4a
	add hl, bc                                       ; $7455: $09
	db $ec                                           ; $7456: $ec
	cp c                                             ; $7457: $b9
	xor h                                            ; $7458: $ac
	pop af                                           ; $7459: $f1
	pop bc                                           ; $745a: $c1
	ld d, b                                          ; $745b: $50
	ld c, l                                          ; $745c: $4d
	ld a, [hl-]                                      ; $745d: $3a
	ld d, l                                          ; $745e: $55
	ccf                                              ; $745f: $3f
	xor b                                            ; $7460: $a8
	ld e, e                                          ; $7461: $5b
	ld d, [hl]                                       ; $7462: $56
	ld b, [hl]                                       ; $7463: $46
	inc [hl]                                         ; $7464: $34
	ldh a, [$0a]                                     ; $7465: $f0 $0a
	ld d, l                                          ; $7467: $55
	ld [$a0a9], a                                    ; $7468: $ea $a9 $a0
	cpl                                              ; $746b: $2f
	jp hl                                            ; $746c: $e9


	ld d, h                                          ; $746d: $54
	add hl, bc                                       ; $746e: $09
	ld b, b                                          ; $746f: $40
	add hl, sp                                       ; $7470: $39
	xor l                                            ; $7471: $ad
	db $eb                                           ; $7472: $eb
	ccf                                              ; $7473: $3f
	xor h                                            ; $7474: $ac
	ld [$48e4], a                                    ; $7475: $ea $e4 $48
	and b                                            ; $7478: $a0
	cpl                                              ; $7479: $2f
	ld b, e                                          ; $747a: $43
	ret                                              ; $747b: $c9


	xor h                                            ; $747c: $ac
	ld [$a034], a                                    ; $747d: $ea $34 $a0
	cpl                                              ; $7480: $2f
	ld b, e                                          ; $7481: $43
	ld b, [hl]                                       ; $7482: $46
	dec sp                                           ; $7483: $3b
	inc [hl]                                         ; $7484: $34
	db $ed                                           ; $7485: $ed
	xor d                                            ; $7486: $aa
	jr c, jr_097_74c1                                ; $7487: $38 $38

	ld c, c                                          ; $7489: $49
	ld d, h                                          ; $748a: $54
	ld e, a                                          ; $748b: $5f
	inc de                                           ; $748c: $13
	ld b, a                                          ; $748d: $47
	inc [hl]                                         ; $748e: $34
	db $ed                                           ; $748f: $ed
	xor c                                            ; $7490: $a9
	db $eb                                           ; $7491: $eb
	ld h, [hl]                                       ; $7492: $66
	and b                                            ; $7493: $a0
	cpl                                              ; $7494: $2f
	ld b, e                                          ; $7495: $43
	db $ed                                           ; $7496: $ed
	xor c                                            ; $7497: $a9
	and b                                            ; $7498: $a0
	ld e, [hl]                                       ; $7499: $5e
	dec sp                                           ; $749a: $3b
	ld hl, $3448                                     ; $749b: $21 $48 $34
	inc hl                                           ; $749e: $23
	xor $1f                                          ; $749f: $ee $1f
	xor b                                            ; $74a1: $a8
	ldh a, [$66]                                     ; $74a2: $f0 $66
	ld b, c                                          ; $74a4: $41
	ld c, d                                          ; $74a5: $4a
	ld c, b                                          ; $74a6: $48
	and b                                            ; $74a7: $a0
	cpl                                              ; $74a8: $2f
	ld b, e                                          ; $74a9: $43
	add sp, -$04                                     ; $74aa: $e8 $fc
	and b                                            ; $74ac: $a0
	ret nc                                           ; $74ad: $d0

	xor b                                            ; $74ae: $a8
	ld e, e                                          ; $74af: $5b
	ld d, [hl]                                       ; $74b0: $56
	ld b, [hl]                                       ; $74b1: $46
	inc [hl]                                         ; $74b2: $34
	ldh a, [$0a]                                     ; $74b3: $f0 $0a
	pop af                                           ; $74b5: $f1
	jr jr_097_74cb                                   ; $74b6: $18 $13

	ld [$3ca9], a                                    ; $74b8: $ea $a9 $3c
	and c                                            ; $74bb: $a1
	cpl                                              ; $74bc: $2f
	ld b, e                                          ; $74bd: $43
	ld b, [hl]                                       ; $74be: $46
	ld b, [hl]                                       ; $74bf: $46
	inc [hl]                                         ; $74c0: $34

jr_097_74c1:
	ld h, a                                          ; $74c1: $67
	ld d, h                                          ; $74c2: $54
	add hl, sp                                       ; $74c3: $39
	and b                                            ; $74c4: $a0
	ld e, [hl]                                       ; $74c5: $5e
	dec sp                                           ; $74c6: $3b
	inc [hl]                                         ; $74c7: $34
	db $eb                                           ; $74c8: $eb
	ld e, c                                          ; $74c9: $59
	inc a                                            ; $74ca: $3c

jr_097_74cb:
	ld a, [hl-]                                      ; $74cb: $3a
	ld [hl], $22                                     ; $74cc: $36 $22
	inc de                                           ; $74ce: $13
	add hl, sp                                       ; $74cf: $39
	ld e, c                                          ; $74d0: $59
	ld b, c                                          ; $74d1: $41
	ld c, b                                          ; $74d2: $48
	add hl, bc                                       ; $74d3: $09
	ret nc                                           ; $74d4: $d0

	and b                                            ; $74d5: $a0
	ld hl, $a048                                     ; $74d6: $21 $48 $a0
	cpl                                              ; $74d9: $2f
	ld b, e                                          ; $74da: $43
	ld h, h                                          ; $74db: $64
	jr c, jr_097_7512                                ; $74dc: $38 $34

	db $ed                                           ; $74de: $ed
	xor c                                            ; $74df: $a9
	xor b                                            ; $74e0: $a8
	sbc c                                            ; $74e1: $99
	ccf                                              ; $74e2: $3f
	ld b, l                                          ; $74e3: $45
	and b                                            ; $74e4: $a0
	cpl                                              ; $74e5: $2f
	ld b, e                                          ; $74e6: $43
	ld b, [hl]                                       ; $74e7: $46
	dec sp                                           ; $74e8: $3b
	inc [hl]                                         ; $74e9: $34
	ld h, a                                          ; $74ea: $67
	dec sp                                           ; $74eb: $3b
	ccf                                              ; $74ec: $3f
	db $ec                                           ; $74ed: $ec
	push de                                          ; $74ee: $d5
	and b                                            ; $74ef: $a0
	cpl                                              ; $74f0: $2f
	ld b, e                                          ; $74f1: $43
	ld [$ac9f], a                                    ; $74f2: $ea $9f $ac
	jp hl                                            ; $74f5: $e9


	xor d                                            ; $74f6: $aa
	and c                                            ; $74f7: $a1
	jp hl                                            ; $74f8: $e9


	ld [de], a                                       ; $74f9: $12
	xor b                                            ; $74fa: $a8
	ld l, d                                          ; $74fb: $6a
	inc [hl]                                         ; $74fc: $34
	ldh a, [rAUD2LEN]                                ; $74fd: $f0 $16
	ldh a, [$c0]                                     ; $74ff: $f0 $c0
	ld a, $3f                                        ; $7501: $3e $3f
	ld d, l                                          ; $7503: $55
	ld c, [hl]                                       ; $7504: $4e
	inc a                                            ; $7505: $3c
	ld d, b                                          ; $7506: $50
	and b                                            ; $7507: $a0
	ld h, h                                          ; $7508: $64
	sbc c                                            ; $7509: $99
	dec a                                            ; $750a: $3d
	ld a, c                                          ; $750b: $79
	xor h                                            ; $750c: $ac
	jp hl                                            ; $750d: $e9


	ld a, [hl+]                                      ; $750e: $2a
	and b                                            ; $750f: $a0
	ld c, d                                          ; $7510: $4a
	ld c, a                                          ; $7511: $4f

jr_097_7512:
	inc [hl]                                         ; $7512: $34
	ld d, h                                          ; $7513: $54
	add hl, sp                                       ; $7514: $39
	jr c, jr_097_7550                                ; $7515: $38 $39

	xor h                                            ; $7517: $ac
	db $ed                                           ; $7518: $ed
	sub a                                            ; $7519: $97
	ldh a, [rSCX]                                    ; $751a: $f0 $43
	pop af                                           ; $751c: $f1
	jr nz, jr_097_7561                               ; $751d: $20 $42

	di                                               ; $751f: $f3
	ld [hl], b                                       ; $7520: $70
	di                                               ; $7521: $f3
	ld a, [de]                                       ; $7522: $1a
	ldh a, [$2c]                                     ; $7523: $f0 $2c
	ld h, d                                          ; $7525: $62
	inc de                                           ; $7526: $13
	ld [hl], d                                       ; $7527: $72
	ccf                                              ; $7528: $3f
	jr c, @+$50                                      ; $7529: $38 $4e

	ld c, c                                          ; $752b: $49
	inc [hl]                                         ; $752c: $34
	ldh a, [rVBK]                                    ; $752d: $f0 $4f
	ld d, e                                          ; $752f: $53
	pop af                                           ; $7530: $f1
	cp c                                             ; $7531: $b9
	ld d, b                                          ; $7532: $50
	sbc l                                            ; $7533: $9d
	ld h, e                                          ; $7534: $63
	ld c, h                                          ; $7535: $4c
	and b                                            ; $7536: $a0
	db $eb                                           ; $7537: $eb
	ld [$f042], a                                    ; $7538: $ea $42 $f0
	add [hl]                                         ; $753b: $86
	ld d, e                                          ; $753c: $53
	inc de                                           ; $753d: $13
	ldh a, [c]                                       ; $753e: $f2
	ld c, l                                          ; $753f: $4d
	jr c, @+$41                                      ; $7540: $38 $3f

	jr c, @+$50                                      ; $7542: $38 $4e

	ldh a, [c]                                       ; $7544: $f2
	inc b                                            ; $7545: $04
	ld b, a                                          ; $7546: $47
	ld a, b                                          ; $7547: $78
	ld c, [hl]                                       ; $7548: $4e
	ld c, c                                          ; $7549: $49
	xor h                                            ; $754a: $ac
	ld c, a                                          ; $754b: $4f
	dec sp                                           ; $754c: $3b
	ld c, c                                          ; $754d: $49
	ldh a, [$57]                                     ; $754e: $f0 $57

jr_097_7550:
	ldh a, [$ae]                                     ; $7550: $f0 $ae
	ld a, [hl-]                                      ; $7552: $3a
	ld b, c                                          ; $7553: $41
	ld b, h                                          ; $7554: $44
	ld e, a                                          ; $7555: $5f
	add hl, sp                                       ; $7556: $39
	ld a, [hl-]                                      ; $7557: $3a
	and b                                            ; $7558: $a0
	adc b                                            ; $7559: $88
	sub c                                            ; $755a: $91
	inc [hl]                                         ; $755b: $34
	db $ed                                           ; $755c: $ed
	sub a                                            ; $755d: $97
	ld c, c                                          ; $755e: $49
	ldh a, [rAUD2HIGH]                               ; $755f: $f0 $19

jr_097_7561:
	ldh a, [$ca]                                     ; $7561: $f0 $ca
	ld b, d                                          ; $7563: $42
	inc de                                           ; $7564: $13
	ldh a, [rSCX]                                    ; $7565: $f0 $43
	pop af                                           ; $7567: $f1
	jr nz, jr_097_75bd                               ; $7568: $20 $53

	ld l, l                                          ; $756a: $6d
	add b                                            ; $756b: $80
	ld b, a                                          ; $756c: $47
	ld a, [hl-]                                      ; $756d: $3a
	dec sp                                           ; $756e: $3b
	ccf                                              ; $756f: $3f
	xor h                                            ; $7570: $ac
	ldh a, [$57]                                     ; $7571: $f0 $57
	ldh a, [$ae]                                     ; $7573: $f0 $ae
	ld a, [hl-]                                      ; $7575: $3a
	ldh a, [$75]                                     ; $7576: $f0 $75
	ldh a, [hDisp1_OBP0]                                     ; $7578: $f0 $93
	ld h, d                                          ; $757a: $62
	inc de                                           ; $757b: $13
	ldh a, [c]                                       ; $757c: $f2
	or $6c                                           ; $757d: $f6 $6c
	sub h                                            ; $757f: $94
	ld a, $3f                                        ; $7580: $3e $3f
	ld c, [hl]                                       ; $7582: $4e
	ld h, e                                          ; $7583: $63
	ld c, h                                          ; $7584: $4c
	and b                                            ; $7585: $a0
	cpl                                              ; $7586: $2f
	ld b, e                                          ; $7587: $43
	db $ec                                           ; $7588: $ec
	push bc                                          ; $7589: $c5
	xor h                                            ; $758a: $ac
	db $ec                                           ; $758b: $ec
	add $ec                                          ; $758c: $c6 $ec
	rrca                                             ; $758e: $0f
	and b                                            ; $758f: $a0
	call c, $4fac                                    ; $7590: $dc $ac $4f
	add hl, sp                                       ; $7593: $39
	or b                                             ; $7594: $b0
	and b                                            ; $7595: $a0
	cpl                                              ; $7596: $2f
	ld b, e                                          ; $7597: $43
	ld [$accc], a                                    ; $7598: $ea $cc $ac
	jp hl                                            ; $759b: $e9


	ld [hl], $13                                     ; $759c: $36 $13
	jp hl                                            ; $759e: $e9


	xor d                                            ; $759f: $aa
	and c                                            ; $75a0: $a1
	xor $1f                                          ; $75a1: $ee $1f
	inc [hl]                                         ; $75a3: $34
	ret nc                                           ; $75a4: $d0

	xor b                                            ; $75a5: $a8
	ld e, e                                          ; $75a6: $5b
	ld d, [hl]                                       ; $75a7: $56
	ld b, [hl]                                       ; $75a8: $46
	inc [hl]                                         ; $75a9: $34
	jp hl                                            ; $75aa: $e9


	ret                                              ; $75ab: $c9


	inc de                                           ; $75ac: $13
	db $eb                                           ; $75ad: $eb
	ld a, [hl]                                       ; $75ae: $7e
	ld d, d                                          ; $75af: $52
	ld a, $66                                        ; $75b0: $3e $66
	add hl, sp                                       ; $75b2: $39
	and b                                            ; $75b3: $a0
	db $eb                                           ; $75b4: $eb
	ccf                                              ; $75b5: $3f
	ld c, h                                          ; $75b6: $4c
	xor b                                            ; $75b7: $a8
	jp hl                                            ; $75b8: $e9


	xor [hl]                                         ; $75b9: $ae
	xor b                                            ; $75ba: $a8
	jp hl                                            ; $75bb: $e9


	ld a, [hl+]                                      ; $75bc: $2a

jr_097_75bd:
	and b                                            ; $75bd: $a0
	xor $1f                                          ; $75be: $ee $1f
	inc [hl]                                         ; $75c0: $34
	ret nc                                           ; $75c1: $d0

	xor b                                            ; $75c2: $a8
	inc hl                                           ; $75c3: $23
	ld b, [hl]                                       ; $75c4: $46
	dec sp                                           ; $75c5: $3b
	scf                                              ; $75c6: $37
	inc h                                            ; $75c7: $24
	ld b, [hl]                                       ; $75c8: $46
	ld c, l                                          ; $75c9: $4d
	ld c, e                                          ; $75ca: $4b

jr_097_75cb:
	ld l, e                                          ; $75cb: $6b
	and c                                            ; $75cc: $a1
	cpl                                              ; $75cd: $2f
	ld b, e                                          ; $75ce: $43
	db $eb                                           ; $75cf: $eb
	ld a, [hl-]                                      ; $75d0: $3a
	add hl, bc                                       ; $75d1: $09
	cpl                                              ; $75d2: $2f
	ld [$093a], a                                    ; $75d3: $ea $3a $09
	cpl                                              ; $75d6: $2f
	add sp, $53                                      ; $75d7: $e8 $53
	add hl, bc                                       ; $75d9: $09
	db $ec                                           ; $75da: $ec
	inc e                                            ; $75db: $1c
	xor b                                            ; $75dc: $a8
	ld a, $3b                                        ; $75dd: $3e $3b
	inc a                                            ; $75df: $3c
	ld d, a                                          ; $75e0: $57
	ld a, $3d                                        ; $75e1: $3e $3d
	ldh a, [rAUD3LEVEL]                              ; $75e3: $f0 $1c
	ldh a, [c]                                       ; $75e5: $f2
	ld [hl], a                                       ; $75e6: $77
	ld h, d                                          ; $75e7: $62
	ldh a, [rHDMA1]                                  ; $75e8: $f0 $51
	dec sp                                           ; $75ea: $3b
	ccf                                              ; $75eb: $3f
	inc de                                           ; $75ec: $13
	jr c, jr_097_763d                                ; $75ed: $38 $4e

	add h                                            ; $75ef: $84
	dec sp                                           ; $75f0: $3b
	ccf                                              ; $75f1: $3f
	inc [hl]                                         ; $75f2: $34
	ldh a, [$57]                                     ; $75f3: $f0 $57
	ldh a, [$ae]                                     ; $75f5: $f0 $ae
	ld b, l                                          ; $75f7: $45
	ld c, h                                          ; $75f8: $4c
	and b                                            ; $75f9: $a0
	cpl                                              ; $75fa: $2f
	ld b, e                                          ; $75fb: $43
	db $eb                                           ; $75fc: $eb
	dec sp                                           ; $75fd: $3b
	add hl, bc                                       ; $75fe: $09
	ldh a, [$57]                                     ; $75ff: $f0 $57
	ldh a, [$ae]                                     ; $7601: $f0 $ae
	scf                                              ; $7603: $37
	inc de                                           ; $7604: $13
	ld d, c                                          ; $7605: $51
	ld [hl], b                                       ; $7606: $70
	ld d, l                                          ; $7607: $55
	jp hl                                            ; $7608: $e9


	db $db                                           ; $7609: $db
	and b                                            ; $760a: $a0
	cpl                                              ; $760b: $2f
	ld b, e                                          ; $760c: $43
	ld [$099e], a                                    ; $760d: $ea $9e $09
	cpl                                              ; $7610: $2f
	ld b, e                                          ; $7611: $43
	ld [$a845], a                                    ; $7612: $ea $45 $a8
	db $ed                                           ; $7615: $ed
	xor c                                            ; $7616: $a9
	ld c, e                                          ; $7617: $4b
	inc [hl]                                         ; $7618: $34
	ld [$a046], a                                    ; $7619: $ea $46 $a0
	add a                                            ; $761c: $87
	ldh a, [$5b]                                     ; $761d: $f0 $5b
	ldh a, [$5e]                                     ; $761f: $f0 $5e
	inc [hl]                                         ; $7621: $34
	pop af                                           ; $7622: $f1
	ld hl, sp-$0f                                    ; $7623: $f8 $f1
	ld d, b                                          ; $7625: $50
	ld c, e                                          ; $7626: $4b
	ld a, [hl-]                                      ; $7627: $3a
	jr c, jr_097_75cb                                ; $7628: $38 $a1

	cpl                                              ; $762a: $2f
	ld b, e                                          ; $762b: $43
	ld b, [hl]                                       ; $762c: $46
	ld b, [hl]                                       ; $762d: $46
	xor h                                            ; $762e: $ac
	ld [$44e5], a                                    ; $762f: $ea $e5 $44
	ld b, l                                          ; $7632: $45
	and b                                            ; $7633: $a0
	db $ec                                           ; $7634: $ec
	cp c                                             ; $7635: $b9
	xor l                                            ; $7636: $ad
	db $ed                                           ; $7637: $ed
	ld h, h                                          ; $7638: $64
	ld a, $3d                                        ; $7639: $3e $3d
	ld b, c                                          ; $763b: $41
	ld b, h                                          ; $763c: $44

jr_097_763d:
	inc a                                            ; $763d: $3c
	ld d, b                                          ; $763e: $50
	xor l                                            ; $763f: $ad
	ld c, d                                          ; $7640: $4a
	ld c, a                                          ; $7641: $4f
	inc [hl]                                         ; $7642: $34
	ld b, [hl]                                       ; $7643: $46
	ld d, a                                          ; $7644: $57
	ld d, e                                          ; $7645: $53
	ld c, c                                          ; $7646: $49
	add hl, sp                                       ; $7647: $39
	and b                                            ; $7648: $a0
	cpl                                              ; $7649: $2f
	ld b, e                                          ; $764a: $43
	ld l, e                                          ; $764b: $6b
	ld b, h                                          ; $764c: $44
	inc a                                            ; $764d: $3c
	pop af                                           ; $764e: $f1
	sbc c                                            ; $764f: $99
	ld c, l                                          ; $7650: $4d
	ld c, [hl]                                       ; $7651: $4e
	ld a, [hl-]                                      ; $7652: $3a
	xor b                                            ; $7653: $a8
	jp hl                                            ; $7654: $e9


	ret z                                            ; $7655: $c8

	db $ec                                           ; $7656: $ec
	rrca                                             ; $7657: $0f
	and b                                            ; $7658: $a0
	db $eb                                           ; $7659: $eb
	add l                                            ; $765a: $85
	ld h, e                                          ; $765b: $63
	ld c, h                                          ; $765c: $4c
	xor b                                            ; $765d: $a8
	ld c, a                                          ; $765e: $4f
	add hl, sp                                       ; $765f: $39
	xor $05                                          ; $7660: $ee $05
	inc a                                            ; $7662: $3c
	ld c, c                                          ; $7663: $49
	ld [hl], a                                       ; $7664: $77
	dec sp                                           ; $7665: $3b
	ld h, c                                          ; $7666: $61
	ld d, [hl]                                       ; $7667: $56
	dec sp                                           ; $7668: $3b
	dec a                                            ; $7669: $3d
	xor b                                            ; $766a: $a8
	ld c, d                                          ; $766b: $4a
	ld c, a                                          ; $766c: $4f
	inc [hl]                                         ; $766d: $34
	db $ec                                           ; $766e: $ec
	cp c                                             ; $766f: $b9
	and b                                            ; $7670: $a0
	add hl, bc                                       ; $7671: $09
	ld b, [hl]                                       ; $7672: $46
	dec sp                                           ; $7673: $3b
	inc [hl]                                         ; $7674: $34
	ld d, $a8                                        ; $7675: $16 $a8
	jp hl                                            ; $7677: $e9


	dec hl                                           ; $7678: $2b
	and b                                            ; $7679: $a0
	cpl                                              ; $767a: $2f
	ld b, e                                          ; $767b: $43
	ld h, h                                          ; $767c: $64
	ld l, [hl]                                       ; $767d: $6e
	inc [hl]                                         ; $767e: $34
	db $ec                                           ; $767f: $ec
	rst SubAFromDE                                          ; $7680: $df
	xor b                                            ; $7681: $a8
	ld h, h                                          ; $7682: $64
	ld c, e                                          ; $7683: $4b
	ld b, l                                          ; $7684: $45
	add hl, sp                                       ; $7685: $39
	and b                                            ; $7686: $a0
	ld b, [hl]                                       ; $7687: $46
	ld c, l                                          ; $7688: $4d
	xor c                                            ; $7689: $a9
	ldh a, [$bf]                                     ; $768a: $f0 $bf
	xor $08                                          ; $768c: $ee $08
	ld a, [hl-]                                      ; $768e: $3a
	ld b, c                                          ; $768f: $41
	ld c, d                                          ; $7690: $4a
	ld d, c                                          ; $7691: $51
	inc a                                            ; $7692: $3c
	and c                                            ; $7693: $a1
	cpl                                              ; $7694: $2f
	ld b, e                                          ; $7695: $43
	xor $1f                                          ; $7696: $ee $1f
	inc [hl]                                         ; $7698: $34
	ld b, b                                          ; $7699: $40
	add hl, sp                                       ; $769a: $39
	ld b, h                                          ; $769b: $44
	ld b, l                                          ; $769c: $45
	and b                                            ; $769d: $a0
	xor $1e                                          ; $769e: $ee $1e
	inc [hl]                                         ; $76a0: $34
	db $ec                                           ; $76a1: $ec
	cp c                                             ; $76a2: $b9
	ld d, b                                          ; $76a3: $50
	ld c, b                                          ; $76a4: $48
	xor h                                            ; $76a5: $ac
	xor $06                                          ; $76a6: $ee $06
	ld b, a                                          ; $76a8: $47
	ld h, a                                          ; $76a9: $67
	ld e, h                                          ; $76aa: $5c
	ld d, d                                          ; $76ab: $52
	ld a, c                                          ; $76ac: $79
	ld b, c                                          ; $76ad: $41
	inc a                                            ; $76ae: $3c
	and c                                            ; $76af: $a1
	cpl                                              ; $76b0: $2f
	jp hl                                            ; $76b1: $e9


	ld c, d                                          ; $76b2: $4a
	add hl, bc                                       ; $76b3: $09
	db $ec                                           ; $76b4: $ec
	cp c                                             ; $76b5: $b9
	xor l                                            ; $76b6: $ad
	ld b, b                                          ; $76b7: $40
	ld c, l                                          ; $76b8: $4d
	jp hl                                            ; $76b9: $e9


	ret z                                            ; $76ba: $c8

	inc de                                           ; $76bb: $13
	ld [$a0a9], a                                    ; $76bc: $ea $a9 $a0
	cpl                                              ; $76bf: $2f
	jp hl                                            ; $76c0: $e9


	ld d, h                                          ; $76c1: $54
	add hl, bc                                       ; $76c2: $09
	cp [hl]                                          ; $76c3: $be
	xor l                                            ; $76c4: $ad
	ld [$13e4], a                                    ; $76c5: $ea $e4 $13
	db $eb                                           ; $76c8: $eb
	ccf                                              ; $76c9: $3f
	and b                                            ; $76ca: $a0
	cpl                                              ; $76cb: $2f
	ld b, e                                          ; $76cc: $43
	ret                                              ; $76cd: $c9


	xor h                                            ; $76ce: $ac
	ld [$a034], a                                    ; $76cf: $ea $34 $a0
	cpl                                              ; $76d2: $2f
	ld b, e                                          ; $76d3: $43
	ld b, [hl]                                       ; $76d4: $46
	dec sp                                           ; $76d5: $3b
	inc [hl]                                         ; $76d6: $34
	db $ed                                           ; $76d7: $ed
	xor d                                            ; $76d8: $aa
	jr c, jr_097_7713                                ; $76d9: $38 $38

	ld c, c                                          ; $76db: $49
	ld d, h                                          ; $76dc: $54
	ld e, a                                          ; $76dd: $5f
	inc de                                           ; $76de: $13
	ld b, a                                          ; $76df: $47
	inc [hl]                                         ; $76e0: $34
	db $ec                                           ; $76e1: $ec
	rst SubAFromDE                                          ; $76e2: $df
	db $eb                                           ; $76e3: $eb
	ld h, [hl]                                       ; $76e4: $66
	and b                                            ; $76e5: $a0
	cpl                                              ; $76e6: $2f
	ld b, e                                          ; $76e7: $43
	db $ec                                           ; $76e8: $ec
	rst SubAFromDE                                          ; $76e9: $df
	and b                                            ; $76ea: $a0
	ld e, [hl]                                       ; $76eb: $5e
	dec sp                                           ; $76ec: $3b
	inc [hl]                                         ; $76ed: $34
	xor $2d                                          ; $76ee: $ee $2d
	xor b                                            ; $76f0: $a8
	ldh a, [$66]                                     ; $76f1: $f0 $66
	ld b, c                                          ; $76f3: $41
	ld c, d                                          ; $76f4: $4a
	and b                                            ; $76f5: $a0
	cpl                                              ; $76f6: $2f
	ld b, e                                          ; $76f7: $43
	add sp, -$04                                     ; $76f8: $e8 $fc
	and b                                            ; $76fa: $a0
	xor $2d                                          ; $76fb: $ee $2d
	and b                                            ; $76fd: $a0
	xor $2d                                          ; $76fe: $ee $2d
	inc [hl]                                         ; $7700: $34
	jr c, jr_097_773b                                ; $7701: $38 $38

	ld c, d                                          ; $7703: $4a
	ld d, c                                          ; $7704: $51
	ld b, l                                          ; $7705: $45
	and b                                            ; $7706: $a0
	cpl                                              ; $7707: $2f
	ld b, e                                          ; $7708: $43
	jp hl                                            ; $7709: $e9


	ld d, l                                          ; $770a: $55
	and b                                            ; $770b: $a0

jr_097_770c:
	ld e, [hl]                                       ; $770c: $5e
	ld e, c                                          ; $770d: $59
	ld c, c                                          ; $770e: $49
	xor l                                            ; $770f: $ad
	xor $2d                                          ; $7710: $ee $2d
	inc [hl]                                         ; $7712: $34

jr_097_7713:
	jr c, jr_097_774d                                ; $7713: $38 $38

	ld c, d                                          ; $7715: $4a
	ld d, c                                          ; $7716: $51
	ld b, l                                          ; $7717: $45
	and b                                            ; $7718: $a0
	ld hl, $10ee                                     ; $7719: $21 $ee $10
	jr nz, jr_097_770c                               ; $771c: $20 $ee

	dec l                                            ; $771e: $2d
	and c                                            ; $771f: $a1
	cpl                                              ; $7720: $2f
	ld b, e                                          ; $7721: $43
	ld c, h                                          ; $7722: $4c
	ld e, [hl]                                       ; $7723: $5e
	inc [hl]                                         ; $7724: $34
	ld l, d                                          ; $7725: $6a
	ld l, b                                          ; $7726: $68
	ld b, d                                          ; $7727: $42
	inc de                                           ; $7728: $13
	db $ec                                           ; $7729: $ec
	jp $ea34                                         ; $772a: $c3 $34 $ea


	ld h, $a1                                        ; $772d: $26 $a1
	xor $1e                                          ; $772f: $ee $1e
	xor l                                            ; $7731: $ad
	ld l, a                                          ; $7732: $6f
	inc [hl]                                         ; $7733: $34
	ldh a, [$65]                                     ; $7734: $f0 $65
	ldh a, [$75]                                     ; $7736: $f0 $75
	ld d, e                                          ; $7738: $53
	ld a, [hl]                                       ; $7739: $7e
	ld d, l                                          ; $773a: $55

jr_097_773b:
	ld a, [hl-]                                      ; $773b: $3a
	jr c, jr_097_7780                                ; $773c: $38 $42

	ld c, d                                          ; $773e: $4a
	xor h                                            ; $773f: $ac
	db $ed                                           ; $7740: $ed
	jp $344b                                         ; $7741: $c3 $4b $34


	ret                                              ; $7744: $c9


	ld c, b                                          ; $7745: $48
	and b                                            ; $7746: $a0
	cpl                                              ; $7747: $2f
	ld b, e                                          ; $7748: $43
	ld b, b                                          ; $7749: $40
	add hl, sp                                       ; $774a: $39
	xor l                                            ; $774b: $ad
	ld [hl-], a                                      ; $774c: $32

jr_097_774d:
	pop af                                           ; $774d: $f1
	xor b                                            ; $774e: $a8
	ld a, $38                                        ; $774f: $3e $38
	ld e, l                                          ; $7751: $5d
	ld e, d                                          ; $7752: $5a
	inc [hl]                                         ; $7753: $34
	ld [$a3b0], a                                    ; $7754: $ea $b0 $a3
	ld c, d                                          ; $7757: $4a
	ld c, e                                          ; $7758: $4b
	inc [hl]                                         ; $7759: $34
	db $eb                                           ; $775a: $eb
	ld e, d                                          ; $775b: $5a
	and b                                            ; $775c: $a0
	ld b, [hl]                                       ; $775d: $46
	dec sp                                           ; $775e: $3b
	inc [hl]                                         ; $775f: $34
	ld d, $a0                                        ; $7760: $16 $a0
	ld c, d                                          ; $7762: $4a
	ld c, a                                          ; $7763: $4f
	inc [hl]                                         ; $7764: $34
	ld d, c                                          ; $7765: $51
	ld [hl], b                                       ; $7766: $70
	ld d, l                                          ; $7767: $55
	pop af                                           ; $7768: $f1
	ld a, a                                          ; $7769: $7f
	ldh a, [hDisp0_BGP]                                     ; $776a: $f0 $85
	ld d, e                                          ; $776c: $53
	inc de                                           ; $776d: $13
	ld b, [hl]                                       ; $776e: $46
	dec sp                                           ; $776f: $3b
	ccf                                              ; $7770: $3f
	inc [hl]                                         ; $7771: $34
	ld l, a                                          ; $7772: $6f
	ld c, e                                          ; $7773: $4b
	add a                                            ; $7774: $87
	adc e                                            ; $7775: $8b
	ld e, h                                          ; $7776: $5c
	ld c, d                                          ; $7777: $4a
	ld d, c                                          ; $7778: $51
	ld b, l                                          ; $7779: $45
	and b                                            ; $777a: $a0
	adc b                                            ; $777b: $88
	ld c, d                                          ; $777c: $4a
	ldh a, [$fa]                                     ; $777d: $f0 $fa
	ld b, c                                          ; $777f: $41

jr_097_7780:
	ld c, d                                          ; $7780: $4a
	xor h                                            ; $7781: $ac
	pop af                                           ; $7782: $f1
	ld c, h                                          ; $7783: $4c
	ldh a, [$61]                                     ; $7784: $f0 $61
	ld a, $3f                                        ; $7786: $3e $3f
	dec a                                            ; $7788: $3d
	ld b, l                                          ; $7789: $45
	ld d, a                                          ; $778a: $57
	ld c, a                                          ; $778b: $4f
	sbc h                                            ; $778c: $9c
	dec sp                                           ; $778d: $3b
	ld c, c                                          ; $778e: $49
	ldh a, [$57]                                     ; $778f: $f0 $57
	ldh a, [$ae]                                     ; $7791: $f0 $ae
	and b                                            ; $7793: $a0
	adc b                                            ; $7794: $88
	sub c                                            ; $7795: $91
	inc [hl]                                         ; $7796: $34
	ldh a, [$57]                                     ; $7797: $f0 $57
	ldh a, [$ae]                                     ; $7799: $f0 $ae
	ld c, d                                          ; $779b: $4a
	ld a, $3d                                        ; $779c: $3e $3d
	ld c, h                                          ; $779e: $4c
	xor b                                            ; $779f: $a8
	inc hl                                           ; $77a0: $23
	ld [$34ab], a                                    ; $77a1: $ea $ab $34
	di                                               ; $77a4: $f3
	xor b                                            ; $77a5: $a8
	di                                               ; $77a6: $f3
	xor c                                            ; $77a7: $a9
	ld c, e                                          ; $77a8: $4b
	db $ed                                           ; $77a9: $ed
	ld l, h                                          ; $77aa: $6c
	ld c, b                                          ; $77ab: $48
	and b                                            ; $77ac: $a0
	cpl                                              ; $77ad: $2f
	ld b, e                                          ; $77ae: $43
	ld b, [hl]                                       ; $77af: $46
	dec sp                                           ; $77b0: $3b
	inc [hl]                                         ; $77b1: $34
	db $ec                                           ; $77b2: $ec
	rst SubAFromDE                                          ; $77b3: $df
	inc de                                           ; $77b4: $13
	add a                                            ; $77b5: $87
	ldh a, [$5b]                                     ; $77b6: $f0 $5b
	ldh a, [$5e]                                     ; $77b8: $f0 $5e
	and c                                            ; $77ba: $a1
	ld b, h                                          ; $77bb: $44
	inc [hl]                                         ; $77bc: $34
	add a                                            ; $77bd: $87
	ldh a, [$5b]                                     ; $77be: $f0 $5b
	ldh a, [$5e]                                     ; $77c0: $f0 $5e
	xor l                                            ; $77c2: $ad
	ret                                              ; $77c3: $c9


	xor h                                            ; $77c4: $ac
	ld [hl], c                                       ; $77c5: $71
	ld d, d                                          ; $77c6: $52
	jr c, jr_097_781c                                ; $77c7: $38 $53

	ld a, $3d                                        ; $77c9: $3e $3d
	ld b, h                                          ; $77cb: $44
	ld e, l                                          ; $77cc: $5d
	ld b, h                                          ; $77cd: $44
	inc a                                            ; $77ce: $3c
	ld d, b                                          ; $77cf: $50
	and b                                            ; $77d0: $a0
	cpl                                              ; $77d1: $2f
	ld b, e                                          ; $77d2: $43
	db $ec                                           ; $77d3: $ec
	push bc                                          ; $77d4: $c5
	xor h                                            ; $77d5: $ac
	db $ec                                           ; $77d6: $ec
	add $ec                                          ; $77d7: $c6 $ec
	rrca                                             ; $77d9: $0f
	and b                                            ; $77da: $a0
	or [hl]                                          ; $77db: $b6
	xor h                                            ; $77dc: $ac
	db $ec                                           ; $77dd: $ec
	push bc                                          ; $77de: $c5
	inc [hl]                                         ; $77df: $34
	or b                                             ; $77e0: $b0
	and b                                            ; $77e1: $a0
	cpl                                              ; $77e2: $2f
	ld b, e                                          ; $77e3: $43
	ld [$accc], a                                    ; $77e4: $ea $cc $ac
	jp hl                                            ; $77e7: $e9


	ld [hl], $13                                     ; $77e8: $36 $13
	jp hl                                            ; $77ea: $e9


	xor d                                            ; $77eb: $aa
	and c                                            ; $77ec: $a1
	xor $2d                                          ; $77ed: $ee $2d
	inc [hl]                                         ; $77ef: $34
	jr c, jr_097_782a                                ; $77f0: $38 $38

	ld c, d                                          ; $77f2: $4a
	ld d, c                                          ; $77f3: $51
	ld b, l                                          ; $77f4: $45
	xor b                                            ; $77f5: $a8
	ld e, e                                          ; $77f6: $5b
	ld d, [hl]                                       ; $77f7: $56
	ld b, [hl]                                       ; $77f8: $46
	inc [hl]                                         ; $77f9: $34
	jp hl                                            ; $77fa: $e9


	ret                                              ; $77fb: $c9


	inc de                                           ; $77fc: $13
	db $eb                                           ; $77fd: $eb
	ld a, [hl]                                       ; $77fe: $7e
	ld d, d                                          ; $77ff: $52
	ld a, $66                                        ; $7800: $3e $66
	add hl, sp                                       ; $7802: $39
	and b                                            ; $7803: $a0
	jp hl                                            ; $7804: $e9


	and h                                            ; $7805: $a4
	xor b                                            ; $7806: $a8
	ldh a, [$c7]                                     ; $7807: $f0 $c7
	ld d, l                                          ; $7809: $55
	ld a, [hl-]                                      ; $780a: $3a
	dec sp                                           ; $780b: $3b
	ccf                                              ; $780c: $3f
	ld a, $52                                        ; $780d: $3e $52
	dec sp                                           ; $780f: $3b
	ccf                                              ; $7810: $3f
	and b                                            ; $7811: $a0
	cpl                                              ; $7812: $2f
	ld b, e                                          ; $7813: $43
	jr c, @+$3a                                      ; $7814: $38 $38

	ld b, l                                          ; $7816: $45
	xor b                                            ; $7817: $a8
	halt                                             ; $7818: $76
	ld c, a                                          ; $7819: $4f
	ld l, d                                          ; $781a: $6a
	ld a, b                                          ; $781b: $78

jr_097_781c:
	dec a                                            ; $781c: $3d
	ld a, e                                          ; $781d: $7b
	inc a                                            ; $781e: $3c
	ld d, a                                          ; $781f: $57
	ld b, h                                          ; $7820: $44
	inc a                                            ; $7821: $3c
	ld d, b                                          ; $7822: $50
	and b                                            ; $7823: $a0
	db $ec                                           ; $7824: $ec
	cp c                                             ; $7825: $b9
	xor l                                            ; $7826: $ad
	jp z, $ea34                                      ; $7827: $ca $34 $ea

jr_097_782a:
	xor c                                            ; $782a: $a9
	inc a                                            ; $782b: $3c
	and b                                            ; $782c: $a0
	xor $2d                                          ; $782d: $ee $2d
	inc [hl]                                         ; $782f: $34
	jr c, @+$3a                                      ; $7830: $38 $38

	ld c, d                                          ; $7832: $4a
	ld d, c                                          ; $7833: $51
	ld b, l                                          ; $7834: $45
	xor b                                            ; $7835: $a8
	inc hl                                           ; $7836: $23
	ld b, [hl]                                       ; $7837: $46
	dec sp                                           ; $7838: $3b
	scf                                              ; $7839: $37
	inc h                                            ; $783a: $24
	ld b, [hl]                                       ; $783b: $46
	ld c, l                                          ; $783c: $4d
	ld c, e                                          ; $783d: $4b
	ld l, e                                          ; $783e: $6b
	and c                                            ; $783f: $a1
	cpl                                              ; $7840: $2f
	ld b, e                                          ; $7841: $43
	db $eb                                           ; $7842: $eb
	ld a, [hl-]                                      ; $7843: $3a
	add hl, bc                                       ; $7844: $09
	cpl                                              ; $7845: $2f
	ld [$093a], a                                    ; $7846: $ea $3a $09
	cpl                                              ; $7849: $2f
	add sp, $53                                      ; $784a: $e8 $53
	add hl, bc                                       ; $784c: $09
	xor $2d                                          ; $784d: $ee $2d
	inc [hl]                                         ; $784f: $34
	ld l, a                                          ; $7850: $6f
	ld b, d                                          ; $7851: $42
	adc e                                            ; $7852: $8b

jr_097_7853:
	ld e, h                                          ; $7853: $5c
	ld a, [hl-]                                      ; $7854: $3a
	inc de                                           ; $7855: $13
	add d                                            ; $7856: $82
	pop af                                           ; $7857: $f1
	adc h                                            ; $7858: $8c
	ld b, d                                          ; $7859: $42
	ld l, l                                          ; $785a: $6d
	add b                                            ; $785b: $80
	ld c, d                                          ; $785c: $4a
	ld d, c                                          ; $785d: $51
	and b                                            ; $785e: $a0
	cpl                                              ; $785f: $2f
	ld b, e                                          ; $7860: $43
	db $eb                                           ; $7861: $eb
	dec sp                                           ; $7862: $3b
	add hl, bc                                       ; $7863: $09
	db $ed                                           ; $7864: $ed
	ld c, c                                          ; $7865: $49
	xor l                                            ; $7866: $ad
	ldh a, [rBGP]                                    ; $7867: $f0 $47
	ldh a, [$2a]                                     ; $7869: $f0 $2a
	ld d, e                                          ; $786b: $53
	pop af                                           ; $786c: $f1
	jr nc, jr_097_78c1                               ; $786d: $30 $52

	dec sp                                           ; $786f: $3b
	ccf                                              ; $7870: $3f
	ld a, $52                                        ; $7871: $3e $52
	ld e, [hl]                                       ; $7873: $5e
	ld a, e                                          ; $7874: $7b
	inc de                                           ; $7875: $13
	jr c, jr_097_78b0                                ; $7876: $38 $38

	ld b, d                                          ; $7878: $42
	ld b, a                                          ; $7879: $47
	ld c, b                                          ; $787a: $48
	and b                                            ; $787b: $a0
	cpl                                              ; $787c: $2f
	ld b, e                                          ; $787d: $43
	ld [$099e], a                                    ; $787e: $ea $9e $09
	cpl                                              ; $7881: $2f
	ld b, e                                          ; $7882: $43
	ld [$a845], a                                    ; $7883: $ea $45 $a8
	db $ec                                           ; $7886: $ec
	rst SubAFromDE                                          ; $7887: $df
	ld c, e                                          ; $7888: $4b
	inc [hl]                                         ; $7889: $34
	ld [$a046], a                                    ; $788a: $ea $46 $a0
	db $eb                                           ; $788d: $eb
	ld l, b                                          ; $788e: $68
	inc a                                            ; $788f: $3c
	and c                                            ; $7890: $a1
	cpl                                              ; $7891: $2f
	ld b, e                                          ; $7892: $43
	ld b, [hl]                                       ; $7893: $46
	ld b, [hl]                                       ; $7894: $46
	xor h                                            ; $7895: $ac
	ld [$44e5], a                                    ; $7896: $ea $e5 $44
	ld b, l                                          ; $7899: $45
	and b                                            ; $789a: $a0
	db $ec                                           ; $789b: $ec
	cp c                                             ; $789c: $b9
	xor l                                            ; $789d: $ad
	ldh a, [$bf]                                     ; $789e: $f0 $bf
	db $f4                                           ; $78a0: $f4
	dec de                                           ; $78a1: $1b
	ld a, [hl-]                                      ; $78a2: $3a
	ld e, b                                          ; $78a3: $58
	jr c, jr_097_7853                                ; $78a4: $38 $ad

	ld l, a                                          ; $78a6: $6f
	inc [hl]                                         ; $78a7: $34
	ld l, e                                          ; $78a8: $6b
	ld c, a                                          ; $78a9: $4f
	sub h                                            ; $78aa: $94
	ld a, b                                          ; $78ab: $78
	ld a, [hl-]                                      ; $78ac: $3a
	ld d, l                                          ; $78ad: $55
	ccf                                              ; $78ae: $3f
	ld c, b                                          ; $78af: $48

jr_097_78b0:
	and b                                            ; $78b0: $a0
	cpl                                              ; $78b1: $2f
	ld b, e                                          ; $78b2: $43
	ldh a, [$34]                                     ; $78b3: $f0 $34
	ld b, a                                          ; $78b5: $47
	ldh a, [c]                                       ; $78b6: $f2
	inc c                                            ; $78b7: $0c
	ld c, [hl]                                       ; $78b8: $4e
	ld d, h                                          ; $78b9: $54
	ld c, c                                          ; $78ba: $49
	ld a, [hl-]                                      ; $78bb: $3a
	jr c, @+$47                                      ; $78bc: $38 $45

	xor b                                            ; $78be: $a8
	ld b, b                                          ; $78bf: $40
	ld c, l                                          ; $78c0: $4d

jr_097_78c1:
	ld b, l                                          ; $78c1: $45
	ld d, a                                          ; $78c2: $57
	inc [hl]                                         ; $78c3: $34
	db $ec                                           ; $78c4: $ec
	rst SubAFromDE                                          ; $78c5: $df
	ld c, e                                          ; $78c6: $4b
	inc de                                           ; $78c7: $13
	pop af                                           ; $78c8: $f1
	ld hl, sp-$0f                                    ; $78c9: $f8 $f1
	ld d, b                                          ; $78cb: $50
	ld d, e                                          ; $78cc: $53
	ld a, [hl-]                                      ; $78cd: $3a
	inc a                                            ; $78ce: $3c
	dec sp                                           ; $78cf: $3b
	dec a                                            ; $78d0: $3d
	and c                                            ; $78d1: $a1
	ld l, a                                          ; $78d2: $6f
	ld c, e                                          ; $78d3: $4b
	inc [hl]                                         ; $78d4: $34
	pop af                                           ; $78d5: $f1
	ld l, c                                          ; $78d6: $69
	ld a, a                                          ; $78d7: $7f
	ld c, d                                          ; $78d8: $4a
	ld d, c                                          ; $78d9: $51
	and b                                            ; $78da: $a0
	cpl                                              ; $78db: $2f
	ld b, e                                          ; $78dc: $43
	ld b, b                                          ; $78dd: $40
	ld c, l                                          ; $78de: $4d
	ld a, [hl-]                                      ; $78df: $3a
	ld d, b                                          ; $78e0: $50
	inc [hl]                                         ; $78e1: $34
	db $ec                                           ; $78e2: $ec
	cp c                                             ; $78e3: $b9
	xor b                                            ; $78e4: $a8
	jp hl                                            ; $78e5: $e9


	ret z                                            ; $78e6: $c8

	db $ec                                           ; $78e7: $ec
	rrca                                             ; $78e8: $0f
	and b                                            ; $78e9: $a0
	ld c, e                                          ; $78ea: $4b
	ld [hl], h                                       ; $78eb: $74
	inc [hl]                                         ; $78ec: $34
	ld c, e                                          ; $78ed: $4b
	ld [hl], h                                       ; $78ee: $74
	inc [hl]                                         ; $78ef: $34
	ld c, e                                          ; $78f0: $4b
	ld [hl], h                                       ; $78f1: $74
	ld c, b                                          ; $78f2: $48
	and b                                            ; $78f3: $a0
	cpl                                              ; $78f4: $2f
	ld b, e                                          ; $78f5: $43
	ld e, d                                          ; $78f6: $5a
	inc [hl]                                         ; $78f7: $34
	db $eb                                           ; $78f8: $eb
	rst FarCall                                          ; $78f9: $f7
	xor h                                            ; $78fa: $ac
	db $ec                                           ; $78fb: $ec
	rst SubAFromDE                                          ; $78fc: $df
	and d                                            ; $78fd: $a2
	ld b, [hl]                                       ; $78fe: $46
	inc [hl]                                         ; $78ff: $34
	pop af                                           ; $7900: $f1
	cp c                                             ; $7901: $b9
	ldh a, [rVBK]                                    ; $7902: $f0 $4f
	ld a, $3d                                        ; $7904: $3e $3d
	ld d, b                                          ; $7906: $50
	xor h                                            ; $7907: $ac
	ldh a, [$7f]                                     ; $7908: $f0 $7f
	ld d, e                                          ; $790a: $53
	pop af                                           ; $790b: $f1
	or h                                             ; $790c: $b4
	ld e, l                                          ; $790d: $5d
	ld h, c                                          ; $790e: $61
	ld d, [hl]                                       ; $790f: $56
	dec sp                                           ; $7910: $3b
	ccf                                              ; $7911: $3f
	xor l                                            ; $7912: $ad
	ld c, d                                          ; $7913: $4a
	ld c, a                                          ; $7914: $4f
	inc [hl]                                         ; $7915: $34
	db $ec                                           ; $7916: $ec
	cp c                                             ; $7917: $b9
	and b                                            ; $7918: $a0
	add hl, bc                                       ; $7919: $09
	ld d, $a8                                        ; $791a: $16 $a8
	ld l, a                                          ; $791c: $6f
	ld b, a                                          ; $791d: $47
	di                                               ; $791e: $f3
	db $fc                                           ; $791f: $fc
	di                                               ; $7920: $f3
	db $fd                                           ; $7921: $fd
	ld c, e                                          ; $7922: $4b
	and c                                            ; $7923: $a1
	cpl                                              ; $7924: $2f
	ld b, e                                          ; $7925: $43
	ld e, [hl]                                       ; $7926: $5e
	dec sp                                           ; $7927: $3b
	inc [hl]                                         ; $7928: $34
	ld b, [hl]                                       ; $7929: $46
	ld b, [hl]                                       ; $792a: $46
	xor b                                            ; $792b: $a8
	db $ec                                           ; $792c: $ec
	ldh [$34], a                                     ; $792d: $e0 $34
	ld h, h                                          ; $792f: $64
	ld c, e                                          ; $7930: $4b
	ld b, l                                          ; $7931: $45
	add hl, sp                                       ; $7932: $39
	and b                                            ; $7933: $a0
	ld b, [hl]                                       ; $7934: $46
	ld a, [hl-]                                      ; $7935: $3a
	dec a                                            ; $7936: $3d
	xor l                                            ; $7937: $ad
	ld c, a                                          ; $7938: $4f
	ld a, $3c                                        ; $7939: $3e $3c
	ld a, $3f                                        ; $793b: $3e $3f
	xor $08                                          ; $793d: $ee $08
	and c                                            ; $793f: $a1
	cpl                                              ; $7940: $2f
	ld b, e                                          ; $7941: $43
	ld b, [hl]                                       ; $7942: $46
	ld b, [hl]                                       ; $7943: $46
	inc [hl]                                         ; $7944: $34
	ld b, b                                          ; $7945: $40
	add hl, sp                                       ; $7946: $39
	ld b, h                                          ; $7947: $44
	ld b, l                                          ; $7948: $45
	and b                                            ; $7949: $a0
	xor $16                                          ; $794a: $ee $16
	ld b, l                                          ; $794c: $45
	inc [hl]                                         ; $794d: $34
	xor $16                                          ; $794e: $ee $16
	ld b, h                                          ; $7950: $44
	ld h, e                                          ; $7951: $63
	xor b                                            ; $7952: $a8
	ld l, a                                          ; $7953: $6f
	ld d, e                                          ; $7954: $53
	inc [hl]                                         ; $7955: $34
	xor $06                                          ; $7956: $ee $06
	ld b, a                                          ; $7958: $47
	inc de                                           ; $7959: $13
	ld h, a                                          ; $795a: $67
	dec sp                                           ; $795b: $3b
	ccf                                              ; $795c: $3f
	rst SubAFromDE                                          ; $795d: $df
	ld h, e                                          ; $795e: $63
	and b                                            ; $795f: $a0
	cpl                                              ; $7960: $2f
	ld b, [hl]                                       ; $7961: $46
	ld b, [hl]                                       ; $7962: $46
	inc [hl]                                         ; $7963: $34
	pop af                                           ; $7964: $f1
	jp hl                                            ; $7965: $e9


	inc a                                            ; $7966: $3c
	ld c, [hl]                                       ; $7967: $4e
	ld b, l                                          ; $7968: $45
	add hl, bc                                       ; $7969: $09
	sub c                                            ; $796a: $91
	ldh a, [$59]                                     ; $796b: $f0 $59
	ld b, l                                          ; $796d: $45
	xor b                                            ; $796e: $a8
	or h                                             ; $796f: $b4
	xor h                                            ; $7970: $ac
	ld e, b                                          ; $7971: $58
	dec sp                                           ; $7972: $3b
	ld e, b                                          ; $7973: $58
	ld c, c                                          ; $7974: $49
	inc [hl]                                         ; $7975: $34
	ld h, a                                          ; $7976: $67
	ld d, l                                          ; $7977: $55
	ld h, e                                          ; $7978: $63
	ld b, l                                          ; $7979: $45
	and b                                            ; $797a: $a0
	cpl                                              ; $797b: $2f
	jr c, jr_097_79b6                                ; $797c: $38 $38

	ld b, l                                          ; $797e: $45
	inc [hl]                                         ; $797f: $34
	ld a, b                                          ; $7980: $78
	ld a, [hl-]                                      ; $7981: $3a
	ld d, l                                          ; $7982: $55
	ccf                                              ; $7983: $3f
	ld c, a                                          ; $7984: $4f
	add hl, bc                                       ; $7985: $09
	ldh a, [c]                                       ; $7986: $f2
	ld a, d                                          ; $7987: $7a
	pop af                                           ; $7988: $f1
	ld a, b                                          ; $7989: $78
	ld h, e                                          ; $798a: $63
	xor l                                            ; $798b: $ad
	ld b, [hl]                                       ; $798c: $46
	ld a, [hl-]                                      ; $798d: $3a
	dec a                                            ; $798e: $3d
	inc [hl]                                         ; $798f: $34
	pop af                                           ; $7990: $f1
	ld a, [de]                                       ; $7991: $1a
	pop af                                           ; $7992: $f1
	inc c                                            ; $7993: $0c
	ld b, a                                          ; $7994: $47
	ldh a, [c]                                       ; $7995: $f2
	ld a, d                                          ; $7996: $7a
	pop af                                           ; $7997: $f1
	ld a, b                                          ; $7998: $78
	ld h, e                                          ; $7999: $63
	ld b, l                                          ; $799a: $45
	xor b                                            ; $799b: $a8
	ld e, b                                          ; $799c: $58
	ld b, l                                          ; $799d: $45
	ld a, [hl-]                                      ; $799e: $3a
	ld d, b                                          ; $799f: $50
	and b                                            ; $79a0: $a0
	cpl                                              ; $79a1: $2f
	ld b, e                                          ; $79a2: $43
	xor $10                                          ; $79a3: $ee $10
	ld h, b                                          ; $79a5: $60
	and b                                            ; $79a6: $a0
	cpl                                              ; $79a7: $2f
	ld b, e                                          ; $79a8: $43
	ld b, [hl]                                       ; $79a9: $46
	dec sp                                           ; $79aa: $3b
	inc [hl]                                         ; $79ab: $34
	db $ed                                           ; $79ac: $ed
	xor d                                            ; $79ad: $aa
	jr c, jr_097_79e8                                ; $79ae: $38 $38

	ld c, c                                          ; $79b0: $49
	ld d, h                                          ; $79b1: $54
	ld e, a                                          ; $79b2: $5f
	inc de                                           ; $79b3: $13
	ld b, a                                          ; $79b4: $47
	inc [hl]                                         ; $79b5: $34

jr_097_79b6:
	db $ec                                           ; $79b6: $ec
	ldh [$eb], a                                     ; $79b7: $e0 $eb
	ld h, [hl]                                       ; $79b9: $66
	and b                                            ; $79ba: $a0
	cpl                                              ; $79bb: $2f
	ld b, e                                          ; $79bc: $43
	db $ec                                           ; $79bd: $ec
	ldh [$a0], a                                     ; $79be: $e0 $a0
	ld b, [hl]                                       ; $79c0: $46
	dec sp                                           ; $79c1: $3b
	inc [hl]                                         ; $79c2: $34
	ld d, $a8                                        ; $79c3: $16 $a8
	ld l, e                                          ; $79c5: $6b
	inc a                                            ; $79c6: $3c
	ldh a, [rAUD2LEN]                                ; $79c7: $f0 $16
	and c                                            ; $79c9: $a1
	cpl                                              ; $79ca: $2f
	ld b, e                                          ; $79cb: $43
	ld c, h                                          ; $79cc: $4c
	ld e, [hl]                                       ; $79cd: $5e
	inc [hl]                                         ; $79ce: $34
	ld l, d                                          ; $79cf: $6a
	ld l, b                                          ; $79d0: $68
	ld b, d                                          ; $79d1: $42
	inc de                                           ; $79d2: $13
	db $ec                                           ; $79d3: $ec
	jp $ea34                                         ; $79d4: $c3 $34 $ea


	ld h, $a1                                        ; $79d7: $26 $a1
	ld l, d                                          ; $79d9: $6a
	inc [hl]                                         ; $79da: $34
	xor $17                                          ; $79db: $ee $17
	ld a, $ec                                        ; $79dd: $3e $ec
	add hl, de                                       ; $79df: $19
	ld e, l                                          ; $79e0: $5d
	inc de                                           ; $79e1: $13
	ld e, d                                          ; $79e2: $5a
	inc [hl]                                         ; $79e3: $34
	db $f4                                           ; $79e4: $f4
	or $f1                                           ; $79e5: $f6 $f1
	sub l                                            ; $79e7: $95

jr_097_79e8:
	ld d, e                                          ; $79e8: $53
	pop af                                           ; $79e9: $f1
	cp [hl]                                          ; $79ea: $be
	ld d, a                                          ; $79eb: $57
	ld a, [hl-]                                      ; $79ec: $3a
	inc a                                            ; $79ed: $3c
	dec sp                                           ; $79ee: $3b
	dec a                                            ; $79ef: $3d
	ld b, d                                          ; $79f0: $42
	ld b, l                                          ; $79f1: $45
	and b                                            ; $79f2: $a0
	cpl                                              ; $79f3: $2f
	ld b, e                                          ; $79f4: $43
	ld c, e                                          ; $79f5: $4b
	ld [hl], h                                       ; $79f6: $74
	inc [hl]                                         ; $79f7: $34
	xor $17                                          ; $79f8: $ee $17
	and c                                            ; $79fa: $a1
	db $f4                                           ; $79fb: $f4
	or $f1                                           ; $79fc: $f6 $f1
	sub l                                            ; $79fe: $95
	ldh a, [rAUDTERM]                                ; $79ff: $f0 $25
	ld [hl], c                                       ; $7a01: $71
	ld b, d                                          ; $7a02: $42
	add b                                            ; $7a03: $80
	jr c, @+$4c                                      ; $7a04: $38 $4a

	ld b, a                                          ; $7a06: $47
	xor h                                            ; $7a07: $ac
	xor $06                                          ; $7a08: $ee $06
	ld b, a                                          ; $7a0a: $47
	ld h, a                                          ; $7a0b: $67
	dec sp                                           ; $7a0c: $3b
	ccf                                              ; $7a0d: $3f
	rst SubAFromDE                                          ; $7a0e: $df
	ld h, e                                          ; $7a0f: $63
	and b                                            ; $7a10: $a0
	cpl                                              ; $7a11: $2f
	ld b, e                                          ; $7a12: $43
	db $f4                                           ; $7a13: $f4
	or $f1                                           ; $7a14: $f6 $f1
	sub l                                            ; $7a16: $95
	dec sp                                           ; $7a17: $3b
	ccf                                              ; $7a18: $3f
	inc [hl]                                         ; $7a19: $34
	ld l, l                                          ; $7a1a: $6d
	ldh a, [$65]                                     ; $7a1b: $f0 $65
	ld c, b                                          ; $7a1d: $48
	and b                                            ; $7a1e: $a0
	add b                                            ; $7a1f: $80
	ldh a, [$8c]                                     ; $7a20: $f0 $8c
	ld d, h                                          ; $7a22: $54
	ldh a, [$8c]                                     ; $7a23: $f0 $8c
	add d                                            ; $7a25: $82
	ld h, e                                          ; $7a26: $63
	sbc h                                            ; $7a27: $9c
	xor h                                            ; $7a28: $ac
	ld e, b                                          ; $7a29: $58
	dec sp                                           ; $7a2a: $3b
	ld e, b                                          ; $7a2b: $58
	ld c, c                                          ; $7a2c: $49
	ld h, a                                          ; $7a2d: $67
	ld d, l                                          ; $7a2e: $55
	ld h, e                                          ; $7a2f: $63
	ld b, l                                          ; $7a30: $45
	and b                                            ; $7a31: $a0
	xor $14                                          ; $7a32: $ee $14
	inc [hl]                                         ; $7a34: $34
	ld d, $a0                                        ; $7a35: $16 $a0
	ld l, d                                          ; $7a37: $6a
	inc [hl]                                         ; $7a38: $34
	xor $17                                          ; $7a39: $ee $17
	ldh a, [rAUD2HIGH]                               ; $7a3b: $f0 $19
	inc de                                           ; $7a3d: $13
	ld a, [hl-]                                      ; $7a3e: $3a
	ld b, c                                          ; $7a3f: $41
	ld b, h                                          ; $7a40: $44
	ld e, l                                          ; $7a41: $5d
	ld e, d                                          ; $7a42: $5a
	ld c, b                                          ; $7a43: $48
	and b                                            ; $7a44: $a0
	cpl                                              ; $7a45: $2f
	ld [hl-], a                                      ; $7a46: $32
	xor $17                                          ; $7a47: $ee $17
	dec sp                                           ; $7a49: $3b
	ccf                                              ; $7a4a: $3f
	ld c, b                                          ; $7a4b: $48
	xor h                                            ; $7a4c: $ac
	db $ec                                           ; $7a4d: $ec
	call nz, Call_097_5247                           ; $7a4e: $c4 $47 $52
	ld c, d                                          ; $7a51: $4a
	ld a, b                                          ; $7a52: $78
	ccf                                              ; $7a53: $3f
	xor h                                            ; $7a54: $ac
	ld l, e                                          ; $7a55: $6b
	ld h, d                                          ; $7a56: $62
	ld l, [hl]                                       ; $7a57: $6e
	dec sp                                           ; $7a58: $3b
	ccf                                              ; $7a59: $3f
	ld b, c                                          ; $7a5a: $41
	ld b, h                                          ; $7a5b: $44
	ld e, a                                          ; $7a5c: $5f
	add hl, sp                                       ; $7a5d: $39
	ld [hl], $33                                     ; $7a5e: $36 $33
	add hl, bc                                       ; $7a60: $09
	ld b, [hl]                                       ; $7a61: $46
	ld a, [hl-]                                      ; $7a62: $3a
	dec a                                            ; $7a63: $3d
	ld d, e                                          ; $7a64: $53
	db $eb                                           ; $7a65: $eb
	db $f4                                           ; $7a66: $f4
	xor h                                            ; $7a67: $ac
	ld c, c                                          ; $7a68: $49
	add d                                            ; $7a69: $82
	add hl, sp                                       ; $7a6a: $39
	ld b, d                                          ; $7a6b: $42

jr_097_7a6c:
	ld a, [hl-]                                      ; $7a6c: $3a
	ld d, b                                          ; $7a6d: $50
	inc de                                           ; $7a6e: $13
	ld h, a                                          ; $7a6f: $67
	dec sp                                           ; $7a70: $3b
	ccf                                              ; $7a71: $3f
	ld b, [hl]                                       ; $7a72: $46
	ldh a, [rSB]                                     ; $7a73: $f0 $01
	ccf                                              ; $7a75: $3f
	ld c, a                                          ; $7a76: $4f
	jr c, @+$3a                                      ; $7a77: $38 $38

	ld h, e                                          ; $7a79: $63
	and b                                            ; $7a7a: $a0
	cpl                                              ; $7a7b: $2f
	ld b, e                                          ; $7a7c: $43
	ld e, e                                          ; $7a7d: $5b
	ld d, [hl]                                       ; $7a7e: $56
	ld b, [hl]                                       ; $7a7f: $46
	xor h                                            ; $7a80: $ac
	xor $06                                          ; $7a81: $ee $06
	ld b, a                                          ; $7a83: $47
	call Call_097_67a0                               ; $7a84: $cd $a0 $67
	dec sp                                           ; $7a87: $3b
	ccf                                              ; $7a88: $3f
	db $ec                                           ; $7a89: $ec
	rst FarCall                                          ; $7a8a: $f7
	ld c, d                                          ; $7a8b: $4a
	ld a, $66                                        ; $7a8c: $3e $66
	and b                                            ; $7a8e: $a0
	cpl                                              ; $7a8f: $2f
	ld b, e                                          ; $7a90: $43
	xor $2d                                          ; $7a91: $ee $2d
	xor $2d                                          ; $7a93: $ee $2d
	xor h                                            ; $7a95: $ac
	xor $06                                          ; $7a96: $ee $06
	ld b, a                                          ; $7a98: $47
	ld h, a                                          ; $7a99: $67
	dec sp                                           ; $7a9a: $3b
	ccf                                              ; $7a9b: $3f
	db $ec                                           ; $7a9c: $ec
	rst FarCall                                          ; $7a9d: $f7
	and b                                            ; $7a9e: $a0
	db $ec                                           ; $7a9f: $ec
	ld e, $a8                                        ; $7aa0: $1e $a8
	xor $17                                          ; $7aa2: $ee $17
	ld h, d                                          ; $7aa4: $62
	inc a                                            ; $7aa5: $3c
	dec a                                            ; $7aa6: $3d
	ldh a, [c]                                       ; $7aa7: $f2
	ld h, a                                          ; $7aa8: $67
	ld e, l                                          ; $7aa9: $5d
	ccf                                              ; $7aaa: $3f
	ld a, b                                          ; $7aab: $78
	ld c, [hl]                                       ; $7aac: $4e
	inc a                                            ; $7aad: $3c
	ld d, b                                          ; $7aae: $50
	xor h                                            ; $7aaf: $ac
	ldh a, [$e2]                                     ; $7ab0: $f0 $e2
	pop af                                           ; $7ab2: $f1
	inc l                                            ; $7ab3: $2c
	pop af                                           ; $7ab4: $f1
	sbc [hl]                                         ; $7ab5: $9e
	ldh a, [rTAC]                                    ; $7ab6: $f0 $07
	ldh a, [$e5]                                     ; $7ab8: $f0 $e5
	ldh a, [$58]                                     ; $7aba: $f0 $58
	db $f4                                           ; $7abc: $f4
	sbc b                                            ; $7abd: $98
	pop af                                           ; $7abe: $f1
	sbc [hl]                                         ; $7abf: $9e
	pop af                                           ; $7ac0: $f1
	pop de                                           ; $7ac1: $d1
	inc de                                           ; $7ac2: $13
	sbc c                                            ; $7ac3: $99
	dec sp                                           ; $7ac4: $3b
	ccf                                              ; $7ac5: $3f
	ld h, c                                          ; $7ac6: $61
	ld h, [hl]                                       ; $7ac7: $66
	add hl, sp                                       ; $7ac8: $39
	ld b, h                                          ; $7ac9: $44
	jr c, jr_097_7a6c                                ; $7aca: $38 $a0

	cpl                                              ; $7acc: $2f
	ld b, e                                          ; $7acd: $43
	ldh a, [$e5]                                     ; $7ace: $f0 $e5
	ldh a, [$58]                                     ; $7ad0: $f0 $58
	db $f4                                           ; $7ad2: $f4
	sbc b                                            ; $7ad3: $98
	pop af                                           ; $7ad4: $f1
	sbc [hl]                                         ; $7ad5: $9e
	pop af                                           ; $7ad6: $f1
	pop de                                           ; $7ad7: $d1
	dec sp                                           ; $7ad8: $3b
	ccf                                              ; $7ad9: $3f
	xor h                                            ; $7ada: $ac
	ld b, b                                          ; $7adb: $40
	ld b, c                                          ; $7adc: $41
	ld a, [hl-]                                      ; $7add: $3a
	ld a, [$3c36]                                    ; $7ade: $fa $36 $3c
	jr c, @+$4b                                      ; $7ae1: $38 $49

	ld d, h                                          ; $7ae3: $54
	ld d, d                                          ; $7ae4: $52
	ld c, d                                          ; $7ae5: $4a
	ld c, b                                          ; $7ae6: $48
	and b                                            ; $7ae7: $a0
	ld [$a0a0], a                                    ; $7ae8: $ea $a0 $a0
	xor $14                                          ; $7aeb: $ee $14
	inc [hl]                                         ; $7aed: $34
	ld d, $a8                                        ; $7aee: $16 $a8
	ld l, a                                          ; $7af0: $6f
	ld b, a                                          ; $7af1: $47
	inc [hl]                                         ; $7af2: $34
	ld l, e                                          ; $7af3: $6b
	ld b, d                                          ; $7af4: $42
	ldh a, [rAUD2LEN]                                ; $7af5: $f0 $16
	and c                                            ; $7af7: $a1
	call c, Call_097_6f34                            ; $7af8: $dc $34 $6f
	ld b, d                                          ; $7afb: $42
	ldh a, [$2c]                                     ; $7afc: $f0 $2c
	ld b, a                                          ; $7afe: $47
	ld a, [hl-]                                      ; $7aff: $3a
	ld c, [hl]                                       ; $7b00: $4e
	xor h                                            ; $7b01: $ac
	ldh a, [rSCX]                                    ; $7b02: $f0 $43
	pop af                                           ; $7b04: $f1
	jr nz, @-$08                                     ; $7b05: $20 $f6

	ld [bc], a                                       ; $7b07: $02
	ldh a, [c]                                       ; $7b08: $f2
	or $49                                           ; $7b09: $f6 $49
	ld l, [hl]                                       ; $7b0b: $6e
	ld d, b                                          ; $7b0c: $50
	ld h, d                                          ; $7b0d: $62
	ld [hl], d                                       ; $7b0e: $72
	ld b, a                                          ; $7b0f: $47
	inc de                                           ; $7b10: $13
	ld h, a                                          ; $7b11: $67
	ld d, l                                          ; $7b12: $55
	ld b, d                                          ; $7b13: $42
	ld c, a                                          ; $7b14: $4f
	inc [hl]                                         ; $7b15: $34
	ldh a, [$5c]                                     ; $7b16: $f0 $5c
	ld d, l                                          ; $7b18: $55
	db $ec                                           ; $7b19: $ec
	dec bc                                           ; $7b1a: $0b
	and b                                            ; $7b1b: $a0
	cpl                                              ; $7b1c: $2f
	ld b, e                                          ; $7b1d: $43
	xor $10                                          ; $7b1e: $ee $10
	ld h, b                                          ; $7b20: $60
	xor b                                            ; $7b21: $a8
	ld e, e                                          ; $7b22: $5b
	ld d, [hl]                                       ; $7b23: $56
	ld b, [hl]                                       ; $7b24: $46
	inc [hl]                                         ; $7b25: $34
	db $ec                                           ; $7b26: $ec
	rlca                                             ; $7b27: $07
	ld c, b                                          ; $7b28: $48
	and b                                            ; $7b29: $a0
	ld hl, $10ee                                     ; $7b2a: $21 $ee $10
	and b                                            ; $7b2d: $a0
	cpl                                              ; $7b2e: $2f
	ld b, e                                          ; $7b2f: $43
	db $ed                                           ; $7b30: $ed
	ld c, [hl]                                       ; $7b31: $4e
	inc [hl]                                         ; $7b32: $34
	db $ec                                           ; $7b33: $ec
	ldh [$a0], a                                     ; $7b34: $e0 $a0
	ld [$acce], a                                    ; $7b36: $ea $ce $ac
	ld b, [hl]                                       ; $7b39: $46
	dec sp                                           ; $7b3a: $3b
	ld h, c                                          ; $7b3b: $61
	ld h, a                                          ; $7b3c: $67
	dec sp                                           ; $7b3d: $3b
	ccf                                              ; $7b3e: $3f
	ccf                                              ; $7b3f: $3f
	ld b, l                                          ; $7b40: $45
	and b                                            ; $7b41: $a0
	cpl                                              ; $7b42: $2f
	ld b, e                                          ; $7b43: $43
	db $ed                                           ; $7b44: $ed
	ld c, [hl]                                       ; $7b45: $4e
	inc [hl]                                         ; $7b46: $34
	db $ed                                           ; $7b47: $ed
	or d                                             ; $7b48: $b2
	ld e, b                                          ; $7b49: $58
	xor l                                            ; $7b4a: $ad
	ret                                              ; $7b4b: $c9


	sbc c                                            ; $7b4c: $99
	dec sp                                           ; $7b4d: $3b
	ccf                                              ; $7b4e: $3f
	xor l                                            ; $7b4f: $ad
	ld b, [hl]                                       ; $7b50: $46
	ld [hl], h                                       ; $7b51: $74
	inc [hl]                                         ; $7b52: $34
	ld [$a036], a                                    ; $7b53: $ea $36 $a0
	cpl                                              ; $7b56: $2f
	ld [$ac33], a                                    ; $7b57: $ea $33 $ac
	ld [$a3b0], a                                    ; $7b5a: $ea $b0 $a3
	call c, Call_097_4aa8                            ; $7b5d: $dc $a8 $4a
	ld c, a                                          ; $7b60: $4f
	inc [hl]                                         ; $7b61: $34
	ld c, a                                          ; $7b62: $4f
	dec sp                                           ; $7b63: $3b
	ld c, c                                          ; $7b64: $49
	ldh a, [c]                                       ; $7b65: $f2
	cp l                                             ; $7b66: $bd
	jr c, @-$0e                                      ; $7b67: $38 $f0

jr_097_7b69:
	or $f1                                           ; $7b69: $f6 $f1
	inc [hl]                                         ; $7b6b: $34
	ld d, e                                          ; $7b6c: $53
	inc de                                           ; $7b6d: $13
	ldh a, [rOBP1]                                   ; $7b6e: $f0 $49
	ccf                                              ; $7b70: $3f
	ld l, a                                          ; $7b71: $6f
	ld b, d                                          ; $7b72: $42
	ldh a, [$2c]                                     ; $7b73: $f0 $2c
	ld b, a                                          ; $7b75: $47
	ld a, [hl-]                                      ; $7b76: $3a
	ld c, [hl]                                       ; $7b77: $4e
	ld b, d                                          ; $7b78: $42
	ld b, l                                          ; $7b79: $45
	and b                                            ; $7b7a: $a0
	cpl                                              ; $7b7b: $2f
	ld b, e                                          ; $7b7c: $43
	xor $10                                          ; $7b7d: $ee $10
	xor $10                                          ; $7b7f: $ee $10
	and b                                            ; $7b81: $a0
	ld b, [hl]                                       ; $7b82: $46
	ld b, [hl]                                       ; $7b83: $46
	inc [hl]                                         ; $7b84: $34
	sbc c                                            ; $7b85: $99
	ld h, c                                          ; $7b86: $61
	ld e, d                                          ; $7b87: $5a
	ld h, h                                          ; $7b88: $64
	ld a, $38                                        ; $7b89: $3e $38
	ld h, e                                          ; $7b8b: $63
	and b                                            ; $7b8c: $a0
	ld b, b                                          ; $7b8d: $40
	ld b, d                                          ; $7b8e: $42
	add hl, sp                                       ; $7b8f: $39
	ld h, c                                          ; $7b90: $61
	inc [hl]                                         ; $7b91: $34
	ld l, a                                          ; $7b92: $6f
	ld b, d                                          ; $7b93: $42
	inc de                                           ; $7b94: $13
	ldh a, [rAUD3LEVEL]                              ; $7b95: $f0 $1c
	ldh a, [$f4]                                     ; $7b97: $f0 $f4
	ld d, d                                          ; $7b99: $52
	ld a, $f0                                        ; $7b9a: $3e $f0
	ld b, a                                          ; $7b9c: $47
	ldh a, [c]                                       ; $7b9d: $f2
	ld [bc], a                                       ; $7b9e: $02
	ld b, a                                          ; $7b9f: $47
	ld a, $3f                                        ; $7ba0: $3e $3f
	rst SubAFromDE                                          ; $7ba2: $df
	ld h, e                                          ; $7ba3: $63
	and b                                            ; $7ba4: $a0
	ldh a, [rSCY]                                    ; $7ba5: $f0 $42
	ld b, c                                          ; $7ba7: $41
	inc [hl]                                         ; $7ba8: $34
	add a                                            ; $7ba9: $87
	ld a, $3d                                        ; $7baa: $3e $3d
	ld d, h                                          ; $7bac: $54
	ld c, c                                          ; $7bad: $49
	ldh a, [rAUD1LOW]                                ; $7bae: $f0 $13
	jr c, jr_097_7bc5                                ; $7bb0: $38 $13

	ld h, e                                          ; $7bb2: $63
	ld c, h                                          ; $7bb3: $4c
	dec [hl]                                         ; $7bb4: $35
	ld l, d                                          ; $7bb5: $6a
	ld b, a                                          ; $7bb6: $47
	ld [hl], d                                       ; $7bb7: $72
	ccf                                              ; $7bb8: $3f
	ld a, [hl-]                                      ; $7bb9: $3a
	ld e, b                                          ; $7bba: $58
	jr c, jr_097_7b69                                ; $7bbb: $38 $ac

	ld e, h                                          ; $7bbd: $5c
	dec sp                                           ; $7bbe: $3b
	ld c, c                                          ; $7bbf: $49
	ld l, a                                          ; $7bc0: $6f
	db $ed                                           ; $7bc1: $ed
	ld b, e                                          ; $7bc2: $43
	ld c, b                                          ; $7bc3: $48
	and b                                            ; $7bc4: $a0

jr_097_7bc5:
	cpl                                              ; $7bc5: $2f
	ld [hl-], a                                      ; $7bc6: $32
	db $eb                                           ; $7bc7: $eb
	inc e                                            ; $7bc8: $1c
	inc de                                           ; $7bc9: $13
	add d                                            ; $7bca: $82
	dec sp                                           ; $7bcb: $3b
	ccf                                              ; $7bcc: $3f
	ld c, [hl]                                       ; $7bcd: $4e
	ld b, c                                          ; $7bce: $41
	ld b, h                                          ; $7bcf: $44
	ld e, a                                          ; $7bd0: $5f
	add hl, sp                                       ; $7bd1: $39
	ld c, b                                          ; $7bd2: $48
	and e                                            ; $7bd3: $a3
	cpl                                              ; $7bd4: $2f
	ld b, e                                          ; $7bd5: $43
	db $ec                                           ; $7bd6: $ec
	push bc                                          ; $7bd7: $c5
	xor h                                            ; $7bd8: $ac
	db $ec                                           ; $7bd9: $ec
	add $ec                                          ; $7bda: $c6 $ec
	rrca                                             ; $7bdc: $0f
	and b                                            ; $7bdd: $a0
	call c, $b0ac                                    ; $7bde: $dc $ac $b0
	and b                                            ; $7be1: $a0
	cpl                                              ; $7be2: $2f
	ld b, e                                          ; $7be3: $43
	ld [$accc], a                                    ; $7be4: $ea $cc $ac
	jp hl                                            ; $7be7: $e9


	ld [hl], $13                                     ; $7be8: $36 $13
	jp hl                                            ; $7bea: $e9


	xor d                                            ; $7beb: $aa
	and c                                            ; $7bec: $a1
	db $ed                                           ; $7bed: $ed
	ld c, e                                          ; $7bee: $4b
	xor c                                            ; $7bef: $a9
	ret nc                                           ; $7bf0: $d0

	inc [hl]                                         ; $7bf1: $34
	ld h, a                                          ; $7bf2: $67
	dec sp                                           ; $7bf3: $3b
	ccf                                              ; $7bf4: $3f
	rst SubAFromDE                                          ; $7bf5: $df
	xor b                                            ; $7bf6: $a8
	ld l, e                                          ; $7bf7: $6b
	inc a                                            ; $7bf8: $3c
	ld d, e                                          ; $7bf9: $53
	ldh a, [c]                                       ; $7bfa: $f2
	rlca                                             ; $7bfb: $07
	ld d, h                                          ; $7bfc: $54
	ld d, a                                          ; $7bfd: $57
	ld b, b                                          ; $7bfe: $40
	add hl, sp                                       ; $7bff: $39
	ld b, h                                          ; $7c00: $44
	ld a, $4c                                        ; $7c01: $3e $4c
	and b                                            ; $7c03: $a0
	cpl                                              ; $7c04: $2f
	ld b, e                                          ; $7c05: $43
	ld l, e                                          ; $7c06: $6b
	inc a                                            ; $7c07: $3c
	dec sp                                           ; $7c08: $3b
	ccf                                              ; $7c09: $3f
	and c                                            ; $7c0a: $a1
	db $ed                                           ; $7c0b: $ed
	inc c                                            ; $7c0c: $0c
	xor b                                            ; $7c0d: $a8
	ld e, e                                          ; $7c0e: $5b
	ld d, [hl]                                       ; $7c0f: $56
	ld b, [hl]                                       ; $7c10: $46
	inc [hl]                                         ; $7c11: $34
	jp hl                                            ; $7c12: $e9


	ret                                              ; $7c13: $c9


	inc de                                           ; $7c14: $13

jr_097_7c15:
	sbc c                                            ; $7c15: $99
	dec sp                                           ; $7c16: $3b
	ccf                                              ; $7c17: $3f
	ld a, [hl-]                                      ; $7c18: $3a
	ld e, b                                          ; $7c19: $58
	jr c, jr_097_7c68                                ; $7c1a: $38 $4c

	and b                                            ; $7c1c: $a0
	xor $1d                                          ; $7c1d: $ee $1d
	ldh a, [rOCPS]                                   ; $7c1f: $f0 $6a
	ld d, a                                          ; $7c21: $57
	ld a, b                                          ; $7c22: $78
	dec a                                            ; $7c23: $3d
	ld h, e                                          ; $7c24: $63
	ld b, l                                          ; $7c25: $45
	xor b                                            ; $7c26: $a8
	ld e, b                                          ; $7c27: $58
	dec sp                                           ; $7c28: $3b
	ld e, b                                          ; $7c29: $58
	ld c, c                                          ; $7c2a: $49
	ld h, a                                          ; $7c2b: $67
	ld e, h                                          ; $7c2c: $5c
	ld d, d                                          ; $7c2d: $52
	ld a, $66                                        ; $7c2e: $3e $66
	and b                                            ; $7c30: $a0
	ld b, b                                          ; $7c31: $40
	ld b, c                                          ; $7c32: $41
	ld a, [hl-]                                      ; $7c33: $3a
	ld c, a                                          ; $7c34: $4f
	ld b, d                                          ; $7c35: $42
	xor h                                            ; $7c36: $ac
	ldh a, [$d7]                                     ; $7c37: $f0 $d7
	ld b, a                                          ; $7c39: $47
	ld a, $3a                                        ; $7c3a: $3e $3a
	ld e, b                                          ; $7c3c: $58
	jr c, jr_097_7c84                                ; $7c3d: $38 $45

	and b                                            ; $7c3f: $a0
	cpl                                              ; $7c40: $2f
	ld b, e                                          ; $7c41: $43
	db $eb                                           ; $7c42: $eb
	ld a, [hl-]                                      ; $7c43: $3a
	add hl, bc                                       ; $7c44: $09
	cpl                                              ; $7c45: $2f
	ld [$093a], a                                    ; $7c46: $ea $3a $09
	cpl                                              ; $7c49: $2f
	add sp, $53                                      ; $7c4a: $e8 $53
	add hl, bc                                       ; $7c4c: $09
	ld b, b                                          ; $7c4d: $40
	ld h, h                                          ; $7c4e: $64
	xor c                                            ; $7c4f: $a9
	ld b, e                                          ; $7c50: $43
	ldh a, [rHDMA4]                                  ; $7c51: $f0 $54
	ldh a, [rAUD2ENV]                                ; $7c53: $f0 $17
	ld b, l                                          ; $7c55: $45
	inc [hl]                                         ; $7c56: $34
	ldh a, [rAUD2LOW]                                ; $7c57: $f0 $18
	pop af                                           ; $7c59: $f1
	ld l, d                                          ; $7c5a: $6a
	ld h, d                                          ; $7c5b: $62
	ldh a, [c]                                       ; $7c5c: $f2
	sub [hl]                                         ; $7c5d: $96
	ld e, l                                          ; $7c5e: $5d
	dec [hl]                                         ; $7c5f: $35
	ldh a, [$eb]                                     ; $7c60: $f0 $eb
	inc de                                           ; $7c62: $13
	ld b, d                                          ; $7c63: $42
	ldh a, [$38]                                     ; $7c64: $f0 $38
	ld d, e                                          ; $7c66: $53
	ret nc                                           ; $7c67: $d0

jr_097_7c68:
	and b                                            ; $7c68: $a0
	cpl                                              ; $7c69: $2f
	ld b, e                                          ; $7c6a: $43
	db $eb                                           ; $7c6b: $eb
	dec sp                                           ; $7c6c: $3b
	add hl, bc                                       ; $7c6d: $09
	ldh a, [rSCY]                                    ; $7c6e: $f0 $42
	ldh a, [rSCY]                                    ; $7c70: $f0 $42
	ldh a, [rSCY]                                    ; $7c72: $f0 $42
	ldh a, [rSCY]                                    ; $7c74: $f0 $42
	xor l                                            ; $7c76: $ad
	jr c, jr_097_7c15                                ; $7c77: $38 $9c

	ld c, l                                          ; $7c79: $4d
	ld c, e                                          ; $7c7a: $4b
	xor h                                            ; $7c7b: $ac
	xor $1e                                          ; $7c7c: $ee $1e
	ld hl, sp-$48                                    ; $7c7e: $f8 $b8
	push af                                          ; $7c80: $f5
	ld a, [hl-]                                      ; $7c81: $3a
	ld d, d                                          ; $7c82: $52
	ld c, d                                          ; $7c83: $4a

jr_097_7c84:
	ld c, a                                          ; $7c84: $4f
	ld c, b                                          ; $7c85: $48
	and b                                            ; $7c86: $a0
	ldh a, [rSCY]                                    ; $7c87: $f0 $42
	ldh a, [rSCY]                                    ; $7c89: $f0 $42
	ldh a, [rSCY]                                    ; $7c8b: $f0 $42
	ldh a, [rSCY]                                    ; $7c8d: $f0 $42
	ld c, b                                          ; $7c8f: $48
	and b                                            ; $7c90: $a0
	cpl                                              ; $7c91: $2f
	ld b, e                                          ; $7c92: $43
	ld [$099e], a                                    ; $7c93: $ea $9e $09
	cpl                                              ; $7c96: $2f
	ld b, e                                          ; $7c97: $43
	ld [$a845], a                                    ; $7c98: $ea $45 $a8
	db $ec                                           ; $7c9b: $ec
	ldh [rWX], a                                     ; $7c9c: $e0 $4b
	inc [hl]                                         ; $7c9e: $34
	ld [$a046], a                                    ; $7c9f: $ea $46 $a0
	pop af                                           ; $7ca2: $f1
	ld hl, sp-$0f                                    ; $7ca3: $f8 $f1
	ld d, b                                          ; $7ca5: $50
	ld a, $3f                                        ; $7ca6: $3e $3f
	ld c, [hl]                                       ; $7ca8: $4e
	ld b, l                                          ; $7ca9: $45
	add hl, sp                                       ; $7caa: $39
	ld c, h                                          ; $7cab: $4c
	and b                                            ; $7cac: $a0
	cpl                                              ; $7cad: $2f
	ld b, e                                          ; $7cae: $43
	ld b, [hl]                                       ; $7caf: $46
	ld b, [hl]                                       ; $7cb0: $46
	xor h                                            ; $7cb1: $ac
	ld [$44e5], a                                    ; $7cb2: $ea $e5 $44
	ld b, l                                          ; $7cb5: $45
	and b                                            ; $7cb6: $a0
	ld l, a                                          ; $7cb7: $6f
	ld h, d                                          ; $7cb8: $62
	ldh a, [$e1]                                     ; $7cb9: $f0 $e1
	ld d, e                                          ; $7cbb: $53
	ld d, c                                          ; $7cbc: $51
	inc a                                            ; $7cbd: $3c
	ld d, b                                          ; $7cbe: $50
	xor h                                            ; $7cbf: $ac
	ld b, b                                          ; $7cc0: $40
	add hl, sp                                       ; $7cc1: $39
	jr c, jr_097_7cfd                                ; $7cc2: $38 $39

	ldh a, [rAUD3LEVEL]                              ; $7cc4: $f0 $1c
	ld b, a                                          ; $7cc6: $47
	ldh a, [rHDMA3]                                  ; $7cc7: $f0 $53
	add hl, sp                                       ; $7cc9: $39
	ld b, d                                          ; $7cca: $42
	ld b, l                                          ; $7ccb: $45
	and b                                            ; $7ccc: $a0
	cpl                                              ; $7ccd: $2f
	ld b, e                                          ; $7cce: $43
	ld c, e                                          ; $7ccf: $4b
	ld [hl], h                                       ; $7cd0: $74
	and c                                            ; $7cd1: $a1
	db $ec                                           ; $7cd2: $ec
	add hl, bc                                       ; $7cd3: $09
	inc [hl]                                         ; $7cd4: $34
	pop af                                           ; $7cd5: $f1
	ld e, h                                          ; $7cd6: $5c
	push af                                          ; $7cd7: $f5
	ld hl, $3cf2                                     ; $7cd8: $21 $f2 $3c
	ld b, d                                          ; $7cdb: $42
	inc de                                           ; $7cdc: $13
	db $fc                                           ; $7cdd: $fc
	ld [hl], $f0                                     ; $7cde: $36 $f0
	ld a, a                                          ; $7ce0: $7f
	ld h, d                                          ; $7ce1: $62
	pop af                                           ; $7ce2: $f1
	add hl, sp                                       ; $7ce3: $39
	ld d, c                                          ; $7ce4: $51
	ld d, h                                          ; $7ce5: $54
	ld c, c                                          ; $7ce6: $49
	ld d, e                                          ; $7ce7: $53
	inc de                                           ; $7ce8: $13
	sub h                                            ; $7ce9: $94
	ld a, b                                          ; $7cea: $78
	ld c, [hl]                                       ; $7ceb: $4e
	ld c, c                                          ; $7cec: $49
	ld [hl], a                                       ; $7ced: $77
	dec sp                                           ; $7cee: $3b
	dec a                                            ; $7cef: $3d
	ld b, d                                          ; $7cf0: $42
	ld b, a                                          ; $7cf1: $47
	and b                                            ; $7cf2: $a0
	cpl                                              ; $7cf3: $2f
	ld b, e                                          ; $7cf4: $43
	ld b, [hl]                                       ; $7cf5: $46
	inc [hl]                                         ; $7cf6: $34
	ld b, b                                          ; $7cf7: $40
	add hl, sp                                       ; $7cf8: $39
	xor l                                            ; $7cf9: $ad
	jp hl                                            ; $7cfa: $e9


	ret z                                            ; $7cfb: $c8

	db $ec                                           ; $7cfc: $ec

jr_097_7cfd:
	rrca                                             ; $7cfd: $0f
	and c                                            ; $7cfe: $a1
	call c, $b034                                    ; $7cff: $dc $34 $b0
	and b                                            ; $7d02: $a0
	ldh a, [rSCY]                                    ; $7d03: $f0 $42
	add hl, sp                                       ; $7d05: $39
	inc [hl]                                         ; $7d06: $34
	ld l, e                                          ; $7d07: $6b
	ld c, d                                          ; $7d08: $4a
	ldh a, [$e1]                                     ; $7d09: $f0 $e1
	ldh a, [rSB]                                     ; $7d0b: $f0 $01
	ld c, [hl]                                       ; $7d0d: $4e
	ld b, d                                          ; $7d0e: $42
	ld b, l                                          ; $7d0f: $45
	xor b                                            ; $7d10: $a8
	add b                                            ; $7d11: $80
	ld d, b                                          ; $7d12: $50
	ld c, l                                          ; $7d13: $4d
	ccf                                              ; $7d14: $3f
	inc [hl]                                         ; $7d15: $34
	ldh a, [$e1]                                     ; $7d16: $f0 $e1
	ldh a, [rSB]                                     ; $7d18: $f0 $01
	ld h, c                                          ; $7d1a: $61
	ld d, [hl]                                       ; $7d1b: $56
	dec sp                                           ; $7d1c: $3b
	dec a                                            ; $7d1d: $3d
	inc de                                           ; $7d1e: $13
	db $ec                                           ; $7d1f: $ec
	ret c                                            ; $7d20: $d8

	ld b, d                                          ; $7d21: $42
	and b                                            ; $7d22: $a0
	cpl                                              ; $7d23: $2f
	ld b, e                                          ; $7d24: $43
	ld l, e                                          ; $7d25: $6b
	ld c, d                                          ; $7d26: $4a
	dec sp                                           ; $7d27: $3b
	ccf                                              ; $7d28: $3f
	xor l                                            ; $7d29: $ad
	ld b, b                                          ; $7d2a: $40
	ld d, a                                          ; $7d2b: $57
	ld d, [hl]                                       ; $7d2c: $56
	xor $16                                          ; $7d2d: $ee $16
	ld b, h                                          ; $7d2f: $44
	dec sp                                           ; $7d30: $3b
	dec a                                            ; $7d31: $3d
	inc a                                            ; $7d32: $3c
	ld d, b                                          ; $7d33: $50
	ld c, b                                          ; $7d34: $48
	and b                                            ; $7d35: $a0
	db $ec                                           ; $7d36: $ec
	add hl, bc                                       ; $7d37: $09
	inc [hl]                                         ; $7d38: $34
	pop af                                           ; $7d39: $f1
	ld e, h                                          ; $7d3a: $5c
	push af                                          ; $7d3b: $f5
	ld hl, $3cf2                                     ; $7d3c: $21 $f2 $3c
	ld b, d                                          ; $7d3f: $42
	inc de                                           ; $7d40: $13
	db $fc                                           ; $7d41: $fc
	ld [hl], $f0                                     ; $7d42: $36 $f0
	ld a, a                                          ; $7d44: $7f
	ld h, d                                          ; $7d45: $62
	pop af                                           ; $7d46: $f1
	add hl, sp                                       ; $7d47: $39
	ld d, c                                          ; $7d48: $51
	ldh a, [$2b]                                     ; $7d49: $f0 $2b
	ldh a, [$7c]                                     ; $7d4b: $f0 $7c
	ld h, l                                          ; $7d4d: $65
	add e                                            ; $7d4e: $83
	ld b, h                                          ; $7d4f: $44
	dec sp                                           ; $7d50: $3b
	dec a                                            ; $7d51: $3d
	ld b, d                                          ; $7d52: $42
	ld b, a                                          ; $7d53: $47
	and b                                            ; $7d54: $a0
	cpl                                              ; $7d55: $2f
	ld b, e                                          ; $7d56: $43
	pop af                                           ; $7d57: $f1
	ld e, h                                          ; $7d58: $5c
	push af                                          ; $7d59: $f5
	ld hl, $3cf2                                     ; $7d5a: $21 $f2 $3c
	and c                                            ; $7d5d: $a1
	ld d, d                                          ; $7d5e: $52
	ld b, [hl]                                       ; $7d5f: $46
	inc [hl]                                         ; $7d60: $34
	jr c, jr_097_7d9b                                ; $7d61: $38 $38

	ld h, e                                          ; $7d63: $63
	xor b                                            ; $7d64: $a8
	ld d, d                                          ; $7d65: $52
	dec a                                            ; $7d66: $3d
	pop af                                           ; $7d67: $f1
	add hl, sp                                       ; $7d68: $39
	ld d, c                                          ; $7d69: $51
	ldh a, [rBGP]                                    ; $7d6a: $f0 $47
	ld d, e                                          ; $7d6c: $53
	ld a, b                                          ; $7d6d: $78
	ld c, [hl]                                       ; $7d6e: $4e
	ld c, d                                          ; $7d6f: $4a
	ld a, $66                                        ; $7d70: $3e $66
	and b                                            ; $7d72: $a0
	cpl                                              ; $7d73: $2f
	ld b, e                                          ; $7d74: $43
	ld b, [hl]                                       ; $7d75: $46
	dec sp                                           ; $7d76: $3b
	inc [hl]                                         ; $7d77: $34
	db $ec                                           ; $7d78: $ec
	ldh [$a0], a                                     ; $7d79: $e0 $a0
	pop af                                           ; $7d7b: $f1
	adc l                                            ; $7d7c: $8d
	ld a, $3d                                        ; $7d7d: $3e $3d
	ld h, e                                          ; $7d7f: $63
	ld b, l                                          ; $7d80: $45
	xor h                                            ; $7d81: $ac
	ld de, $56f0                                     ; $7d82: $11 $f0 $56
	dec [hl]                                         ; $7d85: $35
	ld d, h                                          ; $7d86: $54
	ld c, l                                          ; $7d87: $4d
	inc a                                            ; $7d88: $3c
	ld d, b                                          ; $7d89: $50
	ldh a, [$75]                                     ; $7d8a: $f0 $75
	db $f4                                           ; $7d8c: $f4
	cp $45                                           ; $7d8d: $fe $45
	and b                                            ; $7d8f: $a0
	cpl                                              ; $7d90: $2f
	ld b, e                                          ; $7d91: $43
	ld e, [hl]                                       ; $7d92: $5e
	dec sp                                           ; $7d93: $3b
	inc [hl]                                         ; $7d94: $34
	ld e, d                                          ; $7d95: $5a
	ld d, h                                          ; $7d96: $54
	ld b, a                                          ; $7d97: $47
	ld h, a                                          ; $7d98: $67
	ld d, l                                          ; $7d99: $55
	ld b, d                                          ; $7d9a: $42

jr_097_7d9b:
	and c                                            ; $7d9b: $a1
	ldh a, [rOCPD]                                   ; $7d9c: $f0 $6b
	ldh a, [$60]                                     ; $7d9e: $f0 $60
	ldh a, [$03]                                     ; $7da0: $f0 $03
	ld b, d                                          ; $7da2: $42
	ld b, b                                          ; $7da3: $40
	ld a, e                                          ; $7da4: $7b
	ld b, d                                          ; $7da5: $42
	rst FarCall                                          ; $7da6: $f7
	pop bc                                           ; $7da7: $c1
	ldh a, [$30]                                     ; $7da8: $f0 $30
	ld b, a                                          ; $7daa: $47
	xor h                                            ; $7dab: $ac
	ld a, [hl]                                       ; $7dac: $7e
	jr c, @-$10                                      ; $7dad: $38 $ee

	rla                                              ; $7daf: $17
	db $ec                                           ; $7db0: $ec
	ld h, a                                          ; $7db1: $67
	ld b, [hl]                                       ; $7db2: $46
	dec sp                                           ; $7db3: $3b
	dec a                                            ; $7db4: $3d
	ld b, d                                          ; $7db5: $42
	ld b, l                                          ; $7db6: $45
	and b                                            ; $7db7: $a0
	cpl                                              ; $7db8: $2f
	ld [hl-], a                                      ; $7db9: $32
	db $ec                                           ; $7dba: $ec
	call nz, $7847                                   ; $7dbb: $c4 $47 $78
	ccf                                              ; $7dbe: $3f
	ld c, a                                          ; $7dbf: $4f
	inc de                                           ; $7dc0: $13
	xor $17                                          ; $7dc1: $ee $17
	inc a                                            ; $7dc3: $3c
	ld c, b                                          ; $7dc4: $48
	inc sp                                           ; $7dc5: $33
	add hl, bc                                       ; $7dc6: $09
	ld d, h                                          ; $7dc7: $54
	ld c, l                                          ; $7dc8: $4d
	ld d, e                                          ; $7dc9: $53
	xor h                                            ; $7dca: $ac
	pop af                                           ; $7dcb: $f1
	ld d, h                                          ; $7dcc: $54
	add e                                            ; $7dcd: $83
	ldh a, [$60]                                     ; $7dce: $f0 $60
	ldh a, [rP1]                                     ; $7dd0: $f0 $00
	ld e, c                                          ; $7dd2: $59
	ldh a, [rAUD4POLY]                               ; $7dd3: $f0 $22
	ld e, c                                          ; $7dd5: $59
	sub e                                            ; $7dd6: $93
	ldh a, [$03]                                     ; $7dd7: $f0 $03
	ld c, h                                          ; $7dd9: $4c
	xor b                                            ; $7dda: $a8
	ld l, a                                          ; $7ddb: $6f
	ld d, e                                          ; $7ddc: $53
	ldh a, [$aa]                                     ; $7ddd: $f0 $aa
	adc c                                            ; $7ddf: $89
	pop af                                           ; $7de0: $f1
	inc bc                                           ; $7de1: $03
	ld b, a                                          ; $7de2: $47
	pop af                                           ; $7de3: $f1
	dec sp                                           ; $7de4: $3b
	ldh a, [$79]                                     ; $7de5: $f0 $79
	ld a, $3f                                        ; $7de7: $3e $3f
	inc de                                           ; $7de9: $13
	rst SubAFromDE                                          ; $7dea: $df
	ld h, e                                          ; $7deb: $63
	and b                                            ; $7dec: $a0
	cpl                                              ; $7ded: $2f
	ld b, e                                          ; $7dee: $43
	ldh a, [hDisp1_OBP1]                                     ; $7def: $f0 $94
	ld [hl], c                                       ; $7df1: $71
	ccf                                              ; $7df2: $3f
	ld [hl], d                                       ; $7df3: $72
	dec a                                            ; $7df4: $3d
	ld c, b                                          ; $7df5: $48
	and b                                            ; $7df6: $a0
	ldh a, [$08]                                     ; $7df7: $f0 $08
	ld d, b                                          ; $7df9: $50
	xor h                                            ; $7dfa: $ac
	add b                                            ; $7dfb: $80
	dec sp                                           ; $7dfc: $3b
	ldh a, [$d9]                                     ; $7dfd: $f0 $d9
	dec sp                                           ; $7dff: $3b
	ccf                                              ; $7e00: $3f
	jr c, jr_097_7e3d                                ; $7e01: $38 $3a

	jr c, jr_097_7e4f                                ; $7e03: $38 $4a

	xor h                                            ; $7e05: $ac
	ldh a, [$75]                                     ; $7e06: $f0 $75
	db $f4                                           ; $7e08: $f4
	cp $45                                           ; $7e09: $fe $45
	inc [hl]                                         ; $7e0b: $34
	ldh a, [$75]                                     ; $7e0c: $f0 $75
	db $f4                                           ; $7e0e: $f4
	cp $a8                                           ; $7e0f: $fe $a8
	ld d, d                                          ; $7e11: $52
	sbc h                                            ; $7e12: $9c
	ld c, e                                          ; $7e13: $4b
	inc [hl]                                         ; $7e14: $34
	ldh a, [rAUD2HIGH]                               ; $7e15: $f0 $19
	ldh a, [rVBK]                                    ; $7e17: $f0 $4f
	inc a                                            ; $7e19: $3c
	ld d, b                                          ; $7e1a: $50
	ld c, h                                          ; $7e1b: $4c
	and b                                            ; $7e1c: $a0
	cpl                                              ; $7e1d: $2f
	ld b, e                                          ; $7e1e: $43
	ld b, [hl]                                       ; $7e1f: $46
	dec sp                                           ; $7e20: $3b
	scf                                              ; $7e21: $37
	ld l, e                                          ; $7e22: $6b
	ld b, h                                          ; $7e23: $44

jr_097_7e24:
	scf                                              ; $7e24: $37
	inc de                                           ; $7e25: $13
	ld c, a                                          ; $7e26: $4f
	inc [hl]                                         ; $7e27: $34
	ld c, a                                          ; $7e28: $4f
	ld a, $3c                                        ; $7e29: $3e $3c
	ld a, $3f                                        ; $7e2b: $3e $3f
	inc [hl]                                         ; $7e2d: $34
	db $f4                                           ; $7e2e: $f4
	db $dd                                           ; $7e2f: $dd
	di                                               ; $7e30: $f3
	jr c, jr_097_7e24                                ; $7e31: $38 $f1

	ld h, h                                          ; $7e33: $64
	and c                                            ; $7e34: $a1
	ld d, h                                          ; $7e35: $54
	ld b, d                                          ; $7e36: $42
	ldh a, [$f6]                                     ; $7e37: $f0 $f6
	ld b, a                                          ; $7e39: $47
	inc de                                           ; $7e3a: $13
	pop af                                           ; $7e3b: $f1
	or l                                             ; $7e3c: $b5

jr_097_7e3d:
	pop af                                           ; $7e3d: $f1
	add d                                            ; $7e3e: $82
	ldh a, [c]                                       ; $7e3f: $f2
	sbc a                                            ; $7e40: $9f
	di                                               ; $7e41: $f3
	ld e, h                                          ; $7e42: $5c
	ld h, a                                          ; $7e43: $67
	ldh a, [$2c]                                     ; $7e44: $f0 $2c
	ldh a, [$65]                                     ; $7e46: $f0 $65
	ld a, [hl-]                                      ; $7e48: $3a
	ld e, d                                          ; $7e49: $5a
	inc de                                           ; $7e4a: $13
	di                                               ; $7e4b: $f3
	sub a                                            ; $7e4c: $97
	pop af                                           ; $7e4d: $f1
	ei                                               ; $7e4e: $fb

jr_097_7e4f:
	ld d, c                                          ; $7e4f: $51
	ld c, [hl]                                       ; $7e50: $4e
	ld h, e                                          ; $7e51: $63
	ld e, l                                          ; $7e52: $5d
	ld d, e                                          ; $7e53: $53
	ld a, [hl-]                                      ; $7e54: $3a
	jr c, @+$4c                                      ; $7e55: $38 $4a

	ld a, $66                                        ; $7e57: $3e $66
	add hl, sp                                       ; $7e59: $39
	xor b                                            ; $7e5a: $a8
	ld l, a                                          ; $7e5b: $6f
	ld d, e                                          ; $7e5c: $53
	ldh a, [c]                                       ; $7e5d: $f2
	ld [hl], e                                       ; $7e5e: $73
	ldh a, [$65]                                     ; $7e5f: $f0 $65
	ld h, d                                          ; $7e61: $62
	db $f4                                           ; $7e62: $f4
	or b                                             ; $7e63: $b0
	jr c, jr_097_7ea5                                ; $7e64: $38 $3f

	rst SubAFromDE                                          ; $7e66: $df
	ld h, e                                          ; $7e67: $63
	and b                                            ; $7e68: $a0
	cpl                                              ; $7e69: $2f
	ld b, e                                          ; $7e6a: $43
	ld e, [hl]                                       ; $7e6b: $5e
	dec sp                                           ; $7e6c: $3b
	inc [hl]                                         ; $7e6d: $34
	ld e, [hl]                                       ; $7e6e: $5e
	pop af                                           ; $7e6f: $f1
	dec [hl]                                         ; $7e70: $35
	ld [hl], $a2                                     ; $7e71: $36 $a2
	cpl                                              ; $7e73: $2f
	ld b, e                                          ; $7e74: $43
	ld l, d                                          ; $7e75: $6a
	ld b, d                                          ; $7e76: $42
	ld c, e                                          ; $7e77: $4b
	inc [hl]                                         ; $7e78: $34
	ld l, l                                          ; $7e79: $6d
	ldh a, [$65]                                     ; $7e7a: $f0 $65
	inc de                                           ; $7e7c: $13
	ld l, e                                          ; $7e7d: $6b
	ld b, h                                          ; $7e7e: $44
	dec sp                                           ; $7e7f: $3b
	dec a                                            ; $7e80: $3d
	ld b, c                                          ; $7e81: $41
	ld b, h                                          ; $7e82: $44
	ld e, a                                          ; $7e83: $5f
	add hl, sp                                       ; $7e84: $39
	and b                                            ; $7e85: $a0
	add a                                            ; $7e86: $87
	ld a, $3d                                        ; $7e87: $3e $3d
	ld d, h                                          ; $7e89: $54
	ld c, c                                          ; $7e8a: $49
	ld a, [hl-]                                      ; $7e8b: $3a
	inc a                                            ; $7e8c: $3c
	dec sp                                           ; $7e8d: $3b
	ldh [$a8], a                                     ; $7e8e: $e0 $a8
	ld l, a                                          ; $7e90: $6f
	ld b, a                                          ; $7e91: $47
	di                                               ; $7e92: $f3
	cp b                                             ; $7e93: $b8
	ldh a, [$fc]                                     ; $7e94: $f0 $fc
	ld d, c                                          ; $7e96: $51
	ld c, [hl]                                       ; $7e97: $4e
	ld b, d                                          ; $7e98: $42
	ld c, e                                          ; $7e99: $4b
	xor h                                            ; $7e9a: $ac
	ld l, l                                          ; $7e9b: $6d
	di                                               ; $7e9c: $f3
	inc [hl]                                         ; $7e9d: $34
	ldh a, [c]                                       ; $7e9e: $f2
	ld b, l                                          ; $7e9f: $45
	ldh a, [rAUD1HIGH]                               ; $7ea0: $f0 $14
	ldh a, [$0a]                                     ; $7ea2: $f0 $0a
	inc a                                            ; $7ea4: $3c

jr_097_7ea5:
	dec sp                                           ; $7ea5: $3b
	dec a                                            ; $7ea6: $3d
	ld h, e                                          ; $7ea7: $63
	ld b, l                                          ; $7ea8: $45
	and b                                            ; $7ea9: $a0
	cpl                                              ; $7eaa: $2f
	ld b, e                                          ; $7eab: $43
	ld b, e                                          ; $7eac: $43
	ldh a, [c]                                       ; $7ead: $f2
	ld b, l                                          ; $7eae: $45
	ldh a, [rAUD1HIGH]                               ; $7eaf: $f0 $14
	ldh a, [$eb]                                     ; $7eb1: $f0 $eb
	ld c, e                                          ; $7eb3: $4b
	xor h                                            ; $7eb4: $ac
	db $f4                                           ; $7eb5: $f4
	db $e4                                           ; $7eb6: $e4
	ldh a, [c]                                       ; $7eb7: $f2
	ld a, a                                          ; $7eb8: $7f
	ld b, d                                          ; $7eb9: $42
	pop af                                           ; $7eba: $f1
	ld d, l                                          ; $7ebb: $55
	db $fc                                           ; $7ebc: $fc
	ld sp, $565b                                     ; $7ebd: $31 $5b $56
	and b                                            ; $7ec0: $a0
	jr c, jr_097_7efe                                ; $7ec1: $38 $3b

	inc [hl]                                         ; $7ec3: $34
	ld h, a                                          ; $7ec4: $67
	ld d, l                                          ; $7ec5: $55
	ld h, e                                          ; $7ec6: $63
	ld b, l                                          ; $7ec7: $45
	and b                                            ; $7ec8: $a0
	cpl                                              ; $7ec9: $2f
	ld [hl-], a                                      ; $7eca: $32
	ld c, a                                          ; $7ecb: $4f
	ld a, $3c                                        ; $7ecc: $3e $3c
	ld a, $3f                                        ; $7ece: $3e $3f
	inc [hl]                                         ; $7ed0: $34
	halt                                             ; $7ed1: $76
	ldh a, [rSTAT]                                   ; $7ed2: $f0 $41
	xor h                                            ; $7ed4: $ac
	pop af                                           ; $7ed5: $f1
	sbc b                                            ; $7ed6: $98
	ldh a, [$dc]                                     ; $7ed7: $f0 $dc
	ld b, d                                          ; $7ed9: $42
	pop af                                           ; $7eda: $f1
	adc $f0                                          ; $7edb: $ce $f0
	add $62                                          ; $7edd: $c6 $62
	ei                                               ; $7edf: $fb
	ld l, $3b                                        ; $7ee0: $2e $3b
	dec a                                            ; $7ee2: $3d
	ld b, d                                          ; $7ee3: $42
	inc a                                            ; $7ee4: $3c
	ld c, a                                          ; $7ee5: $4f
	ld c, b                                          ; $7ee6: $48
	inc sp                                           ; $7ee7: $33
	add hl, bc                                       ; $7ee8: $09
	ld b, [hl]                                       ; $7ee9: $46
	ld a, [hl-]                                      ; $7eea: $3a
	dec a                                            ; $7eeb: $3d
	ld b, d                                          ; $7eec: $42
	ld a, c                                          ; $7eed: $79
	jr c, jr_097_7f3a                                ; $7eee: $38 $4a

	xor h                                            ; $7ef0: $ac
	ldh a, [$e4]                                     ; $7ef1: $f0 $e4
	ld e, l                                          ; $7ef3: $5d
	dec a                                            ; $7ef4: $3d
	db $ec                                           ; $7ef5: $ec
	ret c                                            ; $7ef6: $d8

	ld b, d                                          ; $7ef7: $42
	and b                                            ; $7ef8: $a0
	cpl                                              ; $7ef9: $2f
	ld b, e                                          ; $7efa: $43
	jp hl                                            ; $7efb: $e9


	and h                                            ; $7efc: $a4
	and b                                            ; $7efd: $a0

jr_097_7efe:
	ld d, d                                          ; $7efe: $52
	ld b, [hl]                                       ; $7eff: $46
	inc [hl]                                         ; $7f00: $34
	jr c, jr_097_7f3b                                ; $7f01: $38 $38

	ld h, e                                          ; $7f03: $63
	xor b                                            ; $7f04: $a8
	ldh a, [$d6]                                     ; $7f05: $f0 $d6
	ld c, e                                          ; $7f07: $4b
	inc [hl]                                         ; $7f08: $34
	ldh a, [c]                                       ; $7f09: $f2
	ld b, b                                          ; $7f0a: $40
	sbc h                                            ; $7f0b: $9c
	ldh a, [$6f]                                     ; $7f0c: $f0 $6f
	add b                                            ; $7f0e: $80
	ld h, e                                          ; $7f0f: $63
	ld b, l                                          ; $7f10: $45
	and b                                            ; $7f11: $a0
	cpl                                              ; $7f12: $2f
	ld [hl-], a                                      ; $7f13: $32
	add b                                            ; $7f14: $80
	inc [hl]                                         ; $7f15: $34
	ldh a, [$d6]                                     ; $7f16: $f0 $d6
	ld d, e                                          ; $7f18: $53
	ld b, [hl]                                       ; $7f19: $46
	ld c, [hl]                                       ; $7f1a: $4e
	ld b, d                                          ; $7f1b: $42
	inc a                                            ; $7f1c: $3c
	ld c, b                                          ; $7f1d: $48
	inc sp                                           ; $7f1e: $33
	add hl, bc                                       ; $7f1f: $09
	add hl, bc                                       ; $7f20: $09
	ld [$acf5], a                                    ; $7f21: $ea $f5 $ac
	ld h, h                                          ; $7f24: $64
	ld c, e                                          ; $7f25: $4b
	ld b, l                                          ; $7f26: $45
	add hl, sp                                       ; $7f27: $39
	inc [hl]                                         ; $7f28: $34
	ld d, $a0                                        ; $7f29: $16 $a0
	cpl                                              ; $7f2b: $2f
	ld b, e                                          ; $7f2c: $43
	ld b, [hl]                                       ; $7f2d: $46
	dec sp                                           ; $7f2e: $3b
	xor h                                            ; $7f2f: $ac
	db $ec                                           ; $7f30: $ec
	pop hl                                           ; $7f31: $e1
	inc [hl]                                         ; $7f32: $34
	ld h, h                                          ; $7f33: $64
	ld c, e                                          ; $7f34: $4b
	ld b, l                                          ; $7f35: $45
	add hl, sp                                       ; $7f36: $39
	and b                                            ; $7f37: $a0
	ld c, h                                          ; $7f38: $4c
	ld e, [hl]                                       ; $7f39: $5e

jr_097_7f3a:
	xor h                                            ; $7f3a: $ac

jr_097_7f3b:
	ld c, a                                          ; $7f3b: $4f
	ld a, $3c                                        ; $7f3c: $3e $3c
	ld a, $3f                                        ; $7f3e: $3e $3f
	xor $08                                          ; $7f40: $ee $08
	ld a, [hl-]                                      ; $7f42: $3a
	ld b, d                                          ; $7f43: $42
	and c                                            ; $7f44: $a1
	cpl                                              ; $7f45: $2f
	ld b, e                                          ; $7f46: $43
	ld b, [hl]                                       ; $7f47: $46
	ld b, [hl]                                       ; $7f48: $46
	inc [hl]                                         ; $7f49: $34
	ld b, b                                          ; $7f4a: $40
	add hl, sp                                       ; $7f4b: $39
	ld b, h                                          ; $7f4c: $44
	ld b, l                                          ; $7f4d: $45
	and b                                            ; $7f4e: $a0
	ld e, e                                          ; $7f4f: $5b
	ld d, [hl]                                       ; $7f50: $56
	ld b, [hl]                                       ; $7f51: $46
	ld e, b                                          ; $7f52: $58
	xor h                                            ; $7f53: $ac
	ld l, a                                          ; $7f54: $6f
	ld c, c                                          ; $7f55: $49
	ld [$a126], a                                    ; $7f56: $ea $26 $a1
	cpl                                              ; $7f59: $2f
	jp hl                                            ; $7f5a: $e9


	ld c, d                                          ; $7f5b: $4a
	add hl, bc                                       ; $7f5c: $09
	db $ed                                           ; $7f5d: $ed
	ld b, c                                          ; $7f5e: $41
	scf                                              ; $7f5f: $37
	xor c                                            ; $7f60: $a9
	ld e, e                                          ; $7f61: $5b
	ld d, [hl]                                       ; $7f62: $56
	ld b, [hl]                                       ; $7f63: $46
	inc [hl]                                         ; $7f64: $34
	ld d, c                                          ; $7f65: $51
	sbc l                                            ; $7f66: $9d
	ld b, a                                          ; $7f67: $47
	call $2fa0                                       ; $7f68: $cd $a0 $2f
	jp hl                                            ; $7f6b: $e9


	ld d, h                                          ; $7f6c: $54
	add hl, bc                                       ; $7f6d: $09
	ld b, b                                          ; $7f6e: $40
	add hl, sp                                       ; $7f6f: $39
	xor l                                            ; $7f70: $ad
	ld h, c                                          ; $7f71: $61
	ld h, [hl]                                       ; $7f72: $66
	dec sp                                           ; $7f73: $3b
	ldh a, [c]                                       ; $7f74: $f2
	sbc $57                                          ; $7f75: $de $57
	ldh a, [$8d]                                     ; $7f77: $f0 $8d
	ldh a, [$9e]                                     ; $7f79: $f0 $9e
	ld c, h                                          ; $7f7b: $4c
	xor b                                            ; $7f7c: $a8
	ld b, b                                          ; $7f7d: $40
	ld c, l                                          ; $7f7e: $4d
	ld e, e                                          ; $7f7f: $5b
	ld d, [hl]                                       ; $7f80: $56
	ld c, b                                          ; $7f81: $48
	and b                                            ; $7f82: $a0
	cpl                                              ; $7f83: $2f
	ld b, e                                          ; $7f84: $43
	ret                                              ; $7f85: $c9


	xor h                                            ; $7f86: $ac
	ld [$a034], a                                    ; $7f87: $ea $34 $a0
	cpl                                              ; $7f8a: $2f
	ld b, e                                          ; $7f8b: $43
	ld b, [hl]                                       ; $7f8c: $46
	dec sp                                           ; $7f8d: $3b
	inc [hl]                                         ; $7f8e: $34
	db $ed                                           ; $7f8f: $ed
	xor d                                            ; $7f90: $aa
	jr c, jr_097_7fcb                                ; $7f91: $38 $38

	ld c, c                                          ; $7f93: $49
	ld d, h                                          ; $7f94: $54
	ld e, a                                          ; $7f95: $5f
	inc de                                           ; $7f96: $13
	ld b, a                                          ; $7f97: $47
	inc [hl]                                         ; $7f98: $34
	db $ec                                           ; $7f99: $ec
	pop hl                                           ; $7f9a: $e1
	db $eb                                           ; $7f9b: $eb
	ld h, [hl]                                       ; $7f9c: $66
	and b                                            ; $7f9d: $a0
	cpl                                              ; $7f9e: $2f
	ld b, e                                          ; $7f9f: $43
	db $ec                                           ; $7fa0: $ec
	pop hl                                           ; $7fa1: $e1
	and b                                            ; $7fa2: $a0
	ld e, [hl]                                       ; $7fa3: $5e
	dec sp                                           ; $7fa4: $3b
	inc [hl]                                         ; $7fa5: $34
	ld d, $a8                                        ; $7fa6: $16 $a8
	ld l, a                                          ; $7fa8: $6f
	ld b, a                                          ; $7fa9: $47
	ld l, e                                          ; $7faa: $6b
	inc a                                            ; $7fab: $3c
	ldh a, [rAUD2LEN]                                ; $7fac: $f0 $16
	and c                                            ; $7fae: $a1
	cpl                                              ; $7faf: $2f
	ld b, e                                          ; $7fb0: $43
	ld c, h                                          ; $7fb1: $4c
	ld e, [hl]                                       ; $7fb2: $5e
	inc [hl]                                         ; $7fb3: $34
	ld l, d                                          ; $7fb4: $6a
	ld l, b                                          ; $7fb5: $68
	ld b, d                                          ; $7fb6: $42
	inc de                                           ; $7fb7: $13
	db $ec                                           ; $7fb8: $ec
	jp $ea34                                         ; $7fb9: $c3 $34 $ea


	ld h, $a1                                        ; $7fbc: $26 $a1
	db $ed                                           ; $7fbe: $ed
	ld l, l                                          ; $7fbf: $6d
	inc [hl]                                         ; $7fc0: $34
	ld h, a                                          ; $7fc1: $67
	ld d, l                                          ; $7fc2: $55
	ld h, e                                          ; $7fc3: $63
	xor b                                            ; $7fc4: $a8
	ret                                              ; $7fc5: $c9


	sbc c                                            ; $7fc6: $99
	dec sp                                           ; $7fc7: $3b
	ccf                                              ; $7fc8: $3f
	ccf                                              ; $7fc9: $3f
	xor h                                            ; $7fca: $ac

jr_097_7fcb:
	ld d, c                                          ; $7fcb: $51
	sbc l                                            ; $7fcc: $9d
	ld b, a                                          ; $7fcd: $47
	ld a, b                                          ; $7fce: $78
	ld c, [hl]                                       ; $7fcf: $4e
	inc a                                            ; $7fd0: $3c
	ld d, b                                          ; $7fd1: $50
	and b                                            ; $7fd2: $a0
	cpl                                              ; $7fd3: $2f
	ld b, e                                          ; $7fd4: $43
	ld a, [hl-]                                      ; $7fd5: $3a
	ld b, c                                          ; $7fd6: $41
	inc a                                            ; $7fd7: $3c
	di                                               ; $7fd8: $f3
	rrca                                             ; $7fd9: $0f
	ccf                                              ; $7fda: $3f
	ccf                                              ; $7fdb: $3f
	inc de                                           ; $7fdc: $13
	ld [$3abe], a                                    ; $7fdd: $ea $be $3a
	ld c, b                                          ; $7fe0: $48
	and b                                            ; $7fe1: $a0
	ld h, h                                          ; $7fe2: $64
	inc [hl]                                         ; $7fe3: $34
	ld h, h                                          ; $7fe4: $64
	sbc c                                            ; $7fe5: $99
	dec a                                            ; $7fe6: $3d
	ld a, c                                          ; $7fe7: $79
	xor b                                            ; $7fe8: $a8
	ld [$3ca9], a                                    ; $7fe9: $ea $a9 $3c
	and b                                            ; $7fec: $a0
	ld [$34f5], a                                    ; $7fed: $ea $f5 $34
	ld h, h                                          ; $7ff0: $64
	ld c, e                                          ; $7ff1: $4b
	ld b, l                                          ; $7ff2: $45
	add hl, sp                                       ; $7ff3: $39
	inc de                                           ; $7ff4: $13
	ld d, $a0                                        ; $7ff5: $16 $a0
	db $ed                                           ; $7ff7: $ed
	ld l, l                                          ; $7ff8: $6d
	inc [hl]                                         ; $7ff9: $34
	ret nc                                           ; $7ffa: $d0

	xor b                                            ; $7ffb: $a8
	xor $06                                          ; $7ffc: $ee $06
	ld b, a                                          ; $7ffe: $47
	db $ea                                           ; $7fff: $ea
