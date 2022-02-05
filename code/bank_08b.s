; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08b", ROMX[$4000], BANK[$8b]

	dec bc                                           ; $4000: $0b
	ld c, c                                          ; $4001: $49
	ld a, $3f                                        ; $4002: $3e $3f
	xor h                                            ; $4004: $ac
	db $eb                                           ; $4005: $eb
	ld c, c                                          ; $4006: $49
	sub d                                            ; $4007: $92
	adc [hl]                                         ; $4008: $8e
	dec sp                                           ; $4009: $3b
	ccf                                              ; $400a: $3f
	jr c, jr_08b_4061                                ; $400b: $38 $54

	add hl, sp                                       ; $400d: $39
	ld c, c                                          ; $400e: $49
	inc de                                           ; $400f: $13
	ld [hl], a                                       ; $4010: $77
	dec sp                                           ; $4011: $3b
	ccf                                              ; $4012: $3f
	ld c, [hl]                                       ; $4013: $4e
	ld b, c                                          ; $4014: $41
	ld b, h                                          ; $4015: $44
	and b                                            ; $4016: $a0

jr_08b_4017:
	cpl                                              ; $4017: $2f
	ld b, e                                          ; $4018: $43
	halt                                             ; $4019: $76
	ld c, e                                          ; $401a: $4b
	xor h                                            ; $401b: $ac
	add c                                            ; $401c: $81
	ldh a, [$1f]                                     ; $401d: $f0 $1f
	ldh a, [$60]                                     ; $401f: $f0 $60
	pop af                                           ; $4021: $f1
	ld [bc], a                                       ; $4022: $02
	add e                                            ; $4023: $83
	pop af                                           ; $4024: $f1
	jr c, jr_08b_4017                                ; $4025: $38 $f0

	dec bc                                           ; $4027: $0b
	ld c, c                                          ; $4028: $49
	ld a, $3f                                        ; $4029: $3e $3f
	inc de                                           ; $402b: $13
	db $eb                                           ; $402c: $eb
	ld c, c                                          ; $402d: $49
	sub d                                            ; $402e: $92
	adc [hl]                                         ; $402f: $8e
	dec sp                                           ; $4030: $3b
	ccf                                              ; $4031: $3f
	jr c, jr_08b_4088                                ; $4032: $38 $54

	add hl, sp                                       ; $4034: $39
	ld c, c                                          ; $4035: $49
	inc de                                           ; $4036: $13
	ld [hl], a                                       ; $4037: $77
	dec sp                                           ; $4038: $3b
	ccf                                              ; $4039: $3f
	ld c, [hl]                                       ; $403a: $4e
	ld b, c                                          ; $403b: $41
	ld b, h                                          ; $403c: $44
	and b                                            ; $403d: $a0
	cpl                                              ; $403e: $2f
	ld b, e                                          ; $403f: $43
	halt                                             ; $4040: $76
	ld c, e                                          ; $4041: $4b
	xor h                                            ; $4042: $ac
	ld [$aca6], a                                    ; $4043: $ea $a6 $ac
	pop af                                           ; $4046: $f1
	ld h, c                                          ; $4047: $61
	ld e, l                                          ; $4048: $5d
	ccf                                              ; $4049: $3f
	jr c, @+$56                                      ; $404a: $38 $54

	add hl, sp                                       ; $404c: $39
	ld c, c                                          ; $404d: $49
	inc de                                           ; $404e: $13
	ld [hl], a                                       ; $404f: $77
	dec sp                                           ; $4050: $3b
	ccf                                              ; $4051: $3f
	ld c, [hl]                                       ; $4052: $4e
	ld b, c                                          ; $4053: $41
	ld b, h                                          ; $4054: $44
	and b                                            ; $4055: $a0
	cpl                                              ; $4056: $2f
	ld b, e                                          ; $4057: $43
	halt                                             ; $4058: $76
	ld c, e                                          ; $4059: $4b
	xor h                                            ; $405a: $ac
	ldh a, [rAUD4LEN]                                ; $405b: $f0 $20
	add e                                            ; $405d: $83
	ldh a, [$c2]                                     ; $405e: $f0 $c2
	ld b, d                                          ; $4060: $42

jr_08b_4061:
	adc b                                            ; $4061: $88
	ldh a, [$30]                                     ; $4062: $f0 $30
	db $ec                                           ; $4064: $ec
	ld d, l                                          ; $4065: $55
	ld c, d                                          ; $4066: $4a
	xor h                                            ; $4067: $ac
	pop af                                           ; $4068: $f1
	ld [$73f0], sp                                   ; $4069: $08 $f0 $73
	ld h, d                                          ; $406c: $62
	pop af                                           ; $406d: $f1
	ld de, $8047                                     ; $406e: $11 $47 $80
	ld e, l                                          ; $4071: $5d
	ld b, l                                          ; $4072: $45
	add hl, sp                                       ; $4073: $39
	ld c, c                                          ; $4074: $49
	ld [hl], a                                       ; $4075: $77
	dec sp                                           ; $4076: $3b
	ccf                                              ; $4077: $3f
	ld c, [hl]                                       ; $4078: $4e
	and b                                            ; $4079: $a0
	cpl                                              ; $407a: $2f
	ld b, e                                          ; $407b: $43
	db $ec                                           ; $407c: $ec
	sub a                                            ; $407d: $97
	ld b, a                                          ; $407e: $47
	inc de                                           ; $407f: $13
	ldh a, [rTMA]                                    ; $4080: $f0 $06
	pop af                                           ; $4082: $f1
	inc h                                            ; $4083: $24
	ld c, a                                          ; $4084: $4f
	ld c, d                                          ; $4085: $4a
	ld e, h                                          ; $4086: $5c
	dec a                                            ; $4087: $3d

jr_08b_4088:
	ld a, $ac                                        ; $4088: $3e $ac
	pop af                                           ; $408a: $f1
	sbc d                                            ; $408b: $9a
	inc a                                            ; $408c: $3c
	ld d, b                                          ; $408d: $50
	ld c, e                                          ; $408e: $4b
	add a                                            ; $408f: $87
	adc c                                            ; $4090: $89
	ldh a, [rTIMA]                                   ; $4091: $f0 $05
	ld b, h                                          ; $4093: $44
	adc l                                            ; $4094: $8d
	and b                                            ; $4095: $a0
	cpl                                              ; $4096: $2f
	ld b, e                                          ; $4097: $43
	ld c, c                                          ; $4098: $49
	ld d, a                                          ; $4099: $57
	ld b, [hl]                                       ; $409a: $46
	ld e, [hl]                                       ; $409b: $5e
	sbc h                                            ; $409c: $9c
	ldh a, [hDisp0_SCX]                                     ; $409d: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $409f: $f0 $85
	add a                                            ; $40a1: $87
	adc c                                            ; $40a2: $89
	ld b, a                                          ; $40a3: $47
	inc de                                           ; $40a4: $13
	ldh a, [rTMA]                                    ; $40a5: $f0 $06
	pop af                                           ; $40a7: $f1

Call_08b_40a8:
	inc h                                            ; $40a8: $24
	ld c, a                                          ; $40a9: $4f
	ld c, d                                          ; $40aa: $4a
	ld e, h                                          ; $40ab: $5c
	dec a                                            ; $40ac: $3d
	ld a, $ac                                        ; $40ad: $3e $ac
	pop af                                           ; $40af: $f1
	sbc d                                            ; $40b0: $9a
	inc a                                            ; $40b1: $3c
	ld d, b                                          ; $40b2: $50
	ld c, e                                          ; $40b3: $4b
	add a                                            ; $40b4: $87
	adc c                                            ; $40b5: $89
	ldh a, [rTIMA]                                   ; $40b6: $f0 $05
	ld b, h                                          ; $40b8: $44
	adc l                                            ; $40b9: $8d
	and b                                            ; $40ba: $a0
	cpl                                              ; $40bb: $2f
	ld b, e                                          ; $40bc: $43
	ld c, c                                          ; $40bd: $49
	ld d, a                                          ; $40be: $57
	ld b, [hl]                                       ; $40bf: $46
	ld e, [hl]                                       ; $40c0: $5e
	sbc h                                            ; $40c1: $9c
	db $ec                                           ; $40c2: $ec
	xor c                                            ; $40c3: $a9
	ld b, a                                          ; $40c4: $47
	inc de                                           ; $40c5: $13
	ldh a, [rTMA]                                    ; $40c6: $f0 $06
	pop af                                           ; $40c8: $f1
	inc h                                            ; $40c9: $24
	ld c, e                                          ; $40ca: $4b
	ld c, d                                          ; $40cb: $4a
	ld e, h                                          ; $40cc: $5c
	dec a                                            ; $40cd: $3d
	ld a, $ac                                        ; $40ce: $3e $ac
	pop af                                           ; $40d0: $f1
	sbc d                                            ; $40d1: $9a
	inc a                                            ; $40d2: $3c
	ld d, b                                          ; $40d3: $50
	ld c, e                                          ; $40d4: $4b
	add a                                            ; $40d5: $87
	adc c                                            ; $40d6: $89
	ldh a, [rTIMA]                                   ; $40d7: $f0 $05
	ld b, h                                          ; $40d9: $44
	adc l                                            ; $40da: $8d
	and b                                            ; $40db: $a0
	cpl                                              ; $40dc: $2f
	ld b, e                                          ; $40dd: $43
	db $ec                                           ; $40de: $ec
	ld [bc], a                                       ; $40df: $02
	sub [hl]                                         ; $40e0: $96
	pop af                                           ; $40e1: $f1
	ld a, [hl+]                                      ; $40e2: $2a
	inc de                                           ; $40e3: $13
	ld d, c                                          ; $40e4: $51
	ld c, [hl]                                       ; $40e5: $4e
	ld d, h                                          ; $40e6: $54
	ld c, c                                          ; $40e7: $49
	ld c, a                                          ; $40e8: $4f
	ldh a, [$ec]                                     ; $40e9: $f0 $ec
	ld d, d                                          ; $40eb: $52
	dec sp                                           ; $40ec: $3b
	dec a                                            ; $40ed: $3d
	ld a, $ac                                        ; $40ee: $3e $ac
	pop af                                           ; $40f0: $f1
	sbc d                                            ; $40f1: $9a
	inc a                                            ; $40f2: $3c
	ld d, b                                          ; $40f3: $50
	ld c, e                                          ; $40f4: $4b
	pop af                                           ; $40f5: $f1
	ld a, [hl+]                                      ; $40f6: $2a
	ldh a, [rHDMA3]                                  ; $40f7: $f0 $53
	add h                                            ; $40f9: $84
	ld b, h                                          ; $40fa: $44
	adc l                                            ; $40fb: $8d
	and b                                            ; $40fc: $a0
	cpl                                              ; $40fd: $2f
	ld b, e                                          ; $40fe: $43
	ld c, c                                          ; $40ff: $49
	ld d, a                                          ; $4100: $57
	ld b, [hl]                                       ; $4101: $46
	ld e, [hl]                                       ; $4102: $5e
	sbc h                                            ; $4103: $9c
	ldh a, [hDisp0_SCX]                                     ; $4104: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $4106: $f0 $85
	pop af                                           ; $4108: $f1
	ld a, l                                          ; $4109: $7d
	ldh a, [hDisp0_LCDC]                                     ; $410a: $f0 $82
	ld b, a                                          ; $410c: $47
	inc de                                           ; $410d: $13
	sub [hl]                                         ; $410e: $96
	pop af                                           ; $410f: $f1
	ld a, [hl+]                                      ; $4110: $2a
	ld c, a                                          ; $4111: $4f
	ldh a, [$ec]                                     ; $4112: $f0 $ec
	ld d, d                                          ; $4114: $52
	dec sp                                           ; $4115: $3b
	dec a                                            ; $4116: $3d
	ld a, $ac                                        ; $4117: $3e $ac
	pop af                                           ; $4119: $f1
	sbc d                                            ; $411a: $9a
	inc a                                            ; $411b: $3c
	ld d, b                                          ; $411c: $50
	ld c, e                                          ; $411d: $4b
	pop af                                           ; $411e: $f1
	ld a, [hl+]                                      ; $411f: $2a
	ldh a, [rHDMA3]                                  ; $4120: $f0 $53
	add h                                            ; $4122: $84
	ld b, h                                          ; $4123: $44
	adc l                                            ; $4124: $8d
	and b                                            ; $4125: $a0
	cpl                                              ; $4126: $2f
	ld b, e                                          ; $4127: $43
	ld c, c                                          ; $4128: $49
	ld d, a                                          ; $4129: $57
	ld b, [hl]                                       ; $412a: $46
	ld e, [hl]                                       ; $412b: $5e
	sbc h                                            ; $412c: $9c
	pop af                                           ; $412d: $f1
	ld [hl], e                                       ; $412e: $73
	ldh a, [hDisp0_BGP]                                     ; $412f: $f0 $85
	pop af                                           ; $4131: $f1
	ld a, l                                          ; $4132: $7d
	ldh a, [hDisp0_LCDC]                                     ; $4133: $f0 $82
	ld b, a                                          ; $4135: $47
	inc de                                           ; $4136: $13
	sub [hl]                                         ; $4137: $96
	pop af                                           ; $4138: $f1
	ld a, [hl+]                                      ; $4139: $2a
	ld c, a                                          ; $413a: $4f
	ldh a, [$ec]                                     ; $413b: $f0 $ec
	ld d, d                                          ; $413d: $52
	dec sp                                           ; $413e: $3b
	dec a                                            ; $413f: $3d
	ld a, $ac                                        ; $4140: $3e $ac
	pop af                                           ; $4142: $f1
	sbc d                                            ; $4143: $9a
	inc a                                            ; $4144: $3c
	ld d, b                                          ; $4145: $50
	ld c, e                                          ; $4146: $4b
	pop af                                           ; $4147: $f1
	ld a, [hl+]                                      ; $4148: $2a
	ldh a, [rHDMA3]                                  ; $4149: $f0 $53
	add h                                            ; $414b: $84
	ld b, h                                          ; $414c: $44
	adc l                                            ; $414d: $8d
	and b                                            ; $414e: $a0
	jr c, jr_08b_4189                                ; $414f: $38 $38

	ld b, l                                          ; $4151: $45
	ld a, [hl-]                                      ; $4152: $3a
	ld [hl], h                                       ; $4153: $74
	xor h                                            ; $4154: $ac
	ld h, c                                          ; $4155: $61
	ld d, [hl]                                       ; $4156: $56
	ld b, c                                          ; $4157: $41
	ld c, c                                          ; $4158: $49
	ld a, $3d                                        ; $4159: $3e $3d
	pop af                                           ; $415b: $f1
	dec hl                                           ; $415c: $2b
	pop af                                           ; $415d: $f1
	db $ec                                           ; $415e: $ec

jr_08b_415f:
	ld d, e                                          ; $415f: $53
	inc de                                           ; $4160: $13
	ldh a, [$ec]                                     ; $4161: $f0 $ec
	ld d, d                                          ; $4163: $52
	dec sp                                           ; $4164: $3b
	ccf                                              ; $4165: $3f
	ld c, [hl]                                       ; $4166: $4e
	ldh a, [$f8]                                     ; $4167: $f0 $f8
	ld c, e                                          ; $4169: $4b
	ld c, b                                          ; $416a: $48
	and b                                            ; $416b: $a0
	cpl                                              ; $416c: $2f
	ld b, e                                          ; $416d: $43
	ld d, d                                          ; $416e: $52
	ld [hl], h                                       ; $416f: $74
	inc [hl]                                         ; $4170: $34
	db $ed                                           ; $4171: $ed
	dec d                                            ; $4172: $15
	sub d                                            ; $4173: $92
	adc [hl]                                         ; $4174: $8e
	ld c, l                                          ; $4175: $4d
	ld b, l                                          ; $4176: $45
	and b                                            ; $4177: $a0
	cpl                                              ; $4178: $2f
	ld b, e                                          ; $4179: $43
	ld a, [hl-]                                      ; $417a: $3a
	ld b, [hl]                                       ; $417b: $46
	inc [hl]                                         ; $417c: $34
	adc e                                            ; $417d: $8b
	ldh a, [$72]                                     ; $417e: $f0 $72
	xor b                                            ; $4180: $a8
	halt                                             ; $4181: $76
	ld b, d                                          ; $4182: $42
	ldh a, [$e5]                                     ; $4183: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $4185: $f0 $14
	ldh a, [$2a]                                     ; $4187: $f0 $2a

jr_08b_4189:
	dec sp                                           ; $4189: $3b
	ccf                                              ; $418a: $3f
	xor h                                            ; $418b: $ac
	ld l, l                                          ; $418c: $6d
	ldh a, [$65]                                     ; $418d: $f0 $65
	inc [hl]                                         ; $418f: $34
	ld l, e                                          ; $4190: $6b
	ld b, h                                          ; $4191: $44
	dec sp                                           ; $4192: $3b
	dec a                                            ; $4193: $3d
	ld b, c                                          ; $4194: $41
	ld b, h                                          ; $4195: $44
	ld e, a                                          ; $4196: $5f
	add hl, sp                                       ; $4197: $39
	ld a, [hl-]                                      ; $4198: $3a
	and c                                            ; $4199: $a1
	ldh a, [$2d]                                     ; $419a: $f0 $2d
	ld c, [hl]                                       ; $419c: $4e
	inc a                                            ; $419d: $3c
	ld b, l                                          ; $419e: $45
	xor b                                            ; $419f: $a8
	db $ec                                           ; $41a0: $ec
	xor $53                                          ; $41a1: $ee $53
	ldh a, [$0c]                                     ; $41a3: $f0 $0c
	ld e, h                                          ; $41a5: $5c
	dec a                                            ; $41a6: $3d
	jr c, jr_08b_41fe                                ; $41a7: $38 $55

	ld d, b                                          ; $41a9: $50
	jr c, jr_08b_41f0                                ; $41aa: $38 $44

	ld b, l                                          ; $41ac: $45
	and b                                            ; $41ad: $a0
	cpl                                              ; $41ae: $2f
	ld b, e                                          ; $41af: $43
	ld b, b                                          ; $41b0: $40
	add hl, sp                                       ; $41b1: $39
	inc a                                            ; $41b2: $3c
	xor $10                                          ; $41b3: $ee $10
	ld h, b                                          ; $41b5: $60
	dec [hl]                                         ; $41b6: $35
	ld [hl+], a                                      ; $41b7: $22
	inc de                                           ; $41b8: $13
	ld b, b                                          ; $41b9: $40
	add hl, sp                                       ; $41ba: $39
	ld b, h                                          ; $41bb: $44
	ld b, l                                          ; $41bc: $45
	ld a, [hl-]                                      ; $41bd: $3a
	ld [hl], h                                       ; $41be: $74
	and b                                            ; $41bf: $a0
	ld d, d                                          ; $41c0: $52
	inc [hl]                                         ; $41c1: $34
	ld d, l                                          ; $41c2: $55
	ld b, l                                          ; $41c3: $45
	ld d, l                                          ; $41c4: $55
	ld b, l                                          ; $41c5: $45
	ld a, $3d                                        ; $41c6: $3e $3d
	dec sp                                           ; $41c8: $3b
	ccf                                              ; $41c9: $3f
	inc de                                           ; $41ca: $13
	ldh a, [$bb]                                     ; $41cb: $f0 $bb
	ld d, d                                          ; $41cd: $52
	ld d, b                                          ; $41ce: $50
	ld a, [hl-]                                      ; $41cf: $3a
	jr c, jr_08b_415f                                ; $41d0: $38 $8d

	xor b                                            ; $41d2: $a8
	halt                                             ; $41d3: $76
	ld c, e                                          ; $41d4: $4b
	pop af                                           ; $41d5: $f1
	sbc d                                            ; $41d6: $9a
	inc a                                            ; $41d7: $3c
	ld d, b                                          ; $41d8: $50
	inc [hl]                                         ; $41d9: $34
	pop af                                           ; $41da: $f1
	ld e, h                                          ; $41db: $5c
	ld a, $38                                        ; $41dc: $3e $38
	ldh a, [rHDMA2]                                  ; $41de: $f0 $52
	ld h, d                                          ; $41e0: $62
	inc de                                           ; $41e1: $13
	pop af                                           ; $41e2: $f1
	adc l                                            ; $41e3: $8d
	ld d, c                                          ; $41e4: $51
	ld d, h                                          ; $41e5: $54
	ld c, c                                          ; $41e6: $49
	ld b, a                                          ; $41e7: $47
	ldh a, [$ec]                                     ; $41e8: $f0 $ec
	ld [hl], c                                       ; $41ea: $71
	dec a                                            ; $41eb: $3d
	ld b, l                                          ; $41ec: $45
	and b                                            ; $41ed: $a0
	cpl                                              ; $41ee: $2f
	ld b, e                                          ; $41ef: $43

jr_08b_41f0:
	pop af                                           ; $41f0: $f1
	sbc d                                            ; $41f1: $9a
	inc a                                            ; $41f2: $3c
	ld d, b                                          ; $41f3: $50
	dec sp                                           ; $41f4: $3b
	ccf                                              ; $41f5: $3f
	xor h                                            ; $41f6: $ac
	ld h, h                                          ; $41f7: $64
	sbc [hl]                                         ; $41f8: $9e
	xor h                                            ; $41f9: $ac
	di                                               ; $41fa: $f3
	jp nz, Jump_08b_5184                             ; $41fb: $c2 $84 $51

jr_08b_41fe:
	ld c, [hl]                                       ; $41fe: $4e
	ld b, c                                          ; $41ff: $41
	ld e, e                                          ; $4200: $5b
	ld d, [hl]                                       ; $4201: $56
	ld a, [hl-]                                      ; $4202: $3a
	inc a                                            ; $4203: $3c
	dec sp                                           ; $4204: $3b
	dec a                                            ; $4205: $3d
	dec sp                                           ; $4206: $3b
	ld e, l                                          ; $4207: $5d
	and c                                            ; $4208: $a1
	jr c, jr_08b_4243                                ; $4209: $38 $38

	db $ec                                           ; $420b: $ec
	ret c                                            ; $420c: $d8

	inc a                                            ; $420d: $3c
	xor b                                            ; $420e: $a8
	di                                               ; $420f: $f3
	jp nz, Jump_08b_4784                             ; $4210: $c2 $84 $47

	ld c, a                                          ; $4213: $4f
	inc [hl]                                         ; $4214: $34
	ldh a, [rHDMA2]                                  ; $4215: $f0 $52
	ld c, e                                          ; $4217: $4b
	ldh a, [c]                                       ; $4218: $f2
	ld b, b                                          ; $4219: $40
	di                                               ; $421a: $f3
	sub $44                                          ; $421b: $d6 $44
	adc l                                            ; $421d: $8d
	and b                                            ; $421e: $a0
	cpl                                              ; $421f: $2f
	ld b, e                                          ; $4220: $43
	jr c, @+$3a                                      ; $4221: $38 $38

	ld b, l                                          ; $4223: $45
	ld a, [hl-]                                      ; $4224: $3a
	ld [hl], h                                       ; $4225: $74
	xor b                                            ; $4226: $a8
	ld h, h                                          ; $4227: $64
	sbc [hl]                                         ; $4228: $9e
	ld c, e                                          ; $4229: $4b
	ld a, a                                          ; $422a: $7f
	sub b                                            ; $422b: $90
	ld c, d                                          ; $422c: $4a
	and b                                            ; $422d: $a0
	ld e, e                                          ; $422e: $5b
	ld d, [hl]                                       ; $422f: $56
	ld b, [hl]                                       ; $4230: $46
	xor h                                            ; $4231: $ac
	db $ec                                           ; $4232: $ec
	push bc                                          ; $4233: $c5
	halt                                             ; $4234: $76
	ld c, e                                          ; $4235: $4b
	ld h, a                                          ; $4236: $67
	ld d, l                                          ; $4237: $55
	adc l                                            ; $4238: $8d
	xor b                                            ; $4239: $a8
	ld d, d                                          ; $423a: $52
	dec a                                            ; $423b: $3d
	ldh a, [rHDMA3]                                  ; $423c: $f0 $53
	add hl, sp                                       ; $423e: $39
	ldh a, [rBGP]                                    ; $423f: $f0 $47
	ld c, a                                          ; $4241: $4f
	inc [hl]                                         ; $4242: $34

jr_08b_4243:
	ld b, [hl]                                       ; $4243: $46
	ld c, [hl]                                       ; $4244: $4e
	ld b, h                                          ; $4245: $44
	ld e, a                                          ; $4246: $5f
	add hl, sp                                       ; $4247: $39
	xor b                                            ; $4248: $a8
	ld b, b                                          ; $4249: $40
	ld c, l                                          ; $424a: $4d
	ld d, d                                          ; $424b: $52
	ld c, d                                          ; $424c: $4a
	pop af                                           ; $424d: $f1
	rra                                              ; $424e: $1f
	ld a, a                                          ; $424f: $7f
	ld c, d                                          ; $4250: $4a
	ld a, [hl-]                                      ; $4251: $3a
	and b                                            ; $4252: $a0
	cpl                                              ; $4253: $2f
	ld b, e                                          ; $4254: $43

Jump_08b_4255:
	ld c, b                                          ; $4255: $48
	db $ec                                           ; $4256: $ec
	ld sp, $8b34                                     ; $4257: $31 $34 $8b
	ldh a, [$72]                                     ; $425a: $f0 $72
	and b                                            ; $425c: $a0
	cpl                                              ; $425d: $2f
	ld d, h                                          ; $425e: $54
	add hl, sp                                       ; $425f: $39
	ld a, $3f                                        ; $4260: $3e $3f
	inc [hl]                                         ; $4262: $34
	halt                                             ; $4263: $76
	ld b, d                                          ; $4264: $42
	ldh a, [rAUD1ENV]                                ; $4265: $f0 $12
	sbc a                                            ; $4267: $9f
	ldh a, [rTIMA]                                   ; $4268: $f0 $05
	pop af                                           ; $426a: $f1
	rrca                                             ; $426b: $0f
	ld c, e                                          ; $426c: $4b
	inc de                                           ; $426d: $13
	db $f4                                           ; $426e: $f4
	ld [de], a                                       ; $426f: $12
	ld h, d                                          ; $4270: $62
	ldh a, [c]                                       ; $4271: $f2
	push de                                          ; $4272: $d5
	ld e, e                                          ; $4273: $5b
	dec a                                            ; $4274: $3d
	xor b                                            ; $4275: $a8
	jr c, jr_08b_42d7                                ; $4276: $38 $5f

	jr c, jr_08b_42d9                                ; $4278: $38 $5f

	ld b, [hl]                                       ; $427a: $46
	dec sp                                           ; $427b: $3b

jr_08b_427c:
	dec a                                            ; $427c: $3d
	ld b, l                                          ; $427d: $45
	add hl, sp                                       ; $427e: $39
	ld b, h                                          ; $427f: $44
	ld d, e                                          ; $4280: $53
	xor h                                            ; $4281: $ac
	ldh a, [$80]                                     ; $4282: $f0 $80
	push af                                          ; $4284: $f5
	ld l, e                                          ; $4285: $6b
	inc [hl]                                         ; $4286: $34
	ld l, e                                          ; $4287: $6b
	ld c, a                                          ; $4288: $4f
	ld a, [hl-]                                      ; $4289: $3a
	jr c, jr_08b_427c                                ; $428a: $38 $f0

	push hl                                          ; $428c: $e5
	ldh a, [rAUD1HIGH]                               ; $428d: $f0 $14
	ldh a, [$2a]                                     ; $428f: $f0 $2a
	ld b, a                                          ; $4291: $47
	inc de                                           ; $4292: $13
	ld a, [hl-]                                      ; $4293: $3a
	dec sp                                           ; $4294: $3b
	ccf                                              ; $4295: $3f
	db $ec                                           ; $4296: $ec
	push de                                          ; $4297: $d5
	and b                                            ; $4298: $a0
	cpl                                              ; $4299: $2f
	ld c, a                                          ; $429a: $4f
	add hl, sp                                       ; $429b: $39
	ld l, l                                          ; $429c: $6d
	ldh a, [$0d]                                     ; $429d: $f0 $0d
	inc [hl]                                         ; $429f: $34
	ld l, [hl]                                       ; $42a0: $6e
	ld d, a                                          ; $42a1: $57
	ldh a, [hDisp1_WX]                                     ; $42a2: $f0 $96
	ld a, c                                          ; $42a4: $79
	ld c, [hl]                                       ; $42a5: $4e
	ld c, a                                          ; $42a6: $4f
	ld b, d                                          ; $42a7: $42
	ld a, [hl-]                                      ; $42a8: $3a
	ld d, b                                          ; $42a9: $50
	xor h                                            ; $42aa: $ac
	ld l, d                                          ; $42ab: $6a
	ldh a, [$0d]                                     ; $42ac: $f0 $0d
	ld d, h                                          ; $42ae: $54
	ld b, b                                          ; $42af: $40
	pop af                                           ; $42b0: $f1
	sub c                                            ; $42b1: $91
	jr c, jr_08b_42f6                                ; $42b2: $38 $42

	ldh a, [$8d]                                     ; $42b4: $f0 $8d
	ld d, b                                          ; $42b6: $50
	ld a, [hl-]                                      ; $42b7: $3a
	jr c, jr_08b_42cd                                ; $42b8: $38 $13

	ldh a, [$e5]                                     ; $42ba: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $42bc: $f0 $14
	ldh a, [$2a]                                     ; $42be: $f0 $2a
	ld h, d                                          ; $42c0: $62
	pop af                                           ; $42c1: $f1
	sub b                                            ; $42c2: $90
	ld [hl], b                                       ; $42c3: $70
	ld a, $3f                                        ; $42c4: $3e $3f
	ld l, h                                          ; $42c6: $6c
	dec a                                            ; $42c7: $3d
	jr c, jr_08b_4312                                ; $42c8: $38 $48

	add hl, bc                                       ; $42ca: $09
	cpl                                              ; $42cb: $2f
	ld b, b                                          ; $42cc: $40

jr_08b_42cd:
	ld b, d                                          ; $42cd: $42
	ldh a, [rBGP]                                    ; $42ce: $f0 $47
	ld b, a                                          ; $42d0: $47
	ld c, e                                          ; $42d1: $4b
	inc [hl]                                         ; $42d2: $34
	ld [hl+], a                                      ; $42d3: $22
	ld e, h                                          ; $42d4: $5c
	dec sp                                           ; $42d5: $3b
	ld c, c                                          ; $42d6: $49

jr_08b_42d7:
	ld c, b                                          ; $42d7: $48
	add hl, bc                                       ; $42d8: $09

jr_08b_42d9:
	add hl, bc                                       ; $42d9: $09
	cpl                                              ; $42da: $2f
	ld [hl-], a                                      ; $42db: $32
	ldh a, [c]                                       ; $42dc: $f2
	dec l                                            ; $42dd: $2d
	di                                               ; $42de: $f3
	ld hl, sp-$10                                    ; $42df: $f8 $f0
	rst SubAFromHL                                          ; $42e1: $d7
	ld b, h                                          ; $42e2: $44
	xor b                                            ; $42e3: $a8
	ld b, [hl]                                       ; $42e4: $46
	ld e, c                                          ; $42e5: $59
	pop af                                           ; $42e6: $f1
	cp d                                             ; $42e7: $ba
	jr c, @+$3c                                      ; $42e8: $38 $3a

	ld [hl], h                                       ; $42ea: $74
	and e                                            ; $42eb: $a3
	cpl                                              ; $42ec: $2f
	ld h, $f0                                        ; $42ed: $26 $f0
	ld [hl-], a                                      ; $42ef: $32
	ld h, l                                          ; $42f0: $65
	ld [hl], e                                       ; $42f1: $73
	dec h                                            ; $42f2: $25
	add hl, bc                                       ; $42f3: $09
	ld b, [hl]                                       ; $42f4: $46
	dec sp                                           ; $42f5: $3b

jr_08b_42f6:
	inc [hl]                                         ; $42f6: $34
	db $eb                                           ; $42f7: $eb
	ccf                                              ; $42f8: $3f
	and b                                            ; $42f9: $a0
	cpl                                              ; $42fa: $2f
	ld b, e                                          ; $42fb: $43
	jr c, jr_08b_436c                                ; $42fc: $38 $6e

	inc [hl]                                         ; $42fe: $34
	jr c, jr_08b_4339                                ; $42ff: $38 $38

	ld c, b                                          ; $4301: $48
	and b                                            ; $4302: $a0
	ld b, [hl]                                       ; $4303: $46
	ld e, c                                          ; $4304: $59
	dec sp                                           ; $4305: $3b
	xor h                                            ; $4306: $ac
	ldh a, [$74]                                     ; $4307: $f0 $74
	ldh a, [$7a]                                     ; $4309: $f0 $7a
	ld b, a                                          ; $430b: $47
	ld h, h                                          ; $430c: $64
	ld d, l                                          ; $430d: $55
	ld c, l                                          ; $430e: $4d
	ld c, [hl]                                       ; $430f: $4e
	ldh a, [c]                                       ; $4310: $f2
	ld l, h                                          ; $4311: $6c

jr_08b_4312:
	and b                                            ; $4312: $a0
	cpl                                              ; $4313: $2f
	ld b, e                                          ; $4314: $43
	ld l, e                                          ; $4315: $6b
	ld b, h                                          ; $4316: $44
	ld e, a                                          ; $4317: $5f
	inc [hl]                                         ; $4318: $34
	ld l, d                                          ; $4319: $6a
	ld b, d                                          ; $431a: $42
	pop af                                           ; $431b: $f1
	ld b, [hl]                                       ; $431c: $46
	and c                                            ; $431d: $a1
	cpl                                              ; $431e: $2f
	ld [hl-], a                                      ; $431f: $32
	ldh a, [c]                                       ; $4320: $f2
	dec l                                            ; $4321: $2d
	di                                               ; $4322: $f3
	ld hl, sp-$10                                    ; $4323: $f8 $f0
	rst SubAFromHL                                          ; $4325: $d7
	ld b, h                                          ; $4326: $44
	xor b                                            ; $4327: $a8
	ld l, d                                          ; $4328: $6a
	ld l, b                                          ; $4329: $68
	ld c, a                                          ; $432a: $4f
	ldh a, [$f3]                                     ; $432b: $f0 $f3
	ld c, l                                          ; $432d: $4d
	dec a                                            ; $432e: $3d
	ld a, [hl-]                                      ; $432f: $3a
	ld [hl], h                                       ; $4330: $74
	and e                                            ; $4331: $a3
	ld b, [hl]                                       ; $4332: $46
	dec sp                                           ; $4333: $3b
	inc [hl]                                         ; $4334: $34
	ld [hl], b                                       ; $4335: $70
	ld [hl], c                                       ; $4336: $71
	ld b, c                                          ; $4337: $41
	ld c, b                                          ; $4338: $48

jr_08b_4339:
	and b                                            ; $4339: $a0
	cpl                                              ; $433a: $2f
	ld b, e                                          ; $433b: $43
	ld d, d                                          ; $433c: $52
	dec a                                            ; $433d: $3d
	inc [hl]                                         ; $433e: $34
	ldh a, [rRP]                                     ; $433f: $f0 $56
	inc a                                            ; $4341: $3c
	ld c, b                                          ; $4342: $48
	and b                                            ; $4343: $a0
	ld b, [hl]                                       ; $4344: $46
	ld e, c                                          ; $4345: $59
	dec sp                                           ; $4346: $3b
	inc [hl]                                         ; $4347: $34
	db $eb                                           ; $4348: $eb
	ld e, e                                          ; $4349: $5b
	ld b, a                                          ; $434a: $47
	inc de                                           ; $434b: $13
	ldh a, [$2a]                                     ; $434c: $f0 $2a
	ld b, a                                          ; $434e: $47
	ldh a, [rTMA]                                    ; $434f: $f0 $06
	ld h, e                                          ; $4351: $63
	ld a, [hl-]                                      ; $4352: $3a
	jr c, jr_08b_439a                                ; $4353: $38 $45

	ldh a, [c]                                       ; $4355: $f2
	ld a, l                                          ; $4356: $7d
	and b                                            ; $4357: $a0
	cpl                                              ; $4358: $2f
	ld b, e                                          ; $4359: $43
	ld l, e                                          ; $435a: $6b
	ld b, h                                          ; $435b: $44
	ld b, l                                          ; $435c: $45
	inc [hl]                                         ; $435d: $34
	xor $1e                                          ; $435e: $ee $1e
	pop af                                           ; $4360: $f1
	ld b, [hl]                                       ; $4361: $46
	xor h                                            ; $4362: $ac
	ldh a, [$58]                                     ; $4363: $f0 $58
	ldh a, [$0d]                                     ; $4365: $f0 $0d
	ld c, a                                          ; $4367: $4f
	ld c, b                                          ; $4368: $48
	and b                                            ; $4369: $a0
	cpl                                              ; $436a: $2f
	ld [hl-], a                                      ; $436b: $32

jr_08b_436c:
	ldh a, [c]                                       ; $436c: $f2
	dec l                                            ; $436d: $2d
	di                                               ; $436e: $f3
	ld hl, sp-$10                                    ; $436f: $f8 $f0
	rst SubAFromHL                                          ; $4371: $d7
	ld b, h                                          ; $4372: $44
	xor b                                            ; $4373: $a8
	ld a, [hl-]                                      ; $4374: $3a
	ld b, c                                          ; $4375: $41
	inc a                                            ; $4376: $3c
	jr c, jr_08b_43e7                                ; $4377: $38 $6e

	ld a, [hl-]                                      ; $4379: $3a
	db $ed                                           ; $437a: $ed
	rst AddAOntoHL                                          ; $437b: $ef
	and e                                            ; $437c: $a3
	cpl                                              ; $437d: $2f
	ld b, e                                          ; $437e: $43
	jr c, jr_08b_43b9                                ; $437f: $38 $38

	inc a                                            ; $4381: $3c
	ldh a, [rSB]                                     ; $4382: $f0 $01
	ld b, c                                          ; $4384: $41
	ld b, a                                          ; $4385: $47
	ld c, b                                          ; $4386: $48
	and b                                            ; $4387: $a0
	ld b, [hl]                                       ; $4388: $46
	ld e, c                                          ; $4389: $59
	dec sp                                           ; $438a: $3b
	inc [hl]                                         ; $438b: $34
	xor $1d                                          ; $438c: $ee $1d
	ld b, d                                          ; $438e: $42
	ldh a, [rBGP]                                    ; $438f: $f0 $47
	ldh a, [$2a]                                     ; $4391: $f0 $2a
	ld b, a                                          ; $4393: $47
	inc de                                           ; $4394: $13
	ldh a, [$2a]                                     ; $4395: $f0 $2a
	ld b, a                                          ; $4397: $47
	ldh a, [rTMA]                                    ; $4398: $f0 $06

jr_08b_439a:
	ld h, e                                          ; $439a: $63
	ld a, [hl-]                                      ; $439b: $3a
	jr c, jr_08b_43e3                                ; $439c: $38 $45

	ldh a, [c]                                       ; $439e: $f2
	ld a, l                                          ; $439f: $7d
	and b                                            ; $43a0: $a0
	cpl                                              ; $43a1: $2f
	ld b, e                                          ; $43a2: $43
	ld l, l                                          ; $43a3: $6d
	ldh a, [$65]                                     ; $43a4: $f0 $65
	inc [hl]                                         ; $43a6: $34
	ld a, [hl-]                                      ; $43a7: $3a
	ld b, c                                          ; $43a8: $41
	ld a, [hl-]                                      ; $43a9: $3a
	ld b, c                                          ; $43aa: $41
	ld b, h                                          ; $43ab: $44
	ld b, l                                          ; $43ac: $45
	scf                                              ; $43ad: $37
	inc de                                           ; $43ae: $13
	db $ed                                           ; $43af: $ed
	ldh a, [rSCY]                                    ; $43b0: $f0 $42
	sub c                                            ; $43b2: $91
	ld d, a                                          ; $43b3: $57
	pop af                                           ; $43b4: $f1
	ld b, h                                          ; $43b5: $44
	inc a                                            ; $43b6: $3c
	and c                                            ; $43b7: $a1
	cpl                                              ; $43b8: $2f

jr_08b_43b9:
	ld [hl-], a                                      ; $43b9: $32
	ldh a, [$98]                                     ; $43ba: $f0 $98
	inc a                                            ; $43bc: $3c
	ld d, e                                          ; $43bd: $53
	inc [hl]                                         ; $43be: $34
	halt                                             ; $43bf: $76
	ld h, d                                          ; $43c0: $62
	inc de                                           ; $43c1: $13
	db $ed                                           ; $43c2: $ed
	ld bc, $4e38                                     ; $43c3: $01 $38 $4e
	db $ed                                           ; $43c6: $ed
	rst AddAOntoHL                                          ; $43c7: $ef
	ld d, e                                          ; $43c8: $53
	ld d, c                                          ; $43c9: $51
	ld c, [hl]                                       ; $43ca: $4e
	and e                                            ; $43cb: $a3
	db $ec                                           ; $43cc: $ec
	jp nz, $f1a8                                     ; $43cd: $c2 $a8 $f1

	adc l                                            ; $43d0: $8d
	ld a, $3d                                        ; $43d1: $3e $3d
	adc l                                            ; $43d3: $8d
	and b                                            ; $43d4: $a0
	cpl                                              ; $43d5: $2f
	ld b, e                                          ; $43d6: $43
	ld l, e                                          ; $43d7: $6b
	ld b, h                                          ; $43d8: $44
	ld b, l                                          ; $43d9: $45
	inc [hl]                                         ; $43da: $34
	adc e                                            ; $43db: $8b
	ldh a, [$72]                                     ; $43dc: $f0 $72
	xor b                                            ; $43de: $a8
	ld l, e                                          ; $43df: $6b
	inc a                                            ; $43e0: $3c
	ldh a, [rAUD2LEN]                                ; $43e1: $f0 $16

jr_08b_43e3:
	inc a                                            ; $43e3: $3c
	and c                                            ; $43e4: $a1
	ld a, [hl-]                                      ; $43e5: $3a
	ld b, c                                          ; $43e6: $41

jr_08b_43e7:
	ld b, d                                          ; $43e7: $42
	db $ed                                           ; $43e8: $ed
	pop af                                           ; $43e9: $f1
	inc a                                            ; $43ea: $3c
	inc de                                           ; $43eb: $13
	ldh a, [$2d]                                     ; $43ec: $f0 $2d
	ld d, b                                          ; $43ee: $50
	ld b, c                                          ; $43ef: $41
	ld e, l                                          ; $43f0: $5d
	ld e, d                                          ; $43f1: $5a
	ld e, b                                          ; $43f2: $58
	xor l                                            ; $43f3: $ad
	ld h, h                                          ; $43f4: $64
	sbc [hl]                                         ; $43f5: $9e
	ld c, c                                          ; $43f6: $49
	ldh a, [rAUDVOL]                                 ; $43f7: $f0 $24
	ld d, e                                          ; $43f9: $53
	ld a, $3d                                        ; $43fa: $3e $3d
	jr c, jr_08b_4439                                ; $43fc: $38 $3b

	ccf                                              ; $43fe: $3f
	jr c, jr_08b_443a                                ; $43ff: $38 $39

	inc de                                           ; $4401: $13
	pop hl                                           ; $4402: $e1
	ld h, d                                          ; $4403: $62
	ldh a, [$a7]                                     ; $4404: $f0 $a7
	ld c, l                                          ; $4406: $4d
	ccf                                              ; $4407: $3f
	ld a, b                                          ; $4408: $78
	dec a                                            ; $4409: $3d
	adc l                                            ; $440a: $8d
	and b                                            ; $440b: $a0
	cpl                                              ; $440c: $2f
	ld b, e                                          ; $440d: $43
	ld h, h                                          ; $440e: $64
	sbc [hl]                                         ; $440f: $9e
	xor h                                            ; $4410: $ac
	ld b, b                                          ; $4411: $40
	ld c, l                                          ; $4412: $4d
	ld c, e                                          ; $4413: $4b
	db $ed                                           ; $4414: $ed
	pop af                                           ; $4415: $f1
	db $ec                                           ; $4416: $ec
	ret c                                            ; $4417: $d8

	ld b, l                                          ; $4418: $45
	xor b                                            ; $4419: $a8
	pop af                                           ; $441a: $f1
	db $fc                                           ; $441b: $fc
	ldh a, [rOCPS]                                   ; $441c: $f0 $6a
	ld b, d                                          ; $441e: $42
	pop hl                                           ; $441f: $e1
	ld a, [hl-]                                      ; $4420: $3a
	ld d, b                                          ; $4421: $50
	xor h                                            ; $4422: $ac
	sub c                                            ; $4423: $91
	ldh a, [$59]                                     ; $4424: $f0 $59
	ld b, d                                          ; $4426: $42
	ld h, a                                          ; $4427: $67
	di                                               ; $4428: $f3
	ld b, e                                          ; $4429: $43
	db $ec                                           ; $442a: $ec
	ret c                                            ; $442b: $d8

	inc a                                            ; $442c: $3c
	and b                                            ; $442d: $a0
	ld b, b                                          ; $442e: $40
	add hl, sp                                       ; $442f: $39
	inc a                                            ; $4430: $3c
	jr c, jr_08b_4467                                ; $4431: $38 $34

	ldh a, [$d7]                                     ; $4433: $f0 $d7
	ld c, d                                          ; $4435: $4a
	ldh a, [$d7]                                     ; $4436: $f0 $d7
	pop af                                           ; $4438: $f1

jr_08b_4439:
	sub c                                            ; $4439: $91

jr_08b_443a:
	inc de                                           ; $443a: $13
	ld a, $3f                                        ; $443b: $3e $3f
	ld c, a                                          ; $443d: $4f
	db $ec                                           ; $443e: $ec
	dec b                                            ; $443f: $05
	adc l                                            ; $4440: $8d
	and b                                            ; $4441: $a0
	cpl                                              ; $4442: $2f
	ld b, e                                          ; $4443: $43
	ldh a, [$d7]                                     ; $4444: $f0 $d7
	pop af                                           ; $4446: $f1
	sub c                                            ; $4447: $91
	xor l                                            ; $4448: $ad
	ld l, e                                          ; $4449: $6b
	ld c, d                                          ; $444a: $4a
	ld b, h                                          ; $444b: $44
	ld b, l                                          ; $444c: $45
	and b                                            ; $444d: $a0
	ld h, h                                          ; $444e: $64
	jr c, jr_08b_4485                                ; $444f: $38 $34

	ldh a, [rAUDVOL]                                 ; $4451: $f0 $24
	add b                                            ; $4453: $80
	ld e, l                                          ; $4454: $5d
	dec a                                            ; $4455: $3d
	adc l                                            ; $4456: $8d
	xor b                                            ; $4457: $a8
	ld e, e                                          ; $4458: $5b
	ld d, [hl]                                       ; $4459: $56
	ld b, [hl]                                       ; $445a: $46
	xor h                                            ; $445b: $ac
	halt                                             ; $445c: $76
	ld c, e                                          ; $445d: $4b
	pop af                                           ; $445e: $f1
	nop                                              ; $445f: $00
	pop af                                           ; $4460: $f1
	ld l, b                                          ; $4461: $68
	ld b, a                                          ; $4462: $47
	inc a                                            ; $4463: $3c
	ld e, [hl]                                       ; $4464: $5e
	ld c, [hl]                                       ; $4465: $4e
	inc a                                            ; $4466: $3c

jr_08b_4467:
	ld d, b                                          ; $4467: $50
	ld a, [hl-]                                      ; $4468: $3a
	and b                                            ; $4469: $a0
	db $eb                                           ; $446a: $eb
	ld h, h                                          ; $446b: $64
	xor b                                            ; $446c: $a8
	db $eb                                           ; $446d: $eb
	cp a                                             ; $446e: $bf
	ld c, d                                          ; $446f: $4a
	ld e, c                                          ; $4470: $59
	ld d, c                                          ; $4471: $51
	dec [hl]                                         ; $4472: $35
	inc hl                                           ; $4473: $23
	inc de                                           ; $4474: $13
	ld b, [hl]                                       ; $4475: $46
	ld c, l                                          ; $4476: $4d
	ld c, b                                          ; $4477: $48
	inc [hl]                                         ; $4478: $34
	ld e, d                                          ; $4479: $5a
	dec sp                                           ; $447a: $3b
	inc a                                            ; $447b: $3c
	ld c, d                                          ; $447c: $4a
	ld c, b                                          ; $447d: $48
	and c                                            ; $447e: $a1
	cpl                                              ; $447f: $2f
	ld b, e                                          ; $4480: $43
	ld h, h                                          ; $4481: $64
	inc [hl]                                         ; $4482: $34
	ld h, h                                          ; $4483: $64
	sbc [hl]                                         ; $4484: $9e

jr_08b_4485:
	ld c, e                                          ; $4485: $4b
	inc [hl]                                         ; $4486: $34
	sub c                                            ; $4487: $91
	ld d, a                                          ; $4488: $57
	pop af                                           ; $4489: $f1
	ld b, h                                          ; $448a: $44
	and d                                            ; $448b: $a2
	sub c                                            ; $448c: $91
	ld d, a                                          ; $448d: $57
	pop af                                           ; $448e: $f1
	ld b, h                                          ; $448f: $44
	ld c, c                                          ; $4490: $49
	ld c, e                                          ; $4491: $4b
	ldh a, [rHDMA5]                                  ; $4492: $f0 $55
	ldh a, [rBCPS]                                   ; $4494: $f0 $68
	ld c, h                                          ; $4496: $4c
	xor b                                            ; $4497: $a8
	ld b, [hl]                                       ; $4498: $46
	ld c, l                                          ; $4499: $4d
	ld c, e                                          ; $449a: $4b
	ld h, e                                          ; $449b: $63
	ldh a, [rAUD1SWEEP]                              ; $449c: $f0 $10
	ld c, c                                          ; $449e: $49
	ld e, e                                          ; $449f: $5b
	ld d, [hl]                                       ; $44a0: $56
	ld a, [hl-]                                      ; $44a1: $3a
	ld d, l                                          ; $44a2: $55
	ccf                                              ; $44a3: $3f
	xor h                                            ; $44a4: $ac
	ret                                              ; $44a5: $c9


	pop af                                           ; $44a6: $f1
	ld d, $38                                        ; $44a7: $16 $38
	ld c, d                                          ; $44a9: $4a
	dec a                                            ; $44aa: $3d
	inc a                                            ; $44ab: $3c
	ld d, b                                          ; $44ac: $50
	ld c, b                                          ; $44ad: $48
	and b                                            ; $44ae: $a0
	cpl                                              ; $44af: $2f
	ld b, e                                          ; $44b0: $43
	pop af                                           ; $44b1: $f1
	ld d, $f0                                        ; $44b2: $16 $f0
	bit 1, h                                         ; $44b4: $cb $4c
	xor l                                            ; $44b6: $ad
	ldh a, [$34]                                     ; $44b7: $f0 $34
	ld b, a                                          ; $44b9: $47
	inc [hl]                                         ; $44ba: $34
	db $ec                                           ; $44bb: $ec
	ld [$ad58], sp                                   ; $44bc: $08 $58 $ad
	ld c, d                                          ; $44bf: $4a
	inc [hl]                                         ; $44c0: $34
	halt                                             ; $44c1: $76
	ld b, a                                          ; $44c2: $47
	ldh a, [rAUD2LEN]                                ; $44c3: $f0 $16
	dec sp                                           ; $44c5: $3b
	ccf                                              ; $44c6: $3f
	ld l, e                                          ; $44c7: $6b
	and c                                            ; $44c8: $a1
	db $ed                                           ; $44c9: $ed
	ld c, $3c                                        ; $44ca: $0e $3c
	ld d, b                                          ; $44cc: $50
	xor h                                            ; $44cd: $ac
	ldh a, [$0c]                                     ; $44ce: $f0 $0c
	db $ec                                           ; $44d0: $ec
	ld l, $5d                                        ; $44d1: $2e $5d
	ld e, d                                          ; $44d3: $5a
	xor h                                            ; $44d4: $ac
	ld b, [hl]                                       ; $44d5: $46
	ld a, [hl-]                                      ; $44d6: $3a
	dec a                                            ; $44d7: $3d
	dec sp                                           ; $44d8: $3b
	ccf                                              ; $44d9: $3f
	inc [hl]                                         ; $44da: $34
	pop af                                           ; $44db: $f1
	ld l, [hl]                                       ; $44dc: $6e
	ldh a, [$cf]                                     ; $44dd: $f0 $cf
	ld c, c                                          ; $44df: $49
	ldh a, [$b2]                                     ; $44e0: $f0 $b2
	ldh a, [$fe]                                     ; $44e2: $f0 $fe
	ldh a, [$28]                                     ; $44e4: $f0 $28
	inc de                                           ; $44e6: $13
	ldh a, [$2d]                                     ; $44e7: $f0 $2d
	dec sp                                           ; $44e9: $3b
	ccf                                              ; $44ea: $3f
	ld b, c                                          ; $44eb: $41
	ld c, d                                          ; $44ec: $4a
	ld a, $66                                        ; $44ed: $3e $66
	and c                                            ; $44ef: $a1
	cpl                                              ; $44f0: $2f
	ld b, e                                          ; $44f1: $43
	ld d, d                                          ; $44f2: $52

jr_08b_44f3:
	ld [hl], h                                       ; $44f3: $74
	inc [hl]                                         ; $44f4: $34
	ldh a, [$2d]                                     ; $44f5: $f0 $2d
	dec sp                                           ; $44f7: $3b
	ccf                                              ; $44f8: $3f
	ld c, [hl]                                       ; $44f9: $4e
	ld c, c                                          ; $44fa: $49
	add d                                            ; $44fb: $82
	ld e, [hl]                                       ; $44fc: $5e
	ld a, e                                          ; $44fd: $7b
	xor h                                            ; $44fe: $ac
	ldh a, [$2d]                                     ; $44ff: $f0 $2d
	dec sp                                           ; $4501: $3b
	ccf                                              ; $4502: $3f
	ld c, [hl]                                       ; $4503: $4e
	ld a, $48                                        ; $4504: $3e $48
	xor h                                            ; $4506: $ac
	db $ec                                           ; $4507: $ec
	dec b                                            ; $4508: $05
	ld c, c                                          ; $4509: $49
	add d                                            ; $450a: $82
	ld e, [hl]                                       ; $450b: $5e
	ld a, e                                          ; $450c: $7b
	xor h                                            ; $450d: $ac
	db $ec                                           ; $450e: $ec
	dec b                                            ; $450f: $05
	ld a, [hl-]                                      ; $4510: $3a
	ld [hl], h                                       ; $4511: $74
	and b                                            ; $4512: $a0

Jump_08b_4513:
	db $ec                                           ; $4513: $ec
	ldh a, [$a8]                                     ; $4514: $f0 $a8
	ld l, d                                          ; $4516: $6a
	ldh a, [$0d]                                     ; $4517: $f0 $0d
	ld e, b                                          ; $4519: $58
	inc [hl]                                         ; $451a: $34
	ld e, d                                          ; $451b: $5a
	dec sp                                           ; $451c: $3b
	inc a                                            ; $451d: $3c
	ldh a, [$a7]                                     ; $451e: $f0 $a7
	ld c, l                                          ; $4520: $4d
	ccf                                              ; $4521: $3f
	dec sp                                           ; $4522: $3b
	ccf                                              ; $4523: $3f
	ld b, l                                          ; $4524: $45
	and b                                            ; $4525: $a0
	cpl                                              ; $4526: $2f
	ld b, e                                          ; $4527: $43
	ld e, [hl]                                       ; $4528: $5e
	ld e, c                                          ; $4529: $59
	dec sp                                           ; $452a: $3b
	inc [hl]                                         ; $452b: $34
	halt                                             ; $452c: $76
	ld d, e                                          ; $452d: $53
	ld e, c                                          ; $452e: $59
	scf                                              ; $452f: $37
	inc de                                           ; $4530: $13
	ld l, e                                          ; $4531: $6b
	ld c, d                                          ; $4532: $4a
	ld b, h                                          ; $4533: $44
	ld b, l                                          ; $4534: $45
	and b                                            ; $4535: $a0
	ld c, h                                          ; $4536: $4c
	add l                                            ; $4537: $85
	jr c, jr_08b_4572                                ; $4538: $38 $38

	ld e, e                                          ; $453a: $5b
	ld d, [hl]                                       ; $453b: $56
	ld b, c                                          ; $453c: $41
	inc a                                            ; $453d: $3c
	dec [hl]                                         ; $453e: $35
	rla                                              ; $453f: $17
	ld h, h                                          ; $4540: $64
	ldh a, [$c8]                                     ; $4541: $f0 $c8
	pop af                                           ; $4543: $f1
	dec [hl]                                         ; $4544: $35
	jr c, jr_08b_44f3                                ; $4545: $38 $ac

	ld e, d                                          ; $4547: $5a
	dec sp                                           ; $4548: $3b
	inc a                                            ; $4549: $3c
	ldh a, [$a7]                                     ; $454a: $f0 $a7
	ld c, l                                          ; $454c: $4d
	ccf                                              ; $454d: $3f
	dec sp                                           ; $454e: $3b
	ccf                                              ; $454f: $3f
	add l                                            ; $4550: $85
	and b                                            ; $4551: $a0
	cpl                                              ; $4552: $2f
	ld b, e                                          ; $4553: $43
	ld h, h                                          ; $4554: $64
	jr c, jr_08b_458b                                ; $4555: $38 $34

	ldh a, [$5d]                                     ; $4557: $f0 $5d
	ld a, [hl-]                                      ; $4559: $3a
	pop af                                           ; $455a: $f1
	dec l                                            ; $455b: $2d
	ld b, h                                          ; $455c: $44
	ld d, c                                          ; $455d: $51
	ld a, [hl-]                                      ; $455e: $3a
	ld b, l                                          ; $455f: $45
	scf                                              ; $4560: $37
	inc de                                           ; $4561: $13
	ld l, h                                          ; $4562: $6c

Call_08b_4563:
	ld b, c                                          ; $4563: $41
	ld a, [hl-]                                      ; $4564: $3a
	ld [hl], d                                       ; $4565: $72
	ccf                                              ; $4566: $3f
	ld c, [hl]                                       ; $4567: $4e
	db $ec                                           ; $4568: $ec
	ret c                                            ; $4569: $d8

	inc a                                            ; $456a: $3c
	and b                                            ; $456b: $a0
	xor $1d                                          ; $456c: $ee $1d
	ld a, $3f                                        ; $456e: $3e $3f
	ld d, l                                          ; $4570: $55
	ld c, l                                          ; $4571: $4d

jr_08b_4572:
	ld a, [hl-]                                      ; $4572: $3a
	jr c, jr_08b_45be                                ; $4573: $38 $49

	xor h                                            ; $4575: $ac
	add a                                            ; $4576: $87
	pop af                                           ; $4577: $f1
	dec l                                            ; $4578: $2d
	ld c, d                                          ; $4579: $4a
	ldh a, [c]                                       ; $457a: $f2
	adc c                                            ; $457b: $89
	ld e, h                                          ; $457c: $5c
	sub h                                            ; $457d: $94
	ld d, c                                          ; $457e: $51
	ld h, e                                          ; $457f: $63
	ld b, l                                          ; $4580: $45
	and b                                            ; $4581: $a0
	cpl                                              ; $4582: $2f
	ld b, e                                          ; $4583: $43
	ld h, e                                          ; $4584: $63
	inc a                                            ; $4585: $3c
	dec sp                                           ; $4586: $3b
	dec a                                            ; $4587: $3d
	inc [hl]                                         ; $4588: $34
	ld h, e                                          ; $4589: $63
	inc a                                            ; $458a: $3c

jr_08b_458b:
	dec sp                                           ; $458b: $3b
	dec a                                            ; $458c: $3d
	inc a                                            ; $458d: $3c
	ld d, b                                          ; $458e: $50
	inc de                                           ; $458f: $13
	ld b, b                                          ; $4590: $40
	ld c, l                                          ; $4591: $4d
	ld b, h                                          ; $4592: $44
	ld e, l                                          ; $4593: $5d
	ld c, e                                          ; $4594: $4b
	inc [hl]                                         ; $4595: $34
	ld l, [hl]                                       ; $4596: $6e
	ld [hl], c                                       ; $4597: $71
	ccf                                              ; $4598: $3f
	ld d, l                                          ; $4599: $55
	ld c, l                                          ; $459a: $4d
	and b                                            ; $459b: $a0
	db $ed                                           ; $459c: $ed
	ld b, c                                          ; $459d: $41
	scf                                              ; $459e: $37
	inc de                                           ; $459f: $13
	ldh a, [$2b]                                     ; $45a0: $f0 $2b
	ldh a, [rWX]                                     ; $45a2: $f0 $4b
	ld e, c                                          ; $45a4: $59
	db $ec                                           ; $45a5: $ec
	rla                                              ; $45a6: $17
	dec [hl]                                         ; $45a7: $35
	pop af                                           ; $45a8: $f1
	ld a, [de]                                       ; $45a9: $1a
	pop af                                           ; $45aa: $f1
	inc c                                            ; $45ab: $0c
	ld b, h                                          ; $45ac: $44
	ld b, l                                          ; $45ad: $45
	and b                                            ; $45ae: $a0
	cpl                                              ; $45af: $2f
	ld b, e                                          ; $45b0: $43
	xor $2d                                          ; $45b1: $ee $2d
	xor $2d                                          ; $45b3: $ee $2d
	xor l                                            ; $45b5: $ad
	ld l, d                                          ; $45b6: $6a
	ldh a, [$0d]                                     ; $45b7: $f0 $0d
	inc [hl]                                         ; $45b9: $34
	db $ed                                           ; $45ba: $ed
	halt                                             ; $45bb: $76
	ld d, c                                          ; $45bc: $51
	ld c, [hl]                                       ; $45bd: $4e

jr_08b_45be:
	ld b, l                                          ; $45be: $45
	ld c, b                                          ; $45bf: $48
	and b                                            ; $45c0: $a0
	xor $1d                                          ; $45c1: $ee $1d
	ld b, h                                          ; $45c3: $44
	inc a                                            ; $45c4: $3c
	ld d, b                                          ; $45c5: $50
	ld c, h                                          ; $45c6: $4c
	xor b                                            ; $45c7: $a8
	ld e, e                                          ; $45c8: $5b
	ld d, [hl]                                       ; $45c9: $56
	inc [hl]                                         ; $45ca: $34
	db $ed                                           ; $45cb: $ed
	halt                                             ; $45cc: $76
	sbc c                                            ; $45cd: $99
	dec sp                                           ; $45ce: $3b
	ccf                                              ; $45cf: $3f
	ld c, [hl]                                       ; $45d0: $4e
	inc a                                            ; $45d1: $3c
	ld d, b                                          ; $45d2: $50
	and b                                            ; $45d3: $a0
	cpl                                              ; $45d4: $2f
	ld b, e                                          ; $45d5: $43
	ld c, e                                          ; $45d6: $4b
	ld [hl], h                                       ; $45d7: $74
	ld e, c                                          ; $45d8: $59
	xor b                                            ; $45d9: $a8
	ldh a, [$f3]                                     ; $45da: $f0 $f3
	ld c, l                                          ; $45dc: $4d
	dec a                                            ; $45dd: $3d
	ld c, b                                          ; $45de: $48
	and b                                            ; $45df: $a0
	cpl                                              ; $45e0: $2f
	ld [hl-], a                                      ; $45e1: $32
	xor $1d                                          ; $45e2: $ee $1d
	ld b, h                                          ; $45e4: $44
	inc a                                            ; $45e5: $3c
	ld d, b                                          ; $45e6: $50
	ld a, [hl-]                                      ; $45e7: $3a
	xor b                                            ; $45e8: $a8
	ldh a, [$9b]                                     ; $45e9: $f0 $9b
	jr c, jr_08b_4626                                ; $45eb: $38 $39

	ld h, c                                          ; $45ed: $61
	ld b, a                                          ; $45ee: $47
	inc [hl]                                         ; $45ef: $34
	db $ed                                           ; $45f0: $ed
	halt                                             ; $45f1: $76
	ld a, $3a                                        ; $45f2: $3e $3a
	ld d, l                                          ; $45f4: $55
	ld h, c                                          ; $45f5: $61
	ld d, [hl]                                       ; $45f6: $56
	xor b                                            ; $45f7: $a8
	ld c, d                                          ; $45f8: $4a
	ld c, a                                          ; $45f9: $4f
	inc [hl]                                         ; $45fa: $34
	halt                                             ; $45fb: $76
	inc [hl]                                         ; $45fc: $34
	ldh a, [$f7]                                     ; $45fd: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $45ff: $f0 $17
	ld b, d                                          ; $4601: $42
	db $ed                                           ; $4602: $ed
	halt                                             ; $4603: $76
	ldh a, [rDMA]                                    ; $4604: $f0 $46
	ldh a, [c]                                       ; $4606: $f2
	ld [hl], h                                       ; $4607: $74
	inc de                                           ; $4608: $13

Call_08b_4609:
	db $ec                                           ; $4609: $ec
	dec b                                            ; $460a: $05
	ld b, l                                          ; $460b: $45
	dec [hl]                                         ; $460c: $35
	db $eb                                           ; $460d: $eb
	ld e, c                                          ; $460e: $59
	ld c, b                                          ; $460f: $48
	and e                                            ; $4610: $a3
	add hl, bc                                       ; $4611: $09
	cpl                                              ; $4612: $2f
	ld [hl-], a                                      ; $4613: $32
	ld d, h                                          ; $4614: $54
	ld b, c                                          ; $4615: $41
	ld a, [hl-]                                      ; $4616: $3a
	ldh a, [c]                                       ; $4617: $f2
	ld h, e                                          ; $4618: $63
	pop af                                           ; $4619: $f1
	jp Jump_08b_61ac                                 ; $461a: $c3 $ac $61


	ld h, [hl]                                       ; $461d: $66
	ld e, a                                          ; $461e: $5f
	jr c, @+$51                                      ; $461f: $38 $4f

	ld b, c                                          ; $4621: $41
	ld b, l                                          ; $4622: $45
	xor b                                            ; $4623: $a8
	ldh a, [rSCY]                                    ; $4624: $f0 $42

jr_08b_4626:
	dec sp                                           ; $4626: $3b
	ld c, b                                          ; $4627: $48
	inc [hl]                                         ; $4628: $34
	halt                                             ; $4629: $76
	dec sp                                           ; $462a: $3b
	ccf                                              ; $462b: $3f
	pop af                                           ; $462c: $f1
	xor d                                            ; $462d: $aa
	pop af                                           ; $462e: $f1
	and e                                            ; $462f: $a3
	and e                                            ; $4630: $a3
	cpl                                              ; $4631: $2f
	ld h, $f0                                        ; $4632: $26 $f0
	and [hl]                                         ; $4634: $a6
	ldh a, [rSC]                                     ; $4635: $f0 $02
	ld [hl], e                                       ; $4637: $73
	dec h                                            ; $4638: $25
	add hl, bc                                       ; $4639: $09
	cpl                                              ; $463a: $2f
	db $ed                                           ; $463b: $ed
	ld l, [hl]                                       ; $463c: $6e
	ldh a, [c]                                       ; $463d: $f2
	inc b                                            ; $463e: $04
	inc [hl]                                         ; $463f: $34
	pop af                                           ; $4640: $f1
	nop                                              ; $4641: $00
	pop af                                           ; $4642: $f1
	ld l, b                                          ; $4643: $68
	ld b, a                                          ; $4644: $47
	xor e                                            ; $4645: $ab
	ldh a, [$98]                                     ; $4646: $f0 $98
	ld b, h                                          ; $4648: $44
	ld e, a                                          ; $4649: $5f
	xor l                                            ; $464a: $ad
	ld b, [hl]                                       ; $464b: $46
	ld c, l                                          ; $464c: $4d
	inc [hl]                                         ; $464d: $34
	ld a, [hl-]                                      ; $464e: $3a
	ld b, c                                          ; $464f: $41
	inc a                                            ; $4650: $3c
	ldh a, [$5d]                                     ; $4651: $f0 $5d
	ld a, [hl-]                                      ; $4653: $3a
	db $f4                                           ; $4654: $f4
	inc b                                            ; $4655: $04
	di                                               ; $4656: $f3
	db $e3                                           ; $4657: $e3
	inc de                                           ; $4658: $13
	ldh a, [rHDMA1]                                  ; $4659: $f0 $51
	dec sp                                           ; $465b: $3b
	ccf                                              ; $465c: $3f
	ld c, [hl]                                       ; $465d: $4e
	sub a                                            ; $465e: $97
	and e                                            ; $465f: $a3
	ld b, [hl]                                       ; $4660: $46
	ld a, [hl-]                                      ; $4661: $3a
	dec a                                            ; $4662: $3d
	xor h                                            ; $4663: $ac
	ld de, $4c12                                     ; $4664: $11 $12 $4c
	and b                                            ; $4667: $a0
	cpl                                              ; $4668: $2f
	ld b, e                                          ; $4669: $43
	rst JumpTable                                          ; $466a: $c7
	ld b, h                                          ; $466b: $44
	ld e, l                                          ; $466c: $5d
	ld e, d                                          ; $466d: $5a
	xor b                                            ; $466e: $a8
	ldh a, [rRP]                                     ; $466f: $f0 $56
	ld c, e                                          ; $4671: $4b
	ld c, b                                          ; $4672: $48
	and b                                            ; $4673: $a0
	ret                                              ; $4674: $c9


	inc [hl]                                         ; $4675: $34
	ldh a, [rOBP0]                                   ; $4676: $f0 $48
	inc a                                            ; $4678: $3c
	ld a, [hl-]                                      ; $4679: $3a
	jr c, jr_08b_46c6                                ; $467a: $38 $4a

	scf                                              ; $467c: $37
	inc de                                           ; $467d: $13
	db $f4                                           ; $467e: $f4
	inc l                                            ; $467f: $2c
	db $f4                                           ; $4680: $f4
	ld a, [bc]                                       ; $4681: $0a
	ld d, e                                          ; $4682: $53
	sub h                                            ; $4683: $94
	ld c, [hl]                                       ; $4684: $4e

jr_08b_4685:
	db $ec                                           ; $4685: $ec
	ret c                                            ; $4686: $d8

	ld b, d                                          ; $4687: $42
	and b                                            ; $4688: $a0
	cpl                                              ; $4689: $2f
	ld b, e                                          ; $468a: $43
	xor $10                                          ; $468b: $ee $10
	xor b                                            ; $468d: $a8
	ld l, l                                          ; $468e: $6d
	ldh a, [$65]                                     ; $468f: $f0 $65
	inc [hl]                                         ; $4691: $34
	ld l, e                                          ; $4692: $6b
	ld h, d                                          ; $4693: $62
	ld c, b                                          ; $4694: $48
	and b                                            ; $4695: $a0
	ld [$a8ce], a                                    ; $4696: $ea $ce $a8
	ld c, a                                          ; $4699: $4f
	add hl, sp                                       ; $469a: $39
	ldh a, [rHDMA4]                                  ; $469b: $f0 $54
	ld a, $4a                                        ; $469d: $3e $4a
	db $ed                                           ; $469f: $ed
	ld h, e                                          ; $46a0: $63
	ld d, e                                          ; $46a1: $53
	sub h                                            ; $46a2: $94
	ld c, [hl]                                       ; $46a3: $4e
	inc a                                            ; $46a4: $3c
	ld d, b                                          ; $46a5: $50
	inc de                                           ; $46a6: $13
	ldh a, [rHDMA4]                                  ; $46a7: $f0 $54
	ld a, $f4                                        ; $46a9: $3e $f4
	ld h, h                                          ; $46ab: $64
	dec sp                                           ; $46ac: $3b
	ccf                                              ; $46ad: $3f
	ld a, [hl-]                                      ; $46ae: $3a
	ld e, b                                          ; $46af: $58
	jr c, @-$5e                                      ; $46b0: $38 $a0

	cpl                                              ; $46b2: $2f
	ld b, e                                          ; $46b3: $43
	xor $10                                          ; $46b4: $ee $10
	and b                                            ; $46b6: $a0
	cpl                                              ; $46b7: $2f
	ldh a, [$fd]                                     ; $46b8: $f0 $fd
	ldh a, [$fd]                                     ; $46ba: $f0 $fd
	ld [hl], e                                       ; $46bc: $73
	add hl, bc                                       ; $46bd: $09
	db $ed                                           ; $46be: $ed
	ld h, e                                          ; $46bf: $63
	ld d, e                                          ; $46c0: $53
	sub h                                            ; $46c1: $94
	dec a                                            ; $46c2: $3d
	ld h, e                                          ; $46c3: $63
	dec [hl]                                         ; $46c4: $35
	rla                                              ; $46c5: $17

jr_08b_46c6:
	db $ec                                           ; $46c6: $ec
	ldh a, [$a8]                                     ; $46c7: $f0 $a8
	db $ec                                           ; $46c9: $ec
	sub $ec                                          ; $46ca: $d6 $ec
	ret c                                            ; $46cc: $d8

	and b                                            ; $46cd: $a0
	cpl                                              ; $46ce: $2f
	ld b, e                                          ; $46cf: $43
	db $ec                                           ; $46d0: $ec
	sub $48                                          ; $46d1: $d6 $48
	dec sp                                           ; $46d3: $3b
	ccf                                              ; $46d4: $3f
	xor h                                            ; $46d5: $ac
	ldh a, [rRP]                                     ; $46d6: $f0 $56
	ld c, e                                          ; $46d8: $4b
	inc [hl]                                         ; $46d9: $34
	ld l, e                                          ; $46da: $6b
	pop af                                           ; $46db: $f1
	ld b, d                                          ; $46dc: $42
	ld a, [hl-]                                      ; $46dd: $3a
	ld b, c                                          ; $46de: $41
	ld b, h                                          ; $46df: $44
	and c                                            ; $46e0: $a1
	ld l, a                                          ; $46e1: $6f
	ld c, e                                          ; $46e2: $4b
	inc [hl]                                         ; $46e3: $34
	db $ec                                           ; $46e4: $ec
	inc a                                            ; $46e5: $3c
	and b                                            ; $46e6: $a0
	jr c, jr_08b_4685                                ; $46e7: $38 $9c

	ld c, l                                          ; $46e9: $4d
	inc [hl]                                         ; $46ea: $34
	ld b, [hl]                                       ; $46eb: $46
	ld a, [hl-]                                      ; $46ec: $3a
	dec a                                            ; $46ed: $3d
	ld b, d                                          ; $46ee: $42
	pop af                                           ; $46ef: $f1
	sub $f4                                          ; $46f0: $d6 $f4
	or c                                             ; $46f2: $b1
	ld c, e                                          ; $46f3: $4b
	inc de                                           ; $46f4: $13
	ld l, a                                          ; $46f5: $6f
	ld b, d                                          ; $46f6: $42
	ld c, a                                          ; $46f7: $4f
	ld b, d                                          ; $46f8: $42
	ld b, l                                          ; $46f9: $45
	and b                                            ; $46fa: $a0
	cpl                                              ; $46fb: $2f
	ld b, e                                          ; $46fc: $43
	ld c, e                                          ; $46fd: $4b
	ld b, [hl]                                       ; $46fe: $46
	and c                                            ; $46ff: $a1
	ld c, d                                          ; $4700: $4a
	ld c, e                                          ; $4701: $4b
	inc [hl]                                         ; $4702: $34
	ld d, d                                          ; $4703: $52
	dec a                                            ; $4704: $3d
	ldh a, [rHDMA3]                                  ; $4705: $f0 $53
	jr c, jr_08b_475b                                ; $4707: $38 $52

	ld a, $66                                        ; $4709: $3e $66
	add hl, sp                                       ; $470b: $39
	xor b                                            ; $470c: $a8
	ldh a, [rSCY]                                    ; $470d: $f0 $42
	ldh a, [rSCY]                                    ; $470f: $f0 $42
	ldh a, [rSCY]                                    ; $4711: $f0 $42
	ld c, b                                          ; $4713: $48
	and b                                            ; $4714: $a0
	cpl                                              ; $4715: $2f
	ld b, e                                          ; $4716: $43
	ld l, d                                          ; $4717: $6a
	ld b, d                                          ; $4718: $42
	ld c, e                                          ; $4719: $4b
	ld l, l                                          ; $471a: $6d
	ldh a, [$65]                                     ; $471b: $f0 $65
	xor $10                                          ; $471d: $ee $10
	and b                                            ; $471f: $a0
	cpl                                              ; $4720: $2f
	db $ed                                           ; $4721: $ed
	ld l, [hl]                                       ; $4722: $6e
	ldh a, [c]                                       ; $4723: $f2
	inc b                                            ; $4724: $04
	inc [hl]                                         ; $4725: $34
	pop af                                           ; $4726: $f1
	nop                                              ; $4727: $00
	pop af                                           ; $4728: $f1
	ld l, b                                          ; $4729: $68
	ld b, a                                          ; $472a: $47
	xor e                                            ; $472b: $ab
	ldh a, [$98]                                     ; $472c: $f0 $98
	ld b, h                                          ; $472e: $44
	ld e, a                                          ; $472f: $5f
	ld c, b                                          ; $4730: $48
	and e                                            ; $4731: $a3
	ret                                              ; $4732: $c9


	inc [hl]                                         ; $4733: $34
	ld d, h                                          ; $4734: $54
	ld b, d                                          ; $4735: $42
	ldh a, [c]                                       ; $4736: $f2
	ld h, e                                          ; $4737: $63
	pop af                                           ; $4738: $f1
	jp $f113                                         ; $4739: $c3 $13 $f1


	dec sp                                           ; $473c: $3b
	jr c, @+$41                                      ; $473d: $38 $3f

	ld l, h                                          ; $473f: $6c
	ccf                                              ; $4740: $3f
	ld d, l                                          ; $4741: $55
	ld c, l                                          ; $4742: $4d
	ld c, [hl]                                       ; $4743: $4e
	and c                                            ; $4744: $a1
	cpl                                              ; $4745: $2f
	ld b, e                                          ; $4746: $43
	ld e, [hl]                                       ; $4747: $5e
	ld e, c                                          ; $4748: $59
	dec sp                                           ; $4749: $3b
	inc [hl]                                         ; $474a: $34
	ld a, [hl-]                                      ; $474b: $3a
	ld b, c                                          ; $474c: $41
	ld c, d                                          ; $474d: $4a
	ld c, b                                          ; $474e: $48
	and b                                            ; $474f: $a0
	add b                                            ; $4750: $80
	ldh a, [$8c]                                     ; $4751: $f0 $8c
	ld d, h                                          ; $4753: $54
	ldh a, [$8c]                                     ; $4754: $f0 $8c
	add d                                            ; $4756: $82
	ld h, e                                          ; $4757: $63
	sbc h                                            ; $4758: $9c
	ld b, a                                          ; $4759: $47
	inc de                                           ; $475a: $13

jr_08b_475b:
	ld e, b                                          ; $475b: $58
	dec sp                                           ; $475c: $3b
	ld e, b                                          ; $475d: $58
	ld c, c                                          ; $475e: $49
	pop af                                           ; $475f: $f1
	dec sp                                           ; $4760: $3b
	ld e, h                                          ; $4761: $5c
	ld a, [hl-]                                      ; $4762: $3a
	ld e, b                                          ; $4763: $58
	jr c, jr_08b_47ab                                ; $4764: $38 $45

	and b                                            ; $4766: $a0
	cpl                                              ; $4767: $2f
	ld b, e                                          ; $4768: $43
	ldh a, [$08]                                     ; $4769: $f0 $08
	ld d, b                                          ; $476b: $50
	inc [hl]                                         ; $476c: $34
	sub h                                            ; $476d: $94
	ld a, b                                          ; $476e: $78
	dec a                                            ; $476f: $3d
	ld b, l                                          ; $4770: $45
	and b                                            ; $4771: $a0
	db $ec                                           ; $4772: $ec
	ldh a, [$a8]                                     ; $4773: $f0 $a8
	db $ec                                           ; $4775: $ec
	sub $ec                                          ; $4776: $d6 $ec
	ret c                                            ; $4778: $d8

	and b                                            ; $4779: $a0
	cpl                                              ; $477a: $2f
	ld b, e                                          ; $477b: $43
	db $ec                                           ; $477c: $ec
	sub $48                                          ; $477d: $d6 $48
	dec sp                                           ; $477f: $3b
	ccf                                              ; $4780: $3f
	xor h                                            ; $4781: $ac
	ld b, [hl]                                       ; $4782: $46
	ld b, c                                          ; $4783: $41

Jump_08b_4784:
	dec a                                            ; $4784: $3d
	inc [hl]                                         ; $4785: $34
	ldh a, [$98]                                     ; $4786: $f0 $98
	and c                                            ; $4788: $a1
	cpl                                              ; $4789: $2f
	ld h, $ec                                        ; $478a: $26 $ec
	add a                                            ; $478c: $87
	inc [hl]                                         ; $478d: $34
	db $ec                                           ; $478e: $ec
	add a                                            ; $478f: $87
	dec [hl]                                         ; $4790: $35
	dec h                                            ; $4791: $25
	add hl, bc                                       ; $4792: $09
	cpl                                              ; $4793: $2f
	ld b, e                                          ; $4794: $43
	ld b, c                                          ; $4795: $41
	xor c                                            ; $4796: $a9
	ld l, e                                          ; $4797: $6b
	ld b, d                                          ; $4798: $42
	ldh a, [$99]                                     ; $4799: $f0 $99
	ld b, h                                          ; $479b: $44
	xor c                                            ; $479c: $a9
	xor $2a                                          ; $479d: $ee $2a
	pop af                                           ; $479f: $f1
	ld l, b                                          ; $47a0: $68
	inc a                                            ; $47a1: $3c
	ld d, b                                          ; $47a2: $50
	ld l, h                                          ; $47a3: $6c
	dec a                                            ; $47a4: $3d
	jr c, jr_08b_47eb                                ; $47a5: $38 $44

	ld a, [hl-]                                      ; $47a7: $3a
	ld c, b                                          ; $47a8: $48
	and b                                            ; $47a9: $a0
	cpl                                              ; $47aa: $2f

jr_08b_47ab:
	ld h, $ec                                        ; $47ab: $26 $ec
	add a                                            ; $47ad: $87
	inc [hl]                                         ; $47ae: $34
	ldh a, [$fd]                                     ; $47af: $f0 $fd
	ldh a, [rAUD1LEN]                                ; $47b1: $f0 $11
	ldh a, [$fd]                                     ; $47b3: $f0 $fd
	ldh a, [rAUD1LEN]                                ; $47b5: $f0 $11
	ld c, b                                          ; $47b7: $48
	dec [hl]                                         ; $47b8: $35
	dec h                                            ; $47b9: $25
	add hl, bc                                       ; $47ba: $09
	cpl                                              ; $47bb: $2f
	ld [hl-], a                                      ; $47bc: $32
	db $eb                                           ; $47bd: $eb
	ld e, c                                          ; $47be: $59
	xor l                                            ; $47bf: $ad
	xor $10                                          ; $47c0: $ee $10
	xor b                                            ; $47c2: $a8
	db $dd                                           ; $47c3: $dd
	ret                                              ; $47c4: $c9


	rst FarCall                                          ; $47c5: $f7
	xor e                                            ; $47c6: $ab
	jr c, jr_08b_4808                                ; $47c7: $38 $3f

	ld l, [hl]                                       ; $47c9: $6e
	ld c, l                                          ; $47ca: $4d
	and e                                            ; $47cb: $a3
	ld b, [hl]                                       ; $47cc: $46
	ld a, [hl-]                                      ; $47cd: $3a
	dec a                                            ; $47ce: $3d
	scf                                              ; $47cf: $37
	scf                                              ; $47d0: $37
	inc de                                           ; $47d1: $13
	ld [hl], d                                       ; $47d2: $72
	ccf                                              ; $47d3: $3f
	xor $2d                                          ; $47d4: $ee $2d
	ld e, l                                          ; $47d6: $5d
	ld a, [hl-]                                      ; $47d7: $3a
	jr c, jr_08b_4829                                ; $47d8: $38 $4f

	ld b, d                                          ; $47da: $42
	ld h, d                                          ; $47db: $62
	inc de                                           ; $47dc: $13
	ld [hl], d                                       ; $47dd: $72
	ccf                                              ; $47de: $3f
	db $ec                                           ; $47df: $ec
	push de                                          ; $47e0: $d5
	ld h, e                                          ; $47e1: $63
	ld c, h                                          ; $47e2: $4c
	and b                                            ; $47e3: $a0
	cpl                                              ; $47e4: $2f
	ld b, e                                          ; $47e5: $43
	ld e, [hl]                                       ; $47e6: $5e
	dec sp                                           ; $47e7: $3b
	inc [hl]                                         ; $47e8: $34
	halt                                             ; $47e9: $76
	ld c, e                                          ; $47ea: $4b

jr_08b_47eb:
	ld l, e                                          ; $47eb: $6b
	ld c, a                                          ; $47ec: $4f
	ld c, b                                          ; $47ed: $48
	and b                                            ; $47ee: $a0
	ld d, h                                          ; $47ef: $54
	ld b, d                                          ; $47f0: $42
	ldh a, [$f6]                                     ; $47f1: $f0 $f6
	ld b, a                                          ; $47f3: $47
	ld c, e                                          ; $47f4: $4b
	xor $10                                          ; $47f5: $ee $10
	add hl, bc                                       ; $47f7: $09
	add h                                            ; $47f8: $84
	ldh a, [$2a]                                     ; $47f9: $f0 $2a
	ld d, e                                          ; $47fb: $53
	ld [hl], d                                       ; $47fc: $72
	ccf                                              ; $47fd: $3f
	ld c, e                                          ; $47fe: $4b
	inc de                                           ; $47ff: $13
	jr c, jr_08b_485f                                ; $4800: $38 $5d

	ld a, [hl-]                                      ; $4802: $3a
	jr c, jr_08b_4854                                ; $4803: $38 $4f

	ld b, d                                          ; $4805: $42
	ld d, e                                          ; $4806: $53
	inc [hl]                                         ; $4807: $34

jr_08b_4808:
	ld b, [hl]                                       ; $4808: $46
	ld c, [hl]                                       ; $4809: $4e
	ld b, d                                          ; $480a: $42
	ld b, l                                          ; $480b: $45
	and b                                            ; $480c: $a0
	cpl                                              ; $480d: $2f
	ld b, e                                          ; $480e: $43
	ld b, h                                          ; $480f: $44
	inc a                                            ; $4810: $3c
	ld d, b                                          ; $4811: $50
	xor h                                            ; $4812: $ac
	halt                                             ; $4813: $76
	ld c, e                                          ; $4814: $4b
	ld l, e                                          ; $4815: $6b
	ld c, a                                          ; $4816: $4f
	ld [hl], d                                       ; $4817: $72
	ccf                                              ; $4818: $3f
	ld c, b                                          ; $4819: $48
	and b                                            ; $481a: $a0
	ld b, [hl]                                       ; $481b: $46
	ld a, [hl-]                                      ; $481c: $3a
	dec a                                            ; $481d: $3d
	ld c, e                                          ; $481e: $4b
	xor h                                            ; $481f: $ac
	ld [hl], d                                       ; $4820: $72
	ccf                                              ; $4821: $3f
	db $ec                                           ; $4822: $ec
	push de                                          ; $4823: $d5
	ld b, d                                          ; $4824: $42
	ld b, l                                          ; $4825: $45
	xor b                                            ; $4826: $a8
	ldh a, [rTAC]                                    ; $4827: $f0 $07

jr_08b_4829:
	inc a                                            ; $4829: $3c
	ld c, [hl]                                       ; $482a: $4e
	xor c                                            ; $482b: $a9
	ld de, $f012                                     ; $482c: $11 $12 $f0
	ld d, [hl]                                       ; $482f: $56
	and b                                            ; $4830: $a0
	cpl                                              ; $4831: $2f
	ld b, e                                          ; $4832: $43
	ld l, e                                          ; $4833: $6b
	ld c, a                                          ; $4834: $4f
	ld [hl], d                                       ; $4835: $72
	ccf                                              ; $4836: $3f
	ld a, [hl-]                                      ; $4837: $3a
	jr c, @+$3d                                      ; $4838: $38 $3b

	ccf                                              ; $483a: $3f
	scf                                              ; $483b: $37

Jump_08b_483c:
	inc de                                           ; $483c: $13
	ld [$34ab], a                                    ; $483d: $ea $ab $34
	ld l, e                                          ; $4840: $6b
	ld c, d                                          ; $4841: $4a
	xor h                                            ; $4842: $ac
	halt                                             ; $4843: $76
	ld b, d                                          ; $4844: $42
	db $ed                                           ; $4845: $ed
	ld [hl], c                                       ; $4846: $71
	ldh a, [$2d]                                     ; $4847: $f0 $2d
	dec sp                                           ; $4849: $3b
	ccf                                              ; $484a: $3f
	ld b, c                                          ; $484b: $41
	ld b, h                                          ; $484c: $44
	ld b, l                                          ; $484d: $45
	scf                                              ; $484e: $37
	and c                                            ; $484f: $a1
	db $ed                                           ; $4850: $ed
	ld e, c                                          ; $4851: $59
	inc [hl]                                         ; $4852: $34
	ld b, [hl]                                       ; $4853: $46

jr_08b_4854:
	ld a, [hl-]                                      ; $4854: $3a
	dec a                                            ; $4855: $3d
	ld c, e                                          ; $4856: $4b
	ld [hl], d                                       ; $4857: $72
	dec a                                            ; $4858: $3d
	ld h, e                                          ; $4859: $63
	dec [hl]                                         ; $485a: $35
	rla                                              ; $485b: $17
	ld c, a                                          ; $485c: $4f
	add hl, sp                                       ; $485d: $39

jr_08b_485e:
	inc [hl]                                         ; $485e: $34

jr_08b_485f:
	ld b, [hl]                                       ; $485f: $46
	ld a, [hl-]                                      ; $4860: $3a
	dec a                                            ; $4861: $3d
	ld c, e                                          ; $4862: $4b
	ld d, h                                          ; $4863: $54
	ld b, d                                          ; $4864: $42
	ld l, a                                          ; $4865: $6f
	xor h                                            ; $4866: $ac
	db $ec                                           ; $4867: $ec
	inc a                                            ; $4868: $3c
	ld b, d                                          ; $4869: $42
	ldh a, [$a3]                                     ; $486a: $f0 $a3
	pop af                                           ; $486c: $f1
	or [hl]                                          ; $486d: $b6
	ld a, [hl-]                                      ; $486e: $3a
	ld b, d                                          ; $486f: $42
	ld b, l                                          ; $4870: $45
	and b                                            ; $4871: $a0
	cpl                                              ; $4872: $2f
	ld b, e                                          ; $4873: $43
	ldh a, [$a3]                                     ; $4874: $f0 $a3
	pop af                                           ; $4876: $f1
	or [hl]                                          ; $4877: $b6
	dec sp                                           ; $4878: $3b
	ccf                                              ; $4879: $3f
	ld c, b                                          ; $487a: $48
	and b                                            ; $487b: $a0
	ld b, [hl]                                       ; $487c: $46
	ld a, [hl-]                                      ; $487d: $3a
	dec a                                            ; $487e: $3d
	ld c, e                                          ; $487f: $4b
	inc [hl]                                         ; $4880: $34
	ld c, a                                          ; $4881: $4f
	add hl, sp                                       ; $4882: $39
	inc [hl]                                         ; $4883: $34
	ldh a, [$aa]                                     ; $4884: $f0 $aa
	adc c                                            ; $4886: $89
	adc a                                            ; $4887: $8f
	inc de                                           ; $4888: $13
	ld b, d                                          ; $4889: $42
	ld l, l                                          ; $488a: $6d
	pop af                                           ; $488b: $f1
	ld c, [hl]                                       ; $488c: $4e
	ld b, l                                          ; $488d: $45
	xor b                                            ; $488e: $a8
	jr c, jr_08b_48ff                                ; $488f: $38 $6e

	ld c, c                                          ; $4891: $49
	ld c, e                                          ; $4892: $4b
	add d                                            ; $4893: $82
	ld h, e                                          ; $4894: $63
	ld a, c                                          ; $4895: $79
	ld a, [hl-]                                      ; $4896: $3a
	jr c, jr_08b_48fc                                ; $4897: $38 $63

	ld b, l                                          ; $4899: $45
	and b                                            ; $489a: $a0
	cpl                                              ; $489b: $2f
	ld b, e                                          ; $489c: $43

jr_08b_489d:
	jr c, jr_08b_48d3                                ; $489d: $38 $34

	jr c, jr_08b_490f                                ; $489f: $38 $6e

	xor $10                                          ; $48a1: $ee $10
	dec [hl]                                         ; $48a3: $35

jr_08b_48a4:
	rla                                              ; $48a4: $17
	ld [hl-], a                                      ; $48a5: $32
	ld e, d                                          ; $48a6: $5a
	add hl, sp                                       ; $48a7: $39
	ld a, $3d                                        ; $48a8: $3e $3d
	ld b, c                                          ; $48aa: $41
	ld b, h                                          ; $48ab: $44
	inc [hl]                                         ; $48ac: $34
	pop af                                           ; $48ad: $f1
	push af                                          ; $48ae: $f5
	ld d, e                                          ; $48af: $53
	ld c, b                                          ; $48b0: $48
	xor h                                            ; $48b1: $ac
	pop af                                           ; $48b2: $f1
	push af                                          ; $48b3: $f5
	ld d, e                                          ; $48b4: $53
	ldh a, [rOBP0]                                   ; $48b5: $f0 $48
	inc a                                            ; $48b7: $3c
	ld a, [hl-]                                      ; $48b8: $3a
	jr c, jr_08b_485e                                ; $48b9: $38 $a3

	ldh a, [rSCY]                                    ; $48bb: $f0 $42
	ldh a, [rSCY]                                    ; $48bd: $f0 $42
	ldh a, [rSCY]                                    ; $48bf: $f0 $42
	xor l                                            ; $48c1: $ad
	push af                                          ; $48c2: $f5
	ld a, h                                          ; $48c3: $7c
	ld b, a                                          ; $48c4: $47
	ldh a, [rWY]                                     ; $48c5: $f0 $4a
	ld e, c                                          ; $48c7: $59
	ldh a, [rDIV]                                    ; $48c8: $f0 $04
	ld c, e                                          ; $48ca: $4b
	pop af                                           ; $48cb: $f1
	ld l, $5c                                        ; $48cc: $2e $5c
	ldh a, [c]                                       ; $48ce: $f2
	db $dd                                           ; $48cf: $dd
	ld e, [hl]                                       ; $48d0: $5e
	dec a                                            ; $48d1: $3d
	ld h, e                                          ; $48d2: $63

jr_08b_48d3:
	and b                                            ; $48d3: $a0
	cpl                                              ; $48d4: $2f
	ld [hl-], a                                      ; $48d5: $32
	ldh a, [rWY]                                     ; $48d6: $f0 $4a
	ld e, c                                          ; $48d8: $59

jr_08b_48d9:
	ldh a, [rDIV]                                    ; $48d9: $f0 $04
	dec sp                                           ; $48db: $3b
	ccf                                              ; $48dc: $3f
	xor l                                            ; $48dd: $ad
	ld l, l                                          ; $48de: $6d
	ldh a, [$65]                                     ; $48df: $f0 $65
	inc [hl]                                         ; $48e1: $34
	ld l, e                                          ; $48e2: $6b
	ld b, d                                          ; $48e3: $42
	ldh a, [rWY]                                     ; $48e4: $f0 $4a
	ld e, c                                          ; $48e6: $59
	ldh a, [rDIV]                                    ; $48e7: $f0 $04

jr_08b_48e9:
	ld b, h                                          ; $48e9: $44
	ld [hl], $33                                     ; $48ea: $36 $33
	add hl, bc                                       ; $48ec: $09
	db $f4                                           ; $48ed: $f4
	xor e                                            ; $48ee: $ab
	ld d, b                                          ; $48ef: $50
	add hl, sp                                       ; $48f0: $39
	ld d, h                                          ; $48f1: $54
	ld c, c                                          ; $48f2: $49
	ld c, e                                          ; $48f3: $4b
	xor h                                            ; $48f4: $ac
	ldh a, [c]                                       ; $48f5: $f2
	ld a, b                                          ; $48f6: $78
	ld e, b                                          ; $48f7: $58
	ld c, l                                          ; $48f8: $4d
	ld a, [hl-]                                      ; $48f9: $3a
	jr c, jr_08b_48a4                                ; $48fa: $38 $a8

jr_08b_48fc:
	db $f4                                           ; $48fc: $f4
	xor e                                            ; $48fd: $ab
	ld d, b                                          ; $48fe: $50

jr_08b_48ff:
	ld e, [hl]                                       ; $48ff: $5e
	ld a, e                                          ; $4900: $7b
	inc [hl]                                         ; $4901: $34
	ldh a, [c]                                       ; $4902: $f2
	ld a, d                                          ; $4903: $7a
	ld b, [hl]                                       ; $4904: $46
	ld c, [hl]                                       ; $4905: $4e
	ld b, d                                          ; $4906: $42
	ld l, h                                          ; $4907: $6c
	ld b, l                                          ; $4908: $45
	xor b                                            ; $4909: $a8
	ld c, d                                          ; $490a: $4a
	ld c, e                                          ; $490b: $4b
	inc [hl]                                         ; $490c: $34
	ld d, d                                          ; $490d: $52
	dec a                                            ; $490e: $3d

jr_08b_490f:
	ldh a, [rHDMA3]                                  ; $490f: $f0 $53
	jr c, jr_08b_4965                                ; $4911: $38 $52

	ld a, $66                                        ; $4913: $3e $66
	add hl, sp                                       ; $4915: $39
	and b                                            ; $4916: $a0
	cpl                                              ; $4917: $2f
	ld [hl-], a                                      ; $4918: $32
	ld c, e                                          ; $4919: $4b
	inc [hl]                                         ; $491a: $34
	jr c, jr_08b_489d                                ; $491b: $38 $80

	ld b, d                                          ; $491d: $42
	ldh a, [$2a]                                     ; $491e: $f0 $2a
	ld b, a                                          ; $4920: $47
	inc a                                            ; $4921: $3c
	inc de                                           ; $4922: $13
	or $11                                           ; $4923: $f6 $11
	ldh a, [$a3]                                     ; $4925: $f0 $a3
	ld b, a                                          ; $4927: $47
	jr c, jr_08b_4978                                ; $4928: $38 $4e

	xor b                                            ; $492a: $a8
	ld b, b                                          ; $492b: $40
	ld c, l                                          ; $492c: $4d
	ld b, a                                          ; $492d: $47
	inc [hl]                                         ; $492e: $34
	ldh a, [$99]                                     ; $492f: $f0 $99
	ld c, a                                          ; $4931: $4f
	ldh a, [$0c]                                     ; $4932: $f0 $0c
	ld d, h                                          ; $4934: $54
	ld e, [hl]                                       ; $4935: $5e
	ld a, [hl-]                                      ; $4936: $3a
	jr c, jr_08b_48d9                                ; $4937: $38 $a0

	cpl                                              ; $4939: $2f
	ld b, e                                          ; $493a: $43
	jr c, jr_08b_48e9                                ; $493b: $38 $ac

	ld l, d                                          ; $493d: $6a
	ld b, d                                          ; $493e: $42
	ld c, e                                          ; $493f: $4b
	ld l, e                                          ; $4940: $6b
	ld b, h                                          ; $4941: $44
	dec sp                                           ; $4942: $3b
	dec a                                            ; $4943: $3d
	ld b, c                                          ; $4944: $41
	ld b, h                                          ; $4945: $44
	and b                                            ; $4946: $a0
	cpl                                              ; $4947: $2f
	ld [hl-], a                                      ; $4948: $32
	ld c, b                                          ; $4949: $48
	ld c, a                                          ; $494a: $4f
	ld a, $3c                                        ; $494b: $3e $3c
	ld a, $3f                                        ; $494d: $3e $3f
	ld c, b                                          ; $494f: $48
	rla                                              ; $4950: $17
	ldh a, [$aa]                                     ; $4951: $f0 $aa
	adc c                                            ; $4953: $89
	adc a                                            ; $4954: $8f
	ld b, a                                          ; $4955: $47
	xor $1a                                          ; $4956: $ee $1a
	inc de                                           ; $4958: $13
	ld e, b                                          ; $4959: $58
	ld a, c                                          ; $495a: $79
	ld d, b                                          ; $495b: $50
	ld c, l                                          ; $495c: $4d
	dec a                                            ; $495d: $3d
	ld b, c                                          ; $495e: $41
	ld e, e                                          ; $495f: $5b
	ld d, [hl]                                       ; $4960: $56
	ld [hl], h                                       ; $4961: $74
	and c                                            ; $4962: $a1
	cpl                                              ; $4963: $2f
	ld b, e                                          ; $4964: $43

jr_08b_4965:
	add hl, sp                                       ; $4965: $39
	dec sp                                           ; $4966: $3b
	ld c, b                                          ; $4967: $48
	dec [hl]                                         ; $4968: $35
	rla                                              ; $4969: $17
	ld [hl-], a                                      ; $496a: $32
	ldh a, [$98]                                     ; $496b: $f0 $98
	ld b, h                                          ; $496d: $44
	inc [hl]                                         ; $496e: $34
	ldh a, [$d7]                                     ; $496f: $f0 $d7
	ld e, a                                          ; $4971: $5f
	inc a                                            ; $4972: $3c
	ld d, b                                          ; $4973: $50
	xor l                                            ; $4974: $ad
	ldh a, [$c0]                                     ; $4975: $f0 $c0
	ldh a, [c]                                       ; $4977: $f2

jr_08b_4978:
	xor [hl]                                         ; $4978: $ae
	ld d, e                                          ; $4979: $53
	add hl, sp                                       ; $497a: $39
	ld d, c                                          ; $497b: $51
	ld c, l                                          ; $497c: $4d
	ccf                                              ; $497d: $3f
	jr c, jr_08b_49d5                                ; $497e: $38 $55

	xor $10                                          ; $4980: $ee $10
	and e                                            ; $4982: $a3
	cpl                                              ; $4983: $2f
	ld [hl-], a                                      ; $4984: $32
	ld c, e                                          ; $4985: $4b
	dec sp                                           ; $4986: $3b
	inc [hl]                                         ; $4987: $34
	ld d, h                                          ; $4988: $54
	ld d, h                                          ; $4989: $54
	ld c, e                                          ; $498a: $4b
	xor $2a                                          ; $498b: $ee $2a
	pop af                                           ; $498d: $f1
	ld l, b                                          ; $498e: $68
	scf                                              ; $498f: $37
	inc de                                           ; $4990: $13
	inc a                                            ; $4991: $3c
	inc [hl]                                         ; $4992: $34
	ldh a, [$65]                                     ; $4993: $f0 $65
	ld d, e                                          ; $4995: $53
	ldh a, [rOBP0]                                   ; $4996: $f0 $48
	inc a                                            ; $4998: $3c
	ld a, [hl-]                                      ; $4999: $3a
	jr c, jr_08b_49e4                                ; $499a: $38 $48

	and e                                            ; $499c: $a3
	xor $14                                          ; $499d: $ee $14
	xor h                                            ; $499f: $ac
	ld de, $f012                                     ; $49a0: $11 $12 $f0
	ld d, [hl]                                       ; $49a3: $56
	xor b                                            ; $49a4: $a8
	ldh a, [rAUD3LEVEL]                              ; $49a5: $f0 $1c
	ld d, e                                          ; $49a7: $53
	ldh a, [$f4]                                     ; $49a8: $f0 $f4
	ld [hl], c                                       ; $49aa: $71
	ld h, c                                          ; $49ab: $61
	ld d, [hl]                                       ; $49ac: $56
	dec sp                                           ; $49ad: $3b
	dec a                                            ; $49ae: $3d
	db $ec                                           ; $49af: $ec
	ld [de], a                                       ; $49b0: $12
	and b                                            ; $49b1: $a0
	cpl                                              ; $49b2: $2f
	ld b, e                                          ; $49b3: $43
	ld e, h                                          ; $49b4: $5c
	inc [hl]                                         ; $49b5: $34
	ldh a, [rRP]                                     ; $49b6: $f0 $56
	ld c, e                                          ; $49b8: $4b
	ld l, l                                          ; $49b9: $6d
	ldh a, [$65]                                     ; $49ba: $f0 $65
	ldh a, [$98]                                     ; $49bc: $f0 $98
	ld b, h                                          ; $49be: $44
	scf                                              ; $49bf: $37
	xor c                                            ; $49c0: $a9

jr_08b_49c1:
	halt                                             ; $49c1: $76
	ld h, d                                          ; $49c2: $62
	inc [hl]                                         ; $49c3: $34
	ld e, d                                          ; $49c4: $5a
	add hl, sp                                       ; $49c5: $39
	ld d, c                                          ; $49c6: $51
	ld c, [hl]                                       ; $49c7: $4e
	add b                                            ; $49c8: $80
	ld c, a                                          ; $49c9: $4f
	ld d, a                                          ; $49ca: $57
	ld b, h                                          ; $49cb: $44
	scf                                              ; $49cc: $37
	and c                                            ; $49cd: $a1
	add a                                            ; $49ce: $87
	ldh a, [$5b]                                     ; $49cf: $f0 $5b
	ldh a, [$5e]                                     ; $49d1: $f0 $5e
	xor h                                            ; $49d3: $ac
	pop af                                           ; $49d4: $f1

jr_08b_49d5:
	ld a, [hl-]                                      ; $49d5: $3a
	ld d, l                                          ; $49d6: $55
	ld a, [hl-]                                      ; $49d7: $3a
	jr c, @+$3e                                      ; $49d8: $38 $3c

	ld d, b                                          ; $49da: $50
	xor b                                            ; $49db: $a8
	ret                                              ; $49dc: $c9


	inc [hl]                                         ; $49dd: $34
	ld e, e                                          ; $49de: $5b
	dec sp                                           ; $49df: $3b
	ld c, c                                          ; $49e0: $49
	ld a, $3f                                        ; $49e1: $3e $3f
	ccf                                              ; $49e3: $3f

jr_08b_49e4:
	and b                                            ; $49e4: $a0
	cpl                                              ; $49e5: $2f
	ld b, e                                          ; $49e6: $43

jr_08b_49e7:
	ld a, [hl-]                                      ; $49e7: $3a
	inc [hl]                                         ; $49e8: $34
	ld a, [hl-]                                      ; $49e9: $3a
	ld b, a                                          ; $49ea: $47
	ld h, d                                          ; $49eb: $62
	ld d, c                                          ; $49ec: $51
	ld c, [hl]                                       ; $49ed: $4e
	ld b, c                                          ; $49ee: $41
	ld b, h                                          ; $49ef: $44
	scf                                              ; $49f0: $37
	xor c                                            ; $49f1: $a9
	ld l, [hl]                                       ; $49f2: $6e
	ld [hl], c                                       ; $49f3: $71
	ld e, a                                          ; $49f4: $5f
	ld e, c                                          ; $49f5: $59
	scf                                              ; $49f6: $37
	and d                                            ; $49f7: $a2
	ldh a, [rTAC]                                    ; $49f8: $f0 $07
	inc a                                            ; $49fa: $3c
	dec sp                                           ; $49fb: $3b
	dec a                                            ; $49fc: $3d
	ld h, e                                          ; $49fd: $63
	ld b, l                                          ; $49fe: $45
	xor b                                            ; $49ff: $a8
	add a                                            ; $4a00: $87
	ld e, h                                          ; $4a01: $5c
	ld a, [hl-]                                      ; $4a02: $3a
	pop af                                           ; $4a03: $f1
	dec l                                            ; $4a04: $2d
	sub h                                            ; $4a05: $94
	ld e, b                                          ; $4a06: $58
	ld a, [hl-]                                      ; $4a07: $3a
	jr c, jr_08b_4a54                                ; $4a08: $38 $4a

	ld b, l                                          ; $4a0a: $45
	scf                                              ; $4a0b: $37
	inc de                                           ; $4a0c: $13
	db $eb                                           ; $4a0d: $eb
	inc [hl]                                         ; $4a0e: $34
	ld h, e                                          ; $4a0f: $63
	ld c, h                                          ; $4a10: $4c
	ld c, b                                          ; $4a11: $48
	and b                                            ; $4a12: $a0
	cpl                                              ; $4a13: $2f
	ld b, e                                          ; $4a14: $43
	ldh a, [$0a]                                     ; $4a15: $f0 $0a
	ld d, l                                          ; $4a17: $55
	xor h                                            ; $4a18: $ac
	ldh a, [rOBP0]                                   ; $4a19: $f0 $48
	ld e, l                                          ; $4a1b: $5d
	ld c, [hl]                                       ; $4a1c: $4e
	ld b, l                                          ; $4a1d: $45
	add hl, sp                                       ; $4a1e: $39
	ld b, a                                          ; $4a1f: $47
	ld a, $3f                                        ; $4a20: $3e $3f
	ld d, l                                          ; $4a22: $55
	ld c, l                                          ; $4a23: $4d
	scf                                              ; $4a24: $37
	and d                                            ; $4a25: $a2
	db $ed                                           ; $4a26: $ed
	ld e, l                                          ; $4a27: $5d
	ld b, d                                          ; $4a28: $42
	ldh a, [$65]                                     ; $4a29: $f0 $65
	ld b, a                                          ; $4a2b: $47
	ldh a, [c]                                       ; $4a2c: $f2
	ld a, [hl]                                       ; $4a2d: $7e
	ld e, h                                          ; $4a2e: $5c
	dec a                                            ; $4a2f: $3d
	ld d, b                                          ; $4a30: $50
	ld c, b                                          ; $4a31: $48
	rla                                              ; $4a32: $17
	ld d, h                                          ; $4a33: $54
	ld b, d                                          ; $4a34: $42
	db $ec                                           ; $4a35: $ec
	inc a                                            ; $4a36: $3c
	ld b, a                                          ; $4a37: $47
	db $ed                                           ; $4a38: $ed
	db $d3                                           ; $4a39: $d3
	ld a, $3a                                        ; $4a3a: $3e $3a
	ld e, b                                          ; $4a3c: $58
	jr c, jr_08b_49e7                                ; $4a3d: $38 $a8

	jr c, jr_08b_49c1                                ; $4a3f: $38 $80

	ld c, d                                          ; $4a41: $4a
	ld c, a                                          ; $4a42: $4f
	inc [hl]                                         ; $4a43: $34
	sbc c                                            ; $4a44: $99
	dec sp                                           ; $4a45: $3b
	ccf                                              ; $4a46: $3f
	ld c, [hl]                                       ; $4a47: $4e
	ld h, e                                          ; $4a48: $63
	ld b, l                                          ; $4a49: $45
	and b                                            ; $4a4a: $a0
	cpl                                              ; $4a4b: $2f
	ld b, e                                          ; $4a4c: $43
	add hl, sp                                       ; $4a4d: $39
	dec sp                                           ; $4a4e: $3b
	xor l                                            ; $4a4f: $ad
	ld [hl-], a                                      ; $4a50: $32
	ld d, d                                          ; $4a51: $52
	dec a                                            ; $4a52: $3d
	inc [hl]                                         ; $4a53: $34

jr_08b_4a54:
	ldh a, [$c0]                                     ; $4a54: $f0 $c0
	ldh a, [c]                                       ; $4a56: $f2
	xor [hl]                                         ; $4a57: $ae
	ld d, e                                          ; $4a58: $53
	ld c, b                                          ; $4a59: $48
	and e                                            ; $4a5a: $a3
	cpl                                              ; $4a5b: $2f
	ld b, e                                          ; $4a5c: $43
	ld c, e                                          ; $4a5d: $4b
	dec sp                                           ; $4a5e: $3b
	inc [hl]                                         ; $4a5f: $34
	ld [hl+], a                                      ; $4a60: $22
	ldh a, [$b5]                                     ; $4a61: $f0 $b5
	inc [hl]                                         ; $4a63: $34
	pop af                                           ; $4a64: $f1
	add sp, $3c                                      ; $4a65: $e8 $3c
	ld c, b                                          ; $4a67: $48
	dec [hl]                                         ; $4a68: $35
	inc hl                                           ; $4a69: $23
	inc de                                           ; $4a6a: $13
	ld b, l                                          ; $4a6b: $45
	inc a                                            ; $4a6c: $3c
	dec sp                                           ; $4a6d: $3b
	dec a                                            ; $4a6e: $3d
	xor l                                            ; $4a6f: $ad
	ld b, c                                          ; $4a70: $41
	inc [hl]                                         ; $4a71: $34
	db $ed                                           ; $4a72: $ed
	sbc [hl]                                         ; $4a73: $9e
	ld l, c                                          ; $4a74: $69
	ld b, a                                          ; $4a75: $47
	db $ed                                           ; $4a76: $ed
	rst GetHLinHL                                          ; $4a77: $cf
	ld e, h                                          ; $4a78: $5c
	ld d, e                                          ; $4a79: $53
	ld b, [hl]                                       ; $4a7a: $46

jr_08b_4a7b:
	ld c, [hl]                                       ; $4a7b: $4e
	sub a                                            ; $4a7c: $97
	dec [hl]                                         ; $4a7d: $35
	inc h                                            ; $4a7e: $24
	inc de                                           ; $4a7f: $13
	ld l, e                                          ; $4a80: $6b
	ldh a, [$cf]                                     ; $4a81: $f0 $cf
	inc [hl]                                         ; $4a83: $34
	ldh a, [c]                                       ; $4a84: $f2
	xor b                                            ; $4a85: $a8
	di                                               ; $4a86: $f3
	ld a, [de]                                       ; $4a87: $1a
	ld b, d                                          ; $4a88: $42
	ld [hl], b                                       ; $4a89: $70
	ldh a, [rAUD2LEN]                                ; $4a8a: $f0 $16
	pop af                                           ; $4a8c: $f1
	rst AddAOntoHL                                          ; $4a8d: $ef
	ld c, e                                          ; $4a8e: $4b
	xor h                                            ; $4a8f: $ac
	ldh a, [$aa]                                     ; $4a90: $f0 $aa
	adc c                                            ; $4a92: $89
	adc a                                            ; $4a93: $8f
	inc [hl]                                         ; $4a94: $34
	db $ec                                           ; $4a95: $ec
	inc a                                            ; $4a96: $3c
	ld d, d                                          ; $4a97: $52
	ld c, d                                          ; $4a98: $4a
	ld c, b                                          ; $4a99: $48
	and b                                            ; $4a9a: $a0
	cpl                                              ; $4a9b: $2f
	ld [hl-], a                                      ; $4a9c: $32
	ld e, b                                          ; $4a9d: $58
	ld e, c                                          ; $4a9e: $59
	ccf                                              ; $4a9f: $3f
	ld c, c                                          ; $4aa0: $49
	xor h                                            ; $4aa1: $ac
	db $ed                                           ; $4aa2: $ed
	ld d, a                                          ; $4aa3: $57
	inc [hl]                                         ; $4aa4: $34
	ld l, e                                          ; $4aa5: $6b
	ld b, d                                          ; $4aa6: $42
	xor $2a                                          ; $4aa7: $ee $2a
	ld h, d                                          ; $4aa9: $62
	inc de                                           ; $4aaa: $13
	db $ec                                           ; $4aab: $ec
	inc c                                            ; $4aac: $0c
	ld a, [hl-]                                      ; $4aad: $3a
	and e                                            ; $4aae: $a3
	ld d, $a0                                        ; $4aaf: $16 $a0
	ld l, a                                          ; $4ab1: $6f
	ld b, d                                          ; $4ab2: $42
	xor $2a                                          ; $4ab3: $ee $2a
	ld h, d                                          ; $4ab5: $62
	xor h                                            ; $4ab6: $ac
	ret                                              ; $4ab7: $c9


	ldh a, [$0b]                                     ; $4ab8: $f0 $0b
	pop af                                           ; $4aba: $f1
	ld [hl], c                                       ; $4abb: $71
	dec sp                                           ; $4abc: $3b
	ccf                                              ; $4abd: $3f
	ld d, l                                          ; $4abe: $55
	ld c, l                                          ; $4abf: $4d
	ld c, [hl]                                       ; $4ac0: $4e
	and c                                            ; $4ac1: $a1
	cpl                                              ; $4ac2: $2f
	ld b, e                                          ; $4ac3: $43
	xor $1e                                          ; $4ac4: $ee $1e
	xor l                                            ; $4ac6: $ad
	ld b, [hl]                                       ; $4ac7: $46
	ld a, [hl-]                                      ; $4ac8: $3a
	dec a                                            ; $4ac9: $3d
	ld c, e                                          ; $4aca: $4b
	ld c, b                                          ; $4acb: $48
	and b                                            ; $4acc: $a0
	db $ec                                           ; $4acd: $ec
	inc a                                            ; $4ace: $3c
	ld b, l                                          ; $4acf: $45
	xor b                                            ; $4ad0: $a8
	ldh a, [$0a]                                     ; $4ad1: $f0 $0a
	ld d, l                                          ; $4ad3: $55
	ld a, b                                          ; $4ad4: $78
	ld a, [hl-]                                      ; $4ad5: $3a
	ld e, b                                          ; $4ad6: $58
	jr c, jr_08b_4a7b                                ; $4ad7: $38 $a2

	cpl                                              ; $4ad9: $2f
	ld b, e                                          ; $4ada: $43
	ld c, e                                          ; $4adb: $4b
	inc [hl]                                         ; $4adc: $34
	xor $2d                                          ; $4add: $ee $2d
	and b                                            ; $4adf: $a0
	cpl                                              ; $4ae0: $2f
	ld b, e                                          ; $4ae1: $43
	add hl, sp                                       ; $4ae2: $39
	ld h, e                                          ; $4ae3: $63
	ld b, [hl]                                       ; $4ae4: $46
	ld b, [hl]                                       ; $4ae5: $46
	ld b, [hl]                                       ; $4ae6: $46
	ld b, [hl]                                       ; $4ae7: $46
	scf                                              ; $4ae8: $37
	inc hl                                           ; $4ae9: $23
	add hl, bc                                       ; $4aea: $09
	cpl                                              ; $4aeb: $2f
	ld b, e                                          ; $4aec: $43
	ld h, h                                          ; $4aed: $64
	ld h, h                                          ; $4aee: $64
	ld h, h                                          ; $4aef: $64
	ld h, h                                          ; $4af0: $64
	dec sp                                           ; $4af1: $3b
	scf                                              ; $4af2: $37
	inc hl                                           ; $4af3: $23
	add hl, bc                                       ; $4af4: $09
	cpl                                              ; $4af5: $2f
	ld b, e                                          ; $4af6: $43
	ldh a, [$cb]                                     ; $4af7: $f0 $cb
	ld d, [hl]                                       ; $4af9: $56
	ld b, [hl]                                       ; $4afa: $46
	ld b, [hl]                                       ; $4afb: $46
	ld b, [hl]                                       ; $4afc: $46
	ld b, [hl]                                       ; $4afd: $46
	scf                                              ; $4afe: $37
	inc hl                                           ; $4aff: $23
	add hl, bc                                       ; $4b00: $09
	cpl                                              ; $4b01: $2f
	ld b, e                                          ; $4b02: $43
	jp hl                                            ; $4b03: $e9


	or c                                             ; $4b04: $b1
	and b                                            ; $4b05: $a0
	ld b, [hl]                                       ; $4b06: $46
	ld a, [hl-]                                      ; $4b07: $3a
	dec a                                            ; $4b08: $3d
	inc [hl]                                         ; $4b09: $34
	pop de                                           ; $4b0a: $d1
	inc de                                           ; $4b0b: $13
	jr c, jr_08b_4b46                                ; $4b0c: $38 $38

	di                                               ; $4b0e: $f3
	cp $3e                                           ; $4b0f: $fe $3e
	ccf                                              ; $4b11: $3f
	ld c, [hl]                                       ; $4b12: $4e
	db $ec                                           ; $4b13: $ec
	ret c                                            ; $4b14: $d8

	xor b                                            ; $4b15: $a8
	ld e, e                                          ; $4b16: $5b
	ld d, [hl]                                       ; $4b17: $56
	ld b, [hl]                                       ; $4b18: $46
	inc [hl]                                         ; $4b19: $34
	ld d, d                                          ; $4b1a: $52
	dec a                                            ; $4b1b: $3d
	inc [hl]                                         ; $4b1c: $34
	ldh a, [c]                                       ; $4b1d: $f2
	ld e, l                                          ; $4b1e: $5d
	ldh a, [$be]                                     ; $4b1f: $f0 $be
	ld h, e                                          ; $4b21: $63
	ld c, h                                          ; $4b22: $4c
	and b                                            ; $4b23: $a0
	cpl                                              ; $4b24: $2f
	ld b, e                                          ; $4b25: $43
	xor $10                                          ; $4b26: $ee $10
	xor b                                            ; $4b28: $a8
	ld c, a                                          ; $4b29: $4f
	add hl, sp                                       ; $4b2a: $39
	inc [hl]                                         ; $4b2b: $34
	jr c, @+$70                                      ; $4b2c: $38 $6e

	ld b, h                                          ; $4b2e: $44
	ld [hl], h                                       ; $4b2f: $74
	ld e, c                                          ; $4b30: $59
	scf                                              ; $4b31: $37
	and d                                            ; $4b32: $a2
	add hl, bc                                       ; $4b33: $09
	cpl                                              ; $4b34: $2f
	ld b, e                                          ; $4b35: $43
	db $ec                                           ; $4b36: $ec
	ld a, [de]                                       ; $4b37: $1a
	ldh a, [$0a]                                     ; $4b38: $f0 $0a
	ldh a, [c]                                       ; $4b3a: $f2
	rlca                                             ; $4b3b: $07
	ld e, h                                          ; $4b3c: $5c
	ld c, a                                          ; $4b3d: $4f
	inc de                                           ; $4b3e: $13
	ldh a, [$5c]                                     ; $4b3f: $f0 $5c
	ld d, l                                          ; $4b41: $55
	ld a, [hl-]                                      ; $4b42: $3a
	jr c, jr_08b_4b7f                                ; $4b43: $38 $3a

	ld [hl], h                                       ; $4b45: $74

jr_08b_4b46:
	xor b                                            ; $4b46: $a8
	jr c, jr_08b_4b81                                ; $4b47: $38 $38

	ld d, h                                          ; $4b49: $54
	ld c, c                                          ; $4b4a: $49
	pop af                                           ; $4b4b: $f1
	adc d                                            ; $4b4c: $8a
	ld d, a                                          ; $4b4d: $57
	ld b, b                                          ; $4b4e: $40
	add hl, sp                                       ; $4b4f: $39
	ld b, h                                          ; $4b50: $44
	ld c, b                                          ; $4b51: $48
	and b                                            ; $4b52: $a0
	ld [hl-], a                                      ; $4b53: $32
	pop af                                           ; $4b54: $f1
	ld [hl+], a                                      ; $4b55: $22
	pop af                                           ; $4b56: $f1
	daa                                              ; $4b57: $27
	pop af                                           ; $4b58: $f1
	ld [hl+], a                                      ; $4b59: $22
	pop af                                           ; $4b5a: $f1
	daa                                              ; $4b5b: $27
	inc sp                                           ; $4b5c: $33
	xor $2d                                          ; $4b5d: $ee $2d
	ld c, b                                          ; $4b5f: $48
	xor h                                            ; $4b60: $ac
	ld b, b                                          ; $4b61: $40
	ld b, d                                          ; $4b62: $42
	ldh a, [$38]                                     ; $4b63: $f0 $38
	pop af                                           ; $4b65: $f1
	dec a                                            ; $4b66: $3d
	inc a                                            ; $4b67: $3c
	ld d, b                                          ; $4b68: $50
	ld c, b                                          ; $4b69: $48
	inc hl                                           ; $4b6a: $23
	ldh a, [$75]                                     ; $4b6b: $f0 $75
	db $f4                                           ; $4b6d: $f4
	cp $62                                           ; $4b6e: $fe $62
	xor e                                            ; $4b70: $ab
	ld c, b                                          ; $4b71: $48
	inc h                                            ; $4b72: $24
	ldh a, [c]                                       ; $4b73: $f2
	ld e, b                                          ; $4b74: $58
	pop af                                           ; $4b75: $f1
	dec sp                                           ; $4b76: $3b
	ld a, $52                                        ; $4b77: $3e $52
	ld a, $3d                                        ; $4b79: $3e $3d
	and b                                            ; $4b7b: $a0
	ld [hl-], a                                      ; $4b7c: $32
	pop af                                           ; $4b7d: $f1
	ld [hl+], a                                      ; $4b7e: $22

jr_08b_4b7f:
	pop af                                           ; $4b7f: $f1
	daa                                              ; $4b80: $27

jr_08b_4b81:
	pop af                                           ; $4b81: $f1
	ld [hl+], a                                      ; $4b82: $22
	pop af                                           ; $4b83: $f1
	daa                                              ; $4b84: $27
	inc sp                                           ; $4b85: $33
	pop af                                           ; $4b86: $f1
	ld d, [hl]                                       ; $4b87: $56
	ld a, $f1                                        ; $4b88: $3e $f1
	dec bc                                           ; $4b8a: $0b
	inc de                                           ; $4b8b: $13
	pop af                                           ; $4b8c: $f1
	adc d                                            ; $4b8d: $8a
	ld d, a                                          ; $4b8e: $57
	ld d, d                                          ; $4b8f: $52
	ld a, c                                          ; $4b90: $79
	ld b, c                                          ; $4b91: $41
	xor e                                            ; $4b92: $ab
	ld c, b                                          ; $4b93: $48
	inc h                                            ; $4b94: $24
	ld c, a                                          ; $4b95: $4f
	add hl, sp                                       ; $4b96: $39
	db $ec                                           ; $4b97: $ec
	db $eb                                           ; $4b98: $eb
	ldh a, [rBGP]                                    ; $4b99: $f0 $47
	ldh a, [$2a]                                     ; $4b9b: $f0 $2a
	ld h, d                                          ; $4b9d: $62
	ld c, b                                          ; $4b9e: $48
	inc hl                                           ; $4b9f: $23
	inc de                                           ; $4ba0: $13
	ld c, b                                          ; $4ba1: $48
	ldh a, [c]                                       ; $4ba2: $f2
	ld e, b                                          ; $4ba3: $58
	pop af                                           ; $4ba4: $f1
	dec sp                                           ; $4ba5: $3b
	ld a, $52                                        ; $4ba6: $3e $52
	ld a, $3d                                        ; $4ba8: $3e $3d
	and b                                            ; $4baa: $a0
	cpl                                              ; $4bab: $2f
	ld [hl-], a                                      ; $4bac: $32
	pop af                                           ; $4bad: $f1
	ld [hl+], a                                      ; $4bae: $22
	pop af                                           ; $4baf: $f1
	daa                                              ; $4bb0: $27
	pop af                                           ; $4bb1: $f1
	ld [hl+], a                                      ; $4bb2: $22
	pop af                                           ; $4bb3: $f1
	daa                                              ; $4bb4: $27
	inc sp                                           ; $4bb5: $33
	xor $2d                                          ; $4bb6: $ee $2d
	xor l                                            ; $4bb8: $ad
	ld b, b                                          ; $4bb9: $40
	ld b, d                                          ; $4bba: $42
	di                                               ; $4bbb: $f3
	sub h                                            ; $4bbc: $94
	ld c, e                                          ; $4bbd: $4b
	pop af                                           ; $4bbe: $f1
	ld a, b                                          ; $4bbf: $78
	inc a                                            ; $4bc0: $3c
	ld d, a                                          ; $4bc1: $57
	ld a, [hl-]                                      ; $4bc2: $3a
	ld d, l                                          ; $4bc3: $55
	xor e                                            ; $4bc4: $ab
	ld c, b                                          ; $4bc5: $48
	ld h, h                                          ; $4bc6: $64
	pop af                                           ; $4bc7: $f1
	dec h                                            ; $4bc8: $25
	ld a, c                                          ; $4bc9: $79
	ld d, l                                          ; $4bca: $55
	ld b, h                                          ; $4bcb: $44
	ld e, b                                          ; $4bcc: $58
	jr c, @-$53                                      ; $4bcd: $38 $ab

	ld c, d                                          ; $4bcf: $4a
	ld c, e                                          ; $4bd0: $4b
	inc [hl]                                         ; $4bd1: $34
	ldh a, [$d6]                                     ; $4bd2: $f0 $d6
	ld b, d                                          ; $4bd4: $42
	ldh a, [hDisp0_WY]                                     ; $4bd5: $f0 $88
	ldh a, [rBGP]                                    ; $4bd7: $f0 $47
	ldh a, [$a7]                                     ; $4bd9: $f0 $a7
	pop af                                           ; $4bdb: $f1
	dec de                                           ; $4bdc: $1b
	ld c, d                                          ; $4bdd: $4a
	ld c, b                                          ; $4bde: $48
	and b                                            ; $4bdf: $a0
	cpl                                              ; $4be0: $2f
	ld b, e                                          ; $4be1: $43
	ld b, c                                          ; $4be2: $41
	ld [hl], $f0                                     ; $4be3: $36 $f0
	sbc b                                            ; $4be5: $98
	ld b, h                                          ; $4be6: $44
	and c                                            ; $4be7: $a1
	ld e, h                                          ; $4be8: $5c
	ld d, [hl]                                       ; $4be9: $56
	dec sp                                           ; $4bea: $3b
	and d                                            ; $4beb: $a2
	cpl                                              ; $4bec: $2f
	ld b, e                                          ; $4bed: $43
	add hl, sp                                       ; $4bee: $39
	ld h, e                                          ; $4bef: $63
	dec sp                                           ; $4bf0: $3b
	and b                                            ; $4bf1: $a0
	db $ec                                           ; $4bf2: $ec
	ld de, $3d3e                                     ; $4bf3: $11 $3e $3d
	pop af                                           ; $4bf6: $f1
	dec [hl]                                         ; $4bf7: $35
	and b                                            ; $4bf8: $a0
	cpl                                              ; $4bf9: $2f
	ld b, e                                          ; $4bfa: $43
	db $ec                                           ; $4bfb: $ec
	ld de, $3d3e                                     ; $4bfc: $11 $3e $3d
	ld b, d                                          ; $4bff: $42
	ld c, e                                          ; $4c00: $4b
	inc de                                           ; $4c01: $13
	halt                                             ; $4c02: $76
	ld b, d                                          ; $4c03: $42
	ldh a, [$38]                                     ; $4c04: $f0 $38
	ld b, h                                          ; $4c06: $44
	ld b, l                                          ; $4c07: $45
	dec [hl]                                         ; $4c08: $35
	ld [hl+], a                                      ; $4c09: $22
	inc de                                           ; $4c0a: $13
	db $ed                                           ; $4c0b: $ed
	ld e, d                                          ; $4c0c: $5a
	ld [$42f4], a                                    ; $4c0d: $ea $f4 $42
	ldh a, [rTIMA]                                   ; $4c10: $f0 $05
	pop af                                           ; $4c12: $f1
	ldh a, [c]                                       ; $4c13: $f2
	and c                                            ; $4c14: $a1
	ld e, [hl]                                       ; $4c15: $5e
	ld [hl], $5e                                     ; $4c16: $36 $5e
	add l                                            ; $4c18: $85
	inc [hl]                                         ; $4c19: $34
	ld l, a                                          ; $4c1a: $6f
	xor h                                            ; $4c1b: $ac
	ld [$f1f4], a                                    ; $4c1c: $ea $f4 $f1
	inc l                                            ; $4c1f: $2c
	ldh a, [rAUD1HIGH]                               ; $4c20: $f0 $14
	xor h                                            ; $4c22: $ac
	db $ec                                           ; $4c23: $ec
	cp h                                             ; $4c24: $bc
	and b                                            ; $4c25: $a0
	ld e, [hl]                                       ; $4c26: $5e
	ld [hl], $5e                                     ; $4c27: $36 $5e
	add l                                            ; $4c29: $85
	inc [hl]                                         ; $4c2a: $34
	ld l, a                                          ; $4c2b: $6f
	xor h                                            ; $4c2c: $ac
	ld [$f0f4], a                                    ; $4c2d: $ea $f4 $f0
	ld e, b                                          ; $4c30: $58
	ldh a, [rAUD1HIGH]                               ; $4c31: $f0 $14
	xor h                                            ; $4c33: $ac
	db $ec                                           ; $4c34: $ec
	cp h                                             ; $4c35: $bc
	and b                                            ; $4c36: $a0
	cpl                                              ; $4c37: $2f
	ld b, e                                          ; $4c38: $43
	ld e, e                                          ; $4c39: $5b
	ld d, [hl]                                       ; $4c3a: $56
	ld [hl], h                                       ; $4c3b: $74
	halt                                             ; $4c3c: $76
	ld c, c                                          ; $4c3d: $49
	ldh a, [$cd]                                     ; $4c3e: $f0 $cd
	adc c                                            ; $4c40: $89
	ldh a, [rAUD1HIGH]                               ; $4c41: $f0 $14
	ld b, h                                          ; $4c43: $44
	xor b                                            ; $4c44: $a8
	ld b, [hl]                                       ; $4c45: $46

jr_08b_4c46:
	inc [hl]                                         ; $4c46: $34
	halt                                             ; $4c47: $76
	inc [hl]                                         ; $4c48: $34
	ld de, $a012                                     ; $4c49: $11 $12 $a0
	ldh a, [$0a]                                     ; $4c4c: $f0 $0a
	ldh a, [c]                                       ; $4c4e: $f2
	rlca                                             ; $4c4f: $07
	ld e, h                                          ; $4c50: $5c
	db $ec                                           ; $4c51: $ec
	ld [hl+], a                                      ; $4c52: $22
	xor h                                            ; $4c53: $ac
	ld de, $56f0                                     ; $4c54: $11 $f0 $56
	dec [hl]                                         ; $4c57: $35
	ld e, e                                          ; $4c58: $5b
	ld d, [hl]                                       ; $4c59: $56
	inc [hl]                                         ; $4c5a: $34
	ld d, d                                          ; $4c5b: $52
	dec a                                            ; $4c5c: $3d
	ld c, b                                          ; $4c5d: $48
	and b                                            ; $4c5e: $a0
	cpl                                              ; $4c5f: $2f
	ld b, e                                          ; $4c60: $43
	ld b, [hl]                                       ; $4c61: $46
	inc [hl]                                         ; $4c62: $34
	ret                                              ; $4c63: $c9


	sbc c                                            ; $4c64: $99
	dec sp                                           ; $4c65: $3b
	ccf                                              ; $4c66: $3f
	and b                                            ; $4c67: $a0
	ld l, e                                          ; $4c68: $6b
	and c                                            ; $4c69: $a1
	cpl                                              ; $4c6a: $2f
	ld b, e                                          ; $4c6b: $43
	ld e, b                                          ; $4c6c: $58
	dec sp                                           ; $4c6d: $3b
	ld e, h                                          ; $4c6e: $5c
	xor h                                            ; $4c6f: $ac
	ldh a, [$98]                                     ; $4c70: $f0 $98
	inc a                                            ; $4c72: $3c
	ld c, c                                          ; $4c73: $49
	ldh a, [rAUDVOL]                                 ; $4c74: $f0 $24
	ld a, $3e                                        ; $4c76: $3e $3e
	ccf                                              ; $4c78: $3f
	ld a, [hl-]                                      ; $4c79: $3a
	inc a                                            ; $4c7a: $3c
	dec sp                                           ; $4c7b: $3b
	dec a                                            ; $4c7c: $3d
	and c                                            ; $4c7d: $a1
	ld e, [hl]                                       ; $4c7e: $5e
	ld c, b                                          ; $4c7f: $48
	inc h                                            ; $4c80: $24
	ld e, b                                          ; $4c81: $58
	inc [hl]                                         ; $4c82: $34
	inc h                                            ; $4c83: $24
	ld e, b                                          ; $4c84: $58
	ld b, [hl]                                       ; $4c85: $46
	xor h                                            ; $4c86: $ac
	ld l, a                                          ; $4c87: $6f
	xor $08                                          ; $4c88: $ee $08
	ld b, h                                          ; $4c8a: $44
	ld b, l                                          ; $4c8b: $45
	dec [hl]                                         ; $4c8c: $35
	inc hl                                           ; $4c8d: $23
	db $eb                                           ; $4c8e: $eb
	rst FarCall                                          ; $4c8f: $f7
	and c                                            ; $4c90: $a1
	cpl                                              ; $4c91: $2f
	ld b, e                                          ; $4c92: $43
	jr c, jr_08b_4cc9                                ; $4c93: $38 $34

	jr c, jr_08b_4d05                                ; $4c95: $38 $6e

	inc [hl]                                         ; $4c97: $34
	ld l, e                                          ; $4c98: $6b
	ld c, d                                          ; $4c99: $4a
	ld c, a                                          ; $4c9a: $4f
	ld a, [hl-]                                      ; $4c9b: $3a
	jr c, jr_08b_4c46                                ; $4c9c: $38 $a8

	ld [hl-], a                                      ; $4c9e: $32
	ld a, a                                          ; $4c9f: $7f

jr_08b_4ca0:
	ld b, d                                          ; $4ca0: $42
	ld a, c                                          ; $4ca1: $79
	jr c, @+$3e                                      ; $4ca2: $38 $3c

	ld c, b                                          ; $4ca4: $48
	inc sp                                           ; $4ca5: $33
	add hl, bc                                       ; $4ca6: $09
	ld b, b                                          ; $4ca7: $40
	ld c, l                                          ; $4ca8: $4d
	ld e, e                                          ; $4ca9: $5b
	ld d, [hl]                                       ; $4caa: $56
	and b                                            ; $4cab: $a0
	cpl                                              ; $4cac: $2f
	ld b, e                                          ; $4cad: $43
	add hl, sp                                       ; $4cae: $39
	ld e, c                                          ; $4caf: $59
	ld b, c                                          ; $4cb0: $41
	xor h                                            ; $4cb1: $ac
	ld d, d                                          ; $4cb2: $52
	ld b, h                                          ; $4cb3: $44
	ldh a, [c]                                       ; $4cb4: $f2
	ld l, c                                          ; $4cb5: $69
	pop af                                           ; $4cb6: $f1
	halt                                             ; $4cb7: $76
	ld e, l                                          ; $4cb8: $5d
	ccf                                              ; $4cb9: $3f
	ld c, [hl]                                       ; $4cba: $4e
	ld b, d                                          ; $4cbb: $42
	inc a                                            ; $4cbc: $3c
	ld a, [hl-]                                      ; $4cbd: $3a
	xor l                                            ; $4cbe: $ad
	db $ec                                           ; $4cbf: $ec
	and $3c                                          ; $4cc0: $e6 $3c
	ld c, b                                          ; $4cc2: $48
	xor h                                            ; $4cc3: $ac
	ldh a, [c]                                       ; $4cc4: $f2
	ld bc, $d2f0                                     ; $4cc5: $01 $f0 $d2
	ld d, e                                          ; $4cc8: $53

jr_08b_4cc9:
	ld hl, sp-$30                                    ; $4cc9: $f8 $d0
	ld l, [hl]                                       ; $4ccb: $6e
	inc a                                            ; $4ccc: $3c
	ld b, h                                          ; $4ccd: $44
	dec sp                                           ; $4cce: $3b
	dec a                                            ; $4ccf: $3d
	ld a, [hl-]                                      ; $4cd0: $3a
	and b                                            ; $4cd1: $a0
	add hl, bc                                       ; $4cd2: $09
	cpl                                              ; $4cd3: $2f
	ld b, e                                          ; $4cd4: $43
	ld a, [hl-]                                      ; $4cd5: $3a
	ld b, [hl]                                       ; $4cd6: $46
	inc [hl]                                         ; $4cd7: $34
	adc e                                            ; $4cd8: $8b
	ldh a, [$72]                                     ; $4cd9: $f0 $72
	xor l                                            ; $4cdb: $ad
	ld a, [hl-]                                      ; $4cdc: $3a
	ld b, c                                          ; $4cdd: $41
	inc a                                            ; $4cde: $3c
	ldh a, [rAUD4ENV]                                ; $4cdf: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4ce1: $f0 $23
	jr c, jr_08b_4d39                                ; $4ce3: $38 $54

	ld c, c                                          ; $4ce5: $49
	ld a, [hl-]                                      ; $4ce6: $3a
	jr c, jr_08b_4d25                                ; $4ce7: $38 $3c

	and c                                            ; $4ce9: $a1
	ld b, b                                          ; $4cea: $40
	add hl, sp                                       ; $4ceb: $39
	ld b, h                                          ; $4cec: $44
	ld a, [hl-]                                      ; $4ced: $3a
	xor l                                            ; $4cee: $ad
	ld b, [hl]                                       ; $4cef: $46
	inc [hl]                                         ; $4cf0: $34
	pop af                                           ; $4cf1: $f1
	adc $3a                                          ; $4cf2: $ce $3a
	jr c, @-$5e                                      ; $4cf4: $38 $a0

	ld e, h                                          ; $4cf6: $5c
	ld d, [hl]                                       ; $4cf7: $56
	dec sp                                           ; $4cf8: $3b
	and b                                            ; $4cf9: $a0
	jr c, jr_08b_4d37                                ; $4cfa: $38 $3b

	dec a                                            ; $4cfc: $3d
	ld e, c                                          ; $4cfd: $59
	jr c, jr_08b_4ca0                                ; $4cfe: $38 $a0

	cpl                                              ; $4d00: $2f
	ld b, e                                          ; $4d01: $43
	ld b, h                                          ; $4d02: $44
	inc [hl]                                         ; $4d03: $34
	db $eb                                           ; $4d04: $eb

jr_08b_4d05:
	ld l, b                                          ; $4d05: $68
	inc a                                            ; $4d06: $3c
	and c                                            ; $4d07: $a1
	add a                                            ; $4d08: $87
	ldh a, [$5b]                                     ; $4d09: $f0 $5b
	ldh a, [$5e]                                     ; $4d0b: $f0 $5e
	db $ec                                           ; $4d0d: $ec
	ret c                                            ; $4d0e: $d8

	ld h, e                                          ; $4d0f: $63
	ld b, l                                          ; $4d10: $45
	xor b                                            ; $4d11: $a8
	ldh a, [$0a]                                     ; $4d12: $f0 $0a
	ld d, l                                          ; $4d14: $55
	ldh a, [c]                                       ; $4d15: $f2
	rlca                                             ; $4d16: $07
	ld d, h                                          ; $4d17: $54
	ld a, $3a                                        ; $4d18: $3e $3a
	ld e, b                                          ; $4d1a: $58
	jr c, jr_08b_4d62                                ; $4d1b: $38 $45

	ld c, h                                          ; $4d1d: $4c
	and b                                            ; $4d1e: $a0
	cpl                                              ; $4d1f: $2f
	ld b, e                                          ; $4d20: $43
	ld b, [hl]                                       ; $4d21: $46
	inc [hl]                                         ; $4d22: $34
	xor $2d                                          ; $4d23: $ee $2d

jr_08b_4d25:
	xor b                                            ; $4d25: $a8
	ld b, l                                          ; $4d26: $45
	jr c, @+$40                                      ; $4d27: $38 $3e

	ld h, [hl]                                       ; $4d29: $66
	dec sp                                           ; $4d2a: $3b
	ld c, c                                          ; $4d2b: $49
	and b                                            ; $4d2c: $a0
	cpl                                              ; $4d2d: $2f
	ldh a, [$7e]                                     ; $4d2e: $f0 $7e
	ldh a, [$1f]                                     ; $4d30: $f0 $1f
	ldh a, [$7e]                                     ; $4d32: $f0 $7e
	ldh a, [$1f]                                     ; $4d34: $f0 $1f
	add hl, bc                                       ; $4d36: $09

jr_08b_4d37:
	cpl                                              ; $4d37: $2f
	ld [hl-], a                                      ; $4d38: $32

jr_08b_4d39:
	ld l, e                                          ; $4d39: $6b
	ld b, h                                          ; $4d3a: $44
	ld e, a                                          ; $4d3b: $5f
	xor b                                            ; $4d3c: $a8
	add h                                            ; $4d3d: $84
	ld b, d                                          ; $4d3e: $42
	ldh a, [$d2]                                     ; $4d3f: $f0 $d2
	ld h, d                                          ; $4d41: $62
	ldh a, [$7e]                                     ; $4d42: $f0 $7e
	ldh a, [$1f]                                     ; $4d44: $f0 $1f
	ldh a, [$7e]                                     ; $4d46: $f0 $7e
	ldh a, [$1f]                                     ; $4d48: $f0 $1f
	ld c, c                                          ; $4d4a: $49
	ld c, b                                          ; $4d4b: $48
	and e                                            ; $4d4c: $a3
	ld d, d                                          ; $4d4d: $52
	ld b, [hl]                                       ; $4d4e: $46
	inc [hl]                                         ; $4d4f: $34
	jr c, @+$3a                                      ; $4d50: $38 $38

	ld h, e                                          ; $4d52: $63
	xor b                                            ; $4d53: $a8
	ldh a, [c]                                       ; $4d54: $f2
	ld a, b                                          ; $4d55: $78
	ld a, $3f                                        ; $4d56: $3e $3f
	rst SubAFromDE                                          ; $4d58: $df
	xor b                                            ; $4d59: $a8
	ld b, [hl]                                       ; $4d5a: $46
	ld a, [hl-]                                      ; $4d5b: $3a
	dec a                                            ; $4d5c: $3d
	inc [hl]                                         ; $4d5d: $34
	ld h, h                                          ; $4d5e: $64
	db $ed                                           ; $4d5f: $ed
	ld [hl], c                                       ; $4d60: $71
	ld c, e                                          ; $4d61: $4b

jr_08b_4d62:
	and c                                            ; $4d62: $a1
	cpl                                              ; $4d63: $2f
	ld b, e                                          ; $4d64: $43
	ld de, $1312                                     ; $4d65: $11 $12 $13
	ld b, h                                          ; $4d68: $44
	ld e, l                                          ; $4d69: $5d
	ld e, d                                          ; $4d6a: $5a
	ld c, b                                          ; $4d6b: $48
	and b                                            ; $4d6c: $a0
	ld b, b                                          ; $4d6d: $40
	ld c, l                                          ; $4d6e: $4d
	ld e, e                                          ; $4d6f: $5b
	ld d, [hl]                                       ; $4d70: $56
	xor h                                            ; $4d71: $ac
	ld d, d                                          ; $4d72: $52
	dec a                                            ; $4d73: $3d
	ldh a, [rHDMA3]                                  ; $4d74: $f0 $53
	jr c, jr_08b_4dca                                ; $4d76: $38 $52

	ld a, $66                                        ; $4d78: $3e $66
	add hl, sp                                       ; $4d7a: $39
	xor b                                            ; $4d7b: $a8
	ld de, $56f0                                     ; $4d7c: $11 $f0 $56
	xor b                                            ; $4d7f: $a8
	ldh a, [$08]                                     ; $4d80: $f0 $08
	ld e, c                                          ; $4d82: $59
	ldh a, [$08]                                     ; $4d83: $f0 $08
	ldh a, [$08]                                     ; $4d85: $f0 $08
	ldh a, [$08]                                     ; $4d87: $f0 $08
	ldh a, [$08]                                     ; $4d89: $f0 $08
	ldh a, [$08]                                     ; $4d8b: $f0 $08
	ldh a, [$08]                                     ; $4d8d: $f0 $08
	and b                                            ; $4d8f: $a0
	cpl                                              ; $4d90: $2f
	ld b, e                                          ; $4d91: $43
	ld a, [hl-]                                      ; $4d92: $3a
	ld b, [hl]                                       ; $4d93: $46
	inc [hl]                                         ; $4d94: $34
	adc e                                            ; $4d95: $8b
	ldh a, [$72]                                     ; $4d96: $f0 $72
	xor l                                            ; $4d98: $ad
	ld l, d                                          ; $4d99: $6a
	ld b, d                                          ; $4d9a: $42
	inc [hl]                                         ; $4d9b: $34
	ldh a, [$98]                                     ; $4d9c: $f0 $98
	and c                                            ; $4d9e: $a1
	ld h, h                                          ; $4d9f: $64
	sbc [hl]                                         ; $4da0: $9e
	inc [hl]                                         ; $4da1: $34
	db $ec                                           ; $4da2: $ec
	dec b                                            ; $4da3: $05
	ld b, d                                          ; $4da4: $42
	inc a                                            ; $4da5: $3c
	ld b, l                                          ; $4da6: $45
	dec [hl]                                         ; $4da7: $35
	rla                                              ; $4da8: $17
	db $eb                                           ; $4da9: $eb
	ld de, $4a52                                     ; $4daa: $11 $52 $4a
	ld b, [hl]                                       ; $4dad: $46
	ld c, [hl]                                       ; $4dae: $4e
	xor h                                            ; $4daf: $ac
	ldh a, [$b3]                                     ; $4db0: $f0 $b3
	xor $25                                          ; $4db2: $ee $25
	ld [hl-], a                                      ; $4db4: $32
	inc a                                            ; $4db5: $3c
	ld d, e                                          ; $4db6: $53
	ld l, h                                          ; $4db7: $6c
	add [hl]                                         ; $4db8: $86
	ld l, h                                          ; $4db9: $6c
	ld d, b                                          ; $4dba: $50
	inc sp                                           ; $4dbb: $33
	ld h, d                                          ; $4dbc: $62
	and b                                            ; $4dbd: $a0
	cpl                                              ; $4dbe: $2f
	ld b, e                                          ; $4dbf: $43
	ldh a, [$5a]                                     ; $4dc0: $f0 $5a
	add l                                            ; $4dc2: $85
	inc [hl]                                         ; $4dc3: $34
	ld l, d                                          ; $4dc4: $6a
	ld b, d                                          ; $4dc5: $42
	pop af                                           ; $4dc6: $f1
	ld b, [hl]                                       ; $4dc7: $46
	ld d, e                                          ; $4dc8: $53
	xor h                                            ; $4dc9: $ac

jr_08b_4dca:
	xor $1e                                          ; $4dca: $ee $1e
	ldh a, [$b3]                                     ; $4dcc: $f0 $b3
	xor $25                                          ; $4dce: $ee $25
	ld a, [hl-]                                      ; $4dd0: $3a
	ld b, c                                          ; $4dd1: $41
	ld b, h                                          ; $4dd2: $44
	ld c, b                                          ; $4dd3: $48
	and b                                            ; $4dd4: $a0
	jr c, jr_08b_4e0f                                ; $4dd5: $38 $38

	ld b, l                                          ; $4dd7: $45
	ld a, [hl-]                                      ; $4dd8: $3a
	ld b, [hl]                                       ; $4dd9: $46
	inc [hl]                                         ; $4dda: $34
	ld h, h                                          ; $4ddb: $64
	sbc [hl]                                         ; $4ddc: $9e
	xor b                                            ; $4ddd: $a8
	ldh a, [$d2]                                     ; $4dde: $f0 $d2
	ld c, c                                          ; $4de0: $49
	db $ed                                           ; $4de1: $ed
	ld [hl], c                                       ; $4de2: $71
	inc [hl]                                         ; $4de3: $34
	ldh a, [$f4]                                     ; $4de4: $f0 $f4
	ld e, [hl]                                       ; $4de6: $5e
	ccf                                              ; $4de7: $3f
	ld c, a                                          ; $4de8: $4f
	ld d, b                                          ; $4de9: $50
	ld e, [hl]                                       ; $4dea: $5e
	ccf                                              ; $4deb: $3f
	ld c, b                                          ; $4dec: $48
	add hl, bc                                       ; $4ded: $09
	cpl                                              ; $4dee: $2f
	ld b, e                                          ; $4def: $43
	xor $10                                          ; $4df0: $ee $10
	and b                                            ; $4df2: $a0
	add hl, bc                                       ; $4df3: $09
	cpl                                              ; $4df4: $2f
	ld b, e                                          ; $4df5: $43
	ldh a, [$3f]                                     ; $4df6: $f0 $3f
	ld c, e                                          ; $4df8: $4b
	inc [hl]                                         ; $4df9: $34
	ldh a, [rVBK]                                    ; $4dfa: $f0 $4f
	ld d, e                                          ; $4dfc: $53
	ldh a, [hDisp1_LCDC]                                     ; $4dfd: $f0 $8f
	ld d, d                                          ; $4dff: $52
	ld c, [hl]                                       ; $4e00: $4e
	adc l                                            ; $4e01: $8d
	xor b                                            ; $4e02: $a8
	ld [hl-], a                                      ; $4e03: $32
	ld d, l                                          ; $4e04: $55
	ld e, c                                          ; $4e05: $59
	dec sp                                           ; $4e06: $3b
	inc [hl]                                         ; $4e07: $34
	ld a, $f0                                        ; $4e08: $3e $f0
	ld c, l                                          ; $4e0a: $4d
	ld c, l                                          ; $4e0b: $4d
	ld c, [hl]                                       ; $4e0c: $4e
	ldh a, [$7b]                                     ; $4e0d: $f0 $7b

jr_08b_4e0f:
	ldh a, [rP1]                                     ; $4e0f: $f0 $00
	ldh a, [$8e]                                     ; $4e11: $f0 $8e
	and e                                            ; $4e13: $a3
	ld [$ac40], a                                    ; $4e14: $ea $40 $ac
	ldh a, [$57]                                     ; $4e17: $f0 $57
	ldh a, [$ae]                                     ; $4e19: $f0 $ae
	ld a, [hl-]                                      ; $4e1b: $3a
	ldh a, [$3f]                                     ; $4e1c: $f0 $3f
	ld c, h                                          ; $4e1e: $4c
	and b                                            ; $4e1f: $a0
	cpl                                              ; $4e20: $2f
	ld b, e                                          ; $4e21: $43
	ld b, [hl]                                       ; $4e22: $46
	inc [hl]                                         ; $4e23: $34
	ld b, [hl]                                       ; $4e24: $46
	ld d, a                                          ; $4e25: $57
	ld d, e                                          ; $4e26: $53
	ld c, c                                          ; $4e27: $49
	add hl, sp                                       ; $4e28: $39
	and b                                            ; $4e29: $a0
	ld b, [hl]                                       ; $4e2a: $46
	inc [hl]                                         ; $4e2b: $34
	ld b, [hl]                                       ; $4e2c: $46
	ld a, [hl-]                                      ; $4e2d: $3a
	dec a                                            ; $4e2e: $3d
	adc d                                            ; $4e2f: $8a
	ldh a, [$73]                                     ; $4e30: $f0 $73
	adc a                                            ; $4e32: $8f
	ld b, d                                          ; $4e33: $42
	ld c, b                                          ; $4e34: $48
	dec [hl]                                         ; $4e35: $35
	inc h                                            ; $4e36: $24
	inc de                                           ; $4e37: $13
	ld e, [hl]                                       ; $4e38: $5e
	ld e, c                                          ; $4e39: $59
	ld c, c                                          ; $4e3a: $49
	inc [hl]                                         ; $4e3b: $34
	inc hl                                           ; $4e3c: $23
	ldh a, [$98]                                     ; $4e3d: $f0 $98
	ld b, h                                          ; $4e3f: $44
	dec sp                                           ; $4e40: $3b
	ld e, l                                          ; $4e41: $5d
	and c                                            ; $4e42: $a1
	cpl                                              ; $4e43: $2f
	ld b, e                                          ; $4e44: $43
	ld de, $4412                                     ; $4e45: $11 $12 $44
	ld b, l                                          ; $4e48: $45
	xor b                                            ; $4e49: $a8
	ld b, b                                          ; $4e4a: $40
	add hl, sp                                       ; $4e4b: $39
	jr c, jr_08b_4e87                                ; $4e4c: $38 $39

	ldh a, [rRP]                                     ; $4e4e: $f0 $56
	ld c, a                                          ; $4e50: $4f
	inc [hl]                                         ; $4e51: $34
	adc d                                            ; $4e52: $8a
	ldh a, [$73]                                     ; $4e53: $f0 $73
	adc a                                            ; $4e55: $8f
	ld b, d                                          ; $4e56: $42
	ld c, b                                          ; $4e57: $48
	dec [hl]                                         ; $4e58: $35
	inc hl                                           ; $4e59: $23
	inc de                                           ; $4e5a: $13
	add hl, sp                                       ; $4e5b: $39
	ld e, c                                          ; $4e5c: $59
	ld b, c                                          ; $4e5d: $41
	ld c, c                                          ; $4e5e: $49
	inc [hl]                                         ; $4e5f: $34
	inc hl                                           ; $4e60: $23
	ldh a, [$98]                                     ; $4e61: $f0 $98
	ld b, h                                          ; $4e63: $44
	dec sp                                           ; $4e64: $3b
	ld e, l                                          ; $4e65: $5d
	and c                                            ; $4e66: $a1
	ld b, [hl]                                       ; $4e67: $46
	ld c, e                                          ; $4e68: $4b
	ld c, e                                          ; $4e69: $4b
	ld c, e                                          ; $4e6a: $4b
	ld c, e                                          ; $4e6b: $4b
	ld c, b                                          ; $4e6c: $48
	xor h                                            ; $4e6d: $ac
	db $ec                                           ; $4e6e: $ec
	ld d, a                                          ; $4e6f: $57
	ld b, l                                          ; $4e70: $45
	xor b                                            ; $4e71: $a8
	ld b, [hl]                                       ; $4e72: $46
	ld b, [hl]                                       ; $4e73: $46
	inc [hl]                                         ; $4e74: $34
	ld h, h                                          ; $4e75: $64
	inc a                                            ; $4e76: $3c
	ld a, $38                                        ; $4e77: $3e $38
	ld c, b                                          ; $4e79: $48
	and b                                            ; $4e7a: $a0
	cpl                                              ; $4e7b: $2f
	ld b, e                                          ; $4e7c: $43
	ld b, [hl]                                       ; $4e7d: $46
	ld c, l                                          ; $4e7e: $4d
	xor h                                            ; $4e7f: $ac
	adc a                                            ; $4e80: $8f
	pop af                                           ; $4e81: $f1
	rrca                                             ; $4e82: $0f
	ld c, e                                          ; $4e83: $4b
	db $eb                                           ; $4e84: $eb
	rst FarCall                                          ; $4e85: $f7
	and c                                            ; $4e86: $a1

jr_08b_4e87:
	ld b, b                                          ; $4e87: $40
	ld c, l                                          ; $4e88: $4d
	ld c, e                                          ; $4e89: $4b
	xor h                                            ; $4e8a: $ac
	db $ec                                           ; $4e8b: $ec
	xor $42                                          ; $4e8c: $ee $42
	ldh a, [$7b]                                     ; $4e8e: $f0 $7b
	ldh a, [rP1]                                     ; $4e90: $f0 $00
	ldh a, [$8e]                                     ; $4e92: $f0 $8e
	ld b, l                                          ; $4e94: $45
	xor b                                            ; $4e95: $a8
	db $ec                                           ; $4e96: $ec
	db $d3                                           ; $4e97: $d3
	inc [hl]                                         ; $4e98: $34
	db $ed                                           ; $4e99: $ed
	dec h                                            ; $4e9a: $25
	ld c, d                                          ; $4e9b: $4a
	ldh a, [$bd]                                     ; $4e9c: $f0 $bd
	inc a                                            ; $4e9e: $3c
	ld a, [hl-]                                      ; $4e9f: $3a
	jr c, jr_08b_4ee4                                ; $4ea0: $38 $42

	and c                                            ; $4ea2: $a1
	cpl                                              ; $4ea3: $2f
	ld b, e                                          ; $4ea4: $43
	ld a, [hl-]                                      ; $4ea5: $3a
	ld b, c                                          ; $4ea6: $41
	ccf                                              ; $4ea7: $3f
	add d                                            ; $4ea8: $82
	add hl, sp                                       ; $4ea9: $39
	inc a                                            ; $4eaa: $3c
	ld e, b                                          ; $4eab: $58
	ld [hl], h                                       ; $4eac: $74
	xor h                                            ; $4ead: $ac
	pop af                                           ; $4eae: $f1
	or [hl]                                          ; $4eaf: $b6
	ld c, e                                          ; $4eb0: $4b
	inc [hl]                                         ; $4eb1: $34
	db $ed                                           ; $4eb2: $ed
	ld e, a                                          ; $4eb3: $5f
	ldh a, [rSVBK]                                   ; $4eb4: $f0 $70
	ld b, h                                          ; $4eb6: $44
	inc a                                            ; $4eb7: $3c
	ld d, b                                          ; $4eb8: $50
	inc de                                           ; $4eb9: $13
	ld a, [$4de1]                                    ; $4eba: $fa $e1 $4d
	ld c, [hl]                                       ; $4ebd: $4e
	ld b, d                                          ; $4ebe: $42
	ld c, e                                          ; $4ebf: $4b
	inc [hl]                                         ; $4ec0: $34
	ldh a, [$64]                                     ; $4ec1: $f0 $64
	jr c, jr_08b_4eff                                ; $4ec3: $38 $3a

	ld b, c                                          ; $4ec5: $41
	ld b, h                                          ; $4ec6: $44
	and b                                            ; $4ec7: $a0
	ld e, e                                          ; $4ec8: $5b
	ld d, [hl]                                       ; $4ec9: $56
	ld b, [hl]                                       ; $4eca: $46
	inc [hl]                                         ; $4ecb: $34
	db $ec                                           ; $4ecc: $ec
	db $d3                                           ; $4ecd: $d3
	inc de                                           ; $4ece: $13
	adc d                                            ; $4ecf: $8a
	ldh a, [$73]                                     ; $4ed0: $f0 $73
	adc a                                            ; $4ed2: $8f
	ld b, a                                          ; $4ed3: $47
	xor $1a                                          ; $4ed4: $ee $1a
	ld a, $3d                                        ; $4ed6: $3e $3d
	ld b, d                                          ; $4ed8: $42
	ld b, l                                          ; $4ed9: $45
	and b                                            ; $4eda: $a0
	cpl                                              ; $4edb: $2f
	ld b, e                                          ; $4edc: $43
	ld a, [hl-]                                      ; $4edd: $3a
	ld b, c                                          ; $4ede: $41
	ccf                                              ; $4edf: $3f
	add d                                            ; $4ee0: $82
	add hl, sp                                       ; $4ee1: $39
	inc a                                            ; $4ee2: $3c
	ld e, b                                          ; $4ee3: $58

jr_08b_4ee4:
	ld [hl], h                                       ; $4ee4: $74
	xor h                                            ; $4ee5: $ac
	pop af                                           ; $4ee6: $f1
	or [hl]                                          ; $4ee7: $b6
	ld c, e                                          ; $4ee8: $4b
	inc [hl]                                         ; $4ee9: $34
	db $ed                                           ; $4eea: $ed
	ld e, a                                          ; $4eeb: $5f
	ldh a, [rSVBK]                                   ; $4eec: $f0 $70
	ld b, h                                          ; $4eee: $44
	inc a                                            ; $4eef: $3c
	ld d, b                                          ; $4ef0: $50
	inc de                                           ; $4ef1: $13
	or $a5                                           ; $4ef2: $f6 $a5
	ld sp, hl                                        ; $4ef4: $f9
	and a                                            ; $4ef5: $a7
	db $ec                                           ; $4ef6: $ec
	add hl, hl                                       ; $4ef7: $29
	ld a, [hl-]                                      ; $4ef8: $3a
	ld b, c                                          ; $4ef9: $41
	ld b, h                                          ; $4efa: $44
	and b                                            ; $4efb: $a0
	ld b, [hl]                                       ; $4efc: $46
	ld c, e                                          ; $4efd: $4b
	ld c, e                                          ; $4efe: $4b

jr_08b_4eff:
	ld c, e                                          ; $4eff: $4b
	ld c, e                                          ; $4f00: $4b
	xor l                                            ; $4f01: $ad
	ld b, b                                          ; $4f02: $40
	ld b, c                                          ; $4f03: $41
	ld a, [hl-]                                      ; $4f04: $3a
	inc [hl]                                         ; $4f05: $34
	db $ed                                           ; $4f06: $ed
	ld e, a                                          ; $4f07: $5f
	ldh a, [rSVBK]                                   ; $4f08: $f0 $70
	jr c, jr_08b_4f46                                ; $4f0a: $38 $3a

	jr c, jr_08b_4f71                                ; $4f0c: $38 $63

	ld b, l                                          ; $4f0e: $45
	and b                                            ; $4f0f: $a0
	cpl                                              ; $4f10: $2f
	ld b, e                                          ; $4f11: $43
	db $ec                                           ; $4f12: $ec
	reti                                             ; $4f13: $d9


	ldh a, [c]                                       ; $4f14: $f2
	db $eb                                           ; $4f15: $eb
	xor $10                                          ; $4f16: $ee $10
	xor b                                            ; $4f18: $a8
	pop af                                           ; $4f19: $f1
	ld d, l                                          ; $4f1a: $55
	ld b, a                                          ; $4f1b: $47
	inc [hl]                                         ; $4f1c: $34
	ldh a, [$f0]                                     ; $4f1d: $f0 $f0
	ld c, d                                          ; $4f1f: $4a
	ldh a, [$bd]                                     ; $4f20: $f0 $bd
	ld e, h                                          ; $4f22: $5c
	dec a                                            ; $4f23: $3d
	inc a                                            ; $4f24: $3c
	dec sp                                           ; $4f25: $3b
	dec a                                            ; $4f26: $3d
	inc de                                           ; $4f27: $13
	ld b, h                                          ; $4f28: $44
	ld e, l                                          ; $4f29: $5d
	ld a, [hl-]                                      ; $4f2a: $3a
	ld b, c                                          ; $4f2b: $41
	ld b, h                                          ; $4f2c: $44
	ld e, l                                          ; $4f2d: $5d
	ld e, d                                          ; $4f2e: $5a
	ld c, h                                          ; $4f2f: $4c
	and b                                            ; $4f30: $a0
	ld b, [hl]                                       ; $4f31: $46
	ld b, [hl]                                       ; $4f32: $46
	xor h                                            ; $4f33: $ac
	di                                               ; $4f34: $f3
	ld [hl], c                                       ; $4f35: $71
	ld d, e                                          ; $4f36: $53
	sub h                                            ; $4f37: $94
	ccf                                              ; $4f38: $3f
	ld e, h                                          ; $4f39: $5c
	ld h, c                                          ; $4f3a: $61
	ld d, [hl]                                       ; $4f3b: $56
	dec sp                                           ; $4f3c: $3b
	dec a                                            ; $4f3d: $3d
	xor b                                            ; $4f3e: $a8
	ld l, d                                          ; $4f3f: $6a
	ldh a, [$0d]                                     ; $4f40: $f0 $0d
	ld c, e                                          ; $4f42: $4b
	inc [hl]                                         ; $4f43: $34
	db $ed                                           ; $4f44: $ed
	dec h                                            ; $4f45: $25

jr_08b_4f46:
	ld c, d                                          ; $4f46: $4a
	xor h                                            ; $4f47: $ac
	ld h, h                                          ; $4f48: $64
	ldh a, [rAUDVOL]                                 ; $4f49: $f0 $24
	ld a, $52                                        ; $4f4b: $3e $52
	ld a, $66                                        ; $4f4d: $3e $66
	add hl, sp                                       ; $4f4f: $39

jr_08b_4f50:
	and b                                            ; $4f50: $a0
	cpl                                              ; $4f51: $2f
	ld b, e                                          ; $4f52: $43
	ld d, c                                          ; $4f53: $51
	sbc l                                            ; $4f54: $9d
	ld b, a                                          ; $4f55: $47
	ldh a, [c]                                       ; $4f56: $f2
	ld bc, $ac39                                     ; $4f57: $01 $39 $ac
	ldh a, [rAUD4ENV]                                ; $4f5a: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4f5c: $f0 $23
	jr c, jr_08b_4f50                                ; $4f5e: $38 $f0

	ld hl, sp+$48                                    ; $4f60: $f8 $48
	and b                                            ; $4f62: $a0
	ld b, b                                          ; $4f63: $40
	ld b, c                                          ; $4f64: $41
	ld a, [hl-]                                      ; $4f65: $3a
	ld b, a                                          ; $4f66: $47
	xor h                                            ; $4f67: $ac
	ldh a, [$3e]                                     ; $4f68: $f0 $3e
	ldh a, [$0b]                                     ; $4f6a: $f0 $0b
	ld a, [hl-]                                      ; $4f6c: $3a
	ld b, c                                          ; $4f6d: $41
	ld b, h                                          ; $4f6e: $44
	inc a                                            ; $4f6f: $3c
	ld d, b                                          ; $4f70: $50

jr_08b_4f71:
	inc de                                           ; $4f71: $13
	adc d                                            ; $4f72: $8a
	ldh a, [$73]                                     ; $4f73: $f0 $73
	adc a                                            ; $4f75: $8f
	ld b, a                                          ; $4f76: $47
	xor $1a                                          ; $4f77: $ee $1a
	ld d, c                                          ; $4f79: $51
	ld c, l                                          ; $4f7a: $4d
	ld a, e                                          ; $4f7b: $7b
	jr c, jr_08b_4fb6                                ; $4f7c: $38 $38

	ld b, d                                          ; $4f7e: $42
	ld b, a                                          ; $4f7f: $47
	ld c, b                                          ; $4f80: $48
	and b                                            ; $4f81: $a0
	cpl                                              ; $4f82: $2f
	ld b, e                                          ; $4f83: $43
	ldh a, [$3f]                                     ; $4f84: $f0 $3f
	ld c, e                                          ; $4f86: $4b
	inc [hl]                                         ; $4f87: $34
	dec a                                            ; $4f88: $3d
	ld d, d                                          ; $4f89: $52
	ld b, a                                          ; $4f8a: $47
	ldh a, [$bd]                                     ; $4f8b: $f0 $bd
	ld d, l                                          ; $4f8d: $55
	inc de                                           ; $4f8e: $13
	sbc l                                            ; $4f8f: $9d
	ld d, b                                          ; $4f90: $50
	jr c, jr_08b_4fe6                                ; $4f91: $38 $53

	inc [hl]                                         ; $4f93: $34
	ldh a, [$65]                                     ; $4f94: $f0 $65
	ld b, a                                          ; $4f96: $47
	jr c, @+$3a                                      ; $4f97: $38 $38

	ld b, c                                          ; $4f99: $41
	ld b, h                                          ; $4f9a: $44
	ld b, l                                          ; $4f9b: $45
	and b                                            ; $4f9c: $a0
	ldh a, [$5a]                                     ; $4f9d: $f0 $5a
	ld e, [hl]                                       ; $4f9f: $5e
	dec sp                                           ; $4fa0: $3b
	xor h                                            ; $4fa1: $ac
	ldh a, [$3f]                                     ; $4fa2: $f0 $3f
	dec sp                                           ; $4fa4: $3b
	ccf                                              ; $4fa5: $3f
	dec a                                            ; $4fa6: $3d
	ld d, d                                          ; $4fa7: $52
	ld b, a                                          ; $4fa8: $47
	ldh a, [$bd]                                     ; $4fa9: $f0 $bd
	ld d, l                                          ; $4fab: $55
	ld c, c                                          ; $4fac: $49
	inc de                                           ; $4fad: $13
	ldh a, [$65]                                     ; $4fae: $f0 $65
	ld b, a                                          ; $4fb0: $47
	jr c, jr_08b_4feb                                ; $4fb1: $38 $38

	ld b, c                                          ; $4fb3: $41
	ld b, h                                          ; $4fb4: $44
	and b                                            ; $4fb5: $a0

jr_08b_4fb6:
	cpl                                              ; $4fb6: $2f
	ld b, e                                          ; $4fb7: $43
	ld b, b                                          ; $4fb8: $40
	add hl, sp                                       ; $4fb9: $39
	inc [hl]                                         ; $4fba: $34
	ldh a, [$0b]                                     ; $4fbb: $f0 $0b
	ld b, d                                          ; $4fbd: $42
	add b                                            ; $4fbe: $80
	pop af                                           ; $4fbf: $f1
	halt                                             ; $4fc0: $76
	ld h, d                                          ; $4fc1: $62
	inc de                                           ; $4fc2: $13
	ld a, [$f307]                                    ; $4fc3: $fa $07 $f3
	sbc [hl]                                         ; $4fc6: $9e
	ld e, b                                          ; $4fc7: $58
	ld c, l                                          ; $4fc8: $4d
	ccf                                              ; $4fc9: $3f
	inc [hl]                                         ; $4fca: $34
	ld d, h                                          ; $4fcb: $54
	add hl, sp                                       ; $4fcc: $39
	ld c, b                                          ; $4fcd: $48
	inc [hl]                                         ; $4fce: $34
	inc hl                                           ; $4fcf: $23
	ldh a, [$f5]                                     ; $4fd0: $f0 $f5
	add hl, sp                                       ; $4fd2: $39
	dec sp                                           ; $4fd3: $3b
	ccf                                              ; $4fd4: $3f
	and b                                            ; $4fd5: $a0
	ld b, [hl]                                       ; $4fd6: $46
	ld c, e                                          ; $4fd7: $4b
	ld c, e                                          ; $4fd8: $4b
	ld c, e                                          ; $4fd9: $4b
	ld c, e                                          ; $4fda: $4b
	ld c, b                                          ; $4fdb: $48
	dec [hl]                                         ; $4fdc: $35
	rla                                              ; $4fdd: $17
	ld l, a                                          ; $4fde: $6f
	inc [hl]                                         ; $4fdf: $34
	db $ec                                           ; $4fe0: $ec
	ld d, a                                          ; $4fe1: $57
	xor b                                            ; $4fe2: $a8
	ld b, [hl]                                       ; $4fe3: $46
	ld a, [hl-]                                      ; $4fe4: $3a
	dec a                                            ; $4fe5: $3d

jr_08b_4fe6:
	ld c, e                                          ; $4fe6: $4b
	ld c, b                                          ; $4fe7: $48
	and c                                            ; $4fe8: $a1
	cpl                                              ; $4fe9: $2f
	ld b, e                                          ; $4fea: $43

jr_08b_4feb:
	ld b, [hl]                                       ; $4feb: $46
	inc [hl]                                         ; $4fec: $34
	halt                                             ; $4fed: $76
	xor h                                            ; $4fee: $ac
	ld de, $a012                                     ; $4fef: $11 $12 $a0
	ld a, a                                          ; $4ff2: $7f
	ld d, e                                          ; $4ff3: $53
	pop af                                           ; $4ff4: $f1
	dec a                                            ; $4ff5: $3d
	jr c, jr_08b_5035                                ; $4ff6: $38 $3d

	ld d, b                                          ; $4ff8: $50
	xor h                                            ; $4ff9: $ac
	db $ed                                           ; $4ffa: $ed
	dec h                                            ; $4ffb: $25
	ld b, a                                          ; $4ffc: $47
	ld b, [hl]                                       ; $4ffd: $46
	ld b, b                                          ; $4ffe: $40
	ldh a, [rKEY1]                                   ; $4fff: $f0 $4d
	ld b, a                                          ; $5001: $47
	ld a, b                                          ; $5002: $78
	ccf                                              ; $5003: $3f
	ld b, l                                          ; $5004: $45
	xor b                                            ; $5005: $a8
	ldh a, [c]                                       ; $5006: $f2
	or e                                             ; $5007: $b3
	ldh a, [c]                                       ; $5008: $f2
	ld d, d                                          ; $5009: $52
	ld d, c                                          ; $500a: $51
	ld c, [hl]                                       ; $500b: $4e
	ld h, e                                          ; $500c: $63
	ld b, l                                          ; $500d: $45
	and b                                            ; $500e: $a0
	cpl                                              ; $500f: $2f
	ld b, e                                          ; $5010: $43
	ld b, [hl]                                       ; $5011: $46
	ld b, [hl]                                       ; $5012: $46
	inc [hl]                                         ; $5013: $34
	ld a, a                                          ; $5014: $7f
	ld d, e                                          ; $5015: $53
	pop af                                           ; $5016: $f1
	dec a                                            ; $5017: $3d

jr_08b_5018:
	jr c, jr_08b_5057                                ; $5018: $38 $3d

	ld d, b                                          ; $501a: $50
	ld c, h                                          ; $501b: $4c
	and b                                            ; $501c: $a0
	ld [$a044], a                                    ; $501d: $ea $44 $a0
	cpl                                              ; $5020: $2f
	ld b, e                                          ; $5021: $43
	ldh a, [rAUD4ENV]                                ; $5022: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5024: $f0 $23
	jr c, jr_08b_5018                                ; $5026: $38 $f0

	ld hl, sp+$48                                    ; $5028: $f8 $48
	and b                                            ; $502a: $a0
	ld l, a                                          ; $502b: $6f
	ld c, a                                          ; $502c: $4f
	ldh a, [$3f]                                     ; $502d: $f0 $3f
	ld d, e                                          ; $502f: $53
	adc e                                            ; $5030: $8b
	ld e, h                                          ; $5031: $5c
	ld c, d                                          ; $5032: $4a
	xor h                                            ; $5033: $ac
	dec a                                            ; $5034: $3d

jr_08b_5035:
	ld d, d                                          ; $5035: $52
	ld b, a                                          ; $5036: $47
	ldh a, [$bd]                                     ; $5037: $f0 $bd
	jr c, jr_08b_507a                                ; $5039: $38 $3f

	ld c, [hl]                                       ; $503b: $4e
	ld b, c                                          ; $503c: $41
	ld b, h                                          ; $503d: $44
	and b                                            ; $503e: $a0
	cpl                                              ; $503f: $2f
	ld b, e                                          ; $5040: $43
	ldh a, [$5a]                                     ; $5041: $f0 $5a
	add l                                            ; $5043: $85
	inc [hl]                                         ; $5044: $34
	ld l, d                                          ; $5045: $6a
	ldh a, [$0d]                                     ; $5046: $f0 $0d
	ld [hl], d                                       ; $5048: $72
	ld a, c                                          ; $5049: $79
	ccf                                              ; $504a: $3f
	ld b, l                                          ; $504b: $45
	and b                                            ; $504c: $a0
	xor $05                                          ; $504d: $ee $05
	ld b, l                                          ; $504f: $45
	xor b                                            ; $5050: $a8
	ld l, a                                          ; $5051: $6f
	ld b, d                                          ; $5052: $42
	ldh a, [$3f]                                     ; $5053: $f0 $3f
	ld c, e                                          ; $5055: $4b
	inc [hl]                                         ; $5056: $34

jr_08b_5057:
	add h                                            ; $5057: $84
	ld b, a                                          ; $5058: $47
	ld [hl], d                                       ; $5059: $72
	ld a, c                                          ; $505a: $79
	ld c, [hl]                                       ; $505b: $4e
	ld c, c                                          ; $505c: $49
	inc de                                           ; $505d: $13
	ldh a, [rOBP0]                                   ; $505e: $f0 $48
	ld e, h                                          ; $5060: $5c
	ld b, h                                          ; $5061: $44
	ld d, c                                          ; $5062: $51
	ld b, d                                          ; $5063: $42
	ld b, l                                          ; $5064: $45
	and b                                            ; $5065: $a0
	cpl                                              ; $5066: $2f
	ld b, e                                          ; $5067: $43
	ld b, b                                          ; $5068: $40
	ld c, l                                          ; $5069: $4d
	ld h, d                                          ; $506a: $62
	inc [hl]                                         ; $506b: $34
	halt                                             ; $506c: $76
	ld d, e                                          ; $506d: $53
	di                                               ; $506e: $f3
	xor c                                            ; $506f: $a9
	ld c, d                                          ; $5070: $4a
	inc de                                           ; $5071: $13
	di                                               ; $5072: $f3
	dec h                                            ; $5073: $25
	ld d, d                                          ; $5074: $52
	ld e, [hl]                                       ; $5075: $5e
	ld c, [hl]                                       ; $5076: $4e
	ld c, c                                          ; $5077: $49
	ld c, b                                          ; $5078: $48
	dec [hl]                                         ; $5079: $35

jr_08b_507a:
	inc hl                                           ; $507a: $23
	inc de                                           ; $507b: $13
	halt                                             ; $507c: $76
	ld c, e                                          ; $507d: $4b
	inc [hl]                                         ; $507e: $34
	ld l, l                                          ; $507f: $6d
	ldh a, [hDisp1_LCDC]                                     ; $5080: $f0 $8f
	ld e, b                                          ; $5082: $58
	ld b, c                                          ; $5083: $41
	inc a                                            ; $5084: $3c
	and c                                            ; $5085: $a1
	ld b, [hl]                                       ; $5086: $46
	ld c, e                                          ; $5087: $4b
	ld c, e                                          ; $5088: $4b
	ld c, e                                          ; $5089: $4b
	ld c, e                                          ; $508a: $4b
	ld c, b                                          ; $508b: $48
	dec [hl]                                         ; $508c: $35
	rla                                              ; $508d: $17
	ld l, a                                          ; $508e: $6f
	inc [hl]                                         ; $508f: $34
	db $ec                                           ; $5090: $ec
	ld d, a                                          ; $5091: $57
	xor b                                            ; $5092: $a8
	ld b, [hl]                                       ; $5093: $46
	ld a, [hl-]                                      ; $5094: $3a
	dec a                                            ; $5095: $3d
	ld c, e                                          ; $5096: $4b
	and c                                            ; $5097: $a1
	cpl                                              ; $5098: $2f

jr_08b_5099:
	ld b, e                                          ; $5099: $43
	ld b, [hl]                                       ; $509a: $46
	inc [hl]                                         ; $509b: $34
	inc hl                                           ; $509c: $23
	halt                                             ; $509d: $76

jr_08b_509e:
	xor h                                            ; $509e: $ac
	ld de, $a012                                     ; $509f: $11 $12 $a0
	ldh a, [$3f]                                     ; $50a2: $f0 $3f
	ld b, d                                          ; $50a4: $42
	sbc d                                            ; $50a5: $9a
	ld c, e                                          ; $50a6: $4b
	ldh a, [$a4]                                     ; $50a7: $f0 $a4
	ld e, [hl]                                       ; $50a9: $5e
	ccf                                              ; $50aa: $3f
	ld h, h                                          ; $50ab: $64
	ld d, l                                          ; $50ac: $55
	ld h, e                                          ; $50ad: $63
	xor b                                            ; $50ae: $a8
	ld l, d                                          ; $50af: $6a
	ldh a, [$0d]                                     ; $50b0: $f0 $0d
	ld d, d                                          ; $50b2: $52
	dec a                                            ; $50b3: $3d
	inc [hl]                                         ; $50b4: $34
	ldh a, [$3f]                                     ; $50b5: $f0 $3f
	ld b, d                                          ; $50b7: $42
	ldh a, [rAUDVOL]                                 ; $50b8: $f0 $24
	ld h, d                                          ; $50ba: $62
	ld a, $45                                        ; $50bb: $3e $45
	add hl, sp                                       ; $50bd: $39
	ld b, l                                          ; $50be: $45
	dec [hl]                                         ; $50bf: $35
	inc hl                                           ; $50c0: $23
	inc de                                           ; $50c1: $13
	ld b, b                                          ; $50c2: $40
	ld c, l                                          ; $50c3: $4d
	ld e, e                                          ; $50c4: $5b
	ld d, [hl]                                       ; $50c5: $56
	and b                                            ; $50c6: $a0
	cpl                                              ; $50c7: $2f
	ld b, e                                          ; $50c8: $43
	ld b, [hl]                                       ; $50c9: $46
	dec sp                                           ; $50ca: $3b
	inc [hl]                                         ; $50cb: $34
	ldh a, [$e1]                                     ; $50cc: $f0 $e1
	ldh a, [rSB]                                     ; $50ce: $f0 $01
	dec a                                            ; $50d0: $3d
	dec [hl]                                         ; $50d1: $35
	inc hl                                           ; $50d2: $23
	inc de                                           ; $50d3: $13
	db $ec                                           ; $50d4: $ec
	ld d, a                                          ; $50d5: $57
	inc [hl]                                         ; $50d6: $34
	push af                                          ; $50d7: $f5
	ld a, [hl]                                       ; $50d8: $7e
	ld c, l                                          ; $50d9: $4d
	ld b, c                                          ; $50da: $41
	ldh a, [$f8]                                     ; $50db: $f0 $f8
	ld b, h                                          ; $50dd: $44
	and b                                            ; $50de: $a0
	xor $14                                          ; $50df: $ee $14
	inc [hl]                                         ; $50e1: $34
	ld d, $42                                        ; $50e2: $16 $42
	inc de                                           ; $50e4: $13
	ldh a, [$3f]                                     ; $50e5: $f0 $3f
	ld b, h                                          ; $50e7: $44
	dec sp                                           ; $50e8: $3b
	dec a                                            ; $50e9: $3d
	ld b, c                                          ; $50ea: $41
	ld b, h                                          ; $50eb: $44
	and b                                            ; $50ec: $a0
	cpl                                              ; $50ed: $2f
	ld b, e                                          ; $50ee: $43
	xor $10                                          ; $50ef: $ee $10
	xor b                                            ; $50f1: $a8
	ld [hl-], a                                      ; $50f2: $32
	ld e, [hl]                                       ; $50f3: $5e
	ld e, c                                          ; $50f4: $59
	ld c, c                                          ; $50f5: $49
	inc [hl]                                         ; $50f6: $34
	ld d, h                                          ; $50f7: $54
	ld b, d                                          ; $50f8: $42
	pop af                                           ; $50f9: $f1
	ld b, [hl]                                       ; $50fa: $46
	ld c, e                                          ; $50fb: $4b
	ldh a, [$98]                                     ; $50fc: $f0 $98
	ld b, h                                          ; $50fe: $44
	dec sp                                           ; $50ff: $3b
	ld e, l                                          ; $5100: $5d
	xor c                                            ; $5101: $a9
	ld [hl], a                                       ; $5102: $77
	jr c, jr_08b_5099                                ; $5103: $38 $94

	ld a, c                                          ; $5105: $79
	inc [hl]                                         ; $5106: $34
	ld [hl], a                                       ; $5107: $77
	jr c, jr_08b_509e                                ; $5108: $38 $94

	ld d, c                                          ; $510a: $51
	ld b, c                                          ; $510b: $41
	ld b, h                                          ; $510c: $44
	scf                                              ; $510d: $37
	inc sp                                           ; $510e: $33
	add hl, bc                                       ; $510f: $09
	db $eb                                           ; $5110: $eb
	rst FarCall                                          ; $5111: $f7
	xor c                                            ; $5112: $a9
	push af                                          ; $5113: $f5
	ld b, l                                          ; $5114: $45
	ldh a, [$59]                                     ; $5115: $f0 $59
	ld c, c                                          ; $5117: $49
	ld a, $61                                        ; $5118: $3e $61
	ld d, [hl]                                       ; $511a: $56
	dec sp                                           ; $511b: $3b
	ccf                                              ; $511c: $3f
	and b                                            ; $511d: $a0
	cpl                                              ; $511e: $2f
	ld b, e                                          ; $511f: $43
	inc a                                            ; $5120: $3c
	inc [hl]                                         ; $5121: $34
	xor l                                            ; $5122: $ad
	ld [hl-], a                                      ; $5123: $32
	jr c, jr_08b_515e                                ; $5124: $38 $38

	ld l, [hl]                                       ; $5126: $6e
	inc [hl]                                         ; $5127: $34
	ldh a, [$35]                                     ; $5128: $f0 $35
	ld h, l                                          ; $512a: $65
	ld c, d                                          ; $512b: $4a
	add d                                            ; $512c: $82
	dec sp                                           ; $512d: $3b
	ld h, c                                          ; $512e: $61
	ld d, [hl]                                       ; $512f: $56
	ld e, [hl]                                       ; $5130: $5e
	dec [hl]                                         ; $5131: $35
	inc sp                                           ; $5132: $33
	inc de                                           ; $5133: $13
	db $ec                                           ; $5134: $ec
	pop hl                                           ; $5135: $e1
	and c                                            ; $5136: $a1
	db $ec                                           ; $5137: $ec
	db $f4                                           ; $5138: $f4
	xor b                                            ; $5139: $a8
	ld e, d                                          ; $513a: $5a
	add hl, sp                                       ; $513b: $39
	db $eb                                           ; $513c: $eb
	ld d, [hl]                                       ; $513d: $56
	ld b, d                                          ; $513e: $42
	xor b                                            ; $513f: $a8
	ld d, d                                          ; $5140: $52
	ld e, b                                          ; $5141: $58
	inc a                                            ; $5142: $3c
	inc [hl]                                         ; $5143: $34
	pop af                                           ; $5144: $f1
	dec d                                            ; $5145: $15
	ld c, l                                          ; $5146: $4d
	ccf                                              ; $5147: $3f
	dec a                                            ; $5148: $3d
	ld b, c                                          ; $5149: $41
	ld e, e                                          ; $514a: $5b
	ld d, [hl]                                       ; $514b: $56
	ld c, b                                          ; $514c: $48
	and b                                            ; $514d: $a0
	cpl                                              ; $514e: $2f
	ld b, e                                          ; $514f: $43
	ld b, b                                          ; $5150: $40
	inc [hl]                                         ; $5151: $34
	ld b, b                                          ; $5152: $40

Call_08b_5153:
	ld b, c                                          ; $5153: $41
	ld a, [hl-]                                      ; $5154: $3a
	sbc d                                            ; $5155: $9a
	ld a, [hl-]                                      ; $5156: $3a
	jr c, jr_08b_519e                                ; $5157: $38 $45

	dec [hl]                                         ; $5159: $35
	rla                                              ; $515a: $17
	ld [hl-], a                                      ; $515b: $32
	ld b, l                                          ; $515c: $45
	ld e, c                                          ; $515d: $59

jr_08b_515e:
	ld a, $34                                        ; $515e: $3e $34
	sub c                                            ; $5160: $91
	dec a                                            ; $5161: $3d
	dec sp                                           ; $5162: $3b
	dec a                                            ; $5163: $3d
	ld [hl], h                                       ; $5164: $74
	xor b                                            ; $5165: $a8
	xor $1a                                          ; $5166: $ee $1a
	ld b, d                                          ; $5168: $42
	ld c, c                                          ; $5169: $49
	ld e, h                                          ; $516a: $5c
	ld b, d                                          ; $516b: $42
	ldh a, [$67]                                     ; $516c: $f0 $67
	push af                                          ; $516e: $f5
	ld l, [hl]                                       ; $516f: $6e
	ldh a, [c]                                       ; $5170: $f2
	xor h                                            ; $5171: $ac
	ldh a, [c]                                       ; $5172: $f2
	ld h, [hl]                                       ; $5173: $66
	inc de                                           ; $5174: $13
	ld b, h                                          ; $5175: $44
	ld e, l                                          ; $5176: $5d
	ld b, h                                          ; $5177: $44
	ld c, a                                          ; $5178: $4f
	ld b, c                                          ; $5179: $41
	ld a, [hl-]                                      ; $517a: $3a
	ld [hl], h                                       ; $517b: $74
	xor b                                            ; $517c: $a8
	ld [hl], a                                       ; $517d: $77
	jr c, jr_08b_51bb                                ; $517e: $38 $3b

	pop af                                           ; $5180: $f1
	inc d                                            ; $5181: $14
	ld d, a                                          ; $5182: $57
	inc [hl]                                         ; $5183: $34

Jump_08b_5184:
	pop af                                           ; $5184: $f1
	dec d                                            ; $5185: $15
	ld c, l                                          ; $5186: $4d
	ccf                                              ; $5187: $3f
	dec a                                            ; $5188: $3d
	ld b, l                                          ; $5189: $45
	and e                                            ; $518a: $a3
	ld [$acab], a                                    ; $518b: $ea $ab $ac
	ldh a, [$57]                                     ; $518e: $f0 $57
	ldh a, [$ae]                                     ; $5190: $f0 $ae
	ld a, [hl-]                                      ; $5192: $3a
	ldh a, [$3f]                                     ; $5193: $f0 $3f
	ld h, d                                          ; $5195: $62
	ldh a, [$bd]                                     ; $5196: $f0 $bd
	ld d, l                                          ; $5198: $55
	ld b, d                                          ; $5199: $42
	ld c, h                                          ; $519a: $4c
	and b                                            ; $519b: $a0
	cpl                                              ; $519c: $2f
	ld b, e                                          ; $519d: $43

jr_08b_519e:
	ld h, h                                          ; $519e: $64
	pop af                                           ; $519f: $f1
	db $d3                                           ; $51a0: $d3
	ld [hl], c                                       ; $51a1: $71
	ld b, a                                          ; $51a2: $47
	ld b, [hl]                                       ; $51a3: $46
	sbc h                                            ; $51a4: $9c
	inc a                                            ; $51a5: $3c
	ld d, a                                          ; $51a6: $57
	inc de                                           ; $51a7: $13
	ldh a, [c]                                       ; $51a8: $f2
	ld b, l                                          ; $51a9: $45
	db $f4                                           ; $51aa: $f4
	and h                                            ; $51ab: $a4
	ld c, d                                          ; $51ac: $4a
	ld d, c                                          ; $51ad: $51
	xor b                                            ; $51ae: $a8
	db $ec                                           ; $51af: $ec
	pop hl                                           ; $51b0: $e1
	ld c, e                                          ; $51b1: $4b
	inc [hl]                                         ; $51b2: $34
	ldh a, [$bd]                                     ; $51b3: $f0 $bd
	inc a                                            ; $51b5: $3c
	ld a, [hl-]                                      ; $51b6: $3a
	jr c, jr_08b_51fb                                ; $51b7: $38 $42

	and c                                            ; $51b9: $a1
	ld l, a                                          ; $51ba: $6f

jr_08b_51bb:
	ld b, d                                          ; $51bb: $42

jr_08b_51bc:
	ldh a, [$3f]                                     ; $51bc: $f0 $3f
	ld c, e                                          ; $51be: $4b
	db $ed                                           ; $51bf: $ed
	add h                                            ; $51c0: $84
	ld a, [hl-]                                      ; $51c1: $3a
	ld b, d                                          ; $51c2: $42
	and b                                            ; $51c3: $a0
	cpl                                              ; $51c4: $2f
	ld b, e                                          ; $51c5: $43
	pop af                                           ; $51c6: $f1
	inc l                                            ; $51c7: $2c
	ldh a, [c]                                       ; $51c8: $f2
	jr c, jr_08b_51bc                                ; $51c9: $38 $f1

	and e                                            ; $51cb: $a3
	pop af                                           ; $51cc: $f1
	or l                                             ; $51cd: $b5
	ldh a, [c]                                       ; $51ce: $f2
	adc [hl]                                         ; $51cf: $8e
	inc de                                           ; $51d0: $13
	ld h, h                                          ; $51d1: $64
	pop af                                           ; $51d2: $f1
	pop bc                                           ; $51d3: $c1
	ld d, a                                          ; $51d4: $57
	ld c, c                                          ; $51d5: $49
	inc a                                            ; $51d6: $3c
	and b                                            ; $51d7: $a0
	ld b, b                                          ; $51d8: $40
	add hl, sp                                       ; $51d9: $39
	xor h                                            ; $51da: $ac
	ld a, [$8f36]                                    ; $51db: $fa $36 $8f
	ld d, d                                          ; $51de: $52
	ld c, d                                          ; $51df: $4a
	ld a, e                                          ; $51e0: $7b
	dec sp                                           ; $51e1: $3b
	ld h, c                                          ; $51e2: $61
	ld d, a                                          ; $51e3: $57
	ld c, b                                          ; $51e4: $48
	and b                                            ; $51e5: $a0
	ld l, e                                          ; $51e6: $6b
	ld c, d                                          ; $51e7: $4a
	inc [hl]                                         ; $51e8: $34
	ld l, a                                          ; $51e9: $6f
	ld d, e                                          ; $51ea: $53
	inc de                                           ; $51eb: $13
	ld b, b                                          ; $51ec: $40
	ld b, c                                          ; $51ed: $41
	ld a, [hl-]                                      ; $51ee: $3a
	ldh a, [$3f]                                     ; $51ef: $f0 $3f
	ldh a, [$bd]                                     ; $51f1: $f0 $bd
	ld d, l                                          ; $51f3: $55

jr_08b_51f4:
	ld b, d                                          ; $51f4: $42
	ld b, l                                          ; $51f5: $45
	xor b                                            ; $51f6: $a8
	ld [$636c], a                                    ; $51f7: $ea $6c $63
	ld b, l                                          ; $51fa: $45

jr_08b_51fb:
	and b                                            ; $51fb: $a0
	cpl                                              ; $51fc: $2f
	ld b, e                                          ; $51fd: $43
	sbc h                                            ; $51fe: $9c
	ld c, [hl]                                       ; $51ff: $4e
	jr c, jr_08b_5236                                ; $5200: $38 $34

	ldh a, [$e1]                                     ; $5202: $f0 $e1
	ldh a, [rSB]                                     ; $5204: $f0 $01
	ld c, [hl]                                       ; $5206: $4e
	ld a, a                                          ; $5207: $7f
	ld b, h                                          ; $5208: $44
	ld a, [hl-]                                      ; $5209: $3a
	and b                                            ; $520a: $a0
	ld b, b                                          ; $520b: $40
	ld b, d                                          ; $520c: $42
	add hl, sp                                       ; $520d: $39
	ld h, c                                          ; $520e: $61
	ld b, l                                          ; $520f: $45
	inc [hl]                                         ; $5210: $34
	ld b, b                                          ; $5211: $40
	ld b, d                                          ; $5212: $42
	add hl, sp                                       ; $5213: $39
	ld h, c                                          ; $5214: $61
	xor l                                            ; $5215: $ad
	ld e, e                                          ; $5216: $5b
	ld d, [hl]                                       ; $5217: $56
	ld b, [hl]                                       ; $5218: $46
	inc [hl]                                         ; $5219: $34
	ld l, a                                          ; $521a: $6f
	inc [hl]                                         ; $521b: $34
	inc a                                            ; $521c: $3c
	ld e, [hl]                                       ; $521d: $5e
	ld c, [hl]                                       ; $521e: $4e
	ld c, h                                          ; $521f: $4c
	and b                                            ; $5220: $a0
	cpl                                              ; $5221: $2f
	ld b, e                                          ; $5222: $43
	ld h, c                                          ; $5223: $61
	dec sp                                           ; $5224: $3b
	inc [hl]                                         ; $5225: $34
	ldh a, [$e1]                                     ; $5226: $f0 $e1
	ldh a, [rSB]                                     ; $5228: $f0 $01
	ld d, b                                          ; $522a: $50
	ld c, l                                          ; $522b: $4d
	dec a                                            ; $522c: $3d
	inc a                                            ; $522d: $3c
	ld c, b                                          ; $522e: $48
	and b                                            ; $522f: $a0
	add hl, bc                                       ; $5230: $09
	cpl                                              ; $5231: $2f
	ld [hl-], a                                      ; $5232: $32
	ld b, [hl]                                       ; $5233: $46
	ld b, [hl]                                       ; $5234: $46
	xor h                                            ; $5235: $ac

jr_08b_5236:
	db $ed                                           ; $5236: $ed
	sbc e                                            ; $5237: $9b
	ld c, e                                          ; $5238: $4b
	sub b                                            ; $5239: $90
	ld a, $38                                        ; $523a: $3e $38
	ld a, [hl-]                                      ; $523c: $3a
	ld b, [hl]                                       ; $523d: $46
	xor b                                            ; $523e: $a8
	ld a, [hl-]                                      ; $523f: $3a
	ld b, c                                          ; $5240: $41
	ccf                                              ; $5241: $3f
	inc [hl]                                         ; $5242: $34
	halt                                             ; $5243: $76
	dec sp                                           ; $5244: $3b
	ccf                                              ; $5245: $3f
	inc de                                           ; $5246: $13
	ldh a, [$dd]                                     ; $5247: $f0 $dd
	ldh a, [$9c]                                     ; $5249: $f0 $9c
	ldh a, [rSVBK]                                   ; $524b: $f0 $70
	ld a, [hl-]                                      ; $524d: $3a
	ld b, c                                          ; $524e: $41
	ld b, h                                          ; $524f: $44
	ld e, a                                          ; $5250: $5f
	add hl, sp                                       ; $5251: $39
	and e                                            ; $5252: $a3
	db $ed                                           ; $5253: $ed
	ld c, [hl]                                       ; $5254: $4e
	and b                                            ; $5255: $a0
	ldh a, [rAUD3ENA]                                ; $5256: $f0 $1a
	ld h, l                                          ; $5258: $65
	ldh a, [$35]                                     ; $5259: $f0 $35
	ldh a, [$2b]                                     ; $525b: $f0 $2b
	ld d, e                                          ; $525d: $53
	pop af                                           ; $525e: $f1
	add c                                            ; $525f: $81
	ld h, c                                          ; $5260: $61
	ccf                                              ; $5261: $3f
	ld d, d                                          ; $5262: $52
	ld d, c                                          ; $5263: $51
	ld b, l                                          ; $5264: $45
	and b                                            ; $5265: $a0
	cpl                                              ; $5266: $2f
	ld b, e                                          ; $5267: $43
	ld e, [hl]                                       ; $5268: $5e
	xor l                                            ; $5269: $ad
	ld b, [hl]                                       ; $526a: $46
	inc [hl]                                         ; $526b: $34
	ld b, [hl]                                       ; $526c: $46
	ld d, a                                          ; $526d: $57
	ld d, e                                          ; $526e: $53
	ld c, c                                          ; $526f: $49
	add hl, sp                                       ; $5270: $39
	xor b                                            ; $5271: $a8
	jr c, jr_08b_51f4                                ; $5272: $38 $80

	ld b, d                                          ; $5274: $42
	ldh a, [$2a]                                     ; $5275: $f0 $2a
	ld b, a                                          ; $5277: $47

jr_08b_5278:
	pop af                                           ; $5278: $f1
	add c                                            ; $5279: $81
	ld h, c                                          ; $527a: $61
	dec a                                            ; $527b: $3d
	ld b, c                                          ; $527c: $41
	ld b, h                                          ; $527d: $44
	ld e, a                                          ; $527e: $5f
	add hl, sp                                       ; $527f: $39
	and b                                            ; $5280: $a0
	sub e                                            ; $5281: $93
	add e                                            ; $5282: $83
	ld [hl], e                                       ; $5283: $73
	xor l                                            ; $5284: $ad
	sbc h                                            ; $5285: $9c
	jr c, jr_08b_5278                                ; $5286: $38 $f0

	cp $41                                           ; $5288: $fe $41
	inc [hl]                                         ; $528a: $34
	pop af                                           ; $528b: $f1
	push hl                                          ; $528c: $e5
	ldh a, [rVBK]                                    ; $528d: $f0 $4f
	ld b, a                                          ; $528f: $47
	inc de                                           ; $5290: $13
	ldh a, [$fa]                                     ; $5291: $f0 $fa
	ld b, c                                          ; $5293: $41
	ld c, d                                          ; $5294: $4a
	jr c, @+$3f                                      ; $5295: $38 $3d

	ld b, d                                          ; $5297: $42
	ld c, d                                          ; $5298: $4a
	ld d, c                                          ; $5299: $51
	ld c, h                                          ; $529a: $4c
	and b                                            ; $529b: $a0
	cpl                                              ; $529c: $2f
	ld b, e                                          ; $529d: $43
	ldh a, [$08]                                     ; $529e: $f0 $08

Call_08b_52a0:
	ld d, b                                          ; $52a0: $50
	xor h                                            ; $52a1: $ac
	pop af                                           ; $52a2: $f1
	or [hl]                                          ; $52a3: $b6
	dec sp                                           ; $52a4: $3b
	ccf                                              ; $52a5: $3f
	adc e                                            ; $52a6: $8b
	ld e, h                                          ; $52a7: $5c
	ld a, [hl-]                                      ; $52a8: $3a
	ld d, h                                          ; $52a9: $54
	ld c, c                                          ; $52aa: $49
	ld b, a                                          ; $52ab: $47
	inc de                                           ; $52ac: $13
	pop af                                           ; $52ad: $f1
	push hl                                          ; $52ae: $e5
	ldh a, [rAUD2HIGH]                               ; $52af: $f0 $19
	ld d, c                                          ; $52b1: $51
	ld c, [hl]                                       ; $52b2: $4e
	db $ed                                           ; $52b3: $ed
	jr nc, jr_08b_52fa                               ; $52b4: $30 $44

	inc a                                            ; $52b6: $3c
	ld d, b                                          ; $52b7: $50
	xor b                                            ; $52b8: $a8
	ld c, e                                          ; $52b9: $4b
	ld c, e                                          ; $52ba: $4b
	ld c, e                                          ; $52bb: $4b
	ld c, b                                          ; $52bc: $48
	and b                                            ; $52bd: $a0
	ld l, a                                          ; $52be: $6f
	ld c, a                                          ; $52bf: $4f
	adc b                                            ; $52c0: $88
	ld h, d                                          ; $52c1: $62
	ldh a, [$fa]                                     ; $52c2: $f0 $fa
	ld l, h                                          ; $52c4: $6c
	ld b, h                                          ; $52c5: $44
	ld d, c                                          ; $52c6: $51
	ld c, c                                          ; $52c7: $49
	xor h                                            ; $52c8: $ac
	ld d, c                                          ; $52c9: $51
	sbc l                                            ; $52ca: $9d
	inc [hl]                                         ; $52cb: $34
	pop af                                           ; $52cc: $f1
	push hl                                          ; $52cd: $e5
	ldh a, [rAUD2HIGH]                               ; $52ce: $f0 $19
	ld a, $3f                                        ; $52d0: $3e $3f
	inc de                                           ; $52d2: $13
	ld a, $52                                        ; $52d3: $3e $52
	xor $1f                                          ; $52d5: $ee $1f
	ld c, d                                          ; $52d7: $4a
	ld d, c                                          ; $52d8: $51
	ld b, l                                          ; $52d9: $45
	and b                                            ; $52da: $a0
	cpl                                              ; $52db: $2f
	ld b, e                                          ; $52dc: $43
	ldh a, [$5a]                                     ; $52dd: $f0 $5a
	ld e, c                                          ; $52df: $59
	inc [hl]                                         ; $52e0: $34
	ret nz                                           ; $52e1: $c0

	and b                                            ; $52e2: $a0
	ld b, [hl]                                       ; $52e3: $46
	dec sp                                           ; $52e4: $3b
	inc [hl]                                         ; $52e5: $34
	ld c, a                                          ; $52e6: $4f
	add hl, sp                                       ; $52e7: $39
	ld h, a                                          ; $52e8: $67
	inc a                                            ; $52e9: $3c
	ld a, [hl-]                                      ; $52ea: $3a
	ld e, h                                          ; $52eb: $5c
	ld d, [hl]                                       ; $52ec: $56
	and b                                            ; $52ed: $a0
	cpl                                              ; $52ee: $2f
	ld b, e                                          ; $52ef: $43
	ld b, [hl]                                       ; $52f0: $46
	inc [hl]                                         ; $52f1: $34
	halt                                             ; $52f2: $76
	xor l                                            ; $52f3: $ad
	ld de, $a812                                     ; $52f4: $11 $12 $a8
	ldh a, [rAUD3ENA]                                ; $52f7: $f0 $1a
	ld h, l                                          ; $52f9: $65

jr_08b_52fa:
	ldh a, [$35]                                     ; $52fa: $f0 $35
	ldh a, [$2b]                                     ; $52fc: $f0 $2b
	ld b, [hl]                                       ; $52fe: $46
	ld d, a                                          ; $52ff: $57
	ld d, e                                          ; $5300: $53
	ld c, c                                          ; $5301: $49
	add hl, sp                                       ; $5302: $39
	and b                                            ; $5303: $a0
	ld e, d                                          ; $5304: $5a
	add hl, sp                                       ; $5305: $39
	jr c, jr_08b_5345                                ; $5306: $38 $3d

	ld a, $52                                        ; $5308: $3e $52
	ld a, $3f                                        ; $530a: $3e $3f
	xor l                                            ; $530c: $ad
	ld l, a                                          ; $530d: $6f
	inc [hl]                                         ; $530e: $34
	db $ed                                           ; $530f: $ed
	add d                                            ; $5310: $82
	db $ed                                           ; $5311: $ed
	add e                                            ; $5312: $83
	ld c, c                                          ; $5313: $49
	jr c, jr_08b_534e                                ; $5314: $38 $38

	ld d, d                                          ; $5316: $52
	ld d, c                                          ; $5317: $51
	and b                                            ; $5318: $a0
	ld d, d                                          ; $5319: $52
	dec a                                            ; $531a: $3d
	inc [hl]                                         ; $531b: $34
	ld l, d                                          ; $531c: $6a
	ldh a, [$0d]                                     ; $531d: $f0 $0d
	ld h, h                                          ; $531f: $64
	ldh a, [rAUDVOL]                                 ; $5320: $f0 $24
	ld a, $52                                        ; $5322: $3e $52
	ld a, $66                                        ; $5324: $3e $66
	add hl, sp                                       ; $5326: $39
	and b                                            ; $5327: $a0
	cpl                                              ; $5328: $2f
	ld b, e                                          ; $5329: $43
	ld l, [hl]                                       ; $532a: $6e
	ld l, [hl]                                       ; $532b: $6e
	inc [hl]                                         ; $532c: $34
	ld d, h                                          ; $532d: $54
	ld b, c                                          ; $532e: $41
	ld a, [hl-]                                      ; $532f: $3a
	ldh a, [$28]                                     ; $5330: $f0 $28
	ld b, a                                          ; $5332: $47
	inc de                                           ; $5333: $13
	adc b                                            ; $5334: $88
	ld d, e                                          ; $5335: $53
	pop af                                           ; $5336: $f1
	add c                                            ; $5337: $81
	ld h, c                                          ; $5338: $61
	ccf                                              ; $5339: $3f
	ld c, [hl]                                       ; $533a: $4e
	sub a                                            ; $533b: $97
	and b                                            ; $533c: $a0
	cpl                                              ; $533d: $2f
	ld [hl-], a                                      ; $533e: $32
	pop af                                           ; $533f: $f1
	ld a, [$403e]                                    ; $5340: $fa $3e $40
	add hl, sp                                       ; $5343: $39
	ld a, [hl-]                                      ; $5344: $3a

jr_08b_5345:
	xor h                                            ; $5345: $ac
	adc b                                            ; $5346: $88
	ld b, h                                          ; $5347: $44
	ld a, [hl-]                                      ; $5348: $3a
	ld b, [hl]                                       ; $5349: $46
	xor b                                            ; $534a: $a8
	ld l, l                                          ; $534b: $6d
	ldh a, [$65]                                     ; $534c: $f0 $65

jr_08b_534e:
	inc [hl]                                         ; $534e: $34
	ldh a, [$98]                                     ; $534f: $f0 $98
	ld b, d                                          ; $5351: $42
	pop af                                           ; $5352: $f1
	dec d                                            ; $5353: $15
	ld c, l                                          ; $5354: $4d
	ldh a, [$2c]                                     ; $5355: $f0 $2c
	ld b, h                                          ; $5357: $44
	ld e, a                                          ; $5358: $5f
	add hl, sp                                       ; $5359: $39
	and e                                            ; $535a: $a3
	ld d, h                                          ; $535b: $54
	ld b, d                                          ; $535c: $42
	push af                                          ; $535d: $f5
	ld b, c                                          ; $535e: $41
	ld d, a                                          ; $535f: $57
	ld b, a                                          ; $5360: $47
	adc b                                            ; $5361: $88
	ld d, e                                          ; $5362: $53
	pop af                                           ; $5363: $f1
	add c                                            ; $5364: $81
	ld h, c                                          ; $5365: $61
	ccf                                              ; $5366: $3f
	inc de                                           ; $5367: $13
	jr c, jr_08b_53a4                                ; $5368: $38 $3a

	inc a                                            ; $536a: $3c
	dec sp                                           ; $536b: $3b
	dec a                                            ; $536c: $3d
	ld c, d                                          ; $536d: $4a
	ld a, $66                                        ; $536e: $3e $66
	add hl, sp                                       ; $5370: $39
	inc a                                            ; $5371: $3c
	and c                                            ; $5372: $a1
	cpl                                              ; $5373: $2f
	ld b, e                                          ; $5374: $43
	ld b, [hl]                                       ; $5375: $46
	inc [hl]                                         ; $5376: $34
	ld d, h                                          ; $5377: $54
	ld c, l                                          ; $5378: $4d
	ld b, d                                          ; $5379: $42
	ld d, h                                          ; $537a: $54
	ld c, c                                          ; $537b: $49
	and c                                            ; $537c: $a1
	ld b, b                                          ; $537d: $40
	add hl, sp                                       ; $537e: $39
	ld c, d                                          ; $537f: $4a
	ld d, c                                          ; $5380: $51
	scf                                              ; $5381: $37

jr_08b_5382:
	inc de                                           ; $5382: $13
	db $ec                                           ; $5383: $ec
	cp c                                             ; $5384: $b9
	inc [hl]                                         ; $5385: $34
	ld [hl], d                                       ; $5386: $72
	add b                                            ; $5387: $80
	inc a                                            ; $5388: $3c
	dec sp                                           ; $5389: $3b
	ccf                                              ; $538a: $3f
	ld c, b                                          ; $538b: $48
	and b                                            ; $538c: $a0
	cpl                                              ; $538d: $2f
	ld b, e                                          ; $538e: $43
	sbc h                                            ; $538f: $9c
	jr c, jr_08b_5382                                ; $5390: $38 $f0

	cp $41                                           ; $5392: $fe $41
	inc [hl]                                         ; $5394: $34
	pop af                                           ; $5395: $f1
	ld a, [$383e]                                    ; $5396: $fa $3e $38
	adc b                                            ; $5399: $88
	xor h                                            ; $539a: $ac
	ldh a, [$fa]                                     ; $539b: $f0 $fa
	ldh a, [$be]                                     ; $539d: $f0 $be
	ld b, c                                          ; $539f: $41
	ld b, h                                          ; $53a0: $44
	ld c, h                                          ; $53a1: $4c
	and b                                            ; $53a2: $a0
	jp hl                                            ; $53a3: $e9


jr_08b_53a4:
	and h                                            ; $53a4: $a4
	xor l                                            ; $53a5: $ad
	ld d, c                                          ; $53a6: $51
	ld [hl], b                                       ; $53a7: $70
	ld d, l                                          ; $53a8: $55
	inc [hl]                                         ; $53a9: $34
	add a                                            ; $53aa: $87
	sbc d                                            ; $53ab: $9a
	ld a, [hl-]                                      ; $53ac: $3a
	adc b                                            ; $53ad: $88
	ld b, h                                          ; $53ae: $44
	dec sp                                           ; $53af: $3b
	dec a                                            ; $53b0: $3d
	ld b, d                                          ; $53b1: $42
	ld c, d                                          ; $53b2: $4a
	xor b                                            ; $53b3: $a8
	ld l, a                                          ; $53b4: $6f
	inc [hl]                                         ; $53b5: $34
	db $ed                                           ; $53b6: $ed
	add d                                            ; $53b7: $82
	db $ed                                           ; $53b8: $ed
	add e                                            ; $53b9: $83
	ld c, c                                          ; $53ba: $49
	jr c, jr_08b_53f5                                ; $53bb: $38 $38

	ld d, d                                          ; $53bd: $52
	ld d, c                                          ; $53be: $51
	and b                                            ; $53bf: $a0
	cpl                                              ; $53c0: $2f
	ld b, e                                          ; $53c1: $43
	halt                                             ; $53c2: $76
	inc [hl]                                         ; $53c3: $34
	ld de, $a012                                     ; $53c4: $11 $12 $a0
	ld de, $4158                                     ; $53c7: $11 $58 $41
	dec [hl]                                         ; $53ca: $35
	rla                                              ; $53cb: $17
	sbc $34                                          ; $53cc: $de $34
	ld b, [hl]                                       ; $53ce: $46
	ld d, a                                          ; $53cf: $57
	ld d, e                                          ; $53d0: $53
	ld c, c                                          ; $53d1: $49
	add hl, sp                                       ; $53d2: $39
	inc de                                           ; $53d3: $13
	ld [hl], b                                       ; $53d4: $70
	ldh a, [rAUD1SWEEP]                              ; $53d5: $f0 $10
	jr c, jr_08b_542b                                ; $53d7: $38 $52

	ld a, $3d                                        ; $53d9: $3e $3d
	and b                                            ; $53db: $a0
	cpl                                              ; $53dc: $2f
	ld b, e                                          ; $53dd: $43
	jr c, jr_08b_543e                                ; $53de: $38 $5e

	inc [hl]                                         ; $53e0: $34
	ld e, d                                          ; $53e1: $5a
	add hl, sp                                       ; $53e2: $39
	jr c, jr_08b_5422                                ; $53e3: $38 $3d

	ld a, $52                                        ; $53e5: $3e $52
	ld a, $3f                                        ; $53e7: $3e $3f
	xor b                                            ; $53e9: $a8
	ld l, d                                          ; $53ea: $6a
	ldh a, [$0d]                                     ; $53eb: $f0 $0d
	inc [hl]                                         ; $53ed: $34
	ld d, d                                          ; $53ee: $52
	dec a                                            ; $53ef: $3d
	ld h, h                                          ; $53f0: $64
	ldh a, [rAUDVOL]                                 ; $53f1: $f0 $24
	ld a, $3d                                        ; $53f3: $3e $3d

jr_08b_53f5:
	jr c, jr_08b_5431                                ; $53f5: $38 $3a

	and b                                            ; $53f7: $a0
	db $eb                                           ; $53f8: $eb
	ld l, c                                          ; $53f9: $69
	inc [hl]                                         ; $53fa: $34
	adc l                                            ; $53fb: $8d
	ldh a, [$d8]                                     ; $53fc: $f0 $d8
	xor b                                            ; $53fe: $a8
	ld b, [hl]                                       ; $53ff: $46
	dec sp                                           ; $5400: $3b
	inc [hl]                                         ; $5401: $34
	ld c, a                                          ; $5402: $4f
	add hl, sp                                       ; $5403: $39
	ld h, a                                          ; $5404: $67
	inc a                                            ; $5405: $3c
	ld a, [hl-]                                      ; $5406: $3a
	ld e, h                                          ; $5407: $5c
	ld d, [hl]                                       ; $5408: $56
	and b                                            ; $5409: $a0
	cpl                                              ; $540a: $2f
	ld b, e                                          ; $540b: $43
	db $ed                                           ; $540c: $ed
	add d                                            ; $540d: $82
	db $ed                                           ; $540e: $ed
	add e                                            ; $540f: $83
	ld e, b                                          ; $5410: $58
	ld b, c                                          ; $5411: $41
	inc a                                            ; $5412: $3c
	xor l                                            ; $5413: $ad
	ldh a, [$80]                                     ; $5414: $f0 $80
	ldh a, [$c5]                                     ; $5416: $f0 $c5
	inc [hl]                                         ; $5418: $34
	ldh a, [$8a]                                     ; $5419: $f0 $8a
	ldh a, [rHDMA2]                                  ; $541b: $f0 $52
	inc a                                            ; $541d: $3c
	dec sp                                           ; $541e: $3b
	dec a                                            ; $541f: $3d
	ld a, [hl-]                                      ; $5420: $3a
	and b                                            ; $5421: $a0

jr_08b_5422:
	cpl                                              ; $5422: $2f
	ld [hl-], a                                      ; $5423: $32
	adc a                                            ; $5424: $8f
	pop af                                           ; $5425: $f1
	rrca                                             ; $5426: $0f
	ld b, a                                          ; $5427: $47
	inc de                                           ; $5428: $13
	ldh a, [$c7]                                     ; $5429: $f0 $c7

jr_08b_542b:
	ld c, l                                          ; $542b: $4d
	ld h, c                                          ; $542c: $61
	ld d, [hl]                                       ; $542d: $56
	dec sp                                           ; $542e: $3b
	dec a                                            ; $542f: $3d
	ld b, l                                          ; $5430: $45

jr_08b_5431:
	xor b                                            ; $5431: $a8
	db $ed                                           ; $5432: $ed
	ld d, a                                          ; $5433: $57
	inc [hl]                                         ; $5434: $34
	add a                                            ; $5435: $87
	sbc d                                            ; $5436: $9a
	ld a, [hl-]                                      ; $5437: $3a
	ldh a, [rAUDVOL]                                 ; $5438: $f0 $24
	ld d, e                                          ; $543a: $53
	inc de                                           ; $543b: $13
	ld b, [hl]                                       ; $543c: $46
	ld c, [hl]                                       ; $543d: $4e

jr_08b_543e:
	dec sp                                           ; $543e: $3b
	ccf                                              ; $543f: $3f
	add d                                            ; $5440: $82
	dec sp                                           ; $5441: $3b
	ccf                                              ; $5442: $3f
	dec a                                            ; $5443: $3d
	dec sp                                           ; $5444: $3b
	ld e, l                                          ; $5445: $5d
	and e                                            ; $5446: $a3
	cpl                                              ; $5447: $2f
	ld b, e                                          ; $5448: $43
	ld b, [hl]                                       ; $5449: $46
	ld d, a                                          ; $544a: $57
	ld d, [hl]                                       ; $544b: $56
	xor h                                            ; $544c: $ac
	ld c, a                                          ; $544d: $4f
	add hl, sp                                       ; $544e: $39
	ld [$4bf2], a                                    ; $544f: $ea $f2 $4b
	inc de                                           ; $5452: $13
	ld [$4267], a                                    ; $5453: $ea $67 $42
	inc a                                            ; $5456: $3c
	ld a, [hl-]                                      ; $5457: $3a
	and b                                            ; $5458: $a0
	ld de, $5812                                     ; $5459: $11 $12 $58
	ld b, c                                          ; $545c: $41
	inc de                                           ; $545d: $13
	ld c, d                                          ; $545e: $4a
	ld d, c                                          ; $545f: $51
	ld b, l                                          ; $5460: $45
	ld c, h                                          ; $5461: $4c
	and c                                            ; $5462: $a1
	cpl                                              ; $5463: $2f
	ld b, e                                          ; $5464: $43
	xor $2d                                          ; $5465: $ee $2d
	inc [hl]                                         ; $5467: $34
	ld b, b                                          ; $5468: $40
	add hl, sp                                       ; $5469: $39
	ld c, d                                          ; $546a: $4a
	ld d, c                                          ; $546b: $51
	ld e, l                                          ; $546c: $5d
	ld e, d                                          ; $546d: $5a
	xor l                                            ; $546e: $ad
	ld e, [hl]                                       ; $546f: $5e
	ld e, c                                          ; $5470: $59
	ld c, c                                          ; $5471: $49
	inc [hl]                                         ; $5472: $34
	ld b, [hl]                                       ; $5473: $46
	ld a, [hl-]                                      ; $5474: $3a
	dec a                                            ; $5475: $3d
	ld c, e                                          ; $5476: $4b
	inc [hl]                                         ; $5477: $34
	dec a                                            ; $5478: $3d
	ld a, $3c                                        ; $5479: $3e $3c
	xor l                                            ; $547b: $ad
	ldh a, [$cd]                                     ; $547c: $f0 $cd
	ld e, e                                          ; $547e: $5b
	ldh a, [rSCX]                                    ; $547f: $f0 $43
	ldh a, [$b8]                                     ; $5481: $f0 $b8
	adc a                                            ; $5483: $8f
	ld b, d                                          ; $5484: $42
	ld c, b                                          ; $5485: $48
	and b                                            ; $5486: $a0
	ld l, a                                          ; $5487: $6f
	xor h                                            ; $5488: $ac
	db $ed                                           ; $5489: $ed
	add d                                            ; $548a: $82
	db $ed                                           ; $548b: $ed
	add e                                            ; $548c: $83
	ld c, c                                          ; $548d: $49
	jr c, jr_08b_54c8                                ; $548e: $38 $38

	ld d, d                                          ; $5490: $52
	ld d, c                                          ; $5491: $51
	xor b                                            ; $5492: $a8
	ldh a, [$bc]                                     ; $5493: $f0 $bc
	pop af                                           ; $5495: $f1
	rst SubAFromHL                                          ; $5496: $d7
	inc [hl]                                         ; $5497: $34
	db $ed                                           ; $5498: $ed
	db $10                                           ; $5499: $10
	ld b, d                                          ; $549a: $42
	pop af                                           ; $549b: $f1
	xor l                                            ; $549c: $ad
	pop af                                           ; $549d: $f1
	and l                                            ; $549e: $a5
	ld b, d                                          ; $549f: $42

Call_08b_54a0:
	sbc d                                            ; $54a0: $9a
	ld c, d                                          ; $54a1: $4a
	inc de                                           ; $54a2: $13
	ldh a, [rAUDVOL]                                 ; $54a3: $f0 $24
	ld a, $f0                                        ; $54a5: $3e $f0
	ld b, $38                                        ; $54a7: $06 $38
	ld d, e                                          ; $54a9: $53
	ld b, [hl]                                       ; $54aa: $46
	ld d, a                                          ; $54ab: $57
	ld d, d                                          ; $54ac: $52
	ld a, $3f                                        ; $54ad: $3e $3f
	ld c, b                                          ; $54af: $48
	and b                                            ; $54b0: $a0
	cpl                                              ; $54b1: $2f
	ld [hl-], a                                      ; $54b2: $32
	ld b, b                                          ; $54b3: $40
	add hl, sp                                       ; $54b4: $39
	inc a                                            ; $54b5: $3c
	inc [hl]                                         ; $54b6: $34
	ld l, d                                          ; $54b7: $6a
	ld l, b                                          ; $54b8: $68
	ld b, d                                          ; $54b9: $42
	inc de                                           ; $54ba: $13
	ldh a, [rAUDVOL]                                 ; $54bb: $f0 $24
	dec sp                                           ; $54bd: $3b
	ccf                                              ; $54be: $3f
	inc [hl]                                         ; $54bf: $34
	ld b, b                                          ; $54c0: $40
	ld b, d                                          ; $54c1: $42
	sbc d                                            ; $54c2: $9a
	ld b, h                                          ; $54c3: $44
	dec sp                                           ; $54c4: $3b
	dec a                                            ; $54c5: $3d
	ld b, c                                          ; $54c6: $41
	ld b, h                                          ; $54c7: $44

jr_08b_54c8:
	and e                                            ; $54c8: $a3
	ld b, b                                          ; $54c9: $40
	ld c, l                                          ; $54ca: $4d
	ld c, d                                          ; $54cb: $4a
	inc [hl]                                         ; $54cc: $34
	ld l, a                                          ; $54cd: $6f
	ld c, c                                          ; $54ce: $49
	xor $06                                          ; $54cf: $ee $06
	ld b, a                                          ; $54d1: $47
	inc de                                           ; $54d2: $13
	xor $17                                          ; $54d3: $ee $17
	pop af                                           ; $54d5: $f1
	xor l                                            ; $54d6: $ad
	pop af                                           ; $54d7: $f1
	and l                                            ; $54d8: $a5
	ld d, c                                          ; $54d9: $51
	ld c, [hl]                                       ; $54da: $4e
	ld d, h                                          ; $54db: $54
	ld c, c                                          ; $54dc: $49
	ld b, a                                          ; $54dd: $47
	inc de                                           ; $54de: $13
	ld a, [hl-]                                      ; $54df: $3a
	ld d, a                                          ; $54e0: $57
	ld d, d                                          ; $54e1: $52
	ld a, $3d                                        ; $54e2: $3e $3d
	ld b, d                                          ; $54e4: $42
	ld c, d                                          ; $54e5: $4a
	inc [hl]                                         ; $54e6: $34
	ld d, h                                          ; $54e7: $54
	ld c, l                                          ; $54e8: $4d
	inc a                                            ; $54e9: $3c
	ld d, b                                          ; $54ea: $50
	inc de                                           ; $54eb: $13
	db $ec                                           ; $54ec: $ec
	jr @+$66                                         ; $54ed: $18 $64

	ld c, h                                          ; $54ef: $4c
	ld d, e                                          ; $54f0: $53
	jr c, jr_08b_5531                                ; $54f1: $38 $3e

	ld d, d                                          ; $54f3: $52
	ld d, c                                          ; $54f4: $51
	and b                                            ; $54f5: $a0
	cpl                                              ; $54f6: $2f
	ld b, e                                          ; $54f7: $43
	ldh a, [$5a]                                     ; $54f8: $f0 $5a
	add l                                            ; $54fa: $85
	inc [hl]                                         ; $54fb: $34
	ret nz                                           ; $54fc: $c0

	xor b                                            ; $54fd: $a8
	db $eb                                           ; $54fe: $eb
	ld l, c                                          ; $54ff: $69
	inc [hl]                                         ; $5500: $34
	db $ec                                           ; $5501: $ec
	jr @-$5e                                         ; $5502: $18 $a0

	jp z, $eb34                                      ; $5504: $ca $34 $eb

	ld e, d                                          ; $5507: $5a
	and b                                            ; $5508: $a0
	cpl                                              ; $5509: $2f
	ld b, e                                          ; $550a: $43
	db $ed                                           ; $550b: $ed
	add d                                            ; $550c: $82
	db $ed                                           ; $550d: $ed
	add e                                            ; $550e: $83
	ld e, b                                          ; $550f: $58
	ld b, c                                          ; $5510: $41

jr_08b_5511:
	inc a                                            ; $5511: $3c
	ld c, b                                          ; $5512: $48
	dec [hl]                                         ; $5513: $35
	rla                                              ; $5514: $17
	ld [hl-], a                                      ; $5515: $32
	ld b, [hl]                                       ; $5516: $46
	ld b, c                                          ; $5517: $41
	ld a, [hl-]                                      ; $5518: $3a
	inc [hl]                                         ; $5519: $34
	ldh a, [$8a]                                     ; $551a: $f0 $8a
	ldh a, [rHDMA2]                                  ; $551c: $f0 $52
	jr c, jr_08b_5511                                ; $551e: $38 $f1

	ld b, [hl]                                       ; $5520: $46
	ld c, c                                          ; $5521: $49
	inc de                                           ; $5522: $13
	db $f4                                           ; $5523: $f4
	ld [hl-], a                                      ; $5524: $32
	ldh a, [$cd]                                     ; $5525: $f0 $cd
	xor $17                                          ; $5527: $ee $17
	ld a, [hl-]                                      ; $5529: $3a
	ld b, c                                          ; $552a: $41
	ccf                                              ; $552b: $3f
	xor h                                            ; $552c: $ac
	halt                                             ; $552d: $76
	dec sp                                           ; $552e: $3b
	ccf                                              ; $552f: $3f
	add b                                            ; $5530: $80

jr_08b_5531:
	jr c, jr_08b_5572                                ; $5531: $38 $3f

	ld c, [hl]                                       ; $5533: $4e
	ld a, [hl-]                                      ; $5534: $3a
	ld b, [hl]                                       ; $5535: $46
	and e                                            ; $5536: $a3
	cpl                                              ; $5537: $2f
	ld [hl-], a                                      ; $5538: $32
	adc a                                            ; $5539: $8f
	pop af                                           ; $553a: $f1
	rrca                                             ; $553b: $0f
	ld c, d                                          ; $553c: $4a
	db $ed                                           ; $553d: $ed
	sbc e                                            ; $553e: $9b
	xor l                                            ; $553f: $ad
	add hl, sp                                       ; $5540: $39
	ld e, c                                          ; $5541: $59
	ld b, c                                          ; $5542: $41
	inc [hl]                                         ; $5543: $34
	halt                                             ; $5544: $76
	dec sp                                           ; $5545: $3b
	ccf                                              ; $5546: $3f
	ld a, [hl-]                                      ; $5547: $3a
	ld b, c                                          ; $5548: $41
	ccf                                              ; $5549: $3f
	inc de                                           ; $554a: $13
	adc b                                            ; $554b: $88
	ld d, e                                          ; $554c: $53
	ldh a, [rPCM12]                                  ; $554d: $f0 $76
	ldh a, [rTMA]                                    ; $554f: $f0 $06
	add hl, sp                                       ; $5551: $39
	ldh a, [$ab]                                     ; $5552: $f0 $ab
	ld a, [hl-]                                      ; $5554: $3a
	ld b, c                                          ; $5555: $41
	ld b, h                                          ; $5556: $44
	ld e, a                                          ; $5557: $5f
	add hl, sp                                       ; $5558: $39
	and e                                            ; $5559: $a3
	db $ed                                           ; $555a: $ed
	ld c, [hl]                                       ; $555b: $4e
	inc [hl]                                         ; $555c: $34
	ld de, $4158                                     ; $555d: $11 $58 $41
	ld c, b                                          ; $5560: $48
	and b                                            ; $5561: $a0
	cpl                                              ; $5562: $2f
	ld b, e                                          ; $5563: $43
	xor $2d                                          ; $5564: $ee $2d
	xor l                                            ; $5566: $ad
	ld e, [hl]                                       ; $5567: $5e
	ld e, c                                          ; $5568: $59
	ld c, c                                          ; $5569: $49

jr_08b_556a:
	inc [hl]                                         ; $556a: $34
	ld b, [hl]                                       ; $556b: $46
	ld a, [hl-]                                      ; $556c: $3a
	dec a                                            ; $556d: $3d
	ld c, e                                          ; $556e: $4b
	xor l                                            ; $556f: $ad
	db $ec                                           ; $5570: $ec
	rst SubAFromDE                                          ; $5571: $df

jr_08b_5572:
	ld c, b                                          ; $5572: $48
	ld c, d                                          ; $5573: $4a
	ld a, $3d                                        ; $5574: $3e $3d
	ld b, l                                          ; $5576: $45
	ld c, h                                          ; $5577: $4c
	and b                                            ; $5578: $a0
	xor $2d                                          ; $5579: $ee $2d
	inc [hl]                                         ; $557b: $34
	ld b, b                                          ; $557c: $40
	add hl, sp                                       ; $557d: $39
	ld c, d                                          ; $557e: $4a
	ld d, c                                          ; $557f: $51
	ld c, b                                          ; $5580: $48
	dec [hl]                                         ; $5581: $35
	rla                                              ; $5582: $17
	db $ed                                           ; $5583: $ed
	ld c, [hl]                                       ; $5584: $4e
	inc [hl]                                         ; $5585: $34
	ld d, h                                          ; $5586: $54
	ld b, d                                          ; $5587: $42
	adc b                                            ; $5588: $88
	db $ec                                           ; $5589: $ec
	ld a, l                                          ; $558a: $7d
	jr c, jr_08b_55cf                                ; $558b: $38 $42

	ld c, d                                          ; $558d: $4a
	inc de                                           ; $558e: $13
	ld b, l                                          ; $558f: $45
	ld e, a                                          ; $5590: $5f
	ld a, $3c                                        ; $5591: $3e $3c
	dec sp                                           ; $5593: $3b
	dec a                                            ; $5594: $3d
	ld d, b                                          ; $5595: $50
	inc [hl]                                         ; $5596: $34
	ld e, d                                          ; $5597: $5a
	add hl, sp                                       ; $5598: $39
	sub a                                            ; $5599: $97
	ld c, b                                          ; $559a: $48
	and b                                            ; $559b: $a0
	cpl                                              ; $559c: $2f
	ld b, e                                          ; $559d: $43
	ld b, [hl]                                       ; $559e: $46
	ld d, a                                          ; $559f: $57
	ld d, e                                          ; $55a0: $53
	ld c, c                                          ; $55a1: $49
	add hl, sp                                       ; $55a2: $39
	inc de                                           ; $55a3: $13
	ldh a, [$fa]                                     ; $55a4: $f0 $fa
	ld d, d                                          ; $55a6: $52
	ld a, c                                          ; $55a7: $79
	ccf                                              ; $55a8: $3f
	ld c, a                                          ; $55a9: $4f
	ld d, b                                          ; $55aa: $50
	add hl, sp                                       ; $55ab: $39
	ld b, l                                          ; $55ac: $45
	xor b                                            ; $55ad: $a8
	ld c, d                                          ; $55ae: $4a
	ld c, a                                          ; $55af: $4f
	ld c, b                                          ; $55b0: $48
	inc [hl]                                         ; $55b1: $34
	pop af                                           ; $55b2: $f1
	ld a, [$403e]                                    ; $55b3: $fa $3e $40
	add hl, sp                                       ; $55b6: $39
	ld a, [hl-]                                      ; $55b7: $3a
	adc b                                            ; $55b8: $88
	ld b, h                                          ; $55b9: $44
	ld c, h                                          ; $55ba: $4c
	and b                                            ; $55bb: $a0
	add hl, sp                                       ; $55bc: $39
	ldh a, [rSCY]                                    ; $55bd: $f0 $42
	ldh a, [rSCY]                                    ; $55bf: $f0 $42
	xor l                                            ; $55c1: $ad
	ld b, b                                          ; $55c2: $40
	ld b, c                                          ; $55c3: $41
	ld a, [hl-]                                      ; $55c4: $3a
	ld d, h                                          ; $55c5: $54
	ld c, c                                          ; $55c6: $49
	ld a, [hl-]                                      ; $55c7: $3a
	jr c, jr_08b_5614                                ; $55c8: $38 $4a

	ld d, c                                          ; $55ca: $51
	ld b, l                                          ; $55cb: $45
	xor b                                            ; $55cc: $a8
	ld e, h                                          ; $55cd: $5c
	dec sp                                           ; $55ce: $3b

jr_08b_55cf:
	ld c, c                                          ; $55cf: $49
	inc [hl]                                         ; $55d0: $34
	db $ed                                           ; $55d1: $ed
	ld h, l                                          ; $55d2: $65
	ld a, $52                                        ; $55d3: $3e $52
	ld d, c                                          ; $55d5: $51
	ld b, l                                          ; $55d6: $45
	and b                                            ; $55d7: $a0
	cpl                                              ; $55d8: $2f
	ld b, e                                          ; $55d9: $43
	db $ec                                           ; $55da: $ec
	db $eb                                           ; $55db: $eb
	ld sp, hl                                        ; $55dc: $f9
	call nc, $3f57                                   ; $55dd: $d4 $57 $3f
	ccf                                              ; $55e0: $3f
	xor h                                            ; $55e1: $ac
	jr c, jr_08b_561c                                ; $55e2: $38 $38

	ld b, d                                          ; $55e4: $42
	inc a                                            ; $55e5: $3c
	ld a, [hl-]                                      ; $55e6: $3a
	and c                                            ; $55e7: $a1
	jr c, jr_08b_556a                                ; $55e8: $38 $80

	ld c, d                                          ; $55ea: $4a
	ld c, a                                          ; $55eb: $4f
	ldh a, [$80]                                     ; $55ec: $f0 $80
	ldh a, [$c5]                                     ; $55ee: $f0 $c5
	ld c, d                                          ; $55f0: $4a
	ld d, c                                          ; $55f1: $51
	ld b, l                                          ; $55f2: $45
	xor b                                            ; $55f3: $a8
	jp z, $eb34                                      ; $55f4: $ca $34 $eb

	ld e, d                                          ; $55f7: $5a
	and b                                            ; $55f8: $a0
	cpl                                              ; $55f9: $2f
	db $ed                                           ; $55fa: $ed
	ld l, [hl]                                       ; $55fb: $6e
	ld d, d                                          ; $55fc: $52
	ld c, d                                          ; $55fd: $4a
	xor h                                            ; $55fe: $ac
	ld h, h                                          ; $55ff: $64
	ld c, c                                          ; $5600: $49
	ld a, [hl-]                                      ; $5601: $3a
	ld a, $55                                        ; $5602: $3e $55
	ccf                                              ; $5604: $3f
	ldh a, [rAUD3LEVEL]                              ; $5605: $f0 $1c
	ldh a, [$d9]                                     ; $5607: $f0 $d9
	dec a                                            ; $5609: $3d
	ld a, [hl-]                                      ; $560a: $3a
	inc a                                            ; $560b: $3c
	dec sp                                           ; $560c: $3b
	dec a                                            ; $560d: $3d
	ld e, l                                          ; $560e: $5d
	ld e, d                                          ; $560f: $5a
	inc de                                           ; $5610: $13
	db $ec                                           ; $5611: $ec
	rst SubAFromDE                                          ; $5612: $df
	dec sp                                           ; $5613: $3b

jr_08b_5614:
	ccf                                              ; $5614: $3f
	xor h                                            ; $5615: $ac
	ldh a, [$80]                                     ; $5616: $f0 $80
	ldh a, [$c5]                                     ; $5618: $f0 $c5
	ldh a, [$8a]                                     ; $561a: $f0 $8a

jr_08b_561c:
	ldh a, [rHDMA2]                                  ; $561c: $f0 $52
	jr c, jr_08b_565a                                ; $561e: $38 $3a

	xor $20                                          ; $5620: $ee $20
	dec [hl]                                         ; $5622: $35
	ld [hl+], a                                      ; $5623: $22
	inc de                                           ; $5624: $13
	ldh a, [rAUDVOL]                                 ; $5625: $f0 $24
	ld a, $3c                                        ; $5627: $3e $3c
	ld e, l                                          ; $5629: $5d
	ld d, b                                          ; $562a: $50
	ld c, l                                          ; $562b: $4d
	ld c, [hl]                                       ; $562c: $4e
	ld a, [hl-]                                      ; $562d: $3a
	ld b, c                                          ; $562e: $41
	ccf                                              ; $562f: $3f
	xor h                                            ; $5630: $ac
	db $ec                                           ; $5631: $ec
	rla                                              ; $5632: $17
	ld b, h                                          ; $5633: $44
	adc l                                            ; $5634: $8d
	and e                                            ; $5635: $a3
	add hl, bc                                       ; $5636: $09
	cpl                                              ; $5637: $2f
	ld b, e                                          ; $5638: $43
	db $ec                                           ; $5639: $ec
	ld h, [hl]                                       ; $563a: $66
	inc [hl]                                         ; $563b: $34
	ldh a, [$3e]                                     ; $563c: $f0 $3e
	pop af                                           ; $563e: $f1
	ret nz                                           ; $563f: $c0

	ldh a, [rTIMA]                                   ; $5640: $f0 $05
	ld b, h                                          ; $5642: $44
	xor b                                            ; $5643: $a8
	ld a, a                                          ; $5644: $7f
	ld h, d                                          ; $5645: $62
	pop af                                           ; $5646: $f1
	ld e, a                                          ; $5647: $5f
	ld e, h                                          ; $5648: $5c
	ld hl, sp+$24                                    ; $5649: $f8 $24
	ld [hl], c                                       ; $564b: $71
	ccf                                              ; $564c: $3f
	jr c, jr_08b_56a3                                ; $564d: $38 $54

	add hl, sp                                       ; $564f: $39
	and b                                            ; $5650: $a0
	db $eb                                           ; $5651: $eb
	ld h, h                                          ; $5652: $64
	scf                                              ; $5653: $37
	inc de                                           ; $5654: $13
	ld de, $4158                                     ; $5655: $11 $58 $41
	and b                                            ; $5658: $a0
	cpl                                              ; $5659: $2f

jr_08b_565a:
	ld b, e                                          ; $565a: $43
	ld [hl], $a9                                     ; $565b: $36 $a9
	ld b, [hl]                                       ; $565d: $46
	ld c, l                                          ; $565e: $4d
	inc [hl]                                         ; $565f: $34
	ld e, d                                          ; $5660: $5a
	ld d, h                                          ; $5661: $54
	inc a                                            ; $5662: $3c
	ld c, d                                          ; $5663: $4a
	inc de                                           ; $5664: $13
	ldh a, [rHDMA3]                                  ; $5665: $f0 $53
	dec sp                                           ; $5667: $3b
	dec a                                            ; $5668: $3d
	ld d, h                                          ; $5669: $54
	ld c, c                                          ; $566a: $49
	ld b, [hl]                                       ; $566b: $46
	ld c, [hl]                                       ; $566c: $4e
	and c                                            ; $566d: $a1
	ld e, b                                          ; $566e: $58
	ccf                                              ; $566f: $3f
	inc [hl]                                         ; $5670: $34
	ld l, a                                          ; $5671: $6f
	ld c, e                                          ; $5672: $4b
	ldh a, [$98]                                     ; $5673: $f0 $98
	ld c, d                                          ; $5675: $4a
	ld a, $66                                        ; $5676: $3e $66
	add hl, sp                                       ; $5678: $39
	and c                                            ; $5679: $a1
	cpl                                              ; $567a: $2f
	ld [hl-], a                                      ; $567b: $32
	ld b, c                                          ; $567c: $41
	ld e, c                                          ; $567d: $59
	xor l                                            ; $567e: $ad
	pop af                                           ; $567f: $f1
	dec l                                            ; $5680: $2d
	ld c, e                                          ; $5681: $4b
	inc [hl]                                         ; $5682: $34
	ldh a, [$0c]                                     ; $5683: $f0 $0c
	jr c, jr_08b_56c4                                ; $5685: $38 $3d

	ld d, h                                          ; $5687: $54
	ld c, c                                          ; $5688: $49
	inc de                                           ; $5689: $13
	ld b, [hl]                                       ; $568a: $46
	ld c, [hl]                                       ; $568b: $4e
	ld b, l                                          ; $568c: $45
	add hl, sp                                       ; $568d: $39
	ld a, [hl-]                                      ; $568e: $3a
	ld c, b                                          ; $568f: $48
	and e                                            ; $5690: $a3
	cpl                                              ; $5691: $2f
	ld [hl-], a                                      ; $5692: $32
	ld b, c                                          ; $5693: $41
	ld e, c                                          ; $5694: $59
	xor l                                            ; $5695: $ad
	ld d, h                                          ; $5696: $54
	ld b, c                                          ; $5697: $41
	ld a, [hl-]                                      ; $5698: $3a
	pop af                                           ; $5699: $f1
	ld b, [hl]                                       ; $569a: $46
	inc [hl]                                         ; $569b: $34
	db $ed                                           ; $569c: $ed
	ld e, [hl]                                       ; $569d: $5e
	db $ec                                           ; $569e: $ec
	dec b                                            ; $569f: $05
	sub a                                            ; $56a0: $97
	xor b                                            ; $56a1: $a8
	ld a, [hl-]                                      ; $56a2: $3a

jr_08b_56a3:
	ld b, c                                          ; $56a3: $41
	ld c, d                                          ; $56a4: $4a
	halt                                             ; $56a5: $76
	ld b, d                                          ; $56a6: $42
	ld d, h                                          ; $56a7: $54
	ld c, c                                          ; $56a8: $49
	inc [hl]                                         ; $56a9: $34
	ldh a, [$2d]                                     ; $56aa: $f0 $2d
	dec sp                                           ; $56ac: $3b
	ccf                                              ; $56ad: $3f
	ld c, [hl]                                       ; $56ae: $4e
	ld b, c                                          ; $56af: $41
	ld b, h                                          ; $56b0: $44
	ld [hl], $33                                     ; $56b1: $36 $33
	add hl, bc                                       ; $56b3: $09
	db $ed                                           ; $56b4: $ed
	ret z                                            ; $56b5: $c8

	ld [hl], e                                       ; $56b6: $73
	inc de                                           ; $56b7: $13
	ldh a, [c]                                       ; $56b8: $f2
	ld h, l                                          ; $56b9: $65
	di                                               ; $56ba: $f3
	rst $38                                          ; $56bb: $ff
	ldh a, [rBGP]                                    ; $56bc: $f0 $47
	ldh a, [$2a]                                     ; $56be: $f0 $2a
	ldh a, [$ce]                                     ; $56c0: $f0 $ce
	ldh a, [c]                                       ; $56c2: $f2
	ld e, b                                          ; $56c3: $58

jr_08b_56c4:
	ld c, d                                          ; $56c4: $4a
	ld d, c                                          ; $56c5: $51
	xor b                                            ; $56c6: $a8
	ld l, a                                          ; $56c7: $6f
	ld c, e                                          ; $56c8: $4b
	ld c, b                                          ; $56c9: $48
	and b                                            ; $56ca: $a0
	ld h, h                                          ; $56cb: $64
	jr c, jr_08b_5702                                ; $56cc: $38 $34

	xor $27                                          ; $56ce: $ee $27
	xor b                                            ; $56d0: $a8
	ld l, e                                          ; $56d1: $6b
	ld l, [hl]                                       ; $56d2: $6e
	dec sp                                           ; $56d3: $3b
	ccf                                              ; $56d4: $3f
	ld b, c                                          ; $56d5: $41
	ld b, h                                          ; $56d6: $44
	and c                                            ; $56d7: $a1
	ld b, [hl]                                       ; $56d8: $46
	dec sp                                           ; $56d9: $3b
	inc [hl]                                         ; $56da: $34
	db $eb                                           ; $56db: $eb
	pop af                                           ; $56dc: $f1
	and b                                            ; $56dd: $a0
	ld l, e                                          ; $56de: $6b
	ld b, h                                          ; $56df: $44
	inc [hl]                                         ; $56e0: $34
	ld [de], a                                       ; $56e1: $12
	xor b                                            ; $56e2: $a8
	xor $06                                          ; $56e3: $ee $06
	ld b, a                                          ; $56e5: $47
	jr c, jr_08b_5725                                ; $56e6: $38 $3d

	ld b, d                                          ; $56e8: $42
	inc a                                            ; $56e9: $3c
	and b                                            ; $56ea: $a0
	cpl                                              ; $56eb: $2f
	ld b, e                                          ; $56ec: $43
	db $eb                                           ; $56ed: $eb
	pop af                                           ; $56ee: $f1
	dec sp                                           ; $56ef: $3b
	ccf                                              ; $56f0: $3f
	xor h                                            ; $56f1: $ac
	ld h, h                                          ; $56f2: $64
	sbc [hl]                                         ; $56f3: $9e
	ld b, d                                          ; $56f4: $42
	di                                               ; $56f5: $f3
	jp c, $a13c                                      ; $56f6: $da $3c $a1

	ld b, b                                          ; $56f9: $40
	add hl, sp                                       ; $56fa: $39
	ld b, h                                          ; $56fb: $44
	ld b, l                                          ; $56fc: $45
	xor b                                            ; $56fd: $a8
	ld b, [hl]                                       ; $56fe: $46
	ld c, l                                          ; $56ff: $4d
	inc [hl]                                         ; $5700: $34
	ld h, h                                          ; $5701: $64

jr_08b_5702:
	sbc [hl]                                         ; $5702: $9e
	ld b, a                                          ; $5703: $47
	ldh a, [rAUDVOL]                                 ; $5704: $f0 $24
	ld a, $3f                                        ; $5706: $3e $3f
	inc de                                           ; $5708: $13
	ld a, [hl-]                                      ; $5709: $3a
	inc a                                            ; $570a: $3c
	dec sp                                           ; $570b: $3b
	dec a                                            ; $570c: $3d
	dec sp                                           ; $570d: $3b
	ld e, l                                          ; $570e: $5d
	and c                                            ; $570f: $a1
	cpl                                              ; $5710: $2f
	ld b, e                                          ; $5711: $43
	ld b, b                                          ; $5712: $40
	ld b, c                                          ; $5713: $41
	ld a, [hl-]                                      ; $5714: $3a
	ld b, d                                          ; $5715: $42
	xor h                                            ; $5716: $ac
	ldh a, [$0c]                                     ; $5717: $f0 $0c
	jr c, jr_08b_575a                                ; $5719: $38 $3f

	ld a, [hl-]                                      ; $571b: $3a
	jr c, jr_08b_5763                                ; $571c: $38 $45

	xor b                                            ; $571e: $a8
	ld [hl-], a                                      ; $571f: $32
	ld e, d                                          ; $5720: $5a
	add hl, sp                                       ; $5721: $39
	ld d, a                                          ; $5722: $57
	ld c, d                                          ; $5723: $4a
	inc [hl]                                         ; $5724: $34

jr_08b_5725:
	pop af                                           ; $5725: $f1
	dec l                                            ; $5726: $2d
	ld h, d                                          ; $5727: $62
	ldh a, [$0c]                                     ; $5728: $f0 $0c
	jr c, jr_08b_5769                                ; $572a: $38 $3d

	ld d, h                                          ; $572c: $54
	ld c, c                                          ; $572d: $49
	ld d, e                                          ; $572e: $53
	inc de                                           ; $572f: $13
	ld b, [hl]                                       ; $5730: $46
	ld c, [hl]                                       ; $5731: $4e
	ld c, c                                          ; $5732: $49
	ld [hl], a                                       ; $5733: $77
	dec sp                                           ; $5734: $3b
	dec a                                            ; $5735: $3d
	and e                                            ; $5736: $a3
	cpl                                              ; $5737: $2f
	ld b, e                                          ; $5738: $43
	ld b, b                                          ; $5739: $40

jr_08b_573a:
	ld b, c                                          ; $573a: $41
	ld a, [hl-]                                      ; $573b: $3a
	ld b, d                                          ; $573c: $42
	xor h                                            ; $573d: $ac
	ldh a, [$0c]                                     ; $573e: $f0 $0c
	jr c, jr_08b_5781                                ; $5740: $38 $3f

	ld a, [hl-]                                      ; $5742: $3a
	jr c, jr_08b_578a                                ; $5743: $38 $45

	xor b                                            ; $5745: $a8
	ld [hl-], a                                      ; $5746: $32
	adc e                                            ; $5747: $8b
	ldh a, [$72]                                     ; $5748: $f0 $72
	ld b, d                                          ; $574a: $42
	di                                               ; $574b: $f3
	jp c, Jump_08b_483c                              ; $574c: $da $3c $48

	dec [hl]                                         ; $574f: $35
	ld e, d                                          ; $5750: $5a
	add hl, sp                                       ; $5751: $39
	ld d, a                                          ; $5752: $57
	ld c, d                                          ; $5753: $4a
	inc de                                           ; $5754: $13
	ldh a, [c]                                       ; $5755: $f2
	ei                                               ; $5756: $fb
	ld c, l                                          ; $5757: $4d
	ldh a, [c]                                       ; $5758: $f2
	ei                                               ; $5759: $fb

jr_08b_575a:
	ld c, l                                          ; $575a: $4d
	ld a, $38                                        ; $575b: $3e $38
	ld c, c                                          ; $575d: $49
	ld [hl], a                                       ; $575e: $77
	dec sp                                           ; $575f: $3b
	dec a                                            ; $5760: $3d
	ld b, l                                          ; $5761: $45
	and e                                            ; $5762: $a3

jr_08b_5763:
	ld l, d                                          ; $5763: $6a
	ldh a, [rAUD1HIGH]                               ; $5764: $f0 $14
	inc a                                            ; $5766: $3c
	ld d, b                                          ; $5767: $50
	xor h                                            ; $5768: $ac

jr_08b_5769:
	add hl, sp                                       ; $5769: $39
	ld h, c                                          ; $576a: $61
	ld b, d                                          ; $576b: $42
	ldh a, [rAUD1ENV]                                ; $576c: $f0 $12
	sbc a                                            ; $576e: $9f
	ld b, a                                          ; $576f: $47
	inc de                                           ; $5770: $13
	ldh a, [rOCPS]                                   ; $5771: $f0 $6a
	add hl, sp                                       ; $5773: $39
	ld d, h                                          ; $5774: $54
	ld c, c                                          ; $5775: $49
	ld b, a                                          ; $5776: $47
	ld a, [hl-]                                      ; $5777: $3a
	dec sp                                           ; $5778: $3b
	db $ec                                           ; $5779: $ec
	add hl, de                                       ; $577a: $19
	and b                                            ; $577b: $a0
	db $ed                                           ; $577c: $ed
	ld d, d                                          ; $577d: $52
	xor $27                                          ; $577e: $ee $27
	ld c, d                                          ; $5780: $4a

jr_08b_5781:
	ld e, c                                          ; $5781: $59
	ld d, c                                          ; $5782: $51
	xor b                                            ; $5783: $a8
	ld d, h                                          ; $5784: $54
	ld c, l                                          ; $5785: $4d
	inc a                                            ; $5786: $3c
	ld d, b                                          ; $5787: $50
	inc [hl]                                         ; $5788: $34
	db $eb                                           ; $5789: $eb

jr_08b_578a:
	sub [hl]                                         ; $578a: $96
	xor b                                            ; $578b: $a8
	ldh a, [$bc]                                     ; $578c: $f0 $bc
	ldh a, [c]                                       ; $578e: $f2
	inc bc                                           ; $578f: $03
	and b                                            ; $5790: $a0
	ldh a, [$08]                                     ; $5791: $f0 $08
	ld d, b                                          ; $5793: $50
	inc [hl]                                         ; $5794: $34
	ld a, d                                          ; $5795: $7a
	ld c, [hl]                                       ; $5796: $4e
	sub a                                            ; $5797: $97
	xor b                                            ; $5798: $a8
	xor $27                                          ; $5799: $ee $27
	and b                                            ; $579b: $a0
	db $ed                                           ; $579c: $ed
	ret z                                            ; $579d: $c8

	inc [hl]                                         ; $579e: $34
	ldh a, [rTAC]                                    ; $579f: $f0 $07
	inc a                                            ; $57a1: $3c
	dec sp                                           ; $57a2: $3b
	dec a                                            ; $57a3: $3d
	ld h, e                                          ; $57a4: $63
	ld b, l                                          ; $57a5: $45
	xor b                                            ; $57a6: $a8
	ld b, b                                          ; $57a7: $40
	ld c, l                                          ; $57a8: $4d
	ld e, e                                          ; $57a9: $5b
	ld d, [hl]                                       ; $57aa: $56
	ld c, h                                          ; $57ab: $4c
	inc [hl]                                         ; $57ac: $34
	ldh a, [$bc]                                     ; $57ad: $f0 $bc
	ldh a, [c]                                       ; $57af: $f2
	inc bc                                           ; $57b0: $03
	inc de                                           ; $57b1: $13
	db $eb                                           ; $57b2: $eb
	sbc a                                            ; $57b3: $9f
	and d                                            ; $57b4: $a2
	cpl                                              ; $57b5: $2f
	ld [hl-], a                                      ; $57b6: $32
	ld b, [hl]                                       ; $57b7: $46
	jr c, jr_08b_573a                                ; $57b8: $38 $80

	ld b, d                                          ; $57ba: $42
	di                                               ; $57bb: $f3
	jp c, $3f3b                                      ; $57bc: $da $3b $3f

	xor h                                            ; $57bf: $ac
	ld b, [hl]                                       ; $57c0: $46
	ld b, c                                          ; $57c1: $41
	ld a, [hl-]                                      ; $57c2: $3a
	pop af                                           ; $57c3: $f1
	ld b, [hl]                                       ; $57c4: $46
	ld b, h                                          ; $57c5: $44
	dec sp                                           ; $57c6: $3b
	dec a                                            ; $57c7: $3d
	ld b, d                                          ; $57c8: $42
	inc a                                            ; $57c9: $3c
	xor l                                            ; $57ca: $ad
	add hl, sp                                       ; $57cb: $39
	ld c, [hl]                                       ; $57cc: $4e
	ld e, b                                          ; $57cd: $58
	inc a                                            ; $57ce: $3c
	dec sp                                           ; $57cf: $3b
	dec a                                            ; $57d0: $3d
	ld a, [hl-]                                      ; $57d1: $3a
	ld c, b                                          ; $57d2: $48
	and e                                            ; $57d3: $a3
	cpl                                              ; $57d4: $2f
	ld [hl-], a                                      ; $57d5: $32
	adc e                                            ; $57d6: $8b
	ldh a, [$72]                                     ; $57d7: $f0 $72
	ld b, a                                          ; $57d9: $47
	xor h                                            ; $57da: $ac
	ld b, [hl]                                       ; $57db: $46
	ld b, c                                          ; $57dc: $41
	ld a, [hl-]                                      ; $57dd: $3a
	di                                               ; $57de: $f3
	jp c, $3853                                      ; $57df: $da $53 $38

	dec a                                            ; $57e2: $3d
	ld b, d                                          ; $57e3: $42
	inc a                                            ; $57e4: $3c
	xor b                                            ; $57e5: $a8
	ld a, [hl-]                                      ; $57e6: $3a
	ld b, c                                          ; $57e7: $41
	ld b, h                                          ; $57e8: $44
	inc a                                            ; $57e9: $3c
	inc [hl]                                         ; $57ea: $34
	ld l, [hl]                                       ; $57eb: $6e
	inc a                                            ; $57ec: $3c
	ld d, d                                          ; $57ed: $52
	ld a, $38                                        ; $57ee: $3e $38
	inc de                                           ; $57f0: $13
	pop hl                                           ; $57f1: $e1
	ld b, h                                          ; $57f2: $44
	dec sp                                           ; $57f3: $3b
	dec a                                            ; $57f4: $3d
	ld a, [hl-]                                      ; $57f5: $3a
	ld c, b                                          ; $57f6: $48
	and e                                            ; $57f7: $a3
	add hl, bc                                       ; $57f8: $09
	cpl                                              ; $57f9: $2f
	ld [hl-], a                                      ; $57fa: $32
	ld e, d                                          ; $57fb: $5a
	ld d, h                                          ; $57fc: $54
	ld c, d                                          ; $57fd: $4a
	xor h                                            ; $57fe: $ac
	db $eb                                           ; $57ff: $eb
	ld a, [hl]                                       ; $5800: $7e
	ld b, h                                          ; $5801: $44
	dec sp                                           ; $5802: $3b
	dec a                                            ; $5803: $3d
	inc a                                            ; $5804: $3c
	ld a, [hl-]                                      ; $5805: $3a
	ld [hl], $33                                     ; $5806: $36 $33
	add hl, bc                                       ; $5808: $09
	cpl                                              ; $5809: $2f
	db $eb                                           ; $580a: $eb
	ldh a, [c]                                       ; $580b: $f2
	add hl, bc                                       ; $580c: $09
	cpl                                              ; $580d: $2f
	db $ec                                           ; $580e: $ec
	jp nc, $2f09                                     ; $580f: $d2 $09 $2f

	db $eb                                           ; $5812: $eb
	inc de                                           ; $5813: $13
	di                                               ; $5814: $f3
	ld [hl-], a                                      ; $5815: $32
	add hl, bc                                       ; $5816: $09
	cpl                                              ; $5817: $2f
	db $ec                                           ; $5818: $ec
	db $fd                                           ; $5819: $fd
	add hl, bc                                       ; $581a: $09
	cpl                                              ; $581b: $2f
	ldh a, [rOBP0]                                   ; $581c: $f0 $48
	ldh a, [$2c]                                     ; $581e: $f0 $2c
	ldh a, [rLY]                                     ; $5820: $f0 $44
	add hl, bc                                       ; $5822: $09
	cpl                                              ; $5823: $2f
	db $ec                                           ; $5824: $ec
	rst $38                                          ; $5825: $ff
	add hl, bc                                       ; $5826: $09
	cpl                                              ; $5827: $2f
	ld [$092c], a                                    ; $5828: $ea $2c $09
	cpl                                              ; $582b: $2f
	db $ed                                           ; $582c: $ed
	ld [bc], a                                       ; $582d: $02
	add hl, bc                                       ; $582e: $09
	cpl                                              ; $582f: $2f
	db $ec                                           ; $5830: $ec
	pop af                                           ; $5831: $f1
	add hl, bc                                       ; $5832: $09
	cpl                                              ; $5833: $2f
	ld [$0929], a                                    ; $5834: $ea $29 $09
	cpl                                              ; $5837: $2f
	db $eb                                           ; $5838: $eb
	ld [hl], l                                       ; $5839: $75
	add hl, bc                                       ; $583a: $09
	cpl                                              ; $583b: $2f
	ldh a, [$35]                                     ; $583c: $f0 $35
	ldh a, [rSC]                                     ; $583e: $f0 $02
	ldh a, [$c3]                                     ; $5840: $f0 $c3
	ldh a, [$c2]                                     ; $5842: $f0 $c2
	add hl, bc                                       ; $5844: $09
	cpl                                              ; $5845: $2f
	ldh a, [$b2]                                     ; $5846: $f0 $b2
	ldh a, [rLY]                                     ; $5848: $f0 $44
	pop af                                           ; $584a: $f1
	sbc b                                            ; $584b: $98
	add hl, bc                                       ; $584c: $09
	cpl                                              ; $584d: $2f
	add e                                            ; $584e: $83
	ldh a, [rDIV]                                    ; $584f: $f0 $04
	ldh a, [$7e]                                     ; $5851: $f0 $7e
	ldh a, [$3d]                                     ; $5853: $f0 $3d
	ldh a, [$27]                                     ; $5855: $f0 $27
	add hl, bc                                       ; $5857: $09
	cpl                                              ; $5858: $2f
	ldh a, [$74]                                     ; $5859: $f0 $74
	ldh a, [$7a]                                     ; $585b: $f0 $7a
	ldh a, [$df]                                     ; $585d: $f0 $df
	add hl, bc                                       ; $585f: $09
	cpl                                              ; $5860: $2f
	db $eb                                           ; $5861: $eb
	ld e, e                                          ; $5862: $5b
	add hl, bc                                       ; $5863: $09
	cpl                                              ; $5864: $2f
	db $ec                                           ; $5865: $ec
	db $fc                                           ; $5866: $fc
	add hl, bc                                       ; $5867: $09
	cpl                                              ; $5868: $2f
	pop af                                           ; $5869: $f1
	cpl                                              ; $586a: $2f
	add hl, bc                                       ; $586b: $09
	cpl                                              ; $586c: $2f
	add e                                            ; $586d: $83
	ldh a, [$c2]                                     ; $586e: $f0 $c2
	ld e, c                                          ; $5870: $59
	ld l, c                                          ; $5871: $69
	add hl, bc                                       ; $5872: $09
	cpl                                              ; $5873: $2f
	add e                                            ; $5874: $83
	ldh a, [$2f]                                     ; $5875: $f0 $2f
	ld e, c                                          ; $5877: $59
	add hl, bc                                       ; $5878: $09
	cpl                                              ; $5879: $2f
	ld b, e                                          ; $587a: $43
	or h                                             ; $587b: $b4
	xor h                                            ; $587c: $ac
	add sp, $03                                      ; $587d: $e8 $03
	ld c, d                                          ; $587f: $4a
	inc de                                           ; $5880: $13
	add sp, $04                                      ; $5881: $e8 $04
	ld h, d                                          ; $5883: $62
	sbc c                                            ; $5884: $99
	add b                                            ; $5885: $80
	inc a                                            ; $5886: $3c
	ld a, [hl-]                                      ; $5887: $3a
	and b                                            ; $5888: $a0
	cpl                                              ; $5889: $2f
	ld b, e                                          ; $588a: $43
	xor $10                                          ; $588b: $ee $10
	xor $10                                          ; $588d: $ee $10
	dec [hl]                                         ; $588f: $35
	rla                                              ; $5890: $17
	ld c, a                                          ; $5891: $4f
	ld a, $3c                                        ; $5892: $3e $3c
	ld a, $3f                                        ; $5894: $3e $3f
	inc [hl]                                         ; $5896: $34
	ldh a, [$30]                                     ; $5897: $f0 $30
	ldh a, [$28]                                     ; $5899: $f0 $28
	ld h, d                                          ; $589b: $62
	inc de                                           ; $589c: $13
	ldh a, [$2a]                                     ; $589d: $f0 $2a
	ldh a, [$f5]                                     ; $589f: $f0 $f5
	ld e, [hl]                                       ; $58a1: $5e
	ld h, c                                          ; $58a2: $61
	ld d, [hl]                                       ; $58a3: $56
	dec sp                                           ; $58a4: $3b
	dec a                                            ; $58a5: $3d
	inc a                                            ; $58a6: $3c
	ld a, [hl-]                                      ; $58a7: $3a
	and b                                            ; $58a8: $a0
	cpl                                              ; $58a9: $2f
	pop af                                           ; $58aa: $f1
	add d                                            ; $58ab: $82
	inc a                                            ; $58ac: $3c
	inc [hl]                                         ; $58ad: $34
	ld d, h                                          ; $58ae: $54
	ld b, d                                          ; $58af: $42
	ldh a, [$30]                                     ; $58b0: $f0 $30
	ldh a, [$28]                                     ; $58b2: $f0 $28
	ld b, h                                          ; $58b4: $44
	dec sp                                           ; $58b5: $3b
	dec a                                            ; $58b6: $3d
	add hl, bc                                       ; $58b7: $09
	cpl                                              ; $58b8: $2f
	ld b, e                                          ; $58b9: $43
	pop af                                           ; $58ba: $f1
	add d                                            ; $58bb: $82
	inc a                                            ; $58bc: $3c
	ld d, h                                          ; $58bd: $54
	ld b, d                                          ; $58be: $42
	ldh a, [$30]                                     ; $58bf: $f0 $30
	ldh a, [$28]                                     ; $58c1: $f0 $28
	ld b, h                                          ; $58c3: $44
	dec sp                                           ; $58c4: $3b
	dec a                                            ; $58c5: $3d
	ld a, $ac                                        ; $58c6: $3e $ac
	ld c, a                                          ; $58c8: $4f
	add hl, sp                                       ; $58c9: $39
	ldh a, [rHDMA4]                                  ; $58ca: $f0 $54
	ld a, $99                                        ; $58cc: $3e $99
	dec sp                                           ; $58ce: $3b
	ccf                                              ; $58cf: $3f
	ld l, h                                          ; $58d0: $6c
	ld c, [hl]                                       ; $58d1: $4e
	inc a                                            ; $58d2: $3c
	and b                                            ; $58d3: $a0
	cpl                                              ; $58d4: $2f
	ldh a, [$30]                                     ; $58d5: $f0 $30
	ldh a, [$28]                                     ; $58d7: $f0 $28
	ld h, d                                          ; $58d9: $62
	ldh a, [$5d]                                     ; $58da: $f0 $5d
	ld e, [hl]                                       ; $58dc: $5e
	ld b, l                                          ; $58dd: $45
	add hl, sp                                       ; $58de: $39
	add hl, bc                                       ; $58df: $09
	cpl                                              ; $58e0: $2f
	ld b, e                                          ; $58e1: $43
	ld e, b                                          ; $58e2: $58
	ccf                                              ; $58e3: $3f
	xor h                                            ; $58e4: $ac
	db $eb                                           ; $58e5: $eb
	ld a, [hl]                                       ; $58e6: $7e
	ldh a, [$30]                                     ; $58e7: $f0 $30
	ldh a, [$28]                                     ; $58e9: $f0 $28
	ld c, e                                          ; $58eb: $4b
	xor h                                            ; $58ec: $ac
	ld e, d                                          ; $58ed: $5a
	ld d, h                                          ; $58ee: $54
	ld b, h                                          ; $58ef: $44
	dec sp                                           ; $58f0: $3b
	dec a                                            ; $58f1: $3d
	inc a                                            ; $58f2: $3c
	ld a, [hl-]                                      ; $58f3: $3a
	and b                                            ; $58f4: $a0
	cpl                                              ; $58f5: $2f
	ld b, e                                          ; $58f6: $43
	or h                                             ; $58f7: $b4
	xor h                                            ; $58f8: $ac
	add sp, $03                                      ; $58f9: $e8 $03
	ld b, a                                          ; $58fb: $47
	xor h                                            ; $58fc: $ac
	pop af                                           ; $58fd: $f1
	ld d, $38                                        ; $58fe: $16 $38
	ld c, d                                          ; $5900: $4a
	ld h, a                                          ; $5901: $67
	ld d, h                                          ; $5902: $54
	add hl, sp                                       ; $5903: $39
	and b                                            ; $5904: $a0
	cpl                                              ; $5905: $2f
	ld b, e                                          ; $5906: $43
	add sp, $04                                      ; $5907: $e8 $04
	ld c, e                                          ; $5909: $4b
	xor h                                            ; $590a: $ac
	ld c, c                                          ; $590b: $49
	add hl, sp                                       ; $590c: $39
	ld c, c                                          ; $590d: $49
	add hl, sp                                       ; $590e: $39
	ld a, b                                          ; $590f: $78
	ld a, [hl-]                                      ; $5910: $3a
	inc a                                            ; $5911: $3c
	dec sp                                           ; $5912: $3b
	dec a                                            ; $5913: $3d
	ld a, [hl-]                                      ; $5914: $3a
	and b                                            ; $5915: $a0
	cpl                                              ; $5916: $2f
	ld b, e                                          ; $5917: $43
	ldh a, [$30]                                     ; $5918: $f0 $30
	ldh a, [$28]                                     ; $591a: $f0 $28
	ld h, d                                          ; $591c: $62
	ldh a, [$2a]                                     ; $591d: $f0 $2a
	ldh a, [$f5]                                     ; $591f: $f0 $f5
	ld e, [hl]                                       ; $5921: $5e
	dec a                                            ; $5922: $3d
	inc a                                            ; $5923: $3c
	ld a, [hl-]                                      ; $5924: $3a
	xor c                                            ; $5925: $a9
	db $eb                                           ; $5926: $eb
	inc [hl]                                         ; $5927: $34
	inc [hl]                                         ; $5928: $34
	db $ed                                           ; $5929: $ed
	ld e, b                                          ; $592a: $58
	and b                                            ; $592b: $a0
	cpl                                              ; $592c: $2f
	ld b, e                                          ; $592d: $43
	xor $10                                          ; $592e: $ee $10
	xor $10                                          ; $5930: $ee $10
	dec [hl]                                         ; $5932: $35
	rla                                              ; $5933: $17
	ld c, a                                          ; $5934: $4f
	ld a, $3c                                        ; $5935: $3e $3c
	ld a, $3f                                        ; $5937: $3e $3f
	xor h                                            ; $5939: $ac
	ldh a, [$30]                                     ; $593a: $f0 $30
	ldh a, [$28]                                     ; $593c: $f0 $28
	ld h, d                                          ; $593e: $62
	ldh a, [$2a]                                     ; $593f: $f0 $2a
	ldh a, [$f5]                                     ; $5941: $f0 $f5
	ld e, [hl]                                       ; $5943: $5e
	ld h, c                                          ; $5944: $61
	ld d, [hl]                                       ; $5945: $56
	dec sp                                           ; $5946: $3b
	dec a                                            ; $5947: $3d
	inc a                                            ; $5948: $3c
	ld a, [hl-]                                      ; $5949: $3a
	and b                                            ; $594a: $a0
	cpl                                              ; $594b: $2f
	ld b, e                                          ; $594c: $43
	ld d, d                                          ; $594d: $52
	ld b, h                                          ; $594e: $44
	inc [hl]                                         ; $594f: $34
	add sp, $04                                      ; $5950: $e8 $04
	ld c, e                                          ; $5952: $4b
	inc de                                           ; $5953: $13
	jp hl                                            ; $5954: $e9


	scf                                              ; $5955: $37
	and b                                            ; $5956: $a0
	ld [hl], b                                       ; $5957: $70
	ld [hl], c                                       ; $5958: $71
	ld e, c                                          ; $5959: $59
	ld b, c                                          ; $595a: $41
	xor b                                            ; $595b: $a8
	sbc c                                            ; $595c: $99
	dec sp                                           ; $595d: $3b
	dec a                                            ; $595e: $3d
	and c                                            ; $595f: $a1
	cpl                                              ; $5960: $2f
	ld b, e                                          ; $5961: $43
	ld e, [hl]                                       ; $5962: $5e
	dec sp                                           ; $5963: $3b
	and c                                            ; $5964: $a1
	ld b, [hl]                                       ; $5965: $46
	dec sp                                           ; $5966: $3b
	ld c, b                                          ; $5967: $48
	inc [hl]                                         ; $5968: $34
	inc hl                                           ; $5969: $23
	db $eb                                           ; $596a: $eb
	ccf                                              ; $596b: $3f
	xor b                                            ; $596c: $a8
	add h                                            ; $596d: $84
	ldh a, [$f5]                                     ; $596e: $f0 $f5
	jr c, jr_08b_59bc                                ; $5970: $38 $4a

	ld a, $3d                                        ; $5972: $3e $3d
	and b                                            ; $5974: $a0
	cpl                                              ; $5975: $2f
	ld b, e                                          ; $5976: $43
	xor $1e                                          ; $5977: $ee $1e
	pop af                                           ; $5979: $f1
	ld b, [hl]                                       ; $597a: $46
	inc [hl]                                         ; $597b: $34
	adc c                                            ; $597c: $89
	sbc a                                            ; $597d: $9f
	ld c, d                                          ; $597e: $4a
	ld c, a                                          ; $597f: $4f
	inc de                                           ; $5980: $13
	ldh a, [$fe]                                     ; $5981: $f0 $fe
	add b                                            ; $5983: $80
	inc a                                            ; $5984: $3c
	dec sp                                           ; $5985: $3b
	ccf                                              ; $5986: $3f
	ld d, l                                          ; $5987: $55
	ld c, [hl]                                       ; $5988: $4e
	ld b, l                                          ; $5989: $45
	ld a, [hl-]                                      ; $598a: $3a
	ld c, b                                          ; $598b: $48
	and b                                            ; $598c: $a0
	cpl                                              ; $598d: $2f
	ld b, e                                          ; $598e: $43
	ld d, d                                          ; $598f: $52
	dec a                                            ; $5990: $3d
	ldh a, [$2a]                                     ; $5991: $f0 $2a
	ldh a, [$f5]                                     ; $5993: $f0 $f5
	ld e, [hl]                                       ; $5995: $5e
	ld d, b                                          ; $5996: $50
	ld c, l                                          ; $5997: $4d
	dec a                                            ; $5998: $3d
	sub a                                            ; $5999: $97
	ld c, b                                          ; $599a: $48
	and b                                            ; $599b: $a0
	add hl, bc                                       ; $599c: $09
	add hl, bc                                       ; $599d: $09
	cpl                                              ; $599e: $2f
	ld b, e                                          ; $599f: $43
	ld b, [hl]                                       ; $59a0: $46
	dec sp                                           ; $59a1: $3b
	inc [hl]                                         ; $59a2: $34
	db $ed                                           ; $59a3: $ed
	halt                                             ; $59a4: $76
	ld b, h                                          ; $59a5: $44
	xor b                                            ; $59a6: $a8
	ldh a, [c]                                       ; $59a7: $f2
	ld a, [$383e]                                    ; $59a8: $fa $3e $38
	ld a, [hl-]                                      ; $59ab: $3a
	ld c, b                                          ; $59ac: $48
	and b                                            ; $59ad: $a0
	cpl                                              ; $59ae: $2f
	ld h, $ed                                        ; $59af: $26 $ed
	ld e, h                                          ; $59b1: $5c
	dec h                                            ; $59b2: $25
	add hl, bc                                       ; $59b3: $09
	cpl                                              ; $59b4: $2f
	ld b, e                                          ; $59b5: $43
	xor $2d                                          ; $59b6: $ee $2d
	inc [hl]                                         ; $59b8: $34
	ld de, $514a                                     ; $59b9: $11 $4a $51

jr_08b_59bc:
	and b                                            ; $59bc: $a0
	ld b, [hl]                                       ; $59bd: $46
	dec sp                                           ; $59be: $3b
	inc [hl]                                         ; $59bf: $34
	adc e                                            ; $59c0: $8b
	ldh a, [$72]                                     ; $59c1: $f0 $72
	ld b, h                                          ; $59c3: $44
	ld e, l                                          ; $59c4: $5d
	ld e, d                                          ; $59c5: $5a
	xor b                                            ; $59c6: $a8
	ld l, d                                          ; $59c7: $6a
	inc [hl]                                         ; $59c8: $34
	ldh a, [$ea]                                     ; $59c9: $f0 $ea
	inc a                                            ; $59cb: $3c
	and c                                            ; $59cc: $a1
	cpl                                              ; $59cd: $2f
	ld b, e                                          ; $59ce: $43
	ld l, e                                          ; $59cf: $6b
	ld b, h                                          ; $59d0: $44
	inc [hl]                                         ; $59d1: $34
	adc e                                            ; $59d2: $8b
	ldh a, [$72]                                     ; $59d3: $f0 $72
	inc a                                            ; $59d5: $3c
	xor l                                            ; $59d6: $ad
	ld b, [hl]                                       ; $59d7: $46
	ld [hl], h                                       ; $59d8: $74
	inc [hl]                                         ; $59d9: $34
	ldh a, [$ea]                                     ; $59da: $f0 $ea
	ld b, h                                          ; $59dc: $44
	ld b, l                                          ; $59dd: $45
	xor b                                            ; $59de: $a8
	ldh a, [c]                                       ; $59df: $f2
	ld l, c                                          ; $59e0: $69
	ccf                                              ; $59e1: $3f
	ld a, e                                          ; $59e2: $7b
	dec sp                                           ; $59e3: $3b
	inc a                                            ; $59e4: $3c
	ld d, a                                          ; $59e5: $57
	ld b, h                                          ; $59e6: $44
	ld e, l                                          ; $59e7: $5d
	ld e, d                                          ; $59e8: $5a
	ld c, b                                          ; $59e9: $48
	and b                                            ; $59ea: $a0
	ld b, [hl]                                       ; $59eb: $46
	ld c, l                                          ; $59ec: $4d
	inc [hl]                                         ; $59ed: $34
	ld h, h                                          ; $59ee: $64
	sbc [hl]                                         ; $59ef: $9e
	inc [hl]                                         ; $59f0: $34
	ld d, d                                          ; $59f1: $52
	ld b, h                                          ; $59f2: $44
	inc de                                           ; $59f3: $13
	pop af                                           ; $59f4: $f1
	ld [$537f], a                                    ; $59f5: $ea $7f $53
	ldh a, [hDisp1_WX]                                     ; $59f8: $f0 $96
	dec sp                                           ; $59fa: $3b
	ccf                                              ; $59fb: $3f
	ld a, [hl-]                                      ; $59fc: $3a
	jr c, jr_08b_5a41                                ; $59fd: $38 $42

	inc a                                            ; $59ff: $3c
	and c                                            ; $5a00: $a1
	cpl                                              ; $5a01: $2f
	ld b, e                                          ; $5a02: $43
	ld b, [hl]                                       ; $5a03: $46
	ld b, [hl]                                       ; $5a04: $46
	xor b                                            ; $5a05: $a8
	ld d, d                                          ; $5a06: $52
	ld b, h                                          ; $5a07: $44
	inc [hl]                                         ; $5a08: $34
	ldh a, [$75]                                     ; $5a09: $f0 $75
	adc h                                            ; $5a0b: $8c
	ld d, e                                          ; $5a0c: $53
	ldh a, [$5c]                                     ; $5a0d: $f0 $5c
	ld d, l                                          ; $5a0f: $55
	ccf                                              ; $5a10: $3f
	ld a, [hl-]                                      ; $5a11: $3a
	ld c, b                                          ; $5a12: $48
	and b                                            ; $5a13: $a0
	ld a, [hl-]                                      ; $5a14: $3a
	ld b, c                                          ; $5a15: $41
	ld b, h                                          ; $5a16: $44
	inc [hl]                                         ; $5a17: $34
	ldh a, [$8d]                                     ; $5a18: $f0 $8d
	ldh a, [$9e]                                     ; $5a1a: $f0 $9e
	ld b, h                                          ; $5a1c: $44
	ld a, [hl-]                                      ; $5a1d: $3a
	xor b                                            ; $5a1e: $a8
	db $ec                                           ; $5a1f: $ec
	add hl, bc                                       ; $5a20: $09
	ldh a, [$f1]                                     ; $5a21: $f0 $f1
	ldh a, [rBCPD]                                   ; $5a23: $f0 $69
	ldh a, [$03]                                     ; $5a25: $f0 $03
	ldh a, [rWY]                                     ; $5a27: $f0 $4a
	ld e, c                                          ; $5a29: $59
	ld l, c                                          ; $5a2a: $69
	ld h, d                                          ; $5a2b: $62
	inc de                                           ; $5a2c: $13
	ldh a, [$7b]                                     ; $5a2d: $f0 $7b
	ld [hl], e                                       ; $5a2f: $73
	ldh a, [$60]                                     ; $5a30: $f0 $60
	ldh a, [$c4]                                     ; $5a32: $f0 $c4
	ld h, l                                          ; $5a34: $65
	ldh a, [$50]                                     ; $5a35: $f0 $50
	ld a, $3d                                        ; $5a37: $3e $3d
	ld b, d                                          ; $5a39: $42
	ld b, a                                          ; $5a3a: $47
	and b                                            ; $5a3b: $a0
	cpl                                              ; $5a3c: $2f
	ld b, e                                          ; $5a3d: $43
	ld b, b                                          ; $5a3e: $40
	add hl, sp                                       ; $5a3f: $39
	inc a                                            ; $5a40: $3c

jr_08b_5a41:
	xor h                                            ; $5a41: $ac
	ldh a, [$5c]                                     ; $5a42: $f0 $5c
	jr c, jr_08b_5a99                                ; $5a44: $38 $53

	ld l, d                                          ; $5a46: $6a
	ldh a, [$d3]                                     ; $5a47: $f0 $d3
	ld c, e                                          ; $5a49: $4b
	inc [hl]                                         ; $5a4a: $34
	ldh a, [rIF]                                     ; $5a4b: $f0 $0f
	add e                                            ; $5a4d: $83
	ld e, b                                          ; $5a4e: $58
	ld a, c                                          ; $5a4f: $79
	ccf                                              ; $5a50: $3f
	ld d, l                                          ; $5a51: $55
	ld c, l                                          ; $5a52: $4d
	and b                                            ; $5a53: $a0
	ld h, e                                          ; $5a54: $63
	inc a                                            ; $5a55: $3c
	dec sp                                           ; $5a56: $3b
	dec a                                            ; $5a57: $3d
	xor b                                            ; $5a58: $a8
	db $ec                                           ; $5a59: $ec
	ld c, $f0                                        ; $5a5a: $0e $f0
	adc a                                            ; $5a5c: $8f
	ld [hl], c                                       ; $5a5d: $71
	ld b, l                                          ; $5a5e: $45
	and b                                            ; $5a5f: $a0
	cpl                                              ; $5a60: $2f
	ld b, e                                          ; $5a61: $43
	ld l, e                                          ; $5a62: $6b
	ld b, h                                          ; $5a63: $44
	inc [hl]                                         ; $5a64: $34
	adc e                                            ; $5a65: $8b
	ldh a, [$72]                                     ; $5a66: $f0 $72
	inc a                                            ; $5a68: $3c
	xor l                                            ; $5a69: $ad
	ld b, [hl]                                       ; $5a6a: $46
	ld [hl], h                                       ; $5a6b: $74
	inc [hl]                                         ; $5a6c: $34
	ldh a, [$ea]                                     ; $5a6d: $f0 $ea
	ld b, h                                          ; $5a6f: $44
	ld b, l                                          ; $5a70: $45
	and b                                            ; $5a71: $a0
	or h                                             ; $5a72: $b4
	ld e, b                                          ; $5a73: $58
	xor h                                            ; $5a74: $ac
	ld l, d                                          ; $5a75: $6a
	inc a                                            ; $5a76: $3c
	ld d, b                                          ; $5a77: $50
	ldh a, [$b2]                                     ; $5a78: $f0 $b2
	ldh a, [rLY]                                     ; $5a7a: $f0 $44
	pop af                                           ; $5a7c: $f1
	sbc b                                            ; $5a7d: $98
	ld b, a                                          ; $5a7e: $47
	ld a, b                                          ; $5a7f: $78
	ccf                                              ; $5a80: $3f
	ld d, l                                          ; $5a81: $55
	ld c, l                                          ; $5a82: $4d
	ld b, l                                          ; $5a83: $45
	and b                                            ; $5a84: $a0
	cpl                                              ; $5a85: $2f
	ld b, e                                          ; $5a86: $43
	ld l, e                                          ; $5a87: $6b
	ld c, d                                          ; $5a88: $4a
	halt                                             ; $5a89: $76
	ld d, e                                          ; $5a8a: $53
	ld h, h                                          ; $5a8b: $64
	sbc [hl]                                         ; $5a8c: $9e
	ld a, [hl-]                                      ; $5a8d: $3a
	ld b, c                                          ; $5a8e: $41
	inc a                                            ; $5a8f: $3c
	ld c, c                                          ; $5a90: $49
	inc de                                           ; $5a91: $13
	ldh a, [$b2]                                     ; $5a92: $f0 $b2
	ldh a, [rLY]                                     ; $5a94: $f0 $44
	pop af                                           ; $5a96: $f1
	sbc b                                            ; $5a97: $98
	ld b, a                                          ; $5a98: $47

jr_08b_5a99:
	ld h, a                                          ; $5a99: $67
	inc a                                            ; $5a9a: $3c
	ld a, [hl-]                                      ; $5a9b: $3a
	ld e, h                                          ; $5a9c: $5c
	ld d, [hl]                                       ; $5a9d: $56
	inc de                                           ; $5a9e: $13
	ld a, [hl-]                                      ; $5a9f: $3a
	ld d, b                                          ; $5aa0: $50
	ld a, [hl-]                                      ; $5aa1: $3a
	jr c, jr_08b_5ae5                                ; $5aa2: $38 $41

	ld b, h                                          ; $5aa4: $44
	and c                                            ; $5aa5: $a1
	ld d, d                                          ; $5aa6: $52
	ld b, [hl]                                       ; $5aa7: $46
	inc [hl]                                         ; $5aa8: $34
	jr c, jr_08b_5ae3                                ; $5aa9: $38 $38

	db $ec                                           ; $5aab: $ec
	ret c                                            ; $5aac: $d8

	inc a                                            ; $5aad: $3c
	xor b                                            ; $5aae: $a8
	sbc c                                            ; $5aaf: $99
	dec sp                                           ; $5ab0: $3b
	ccf                                              ; $5ab1: $3f
	ld c, [hl]                                       ; $5ab2: $4e
	inc a                                            ; $5ab3: $3c
	ld d, b                                          ; $5ab4: $50
	ld a, [hl-]                                      ; $5ab5: $3a
	and b                                            ; $5ab6: $a0
	cpl                                              ; $5ab7: $2f
	ld b, e                                          ; $5ab8: $43
	ld l, e                                          ; $5ab9: $6b
	ccf                                              ; $5aba: $3f
	inc [hl]                                         ; $5abb: $34
	ldh a, [$9c]                                     ; $5abc: $f0 $9c
	pop af                                           ; $5abe: $f1
	ld e, a                                          ; $5abf: $5f
	ld a, [hl-]                                      ; $5ac0: $3a
	ldh a, [$f8]                                     ; $5ac1: $f0 $f8
	ld b, h                                          ; $5ac3: $44
	xor b                                            ; $5ac4: $a8
	db $eb                                           ; $5ac5: $eb
	inc [hl]                                         ; $5ac6: $34
	inc [hl]                                         ; $5ac7: $34
	ld h, a                                          ; $5ac8: $67
	dec sp                                           ; $5ac9: $3b
	ccf                                              ; $5aca: $3f
	ld l, [hl]                                       ; $5acb: $6e
	ld c, [hl]                                       ; $5acc: $4e
	inc a                                            ; $5acd: $3c
	and b                                            ; $5ace: $a0
	cpl                                              ; $5acf: $2f
	ld b, e                                          ; $5ad0: $43
	ld c, e                                          ; $5ad1: $4b
	ld [hl], h                                       ; $5ad2: $74
	xor l                                            ; $5ad3: $ad
	db $ec                                           ; $5ad4: $ec
	ld hl, sp-$10                                    ; $5ad5: $f8 $f0
	xor h                                            ; $5ad7: $ac
	jr c, jr_08b_5b17                                ; $5ad8: $38 $3d

	ld b, l                                          ; $5ada: $45
	xor b                                            ; $5adb: $a8
	ld e, b                                          ; $5adc: $58
	ld b, [hl]                                       ; $5add: $46
	inc [hl]                                         ; $5ade: $34
	ldh a, [rAUD2HIGH]                               ; $5adf: $f0 $19
	ld b, a                                          ; $5ae1: $47
	sub [hl]                                         ; $5ae2: $96

jr_08b_5ae3:
	ld c, [hl]                                       ; $5ae3: $4e
	inc a                                            ; $5ae4: $3c

jr_08b_5ae5:
	and b                                            ; $5ae5: $a0
	ld h, h                                          ; $5ae6: $64
	inc [hl]                                         ; $5ae7: $34
	db $ec                                           ; $5ae8: $ec
	ld hl, sp+$78                                    ; $5ae9: $f8 $78
	dec a                                            ; $5aeb: $3d
	ld a, [hl-]                                      ; $5aec: $3a
	and b                                            ; $5aed: $a0
	cpl                                              ; $5aee: $2f
	ld b, e                                          ; $5aef: $43
	ld [$aca5], a                                    ; $5af0: $ea $a5 $ac
	jp hl                                            ; $5af3: $e9


	ld d, $35                                        ; $5af4: $16 $35
	ld [hl+], a                                      ; $5af6: $22
	inc de                                           ; $5af7: $13
	db $ed                                           ; $5af8: $ed
	ld e, d                                          ; $5af9: $5a
	inc h                                            ; $5afa: $24
	inc de                                           ; $5afb: $13
	db $ed                                           ; $5afc: $ed
	ld e, e                                          ; $5afd: $5b
	db $ed                                           ; $5afe: $ed
	add d                                            ; $5aff: $82
	ld e, b                                          ; $5b00: $58
	ld b, c                                          ; $5b01: $41
	and b                                            ; $5b02: $a0
	cpl                                              ; $5b03: $2f
	ld b, e                                          ; $5b04: $43
	ld [$aca5], a                                    ; $5b05: $ea $a5 $ac
	jp hl                                            ; $5b08: $e9


	ld d, $35                                        ; $5b09: $16 $35
	ld [hl+], a                                      ; $5b0b: $22
	inc de                                           ; $5b0c: $13
	db $ed                                           ; $5b0d: $ed
	ld e, d                                          ; $5b0e: $5a
	inc h                                            ; $5b0f: $24
	inc de                                           ; $5b10: $13
	db $ed                                           ; $5b11: $ed
	ld e, e                                          ; $5b12: $5b
	db $ed                                           ; $5b13: $ed
	or d                                             ; $5b14: $b2
	ld e, b                                          ; $5b15: $58
	ld b, c                                          ; $5b16: $41

jr_08b_5b17:
	and b                                            ; $5b17: $a0
	cpl                                              ; $5b18: $2f
	ld b, e                                          ; $5b19: $43
	ld [$aca5], a                                    ; $5b1a: $ea $a5 $ac
	jp hl                                            ; $5b1d: $e9


	ld d, $35                                        ; $5b1e: $16 $35
	ld [hl+], a                                      ; $5b20: $22
	inc de                                           ; $5b21: $13
	db $ed                                           ; $5b22: $ed
	ld e, d                                          ; $5b23: $5a
	inc h                                            ; $5b24: $24
	inc de                                           ; $5b25: $13
	db $ed                                           ; $5b26: $ed
	ld e, e                                          ; $5b27: $5b
	db $ed                                           ; $5b28: $ed
	cp l                                             ; $5b29: $bd
	ld e, b                                          ; $5b2a: $58
	ld b, c                                          ; $5b2b: $41
	and b                                            ; $5b2c: $a0
	cpl                                              ; $5b2d: $2f
	ld b, e                                          ; $5b2e: $43
	ld [$aca5], a                                    ; $5b2f: $ea $a5 $ac
	jp hl                                            ; $5b32: $e9


	ld d, $35                                        ; $5b33: $16 $35
	ld [hl+], a                                      ; $5b35: $22
	inc de                                           ; $5b36: $13
	db $ed                                           ; $5b37: $ed
	ld e, d                                          ; $5b38: $5a
	inc h                                            ; $5b39: $24
	inc de                                           ; $5b3a: $13
	db $ed                                           ; $5b3b: $ed
	ld e, e                                          ; $5b3c: $5b
	db $ed                                           ; $5b3d: $ed
	ld d, e                                          ; $5b3e: $53
	and b                                            ; $5b3f: $a0
	cpl                                              ; $5b40: $2f
	ld b, e                                          ; $5b41: $43
	ld [$aca5], a                                    ; $5b42: $ea $a5 $ac
	jp hl                                            ; $5b45: $e9


	ld d, $35                                        ; $5b46: $16 $35
	ld [hl+], a                                      ; $5b48: $22
	inc de                                           ; $5b49: $13
	db $ed                                           ; $5b4a: $ed
	ld e, d                                          ; $5b4b: $5a
	inc h                                            ; $5b4c: $24
	inc de                                           ; $5b4d: $13
	db $ed                                           ; $5b4e: $ed
	ld e, e                                          ; $5b4f: $5b
	db $eb                                           ; $5b50: $eb
	ld a, [$2fa0]                                    ; $5b51: $fa $a0 $2f
	ld b, e                                          ; $5b54: $43
	ld [$aca5], a                                    ; $5b55: $ea $a5 $ac
	jp hl                                            ; $5b58: $e9


	ld d, $35                                        ; $5b59: $16 $35
	ld [hl+], a                                      ; $5b5b: $22
	inc de                                           ; $5b5c: $13
	db $ed                                           ; $5b5d: $ed
	ld e, d                                          ; $5b5e: $5a
	inc h                                            ; $5b5f: $24
	inc de                                           ; $5b60: $13
	db $ed                                           ; $5b61: $ed
	ld e, e                                          ; $5b62: $5b
	xor $09                                          ; $5b63: $ee $09
	ld e, b                                          ; $5b65: $58
	ld b, c                                          ; $5b66: $41
	and b                                            ; $5b67: $a0
	ld [$a88c], a                                    ; $5b68: $ea $8c $a8
	ld d, $a0                                        ; $5b6b: $16 $a0
	db $eb                                           ; $5b6d: $eb
	ld h, h                                          ; $5b6e: $64
	xor b                                            ; $5b6f: $a8
	ld d, $a0                                        ; $5b70: $16 $a0
	db $eb                                           ; $5b72: $eb
	ld h, h                                          ; $5b73: $64
	and b                                            ; $5b74: $a0
	ld hl, $10ee                                     ; $5b75: $21 $ee $10
	xor $10                                          ; $5b78: $ee $10
	and b                                            ; $5b7a: $a0
	ld a, b                                          ; $5b7b: $78
	dec a                                            ; $5b7c: $3d
	ld b, d                                          ; $5b7d: $42
	xor c                                            ; $5b7e: $a9
	ld d, $a0                                        ; $5b7f: $16 $a0
	ld b, [hl]                                       ; $5b81: $46
	ld a, [hl-]                                      ; $5b82: $3a
	dec a                                            ; $5b83: $3d
	ld c, a                                          ; $5b84: $4f
	ldh a, [$ea]                                     ; $5b85: $f0 $ea
	ld c, h                                          ; $5b87: $4c
	xor b                                            ; $5b88: $a8
	ld d, $a0                                        ; $5b89: $16 $a0
	ld b, [hl]                                       ; $5b8b: $46
	ld a, [hl-]                                      ; $5b8c: $3a
	dec a                                            ; $5b8d: $3d
	ld c, a                                          ; $5b8e: $4f
	ldh a, [$ea]                                     ; $5b8f: $f0 $ea
	ld c, h                                          ; $5b91: $4c
	and b                                            ; $5b92: $a0
	db $ed                                           ; $5b93: $ed
	ld b, [hl]                                       ; $5b94: $46
	inc [hl]                                         ; $5b95: $34
	db $eb                                           ; $5b96: $eb
	ld h, h                                          ; $5b97: $64
	xor b                                            ; $5b98: $a8
	ld d, $a0                                        ; $5b99: $16 $a0
	xor $14                                          ; $5b9b: $ee $14
	inc [hl]                                         ; $5b9d: $34
	ld d, $a8                                        ; $5b9e: $16 $a8
	db $eb                                           ; $5ba0: $eb
	ld h, h                                          ; $5ba1: $64
	and b                                            ; $5ba2: $a0
	ld a, b                                          ; $5ba3: $78
	ccf                                              ; $5ba4: $3f
	inc [hl]                                         ; $5ba5: $34
	db $ec                                           ; $5ba6: $ec
	cp c                                             ; $5ba7: $b9
	ld b, h                                          ; $5ba8: $44
	ld e, a                                          ; $5ba9: $5f
	add hl, sp                                       ; $5baa: $39
	xor c                                            ; $5bab: $a9
	db $ed                                           ; $5bac: $ed
	and e                                            ; $5bad: $a3
	ld a, $5f                                        ; $5bae: $3e $5f
	ld b, l                                          ; $5bb0: $45
	and b                                            ; $5bb1: $a0
	ld b, b                                          ; $5bb2: $40
	ld c, l                                          ; $5bb3: $4d
	ld e, e                                          ; $5bb4: $5b
	ld d, [hl]                                       ; $5bb5: $56
	xor h                                            ; $5bb6: $ac
	add a                                            ; $5bb7: $87
	pop af                                           ; $5bb8: $f1
	push bc                                          ; $5bb9: $c5
	di                                               ; $5bba: $f3
	ld e, d                                          ; $5bbb: $5a
	ldh a, [c]                                       ; $5bbc: $f2
	ret nc                                           ; $5bbd: $d0

	ld b, a                                          ; $5bbe: $47
	ldh a, [rLCDC]                                   ; $5bbf: $f0 $40
	ld e, a                                          ; $5bc1: $5f
	add hl, sp                                       ; $5bc2: $39
	adc l                                            ; $5bc3: $8d
	and b                                            ; $5bc4: $a0
	ld h, h                                          ; $5bc5: $64
	sbc [hl]                                         ; $5bc6: $9e
	xor h                                            ; $5bc7: $ac
	ld e, d                                          ; $5bc8: $5a
	dec sp                                           ; $5bc9: $3b
	ld h, c                                          ; $5bca: $61
	ld b, d                                          ; $5bcb: $42
	pop af                                           ; $5bcc: $f1
	ld b, [hl]                                       ; $5bcd: $46
	ld c, c                                          ; $5bce: $49
	ldh a, [rLCDC]                                   ; $5bcf: $f0 $40
	ld c, [hl]                                       ; $5bd1: $4e
	and c                                            ; $5bd2: $a1
	cpl                                              ; $5bd3: $2f
	db $ed                                           ; $5bd4: $ed
	xor c                                            ; $5bd5: $a9
	ld c, c                                          ; $5bd6: $49
	ldh a, [rLCDC]                                   ; $5bd7: $f0 $40
	ld c, [hl]                                       ; $5bd9: $4e
	adc l                                            ; $5bda: $8d
	add hl, bc                                       ; $5bdb: $09
	cpl                                              ; $5bdc: $2f
	db $ec                                           ; $5bdd: $ec
	rst SubAFromDE                                          ; $5bde: $df
	ld c, c                                          ; $5bdf: $49
	ldh a, [rLCDC]                                   ; $5be0: $f0 $40
	ld c, [hl]                                       ; $5be2: $4e
	adc l                                            ; $5be3: $8d
	add hl, bc                                       ; $5be4: $09
	cpl                                              ; $5be5: $2f
	db $ec                                           ; $5be6: $ec
	ldh [rOBP1], a                                   ; $5be7: $e0 $49
	ldh a, [rLCDC]                                   ; $5be9: $f0 $40
	ld c, [hl]                                       ; $5beb: $4e
	adc l                                            ; $5bec: $8d
	add hl, bc                                       ; $5bed: $09
	cpl                                              ; $5bee: $2f
	db $ec                                           ; $5bef: $ec
	pop hl                                           ; $5bf0: $e1
	ld c, c                                          ; $5bf1: $49
	ldh a, [rLCDC]                                   ; $5bf2: $f0 $40
	ld c, [hl]                                       ; $5bf4: $4e
	adc l                                            ; $5bf5: $8d
	add hl, bc                                       ; $5bf6: $09
	cpl                                              ; $5bf7: $2f
	db $ed                                           ; $5bf8: $ed
	ld d, e                                          ; $5bf9: $53
	ld c, c                                          ; $5bfa: $49
	ldh a, [rLCDC]                                   ; $5bfb: $f0 $40
	ld c, [hl]                                       ; $5bfd: $4e
	adc l                                            ; $5bfe: $8d
	add hl, bc                                       ; $5bff: $09
	cpl                                              ; $5c00: $2f
	db $eb                                           ; $5c01: $eb
	ld a, [$f049]                                    ; $5c02: $fa $49 $f0
	ld b, b                                          ; $5c05: $40
	ld c, [hl]                                       ; $5c06: $4e
	adc l                                            ; $5c07: $8d
	add hl, bc                                       ; $5c08: $09
	cpl                                              ; $5c09: $2f
	db $ec                                           ; $5c0a: $ec
	and $49                                          ; $5c0b: $e6 $49
	ldh a, [rLCDC]                                   ; $5c0d: $f0 $40
	ld c, [hl]                                       ; $5c0f: $4e
	adc l                                            ; $5c10: $8d
	add hl, bc                                       ; $5c11: $09
	ld b, [hl]                                       ; $5c12: $46
	ld a, [hl-]                                      ; $5c13: $3a
	dec a                                            ; $5c14: $3d
	ld c, c                                          ; $5c15: $49
	ld a, [hl-]                                      ; $5c16: $3a
	ld b, d                                          ; $5c17: $42
	xor c                                            ; $5c18: $a9
	jp hl                                            ; $5c19: $e9


	pop hl                                           ; $5c1a: $e1
	ld c, b                                          ; $5c1b: $48
	and b                                            ; $5c1c: $a0
	jp hl                                            ; $5c1d: $e9


	ld b, h                                          ; $5c1e: $44
	and b                                            ; $5c1f: $a0
	xor $08                                          ; $5c20: $ee $08
	ld b, d                                          ; $5c22: $42
	ldh a, [$38]                                     ; $5c23: $f0 $38
	ld d, e                                          ; $5c25: $53
	db $ec                                           ; $5c26: $ec
	cp c                                             ; $5c27: $b9
	inc de                                           ; $5c28: $13
	ld a, [hl-]                                      ; $5c29: $3a
	ld c, b                                          ; $5c2a: $48
	and b                                            ; $5c2b: $a0
	jr c, jr_08b_5c66                                ; $5c2c: $38 $38

	pop af                                           ; $5c2e: $f1
	db $eb                                           ; $5c2f: $eb
	ld [hl], c                                       ; $5c30: $71
	ld b, h                                          ; $5c31: $44
	dec sp                                           ; $5c32: $3b
	dec a                                            ; $5c33: $3d
	ld c, h                                          ; $5c34: $4c
	and b                                            ; $5c35: $a0
	ldh a, [$34]                                     ; $5c36: $f0 $34
	ld b, a                                          ; $5c38: $47
	ld a, [hl]                                       ; $5c39: $7e
	jr c, jr_08b_5c86                                ; $5c3a: $38 $4a

	ld d, c                                          ; $5c3c: $51
	ld e, l                                          ; $5c3d: $5d
	ld e, d                                          ; $5c3e: $5a
	ld c, b                                          ; $5c3f: $48
	and b                                            ; $5c40: $a0
	ld l, a                                          ; $5c41: $6f
	inc [hl]                                         ; $5c42: $34
	add a                                            ; $5c43: $87
	adc e                                            ; $5c44: $8b
	ld e, h                                          ; $5c45: $5c
	ld a, [hl-]                                      ; $5c46: $3a
	ld b, c                                          ; $5c47: $41
	ld c, d                                          ; $5c48: $4a
	ld d, c                                          ; $5c49: $51
	and b                                            ; $5c4a: $a0
	xor $08                                          ; $5c4b: $ee $08
	ld b, d                                          ; $5c4d: $42
	ldh a, [$38]                                     ; $5c4e: $f0 $38
	ld d, e                                          ; $5c50: $53
	db $ec                                           ; $5c51: $ec
	cp c                                             ; $5c52: $b9
	inc de                                           ; $5c53: $13
	ld c, d                                          ; $5c54: $4a
	ld d, c                                          ; $5c55: $51
	ld c, h                                          ; $5c56: $4c
	and b                                            ; $5c57: $a0
	ld d, c                                          ; $5c58: $51
	ld [hl], b                                       ; $5c59: $70
	ld d, l                                          ; $5c5a: $55
	inc [hl]                                         ; $5c5b: $34
	jr c, jr_08b_5c96                                ; $5c5c: $38 $38

	pop af                                           ; $5c5e: $f1
	db $eb                                           ; $5c5f: $eb
	ld [hl], c                                       ; $5c60: $71
	inc de                                           ; $5c61: $13
	ld c, d                                          ; $5c62: $4a
	ld a, $3d                                        ; $5c63: $3e $3d
	ld c, h                                          ; $5c65: $4c

jr_08b_5c66:
	and b                                            ; $5c66: $a0
	db $eb                                           ; $5c67: $eb
	ld d, l                                          ; $5c68: $55
	ldh a, [$3e]                                     ; $5c69: $f0 $3e
	ld b, a                                          ; $5c6b: $47
	xor l                                            ; $5c6c: $ad
	ld a, b                                          ; $5c6d: $78
	ld a, [hl-]                                      ; $5c6e: $3a
	ld e, l                                          ; $5c6f: $5d
	ld c, l                                          ; $5c70: $4d
	ld a, e                                          ; $5c71: $7b
	ld b, l                                          ; $5c72: $45
	inc a                                            ; $5c73: $3c
	dec sp                                           ; $5c74: $3b
	dec a                                            ; $5c75: $3d
	ld h, e                                          ; $5c76: $63
	and b                                            ; $5c77: $a0
	ld l, a                                          ; $5c78: $6f
	ld d, e                                          ; $5c79: $53
	ldh a, [$a5]                                     ; $5c7a: $f0 $a5
	dec sp                                           ; $5c7c: $3b
	dec a                                            ; $5c7d: $3d
	ldh a, [$2c]                                     ; $5c7e: $f0 $2c
	ld b, d                                          ; $5c80: $42
	ldh a, [$38]                                     ; $5c81: $f0 $38
	ld d, e                                          ; $5c83: $53
	inc de                                           ; $5c84: $13
	ld e, h                                          ; $5c85: $5c

jr_08b_5c86:
	dec sp                                           ; $5c86: $3b
	ld c, c                                          ; $5c87: $49
	ldh a, [$71]                                     ; $5c88: $f0 $71
	jr c, jr_08b_5cef                                ; $5c8a: $38 $63

	ld b, l                                          ; $5c8c: $45
	and b                                            ; $5c8d: $a0
	ld b, [hl]                                       ; $5c8e: $46
	ld a, [hl-]                                      ; $5c8f: $3a
	dec a                                            ; $5c90: $3d
	ld c, c                                          ; $5c91: $49
	ld a, [hl-]                                      ; $5c92: $3a
	ld b, d                                          ; $5c93: $42
	xor c                                            ; $5c94: $a9
	db $eb                                           ; $5c95: $eb

jr_08b_5c96:
	inc [hl]                                         ; $5c96: $34
	ld h, e                                          ; $5c97: $63
	ld c, h                                          ; $5c98: $4c
	add l                                            ; $5c99: $85
	ld c, b                                          ; $5c9a: $48
	and b                                            ; $5c9b: $a0
	jp hl                                            ; $5c9c: $e9


	ld b, h                                          ; $5c9d: $44
	ld b, l                                          ; $5c9e: $45
	and b                                            ; $5c9f: $a0
	xor $08                                          ; $5ca0: $ee $08
	ld b, d                                          ; $5ca2: $42
	ldh a, [$38]                                     ; $5ca3: $f0 $38
	ld d, e                                          ; $5ca5: $53
	inc de                                           ; $5ca6: $13
	sbc h                                            ; $5ca7: $9c
	dec sp                                           ; $5ca8: $3b
	ld c, c                                          ; $5ca9: $49
	db $ec                                           ; $5caa: $ec
	cp c                                             ; $5cab: $b9
	ld h, e                                          ; $5cac: $63
	ld c, b                                          ; $5cad: $48
	and b                                            ; $5cae: $a0
	db $eb                                           ; $5caf: $eb
	ld d, h                                          ; $5cb0: $54
	xor h                                            ; $5cb1: $ac
	pop af                                           ; $5cb2: $f1
	db $eb                                           ; $5cb3: $eb
	ld [hl], c                                       ; $5cb4: $71
	ld b, h                                          ; $5cb5: $44
	dec sp                                           ; $5cb6: $3b
	ldh [$a0], a                                     ; $5cb7: $e0 $a0
	xor $08                                          ; $5cb9: $ee $08
	ld b, d                                          ; $5cbb: $42
	ldh a, [$38]                                     ; $5cbc: $f0 $38
	ld d, e                                          ; $5cbe: $53
	ld d, d                                          ; $5cbf: $52
	ld a, $4c                                        ; $5cc0: $3e $4c
	and b                                            ; $5cc2: $a0
	adc e                                            ; $5cc3: $8b
	ld e, h                                          ; $5cc4: $5c
	ld c, d                                          ; $5cc5: $4a
	ld c, e                                          ; $5cc6: $4b

jr_08b_5cc7:
	ld a, [hl-]                                      ; $5cc7: $3a
	jr c, jr_08b_5d27                                ; $5cc8: $38 $5d

	ld e, d                                          ; $5cca: $5a
	xor h                                            ; $5ccb: $ac
	ldh a, [rLCDC]                                   ; $5ccc: $f0 $40
	dec sp                                           ; $5cce: $3b
	ccf                                              ; $5ccf: $3f
	rst SubAFromDE                                          ; $5cd0: $df
	ld h, e                                          ; $5cd1: $63
	and b                                            ; $5cd2: $a0
	ld hl, $10ee                                     ; $5cd3: $21 $ee $10
	xor $10                                          ; $5cd6: $ee $10
	xor b                                            ; $5cd8: $a8
	jr nz, jr_08b_5cc7                               ; $5cd9: $20 $ec

	ld hl, sp-$10                                    ; $5cdb: $f8 $f0
	adc $63                                          ; $5cdd: $ce $63
	dec sp                                           ; $5cdf: $3b
	dec a                                            ; $5ce0: $3d
	ld h, e                                          ; $5ce1: $63
	and b                                            ; $5ce2: $a0
	ld [hl], a                                       ; $5ce3: $77
	dec sp                                           ; $5ce4: $3b
	dec a                                            ; $5ce5: $3d
	ld b, l                                          ; $5ce6: $45
	ld d, a                                          ; $5ce7: $57
	xor h                                            ; $5ce8: $ac
	ld [$a0b7], a                                    ; $5ce9: $ea $b7 $a0
	ld c, a                                          ; $5cec: $4f
	add hl, sp                                       ; $5ced: $39
	ld b, h                                          ; $5cee: $44

jr_08b_5cef:
	ld e, b                                          ; $5cef: $58
	ld b, h                                          ; $5cf0: $44
	ld e, b                                          ; $5cf1: $58
	and b                                            ; $5cf2: $a0
	pop af                                           ; $5cf3: $f1
	cp d                                             ; $5cf4: $ba
	ld d, l                                          ; $5cf5: $55
	ld a, [hl-]                                      ; $5cf6: $3a
	ld d, a                                          ; $5cf7: $57
	ld b, b                                          ; $5cf8: $40
	add hl, sp                                       ; $5cf9: $39
	and b                                            ; $5cfa: $a0
	xor $08                                          ; $5cfb: $ee $08
	ld b, d                                          ; $5cfd: $42
	ldh a, [$38]                                     ; $5cfe: $f0 $38
	ld d, e                                          ; $5d00: $53
	ld b, l                                          ; $5d01: $45
	inc a                                            ; $5d02: $3c
	dec sp                                           ; $5d03: $3b
	dec a                                            ; $5d04: $3d
	inc de                                           ; $5d05: $13
	ld a, [hl-]                                      ; $5d06: $3a
	ld c, b                                          ; $5d07: $48
	and b                                            ; $5d08: $a0
	pop af                                           ; $5d09: $f1
	cp d                                             ; $5d0a: $ba
	inc a                                            ; $5d0b: $3c
	dec sp                                           ; $5d0c: $3b
	dec a                                            ; $5d0d: $3d
	ld c, h                                          ; $5d0e: $4c
	and b                                            ; $5d0f: $a0
	ld e, b                                          ; $5d10: $58
	inc [hl]                                         ; $5d11: $34
	ldh a, [$0a]                                     ; $5d12: $f0 $0a
	ld d, l                                          ; $5d14: $55
	ldh a, [rLCDC]                                   ; $5d15: $f0 $40
	ld d, a                                          ; $5d17: $57
	ld d, d                                          ; $5d18: $52
	ld a, $66                                        ; $5d19: $3e $66
	and b                                            ; $5d1b: $a0
	db $ec                                           ; $5d1c: $ec
	ld hl, sp-$10                                    ; $5d1d: $f8 $f0
	adc $3b                                          ; $5d1f: $ce $3b
	dec a                                            ; $5d21: $3d
	xor $10                                          ; $5d22: $ee $10
	and b                                            ; $5d24: $a0
	ld c, a                                          ; $5d25: $4f
	add hl, sp                                       ; $5d26: $39

jr_08b_5d27:
	ld [$4267], a                                    ; $5d27: $ea $67 $42
	and c                                            ; $5d2a: $a1
	ldh a, [$d6]                                     ; $5d2b: $f0 $d6
	ld c, e                                          ; $5d2d: $4b
	xor h                                            ; $5d2e: $ac
	db $eb                                           ; $5d2f: $eb
	db $d3                                           ; $5d30: $d3
	ldh a, [$de]                                     ; $5d31: $f0 $de
	ldh a, [$de]                                     ; $5d33: $f0 $de
	ld e, c                                          ; $5d35: $59
	ldh a, [$03]                                     ; $5d36: $f0 $03
	ld b, a                                          ; $5d38: $47
	ldh a, [rLCDC]                                   ; $5d39: $f0 $40
	ld e, a                                          ; $5d3b: $5f
	add hl, sp                                       ; $5d3c: $39
	adc l                                            ; $5d3d: $8d
	and b                                            ; $5d3e: $a0
	ldh a, [$d6]                                     ; $5d3f: $f0 $d6
	ld c, e                                          ; $5d41: $4b
	xor h                                            ; $5d42: $ac
	add sp, $2b                                      ; $5d43: $e8 $2b
	adc l                                            ; $5d45: $8d
	and b                                            ; $5d46: $a0
	ld l, a                                          ; $5d47: $6f
	add a                                            ; $5d48: $87
	adc e                                            ; $5d49: $8b
	ld e, h                                          ; $5d4a: $5c
	ld a, [hl-]                                      ; $5d4b: $3a
	ld b, d                                          ; $5d4c: $42
	xor b                                            ; $5d4d: $a8
	jp hl                                            ; $5d4e: $e9


	ld b, h                                          ; $5d4f: $44
	and b                                            ; $5d50: $a0
	ld d, c                                          ; $5d51: $51
	ld [hl], b                                       ; $5d52: $70
	ld d, l                                          ; $5d53: $55
	db $eb                                           ; $5d54: $eb
	ld h, e                                          ; $5d55: $63
	ld c, h                                          ; $5d56: $4c
	and b                                            ; $5d57: $a0
	ret                                              ; $5d58: $c9


	inc [hl]                                         ; $5d59: $34
	ldh a, [$71]                                     ; $5d5a: $f0 $71
	ld b, b                                          ; $5d5c: $40
	add hl, sp                                       ; $5d5d: $39
	ld b, h                                          ; $5d5e: $44
	ld e, l                                          ; $5d5f: $5d
	ld e, d                                          ; $5d60: $5a
	inc de                                           ; $5d61: $13
	add a                                            ; $5d62: $87
	ldh a, [$5b]                                     ; $5d63: $f0 $5b
	ldh a, [$5e]                                     ; $5d65: $f0 $5e
	inc a                                            ; $5d67: $3c
	ld a, [hl-]                                      ; $5d68: $3a
	and b                                            ; $5d69: $a0
	ld d, d                                          ; $5d6a: $52
	ld b, h                                          ; $5d6b: $44
	inc [hl]                                         ; $5d6c: $34
	xor $08                                          ; $5d6d: $ee $08
	ld b, d                                          ; $5d6f: $42
	ldh a, [$38]                                     ; $5d70: $f0 $38
	ld d, e                                          ; $5d72: $53
	inc de                                           ; $5d73: $13
	db $eb                                           ; $5d74: $eb
	adc [hl]                                         ; $5d75: $8e
	ld c, b                                          ; $5d76: $48
	and b                                            ; $5d77: $a0
	ld d, c                                          ; $5d78: $51
	inc [hl]                                         ; $5d79: $34
	ld [$a0b3], a                                    ; $5d7a: $ea $b3 $a0
	dec a                                            ; $5d7d: $3d
	ld b, h                                          ; $5d7e: $44
	ld c, d                                          ; $5d7f: $4a
	ld e, b                                          ; $5d80: $58
	ld e, [hl]                                       ; $5d81: $5e
	inc [hl]                                         ; $5d82: $34
	db $ed                                           ; $5d83: $ed
	ld l, b                                          ; $5d84: $68
	inc de                                           ; $5d85: $13
	ld a, [hl-]                                      ; $5d86: $3a
	ld b, d                                          ; $5d87: $42
	ld b, a                                          ; $5d88: $47
	ld c, b                                          ; $5d89: $48
	and b                                            ; $5d8a: $a0
	ld l, a                                          ; $5d8b: $6f
	inc [hl]                                         ; $5d8c: $34
	ret                                              ; $5d8d: $c9


	db $ed                                           ; $5d8e: $ed
	ld l, b                                          ; $5d8f: $68
	inc de                                           ; $5d90: $13
	ld a, [hl-]                                      ; $5d91: $3a
	ld b, c                                          ; $5d92: $41
	ld c, d                                          ; $5d93: $4a
	ld d, c                                          ; $5d94: $51
	ld c, b                                          ; $5d95: $48
	and b                                            ; $5d96: $a0
	db $ed                                           ; $5d97: $ed
	ld d, d                                          ; $5d98: $52
	ldh a, [rRP]                                     ; $5d99: $f0 $56
	ld c, c                                          ; $5d9b: $49
	ld b, d                                          ; $5d9c: $42
	ldh a, [$38]                                     ; $5d9d: $f0 $38
	ld d, e                                          ; $5d9f: $53
	inc de                                           ; $5da0: $13
	db $eb                                           ; $5da1: $eb
	adc [hl]                                         ; $5da2: $8e
	ld c, b                                          ; $5da3: $48
	and b                                            ; $5da4: $a0
	db $ec                                           ; $5da5: $ec
	reti                                             ; $5da6: $d9


	ldh a, [$71]                                     ; $5da7: $f0 $71
	inc a                                            ; $5da9: $3c
	dec sp                                           ; $5daa: $3b
	dec a                                            ; $5dab: $3d
	ld c, d                                          ; $5dac: $4a
	ld d, c                                          ; $5dad: $51
	and b                                            ; $5dae: $a0
	xor $08                                          ; $5daf: $ee $08
	ld c, d                                          ; $5db1: $4a
	ldh a, [rLCDC]                                   ; $5db2: $f0 $40
	dec sp                                           ; $5db4: $3b
	ccf                                              ; $5db5: $3f
	ld d, l                                          ; $5db6: $55
	ld b, h                                          ; $5db7: $44
	ld e, b                                          ; $5db8: $58
	jr c, @-$5e                                      ; $5db9: $38 $a0

	ld d, h                                          ; $5dbb: $54
	ld c, l                                          ; $5dbc: $4d
	ld b, h                                          ; $5dbd: $44
	ld e, l                                          ; $5dbe: $5d
	ld c, e                                          ; $5dbf: $4b
	ldh a, [rLCDC]                                   ; $5dc0: $f0 $40
	ld c, l                                          ; $5dc2: $4d
	ld a, [hl-]                                      ; $5dc3: $3a
	jr c, jr_08b_5e08                                ; $5dc4: $38 $42

	ld c, d                                          ; $5dc6: $4a
	xor h                                            ; $5dc7: $ac
	db $eb                                           ; $5dc8: $eb
	ld d, a                                          ; $5dc9: $57
	ld e, l                                          ; $5dca: $5d
	ld c, l                                          ; $5dcb: $4d
	ld e, d                                          ; $5dcc: $5a
	ld c, a                                          ; $5dcd: $4f
	xor h                                            ; $5dce: $ac
	xor $08                                          ; $5dcf: $ee $08
	ld c, d                                          ; $5dd1: $4a
	ldh a, [rLCDC]                                   ; $5dd2: $f0 $40
	dec sp                                           ; $5dd4: $3b
	ccf                                              ; $5dd5: $3f
	ld d, l                                          ; $5dd6: $55
	ld b, h                                          ; $5dd7: $44
	ld e, b                                          ; $5dd8: $58
	jr c, @-$5e                                      ; $5dd9: $38 $a0

	ld l, a                                          ; $5ddb: $6f
	inc [hl]                                         ; $5ddc: $34
	ldh a, [rLCDC]                                   ; $5ddd: $f0 $40
	ld c, l                                          ; $5ddf: $4d
	ld a, [hl-]                                      ; $5de0: $3a
	ld d, l                                          ; $5de1: $55
	ccf                                              ; $5de2: $3f
	inc de                                           ; $5de3: $13
	ld b, l                                          ; $5de4: $45
	inc a                                            ; $5de5: $3c
	dec sp                                           ; $5de6: $3b
	dec a                                            ; $5de7: $3d
	ld c, b                                          ; $5de8: $48
	and b                                            ; $5de9: $a0
	ld c, a                                          ; $5dea: $4f
	add hl, sp                                       ; $5deb: $39
	ldh a, [rHDMA4]                                  ; $5dec: $f0 $54
	ld a, $34                                        ; $5dee: $3e $34
	pop af                                           ; $5df0: $f1
	ld de, $65f0                                     ; $5df1: $11 $f0 $65
	ld d, e                                          ; $5df4: $53
	inc de                                           ; $5df5: $13
	ldh a, [$9c]                                     ; $5df6: $f0 $9c
	inc a                                            ; $5df8: $3c
	dec sp                                           ; $5df9: $3b
	dec a                                            ; $5dfa: $3d
	ld d, b                                          ; $5dfb: $50
	inc de                                           ; $5dfc: $13
	db $ec                                           ; $5dfd: $ec
	cp c                                             ; $5dfe: $b9
	ld b, c                                          ; $5dff: $41
	ld c, d                                          ; $5e00: $4a
	ld d, c                                          ; $5e01: $51
	ld e, l                                          ; $5e02: $5d
	ld e, d                                          ; $5e03: $5a
	ld c, b                                          ; $5e04: $48
	and b                                            ; $5e05: $a0
	db $eb                                           ; $5e06: $eb
	ld d, e                                          ; $5e07: $53

jr_08b_5e08:
	ldh a, [$3e]                                     ; $5e08: $f0 $3e
	ld b, a                                          ; $5e0a: $47
	xor h                                            ; $5e0b: $ac
	db $f4                                           ; $5e0c: $f4
	xor [hl]                                         ; $5e0d: $ae
	ld b, a                                          ; $5e0e: $47
	ldh a, [c]                                       ; $5e0f: $f2
	ld sp, hl                                        ; $5e10: $f9
	jr c, jr_08b_5e08                                ; $5e11: $38 $f5

	ld h, [hl]                                       ; $5e13: $66
	ld h, c                                          ; $5e14: $61
	ld h, d                                          ; $5e15: $62
	inc a                                            ; $5e16: $3c
	ld e, l                                          ; $5e17: $5d
	ld c, [hl]                                       ; $5e18: $4e
	ld b, d                                          ; $5e19: $42
	ld c, h                                          ; $5e1a: $4c
	and b                                            ; $5e1b: $a0
	ld l, a                                          ; $5e1c: $6f
	ld b, d                                          ; $5e1d: $42
	ldh a, [$a5]                                     ; $5e1e: $f0 $a5
	dec sp                                           ; $5e20: $3b
	dec a                                            ; $5e21: $3d
	ld c, a                                          ; $5e22: $4f
	ld b, d                                          ; $5e23: $42
	ld b, d                                          ; $5e24: $42
	ldh a, [$38]                                     ; $5e25: $f0 $38
	ld d, e                                          ; $5e27: $53
	inc de                                           ; $5e28: $13
	ld e, h                                          ; $5e29: $5c
	dec sp                                           ; $5e2a: $3b
	ld c, c                                          ; $5e2b: $49
	ldh a, [$71]                                     ; $5e2c: $f0 $71
	jr c, jr_08b_5e93                                ; $5e2e: $38 $63

	ld b, l                                          ; $5e30: $45
	and b                                            ; $5e31: $a0
	ld a, $3c                                        ; $5e32: $3e $3c
	dec a                                            ; $5e34: $3d
	db $ec                                           ; $5e35: $ec
	dec bc                                           ; $5e36: $0b
	ld c, b                                          ; $5e37: $48
	and b                                            ; $5e38: $a0
	ld [$a80b], a                                    ; $5e39: $ea $0b $a8
	jp hl                                            ; $5e3c: $e9


	ld b, h                                          ; $5e3d: $44
	and b                                            ; $5e3e: $a0
	xor $08                                          ; $5e3f: $ee $08
	ld b, d                                          ; $5e41: $42
	ldh a, [$38]                                     ; $5e42: $f0 $38
	ld d, e                                          ; $5e44: $53
	sbc h                                            ; $5e45: $9c
	dec sp                                           ; $5e46: $3b
	ld c, c                                          ; $5e47: $49
	inc de                                           ; $5e48: $13
	db $ec                                           ; $5e49: $ec
	cp c                                             ; $5e4a: $b9
	ld h, e                                          ; $5e4b: $63
	ld c, b                                          ; $5e4c: $48
	and b                                            ; $5e4d: $a0
	ld d, c                                          ; $5e4e: $51
	ld [hl], b                                       ; $5e4f: $70
	ld d, l                                          ; $5e50: $55
	ld [$4cb7], a                                    ; $5e51: $ea $b7 $4c
	and b                                            ; $5e54: $a0
	ld d, c                                          ; $5e55: $51
	ld [hl], b                                       ; $5e56: $70
	ld d, l                                          ; $5e57: $55
	inc [hl]                                         ; $5e58: $34
	ldh a, [$71]                                     ; $5e59: $f0 $71
	call c, Call_08b_52a0                            ; $5e5b: $dc $a0 $52
	ld b, h                                          ; $5e5e: $44
	inc [hl]                                         ; $5e5f: $34
	xor $08                                          ; $5e60: $ee $08
	ld b, d                                          ; $5e62: $42
	ldh a, [$38]                                     ; $5e63: $f0 $38
	ld d, e                                          ; $5e65: $53
	inc de                                           ; $5e66: $13
	db $ec                                           ; $5e67: $ec
	cp c                                             ; $5e68: $b9
	ld h, e                                          ; $5e69: $63
	ld c, b                                          ; $5e6a: $48
	and b                                            ; $5e6b: $a0
	ld hl, $10ee                                     ; $5e6c: $21 $ee $10
	xor $10                                          ; $5e6f: $ee $10
	xor b                                            ; $5e71: $a8
	jr nz, @+$40                                     ; $5e72: $20 $3e

	inc a                                            ; $5e74: $3c
	dec a                                            ; $5e75: $3d
	db $ec                                           ; $5e76: $ec
	dec bc                                           ; $5e77: $0b
	and b                                            ; $5e78: $a0
	add b                                            ; $5e79: $80
	ld e, h                                          ; $5e7a: $5c
	ld b, [hl]                                       ; $5e7b: $46
	dec sp                                           ; $5e7c: $3b
	ccf                                              ; $5e7d: $3f
	rst SubAFromDE                                          ; $5e7e: $df
	ld h, e                                          ; $5e7f: $63
	and b                                            ; $5e80: $a0
	db $ed                                           ; $5e81: $ed
	jr nz, jr_08b_5ed7                               ; $5e82: $20 $53

	ldh a, [c]                                       ; $5e84: $f2
	ld d, [hl]                                       ; $5e85: $56
	ld c, l                                          ; $5e86: $4d
	ld h, c                                          ; $5e87: $61
	ld d, [hl]                                       ; $5e88: $56
	dec sp                                           ; $5e89: $3b
	dec a                                            ; $5e8a: $3d
	inc de                                           ; $5e8b: $13
	db $ec                                           ; $5e8c: $ec
	ret c                                            ; $5e8d: $d8

	and b                                            ; $5e8e: $a0
	ld d, h                                          ; $5e8f: $54
	inc [hl]                                         ; $5e90: $34
	ld d, h                                          ; $5e91: $54
	ld b, c                                          ; $5e92: $41

jr_08b_5e93:
	ld a, [hl-]                                      ; $5e93: $3a
	ld b, d                                          ; $5e94: $42
	db $eb                                           ; $5e95: $eb
	add b                                            ; $5e96: $80
	inc de                                           ; $5e97: $13
	ld b, l                                          ; $5e98: $45
	and b                                            ; $5e99: $a0
	ld hl, $10ee                                     ; $5e9a: $21 $ee $10
	xor $10                                          ; $5e9d: $ee $10
	xor b                                            ; $5e9f: $a8
	jr nz, jr_08b_5ee0                               ; $5ea0: $20 $3e

	inc a                                            ; $5ea2: $3c
	dec a                                            ; $5ea3: $3d
	db $ec                                           ; $5ea4: $ec
	dec bc                                           ; $5ea5: $0b
	add l                                            ; $5ea6: $85
	and b                                            ; $5ea7: $a0
	ld l, e                                          ; $5ea8: $6b
	inc a                                            ; $5ea9: $3c
	inc [hl]                                         ; $5eaa: $34
	ldh a, [$f3]                                     ; $5eab: $f0 $f3
	ld c, l                                          ; $5ead: $4d
	ldh [$a0], a                                     ; $5eae: $e0 $a0
	db $ec                                           ; $5eb0: $ec
	sub $ac                                          ; $5eb1: $d6 $ac
	cp e                                             ; $5eb3: $bb
	ld h, e                                          ; $5eb4: $63
	and b                                            ; $5eb5: $a0
	db $ed                                           ; $5eb6: $ed
	ld c, $49                                        ; $5eb7: $0e $49
	ld b, d                                          ; $5eb9: $42
	ldh a, [$38]                                     ; $5eba: $f0 $38
	ld d, e                                          ; $5ebc: $53
	inc de                                           ; $5ebd: $13
	jr c, jr_08b_5ef8                                ; $5ebe: $38 $38

	ld a, [hl-]                                      ; $5ec0: $3a
	ld [hl], h                                       ; $5ec1: $74
	ld c, b                                          ; $5ec2: $48
	and b                                            ; $5ec3: $a0
	ld e, b                                          ; $5ec4: $58
	ld b, [hl]                                       ; $5ec5: $46
	inc [hl]                                         ; $5ec6: $34
	ldh a, [rLCDC]                                   ; $5ec7: $f0 $40
	ld e, a                                          ; $5ec9: $5f
	add hl, sp                                       ; $5eca: $39
	and b                                            ; $5ecb: $a0
	xor $08                                          ; $5ecc: $ee $08
	ld b, d                                          ; $5ece: $42
	ldh a, [$38]                                     ; $5ecf: $f0 $38
	ld d, e                                          ; $5ed1: $53
	inc de                                           ; $5ed2: $13
	ld b, l                                          ; $5ed3: $45
	inc a                                            ; $5ed4: $3c
	dec sp                                           ; $5ed5: $3b
	dec a                                            ; $5ed6: $3d

jr_08b_5ed7:
	ld a, [hl-]                                      ; $5ed7: $3a
	ld c, b                                          ; $5ed8: $48
	and b                                            ; $5ed9: $a0
	db $eb                                           ; $5eda: $eb
	ld h, e                                          ; $5edb: $63
	ld c, h                                          ; $5edc: $4c
	and b                                            ; $5edd: $a0
	ld d, h                                          ; $5ede: $54
	ld c, l                                          ; $5edf: $4d

jr_08b_5ee0:
	xor h                                            ; $5ee0: $ac
	ldh a, [rLCDC]                                   ; $5ee1: $f0 $40
	ld d, a                                          ; $5ee3: $57
	dec a                                            ; $5ee4: $3d
	inc a                                            ; $5ee5: $3c
	dec sp                                           ; $5ee6: $3b
	dec a                                            ; $5ee7: $3d
	ld b, c                                          ; $5ee8: $41
	ld b, h                                          ; $5ee9: $44
	and b                                            ; $5eea: $a0
	ld c, a                                          ; $5eeb: $4f
	add hl, sp                                       ; $5eec: $39
	inc [hl]                                         ; $5eed: $34
	db $ed                                           ; $5eee: $ed
	ld h, b                                          ; $5eef: $60
	ld b, a                                          ; $5ef0: $47
	inc de                                           ; $5ef1: $13
	db $eb                                           ; $5ef2: $eb
	ld h, e                                          ; $5ef3: $63
	ld c, h                                          ; $5ef4: $4c
	and b                                            ; $5ef5: $a0
	ld e, e                                          ; $5ef6: $5b
	ld d, [hl]                                       ; $5ef7: $56

jr_08b_5ef8:
	ldh a, [rLCDC]                                   ; $5ef8: $f0 $40
	ld e, a                                          ; $5efa: $5f
	add hl, sp                                       ; $5efb: $39
	inc a                                            ; $5efc: $3c
	and b                                            ; $5efd: $a0
	xor $08                                          ; $5efe: $ee $08
	ld c, d                                          ; $5f00: $4a
	inc de                                           ; $5f01: $13
	ldh a, [rLCDC]                                   ; $5f02: $f0 $40
	ld d, a                                          ; $5f04: $57
	dec a                                            ; $5f05: $3d
	inc a                                            ; $5f06: $3c
	dec sp                                           ; $5f07: $3b
	dec a                                            ; $5f08: $3d
	ld h, e                                          ; $5f09: $63
	ld c, b                                          ; $5f0a: $48
	and b                                            ; $5f0b: $a0
	db $ed                                           ; $5f0c: $ed
	ld e, [hl]                                       ; $5f0d: $5e
	inc [hl]                                         ; $5f0e: $34
	ldh a, [$71]                                     ; $5f0f: $f0 $71
	ld d, l                                          ; $5f11: $55
	ld a, [hl-]                                      ; $5f12: $3a
	inc a                                            ; $5f13: $3c
	dec sp                                           ; $5f14: $3b
	dec a                                            ; $5f15: $3d
	ld c, h                                          ; $5f16: $4c
	and b                                            ; $5f17: $a0
	cp e                                             ; $5f18: $bb
	ld c, h                                          ; $5f19: $4c
	ld e, c                                          ; $5f1a: $59
	and b                                            ; $5f1b: $a0
	ldh a, [$d6]                                     ; $5f1c: $f0 $d6
	ld c, e                                          ; $5f1e: $4b
	xor h                                            ; $5f1f: $ac
	pop af                                           ; $5f20: $f1
	ld c, c                                          ; $5f21: $49
	ld e, c                                          ; $5f22: $59
	add e                                            ; $5f23: $83
	ld l, c                                          ; $5f24: $69
	ldh a, [rAUD3ENA]                                ; $5f25: $f0 $1a
	ldh a, [hDisp0_WX]                                     ; $5f27: $f0 $89
	add e                                            ; $5f29: $83
	ld b, a                                          ; $5f2a: $47
	db $ec                                           ; $5f2b: $ec
	ld [hl], d                                       ; $5f2c: $72
	and b                                            ; $5f2d: $a0
	ld h, h                                          ; $5f2e: $64
	sbc [hl]                                         ; $5f2f: $9e
	xor h                                            ; $5f30: $ac
	ld e, d                                          ; $5f31: $5a
	dec sp                                           ; $5f32: $3b
	ld h, c                                          ; $5f33: $61
	ld b, d                                          ; $5f34: $42
	pop af                                           ; $5f35: $f1
	ld b, [hl]                                       ; $5f36: $46
	ld c, c                                          ; $5f37: $49
	sub [hl]                                         ; $5f38: $96
	ld c, [hl]                                       ; $5f39: $4e
	and c                                            ; $5f3a: $a1
	cpl                                              ; $5f3b: $2f
	db $ed                                           ; $5f3c: $ed
	xor c                                            ; $5f3d: $a9
	ld c, c                                          ; $5f3e: $49
	sub [hl]                                         ; $5f3f: $96
	ld c, [hl]                                       ; $5f40: $4e
	adc l                                            ; $5f41: $8d
	add hl, bc                                       ; $5f42: $09
	cpl                                              ; $5f43: $2f
	db $ec                                           ; $5f44: $ec
	rst SubAFromDE                                          ; $5f45: $df
	ld c, c                                          ; $5f46: $49
	sub [hl]                                         ; $5f47: $96
	ld c, [hl]                                       ; $5f48: $4e
	adc l                                            ; $5f49: $8d
	add hl, bc                                       ; $5f4a: $09
	cpl                                              ; $5f4b: $2f
	db $ec                                           ; $5f4c: $ec
	ldh [rOBP1], a                                   ; $5f4d: $e0 $49
	sub [hl]                                         ; $5f4f: $96
	ld c, [hl]                                       ; $5f50: $4e
	adc l                                            ; $5f51: $8d
	add hl, bc                                       ; $5f52: $09
	cpl                                              ; $5f53: $2f
	db $ec                                           ; $5f54: $ec
	pop hl                                           ; $5f55: $e1
	ld c, c                                          ; $5f56: $49
	sub [hl]                                         ; $5f57: $96
	ld c, [hl]                                       ; $5f58: $4e
	adc l                                            ; $5f59: $8d
	add hl, bc                                       ; $5f5a: $09
	cpl                                              ; $5f5b: $2f
	db $ed                                           ; $5f5c: $ed
	ld d, e                                          ; $5f5d: $53
	ld c, c                                          ; $5f5e: $49
	sub [hl]                                         ; $5f5f: $96
	ld c, [hl]                                       ; $5f60: $4e
	adc l                                            ; $5f61: $8d
	add hl, bc                                       ; $5f62: $09
	cpl                                              ; $5f63: $2f
	db $eb                                           ; $5f64: $eb
	ld a, [$9649]                                    ; $5f65: $fa $49 $96
	ld c, [hl]                                       ; $5f68: $4e
	adc l                                            ; $5f69: $8d
	add hl, bc                                       ; $5f6a: $09
	cpl                                              ; $5f6b: $2f
	db $ec                                           ; $5f6c: $ec
	and $49                                          ; $5f6d: $e6 $49
	sub [hl]                                         ; $5f6f: $96
	ld c, [hl]                                       ; $5f70: $4e
	adc l                                            ; $5f71: $8d
	add hl, bc                                       ; $5f72: $09
	ret                                              ; $5f73: $c9


	ldh a, [$71]                                     ; $5f74: $f0 $71
	jr c, jr_08b_5fd5                                ; $5f76: $38 $5d

	ld e, d                                          ; $5f78: $5a
	inc de                                           ; $5f79: $13
	sub [hl]                                         ; $5f7a: $96
	ld d, a                                          ; $5f7b: $57
	ld d, d                                          ; $5f7c: $52
	ld a, $66                                        ; $5f7d: $3e $66
	add hl, sp                                       ; $5f7f: $39
	and b                                            ; $5f80: $a0
	ret                                              ; $5f81: $c9


	inc [hl]                                         ; $5f82: $34
	ldh a, [$71]                                     ; $5f83: $f0 $71
	inc a                                            ; $5f85: $3c
	dec sp                                           ; $5f86: $3b
	dec a                                            ; $5f87: $3d
	ld c, h                                          ; $5f88: $4c
	and b                                            ; $5f89: $a0
	xor $08                                          ; $5f8a: $ee $08
	ld c, d                                          ; $5f8c: $4a
	ld c, e                                          ; $5f8d: $4b
	xor h                                            ; $5f8e: $ac
	sub [hl]                                         ; $5f8f: $96
	ld c, l                                          ; $5f90: $4d
	ld a, [hl-]                                      ; $5f91: $3a
	jr c, jr_08b_5ff1                                ; $5f92: $38 $5d

	ld e, d                                          ; $5f94: $5a
	ld c, b                                          ; $5f95: $48
	and b                                            ; $5f96: $a0
	ret                                              ; $5f97: $c9


	ldh a, [$71]                                     ; $5f98: $f0 $71
	jr c, jr_08b_5fe6                                ; $5f9a: $38 $4a

	ld d, c                                          ; $5f9c: $51
	ld c, h                                          ; $5f9d: $4c
	and b                                            ; $5f9e: $a0
	ret                                              ; $5f9f: $c9


	xor h                                            ; $5fa0: $ac
	ldh a, [$71]                                     ; $5fa1: $f0 $71
	inc a                                            ; $5fa3: $3c
	dec sp                                           ; $5fa4: $3b
	dec a                                            ; $5fa5: $3d
	ld c, d                                          ; $5fa6: $4a
	ld d, c                                          ; $5fa7: $51
	ld c, h                                          ; $5fa8: $4c
	and b                                            ; $5fa9: $a0

jr_08b_5faa:
	db $ec                                           ; $5faa: $ec
	add hl, bc                                       ; $5fab: $09
	ld b, d                                          ; $5fac: $42
	ldh a, [$aa]                                     ; $5fad: $f0 $aa
	adc c                                            ; $5faf: $89
	ld h, d                                          ; $5fb0: $62
	inc de                                           ; $5fb1: $13
	ld d, h                                          ; $5fb2: $54
	ld b, c                                          ; $5fb3: $41
	ld a, [hl-]                                      ; $5fb4: $3a
	db $ec                                           ; $5fb5: $ec
	and h                                            ; $5fb6: $a4
	ld a, [hl-]                                      ; $5fb7: $3a
	ld c, a                                          ; $5fb8: $4f
	ld b, d                                          ; $5fb9: $42
	ld b, a                                          ; $5fba: $47
	inc de                                           ; $5fbb: $13
	pop af                                           ; $5fbc: $f1
	sbc l                                            ; $5fbd: $9d
	add hl, sp                                       ; $5fbe: $39
	ld a, [hl-]                                      ; $5fbf: $3a
	ld b, c                                          ; $5fc0: $41
	ccf                                              ; $5fc1: $3f
	and b                                            ; $5fc2: $a0
	ld [$a80b], a                                    ; $5fc3: $ea $0b $a8
	ld e, b                                          ; $5fc6: $58
	ld b, [hl]                                       ; $5fc7: $46
	inc [hl]                                         ; $5fc8: $34
	sub [hl]                                         ; $5fc9: $96
	ld d, a                                          ; $5fca: $57
	ld d, d                                          ; $5fcb: $52
	ld a, $66                                        ; $5fcc: $3e $66
	add hl, sp                                       ; $5fce: $39
	and b                                            ; $5fcf: $a0
	ret                                              ; $5fd0: $c9


	inc [hl]                                         ; $5fd1: $34
	ldh a, [$71]                                     ; $5fd2: $f0 $71
	inc a                                            ; $5fd4: $3c

jr_08b_5fd5:
	dec sp                                           ; $5fd5: $3b
	ldh [$a0], a                                     ; $5fd6: $e0 $a0
	ld hl, $10ee                                     ; $5fd8: $21 $ee $10
	ld h, b                                          ; $5fdb: $60
	xor b                                            ; $5fdc: $a8
	jr nz, @-$10                                     ; $5fdd: $20 $ee

	ld [$964a], sp                                   ; $5fdf: $08 $4a $96
	dec sp                                           ; $5fe2: $3b
	ccf                                              ; $5fe3: $3f
	ldh a, [$a3]                                     ; $5fe4: $f0 $a3

jr_08b_5fe6:
	ld e, b                                          ; $5fe6: $58
	ld c, [hl]                                       ; $5fe7: $4e
	and c                                            ; $5fe8: $a1
	ld c, a                                          ; $5fe9: $4f
	add hl, sp                                       ; $5fea: $39
	ld b, b                                          ; $5feb: $40
	ld b, c                                          ; $5fec: $41
	ld a, [hl-]                                      ; $5fed: $3a
	db $f4                                           ; $5fee: $f4
	sub b                                            ; $5fef: $90
	ld c, d                                          ; $5ff0: $4a

jr_08b_5ff1:
	ld c, a                                          ; $5ff1: $4f
	inc de                                           ; $5ff2: $13
	ld a, [hl-]                                      ; $5ff3: $3a
	jr c, jr_08b_6034                                ; $5ff4: $38 $3e

	xor l                                            ; $5ff6: $ad
	db $ec                                           ; $5ff7: $ec
	dec h                                            ; $5ff8: $25
	inc [hl]                                         ; $5ff9: $34
	xor $08                                          ; $5ffa: $ee $08
	ld c, d                                          ; $5ffc: $4a
	inc de                                           ; $5ffd: $13
	sub [hl]                                         ; $5ffe: $96
	dec sp                                           ; $5fff: $3b
	ccf                                              ; $6000: $3f
	ldh a, [$a3]                                     ; $6001: $f0 $a3
	ld e, b                                          ; $6003: $58
	ld c, [hl]                                       ; $6004: $4e
	inc a                                            ; $6005: $3c
	ld a, $50                                        ; $6006: $3e $50
	and b                                            ; $6008: $a0
	ld hl, $10ee                                     ; $6009: $21 $ee $10
	xor $10                                          ; $600c: $ee $10
	xor b                                            ; $600e: $a8
	jr nz, jr_08b_5faa                               ; $600f: $20 $99

	dec sp                                           ; $6011: $3b
	dec a                                            ; $6012: $3d
	ld h, e                                          ; $6013: $63
	ld b, l                                          ; $6014: $45
	and b                                            ; $6015: $a0
	db $eb                                           ; $6016: $eb
	ld h, e                                          ; $6017: $63
	inc a                                            ; $6018: $3c
	ld a, $50                                        ; $6019: $3e $50
	and c                                            ; $601b: $a1
	ld e, b                                          ; $601c: $58
	ld b, [hl]                                       ; $601d: $46
	inc [hl]                                         ; $601e: $34
	ldh a, [$0a]                                     ; $601f: $f0 $0a
	ld d, l                                          ; $6021: $55
	sub [hl]                                         ; $6022: $96
	ld e, a                                          ; $6023: $5f
	add hl, sp                                       ; $6024: $39
	and b                                            ; $6025: $a0
	sub [hl]                                         ; $6026: $96
	ld c, [hl]                                       ; $6027: $4e
	ld b, d                                          ; $6028: $42
	ld c, h                                          ; $6029: $4c
	xor l                                            ; $602a: $ad
	ldh a, [rTAC]                                    ; $602b: $f0 $07
	inc a                                            ; $602d: $3c
	dec sp                                           ; $602e: $3b
	dec a                                            ; $602f: $3d
	ld h, e                                          ; $6030: $63
	and b                                            ; $6031: $a0
	ld c, a                                          ; $6032: $4f
	add hl, sp                                       ; $6033: $39

jr_08b_6034:
	or b                                             ; $6034: $b0
	inc a                                            ; $6035: $3c
	ld c, b                                          ; $6036: $48
	and b                                            ; $6037: $a0
	db $ed                                           ; $6038: $ed
	ld e, [hl]                                       ; $6039: $5e
	ldh a, [$71]                                     ; $603a: $f0 $71
	ld d, l                                          ; $603c: $55
	ld a, [hl-]                                      ; $603d: $3a
	inc a                                            ; $603e: $3c
	dec sp                                           ; $603f: $3b
	dec a                                            ; $6040: $3d
	ld c, h                                          ; $6041: $4c
	xor b                                            ; $6042: $a8
	ret                                              ; $6043: $c9


	push af                                          ; $6044: $f5
	ld h, l                                          ; $6045: $65
	adc h                                            ; $6046: $8c
	pop af                                           ; $6047: $f1
	or h                                             ; $6048: $b4
	ld e, l                                          ; $6049: $5d
	and b                                            ; $604a: $a0
	db $ed                                           ; $604b: $ed
	ld e, [hl]                                       ; $604c: $5e
	inc [hl]                                         ; $604d: $34
	db $eb                                           ; $604e: $eb
	ld d, e                                          ; $604f: $53
	ld h, e                                          ; $6050: $63
	and b                                            ; $6051: $a0
	ld c, a                                          ; $6052: $4f
	add hl, sp                                       ; $6053: $39
	inc [hl]                                         ; $6054: $34
	ldh a, [$ce]                                     ; $6055: $f0 $ce
	ld h, e                                          ; $6057: $63
	ld d, a                                          ; $6058: $57
	inc a                                            ; $6059: $3c
	ld c, b                                          ; $605a: $48
	xor c                                            ; $605b: $a9
	ld e, b                                          ; $605c: $58
	ccf                                              ; $605d: $3f
	inc [hl]                                         ; $605e: $34
	db $ed                                           ; $605f: $ed
	ld e, b                                          ; $6060: $58
	and b                                            ; $6061: $a0
	ld d, $ac                                        ; $6062: $16 $ac
	db $ed                                           ; $6064: $ed
	ld d, a                                          ; $6065: $57
	ld [$a8b7], a                                    ; $6066: $ea $b7 $a8
	ld b, b                                          ; $6069: $40
	ld c, l                                          ; $606a: $4d
	ld e, e                                          ; $606b: $5b
	ld d, [hl]                                       ; $606c: $56
	inc [hl]                                         ; $606d: $34
	ld e, b                                          ; $606e: $58
	ld b, l                                          ; $606f: $45
	ld a, [hl-]                                      ; $6070: $3a
	ld d, b                                          ; $6071: $50
	and b                                            ; $6072: $a0
	db $ed                                           ; $6073: $ed
	ld d, a                                          ; $6074: $57
	inc [hl]                                         ; $6075: $34
	ld [$a8b7], a                                    ; $6076: $ea $b7 $a8
	ld b, b                                          ; $6079: $40
	ld c, l                                          ; $607a: $4d
	ld e, e                                          ; $607b: $5b
	ld d, [hl]                                       ; $607c: $56
	inc [hl]                                         ; $607d: $34
	db $ec                                           ; $607e: $ec
	db $db                                           ; $607f: $db
	ld e, b                                          ; $6080: $58
	ld b, l                                          ; $6081: $45
	ld a, [hl-]                                      ; $6082: $3a
	ld d, b                                          ; $6083: $50
	and b                                            ; $6084: $a0
	db $ed                                           ; $6085: $ed
	ld d, a                                          ; $6086: $57
	ld [$a8b7], a                                    ; $6087: $ea $b7 $a8
	db $ed                                           ; $608a: $ed
	ld c, $58                                        ; $608b: $0e $58
	ld b, l                                          ; $608d: $45
	ld a, [hl-]                                      ; $608e: $3a
	ld d, b                                          ; $608f: $50
	and b                                            ; $6090: $a0
	ld d, $ac                                        ; $6091: $16 $ac
	db $ed                                           ; $6093: $ed
	ld d, a                                          ; $6094: $57
	ld [$4c27], a                                    ; $6095: $ea $27 $4c
	xor b                                            ; $6098: $a8
	jp z, $eb34                                      ; $6099: $ca $34 $eb

	ld e, d                                          ; $609c: $5a
	and b                                            ; $609d: $a0
	db $ed                                           ; $609e: $ed
	ld d, a                                          ; $609f: $57
	inc [hl]                                         ; $60a0: $34
	db $eb                                           ; $60a1: $eb
	ld h, e                                          ; $60a2: $63
	inc de                                           ; $60a3: $13
	ld c, d                                          ; $60a4: $4a
	ld d, c                                          ; $60a5: $51

jr_08b_60a6:
	ld c, h                                          ; $60a6: $4c
	dec [hl]                                         ; $60a7: $35
	jp z, $eb34                                      ; $60a8: $ca $34 $eb

	ld e, d                                          ; $60ab: $5a
	and b                                            ; $60ac: $a0
	db $ed                                           ; $60ad: $ed
	ld d, a                                          ; $60ae: $57
	ld [$a827], a                                    ; $60af: $ea $27 $a8
	jp z, $ed34                                      ; $60b2: $ca $34 $ed

	ld c, $ac                                        ; $60b5: $0e $ac
	db $eb                                           ; $60b7: $eb
	ld e, d                                          ; $60b8: $5a
	and b                                            ; $60b9: $a0
	ld d, $ac                                        ; $60ba: $16 $ac
	jr c, jr_08b_60f6                                ; $60bc: $38 $38

	ldh a, [$ea]                                     ; $60be: $f0 $ea
	di                                               ; $60c0: $f3
	cp [hl]                                          ; $60c1: $be
	ld a, $53                                        ; $60c2: $3e $53
	sub h                                            ; $60c4: $94
	ld a, b                                          ; $60c5: $78
	dec a                                            ; $60c6: $3d
	ld h, e                                          ; $60c7: $63
	xor b                                            ; $60c8: $a8
	ld [$5121], a                                    ; $60c9: $ea $21 $51
	ld c, [hl]                                       ; $60cc: $4e
	ld h, e                                          ; $60cd: $63
	and b                                            ; $60ce: $a0
	jr c, jr_08b_6109                                ; $60cf: $38 $38

	ldh a, [$ea]                                     ; $60d1: $f0 $ea
	di                                               ; $60d3: $f3
	cp [hl]                                          ; $60d4: $be
	ld a, $53                                        ; $60d5: $3e $53
	inc de                                           ; $60d7: $13
	sub h                                            ; $60d8: $94
	ld a, b                                          ; $60d9: $78
	dec a                                            ; $60da: $3d
	ld h, e                                          ; $60db: $63
	dec [hl]                                         ; $60dc: $35
	ld [$a021], a                                    ; $60dd: $ea $21 $a0
	jr c, jr_08b_611a                                ; $60e0: $38 $38

	ldh a, [$ea]                                     ; $60e2: $f0 $ea
	di                                               ; $60e4: $f3
	cp [hl]                                          ; $60e5: $be
	ld a, $53                                        ; $60e6: $3e $53
	inc de                                           ; $60e8: $13
	sub h                                            ; $60e9: $94
	ld a, b                                          ; $60ea: $78
	dec a                                            ; $60eb: $3d
	ld h, e                                          ; $60ec: $63
	xor b                                            ; $60ed: $a8
	db $ed                                           ; $60ee: $ed
	ld c, $34                                        ; $60ef: $0e $34
	ldh a, [rHDMA5]                                  ; $60f1: $f0 $55
	ldh a, [rBCPS]                                   ; $60f3: $f0 $68
	ld d, c                                          ; $60f5: $51

jr_08b_60f6:
	ld c, [hl]                                       ; $60f6: $4e
	ld h, e                                          ; $60f7: $63
	and b                                            ; $60f8: $a0
	ld d, $34                                        ; $60f9: $16 $34
	db $ed                                           ; $60fb: $ed
	ld d, a                                          ; $60fc: $57
	inc de                                           ; $60fd: $13
	db $ec                                           ; $60fe: $ec
	ld d, b                                          ; $60ff: $50
	ld [$a8b7], a                                    ; $6100: $ea $b7 $a8
	jp hl                                            ; $6103: $e9


	jr nz, jr_08b_60a6                               ; $6104: $20 $a0

	db $ed                                           ; $6106: $ed
	ld d, a                                          ; $6107: $57
	inc [hl]                                         ; $6108: $34

jr_08b_6109:
	ld [$a8b7], a                                    ; $6109: $ea $b7 $a8
	db $ec                                           ; $610c: $ec
	and d                                            ; $610d: $a2
	pop af                                           ; $610e: $f1
	ld b, b                                          ; $610f: $40
	ldh a, [rBCPD]                                   ; $6110: $f0 $69
	ldh a, [rP1]                                     ; $6112: $f0 $00
	ldh a, [rAUD4LEN]                                ; $6114: $f0 $20
	ldh a, [rWY]                                     ; $6116: $f0 $4a
	ldh a, [$c4]                                     ; $6118: $f0 $c4

jr_08b_611a:
	inc [hl]                                         ; $611a: $34
	ld e, b                                          ; $611b: $58
	ld b, l                                          ; $611c: $45
	ld a, [hl-]                                      ; $611d: $3a
	ld d, b                                          ; $611e: $50
	and b                                            ; $611f: $a0
	db $ed                                           ; $6120: $ed
	ld d, a                                          ; $6121: $57
	ld [$a8b7], a                                    ; $6122: $ea $b7 $a8
	db $ec                                           ; $6125: $ec
	and d                                            ; $6126: $a2
	inc [hl]                                         ; $6127: $34
	db $ed                                           ; $6128: $ed
	ld c, $a0                                        ; $6129: $0e $a0
	ld d, $a8                                        ; $612b: $16 $a8
	db $ed                                           ; $612d: $ed
	ld d, a                                          ; $612e: $57
	xor h                                            ; $612f: $ac
	pop de                                           ; $6130: $d1
	ld [$35b7], a                                    ; $6131: $ea $b7 $35
	ld [hl+], a                                      ; $6134: $22
	inc de                                           ; $6135: $13
	ld d, d                                          ; $6136: $52
	dec a                                            ; $6137: $3d
	ldh a, [$3b]                                     ; $6138: $f0 $3b
	dec sp                                           ; $613a: $3b
	ccf                                              ; $613b: $3f
	ld d, l                                          ; $613c: $55
	ld c, l                                          ; $613d: $4d
	ccf                                              ; $613e: $3f
	ld c, a                                          ; $613f: $4f
	ret nc                                           ; $6140: $d0

	xor b                                            ; $6141: $a8
	or h                                             ; $6142: $b4
	and b                                            ; $6143: $a0
	db $ed                                           ; $6144: $ed
	ld d, a                                          ; $6145: $57
	inc [hl]                                         ; $6146: $34
	pop de                                           ; $6147: $d1
	inc de                                           ; $6148: $13
	ld [$35b7], a                                    ; $6149: $ea $b7 $35
	ld d, d                                          ; $614c: $52
	dec a                                            ; $614d: $3d
	ld c, h                                          ; $614e: $4c
	and b                                            ; $614f: $a0

jr_08b_6150:
	db $ed                                           ; $6150: $ed
	ld d, a                                          ; $6151: $57
	inc [hl]                                         ; $6152: $34
	db $ec                                           ; $6153: $ec
	sub $13                                          ; $6154: $d6 $13
	cp e                                             ; $6156: $bb
	ld h, e                                          ; $6157: $63
	xor b                                            ; $6158: $a8
	ld [$5121], a                                    ; $6159: $ea $21 $51
	ld c, [hl]                                       ; $615c: $4e
	ld h, e                                          ; $615d: $63
	xor b                                            ; $615e: $a8
	db $ed                                           ; $615f: $ed
	ld d, d                                          ; $6160: $52
	ldh a, [rRP]                                     ; $6161: $f0 $56
	and b                                            ; $6163: $a0
	db $ed                                           ; $6164: $ed
	ld d, a                                          ; $6165: $57
	db $eb                                           ; $6166: $eb
	ld h, e                                          ; $6167: $63
	ld c, h                                          ; $6168: $4c
	xor b                                            ; $6169: $a8
	ld d, d                                          ; $616a: $52
	dec a                                            ; $616b: $3d
	ld e, d                                          ; $616c: $5a
	dec sp                                           ; $616d: $3b
	inc a                                            ; $616e: $3c
	ld b, a                                          ; $616f: $47
	ldh a, [$3b]                                     ; $6170: $f0 $3b
	dec sp                                           ; $6172: $3b
	ccf                                              ; $6173: $3f
	ld c, h                                          ; $6174: $4c
	and b                                            ; $6175: $a0
	db $ed                                           ; $6176: $ed
	ld d, a                                          ; $6177: $57
	db $eb                                           ; $6178: $eb
	ld h, e                                          ; $6179: $63
	ld c, h                                          ; $617a: $4c
	and b                                            ; $617b: $a0
	ld b, b                                          ; $617c: $40
	ld c, l                                          ; $617d: $4d
	ld e, e                                          ; $617e: $5b
	ld d, [hl]                                       ; $617f: $56
	and b                                            ; $6180: $a0
	ld d, $ac                                        ; $6181: $16 $ac
	db $ed                                           ; $6183: $ed
	ld d, a                                          ; $6184: $57
	ld [$a8b7], a                                    ; $6185: $ea $b7 $a8
	ld [$a044], a                                    ; $6188: $ea $44 $a0
	db $ed                                           ; $618b: $ed
	ld d, a                                          ; $618c: $57
	db $eb                                           ; $618d: $eb
	ld h, e                                          ; $618e: $63
	xor b                                            ; $618f: $a8
	ld d, d                                          ; $6190: $52
	dec a                                            ; $6191: $3d
	ldh a, [$3b]                                     ; $6192: $f0 $3b
	dec sp                                           ; $6194: $3b
	ccf                                              ; $6195: $3f
	ld c, h                                          ; $6196: $4c
	and b                                            ; $6197: $a0
	db $ed                                           ; $6198: $ed
	ld d, d                                          ; $6199: $52
	ldh a, [rRP]                                     ; $619a: $f0 $56
	xor h                                            ; $619c: $ac
	ld b, [hl]                                       ; $619d: $46
	ld d, a                                          ; $619e: $57
	ld d, e                                          ; $619f: $53
	ld c, c                                          ; $61a0: $49
	add hl, sp                                       ; $61a1: $39
	dec [hl]                                         ; $61a2: $35
	ld b, b                                          ; $61a3: $40
	ld c, l                                          ; $61a4: $4d
	ld e, e                                          ; $61a5: $5b
	ld d, [hl]                                       ; $61a6: $56
	and b                                            ; $61a7: $a0
	ldh a, [$80]                                     ; $61a8: $f0 $80
	ldh a, [$c5]                                     ; $61aa: $f0 $c5

Jump_08b_61ac:
	pop af                                           ; $61ac: $f1
	adc b                                            ; $61ad: $88
	add b                                            ; $61ae: $80
	jr c, jr_08b_61f0                                ; $61af: $38 $3f

	dec a                                            ; $61b1: $3d
	adc l                                            ; $61b2: $8d
	and b                                            ; $61b3: $a0
	ld h, h                                          ; $61b4: $64
	sbc [hl]                                         ; $61b5: $9e
	ld b, a                                          ; $61b6: $47
	ld a, a                                          ; $61b7: $7f
	ld d, e                                          ; $61b8: $53
	inc de                                           ; $61b9: $13
	ld b, [hl]                                       ; $61ba: $46
	ld c, [hl]                                       ; $61bb: $4e
	inc a                                            ; $61bc: $3c
	ld c, a                                          ; $61bd: $4f
	ld a, $4d                                        ; $61be: $3e $4d
	ld a, [hl-]                                      ; $61c0: $3a
	jr c, jr_08b_6150                                ; $61c1: $38 $8d

	and b                                            ; $61c3: $a0
	ld h, h                                          ; $61c4: $64
	sbc [hl]                                         ; $61c5: $9e
	ld [$a0bb], a                                    ; $61c6: $ea $bb $a0
	cpl                                              ; $61c9: $2f
	ld [hl-], a                                      ; $61ca: $32
	ld e, [hl]                                       ; $61cb: $5e
	inc [hl]                                         ; $61cc: $34
	db $ed                                           ; $61cd: $ed
	xor c                                            ; $61ce: $a9
	ld b, d                                          ; $61cf: $42
	ld d, h                                          ; $61d0: $54
	ld c, c                                          ; $61d1: $49
	inc de                                           ; $61d2: $13
	inc a                                            ; $61d3: $3c
	ld a, [hl-]                                      ; $61d4: $3a
	ld c, b                                          ; $61d5: $48
	and e                                            ; $61d6: $a3
	cpl                                              ; $61d7: $2f
	ld [hl-], a                                      ; $61d8: $32
	ld e, [hl]                                       ; $61d9: $5e
	inc [hl]                                         ; $61da: $34
	db $ec                                           ; $61db: $ec
	rst SubAFromDE                                          ; $61dc: $df
	ld b, d                                          ; $61dd: $42
	ld d, h                                          ; $61de: $54
	ld c, c                                          ; $61df: $49
	inc de                                           ; $61e0: $13
	inc a                                            ; $61e1: $3c
	ld a, [hl-]                                      ; $61e2: $3a
	ld c, b                                          ; $61e3: $48
	and e                                            ; $61e4: $a3
	cpl                                              ; $61e5: $2f
	ld [hl-], a                                      ; $61e6: $32
	ld e, [hl]                                       ; $61e7: $5e
	inc [hl]                                         ; $61e8: $34
	db $ec                                           ; $61e9: $ec
	ldh [rSCY], a                                    ; $61ea: $e0 $42
	ld d, h                                          ; $61ec: $54
	ld c, c                                          ; $61ed: $49
	inc de                                           ; $61ee: $13
	inc a                                            ; $61ef: $3c

jr_08b_61f0:
	ld a, [hl-]                                      ; $61f0: $3a
	ld c, b                                          ; $61f1: $48
	and e                                            ; $61f2: $a3
	cpl                                              ; $61f3: $2f
	ld [hl-], a                                      ; $61f4: $32
	ld e, [hl]                                       ; $61f5: $5e
	inc [hl]                                         ; $61f6: $34
	db $ec                                           ; $61f7: $ec
	pop hl                                           ; $61f8: $e1
	ld b, d                                          ; $61f9: $42
	ld d, h                                          ; $61fa: $54
	ld c, c                                          ; $61fb: $49
	inc de                                           ; $61fc: $13
	inc a                                            ; $61fd: $3c
	ld a, [hl-]                                      ; $61fe: $3a
	ld c, b                                          ; $61ff: $48
	and e                                            ; $6200: $a3
	cpl                                              ; $6201: $2f
	ld [hl-], a                                      ; $6202: $32
	ld e, [hl]                                       ; $6203: $5e
	inc [hl]                                         ; $6204: $34
	db $ed                                           ; $6205: $ed
	ld d, e                                          ; $6206: $53
	ld b, d                                          ; $6207: $42
	ld d, h                                          ; $6208: $54
	ld c, c                                          ; $6209: $49
	inc de                                           ; $620a: $13
	inc a                                            ; $620b: $3c
	ld a, [hl-]                                      ; $620c: $3a
	ld c, b                                          ; $620d: $48
	and e                                            ; $620e: $a3
	cpl                                              ; $620f: $2f
	ld [hl-], a                                      ; $6210: $32
	ld e, [hl]                                       ; $6211: $5e
	inc [hl]                                         ; $6212: $34
	db $eb                                           ; $6213: $eb
	ld a, [$1342]                                    ; $6214: $fa $42 $13
	ld d, h                                          ; $6217: $54
	ld c, c                                          ; $6218: $49
	inc a                                            ; $6219: $3c
	ld a, [hl-]                                      ; $621a: $3a
	ld c, b                                          ; $621b: $48
	and e                                            ; $621c: $a3
	cpl                                              ; $621d: $2f
	ld [hl-], a                                      ; $621e: $32
	ld e, [hl]                                       ; $621f: $5e
	inc [hl]                                         ; $6220: $34
	db $ec                                           ; $6221: $ec
	and $42                                          ; $6222: $e6 $42
	ld d, h                                          ; $6224: $54
	ld c, c                                          ; $6225: $49
	inc de                                           ; $6226: $13
	inc a                                            ; $6227: $3c
	ld a, [hl-]                                      ; $6228: $3a
	ld c, b                                          ; $6229: $48
	and e                                            ; $622a: $a3
	cpl                                              ; $622b: $2f
	ld b, e                                          ; $622c: $43
	ld [$74af], a                                    ; $622d: $ea $af $74
	xor b                                            ; $6230: $a8
	db $ec                                           ; $6231: $ec
	push bc                                          ; $6232: $c5
	inc [hl]                                         ; $6233: $34
	halt                                             ; $6234: $76
	ldh a, [rSTAT]                                   ; $6235: $f0 $41
	ld c, a                                          ; $6237: $4f
	ld a, d                                          ; $6238: $7a
	ld e, a                                          ; $6239: $5f
	add hl, sp                                       ; $623a: $39
	adc l                                            ; $623b: $8d
	and b                                            ; $623c: $a0
	cpl                                              ; $623d: $2f
	ld b, e                                          ; $623e: $43
	db $ec                                           ; $623f: $ec
	push bc                                          ; $6240: $c5
	xor h                                            ; $6241: $ac
	halt                                             ; $6242: $76
	ldh a, [rSTAT]                                   ; $6243: $f0 $41
	ld c, a                                          ; $6245: $4f
	ld a, d                                          ; $6246: $7a
	ld e, a                                          ; $6247: $5f
	add hl, sp                                       ; $6248: $39
	adc l                                            ; $6249: $8d
	and b                                            ; $624a: $a0
	ld b, b                                          ; $624b: $40
	add hl, sp                                       ; $624c: $39
	ld b, h                                          ; $624d: $44
	ld a, [hl-]                                      ; $624e: $3a
	xor b                                            ; $624f: $a8
	ld b, b                                          ; $6250: $40
	ld c, l                                          ; $6251: $4d
	ld e, e                                          ; $6252: $5b
	ld d, [hl]                                       ; $6253: $56
	inc [hl]                                         ; $6254: $34
	db $ed                                           ; $6255: $ed
	ld e, b                                          ; $6256: $58
	and b                                            ; $6257: $a0
	cpl                                              ; $6258: $2f
	ld b, e                                          ; $6259: $43
	ld b, [hl]                                       ; $625a: $46
	dec sp                                           ; $625b: $3b
	xor h                                            ; $625c: $ac
	ld l, d                                          ; $625d: $6a
	ld [hl], a                                       ; $625e: $77
	jr c, jr_08b_62a5                                ; $625f: $38 $44

jr_08b_6261:
	ld a, $3d                                        ; $6261: $3e $3d
	ld e, l                                          ; $6263: $5d
	ld e, d                                          ; $6264: $5a
	inc [hl]                                         ; $6265: $34
	db $ed                                           ; $6266: $ed
	ld d, a                                          ; $6267: $57
	xor h                                            ; $6268: $ac
	add sp, -$38                                     ; $6269: $e8 $c8
	and b                                            ; $626b: $a0
	cpl                                              ; $626c: $2f
	ld [hl-], a                                      ; $626d: $32
	di                                               ; $626e: $f3
	jr jr_08b_6261                                   ; $626f: $18 $f0

	ld a, [hl+]                                      ; $6271: $2a
	ld c, e                                          ; $6272: $4b
	pop af                                           ; $6273: $f1
	ld a, h                                          ; $6274: $7c
	ld a, c                                          ; $6275: $79
	ld a, [hl-]                                      ; $6276: $3a
	inc a                                            ; $6277: $3c
	dec sp                                           ; $6278: $3b
	dec a                                            ; $6279: $3d
	inc de                                           ; $627a: $13
	ld e, l                                          ; $627b: $5d
	ld e, d                                          ; $627c: $5a
	inc [hl]                                         ; $627d: $34
	db $eb                                           ; $627e: $eb
	ld h, b                                          ; $627f: $60
	ld c, c                                          ; $6280: $49
	inc a                                            ; $6281: $3c
	xor h                                            ; $6282: $ac
	db $eb                                           ; $6283: $eb
	ld e, c                                          ; $6284: $59
	inc a                                            ; $6285: $3c
	ld a, [hl-]                                      ; $6286: $3a
	and e                                            ; $6287: $a3
	cpl                                              ; $6288: $2f
	ld [$0912], a                                    ; $6289: $ea $12 $09
	cpl                                              ; $628c: $2f
	jp hl                                            ; $628d: $e9


	add [hl]                                         ; $628e: $86
	add hl, bc                                       ; $628f: $09
	cpl                                              ; $6290: $2f
	ld b, e                                          ; $6291: $43
	db $eb                                           ; $6292: $eb
	dec a                                            ; $6293: $3d
	inc de                                           ; $6294: $13
	ld [$a011], a                                    ; $6295: $ea $11 $a0
	add hl, bc                                       ; $6298: $09
	xor $10                                          ; $6299: $ee $10
	and b                                            ; $629b: $a0
	cpl                                              ; $629c: $2f
	ld b, e                                          ; $629d: $43
	ld h, h                                          ; $629e: $64
	ld e, c                                          ; $629f: $59
	jr c, jr_08b_62d6                                ; $62a0: $38 $34

	db $ed                                           ; $62a2: $ed
	xor c                                            ; $62a3: $a9
	xor l                                            ; $62a4: $ad

jr_08b_62a5:
	sbc c                                            ; $62a5: $99
	dec sp                                           ; $62a6: $3b
	ccf                                              ; $62a7: $3f
	ld d, l                                          ; $62a8: $55
	ld c, l                                          ; $62a9: $4d
	ld e, c                                          ; $62aa: $59
	and b                                            ; $62ab: $a0
	cpl                                              ; $62ac: $2f
	ld b, e                                          ; $62ad: $43
	db $ec                                           ; $62ae: $ec
	reti                                             ; $62af: $d9


	xor h                                            ; $62b0: $ac
	ld d, h                                          ; $62b1: $54
	ld b, d                                          ; $62b2: $42
	pop af                                           ; $62b3: $f1
	ld de, $573a                                     ; $62b4: $11 $3a $57
	ld e, e                                          ; $62b7: $5b
	ld d, [hl]                                       ; $62b8: $56
	xor h                                            ; $62b9: $ac
	ldh a, [$e1]                                     ; $62ba: $f0 $e1
	ldh a, [rSB]                                     ; $62bc: $f0 $01
	ld d, b                                          ; $62be: $50
	ld c, l                                          ; $62bf: $4d
	ld c, [hl]                                       ; $62c0: $4e
	ld b, l                                          ; $62c1: $45
	ld a, [hl-]                                      ; $62c2: $3a
	ld [hl], h                                       ; $62c3: $74
	and b                                            ; $62c4: $a0
	cpl                                              ; $62c5: $2f
	ld b, e                                          ; $62c6: $43
	db $eb                                           ; $62c7: $eb
	inc [hl]                                         ; $62c8: $34
	xor h                                            ; $62c9: $ac
	ldh a, [rSVBK]                                   ; $62ca: $f0 $70
	ld b, a                                          ; $62cc: $47
	db $ed                                           ; $62cd: $ed
	ld e, b                                          ; $62ce: $58
	and b                                            ; $62cf: $a0
	cpl                                              ; $62d0: $2f
	ld b, e                                          ; $62d1: $43
	db $ed                                           ; $62d2: $ed
	xor c                                            ; $62d3: $a9
	ld c, e                                          ; $62d4: $4b
	xor h                                            ; $62d5: $ac

jr_08b_62d6:
	ld c, c                                          ; $62d6: $49
	add hl, sp                                       ; $62d7: $39
	ld c, c                                          ; $62d8: $49
	add hl, sp                                       ; $62d9: $39
	ld a, b                                          ; $62da: $78
	ld a, [hl-]                                      ; $62db: $3a
	inc a                                            ; $62dc: $3c
	dec sp                                           ; $62dd: $3b
	dec a                                            ; $62de: $3d
	ld a, [hl-]                                      ; $62df: $3a
	and b                                            ; $62e0: $a0
	cpl                                              ; $62e1: $2f
	ld b, e                                          ; $62e2: $43
	ld e, d                                          ; $62e3: $5a
	add hl, sp                                       ; $62e4: $39
	ld a, $3d                                        ; $62e5: $3e $3d
	ld b, c                                          ; $62e7: $41
	ld b, h                                          ; $62e8: $44
	ld e, a                                          ; $62e9: $5f
	add hl, sp                                       ; $62ea: $39
	xor c                                            ; $62eb: $a9
	db $eb                                           ; $62ec: $eb
	inc [hl]                                         ; $62ed: $34
	xor h                                            ; $62ee: $ac
	ldh a, [rSVBK]                                   ; $62ef: $f0 $70
	ld b, a                                          ; $62f1: $47
	db $ed                                           ; $62f2: $ed
	ld e, b                                          ; $62f3: $58
	and b                                            ; $62f4: $a0
	cpl                                              ; $62f5: $2f
	ld b, e                                          ; $62f6: $43
	db $ed                                           ; $62f7: $ed
	xor c                                            ; $62f8: $a9
	inc [hl]                                         ; $62f9: $34
	ld [hl], b                                       ; $62fa: $70
	ld [hl], c                                       ; $62fb: $71
	ld b, c                                          ; $62fc: $41
	ld c, h                                          ; $62fd: $4c
	xor b                                            ; $62fe: $a8
	add sp, -$21                                     ; $62ff: $e8 $df
	xor h                                            ; $6301: $ac
	jp hl                                            ; $6302: $e9


	xor [hl]                                         ; $6303: $ae
	and b                                            ; $6304: $a0
	add hl, sp                                       ; $6305: $39
	xor $1f                                          ; $6306: $ee $1f
	inc [hl]                                         ; $6308: $34
	jr c, jr_08b_6343                                ; $6309: $38 $38

	ld b, d                                          ; $630b: $42
	xor b                                            ; $630c: $a8
	ld l, a                                          ; $630d: $6f
	ld c, a                                          ; $630e: $4f
	inc [hl]                                         ; $630f: $34
	ld l, d                                          ; $6310: $6a
	ld a, b                                          ; $6311: $78
	dec a                                            ; $6312: $3d
	ld c, c                                          ; $6313: $49
	ld d, h                                          ; $6314: $54
	ld e, a                                          ; $6315: $5f
	ld b, h                                          ; $6316: $44
	inc a                                            ; $6317: $3c
	ld d, b                                          ; $6318: $50
	ld c, b                                          ; $6319: $48
	and b                                            ; $631a: $a0
	cpl                                              ; $631b: $2f
	ld b, e                                          ; $631c: $43
	db $ec                                           ; $631d: $ec
	cp c                                             ; $631e: $b9
	dec [hl]                                         ; $631f: $35
	rla                                              ; $6320: $17
	jp hl                                            ; $6321: $e9


	pop de                                           ; $6322: $d1
	inc de                                           ; $6323: $13
	jp hl                                            ; $6324: $e9


	jp nc, Jump_08b_6ba3                             ; $6325: $d2 $a3 $6b

	ld l, [hl]                                       ; $6328: $6e
	dec sp                                           ; $6329: $3b
	ccf                                              ; $632a: $3f
	dec a                                            ; $632b: $3d
	ld b, d                                          ; $632c: $42
	xor b                                            ; $632d: $a8
	ld c, a                                          ; $632e: $4f
	add hl, sp                                       ; $632f: $39
	inc [hl]                                         ; $6330: $34
	ld a, d                                          ; $6331: $7a
	ld c, [hl]                                       ; $6332: $4e
	ld c, c                                          ; $6333: $49
	ld d, h                                          ; $6334: $54
	ld e, a                                          ; $6335: $5f
	inc de                                           ; $6336: $13
	ld b, h                                          ; $6337: $44
	dec sp                                           ; $6338: $3b
	dec a                                            ; $6339: $3d
	ld b, c                                          ; $633a: $41
	ld b, h                                          ; $633b: $44
	inc a                                            ; $633c: $3c
	ld d, b                                          ; $633d: $50
	and b                                            ; $633e: $a0
	cpl                                              ; $633f: $2f
	ld b, e                                          ; $6340: $43
	ld [hl], b                                       ; $6341: $70
	ld [hl], c                                       ; $6342: $71

jr_08b_6343:
	ld b, c                                          ; $6343: $41
	xor b                                            ; $6344: $a8
	ldh a, [$5c]                                     ; $6345: $f0 $5c
	inc a                                            ; $6347: $3c
	dec sp                                           ; $6348: $3b
	dec a                                            ; $6349: $3d
	and b                                            ; $634a: $a0
	ldh a, [$c7]                                     ; $634b: $f0 $c7
	jr c, jr_08b_63b2                                ; $634d: $38 $63

	ld b, l                                          ; $634f: $45
	xor b                                            ; $6350: $a8
	ld c, a                                          ; $6351: $4f
	add hl, sp                                       ; $6352: $39
	inc [hl]                                         ; $6353: $34
	ld a, d                                          ; $6354: $7a
	ld c, [hl]                                       ; $6355: $4e
	ld c, c                                          ; $6356: $49
	ld d, h                                          ; $6357: $54
	ld e, a                                          ; $6358: $5f
	inc de                                           ; $6359: $13
	ld b, h                                          ; $635a: $44
	dec sp                                           ; $635b: $3b
	dec a                                            ; $635c: $3d
	ld b, c                                          ; $635d: $41
	ld b, h                                          ; $635e: $44
	inc a                                            ; $635f: $3c
	ld d, b                                          ; $6360: $50
	and b                                            ; $6361: $a0
	cpl                                              ; $6362: $2f
	ld b, e                                          ; $6363: $43
	ld [hl], b                                       ; $6364: $70
	ld [hl], c                                       ; $6365: $71
	ld b, c                                          ; $6366: $41
	ld b, l                                          ; $6367: $45
	xor b                                            ; $6368: $a8
	ld c, a                                          ; $6369: $4f
	add hl, sp                                       ; $636a: $39
	ldh a, [hDisp0_SCX]                                     ; $636b: $f0 $84
	ldh a, [$0d]                                     ; $636d: $f0 $0d
	ld c, c                                          ; $636f: $49
	ld a, $3a                                        ; $6370: $3e $3a
	jr c, jr_08b_63b0                                ; $6372: $38 $3c

	ld d, b                                          ; $6374: $50
	and b                                            ; $6375: $a0
	cpl                                              ; $6376: $2f
	ld b, e                                          ; $6377: $43
	sbc c                                            ; $6378: $99
	dec sp                                           ; $6379: $3b
	dec a                                            ; $637a: $3d
	and c                                            ; $637b: $a1
	add hl, sp                                       ; $637c: $39
	xor $1f                                          ; $637d: $ee $1f
	xor b                                            ; $637f: $a8
	ld l, a                                          ; $6380: $6f
	ld c, a                                          ; $6381: $4f
	inc [hl]                                         ; $6382: $34
	ld l, d                                          ; $6383: $6a
	ld a, b                                          ; $6384: $78
	dec a                                            ; $6385: $3d
	ld c, c                                          ; $6386: $49
	ld d, h                                          ; $6387: $54
	ld e, a                                          ; $6388: $5f
	ld b, h                                          ; $6389: $44
	inc a                                            ; $638a: $3c
	ld d, b                                          ; $638b: $50
	ld c, b                                          ; $638c: $48
	and b                                            ; $638d: $a0
	cpl                                              ; $638e: $2f
	ld b, e                                          ; $638f: $43
	jp hl                                            ; $6390: $e9


	dec h                                            ; $6391: $25
	ld b, l                                          ; $6392: $45
	and b                                            ; $6393: $a0
	ld l, a                                          ; $6394: $6f
	ld c, a                                          ; $6395: $4f
	xor h                                            ; $6396: $ac
	ld l, d                                          ; $6397: $6a
	ld a, b                                          ; $6398: $78
	dec a                                            ; $6399: $3d
	ld c, c                                          ; $639a: $49
	ld d, h                                          ; $639b: $54
	ld e, a                                          ; $639c: $5f
	ld b, l                                          ; $639d: $45
	and b                                            ; $639e: $a0
	cpl                                              ; $639f: $2f
	ld b, e                                          ; $63a0: $43
	jp hl                                            ; $63a1: $e9


	dec h                                            ; $63a2: $25
	and b                                            ; $63a3: $a0
	db $ec                                           ; $63a4: $ec
	db $10                                           ; $63a5: $10
	xor h                                            ; $63a6: $ac
	ld l, d                                          ; $63a7: $6a

Call_08b_63a8:
	ld a, b                                          ; $63a8: $78
	dec a                                            ; $63a9: $3d
	ld c, c                                          ; $63aa: $49
	ld d, h                                          ; $63ab: $54
	ld e, a                                          ; $63ac: $5f
	ld b, l                                          ; $63ad: $45
	and b                                            ; $63ae: $a0
	cpl                                              ; $63af: $2f

jr_08b_63b0:
	ld b, e                                          ; $63b0: $43
	db $ed                                           ; $63b1: $ed

jr_08b_63b2:
	xor c                                            ; $63b2: $a9
	ld b, d                                          ; $63b3: $42
	ldh a, [$f8]                                     ; $63b4: $f0 $f8
	inc [hl]                                         ; $63b6: $34
	ldh a, [$c7]                                     ; $63b7: $f0 $c7
	jr c, jr_08b_63f5                                ; $63b9: $38 $3a

	xor l                                            ; $63bb: $ad
	db $eb                                           ; $63bc: $eb
	rst FarCall                                          ; $63bd: $f7
	inc a                                            ; $63be: $3c
	ld a, [hl-]                                      ; $63bf: $3a
	and c                                            ; $63c0: $a1
	ld b, [hl]                                       ; $63c1: $46
	ld e, c                                          ; $63c2: $59
	dec sp                                           ; $63c3: $3b
	inc [hl]                                         ; $63c4: $34
	ld c, a                                          ; $63c5: $4f
	add hl, sp                                       ; $63c6: $39
	inc de                                           ; $63c7: $13
	pop af                                           ; $63c8: $f1
	sbc d                                            ; $63c9: $9a
	ld b, d                                          ; $63ca: $42
	ldh a, [c]                                       ; $63cb: $f2
	dec bc                                           ; $63cc: $0b
	ld d, a                                          ; $63cd: $57
	ld d, e                                          ; $63ce: $53
	ld d, c                                          ; $63cf: $51
	ld c, [hl]                                       ; $63d0: $4e
	ld c, h                                          ; $63d1: $4c
	and b                                            ; $63d2: $a0
	cpl                                              ; $63d3: $2f
	ld b, e                                          ; $63d4: $43
	pop af                                           ; $63d5: $f1
	cp d                                             ; $63d6: $ba
	ld d, l                                          ; $63d7: $55
	ld a, [hl-]                                      ; $63d8: $3a
	ld c, [hl]                                       ; $63d9: $4e
	ldh a, [c]                                       ; $63da: $f2
	ld a, e                                          ; $63db: $7b
	ldh a, [c]                                       ; $63dc: $f2
	ld a, h                                          ; $63dd: $7c
	ld b, d                                          ; $63de: $42
	di                                               ; $63df: $f3
	ld e, c                                          ; $63e0: $59
	ld a, b                                          ; $63e1: $78
	inc de                                           ; $63e2: $13
	ld b, h                                          ; $63e3: $44
	ld c, h                                          ; $63e4: $4c
	and b                                            ; $63e5: $a0
	ld [$acab], a                                    ; $63e6: $ea $ab $ac
	db $ed                                           ; $63e9: $ed
	ld d, a                                          ; $63ea: $57
	db $ed                                           ; $63eb: $ed
	ld l, h                                          ; $63ec: $6c
	ld c, h                                          ; $63ed: $4c
	and b                                            ; $63ee: $a0
	cpl                                              ; $63ef: $2f
	ld b, e                                          ; $63f0: $43
	ld b, b                                          ; $63f1: $40
	add hl, sp                                       ; $63f2: $39
	ld b, h                                          ; $63f3: $44
	ld c, h                                          ; $63f4: $4c

jr_08b_63f5:
	xor b                                            ; $63f5: $a8
	ld d, c                                          ; $63f6: $51
	ld [hl], b                                       ; $63f7: $70
	ld d, l                                          ; $63f8: $55
	db $ed                                           ; $63f9: $ed
	ld l, h                                          ; $63fa: $6c
	ld c, h                                          ; $63fb: $4c
	and b                                            ; $63fc: $a0
	db $ec                                           ; $63fd: $ec
	push bc                                          ; $63fe: $c5
	xor h                                            ; $63ff: $ac
	ld l, b                                          ; $6400: $68
	db $f4                                           ; $6401: $f4
	ld a, [bc]                                       ; $6402: $0a
	ld a, $4f                                        ; $6403: $3e $4f
	ldh a, [hDisp1_OBP0]                                     ; $6405: $f0 $93
	ld d, b                                          ; $6407: $50
	jr c, jr_08b_6454                                ; $6408: $38 $4a

	ld e, h                                          ; $640a: $5c
	dec a                                            ; $640b: $3d
	ld c, h                                          ; $640c: $4c
	and b                                            ; $640d: $a0
	cpl                                              ; $640e: $2f
	ld b, e                                          ; $640f: $43
	adc b                                            ; $6410: $88
	sub c                                            ; $6411: $91
	xor h                                            ; $6412: $ac
	pop af                                           ; $6413: $f1
	sub b                                            ; $6414: $90
	ld [hl], b                                       ; $6415: $70
	ld a, $f3                                        ; $6416: $3e $f3
	dec d                                            ; $6418: $15
	ld d, l                                          ; $6419: $55
	ld a, [hl-]                                      ; $641a: $3a
	dec sp                                           ; $641b: $3b
	dec a                                            ; $641c: $3d
	ld b, l                                          ; $641d: $45
	and b                                            ; $641e: $a0
	ld c, a                                          ; $641f: $4f
	add hl, sp                                       ; $6420: $39
	ld d, c                                          ; $6421: $51
	dec sp                                           ; $6422: $3b
	inc a                                            ; $6423: $3c
	ld d, a                                          ; $6424: $57
	inc de                                           ; $6425: $13
	di                                               ; $6426: $f3
	ld b, a                                          ; $6427: $47
	ld b, d                                          ; $6428: $42
	db $ed                                           ; $6429: $ed
	call nc, Call_08b_5153                           ; $642a: $d4 $53 $51
	ld c, [hl]                                       ; $642d: $4e
	ld c, h                                          ; $642e: $4c
	and b                                            ; $642f: $a0
	cpl                                              ; $6430: $2f
	ld b, e                                          ; $6431: $43
	ldh a, [$b7]                                     ; $6432: $f0 $b7
	ldh a, [$8c]                                     ; $6434: $f0 $8c
	ldh a, [$2c]                                     ; $6436: $f0 $2c
	ld b, d                                          ; $6438: $42
	inc de                                           ; $6439: $13
	db $ec                                           ; $643a: $ec
	dec de                                           ; $643b: $1b
	ldh a, [c]                                       ; $643c: $f2
	ld a, e                                          ; $643d: $7b
	ldh a, [c]                                       ; $643e: $f2
	ld a, h                                          ; $643f: $7c
	ld b, h                                          ; $6440: $44
	ld c, h                                          ; $6441: $4c
	and b                                            ; $6442: $a0
	db $eb                                           ; $6443: $eb
	ld d, c                                          ; $6444: $51
	xor h                                            ; $6445: $ac
	db $ec                                           ; $6446: $ec
	ld sp, hl                                        ; $6447: $f9
	ld [$acbd], a                                    ; $6448: $ea $bd $ac
	ld c, c                                          ; $644b: $49
	ccf                                              ; $644c: $3f
	ld c, a                                          ; $644d: $4f
	ldh a, [$57]                                     ; $644e: $f0 $57
	ldh a, [$ae]                                     ; $6450: $f0 $ae
	ld b, h                                          ; $6452: $44
	dec sp                                           ; $6453: $3b

jr_08b_6454:
	dec a                                            ; $6454: $3d
	ld a, [hl-]                                      ; $6455: $3a
	and b                                            ; $6456: $a0
	db $eb                                           ; $6457: $eb
	ld d, c                                          ; $6458: $51
	xor h                                            ; $6459: $ac
	db $ec                                           ; $645a: $ec
	ld sp, hl                                        ; $645b: $f9
	ld [$acbd], a                                    ; $645c: $ea $bd $ac
	jp hl                                            ; $645f: $e9


	ld [hl], d                                       ; $6460: $72
	and b                                            ; $6461: $a0
	db $eb                                           ; $6462: $eb
	ld d, c                                          ; $6463: $51
	xor h                                            ; $6464: $ac
	db $ec                                           ; $6465: $ec
	ld sp, hl                                        ; $6466: $f9
	ld [$acbd], a                                    ; $6467: $ea $bd $ac

jr_08b_646a:
	db $eb                                           ; $646a: $eb
	ld e, a                                          ; $646b: $5f
	and b                                            ; $646c: $a0
	cpl                                              ; $646d: $2f
	ld b, e                                          ; $646e: $43
	jp hl                                            ; $646f: $e9


	xor l                                            ; $6470: $ad
	xor b                                            ; $6471: $a8
	ld b, [hl]                                       ; $6472: $46
	ld d, a                                          ; $6473: $57
	ld d, e                                          ; $6474: $53
	ld c, c                                          ; $6475: $49
	add hl, sp                                       ; $6476: $39
	and b                                            ; $6477: $a0
	db $eb                                           ; $6478: $eb
	ld d, c                                          ; $6479: $51
	xor h                                            ; $647a: $ac
	db $ec                                           ; $647b: $ec
	ld sp, hl                                        ; $647c: $f9
	ld [$acb8], a                                    ; $647d: $ea $b8 $ac
	ld d, c                                          ; $6480: $51
	ld [hl], b                                       ; $6481: $70
	ld d, l                                          ; $6482: $55
	db $eb                                           ; $6483: $eb
	ld e, a                                          ; $6484: $5f
	and b                                            ; $6485: $a0
	db $eb                                           ; $6486: $eb
	ld d, c                                          ; $6487: $51
	xor h                                            ; $6488: $ac
	db $ec                                           ; $6489: $ec
	ld sp, hl                                        ; $648a: $f9
	ld [$acb8], a                                    ; $648b: $ea $b8 $ac
	jp hl                                            ; $648e: $e9


	ld [hl], d                                       ; $648f: $72
	and b                                            ; $6490: $a0
	db $eb                                           ; $6491: $eb
	ld d, c                                          ; $6492: $51
	xor h                                            ; $6493: $ac
	db $ec                                           ; $6494: $ec
	ld sp, hl                                        ; $6495: $f9
	ld [$acb8], a                                    ; $6496: $ea $b8 $ac
	ldh a, [$fa]                                     ; $6499: $f0 $fa
	ld l, h                                          ; $649b: $6c
	ldh a, [$a9]                                     ; $649c: $f0 $a9
	ld e, [hl]                                       ; $649e: $5e
	ld d, e                                          ; $649f: $53
	ld b, [hl]                                       ; $64a0: $46
	dec sp                                           ; $64a1: $3b
	dec a                                            ; $64a2: $3d
	ld b, l                                          ; $64a3: $45
	and b                                            ; $64a4: $a0
	ld [$acab], a                                    ; $64a5: $ea $ab $ac
	db $ed                                           ; $64a8: $ed
	ld d, a                                          ; $64a9: $57
	pop af                                           ; $64aa: $f1
	or $38                                           ; $64ab: $f6 $38
	ld c, h                                          ; $64ad: $4c
	and b                                            ; $64ae: $a0
	cpl                                              ; $64af: $2f
	ld b, e                                          ; $64b0: $43
	adc b                                            ; $64b1: $88
	sub c                                            ; $64b2: $91
	inc [hl]                                         ; $64b3: $34
	pop af                                           ; $64b4: $f1
	or $38                                           ; $64b5: $f6 $38
	ld c, h                                          ; $64b7: $4c
	and b                                            ; $64b8: $a0
	sbc $f0                                          ; $64b9: $de $f0
	cp a                                             ; $64bb: $bf
	db $f4                                           ; $64bc: $f4
	dec de                                           ; $64bd: $1b
	ld a, [hl-]                                      ; $64be: $3a
	ld e, b                                          ; $64bf: $58
	jr c, jr_08b_646a                                ; $64c0: $38 $a8

	ret                                              ; $64c2: $c9


	xor h                                            ; $64c3: $ac
	ld [$3f59], a                                    ; $64c4: $ea $59 $3f
	ld c, b                                          ; $64c7: $48
	and b                                            ; $64c8: $a0
	ld [hl], b                                       ; $64c9: $70
	ld [hl], c                                       ; $64ca: $71
	ld b, c                                          ; $64cb: $41
	ld c, h                                          ; $64cc: $4c
	xor b                                            ; $64cd: $a8
	pop af                                           ; $64ce: $f1
	ld a, c                                          ; $64cf: $79
	pop af                                           ; $64d0: $f1
	ld h, d                                          ; $64d1: $62
	ld b, a                                          ; $64d2: $47
	ldh a, [rBGP]                                    ; $64d3: $f0 $47
	ldh a, [$2a]                                     ; $64d5: $f0 $2a
	ld d, e                                          ; $64d7: $53
	inc de                                           ; $64d8: $13
	inc a                                            ; $64d9: $3c
	inc a                                            ; $64da: $3c
	dec sp                                           ; $64db: $3b
	ld h, c                                          ; $64dc: $61
	ld d, [hl]                                       ; $64dd: $56
	dec sp                                           ; $64de: $3b
	ccf                                              ; $64df: $3f
	ld c, b                                          ; $64e0: $48
	and b                                            ; $64e1: $a0
	db $eb                                           ; $64e2: $eb
	ccf                                              ; $64e3: $3f
	xor b                                            ; $64e4: $a8
	ret                                              ; $64e5: $c9


	inc de                                           ; $64e6: $13
	ld [$3f59], a                                    ; $64e7: $ea $59 $3f
	ld c, b                                          ; $64ea: $48
	and b                                            ; $64eb: $a0
	cpl                                              ; $64ec: $2f
	ld b, e                                          ; $64ed: $43
	jr c, jr_08b_655e                                ; $64ee: $38 $6e

	xor h                                            ; $64f0: $ac
	jp hl                                            ; $64f1: $e9


	cp h                                             ; $64f2: $bc
	xor h                                            ; $64f3: $ac
	jp hl                                            ; $64f4: $e9


	dec l                                            ; $64f5: $2d
	and b                                            ; $64f6: $a0
	add hl, bc                                       ; $64f7: $09
	db $eb                                           ; $64f8: $eb
	ld a, e                                          ; $64f9: $7b
	ld c, d                                          ; $64fa: $4a
	xor h                                            ; $64fb: $ac
	ld h, h                                          ; $64fc: $64
	ldh a, [rAUDVOL]                                 ; $64fd: $f0 $24
	ld d, c                                          ; $64ff: $51
	ld c, [hl]                                       ; $6500: $4e
	db $ec                                           ; $6501: $ec
	or $ac                                           ; $6502: $f6 $ac
	jr c, jr_08b_653e                                ; $6504: $38 $38

	ld c, h                                          ; $6506: $4c
	and b                                            ; $6507: $a0
	db $ec                                           ; $6508: $ec
	ld a, [de]                                       ; $6509: $1a
	xor h                                            ; $650a: $ac
	db $eb                                           ; $650b: $eb
	ld a, e                                          ; $650c: $7b
	ld c, d                                          ; $650d: $4a
	xor h                                            ; $650e: $ac
	ld b, d                                          ; $650f: $42
	ld b, c                                          ; $6510: $41
	ldh a, [rKEY1]                                   ; $6511: $f0 $4d
	ld d, a                                          ; $6513: $57
	ld d, c                                          ; $6514: $51
	ld c, [hl]                                       ; $6515: $4e
	ld b, d                                          ; $6516: $42
	ld c, a                                          ; $6517: $4f
	jr c, jr_08b_6552                                ; $6518: $38 $38

	ld h, e                                          ; $651a: $63
	ld c, h                                          ; $651b: $4c
	and b                                            ; $651c: $a0
	ld c, a                                          ; $651d: $4f
	add hl, sp                                       ; $651e: $39
	ld d, h                                          ; $651f: $54
	ld b, c                                          ; $6520: $41
	ld a, [hl-]                                      ; $6521: $3a
	db $ec                                           ; $6522: $ec
	ld l, c                                          ; $6523: $69
	xor h                                            ; $6524: $ac
	pop de                                           ; $6525: $d1
	ld a, b                                          ; $6526: $78
	ld c, [hl]                                       ; $6527: $4e
	ldh a, [$c6]                                     ; $6528: $f0 $c6
	ldh a, [rHDMA3]                                  ; $652a: $f0 $53
	ld d, e                                          ; $652c: $53
	db $ec                                           ; $652d: $ec
	dec bc                                           ; $652e: $0b
	and b                                            ; $652f: $a0
	cpl                                              ; $6530: $2f
	ld [hl-], a                                      ; $6531: $32
	ld l, e                                          ; $6532: $6b
	ld h, d                                          ; $6533: $62
	ldh a, [rAUDVOL]                                 ; $6534: $f0 $24
	db $ec                                           ; $6536: $ec
	ld d, $36                                        ; $6537: $16 $36
	inc sp                                           ; $6539: $33
	add hl, bc                                       ; $653a: $09
	cpl                                              ; $653b: $2f
	add sp, $0c                                      ; $653c: $e8 $0c

jr_08b_653e:
	add hl, bc                                       ; $653e: $09
	cpl                                              ; $653f: $2f
	add sp, $27                                      ; $6540: $e8 $27
	add hl, bc                                       ; $6542: $09
	cpl                                              ; $6543: $2f
	ld [hl-], a                                      ; $6544: $32
	pop af                                           ; $6545: $f1
	ld a, e                                          ; $6546: $7b
	ldh a, [hDisp1_WY]                                     ; $6547: $f0 $95
	ld c, e                                          ; $6549: $4b
	ldh a, [$99]                                     ; $654a: $f0 $99
	sub b                                            ; $654c: $90
	db $ed                                           ; $654d: $ed
	and [hl]                                         ; $654e: $a6
	inc de                                           ; $654f: $13
	xor a                                            ; $6550: $af
	or l                                             ; $6551: $b5

jr_08b_6552:
	and e                                            ; $6552: $a3
	cpl                                              ; $6553: $2f
	ld [hl-], a                                      ; $6554: $32
	adc e                                            ; $6555: $8b
	ld e, h                                          ; $6556: $5c
	ld a, [hl-]                                      ; $6557: $3a
	db $ed                                           ; $6558: $ed
	jr @+$15                                         ; $6559: $18 $13

	db $eb                                           ; $655b: $eb
	ld h, l                                          ; $655c: $65
	xor b                                            ; $655d: $a8

jr_08b_655e:
	xor a                                            ; $655e: $af
	or l                                             ; $655f: $b5
	and e                                            ; $6560: $a3
	cpl                                              ; $6561: $2f
	ld [hl-], a                                      ; $6562: $32
	adc e                                            ; $6563: $8b
	ld e, h                                          ; $6564: $5c
	ld a, [hl-]                                      ; $6565: $3a
	ldh a, [$74]                                     ; $6566: $f0 $74
	ldh a, [$7a]                                     ; $6568: $f0 $7a
	ld c, e                                          ; $656a: $4b
	inc de                                           ; $656b: $13
	ld [$3ac1], a                                    ; $656c: $ea $c1 $3a
	ld e, d                                          ; $656f: $5a
	ld b, d                                          ; $6570: $42
	pop af                                           ; $6571: $f1
	ld [hl], b                                       ; $6572: $70
	ldh a, [rHDMA2]                                  ; $6573: $f0 $52
	ldh a, [$2c]                                     ; $6575: $f0 $2c
	xor b                                            ; $6577: $a8
	xor a                                            ; $6578: $af
	or l                                             ; $6579: $b5
	and e                                            ; $657a: $a3
	cpl                                              ; $657b: $2f
	db $ed                                           ; $657c: $ed
	ld l, [hl]                                       ; $657d: $6e
	inc [hl]                                         ; $657e: $34
	ret                                              ; $657f: $c9


	ld a, a                                          ; $6580: $7f
	ld b, a                                          ; $6581: $47
	inc de                                           ; $6582: $13
	ld a, [hl-]                                      ; $6583: $3a
	dec sp                                           ; $6584: $3b
	ccf                                              ; $6585: $3f
	jr c, jr_08b_65d6                                ; $6586: $38 $4e

	ld a, l                                          ; $6588: $7d
	pop af                                           ; $6589: $f1
	db $e3                                           ; $658a: $e3
	ldh a, [rP1]                                     ; $658b: $f0 $00
	ld h, l                                          ; $658d: $65
	ldh a, [$50]                                     ; $658e: $f0 $50
	ld d, e                                          ; $6590: $53
	ld b, [hl]                                       ; $6591: $46
	ld c, [hl]                                       ; $6592: $4e
	inc de                                           ; $6593: $13
	xor a                                            ; $6594: $af
	or l                                             ; $6595: $b5
	and e                                            ; $6596: $a3
	cpl                                              ; $6597: $2f
	db $ed                                           ; $6598: $ed
	ld l, [hl]                                       ; $6599: $6e
	inc [hl]                                         ; $659a: $34
	pop af                                           ; $659b: $f1
	sub a                                            ; $659c: $97
	ldh a, [$3d]                                     ; $659d: $f0 $3d
	ldh a, [rAUD4LEN]                                ; $659f: $f0 $20
	ld h, l                                          ; $65a1: $65
	ldh a, [$32]                                     ; $65a2: $f0 $32
	ld h, d                                          ; $65a4: $62
	inc de                                           ; $65a5: $13
	ldh a, [rAUDTERM]                                ; $65a6: $f0 $25
	ld [hl], c                                       ; $65a8: $71
	ccf                                              ; $65a9: $3f
	jr c, jr_08b_65fa                                ; $65aa: $38 $4e

	xor b                                            ; $65ac: $a8
	xor a                                            ; $65ad: $af
	or l                                             ; $65ae: $b5
	and e                                            ; $65af: $a3
	cpl                                              ; $65b0: $2f
	db $ed                                           ; $65b1: $ed
	ld l, [hl]                                       ; $65b2: $6e
	inc [hl]                                         ; $65b3: $34
	ld b, [hl]                                       ; $65b4: $46
	ld c, [hl]                                       ; $65b5: $4e
	ldh a, [$99]                                     ; $65b6: $f0 $99
	sub b                                            ; $65b8: $90
	ld b, d                                          ; $65b9: $42
	inc de                                           ; $65ba: $13
	ldh a, [c]                                       ; $65bb: $f2
	inc h                                            ; $65bc: $24
	ldh a, [c]                                       ; $65bd: $f2
	ld d, l                                          ; $65be: $55
	ld h, d                                          ; $65bf: $62
	db $ed                                           ; $65c0: $ed
	ld bc, $4e38                                     ; $65c1: $01 $38 $4e
	xor b                                            ; $65c4: $a8
	xor a                                            ; $65c5: $af
	or l                                             ; $65c6: $b5
	and e                                            ; $65c7: $a3
	cpl                                              ; $65c8: $2f
	ld [hl-], a                                      ; $65c9: $32
	db $ec                                           ; $65ca: $ec
	sub a                                            ; $65cb: $97
	ld h, d                                          ; $65cc: $62
	ldh a, [c]                                       ; $65cd: $f2
	ret                                              ; $65ce: $c9


	dec sp                                           ; $65cf: $3b
	ccf                                              ; $65d0: $3f
	inc de                                           ; $65d1: $13
	jr c, jr_08b_6622                                ; $65d2: $38 $4e

	xor a                                            ; $65d4: $af
	or l                                             ; $65d5: $b5

jr_08b_65d6:
	xor b                                            ; $65d6: $a8
	db $ed                                           ; $65d7: $ed
	xor c                                            ; $65d8: $a9
	ld b, d                                          ; $65d9: $42
	adc c                                            ; $65da: $89
	ldh a, [$7f]                                     ; $65db: $f0 $7f
	ld a, [hl-]                                      ; $65dd: $3a
	ld d, b                                          ; $65de: $50
	add a                                            ; $65df: $87
	ldh a, [$5b]                                     ; $65e0: $f0 $5b
	ldh a, [$5e]                                     ; $65e2: $f0 $5e
	ld b, h                                          ; $65e4: $44
	ld a, [hl-]                                      ; $65e5: $3a
	and e                                            ; $65e6: $a3
	cpl                                              ; $65e7: $2f
	ld [hl-], a                                      ; $65e8: $32
	ld a, a                                          ; $65e9: $7f
	ld b, a                                          ; $65ea: $47
	ld a, [hl-]                                      ; $65eb: $3a
	ld c, [hl]                                       ; $65ec: $4e
	ldh a, [$ab]                                     ; $65ed: $f0 $ab
	ld b, d                                          ; $65ef: $42
	adc h                                            ; $65f0: $8c
	ld d, e                                          ; $65f1: $53
	inc de                                           ; $65f2: $13
	jr c, jr_08b_6643                                ; $65f3: $38 $4e

	ld d, b                                          ; $65f5: $50
	ld a, $38                                        ; $65f6: $3e $38
	xor b                                            ; $65f8: $a8
	db $ed                                           ; $65f9: $ed

jr_08b_65fa:
	xor c                                            ; $65fa: $a9
	ld h, d                                          ; $65fb: $62
	pop af                                           ; $65fc: $f1
	pop hl                                           ; $65fd: $e1
	ld d, a                                          ; $65fe: $57
	pop af                                           ; $65ff: $f1
	dec a                                            ; $6600: $3d
	inc a                                            ; $6601: $3c
	ld a, c                                          ; $6602: $79
	ld c, [hl]                                       ; $6603: $4e
	ld a, [hl-]                                      ; $6604: $3a
	ld b, c                                          ; $6605: $41
	ccf                                              ; $6606: $3f
	xor h                                            ; $6607: $ac
	ld l, l                                          ; $6608: $6d
	ldh a, [$65]                                     ; $6609: $f0 $65
	ldh a, [$98]                                     ; $660b: $f0 $98
	ld b, h                                          ; $660d: $44
	ld [hl], $33                                     ; $660e: $36 $33
	add hl, bc                                       ; $6610: $09
	cpl                                              ; $6611: $2f
	ld [hl-], a                                      ; $6612: $32
	pop af                                           ; $6613: $f1
	cpl                                              ; $6614: $2f
	ldh a, [rPCM34]                                  ; $6615: $f0 $77
	pop af                                           ; $6617: $f1
	bit 2, e                                         ; $6618: $cb $53

jr_08b_661a:
	adc e                                            ; $661a: $8b
	ld e, h                                          ; $661b: $5c
	ld d, b                                          ; $661c: $50
	ld a, $38                                        ; $661d: $3e $38
	inc de                                           ; $661f: $13
	xor a                                            ; $6620: $af
	or l                                             ; $6621: $b5

jr_08b_6622:
	and e                                            ; $6622: $a3
	cpl                                              ; $6623: $2f
	ld [hl-], a                                      ; $6624: $32
	add e                                            ; $6625: $83
	ldh a, [$2f]                                     ; $6626: $f0 $2f
	ld e, c                                          ; $6628: $59
	ld d, e                                          ; $6629: $53
	adc e                                            ; $662a: $8b
	ld e, h                                          ; $662b: $5c
	ld d, b                                          ; $662c: $50
	ld a, $38                                        ; $662d: $3e $38
	inc de                                           ; $662f: $13
	ld [hl-], a                                      ; $6630: $32
	sbc b                                            ; $6631: $98
	ldh a, [$7c]                                     ; $6632: $f0 $7c
	ld [hl], l                                       ; $6634: $75
	db $ec                                           ; $6635: $ec
	ret c                                            ; $6636: $d8

	sub a                                            ; $6637: $97
	dec [hl]                                         ; $6638: $35
	inc sp                                           ; $6639: $33
	inc de                                           ; $663a: $13
	xor a                                            ; $663b: $af
	or l                                             ; $663c: $b5
	and e                                            ; $663d: $a3
	cpl                                              ; $663e: $2f
	ld [hl-], a                                      ; $663f: $32
	db $eb                                           ; $6640: $eb
	inc hl                                           ; $6641: $23
	ld c, e                                          ; $6642: $4b

jr_08b_6643:
	ld b, [hl]                                       ; $6643: $46
	ld d, d                                          ; $6644: $52
	ld d, a                                          ; $6645: $57
	inc de                                           ; $6646: $13
	adc e                                            ; $6647: $8b
	ld e, h                                          ; $6648: $5c
	db $ec                                           ; $6649: $ec
	ret c                                            ; $664a: $d8

	xor a                                            ; $664b: $af
	inc de                                           ; $664c: $13
	or l                                             ; $664d: $b5
	and e                                            ; $664e: $a3
	cpl                                              ; $664f: $2f
	ld [hl-], a                                      ; $6650: $32
	ld [$4b29], a                                    ; $6651: $ea $29 $4b
	ld b, [hl]                                       ; $6654: $46
	ld d, d                                          ; $6655: $52
	ld d, a                                          ; $6656: $57
	inc de                                           ; $6657: $13
	adc e                                            ; $6658: $8b
	ld e, h                                          ; $6659: $5c
	db $ec                                           ; $665a: $ec
	ret c                                            ; $665b: $d8

	xor a                                            ; $665c: $af
	inc de                                           ; $665d: $13
	or l                                             ; $665e: $b5
	and e                                            ; $665f: $a3
	cpl                                              ; $6660: $2f
	ld [hl-], a                                      ; $6661: $32
	db $eb                                           ; $6662: $eb
	add c                                            ; $6663: $81
	ld c, e                                          ; $6664: $4b
	ld b, [hl]                                       ; $6665: $46
	ld d, d                                          ; $6666: $52
	ld d, a                                          ; $6667: $57
	inc de                                           ; $6668: $13
	adc e                                            ; $6669: $8b
	ld e, h                                          ; $666a: $5c
	db $ec                                           ; $666b: $ec
	ret c                                            ; $666c: $d8

jr_08b_666d:
	xor a                                            ; $666d: $af
	inc de                                           ; $666e: $13
	or l                                             ; $666f: $b5
	and e                                            ; $6670: $a3
	ld c, h                                          ; $6671: $4c
	add l                                            ; $6672: $85
	inc [hl]                                         ; $6673: $34
	ldh a, [$f4]                                     ; $6674: $f0 $f4
	ld e, [hl]                                       ; $6676: $5e
	ccf                                              ; $6677: $3f
	ld c, [hl]                                       ; $6678: $4e
	and c                                            ; $6679: $a1
	cpl                                              ; $667a: $2f
	ld b, e                                          ; $667b: $43
	ld l, e                                          ; $667c: $6b
	ld h, d                                          ; $667d: $62
	and c                                            ; $667e: $a1
	ld l, a                                          ; $667f: $6f
	ld c, a                                          ; $6680: $4f
	xor h                                            ; $6681: $ac
	ld l, d                                          ; $6682: $6a
	ld [hl], a                                       ; $6683: $77
	jr c, jr_08b_661a                                ; $6684: $38 $94

	ld a, $3d                                        ; $6686: $3e $3d

jr_08b_6688:
	ld b, c                                          ; $6688: $41
	ld b, h                                          ; $6689: $44
	ld e, l                                          ; $668a: $5d
	ld e, d                                          ; $668b: $5a
	xor l                                            ; $668c: $ad
	pop af                                           ; $668d: $f1
	add d                                            ; $668e: $82
	inc a                                            ; $668f: $3c
	db $ec                                           ; $6690: $ec
	xor $42                                          ; $6691: $ee $42
	ldh a, [$38]                                     ; $6693: $f0 $38
	and b                                            ; $6695: $a0
	cpl                                              ; $6696: $2f
	ld b, e                                          ; $6697: $43
	ld h, h                                          ; $6698: $64
	jr c, jr_08b_6688                                ; $6699: $38 $ed

	xor c                                            ; $669b: $a9
	xor b                                            ; $669c: $a8
	ld e, d                                          ; $669d: $5a

jr_08b_669e:
	ld d, h                                          ; $669e: $54
	ld h, a                                          ; $669f: $67
	ld d, l                                          ; $66a0: $55
	ld b, c                                          ; $66a1: $41
	ld b, h                                          ; $66a2: $44
	ld b, l                                          ; $66a3: $45
	and b                                            ; $66a4: $a0
	ld b, [hl]                                       ; $66a5: $46
	dec sp                                           ; $66a6: $3b
	inc [hl]                                         ; $66a7: $34
	ld b, [hl]                                       ; $66a8: $46
	dec sp                                           ; $66a9: $3b
	dec a                                            ; $66aa: $3d
	and b                                            ; $66ab: $a0

jr_08b_66ac:
	cpl                                              ; $66ac: $2f
	ld b, e                                          ; $66ad: $43
	ld e, [hl]                                       ; $66ae: $5e
	dec sp                                           ; $66af: $3b
	inc [hl]                                         ; $66b0: $34
	ld l, e                                          ; $66b1: $6b
	ld d, e                                          ; $66b2: $53
	ld b, [hl]                                       ; $66b3: $46
	dec sp                                           ; $66b4: $3b
	dec a                                            ; $66b5: $3d
	dec sp                                           ; $66b6: $3b
	ccf                                              ; $66b7: $3f
	and c                                            ; $66b8: $a1

jr_08b_66b9:
	ldh a, [$08]                                     ; $66b9: $f0 $08
	ld d, b                                          ; $66bb: $50
	inc [hl]                                         ; $66bc: $34
	ld d, h                                          ; $66bd: $54
	ld c, l                                          ; $66be: $4d
	ldh a, [$f4]                                     ; $66bf: $f0 $f4
	ld e, [hl]                                       ; $66c1: $5e
	ccf                                              ; $66c2: $3f
	ld c, [hl]                                       ; $66c3: $4e
	xor c                                            ; $66c4: $a9
	pop af                                           ; $66c5: $f1
	inc l                                            ; $66c6: $2c
	pop af                                           ; $66c7: $f1
	sbc [hl]                                         ; $66c8: $9e
	ldh a, [rAUD1HIGH]                               ; $66c9: $f0 $14
	sbc l                                            ; $66cb: $9d
	ld d, b                                          ; $66cc: $50
	jr c, jr_08b_666d                                ; $66cd: $38 $9e

	ld b, a                                          ; $66cf: $47
	xor h                                            ; $66d0: $ac
	xor $06                                          ; $66d1: $ee $06
	ld b, a                                          ; $66d3: $47
	di                                               ; $66d4: $f3
	sub e                                            ; $66d5: $93

jr_08b_66d6:
	di                                               ; $66d6: $f3
	rla                                              ; $66d7: $17
	ldh a, [$8c]                                     ; $66d8: $f0 $8c
	ld a, $3d                                        ; $66da: $3e $3d
	ldh a, [c]                                       ; $66dc: $f2
	ret c                                            ; $66dd: $d8

	ld b, l                                          ; $66de: $45
	and b                                            ; $66df: $a0
	cpl                                              ; $66e0: $2f
	ld b, e                                          ; $66e1: $43
	rst JumpTable                                          ; $66e2: $c7
	ld b, h                                          ; $66e3: $44
	dec sp                                           ; $66e4: $3b
	ld e, l                                          ; $66e5: $5d
	and c                                            ; $66e6: $a1
	db $ec                                           ; $66e7: $ec
	db $f4                                           ; $66e8: $f4
	dec [hl]                                         ; $66e9: $35
	rla                                              ; $66ea: $17
	xor $1e                                          ; $66eb: $ee $1e
	ldh a, [c]                                       ; $66ed: $f2
	inc b                                            ; $66ee: $04
	ld c, e                                          ; $66ef: $4b
	ld b, [hl]                                       ; $66f0: $46
	ld d, d                                          ; $66f1: $52
	ld d, a                                          ; $66f2: $57
	pop af                                           ; $66f3: $f1
	ld de, $62f0                                     ; $66f4: $11 $f0 $62
	ld c, a                                          ; $66f7: $4f
	xor h                                            ; $66f8: $ac
	ldh a, [$5d]                                     ; $66f9: $f0 $5d
	ld h, e                                          ; $66fb: $63
	ld d, b                                          ; $66fc: $50
	ld a, [hl-]                                      ; $66fd: $3a
	inc a                                            ; $66fe: $3c
	dec sp                                           ; $66ff: $3b
	dec a                                            ; $6700: $3d
	ld b, d                                          ; $6701: $42
	ld b, a                                          ; $6702: $47
	ld c, h                                          ; $6703: $4c
	and b                                            ; $6704: $a0
	cpl                                              ; $6705: $2f
	ld b, e                                          ; $6706: $43
	ld l, d                                          ; $6707: $6a
	ld e, e                                          ; $6708: $5b
	ld d, [hl]                                       ; $6709: $56
	halt                                             ; $670a: $76
	ld b, d                                          ; $670b: $42
	ldh a, [$38]                                     ; $670c: $f0 $38
	ld d, e                                          ; $670e: $53
	inc de                                           ; $670f: $13
	ldh a, [rAUD1ENV]                                ; $6710: $f0 $12
	jr c, jr_08b_6771                                ; $6712: $38 $5d

	ld e, d                                          ; $6714: $5a
	and b                                            ; $6715: $a0
	xor $1e                                          ; $6716: $ee $1e
	ldh a, [c]                                       ; $6718: $f2
	inc b                                            ; $6719: $04
	ld c, e                                          ; $671a: $4b
	xor h                                            ; $671b: $ac
	jr c, jr_08b_669e                                ; $671c: $38 $80

	ld c, a                                          ; $671e: $4f
	xor $06                                          ; $671f: $ee $06
	ld b, a                                          ; $6721: $47
	ldh a, [$b2]                                     ; $6722: $f0 $b2
	ld b, c                                          ; $6724: $41
	ld c, d                                          ; $6725: $4a
	dec a                                            ; $6726: $3d
	ld b, d                                          ; $6727: $42
	ld b, a                                          ; $6728: $47
	xor h                                            ; $6729: $ac
	jr c, jr_08b_66ac                                ; $672a: $38 $80

	inc a                                            ; $672c: $3c
	ld d, b                                          ; $672d: $50
	inc a                                            ; $672e: $3c
	ld a, [hl-]                                      ; $672f: $3a
	ld c, b                                          ; $6730: $48
	and c                                            ; $6731: $a1
	cpl                                              ; $6732: $2f
	ld b, e                                          ; $6733: $43
	ld l, e                                          ; $6734: $6b
	ld d, e                                          ; $6735: $53
	and c                                            ; $6736: $a1
	jr c, jr_08b_66b9                                ; $6737: $38 $80

	inc a                                            ; $6739: $3c
	ld d, b                                          ; $673a: $50
	xor h                                            ; $673b: $ac
	xor $06                                          ; $673c: $ee $06
	ld b, a                                          ; $673e: $47
	ldh a, [$b2]                                     ; $673f: $f0 $b2
	ld a, e                                          ; $6741: $7b
	ld a, [hl-]                                      ; $6742: $3a
	ld d, l                                          ; $6743: $55
	inc de                                           ; $6744: $13
	ld a, [hl-]                                      ; $6745: $3a
	dec sp                                           ; $6746: $3b
	dec a                                            ; $6747: $3d
	ld b, d                                          ; $6748: $42
	inc a                                            ; $6749: $3c
	ld a, [hl-]                                      ; $674a: $3a
	ld c, b                                          ; $674b: $48
	and b                                            ; $674c: $a0
	cpl                                              ; $674d: $2f
	ld b, e                                          ; $674e: $43
	xor $06                                          ; $674f: $ee $06
	ld b, a                                          ; $6751: $47
	inc a                                            ; $6752: $3c
	xor l                                            ; $6753: $ad
	jr c, jr_08b_66d6                                ; $6754: $38 $80

	sbc l                                            ; $6756: $9d
	ld d, b                                          ; $6757: $50
	jr c, jr_08b_679e                                ; $6758: $38 $44

jr_08b_675a:
	ld e, a                                          ; $675a: $5f
	add hl, sp                                       ; $675b: $39
	ld c, b                                          ; $675c: $48
	and b                                            ; $675d: $a0
	ld l, d                                          ; $675e: $6a
	inc a                                            ; $675f: $3c
	ld d, b                                          ; $6760: $50
	ld c, d                                          ; $6761: $4a
	ld c, a                                          ; $6762: $4f
	inc de                                           ; $6763: $13
	ldh a, [$c7]                                     ; $6764: $f0 $c7
	ld d, l                                          ; $6766: $55
	ld a, [hl-]                                      ; $6767: $3a
	jr c, @+$47                                      ; $6768: $38 $45

	ld c, h                                          ; $676a: $4c
	xor b                                            ; $676b: $a8
	ld d, d                                          ; $676c: $52
	dec a                                            ; $676d: $3d
	xor $1e                                          ; $676e: $ee $1e
	ldh a, [c]                                       ; $6770: $f2

jr_08b_6771:
	inc b                                            ; $6771: $04
	ld l, h                                          ; $6772: $6c
	dec a                                            ; $6773: $3d
	jr c, jr_08b_67bd                                ; $6774: $38 $47

	ld c, b                                          ; $6776: $48
	and b                                            ; $6777: $a0
	cpl                                              ; $6778: $2f
	ld b, e                                          ; $6779: $43
	ld e, [hl]                                       ; $677a: $5e
	dec sp                                           ; $677b: $3b
	ld c, b                                          ; $677c: $48
	and b                                            ; $677d: $a0
	jr c, @+$36                                      ; $677e: $38 $34

	jr c, jr_08b_67ba                                ; $6780: $38 $38

	ld b, d                                          ; $6782: $42
	xor b                                            ; $6783: $a8
	ldh a, [$34]                                     ; $6784: $f0 $34
	ld b, a                                          ; $6786: $47
	db $eb                                           ; $6787: $eb
	ld b, d                                          ; $6788: $42
	inc a                                            ; $6789: $3c
	ld d, b                                          ; $678a: $50
	xor b                                            ; $678b: $a8
	ld e, b                                          ; $678c: $58
	ld b, [hl]                                       ; $678d: $46
	inc [hl]                                         ; $678e: $34
	ld c, a                                          ; $678f: $4f
	add hl, sp                                       ; $6790: $39
	or b                                             ; $6791: $b0
	and b                                            ; $6792: $a0
	cpl                                              ; $6793: $2f
	ld b, e                                          ; $6794: $43
	ld b, [hl]                                       ; $6795: $46
	dec sp                                           ; $6796: $3b
	inc [hl]                                         ; $6797: $34
	add hl, sp                                       ; $6798: $39
	inc [hl]                                         ; $6799: $34
	xor $1f                                          ; $679a: $ee $1f
	and b                                            ; $679c: $a0
	db $ed                                           ; $679d: $ed

jr_08b_679e:
	ld d, a                                          ; $679e: $57
	pop af                                           ; $679f: $f1
	xor d                                            ; $67a0: $aa
	ld a, a                                          ; $67a1: $7f
	ld d, e                                          ; $67a2: $53
	ld a, [hl]                                       ; $67a3: $7e
	ld d, l                                          ; $67a4: $55
	ccf                                              ; $67a5: $3f
	xor h                                            ; $67a6: $ac
	ld [$3cd9], a                                    ; $67a7: $ea $d9 $3c
	ld d, b                                          ; $67aa: $50
	xor h                                            ; $67ab: $ac
	push af                                          ; $67ac: $f5
	ld h, h                                          ; $67ad: $64
	ldh a, [rTIMA]                                   ; $67ae: $f0 $05
	ld b, a                                          ; $67b0: $47
	ld c, d                                          ; $67b1: $4a
	ld c, a                                          ; $67b2: $4f
	ldh a, [$e7]                                     ; $67b3: $f0 $e7
	ld d, b                                          ; $67b5: $50
	ld a, [hl-]                                      ; $67b6: $3a
	jr c, jr_08b_675a                                ; $67b7: $38 $a1

	cpl                                              ; $67b9: $2f

jr_08b_67ba:
	ld b, e                                          ; $67ba: $43
	jr c, jr_08b_67f5                                ; $67bb: $38 $38

jr_08b_67bd:
	ld b, l                                          ; $67bd: $45
	and b                                            ; $67be: $a0
	ld b, [hl]                                       ; $67bf: $46
	dec sp                                           ; $67c0: $3b
	xor h                                            ; $67c1: $ac
	ld c, a                                          ; $67c2: $4f
	add hl, sp                                       ; $67c3: $39
	ldh a, [c]                                       ; $67c4: $f2
	ld d, h                                          ; $67c5: $54
	ld d, e                                          ; $67c6: $53
	ldh a, [c]                                       ; $67c7: $f2
	ld c, l                                          ; $67c8: $4d
	jr c, @+$41                                      ; $67c9: $38 $3f

	ld c, [hl]                                       ; $67cb: $4e
	ld b, c                                          ; $67cc: $41
	ld b, h                                          ; $67cd: $44
	and b                                            ; $67ce: $a0
	cpl                                              ; $67cf: $2f
	ld b, e                                          ; $67d0: $43
	jp hl                                            ; $67d1: $e9


	inc [hl]                                         ; $67d2: $34
	and b                                            ; $67d3: $a0
	xor $1f                                          ; $67d4: $ee $1f
	inc [hl]                                         ; $67d6: $34
	ld [$a0a9], a                                    ; $67d7: $ea $a9 $a0
	ld b, b                                          ; $67da: $40
	ld c, l                                          ; $67db: $4d
	ld e, e                                          ; $67dc: $5b
	ld d, [hl]                                       ; $67dd: $56
	inc [hl]                                         ; $67de: $34
	pop af                                           ; $67df: $f1
	db $ed                                           ; $67e0: $ed
	pop af                                           ; $67e1: $f1
	ld h, $4a                                        ; $67e2: $26 $4a
	ld c, a                                          ; $67e4: $4f
	inc de                                           ; $67e5: $13
	ld a, $52                                        ; $67e6: $3e $52
	ld a, $66                                        ; $67e8: $3e $66
	add hl, sp                                       ; $67ea: $39
	and b                                            ; $67eb: $a0
	cpl                                              ; $67ec: $2f
	ld b, e                                          ; $67ed: $43
	db $ed                                           ; $67ee: $ed
	ld d, a                                          ; $67ef: $57
	xor h                                            ; $67f0: $ac
	ld [$cdca], a                                    ; $67f1: $ea $ca $cd
	and b                                            ; $67f4: $a0

jr_08b_67f5:
	cpl                                              ; $67f5: $2f
	ld b, e                                          ; $67f6: $43
	db $ed                                           ; $67f7: $ed
	ld d, a                                          ; $67f8: $57
	xor h                                            ; $67f9: $ac
	db $ec                                           ; $67fa: $ec
	ld c, [hl]                                       ; $67fb: $4e
	call Call_08b_54a0                               ; $67fc: $cd $a0 $54
	add hl, sp                                       ; $67ff: $39
	jr c, jr_08b_683b                                ; $6800: $38 $39

	ldh a, [$ee]                                     ; $6802: $f0 $ee
	ld h, d                                          ; $6804: $62
	inc de                                           ; $6805: $13
	pop af                                           ; $6806: $f1
	db $ed                                           ; $6807: $ed
	pop af                                           ; $6808: $f1
	ld h, $51                                        ; $6809: $26 $51
	ld c, [hl]                                       ; $680b: $4e
	db $ec                                           ; $680c: $ec
	or $ac                                           ; $680d: $f6 $ac
	ld [$4cd9], a                                    ; $680f: $ea $d9 $4c
	and b                                            ; $6812: $a0
	cpl                                              ; $6813: $2f
	add sp, $32                                      ; $6814: $e8 $32
	add hl, bc                                       ; $6816: $09
	ld l, a                                          ; $6817: $6f
	ld c, a                                          ; $6818: $4f
	inc [hl]                                         ; $6819: $34
	ld b, b                                          ; $681a: $40
	add hl, sp                                       ; $681b: $39
	ld [hl], a                                       ; $681c: $77
	dec sp                                           ; $681d: $3b
	ccf                                              ; $681e: $3f
	dec a                                            ; $681f: $3d
	ld b, d                                          ; $6820: $42
	dec [hl]                                         ; $6821: $35
	rla                                              ; $6822: $17
	ld d, h                                          ; $6823: $54
	add hl, sp                                       ; $6824: $39
	jr c, jr_08b_6860                                ; $6825: $38 $39

	ld b, d                                          ; $6827: $42
	ld b, a                                          ; $6828: $47
	xor h                                            ; $6829: $ac
	ret                                              ; $682a: $c9


jr_08b_682b:
	di                                               ; $682b: $f3
	ld a, [hl]                                       ; $682c: $7e
	ld c, l                                          ; $682d: $4d
	db $ec                                           ; $682e: $ec
	add hl, de                                       ; $682f: $19
	ld c, b                                          ; $6830: $48
	and b                                            ; $6831: $a0
	pop af                                           ; $6832: $f1
	ld [hl], b                                       ; $6833: $70
	add h                                            ; $6834: $84
	ldh a, [rSTAT]                                   ; $6835: $f0 $41
	ld d, e                                          ; $6837: $53
	pop af                                           ; $6838: $f1
	db $ed                                           ; $6839: $ed
	pop af                                           ; $683a: $f1

jr_08b_683b:
	ld h, $51                                        ; $683b: $26 $51
	ld c, [hl]                                       ; $683d: $4e
	inc de                                           ; $683e: $13
	ldh a, [$28]                                     ; $683f: $f0 $28
	ld b, l                                          ; $6841: $45
	ld c, h                                          ; $6842: $4c
	dec [hl]                                         ; $6843: $35
	di                                               ; $6844: $f3
	ld a, [hl]                                       ; $6845: $7e
	ld c, l                                          ; $6846: $4d
	ld h, c                                          ; $6847: $61
	ld d, [hl]                                       ; $6848: $56
	add hl, sp                                       ; $6849: $39
	ld a, [hl-]                                      ; $684a: $3a
	and b                                            ; $684b: $a0
	pop af                                           ; $684c: $f1
	ld [hl], b                                       ; $684d: $70
	add h                                            ; $684e: $84
	ldh a, [rSTAT]                                   ; $684f: $f0 $41
	ld d, e                                          ; $6851: $53
	pop af                                           ; $6852: $f1
	db $ed                                           ; $6853: $ed
	pop af                                           ; $6854: $f1
	ld h, $51                                        ; $6855: $26 $51
	ld c, [hl]                                       ; $6857: $4e
	inc de                                           ; $6858: $13
	ldh a, [$28]                                     ; $6859: $f0 $28
	ld b, l                                          ; $685b: $45
	ld c, h                                          ; $685c: $4c
	xor b                                            ; $685d: $a8
	ldh a, [$0a]                                     ; $685e: $f0 $0a

jr_08b_6860:
	ld d, l                                          ; $6860: $55
	ld b, b                                          ; $6861: $40
	add hl, sp                                       ; $6862: $39
	jr c, jr_08b_689e                                ; $6863: $38 $39

	add h                                            ; $6865: $84
	ld d, e                                          ; $6866: $53
	inc de                                           ; $6867: $13
	pop af                                           ; $6868: $f1
	and [hl]                                         ; $6869: $a6
	ld c, l                                          ; $686a: $4d
	ld a, [hl-]                                      ; $686b: $3a
	jr c, @+$3e                                      ; $686c: $38 $3c

	ld a, [hl-]                                      ; $686e: $3a
	ld [hl], h                                       ; $686f: $74
	ld c, b                                          ; $6870: $48
	and b                                            ; $6871: $a0
	cpl                                              ; $6872: $2f
	add sp, $33                                      ; $6873: $e8 $33
	add hl, bc                                       ; $6875: $09
	ld e, [hl]                                       ; $6876: $5e
	dec sp                                           ; $6877: $3b
	xor c                                            ; $6878: $a9
	rst JumpTable                                          ; $6879: $c7
	ld c, h                                          ; $687a: $4c
	and b                                            ; $687b: $a0
	ld e, [hl]                                       ; $687c: $5e
	dec sp                                           ; $687d: $3b
	xor c                                            ; $687e: $a9
	ld c, a                                          ; $687f: $4f
	add hl, sp                                       ; $6880: $39

jr_08b_6881:
	ldh a, [rHDMA4]                                  ; $6881: $f0 $54
	ld a, $34                                        ; $6883: $3e $34
	ld [$3a54], a                                    ; $6885: $ea $54 $3a
	inc de                                           ; $6888: $13
	pop af                                           ; $6889: $f1
	xor l                                            ; $688a: $ad
	pop af                                           ; $688b: $f1
	ld c, h                                          ; $688c: $4c
	ld h, d                                          ; $688d: $62
	ld a, $3f                                        ; $688e: $3e $3f
	db $ec                                           ; $6890: $ec
	push af                                          ; $6891: $f5
	ld a, [hl-]                                      ; $6892: $3a
	and b                                            ; $6893: $a0
	rst JumpTable                                          ; $6894: $c7
	xor b                                            ; $6895: $a8

jr_08b_6896:
	db $ec                                           ; $6896: $ec
	add hl, bc                                       ; $6897: $09
	xor h                                            ; $6898: $ac
	jr c, @+$3a                                      ; $6899: $38 $38

	ld a, a                                          ; $689b: $7f
	ldh a, [rTAC]                                    ; $689c: $f0 $07

jr_08b_689e:
	ld b, h                                          ; $689e: $44
	dec sp                                           ; $689f: $3b
	dec a                                            ; $68a0: $3d
	ld b, d                                          ; $68a1: $42
	ld b, a                                          ; $68a2: $47
	ld c, b                                          ; $68a3: $48
	and b                                            ; $68a4: $a0
	cpl                                              ; $68a5: $2f
	jp hl                                            ; $68a6: $e9


	ld c, [hl]                                       ; $68a7: $4e
	add hl, bc                                       ; $68a8: $09
	jr c, jr_08b_682b                                ; $68a9: $38 $80

	ld d, d                                          ; $68ab: $52
	ld c, d                                          ; $68ac: $4a
	ld c, a                                          ; $68ad: $4f
	xor h                                            ; $68ae: $ac
	ld d, h                                          ; $68af: $54
	add hl, sp                                       ; $68b0: $39
	ld a, $3f                                        ; $68b1: $3e $3f
	jr c, jr_08b_68f2                                ; $68b3: $38 $3d

	jr c, jr_08b_68f1                                ; $68b5: $38 $3a

	and b                                            ; $68b7: $a0
	pop af                                           ; $68b8: $f1
	ld [hl], b                                       ; $68b9: $70
	add h                                            ; $68ba: $84
	ld c, c                                          ; $68bb: $49
	xor $06                                          ; $68bc: $ee $06
	ld b, h                                          ; $68be: $44
	dec sp                                           ; $68bf: $3b
	dec a                                            ; $68c0: $3d
	ld d, b                                          ; $68c1: $50
	xor h                                            ; $68c2: $ac
	ldh a, [$57]                                     ; $68c3: $f0 $57
	ldh a, [$ae]                                     ; $68c5: $f0 $ae
	ld b, h                                          ; $68c7: $44
	dec sp                                           ; $68c8: $3b
	dec a                                            ; $68c9: $3d
	ld b, d                                          ; $68ca: $42
	ld b, a                                          ; $68cb: $47
	ld c, h                                          ; $68cc: $4c
	and b                                            ; $68cd: $a0
	ld l, b                                          ; $68ce: $68
	ldh a, [c]                                       ; $68cf: $f2
	inc b                                            ; $68d0: $04
	ld b, d                                          ; $68d1: $42
	ldh a, [$f3]                                     ; $68d2: $f0 $f3
	ld c, l                                          ; $68d4: $4d
	ld d, e                                          ; $68d5: $53
	inc de                                           ; $68d6: $13
	pop af                                           ; $68d7: $f1
	inc b                                            ; $68d8: $04
	ld c, l                                          ; $68d9: $4d
	ccf                                              ; $68da: $3f
	jr c, jr_08b_6932                                ; $68db: $38 $55

	ld l, h                                          ; $68dd: $6c
	dec a                                            ; $68de: $3d
	jr c, jr_08b_6881                                ; $68df: $38 $a0

	db $ec                                           ; $68e1: $ec
	inc de                                           ; $68e2: $13
	ldh a, [c]                                       ; $68e3: $f2
	db $10                                           ; $68e4: $10
	ld c, h                                          ; $68e5: $4c
	xor b                                            ; $68e6: $a8
	db $ec                                           ; $68e7: $ec
	db $ec                                           ; $68e8: $ec
	ld a, [hl-]                                      ; $68e9: $3a
	ld d, l                                          ; $68ea: $55
	inc de                                           ; $68eb: $13
	pop af                                           ; $68ec: $f1
	add c                                            ; $68ed: $81
	ld h, c                                          ; $68ee: $61
	ldh a, [$ac]                                     ; $68ef: $f0 $ac

jr_08b_68f1:
	inc a                                            ; $68f1: $3c

jr_08b_68f2:
	ld a, [hl-]                                      ; $68f2: $3a
	jr c, jr_08b_6896                                ; $68f3: $38 $a1

	cpl                                              ; $68f5: $2f
	add sp, -$61                                     ; $68f6: $e8 $9f
	add hl, bc                                       ; $68f8: $09
	xor $1f                                          ; $68f9: $ee $1f
	xor b                                            ; $68fb: $a8
	db $ed                                           ; $68fc: $ed
	ld a, [bc]                                       ; $68fd: $0a
	db $eb                                           ; $68fe: $eb
	ld l, l                                          ; $68ff: $6d
	xor h                                            ; $6900: $ac
	xor $06                                          ; $6901: $ee $06
	ld b, a                                          ; $6903: $47
	ldh a, [$e7]                                     ; $6904: $f0 $e7
	ld d, a                                          ; $6906: $57
	ld d, d                                          ; $6907: $52
	ld a, $66                                        ; $6908: $3e $66
	add hl, sp                                       ; $690a: $39
	ld c, b                                          ; $690b: $48
	and b                                            ; $690c: $a0
	call c, $eea8                                    ; $690d: $dc $a8 $ee
	ld e, $ed                                        ; $6910: $1e $ed
	ld a, [bc]                                       ; $6912: $0a
	ld b, a                                          ; $6913: $47
	inc de                                           ; $6914: $13
	ldh a, [$e7]                                     ; $6915: $f0 $e7
	ld d, a                                          ; $6917: $57
	ld d, d                                          ; $6918: $52
	ld a, $66                                        ; $6919: $3e $66
	add hl, sp                                       ; $691b: $39
	and b                                            ; $691c: $a0
	ld b, b                                          ; $691d: $40
	ld c, l                                          ; $691e: $4d
	ld e, e                                          ; $691f: $5b
	ld d, [hl]                                       ; $6920: $56
	xor h                                            ; $6921: $ac
	db $ed                                           ; $6922: $ed
	ld a, [bc]                                       ; $6923: $0a
	ld b, a                                          ; $6924: $47
	ldh a, [$e7]                                     ; $6925: $f0 $e7
	ld d, a                                          ; $6927: $57
	ld d, d                                          ; $6928: $52
	ld a, $66                                        ; $6929: $3e $66
	add hl, sp                                       ; $692b: $39
	and b                                            ; $692c: $a0
	cpl                                              ; $692d: $2f
	add sp, -$62                                     ; $692e: $e8 $9e
	add hl, bc                                       ; $6930: $09
	ld b, b                                          ; $6931: $40

jr_08b_6932:
	inc [hl]                                         ; $6932: $34
	ld b, b                                          ; $6933: $40
	ld b, c                                          ; $6934: $41
	ld a, [hl-]                                      ; $6935: $3a
	xor l                                            ; $6936: $ad
	db $ec                                           ; $6937: $ec
	db $d3                                           ; $6938: $d3
	ld b, b                                          ; $6939: $40
	ld b, c                                          ; $693a: $41
	ld a, [hl-]                                      ; $693b: $3a
	sbc d                                            ; $693c: $9a
	ld h, d                                          ; $693d: $62
	ld c, b                                          ; $693e: $48
	and b                                            ; $693f: $a0
	db $ec                                           ; $6940: $ec
	db $d3                                           ; $6941: $d3
	xor h                                            ; $6942: $ac
	ld b, b                                          ; $6943: $40
	ld b, c                                          ; $6944: $41
	ld a, [hl-]                                      ; $6945: $3a
	sbc d                                            ; $6946: $9a
	ld h, d                                          ; $6947: $62
	ldh a, [$a4]                                     ; $6948: $f0 $a4
	ld e, [hl]                                       ; $694a: $5e
	ld c, [hl]                                       ; $694b: $4e
	ld b, d                                          ; $694c: $42
	xor c                                            ; $694d: $a9
	db $eb                                           ; $694e: $eb
	ld a, d                                          ; $694f: $7a
	jr c, jr_08b_69b5                                ; $6950: $38 $63

	and b                                            ; $6952: $a0
	db $ec                                           ; $6953: $ec
	add hl, bc                                       ; $6954: $09
	inc de                                           ; $6955: $13
	jr c, jr_08b_6990                                ; $6956: $38 $38

	ld a, a                                          ; $6958: $7f
	ldh a, [rTAC]                                    ; $6959: $f0 $07
	ld b, h                                          ; $695b: $44
	dec sp                                           ; $695c: $3b
	dec a                                            ; $695d: $3d
	ld b, d                                          ; $695e: $42
	ld b, a                                          ; $695f: $47
	ld c, b                                          ; $6960: $48
	and b                                            ; $6961: $a0
	cpl                                              ; $6962: $2f
	add sp, $5f                                      ; $6963: $e8 $5f
	add hl, bc                                       ; $6965: $09
	ld e, [hl]                                       ; $6966: $5e
	dec sp                                           ; $6967: $3b
	inc [hl]                                         ; $6968: $34
	ld e, d                                          ; $6969: $5a
	ld d, h                                          ; $696a: $54
	ld b, a                                          ; $696b: $47
	xor c                                            ; $696c: $a9
	adc b                                            ; $696d: $88
	sub c                                            ; $696e: $91
	inc [hl]                                         ; $696f: $34
	jr c, @+$50                                      ; $6970: $38 $4e

	ld c, h                                          ; $6972: $4c
	and b                                            ; $6973: $a0
	ld b, [hl]                                       ; $6974: $46
	dec sp                                           ; $6975: $3b
	inc [hl]                                         ; $6976: $34
	adc b                                            ; $6977: $88
	sub c                                            ; $6978: $91
	xor b                                            ; $6979: $a8
	ld b, [hl]                                       ; $697a: $46
	ld b, b                                          ; $697b: $40
	ld d, h                                          ; $697c: $54
	ld b, a                                          ; $697d: $47
	ld c, a                                          ; $697e: $4f
	jr c, jr_08b_69cf                                ; $697f: $38 $4e

	ld c, h                                          ; $6981: $4c
	and b                                            ; $6982: $a0
	adc b                                            ; $6983: $88
	sub c                                            ; $6984: $91
	ld b, h                                          ; $6985: $44
	xor b                                            ; $6986: $a8
	di                                               ; $6987: $f3
	call nc, $3853                                   ; $6988: $d4 $53 $38
	ld c, [hl]                                       ; $698b: $4e
	ld c, h                                          ; $698c: $4c
	and b                                            ; $698d: $a0
	ld c, a                                          ; $698e: $4f
	add hl, sp                                       ; $698f: $39

jr_08b_6990:
	inc [hl]                                         ; $6990: $34
	ldh a, [c]                                       ; $6991: $f2
	adc [hl]                                         ; $6992: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6993: $f0 $81
	ld c, h                                          ; $6995: $4c
	xor b                                            ; $6996: $a8
	ld c, d                                          ; $6997: $4a
	ld c, a                                          ; $6998: $4f
	inc [hl]                                         ; $6999: $34
	ld d, c                                          ; $699a: $51
	sbc l                                            ; $699b: $9d
	pop af                                           ; $699c: $f1
	db $ed                                           ; $699d: $ed
	dec sp                                           ; $699e: $3b
	ccf                                              ; $699f: $3f
	ld a, $52                                        ; $69a0: $3e $52
	add hl, sp                                       ; $69a2: $39
	ld b, d                                          ; $69a3: $42
	ld c, h                                          ; $69a4: $4c

jr_08b_69a5:
	and b                                            ; $69a5: $a0
	cpl                                              ; $69a6: $2f
	add sp, $66                                      ; $69a7: $e8 $66
	add hl, bc                                       ; $69a9: $09
	ld [$ac30], a                                    ; $69aa: $ea $30 $ac
	ld l, l                                          ; $69ad: $6d
	add b                                            ; $69ae: $80
	sbc l                                            ; $69af: $9d
	ld d, b                                          ; $69b0: $50
	jr c, jr_08b_69a5                                ; $69b1: $38 $f2

	pop de                                           ; $69b3: $d1
	pop af                                           ; $69b4: $f1

jr_08b_69b5:
	ld b, $42                                        ; $69b5: $06 $42
	ld c, a                                          ; $69b7: $4f
	ld b, d                                          ; $69b8: $42
	ld d, e                                          ; $69b9: $53
	inc de                                           ; $69ba: $13
	ld b, [hl]                                       ; $69bb: $46
	dec sp                                           ; $69bc: $3b
	ccf                                              ; $69bd: $3f
	ld c, a                                          ; $69be: $4f
	jr c, jr_08b_69f9                                ; $69bf: $38 $38

	ld c, c                                          ; $69c1: $49
	ld [hl], a                                       ; $69c2: $77
	add hl, sp                                       ; $69c3: $39
	ld a, [hl-]                                      ; $69c4: $3a
	ld [hl], h                                       ; $69c5: $74
	and b                                            ; $69c6: $a0
	ld b, b                                          ; $69c7: $40
	ld c, l                                          ; $69c8: $4d
	ld c, e                                          ; $69c9: $4b
	ld [$ac30], a                                    ; $69ca: $ea $30 $ac
	ld l, e                                          ; $69cd: $6b
	ld b, h                                          ; $69ce: $44

jr_08b_69cf:
	inc a                                            ; $69cf: $3c
	inc [hl]                                         ; $69d0: $34
	pop af                                           ; $69d1: $f1
	xor b                                            ; $69d2: $a8
	ld a, $38                                        ; $69d3: $3e $38
	ld c, h                                          ; $69d5: $4c
	and b                                            ; $69d6: $a0
	ldh a, [$ce]                                     ; $69d7: $f0 $ce
	ld h, e                                          ; $69d9: $63
	ld d, a                                          ; $69da: $57
	db $eb                                           ; $69db: $eb
	ld l, l                                          ; $69dc: $6d
	xor h                                            ; $69dd: $ac
	ld b, b                                          ; $69de: $40
	ld b, d                                          ; $69df: $42
	ld l, l                                          ; $69e0: $6d
	db $f4                                           ; $69e1: $f4
	add hl, bc                                       ; $69e2: $09
	ld d, e                                          ; $69e3: $53

jr_08b_69e4:
	ldh a, [c]                                       ; $69e4: $f2
	jp c, Jump_08b_4255                              ; $69e5: $da $55 $42

	ld b, l                                          ; $69e8: $45
	ld c, h                                          ; $69e9: $4c
	and b                                            ; $69ea: $a0
	cpl                                              ; $69eb: $2f
	add sp, -$60                                     ; $69ec: $e8 $a0
	add hl, bc                                       ; $69ee: $09
	ld b, b                                          ; $69ef: $40
	inc [hl]                                         ; $69f0: $34
	ld b, b                                          ; $69f1: $40
	ld c, l                                          ; $69f2: $4d
	ld c, e                                          ; $69f3: $4b
	inc de                                           ; $69f4: $13
	ld [$4830], a                                    ; $69f5: $ea $30 $48
	and b                                            ; $69f8: $a0

jr_08b_69f9:
	ld b, b                                          ; $69f9: $40
	ld b, c                                          ; $69fa: $41
	ld a, [hl-]                                      ; $69fb: $3a
	sbc d                                            ; $69fc: $9a
	ld a, e                                          ; $69fd: $7b
	inc a                                            ; $69fe: $3c
	ld d, a                                          ; $69ff: $57
	xor h                                            ; $6a00: $ac
	ldh a, [$a4]                                     ; $6a01: $f0 $a4
	ld e, [hl]                                       ; $6a03: $5e
	ccf                                              ; $6a04: $3f
	jr c, jr_08b_6a55                                ; $6a05: $38 $4e

	ld b, d                                          ; $6a07: $42
	ld c, h                                          ; $6a08: $4c
	and b                                            ; $6a09: $a0
	db $ec                                           ; $6a0a: $ec
	add hl, bc                                       ; $6a0b: $09
	inc [hl]                                         ; $6a0c: $34
	ldh a, [$78]                                     ; $6a0d: $f0 $78
	pop af                                           ; $6a0f: $f1
	adc b                                            ; $6a10: $88
	pop af                                           ; $6a11: $f1
	inc bc                                           ; $6a12: $03
	ld a, [hl-]                                      ; $6a13: $3a
	inc de                                           ; $6a14: $13
	ld a, a                                          ; $6a15: $7f
	ldh a, [rTAC]                                    ; $6a16: $f0 $07
	ld b, a                                          ; $6a18: $47
	push af                                          ; $6a19: $f5
	ld h, e                                          ; $6a1a: $63
	dec sp                                           ; $6a1b: $3b
	ccf                                              ; $6a1c: $3f
	dec a                                            ; $6a1d: $3d
	ld b, d                                          ; $6a1e: $42
	ld b, a                                          ; $6a1f: $47
	ld c, b                                          ; $6a20: $48
	and b                                            ; $6a21: $a0
	cpl                                              ; $6a22: $2f
	add sp, $67                                      ; $6a23: $e8 $67
	add hl, bc                                       ; $6a25: $09
	ld b, b                                          ; $6a26: $40
	ld c, l                                          ; $6a27: $4d
	ld c, e                                          ; $6a28: $4b
	di                                               ; $6a29: $f3
	ld c, e                                          ; $6a2a: $4b
	dec sp                                           ; $6a2b: $3b
	ccf                                              ; $6a2c: $3f
	ld c, [hl]                                       ; $6a2d: $4e
	ld e, l                                          ; $6a2e: $5d
	ld e, d                                          ; $6a2f: $5a
	ld c, b                                          ; $6a30: $48
	and b                                            ; $6a31: $a0
	ld b, b                                          ; $6a32: $40
	dec sp                                           ; $6a33: $3b
	ld e, l                                          ; $6a34: $5d
	ld a, [hl-]                                      ; $6a35: $3a
	jr c, jr_08b_69e4                                ; $6a36: $38 $ac

	sbc d                                            ; $6a38: $9a
	add d                                            ; $6a39: $82
	add hl, sp                                       ; $6a3a: $39
	ld b, d                                          ; $6a3b: $42
	ld c, h                                          ; $6a3c: $4c
	and b                                            ; $6a3d: $a0
	ld l, e                                          ; $6a3e: $6b
	inc a                                            ; $6a3f: $3c
	inc [hl]                                         ; $6a40: $34
	ld b, b                                          ; $6a41: $40
	dec sp                                           ; $6a42: $3b

jr_08b_6a43:
	ld e, l                                          ; $6a43: $5d
	ld a, [hl-]                                      ; $6a44: $3a
	jr c, jr_08b_6a93                                ; $6a45: $38 $4c

	and b                                            ; $6a47: $a0
	ld b, [hl]                                       ; $6a48: $46
	dec sp                                           ; $6a49: $3b
	inc [hl]                                         ; $6a4a: $34
	db $ec                                           ; $6a4b: $ec
	ld bc, $54ac                                     ; $6a4c: $01 $ac $54
	ld b, d                                          ; $6a4f: $42
	pop af                                           ; $6a50: $f1
	jr z, jr_08b_6a43                                ; $6a51: $28 $f0

	ld b, h                                          ; $6a53: $44
	db $ec                                           ; $6a54: $ec

jr_08b_6a55:
	ret c                                            ; $6a55: $d8

	and c                                            ; $6a56: $a1
	ldh a, [$08]                                     ; $6a57: $f0 $08
	ld d, b                                          ; $6a59: $50
	inc [hl]                                         ; $6a5a: $34
	inc hl                                           ; $6a5b: $23
	ldh a, [c]                                       ; $6a5c: $f2
	ld a, c                                          ; $6a5d: $79
	inc [hl]                                         ; $6a5e: $34
	ld h, h                                          ; $6a5f: $64
	pop af                                           ; $6a60: $f1
	ccf                                              ; $6a61: $3f
	ld e, b                                          ; $6a62: $58
	ld b, c                                          ; $6a63: $41
	ld c, c                                          ; $6a64: $49
	inc de                                           ; $6a65: $13
	ld h, h                                          ; $6a66: $64
	di                                               ; $6a67: $f3
	ld [hl+], a                                      ; $6a68: $22
	ld e, b                                          ; $6a69: $58

jr_08b_6a6a:
	ld b, c                                          ; $6a6a: $41
	ld b, a                                          ; $6a6b: $47
	pop af                                           ; $6a6c: $f1

jr_08b_6a6d:
	ld [hl], a                                       ; $6a6d: $77
	ld a, h                                          ; $6a6e: $7c
	ld c, d                                          ; $6a6f: $4a
	inc [hl]                                         ; $6a70: $34
	inc hl                                           ; $6a71: $23
	inc de                                           ; $6a72: $13
	pop af                                           ; $6a73: $f1
	ld b, $55                                        ; $6a74: $06 $55
	ld b, d                                          ; $6a76: $42
	pop af                                           ; $6a77: $f1
	jr z, jr_08b_6a6a                                ; $6a78: $28 $f0

	ld b, h                                          ; $6a7a: $44
	ld b, a                                          ; $6a7b: $47
	ld h, a                                          ; $6a7c: $67
	dec sp                                           ; $6a7d: $3b

jr_08b_6a7e:
	dec a                                            ; $6a7e: $3d
	ld d, h                                          ; $6a7f: $54
	ld c, c                                          ; $6a80: $49
	ld d, e                                          ; $6a81: $53
	inc de                                           ; $6a82: $13
	ld b, [hl]                                       ; $6a83: $46
	dec sp                                           ; $6a84: $3b
	dec a                                            ; $6a85: $3d
	db $ec                                           ; $6a86: $ec
	ret c                                            ; $6a87: $d8

	and b                                            ; $6a88: $a0
	cpl                                              ; $6a89: $2f
	ld b, e                                          ; $6a8a: $43
	ld b, b                                          ; $6a8b: $40
	ld b, c                                          ; $6a8c: $41
	ld a, [hl-]                                      ; $6a8d: $3a
	sbc d                                            ; $6a8e: $9a
	ld b, [hl]                                       ; $6a8f: $46
	dec sp                                           ; $6a90: $3b
	dec a                                            ; $6a91: $3d
	inc a                                            ; $6a92: $3c

jr_08b_6a93:
	ld a, [hl-]                                      ; $6a93: $3a
	ld [hl], h                                       ; $6a94: $74
	and b                                            ; $6a95: $a0
	ld b, [hl]                                       ; $6a96: $46
	dec sp                                           ; $6a97: $3b
	dec a                                            ; $6a98: $3d
	ld h, e                                          ; $6a99: $63
	ld b, l                                          ; $6a9a: $45
	xor b                                            ; $6a9b: $a8
	ld b, l                                          ; $6a9c: $45
	ld d, l                                          ; $6a9d: $55
	ldh a, [$f4]                                     ; $6a9e: $f0 $f4
	ld e, [hl]                                       ; $6aa0: $5e
	ccf                                              ; $6aa1: $3f
	ld c, [hl]                                       ; $6aa2: $4e
	inc a                                            ; $6aa3: $3c
	ld d, b                                          ; $6aa4: $50
	and b                                            ; $6aa5: $a0
	cpl                                              ; $6aa6: $2f
	ld b, e                                          ; $6aa7: $43
	db $f4                                           ; $6aa8: $f4
	adc e                                            ; $6aa9: $8b
	ld e, [hl]                                       ; $6aaa: $5e
	ld a, e                                          ; $6aab: $7b
	and c                                            ; $6aac: $a1
	db $f4                                           ; $6aad: $f4
	adc e                                            ; $6aae: $8b
	ld e, [hl]                                       ; $6aaf: $5e
	ld a, e                                          ; $6ab0: $7b
	ld c, h                                          ; $6ab1: $4c
	inc [hl]                                         ; $6ab2: $34
	inc hl                                           ; $6ab3: $23
	inc de                                           ; $6ab4: $13
	add a                                            ; $6ab5: $87
	ld e, h                                          ; $6ab6: $5c
	ld a, [hl-]                                      ; $6ab7: $3a
	ldh a, [c]                                       ; $6ab8: $f2
	db $10                                           ; $6ab9: $10
	ld b, a                                          ; $6aba: $47
	pop af                                           ; $6abb: $f1
	add c                                            ; $6abc: $81
	ld h, c                                          ; $6abd: $61
	ld b, b                                          ; $6abe: $40
	add hl, sp                                       ; $6abf: $39
	ld b, a                                          ; $6ac0: $47
	inc de                                           ; $6ac1: $13
	ld a, [hl-]                                      ; $6ac2: $3a
	dec sp                                           ; $6ac3: $3b
	dec a                                            ; $6ac4: $3d
	ld d, h                                          ; $6ac5: $54
	ld c, c                                          ; $6ac6: $49
	ld c, c                                          ; $6ac7: $49
	inc a                                            ; $6ac8: $3c
	ld c, b                                          ; $6ac9: $48
	and b                                            ; $6aca: $a0
	cpl                                              ; $6acb: $2f
	ld b, e                                          ; $6acc: $43
	ldh a, [c]                                       ; $6acd: $f2
	db $10                                           ; $6ace: $10
	ld b, a                                          ; $6acf: $47
	ld [hl], $23                                     ; $6ad0: $36 $23
	inc de                                           ; $6ad2: $13
	ld b, [hl]                                       ; $6ad3: $46
	dec sp                                           ; $6ad4: $3b
	inc [hl]                                         ; $6ad5: $34
	ld [hl], a                                       ; $6ad6: $77
	jr c, jr_08b_6a6d                                ; $6ad7: $38 $94

	ld a, $3d                                        ; $6ad9: $3e $3d
	xor b                                            ; $6adb: $a8
	ld b, b                                          ; $6adc: $40
	ld c, l                                          ; $6add: $4d
	inc [hl]                                         ; $6ade: $34
	halt                                             ; $6adf: $76
	ld b, h                                          ; $6ae0: $44
	and b                                            ; $6ae1: $a0
	db $ec                                           ; $6ae2: $ec
	db $f4                                           ; $6ae3: $f4
	xor b                                            ; $6ae4: $a8
	ld a, [hl]                                       ; $6ae5: $7e
	ld d, l                                          ; $6ae6: $55
	ld [hl], a                                       ; $6ae7: $77
	jr c, jr_08b_6a7e                                ; $6ae8: $38 $94

	ld a, $3d                                        ; $6aea: $3e $3d
	ld c, h                                          ; $6aec: $4c
	and b                                            ; $6aed: $a0
	cpl                                              ; $6aee: $2f
	ld b, e                                          ; $6aef: $43
	ldh a, [c]                                       ; $6af0: $f2
	db $10                                           ; $6af1: $10
	ld b, a                                          ; $6af2: $47
	pop af                                           ; $6af3: $f1
	add c                                            ; $6af4: $81
	ld h, c                                          ; $6af5: $61
	ld b, b                                          ; $6af6: $40
	add hl, sp                                       ; $6af7: $39
	ld b, a                                          ; $6af8: $47
	ld a, [hl-]                                      ; $6af9: $3a
	dec sp                                           ; $6afa: $3b
	ccf                                              ; $6afb: $3f

jr_08b_6afc:
	inc de                                           ; $6afc: $13
	db $ec                                           ; $6afd: $ec
	dec b                                            ; $6afe: $05
	ld h, h                                          ; $6aff: $64
	ld e, e                                          ; $6b00: $5b
	ld e, b                                          ; $6b01: $58
	ld b, c                                          ; $6b02: $41
	ld b, a                                          ; $6b03: $47
	inc de                                           ; $6b04: $13
	pop af                                           ; $6b05: $f1
	jp hl                                            ; $6b06: $e9


	ld e, l                                          ; $6b07: $5d
	ccf                                              ; $6b08: $3f
	ld c, a                                          ; $6b09: $4f
	ld d, b                                          ; $6b0a: $50
	dec sp                                           ; $6b0b: $3b
	dec a                                            ; $6b0c: $3d
	ld b, c                                          ; $6b0d: $41
	ld b, h                                          ; $6b0e: $44
	ld b, l                                          ; $6b0f: $45
	ld a, [hl-]                                      ; $6b10: $3a
	ld [hl], h                                       ; $6b11: $74
	dec [hl]                                         ; $6b12: $35
	inc hl                                           ; $6b13: $23
	inc de                                           ; $6b14: $13
	ld b, [hl]                                       ; $6b15: $46
	ld b, c                                          ; $6b16: $41
	ldh a, [rBGP]                                    ; $6b17: $f0 $47
	ld c, e                                          ; $6b19: $4b
	ldh a, [c]                                       ; $6b1a: $f2
	ld a, d                                          ; $6b1b: $7a
	pop af                                           ; $6b1c: $f1
	ld a, b                                          ; $6b1d: $78
	inc a                                            ; $6b1e: $3c
	ld c, c                                          ; $6b1f: $49
	ld [hl], a                                       ; $6b20: $77
	dec sp                                           ; $6b21: $3b
	dec a                                            ; $6b22: $3d
	ld b, l                                          ; $6b23: $45
	dec [hl]                                         ; $6b24: $35
	ld [hl+], a                                      ; $6b25: $22
	inc de                                           ; $6b26: $13
	ld b, [hl]                                       ; $6b27: $46
	ld c, l                                          ; $6b28: $4d
	inc [hl]                                         ; $6b29: $34
	ld b, b                                          ; $6b2a: $40
	ld b, d                                          ; $6b2b: $42
	ld c, c                                          ; $6b2c: $49
	ld e, h                                          ; $6b2d: $5c
	db $ed                                           ; $6b2e: $ed
	xor c                                            ; $6b2f: $a9
	ld c, e                                          ; $6b30: $4b
	and c                                            ; $6b31: $a1
	ld l, a                                          ; $6b32: $6f
	ld c, e                                          ; $6b33: $4b
	ldh a, [$71]                                     ; $6b34: $f0 $71
	ld d, l                                          ; $6b36: $55
	ccf                                              ; $6b37: $3f
	inc [hl]                                         ; $6b38: $34
	inc hl                                           ; $6b39: $23
	ld [hl], d                                       ; $6b3a: $72
	ccf                                              ; $6b3b: $3f
	dec a                                            ; $6b3c: $3d
	ld c, b                                          ; $6b3d: $48
	inc [hl]                                         ; $6b3e: $34
	ld [hl+], a                                      ; $6b3f: $22
	inc de                                           ; $6b40: $13
	ld c, c                                          ; $6b41: $49
	ld [hl], a                                       ; $6b42: $77
	add hl, sp                                       ; $6b43: $39
	and b                                            ; $6b44: $a0
	cpl                                              ; $6b45: $2f
	ld b, e                                          ; $6b46: $43
	pop af                                           ; $6b47: $f1
	jp hl                                            ; $6b48: $e9


	ld e, l                                          ; $6b49: $5d
	ccf                                              ; $6b4a: $3f
	ld d, l                                          ; $6b4b: $55
	ld c, l                                          ; $6b4c: $4d
	ccf                                              ; $6b4d: $3f
	ld c, a                                          ; $6b4e: $4f
	inc de                                           ; $6b4f: $13
	jr c, jr_08b_6b8a                                ; $6b50: $38 $38

	ld b, d                                          ; $6b52: $42
	ld b, a                                          ; $6b53: $47
	ld c, b                                          ; $6b54: $48
	and b                                            ; $6b55: $a0
	ld c, a                                          ; $6b56: $4f
	add hl, sp                                       ; $6b57: $39
	inc [hl]                                         ; $6b58: $34
	jr c, jr_08b_6b93                                ; $6b59: $38 $38

	db $ec                                           ; $6b5b: $ec
	ret c                                            ; $6b5c: $d8

	dec [hl]                                         ; $6b5d: $35
	inc hl                                           ; $6b5e: $23
	inc de                                           ; $6b5f: $13
	di                                               ; $6b60: $f3
	ld a, l                                          ; $6b61: $7d
	inc a                                            ; $6b62: $3c
	ld a, $38                                        ; $6b63: $3e $38
	ld [hl], a                                       ; $6b65: $77
	jr c, jr_08b_6afc                                ; $6b66: $38 $94

	ld b, l                                          ; $6b68: $45
	and b                                            ; $6b69: $a0
	cpl                                              ; $6b6a: $2f
	ld b, e                                          ; $6b6b: $43
	jr c, @+$54                                      ; $6b6c: $38 $52

	ld e, b                                          ; $6b6e: $58
	ld d, b                                          ; $6b6f: $50
	inc [hl]                                         ; $6b70: $34
	db $ec                                           ; $6b71: $ec
	ld [$a84c], sp                                   ; $6b72: $08 $4c $a8
	ld c, d                                          ; $6b75: $4a
	ld c, a                                          ; $6b76: $4f
	inc [hl]                                         ; $6b77: $34
	sbc $f3                                          ; $6b78: $de $f3
	ld a, l                                          ; $6b7a: $7d
	inc a                                            ; $6b7b: $3c
	ld a, $38                                        ; $6b7c: $3e $38
	ld c, h                                          ; $6b7e: $4c
	and b                                            ; $6b7f: $a0
	pop af                                           ; $6b80: $f1
	ld l, a                                          ; $6b81: $6f
	ld b, a                                          ; $6b82: $47
	ld c, a                                          ; $6b83: $4f
	pop af                                           ; $6b84: $f1
	ld l, [hl]                                       ; $6b85: $6e
	ldh a, [$cf]                                     ; $6b86: $f0 $cf
	ld b, [hl]                                       ; $6b88: $46
	dec sp                                           ; $6b89: $3b

jr_08b_6b8a:
	dec a                                            ; $6b8a: $3d
	ld b, l                                          ; $6b8b: $45
	ld c, h                                          ; $6b8c: $4c
	xor b                                            ; $6b8d: $a8
	xor $10                                          ; $6b8e: $ee $10
	and b                                            ; $6b90: $a0
	cpl                                              ; $6b91: $2f
	ld b, e                                          ; $6b92: $43

jr_08b_6b93:
	ld b, b                                          ; $6b93: $40
	add hl, sp                                       ; $6b94: $39
	ld b, h                                          ; $6b95: $44
	ld c, h                                          ; $6b96: $4c
	and b                                            ; $6b97: $a0
	ld b, b                                          ; $6b98: $40
	ld c, l                                          ; $6b99: $4d
	ld e, e                                          ; $6b9a: $5b
	ld d, [hl]                                       ; $6b9b: $56
	xor h                                            ; $6b9c: $ac
	ld e, d                                          ; $6b9d: $5a
	ld d, h                                          ; $6b9e: $54
	ld b, a                                          ; $6b9f: $47
	pop af                                           ; $6ba0: $f1
	ld c, $38                                        ; $6ba1: $0e $38

Jump_08b_6ba3:
	ldh a, [$2c]                                     ; $6ba3: $f0 $2c
	ld b, a                                          ; $6ba5: $47
	inc de                                           ; $6ba6: $13
	ld [$3ca9], a                                    ; $6ba7: $ea $a9 $3c
	and c                                            ; $6baa: $a1
	cpl                                              ; $6bab: $2f
	add sp, -$29                                     ; $6bac: $e8 $d7
	add hl, bc                                       ; $6bae: $09
	ld b, b                                          ; $6baf: $40
	ld c, l                                          ; $6bb0: $4d
	ld e, e                                          ; $6bb1: $5b
	ld d, [hl]                                       ; $6bb2: $56
	inc [hl]                                         ; $6bb3: $34
	ld [$a0a9], a                                    ; $6bb4: $ea $a9 $a0
	cpl                                              ; $6bb7: $2f
	add sp, -$28                                     ; $6bb8: $e8 $d8
	add hl, bc                                       ; $6bba: $09
	cpl                                              ; $6bbb: $2f
	add sp, -$27                                     ; $6bbc: $e8 $d9
	add hl, bc                                       ; $6bbe: $09
	ldh a, [$7e]                                     ; $6bbf: $f0 $7e
	inc [hl]                                         ; $6bc1: $34
	db $eb                                           ; $6bc2: $eb
	add c                                            ; $6bc3: $81
	ld e, b                                          ; $6bc4: $58
	ld b, c                                          ; $6bc5: $41
	ld [hl], $23                                     ; $6bc6: $36 $23
	inc de                                           ; $6bc8: $13
	ldh a, [$34]                                     ; $6bc9: $f0 $34
	ld b, a                                          ; $6bcb: $47
	db $ec                                           ; $6bcc: $ec
	ld [$a048], sp                                   ; $6bcd: $08 $48 $a0
	ret                                              ; $6bd0: $c9


	ld [hl], d                                       ; $6bd1: $72
	ccf                                              ; $6bd2: $3f
	ld e, h                                          ; $6bd3: $5c
	ccf                                              ; $6bd4: $3f
	ld c, a                                          ; $6bd5: $4f
	inc de                                           ; $6bd6: $13
	db $ec                                           ; $6bd7: $ec
	ld a, [bc]                                       ; $6bd8: $0a
	ld c, b                                          ; $6bd9: $48
	and c                                            ; $6bda: $a1
	ret                                              ; $6bdb: $c9


	ld [hl], d                                       ; $6bdc: $72
	ccf                                              ; $6bdd: $3f
	ld d, l                                          ; $6bde: $55
	ld c, [hl]                                       ; $6bdf: $4e
	ld c, h                                          ; $6be0: $4c
	and b                                            ; $6be1: $a0
	ret                                              ; $6be2: $c9


	ld [hl], d                                       ; $6be3: $72
	ccf                                              ; $6be4: $3f
	ld e, h                                          ; $6be5: $5c
	ccf                                              ; $6be6: $3f
	ld c, a                                          ; $6be7: $4f
	jr c, jr_08b_6c22                                ; $6be8: $38 $38

	and c                                            ; $6bea: $a1
	cpl                                              ; $6beb: $2f
	ld b, e                                          ; $6bec: $43
	ld b, [hl]                                       ; $6bed: $46
	ld b, [hl]                                       ; $6bee: $46
	inc [hl]                                         ; $6bef: $34
	db $ec                                           ; $6bf0: $ec
	ld c, $13                                        ; $6bf1: $0e $13
	ld [hl], d                                       ; $6bf3: $72
	ccf                                              ; $6bf4: $3f
	ld d, l                                          ; $6bf5: $55
	ld c, [hl]                                       ; $6bf6: $4e
	ld c, c                                          ; $6bf7: $49
	jr c, jr_08b_6c32                                ; $6bf8: $38 $38

	ld b, l                                          ; $6bfa: $45
	and b                                            ; $6bfb: $a0
	db $eb                                           ; $6bfc: $eb
	ccf                                              ; $6bfd: $3f
	xor b                                            ; $6bfe: $a8
	ld [hl], d                                       ; $6bff: $72
	dec a                                            ; $6c00: $3d
	jr c, jr_08b_6c52                                ; $6c01: $38 $4f

	ld b, d                                          ; $6c03: $42
	ld d, e                                          ; $6c04: $53
	inc de                                           ; $6c05: $13
	ld [$489b], a                                    ; $6c06: $ea $9b $48
	and b                                            ; $6c09: $a0
	cpl                                              ; $6c0a: $2f
	add sp, $3c                                      ; $6c0b: $e8 $3c
	add hl, bc                                       ; $6c0d: $09
	ld b, [hl]                                       ; $6c0e: $46
	ld d, a                                          ; $6c0f: $57
	ld d, e                                          ; $6c10: $53
	ld c, c                                          ; $6c11: $49
	add hl, sp                                       ; $6c12: $39
	xor b                                            ; $6c13: $a8
	ld c, a                                          ; $6c14: $4f
	add hl, sp                                       ; $6c15: $39
	db $ed                                           ; $6c16: $ed
	ld [hl], e                                       ; $6c17: $73
	ld [hl], d                                       ; $6c18: $72
	dec a                                            ; $6c19: $3d
	inc a                                            ; $6c1a: $3c
	ld d, b                                          ; $6c1b: $50
	ld c, b                                          ; $6c1c: $48
	and b                                            ; $6c1d: $a0
	ld b, [hl]                                       ; $6c1e: $46
	ld d, a                                          ; $6c1f: $57
	ld d, e                                          ; $6c20: $53
	ld c, c                                          ; $6c21: $49

jr_08b_6c22:
	add hl, sp                                       ; $6c22: $39
	xor b                                            ; $6c23: $a8
	ld c, a                                          ; $6c24: $4f
	add hl, sp                                       ; $6c25: $39

jr_08b_6c26:
	db $ed                                           ; $6c26: $ed
	ld [hl], e                                       ; $6c27: $73
	ld [hl], d                                       ; $6c28: $72
	dec a                                            ; $6c29: $3d
	inc a                                            ; $6c2a: $3c
	ld d, b                                          ; $6c2b: $50
	xor h                                            ; $6c2c: $ac
	jp hl                                            ; $6c2d: $e9


	ld a, [hl+]                                      ; $6c2e: $2a
	and b                                            ; $6c2f: $a0
	ld b, [hl]                                       ; $6c30: $46
	ld d, a                                          ; $6c31: $57

jr_08b_6c32:
	ld d, e                                          ; $6c32: $53
	ld c, c                                          ; $6c33: $49
	add hl, sp                                       ; $6c34: $39
	xor b                                            ; $6c35: $a8
	jp hl                                            ; $6c36: $e9


	ld a, [hl+]                                      ; $6c37: $2a
	and b                                            ; $6c38: $a0
	cpl                                              ; $6c39: $2f
	add sp, $19                                      ; $6c3a: $e8 $19
	add hl, bc                                       ; $6c3c: $09
	jp hl                                            ; $6c3d: $e9


	and h                                            ; $6c3e: $a4
	xor b                                            ; $6c3f: $a8
	ld l, d                                          ; $6c40: $6a
	ldh a, [$0d]                                     ; $6c41: $f0 $0d
	inc a                                            ; $6c43: $3c
	ld d, b                                          ; $6c44: $50
	ld a, a                                          ; $6c45: $7f
	ld h, d                                          ; $6c46: $62
	ldh a, [$9a]                                     ; $6c47: $f0 $9a
	ld e, l                                          ; $6c49: $5d

jr_08b_6c4a:
	ld d, d                                          ; $6c4a: $52
	ld d, c                                          ; $6c4b: $51
	ld c, b                                          ; $6c4c: $48
	and b                                            ; $6c4d: $a0
	jp hl                                            ; $6c4e: $e9


	and h                                            ; $6c4f: $a4
	xor b                                            ; $6c50: $a8
	ld c, d                                          ; $6c51: $4a

jr_08b_6c52:
	ld c, a                                          ; $6c52: $4f
	inc [hl]                                         ; $6c53: $34

jr_08b_6c54:
	ld b, b                                          ; $6c54: $40
	ld b, c                                          ; $6c55: $41
	ld a, [hl-]                                      ; $6c56: $3a
	add d                                            ; $6c57: $82
	jr c, jr_08b_6c4a                                ; $6c58: $38 $f0

	jr c, @+$4d                                      ; $6c5a: $38 $4b

	xor h                                            ; $6c5c: $ac
	ld a, [hl-]                                      ; $6c5d: $3a
	jr c, @+$4b                                      ; $6c5e: $38 $49

jr_08b_6c60:
	ld [hl], a                                       ; $6c60: $77
	add hl, sp                                       ; $6c61: $39
	ld c, b                                          ; $6c62: $48
	and b                                            ; $6c63: $a0
	jp hl                                            ; $6c64: $e9


	and h                                            ; $6c65: $a4
	xor b                                            ; $6c66: $a8
	ld c, d                                          ; $6c67: $4a
	ld c, a                                          ; $6c68: $4f
	inc [hl]                                         ; $6c69: $34
	ld b, b                                          ; $6c6a: $40
	ld b, c                                          ; $6c6b: $41
	ld a, [hl-]                                      ; $6c6c: $3a
	add d                                            ; $6c6d: $82
	jr c, jr_08b_6c60                                ; $6c6e: $38 $f0

	jr c, jr_08b_6c85                                ; $6c70: $38 $13

	ld a, $3a                                        ; $6c72: $3e $3a
	ld d, l                                          ; $6c74: $55
	ccf                                              ; $6c75: $3f
	ld c, a                                          ; $6c76: $4f
	ld c, b                                          ; $6c77: $48
	and b                                            ; $6c78: $a0
	cpl                                              ; $6c79: $2f
	db $eb                                           ; $6c7a: $eb
	ld e, $a1                                        ; $6c7b: $1e $a1
	xor $1f                                          ; $6c7d: $ee $1f
	inc [hl]                                         ; $6c7f: $34
	ld [hl], b                                       ; $6c80: $70
	ld [hl], c                                       ; $6c81: $71
	ld b, c                                          ; $6c82: $41
	ld c, h                                          ; $6c83: $4c
	xor b                                            ; $6c84: $a8

jr_08b_6c85:
	ld b, [hl]                                       ; $6c85: $46
	ld d, a                                          ; $6c86: $57
	ld d, e                                          ; $6c87: $53
	ld c, c                                          ; $6c88: $49
	add hl, sp                                       ; $6c89: $39
	and b                                            ; $6c8a: $a0
	xor $1f                                          ; $6c8b: $ee $1f
	inc [hl]                                         ; $6c8d: $34
	ld b, [hl]                                       ; $6c8e: $46
	ld d, a                                          ; $6c8f: $57
	ld d, e                                          ; $6c90: $53
	ld c, c                                          ; $6c91: $49
	add hl, sp                                       ; $6c92: $39
	xor b                                            ; $6c93: $a8
	jp hl                                            ; $6c94: $e9


	ld a, [hl+]                                      ; $6c95: $2a
	and b                                            ; $6c96: $a0
	xor $1f                                          ; $6c97: $ee $1f
	inc [hl]                                         ; $6c99: $34
	ld c, a                                          ; $6c9a: $4f
	add hl, sp                                       ; $6c9b: $39
	jr c, jr_08b_6cd6                                ; $6c9c: $38 $38

	ld h, e                                          ; $6c9e: $63
	xor b                                            ; $6c9f: $a8
	jp hl                                            ; $6ca0: $e9


	ld a, [hl+]                                      ; $6ca1: $2a
	and b                                            ; $6ca2: $a0
	add b                                            ; $6ca3: $80
	jr c, jr_08b_6c26                                ; $6ca4: $38 $80

	jr c, jr_08b_6c54                                ; $6ca6: $38 $ac

	adc $f1                                          ; $6ca8: $ce $f1
	ld c, $3b                                        ; $6caa: $0e $3b
	ld h, c                                          ; $6cac: $61
	ld d, [hl]                                       ; $6cad: $56
	dec sp                                           ; $6cae: $3b
	dec a                                            ; $6caf: $3d
	and b                                            ; $6cb0: $a0
	cpl                                              ; $6cb1: $2f
	ld [$0947], a                                    ; $6cb2: $ea $47 $09
	ld e, [hl]                                       ; $6cb5: $5e
	dec sp                                           ; $6cb6: $3b
	inc [hl]                                         ; $6cb7: $34
	ld b, b                                          ; $6cb8: $40
	ld b, c                                          ; $6cb9: $41
	ld a, [hl-]                                      ; $6cba: $3a
	xor b                                            ; $6cbb: $a8
	ldh a, [$5c]                                     ; $6cbc: $f0 $5c
	jr c, jr_08b_6cfc                                ; $6cbe: $38 $3c

	ld d, b                                          ; $6cc0: $50
	ld c, b                                          ; $6cc1: $48
	and b                                            ; $6cc2: $a0
	cpl                                              ; $6cc3: $2f
	ld b, e                                          ; $6cc4: $43
	jr c, jr_08b_6cff                                ; $6cc5: $38 $38

	inc a                                            ; $6cc7: $3c
	ld d, b                                          ; $6cc8: $50
	inc [hl]                                         ; $6cc9: $34
	jr c, jr_08b_6d04                                ; $6cca: $38 $38

	inc a                                            ; $6ccc: $3c
	ld d, b                                          ; $6ccd: $50
	and b                                            ; $6cce: $a0
	ld b, b                                          ; $6ccf: $40
	ld c, l                                          ; $6cd0: $4d
	ld e, e                                          ; $6cd1: $5b
	ld d, [hl]                                       ; $6cd2: $56
	xor h                                            ; $6cd3: $ac
	ldh a, [rHDMA1]                                  ; $6cd4: $f0 $51

jr_08b_6cd6:
	dec sp                                           ; $6cd6: $3b
	ccf                                              ; $6cd7: $3f
	ld c, a                                          ; $6cd8: $4f
	ld d, b                                          ; $6cd9: $50
	ld h, h                                          ; $6cda: $64
	add hl, sp                                       ; $6cdb: $39
	inc a                                            ; $6cdc: $3c
	ld a, [hl-]                                      ; $6cdd: $3a
	ld c, b                                          ; $6cde: $48
	and b                                            ; $6cdf: $a0
	ld b, [hl]                                       ; $6ce0: $46
	ld d, a                                          ; $6ce1: $57
	ld d, e                                          ; $6ce2: $53
	ld c, c                                          ; $6ce3: $49
	add hl, sp                                       ; $6ce4: $39
	xor b                                            ; $6ce5: $a8
	ld b, b                                          ; $6ce6: $40
	ld c, l                                          ; $6ce7: $4d
	ld e, e                                          ; $6ce8: $5b
	ld d, [hl]                                       ; $6ce9: $56
	xor h                                            ; $6cea: $ac
	ldh a, [c]                                       ; $6ceb: $f2
	ld a, [hl-]                                      ; $6cec: $3a
	ldh a, [rTAC]                                    ; $6ced: $f0 $07
	ldh a, [rHDMA1]                                  ; $6cef: $f0 $51
	dec sp                                           ; $6cf1: $3b
	ccf                                              ; $6cf2: $3f
	ld d, l                                          ; $6cf3: $55
	ld c, l                                          ; $6cf4: $4d
	ld c, [hl]                                       ; $6cf5: $4e
	and c                                            ; $6cf6: $a1
	ld b, [hl]                                       ; $6cf7: $46
	ld d, a                                          ; $6cf8: $57
	ld d, e                                          ; $6cf9: $53
	ld c, c                                          ; $6cfa: $49
	add hl, sp                                       ; $6cfb: $39

jr_08b_6cfc:
	xor b                                            ; $6cfc: $a8
	ld b, b                                          ; $6cfd: $40
	ld c, l                                          ; $6cfe: $4d

jr_08b_6cff:
	ld e, e                                          ; $6cff: $5b
	ld d, [hl]                                       ; $6d00: $56
	xor h                                            ; $6d01: $ac
	ldh a, [c]                                       ; $6d02: $f2
	ld a, [hl-]                                      ; $6d03: $3a

jr_08b_6d04:
	ldh a, [rTAC]                                    ; $6d04: $f0 $07
	ldh a, [rHDMA1]                                  ; $6d06: $f0 $51
	dec sp                                           ; $6d08: $3b
	ccf                                              ; $6d09: $3f
	ld c, a                                          ; $6d0a: $4f
	ld d, b                                          ; $6d0b: $50
	ld h, h                                          ; $6d0c: $64
	add hl, sp                                       ; $6d0d: $39
	inc a                                            ; $6d0e: $3c
	ld a, [hl-]                                      ; $6d0f: $3a
	and b                                            ; $6d10: $a0
	cpl                                              ; $6d11: $2f
	add sp, $3d                                      ; $6d12: $e8 $3d

jr_08b_6d14:
	add hl, bc                                       ; $6d14: $09
	ldh a, [$34]                                     ; $6d15: $f0 $34
	ld b, a                                          ; $6d17: $47
	ld a, [hl]                                       ; $6d18: $7e
	jr c, @-$12                                      ; $6d19: $38 $ec

	ret c                                            ; $6d1b: $d8

	xor b                                            ; $6d1c: $a8
	ld l, a                                          ; $6d1d: $6f
	ld b, d                                          ; $6d1e: $42
	ld h, h                                          ; $6d1f: $64
	pop af                                           ; $6d20: $f1
	add [hl]                                         ; $6d21: $86
	ld a, [hl-]                                      ; $6d22: $3a
	ld b, c                                          ; $6d23: $41
	ld b, h                                          ; $6d24: $44
	inc a                                            ; $6d25: $3c
	ld d, b                                          ; $6d26: $50
	ld c, b                                          ; $6d27: $48
	and b                                            ; $6d28: $a0
	ldh a, [$34]                                     ; $6d29: $f0 $34
	ld b, a                                          ; $6d2b: $47
	pop af                                           ; $6d2c: $f1
	or c                                             ; $6d2d: $b1
	ldh a, [c]                                       ; $6d2e: $f2
	ld [hl], l                                       ; $6d2f: $75
	ld h, d                                          ; $6d30: $62
	inc a                                            ; $6d31: $3c
	ld e, l                                          ; $6d32: $5d
	ccf                                              ; $6d33: $3f
	ld c, [hl]                                       ; $6d34: $4e
	inc de                                           ; $6d35: $13
	ld h, e                                          ; $6d36: $63
	ld e, l                                          ; $6d37: $5d
	db $ec                                           ; $6d38: $ec
	ret c                                            ; $6d39: $d8

	db $ec                                           ; $6d3a: $ec
	ret c                                            ; $6d3b: $d8

	and b                                            ; $6d3c: $a0
	cpl                                              ; $6d3d: $2f
	add sp, $60                                      ; $6d3e: $e8 $60
	add hl, bc                                       ; $6d40: $09
	ld l, e                                          ; $6d41: $6b
	inc a                                            ; $6d42: $3c
	xor h                                            ; $6d43: $ac
	sbc c                                            ; $6d44: $99
	dec a                                            ; $6d45: $3d
	ld a, c                                          ; $6d46: $79
	ld h, c                                          ; $6d47: $61
	ld d, [hl]                                       ; $6d48: $56
	dec sp                                           ; $6d49: $3b
	dec a                                            ; $6d4a: $3d
	ld l, h                                          ; $6d4b: $6c
	dec a                                            ; $6d4c: $3d
	jr c, jr_08b_6d99                                ; $6d4d: $38 $4a

	xor h                                            ; $6d4f: $ac
	db $eb                                           ; $6d50: $eb
	ccf                                              ; $6d51: $3f
	and b                                            ; $6d52: $a0
	ldh a, [rHDMA4]                                  ; $6d53: $f0 $54
	ld a, $f0                                        ; $6d55: $3e $f0
	ld d, c                                          ; $6d57: $51
	dec sp                                           ; $6d58: $3b
	ccf                                              ; $6d59: $3f
	ld d, l                                          ; $6d5a: $55
	ld c, l                                          ; $6d5b: $4d
	ld c, [hl]                                       ; $6d5c: $4e
	ld c, c                                          ; $6d5d: $49
	xor h                                            ; $6d5e: $ac
	ldh a, [$29]                                     ; $6d5f: $f0 $29
	ld a, $38                                        ; $6d61: $3e $38
	ld b, c                                          ; $6d63: $41
	ld b, h                                          ; $6d64: $44
	ld e, l                                          ; $6d65: $5d
	ld e, d                                          ; $6d66: $5a
	ld a, [hl-]                                      ; $6d67: $3a
	ld [hl], h                                       ; $6d68: $74
	ld c, b                                          ; $6d69: $48
	and b                                            ; $6d6a: $a0
	ret                                              ; $6d6b: $c9


	xor h                                            ; $6d6c: $ac
	pop af                                           ; $6d6d: $f1
	jr c, @-$0e                                      ; $6d6e: $38 $f0

	ld c, l                                          ; $6d70: $4d
	db $eb                                           ; $6d71: $eb
	jr c, jr_08b_6d14                                ; $6d72: $38 $a0

	ld c, h                                          ; $6d74: $4c
	add l                                            ; $6d75: $85
	inc [hl]                                         ; $6d76: $34
	ld d, h                                          ; $6d77: $54
	ld c, l                                          ; $6d78: $4d
	ldh a, [$8a]                                     ; $6d79: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6d7b: $f0 $52
	jr c, jr_08b_6dcb                                ; $6d7d: $38 $4c

	and c                                            ; $6d7f: $a1
	cpl                                              ; $6d80: $2f
	xor $1f                                          ; $6d81: $ee $1f
	inc [hl]                                         ; $6d83: $34
	db $ed                                           ; $6d84: $ed
	ld e, e                                          ; $6d85: $5b
	ld b, l                                          ; $6d86: $45
	ld d, l                                          ; $6d87: $55
	ldh a, [rPCM12]                                  ; $6d88: $f0 $76
	ldh a, [rTMA]                                    ; $6d8a: $f0 $06
	add hl, sp                                       ; $6d8c: $39
	ld b, l                                          ; $6d8d: $45
	add hl, bc                                       ; $6d8e: $09
	ld e, [hl]                                       ; $6d8f: $5e
	dec sp                                           ; $6d90: $3b
	inc [hl]                                         ; $6d91: $34
	ld b, [hl]                                       ; $6d92: $46
	ld d, a                                          ; $6d93: $57
	ld d, e                                          ; $6d94: $53
	ld c, c                                          ; $6d95: $49
	add hl, sp                                       ; $6d96: $39
	xor b                                            ; $6d97: $a8
	ld d, c                                          ; $6d98: $51

jr_08b_6d99:
	ld [hl], b                                       ; $6d99: $70
	ld d, l                                          ; $6d9a: $55
	ldh a, [$29]                                     ; $6d9b: $f0 $29
	ld a, $38                                        ; $6d9d: $3e $38
	ld a, [hl-]                                      ; $6d9f: $3a
	ld c, b                                          ; $6da0: $48
	and b                                            ; $6da1: $a0
	adc b                                            ; $6da2: $88
	sub c                                            ; $6da3: $91
	ld [hl], $86                                     ; $6da4: $36 $86
	ld b, b                                          ; $6da6: $40
	ld c, l                                          ; $6da7: $4d
	ld e, e                                          ; $6da8: $5b
	ld d, [hl]                                       ; $6da9: $56
	xor h                                            ; $6daa: $ac
	ld d, h                                          ; $6dab: $54
	ld c, l                                          ; $6dac: $4d
	pop af                                           ; $6dad: $f1
	ld c, $3b                                        ; $6dae: $0e $3b
	ld h, c                                          ; $6db0: $61
	ld d, [hl]                                       ; $6db1: $56
	ld h, h                                          ; $6db2: $64
	add hl, sp                                       ; $6db3: $39
	inc a                                            ; $6db4: $3c
	ld a, [hl-]                                      ; $6db5: $3a
	and b                                            ; $6db6: $a0
	ldh a, [$29]                                     ; $6db7: $f0 $29
	ld a, $38                                        ; $6db9: $3e $38
	ld a, [hl-]                                      ; $6dbb: $3a
	xor $10                                          ; $6dbc: $ee $10
	ld b, b                                          ; $6dbe: $40
	ld c, l                                          ; $6dbf: $4d
	ld e, e                                          ; $6dc0: $5b
	ld d, [hl]                                       ; $6dc1: $56
	xor h                                            ; $6dc2: $ac
	pop af                                           ; $6dc3: $f1
	ld c, $3b                                        ; $6dc4: $0e $3b
	ccf                                              ; $6dc6: $3f
	ld d, l                                          ; $6dc7: $55
	ld c, [hl]                                       ; $6dc8: $4e
	ld c, h                                          ; $6dc9: $4c
	and b                                            ; $6dca: $a0

jr_08b_6dcb:
	cpl                                              ; $6dcb: $2f
	ld [$0953], a                                    ; $6dcc: $ea $53 $09
	rst JumpTable                                          ; $6dcf: $c7
	xor c                                            ; $6dd0: $a9
	db $ec                                           ; $6dd1: $ec
	ld d, $74                                        ; $6dd2: $16 $74
	ld c, b                                          ; $6dd4: $48
	and b                                            ; $6dd5: $a0
	ld b, b                                          ; $6dd6: $40
	add hl, sp                                       ; $6dd7: $39
	xor c                                            ; $6dd8: $a9
	ldh a, [$8a]                                     ; $6dd9: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6ddb: $f0 $52
	jr c, jr_08b_6dcb                                ; $6ddd: $38 $ec

	ret c                                            ; $6ddf: $d8

	and b                                            ; $6de0: $a0
	ld b, b                                          ; $6de1: $40
	add hl, sp                                       ; $6de2: $39
	xor c                                            ; $6de3: $a9
	ldh a, [$8a]                                     ; $6de4: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6de6: $f0 $52
	jr c, @+$4b                                      ; $6de8: $38 $49

	inc de                                           ; $6dea: $13
	ld [$3a4d], a                                    ; $6deb: $ea $4d $3a
	ld [hl], h                                       ; $6dee: $74
	ld c, b                                          ; $6def: $48
	and b                                            ; $6df0: $a0
	cpl                                              ; $6df1: $2f
	add sp, $61                                      ; $6df2: $e8 $61
	add hl, bc                                       ; $6df4: $09
	xor $1f                                          ; $6df5: $ee $1f
	inc [hl]                                         ; $6df7: $34
	ld b, b                                          ; $6df8: $40
	ld c, l                                          ; $6df9: $4d
	ld c, a                                          ; $6dfa: $4f
	ldh a, [$8a]                                     ; $6dfb: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6dfd: $f0 $52
	jr c, jr_08b_6e4d                                ; $6dff: $38 $4c

	and b                                            ; $6e01: $a0
	ld b, b                                          ; $6e02: $40
	ld c, l                                          ; $6e03: $4d
	ld c, a                                          ; $6e04: $4f
	inc [hl]                                         ; $6e05: $34
	ldh a, [$8a]                                     ; $6e06: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6e08: $f0 $52
	jr c, jr_08b_6e58                                ; $6e0a: $38 $4c

	xor b                                            ; $6e0c: $a8
	ld c, d                                          ; $6e0d: $4a
	ld c, a                                          ; $6e0e: $4f
	inc [hl]                                         ; $6e0f: $34
	ld l, a                                          ; $6e10: $6f
	ld c, e                                          ; $6e11: $4b
	db $ec                                           ; $6e12: $ec
	xor $42                                          ; $6e13: $ee $42
	ldh a, [$38]                                     ; $6e15: $f0 $38
	ld d, e                                          ; $6e17: $53
	inc de                                           ; $6e18: $13
	adc e                                            ; $6e19: $8b
	ld e, h                                          ; $6e1a: $5c
	ld b, h                                          ; $6e1b: $44
	ld a, [hl-]                                      ; $6e1c: $3a
	ld [hl], h                                       ; $6e1d: $74
	and b                                            ; $6e1e: $a0
	xor $1f                                          ; $6e1f: $ee $1f
	inc [hl]                                         ; $6e21: $34
	ld b, b                                          ; $6e22: $40
	ld c, l                                          ; $6e23: $4d
	ld c, a                                          ; $6e24: $4f
	ldh a, [$8a]                                     ; $6e25: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6e27: $f0 $52
	jr c, jr_08b_6e3e                                ; $6e29: $38 $13

	ld e, l                                          ; $6e2b: $5d
	ld e, d                                          ; $6e2c: $5a
	inc [hl]                                         ; $6e2d: $34
	ld l, a                                          ; $6e2e: $6f
	ld c, e                                          ; $6e2f: $4b
	inc [hl]                                         ; $6e30: $34
	db $ec                                           ; $6e31: $ec
	xor $42                                          ; $6e32: $ee $42
	ldh a, [$38]                                     ; $6e34: $f0 $38
	ld d, e                                          ; $6e36: $53
	inc de                                           ; $6e37: $13
	adc e                                            ; $6e38: $8b
	ld l, h                                          ; $6e39: $6c
	inc a                                            ; $6e3a: $3c
	ld a, [hl-]                                      ; $6e3b: $3a
	and b                                            ; $6e3c: $a0
	ld c, h                                          ; $6e3d: $4c

jr_08b_6e3e:
	add l                                            ; $6e3e: $85
	inc [hl]                                         ; $6e3f: $34
	ld l, a                                          ; $6e40: $6f
	ld b, a                                          ; $6e41: $47
	ldh a, [rPCM12]                                  ; $6e42: $f0 $76
	ldh a, [rTMA]                                    ; $6e44: $f0 $06
	add hl, sp                                       ; $6e46: $39
	inc de                                           ; $6e47: $13
	db $eb                                           ; $6e48: $eb
	and b                                            ; $6e49: $a0
	ld e, d                                          ; $6e4a: $5a
	ld c, l                                          ; $6e4b: $4d
	ld b, h                                          ; $6e4c: $44

jr_08b_6e4d:
	ld c, c                                          ; $6e4d: $49
	ld [hl], a                                       ; $6e4e: $77
	add hl, sp                                       ; $6e4f: $39
	and c                                            ; $6e50: $a1
	cpl                                              ; $6e51: $2f
	add sp, -$6b                                     ; $6e52: $e8 $95
	and c                                            ; $6e54: $a1
	db $ec                                           ; $6e55: $ec
	cp c                                             ; $6e56: $b9
	xor b                                            ; $6e57: $a8

jr_08b_6e58:
	ld l, a                                          ; $6e58: $6f
	ld c, a                                          ; $6e59: $4f
	ld d, h                                          ; $6e5a: $54
	add hl, sp                                       ; $6e5b: $39
	jr c, jr_08b_6e97                                ; $6e5c: $38 $39

	ld b, d                                          ; $6e5e: $42
	ld d, e                                          ; $6e5f: $53
	inc [hl]                                         ; $6e60: $34
	pop af                                           ; $6e61: $f1
	ld a, e                                          ; $6e62: $7b
	ldh a, [hDisp1_WY]                                     ; $6e63: $f0 $95
	ld a, [hl-]                                      ; $6e65: $3a
	ld b, d                                          ; $6e66: $42
	and b                                            ; $6e67: $a0
	db $ec                                           ; $6e68: $ec
	reti                                             ; $6e69: $d9


	ld b, b                                          ; $6e6a: $40
	add hl, sp                                       ; $6e6b: $39
	ld [hl], a                                       ; $6e6c: $77
	add hl, sp                                       ; $6e6d: $39
	xor c                                            ; $6e6e: $a9
	ld l, a                                          ; $6e6f: $6f
	ld c, a                                          ; $6e70: $4f
	ld a, [hl]                                       ; $6e71: $7e
	jr c, @+$4b                                      ; $6e72: $38 $49

	ld [hl], a                                       ; $6e74: $77
	dec sp                                           ; $6e75: $3b
	db $ec                                           ; $6e76: $ec
	add hl, de                                       ; $6e77: $19
	and b                                            ; $6e78: $a0
	ldh a, [$80]                                     ; $6e79: $f0 $80
	ldh a, [$c5]                                     ; $6e7b: $f0 $c5
	db $ec                                           ; $6e7d: $ec
	sub l                                            ; $6e7e: $95
	jr c, jr_08b_6ecd                                ; $6e7f: $38 $4c

	xor b                                            ; $6e81: $a8
	ld [hl], d                                       ; $6e82: $72
	ldh a, [hDisp1_WX]                                     ; $6e83: $f0 $96
	db $eb                                           ; $6e85: $eb
	ld d, [hl]                                       ; $6e86: $56
	and b                                            ; $6e87: $a0
	cpl                                              ; $6e88: $2f
	add sp, $74                                      ; $6e89: $e8 $74
	and c                                            ; $6e8b: $a1
	ret                                              ; $6e8c: $c9


	xor h                                            ; $6e8d: $ac
	ld l, a                                          ; $6e8e: $6f
	ld b, d                                          ; $6e8f: $42
	pop af                                           ; $6e90: $f1
	ld a, e                                          ; $6e91: $7b
	ldh a, [hDisp1_WY]                                     ; $6e92: $f0 $95
	db $ec                                           ; $6e94: $ec
	ret c                                            ; $6e95: $d8

	inc a                                            ; $6e96: $3c

jr_08b_6e97:
	ld a, [hl-]                                      ; $6e97: $3a
	ld c, b                                          ; $6e98: $48
	and b                                            ; $6e99: $a0
	ld l, a                                          ; $6e9a: $6f
	ld b, a                                          ; $6e9b: $47
	ld c, e                                          ; $6e9c: $4b
	xor h                                            ; $6e9d: $ac
	ldh a, [rPCM12]                                  ; $6e9e: $f0 $76
	ldh a, [rTMA]                                    ; $6ea0: $f0 $06
	ld h, e                                          ; $6ea2: $63
	ld a, [hl-]                                      ; $6ea3: $3a
	jr c, jr_08b_6eef                                ; $6ea4: $38 $49

	ld [hl], a                                       ; $6ea6: $77
	add hl, sp                                       ; $6ea7: $39
	ld a, [hl-]                                      ; $6ea8: $3a
	ld [hl], h                                       ; $6ea9: $74
	and b                                            ; $6eaa: $a0
	sbc $6f                                          ; $6eab: $de $6f
	ld b, a                                          ; $6ead: $47
	ldh a, [rPCM12]                                  ; $6eae: $f0 $76
	ldh a, [rTMA]                                    ; $6eb0: $f0 $06
	add hl, sp                                       ; $6eb2: $39
	and c                                            ; $6eb3: $a1
	cpl                                              ; $6eb4: $2f
	jp hl                                            ; $6eb5: $e9


	ld e, a                                          ; $6eb6: $5f
	and c                                            ; $6eb7: $a1
	ldh a, [$8a]                                     ; $6eb8: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6eba: $f0 $52
	jr c, jr_08b_6f07                                ; $6ebc: $38 $49

	ld [hl], a                                       ; $6ebe: $77
	add hl, sp                                       ; $6ebf: $39
	ld e, l                                          ; $6ec0: $5d
	ld e, d                                          ; $6ec1: $5a
	xor h                                            ; $6ec2: $ac
	ld c, a                                          ; $6ec3: $4f
	add hl, sp                                       ; $6ec4: $39
	ldh a, [rHDMA4]                                  ; $6ec5: $f0 $54
	ld a, $87                                        ; $6ec7: $3e $87
	add h                                            ; $6ec9: $84
	dec sp                                           ; $6eca: $3b
	pop af                                           ; $6ecb: $f1
	rla                                              ; $6ecc: $17

jr_08b_6ecd:
	jr c, jr_08b_6f11                                ; $6ecd: $38 $42

	ld d, e                                          ; $6ecf: $53
	inc de                                           ; $6ed0: $13
	adc e                                            ; $6ed1: $8b
	ld l, h                                          ; $6ed2: $6c
	inc a                                            ; $6ed3: $3c
	ld a, [hl-]                                      ; $6ed4: $3a
	ld c, b                                          ; $6ed5: $48
	and b                                            ; $6ed6: $a0
	ldh a, [$8a]                                     ; $6ed7: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6ed9: $f0 $52
	jr c, jr_08b_6f1e                                ; $6edb: $38 $41

	ld b, h                                          ; $6edd: $44
	ld e, l                                          ; $6ede: $5d
	ld e, d                                          ; $6edf: $5a
	xor h                                            ; $6ee0: $ac
	ret                                              ; $6ee1: $c9


	db $ed                                           ; $6ee2: $ed
	ld h, a                                          ; $6ee3: $67
	dec sp                                           ; $6ee4: $3b
	pop af                                           ; $6ee5: $f1
	rla                                              ; $6ee6: $17
	jr c, jr_08b_6f25                                ; $6ee7: $38 $3c

	ld a, [hl-]                                      ; $6ee9: $3a
	and b                                            ; $6eea: $a0
	ret                                              ; $6eeb: $c9


	db $ed                                           ; $6eec: $ed
	ld h, a                                          ; $6eed: $67
	dec sp                                           ; $6eee: $3b

jr_08b_6eef:
	pop af                                           ; $6eef: $f1
	rla                                              ; $6ef0: $17
	jr c, jr_08b_6f06                                ; $6ef1: $38 $13

	ld e, l                                          ; $6ef3: $5d
	ld e, d                                          ; $6ef4: $5a
	inc [hl]                                         ; $6ef5: $34
	ld l, a                                          ; $6ef6: $6f
	ld b, a                                          ; $6ef7: $47
	ldh a, [rPCM12]                                  ; $6ef8: $f0 $76
	ldh a, [rTMA]                                    ; $6efa: $f0 $06
	add hl, sp                                       ; $6efc: $39
	inc a                                            ; $6efd: $3c
	ld a, [hl-]                                      ; $6efe: $3a
	and b                                            ; $6eff: $a0
	ld c, h                                          ; $6f00: $4c
	add l                                            ; $6f01: $85
	xor h                                            ; $6f02: $ac
	ld l, e                                          ; $6f03: $6b
	inc a                                            ; $6f04: $3c
	ld d, c                                          ; $6f05: $51

jr_08b_6f06:
	ld [hl], b                                       ; $6f06: $70

jr_08b_6f07:
	ld d, l                                          ; $6f07: $55
	ldh a, [$71]                                     ; $6f08: $f0 $71
	ld d, l                                          ; $6f0a: $55
	ld a, [hl-]                                      ; $6f0b: $3a
	jr c, @-$5d                                      ; $6f0c: $38 $a1

	cpl                                              ; $6f0e: $2f
	ld b, b                                          ; $6f0f: $40
	add hl, sp                                       ; $6f10: $39

jr_08b_6f11:
	ld b, h                                          ; $6f11: $44
	ld c, h                                          ; $6f12: $4c
	inc [hl]                                         ; $6f13: $34
	ld c, a                                          ; $6f14: $4f
	add hl, sp                                       ; $6f15: $39
	db $ec                                           ; $6f16: $ec
	rrca                                             ; $6f17: $0f
	and c                                            ; $6f18: $a1
	db $ec                                           ; $6f19: $ec
	cp c                                             ; $6f1a: $b9
	xor b                                            ; $6f1b: $a8
	ldh a, [$08]                                     ; $6f1c: $f0 $08

jr_08b_6f1e:
	dec sp                                           ; $6f1e: $3b
	ld c, c                                          ; $6f1f: $49
	db $eb                                           ; $6f20: $eb
	ld d, [hl]                                       ; $6f21: $56
	and b                                            ; $6f22: $a0
	db $ec                                           ; $6f23: $ec
	cp c                                             ; $6f24: $b9

jr_08b_6f25:
	xor b                                            ; $6f25: $a8
	ldh a, [$71]                                     ; $6f26: $f0 $71
	ld d, l                                          ; $6f28: $55
	ccf                                              ; $6f29: $3f
	xor h                                            ; $6f2a: $ac
	ldh a, [rHDMA4]                                  ; $6f2b: $f0 $54
	ld a, $f2                                        ; $6f2d: $3e $f2
	dec e                                            ; $6f2f: $1d
	adc [hl]                                         ; $6f30: $8e
	ld a, $3f                                        ; $6f31: $3e $3f
	dec a                                            ; $6f33: $3d

jr_08b_6f34:
	ld b, d                                          ; $6f34: $42
	ld c, b                                          ; $6f35: $48
	and b                                            ; $6f36: $a0
	ld d, h                                          ; $6f37: $54
	ld c, l                                          ; $6f38: $4d
	pop af                                           ; $6f39: $f1
	ld c, e                                          ; $6f3a: $4b
	ldh a, [$3e]                                     ; $6f3b: $f0 $3e
	xor h                                            ; $6f3d: $ac
	ldh a, [c]                                       ; $6f3e: $f2
	call nz, $f147                                   ; $6f3f: $c4 $47 $f1
	dec hl                                           ; $6f42: $2b
	ld b, c                                          ; $6f43: $41
	ld b, h                                          ; $6f44: $44
	ld d, b                                          ; $6f45: $50
	inc de                                           ; $6f46: $13
	db $eb                                           ; $6f47: $eb
	ld e, c                                          ; $6f48: $59
	inc a                                            ; $6f49: $3c
	ld c, c                                          ; $6f4a: $49
	inc de                                           ; $6f4b: $13
	ld [hl], a                                       ; $6f4c: $77
	dec sp                                           ; $6f4d: $3b
	ld h, c                                          ; $6f4e: $61
	ld d, [hl]                                       ; $6f4f: $56
	dec sp                                           ; $6f50: $3b
	dec a                                            ; $6f51: $3d
	and b                                            ; $6f52: $a0
	cpl                                              ; $6f53: $2f
	add sp, $17                                      ; $6f54: $e8 $17
	add hl, bc                                       ; $6f56: $09
	rst JumpTable                                          ; $6f57: $c7
	inc a                                            ; $6f58: $3c
	ld c, a                                          ; $6f59: $4f
	inc de                                           ; $6f5a: $13
	ld a, $4d                                        ; $6f5b: $3e $4d
	ld a, [hl-]                                      ; $6f5d: $3a
	jr c, jr_08b_6fbd                                ; $6f5e: $38 $5d

	ld e, d                                          ; $6f60: $5a
	xor l                                            ; $6f61: $ad
	ld c, d                                          ; $6f62: $4a
	ld c, a                                          ; $6f63: $4f
	ld c, b                                          ; $6f64: $48
	and b                                            ; $6f65: $a0
	ld l, a                                          ; $6f66: $6f
	inc [hl]                                         ; $6f67: $34
	db $eb                                           ; $6f68: $eb
	ld a, e                                          ; $6f69: $7b
	ld c, e                                          ; $6f6a: $4b
	xor h                                            ; $6f6b: $ac
	ld b, [hl]                                       ; $6f6c: $46
	ld d, d                                          ; $6f6d: $52
	ld d, a                                          ; $6f6e: $57

jr_08b_6f6f:
	adc e                                            ; $6f6f: $8b
	ld e, h                                          ; $6f70: $5c
	db $ec                                           ; $6f71: $ec
	ret c                                            ; $6f72: $d8

	ld b, d                                          ; $6f73: $42
	and b                                            ; $6f74: $a0
	ld b, [hl]                                       ; $6f75: $46
	ld d, d                                          ; $6f76: $52
	ld d, a                                          ; $6f77: $57
	xor h                                            ; $6f78: $ac
	pop af                                           ; $6f79: $f1
	ld a, e                                          ; $6f7a: $7b
	ldh a, [hDisp1_WY]                                     ; $6f7b: $f0 $95
	ld d, e                                          ; $6f7d: $53
	ld b, [hl]                                       ; $6f7e: $46
	ld h, e                                          ; $6f7f: $63
	ld a, [hl-]                                      ; $6f80: $3a
	jr c, jr_08b_6f6f                                ; $6f81: $38 $ec

	ld [de], a                                       ; $6f83: $12
	and b                                            ; $6f84: $a0
	cpl                                              ; $6f85: $2f
	add sp, $37                                      ; $6f86: $e8 $37
	add hl, bc                                       ; $6f88: $09
	add hl, sp                                       ; $6f89: $39
	inc [hl]                                         ; $6f8a: $34
	xor $1f                                          ; $6f8b: $ee $1f
	xor b                                            ; $6f8d: $a8
	ldh a, [$9f]                                     ; $6f8e: $f0 $9f
	ld e, e                                          ; $6f90: $5b
	ccf                                              ; $6f91: $3f
	ld c, [hl]                                       ; $6f92: $4e
	ld e, l                                          ; $6f93: $5d
	ld e, d                                          ; $6f94: $5a
	ld c, b                                          ; $6f95: $48
	and b                                            ; $6f96: $a0
	rst JumpTable                                          ; $6f97: $c7
	add d                                            ; $6f98: $82
	add hl, sp                                       ; $6f99: $39
	ld a, [hl-]                                      ; $6f9a: $3a
	ld d, b                                          ; $6f9b: $50
	xor b                                            ; $6f9c: $a8
	ldh a, [$9f]                                     ; $6f9d: $f0 $9f
	ld e, e                                          ; $6f9f: $5b
	ld c, [hl]                                       ; $6fa0: $4e
	ld e, l                                          ; $6fa1: $5d
	ld e, d                                          ; $6fa2: $5a
	ld c, b                                          ; $6fa3: $48
	and b                                            ; $6fa4: $a0
	adc b                                            ; $6fa5: $88
	sub c                                            ; $6fa6: $91
	xor c                                            ; $6fa7: $a9
	add a                                            ; $6fa8: $87
	ldh a, [$5b]                                     ; $6fa9: $f0 $5b
	ldh a, [$5e]                                     ; $6fab: $f0 $5e
	inc a                                            ; $6fad: $3c
	ld a, [hl-]                                      ; $6fae: $3a
	ld [hl], h                                       ; $6faf: $74
	ld c, b                                          ; $6fb0: $48
	and b                                            ; $6fb1: $a0
	jr c, jr_08b_6f34                                ; $6fb2: $38 $80

	ld a, b                                          ; $6fb4: $78
	ccf                                              ; $6fb5: $3f
	ld c, a                                          ; $6fb6: $4f
	xor h                                            ; $6fb7: $ac
	ld d, c                                          ; $6fb8: $51
	ld [hl], b                                       ; $6fb9: $70
	jr c, jr_08b_7005                                ; $6fba: $38 $49

	ld d, h                                          ; $6fbc: $54

jr_08b_6fbd:
	ld e, a                                          ; $6fbd: $5f
	ld c, h                                          ; $6fbe: $4c
	and b                                            ; $6fbf: $a0
	cpl                                              ; $6fc0: $2f
	add sp, -$6a                                     ; $6fc1: $e8 $96
	add hl, bc                                       ; $6fc3: $09
	ld b, [hl]                                       ; $6fc4: $46
	dec sp                                           ; $6fc5: $3b
	inc [hl]                                         ; $6fc6: $34
	call nc, $4542                                   ; $6fc7: $d4 $42 $45
	xor b                                            ; $6fca: $a8
	ld l, a                                          ; $6fcb: $6f
	ld b, a                                          ; $6fcc: $47
	ld a, a                                          ; $6fcd: $7f
	ld h, d                                          ; $6fce: $62
	pop af                                           ; $6fcf: $f1
	sbc l                                            ; $6fd0: $9d
	ld h, e                                          ; $6fd1: $63
	ld a, [hl-]                                      ; $6fd2: $3a
	jr c, jr_08b_701f                                ; $6fd3: $38 $4a

	and b                                            ; $6fd5: $a0
	ld a, a                                          ; $6fd6: $7f
	ld h, d                                          ; $6fd7: $62
	pop af                                           ; $6fd8: $f1
	sbc l                                            ; $6fd9: $9d
	dec sp                                           ; $6fda: $3b
	ccf                                              ; $6fdb: $3f
	ld d, l                                          ; $6fdc: $55
	ld c, l                                          ; $6fdd: $4d
	ccf                                              ; $6fde: $3f
	xor h                                            ; $6fdf: $ac
	ld b, [hl]                                       ; $6fe0: $46
	ld d, a                                          ; $6fe1: $57
	ld d, e                                          ; $6fe2: $53
	ld c, c                                          ; $6fe3: $49
	add hl, sp                                       ; $6fe4: $39
	xor b                                            ; $6fe5: $a8
	ld c, d                                          ; $6fe6: $4a
	ld c, a                                          ; $6fe7: $4f
	inc [hl]                                         ; $6fe8: $34
	call nc, Call_08b_4563                           ; $6fe9: $d4 $63 $45
	and b                                            ; $6fec: $a0
	ld b, [hl]                                       ; $6fed: $46
	ld d, a                                          ; $6fee: $57
	ld d, e                                          ; $6fef: $53
	ld c, c                                          ; $6ff0: $49
	add hl, sp                                       ; $6ff1: $39
	xor b                                            ; $6ff2: $a8
	ld a, a                                          ; $6ff3: $7f
	ld h, d                                          ; $6ff4: $62
	pop af                                           ; $6ff5: $f1
	sbc l                                            ; $6ff6: $9d
	dec sp                                           ; $6ff7: $3b
	ccf                                              ; $6ff8: $3f
	ld d, l                                          ; $6ff9: $55
	ld c, l                                          ; $6ffa: $4d
	ccf                                              ; $6ffb: $3f

jr_08b_6ffc:
	and b                                            ; $6ffc: $a0
	cpl                                              ; $6ffd: $2f
	add sp, $6a                                      ; $6ffe: $e8 $6a
	and c                                            ; $7000: $a1
	ld e, [hl]                                       ; $7001: $5e
	dec sp                                           ; $7002: $3b
	xor c                                            ; $7003: $a9
	ld d, h                                          ; $7004: $54

jr_08b_7005:
	ld d, h                                          ; $7005: $54
	ld b, l                                          ; $7006: $45
	ld d, a                                          ; $7007: $57
	ld d, c                                          ; $7008: $51
	ld [hl], b                                       ; $7009: $70
	jr c, jr_08b_6ffc                                ; $700a: $38 $f0

	jr z, jr_08b_7049                                ; $700c: $28 $3b

	ccf                                              ; $700e: $3f
	ld c, b                                          ; $700f: $48
	and b                                            ; $7010: $a0
	ld e, [hl]                                       ; $7011: $5e
	dec sp                                           ; $7012: $3b
	xor c                                            ; $7013: $a9
	jr c, jr_08b_704e                                ; $7014: $38 $38

	ld h, e                                          ; $7016: $63
	xor l                                            ; $7017: $ad

jr_08b_7018:
	pop af                                           ; $7018: $f1
	ld b, $f1                                        ; $7019: $06 $f1
	ld a, $3e                                        ; $701b: $3e $3e
	ccf                                              ; $701d: $3f
	ld h, h                                          ; $701e: $64

jr_08b_701f:
	ld d, l                                          ; $701f: $55
	ld c, b                                          ; $7020: $48
	and b                                            ; $7021: $a0
	ld d, c                                          ; $7022: $51
	inc [hl]                                         ; $7023: $34
	ld d, c                                          ; $7024: $51
	ld [hl], b                                       ; $7025: $70
	jr c, jr_08b_7018                                ; $7026: $38 $f0

	jr z, jr_08b_7065                                ; $7028: $28 $3b

	ccf                                              ; $702a: $3f
	and c                                            ; $702b: $a1
	cpl                                              ; $702c: $2f
	jp hl                                            ; $702d: $e9


	nop                                              ; $702e: $00
	add hl, bc                                       ; $702f: $09
	db $d3                                           ; $7030: $d3
	inc a                                            ; $7031: $3c
	ld a, [hl-]                                      ; $7032: $3a
	ld c, b                                          ; $7033: $48
	and b                                            ; $7034: $a0
	db $ec                                           ; $7035: $ec
	ld d, $ad                                        ; $7036: $16 $ad
	ld l, a                                          ; $7038: $6f
	ld c, e                                          ; $7039: $4b
	ld l, l                                          ; $703a: $6d
	ldh a, [rTIMA]                                   ; $703b: $f0 $05
	xor h                                            ; $703d: $ac
	pop af                                           ; $703e: $f1
	sbc e                                            ; $703f: $9b
	ld c, l                                          ; $7040: $4d
	ld b, b                                          ; $7041: $40
	add hl, sp                                       ; $7042: $39
	ld c, a                                          ; $7043: $4f
	ld a, [hl-]                                      ; $7044: $3a
	jr c, jr_08b_70aa                                ; $7045: $38 $63

	and b                                            ; $7047: $a0
	db $ec                                           ; $7048: $ec

jr_08b_7049:
	ld d, $ad                                        ; $7049: $16 $ad
	ld b, [hl]                                       ; $704b: $46
	ld d, d                                          ; $704c: $52
	ld d, a                                          ; $704d: $57

jr_08b_704e:
	pop af                                           ; $704e: $f1
	sbc e                                            ; $704f: $9b
	ld c, l                                          ; $7050: $4d
	dec a                                            ; $7051: $3d
	ld d, l                                          ; $7052: $55
	ld a, [hl-]                                      ; $7053: $3a
	jr c, jr_08b_70a2                                ; $7054: $38 $4c

	and b                                            ; $7056: $a0
	ld b, b                                          ; $7057: $40
	ld c, l                                          ; $7058: $4d
	ld e, e                                          ; $7059: $5b
	ld d, [hl]                                       ; $705a: $56
	inc [hl]                                         ; $705b: $34
	db $ec                                           ; $705c: $ec
	push bc                                          ; $705d: $c5
	xor h                                            ; $705e: $ac
	ldh a, [rAUD2HIGH]                               ; $705f: $f0 $19
	ld b, a                                          ; $7061: $47
	sub [hl]                                         ; $7062: $96
	ld d, a                                          ; $7063: $57
	ld d, d                                          ; $7064: $52

jr_08b_7065:
	ld a, $66                                        ; $7065: $3e $66
	add hl, sp                                       ; $7067: $39
	and b                                            ; $7068: $a0
	cpl                                              ; $7069: $2f
	ld b, e                                          ; $706a: $43
	ld b, b                                          ; $706b: $40
	add hl, sp                                       ; $706c: $39
	ld b, h                                          ; $706d: $44
	ld c, h                                          ; $706e: $4c
	xor b                                            ; $706f: $a8
	db $eb                                           ; $7070: $eb
	ld d, d                                          ; $7071: $52
	inc a                                            ; $7072: $3c
	and b                                            ; $7073: $a0
	db $ec                                           ; $7074: $ec
	inc de                                           ; $7075: $13
	ld h, h                                          ; $7076: $64
	pop af                                           ; $7077: $f1
	xor c                                            ; $7078: $a9
	ld d, e                                          ; $7079: $53
	xor h                                            ; $707a: $ac
	adc $38                                          ; $707b: $ce $38
	ld c, [hl]                                       ; $707d: $4e
	ld c, h                                          ; $707e: $4c
	and b                                            ; $707f: $a0
	cpl                                              ; $7080: $2f
	jp hl                                            ; $7081: $e9


	ld a, $09                                        ; $7082: $3e $09
	sbc $f0                                          ; $7084: $de $f0
	ld b, d                                          ; $7086: $42
	ld e, b                                          ; $7087: $58
	ld h, e                                          ; $7088: $63
	ld a, $38                                        ; $7089: $3e $38
	inc de                                           ; $708b: $13
	dec a                                            ; $708c: $3d
	ld c, c                                          ; $708d: $49
	ld e, [hl]                                       ; $708e: $5e
	ld c, h                                          ; $708f: $4c
	and b                                            ; $7090: $a0
	xor $1f                                          ; $7091: $ee $1f
	inc [hl]                                         ; $7093: $34
	ld [hl], d                                       ; $7094: $72
	ld c, c                                          ; $7095: $49
	ld c, l                                          ; $7096: $4d
	ld h, c                                          ; $7097: $61
	ld d, [hl]                                       ; $7098: $56
	add hl, sp                                       ; $7099: $39
	ldh a, [$08]                                     ; $709a: $f0 $08
	ld e, d                                          ; $709c: $5a
	xor h                                            ; $709d: $ac
	ldh a, [$57]                                     ; $709e: $f0 $57
	ldh a, [$ae]                                     ; $70a0: $f0 $ae

jr_08b_70a2:
	ld c, h                                          ; $70a2: $4c
	and b                                            ; $70a3: $a0
	ldh a, [$57]                                     ; $70a4: $f0 $57
	ldh a, [$ae]                                     ; $70a6: $f0 $ae
	xor h                                            ; $70a8: $ac
	jp hl                                            ; $70a9: $e9


jr_08b_70aa:
	db $db                                           ; $70aa: $db
	and b                                            ; $70ab: $a0
	cpl                                              ; $70ac: $2f
	add sp, -$20                                     ; $70ad: $e8 $e0
	add hl, bc                                       ; $70af: $09
	ld e, [hl]                                       ; $70b0: $5e
	dec sp                                           ; $70b1: $3b
	xor c                                            ; $70b2: $a9
	ld b, b                                          ; $70b3: $40
	ld b, c                                          ; $70b4: $41
	ld a, [hl-]                                      ; $70b5: $3a
	sbc d                                            ; $70b6: $9a
	ld c, b                                          ; $70b7: $48
	and b                                            ; $70b8: $a0
	db $ec                                           ; $70b9: $ec
	db $d3                                           ; $70ba: $d3
	xor h                                            ; $70bb: $ac
	ld b, b                                          ; $70bc: $40
	ld b, c                                          ; $70bd: $41
	ld a, [hl-]                                      ; $70be: $3a
	sbc d                                            ; $70bf: $9a
	ld a, $3c                                        ; $70c0: $3e $3c
	inc de                                           ; $70c2: $13
	ldh a, [$a4]                                     ; $70c3: $f0 $a4
	ld e, [hl]                                       ; $70c5: $5e
	ld d, b                                          ; $70c6: $50
	ld c, l                                          ; $70c7: $4d
	ld a, [hl-]                                      ; $70c8: $3a
	jr c, jr_08b_710d                                ; $70c9: $38 $42

	and c                                            ; $70cb: $a1
	ld [$3a54], a                                    ; $70cc: $ea $54 $3a
	ld a, a                                          ; $70cf: $7f
	ldh a, [rTAC]                                    ; $70d0: $f0 $07
	ld d, e                                          ; $70d2: $53
	inc de                                           ; $70d3: $13
	ldh a, [c]                                       ; $70d4: $f2
	ld d, a                                          ; $70d5: $57
	ldh a, [rAUD1LOW]                                ; $70d6: $f0 $13
	ld a, $48                                        ; $70d8: $3e $48
	and b                                            ; $70da: $a0
	cpl                                              ; $70db: $2f
	jp hl                                            ; $70dc: $e9


	or a                                             ; $70dd: $b7
	add hl, bc                                       ; $70de: $09
	xor $06                                          ; $70df: $ee $06
	ld b, a                                          ; $70e1: $47
	inc de                                           ; $70e2: $13
	ld [hl], d                                       ; $70e3: $72
	ld c, l                                          ; $70e4: $4d
	ccf                                              ; $70e5: $3f
	ld b, l                                          ; $70e6: $45
	inc a                                            ; $70e7: $3c
	dec sp                                           ; $70e8: $3b
	dec a                                            ; $70e9: $3d
	ld c, b                                          ; $70ea: $48
	and b                                            ; $70eb: $a0
	db $eb                                           ; $70ec: $eb
	sub d                                            ; $70ed: $92
	xor b                                            ; $70ee: $a8
	ld b, [hl]                                       ; $70ef: $46
	dec sp                                           ; $70f0: $3b
	ld h, c                                          ; $70f1: $61
	ld b, d                                          ; $70f2: $42
	pop af                                           ; $70f3: $f1
	xor c                                            ; $70f4: $a9
	inc [hl]                                         ; $70f5: $34
	ldh a, [$5d]                                     ; $70f6: $f0 $5d
	ld a, [hl-]                                      ; $70f8: $3a
	ldh a, [c]                                       ; $70f9: $f2
	ret z                                            ; $70fa: $c8

	ld c, h                                          ; $70fb: $4c
	and b                                            ; $70fc: $a0
	ld b, [hl]                                       ; $70fd: $46
	dec sp                                           ; $70fe: $3b
	ld h, c                                          ; $70ff: $61
	ld b, a                                          ; $7100: $47
	ld c, a                                          ; $7101: $4f
	xor h                                            ; $7102: $ac
	db $ec                                           ; $7103: $ec
	inc de                                           ; $7104: $13
	pop af                                           ; $7105: $f1
	xor c                                            ; $7106: $a9
	ld d, e                                          ; $7107: $53
	jr c, jr_08b_7158                                ; $7108: $38 $4e

	ld b, l                                          ; $710a: $45
	and b                                            ; $710b: $a0
	di                                               ; $710c: $f3

jr_08b_710d:
	ld b, [hl]                                       ; $710d: $46
	ld c, c                                          ; $710e: $49
	inc a                                            ; $710f: $3c
	xor h                                            ; $7110: $ac
	ld d, c                                          ; $7111: $51
	ld [hl], b                                       ; $7112: $70
	ld d, l                                          ; $7113: $55
	ldh a, [$71]                                     ; $7114: $f0 $71
	jr c, jr_08b_715d                                ; $7116: $38 $45

	ld c, h                                          ; $7118: $4c
	and b                                            ; $7119: $a0
	cpl                                              ; $711a: $2f
	xor $1e                                          ; $711b: $ee $1e
	pop af                                           ; $711d: $f1
	push af                                          ; $711e: $f5
	ld c, b                                          ; $711f: $48
	dec [hl]                                         ; $7120: $35
	db $ec                                           ; $7121: $ec
	reti                                             ; $7122: $d9


	ldh a, [$71]                                     ; $7123: $f0 $71
	jr c, jr_08b_716c                                ; $7125: $38 $45

	ld c, h                                          ; $7127: $4c
	add hl, bc                                       ; $7128: $09
	db $ec                                           ; $7129: $ec
	inc e                                            ; $712a: $1c
	xor b                                            ; $712b: $a8
	pop af                                           ; $712c: $f1
	cpl                                              ; $712d: $2f
	ld c, d                                          ; $712e: $4a
	ldh a, [c]                                       ; $712f: $f2
	ret nz                                           ; $7130: $c0

	ld h, e                                          ; $7131: $63
	ld c, l                                          ; $7132: $4d
	dec a                                            ; $7133: $3d
	ld d, b                                          ; $7134: $50
	ld c, b                                          ; $7135: $48
	and b                                            ; $7136: $a0
	ld b, b                                          ; $7137: $40
	ld c, l                                          ; $7138: $4d
	ld d, e                                          ; $7139: $53
	pop af                                           ; $713a: $f1
	db $fc                                           ; $713b: $fc
	ldh a, [rOCPS]                                   ; $713c: $f0 $6a
	ld b, l                                          ; $713e: $45
	ld c, h                                          ; $713f: $4c
	xor b                                            ; $7140: $a8
	pop af                                           ; $7141: $f1
	cpl                                              ; $7142: $2f
	ld c, d                                          ; $7143: $4a
	ldh a, [c]                                       ; $7144: $f2
	ret nz                                           ; $7145: $c0

	ld h, e                                          ; $7146: $63
	ld c, l                                          ; $7147: $4d
	dec a                                            ; $7148: $3d
	ld d, b                                          ; $7149: $50
	xor h                                            ; $714a: $ac
	pop af                                           ; $714b: $f1
	jp hl                                            ; $714c: $e9


	inc a                                            ; $714d: $3c
	ld d, b                                          ; $714e: $50
	ld a, [hl-]                                      ; $714f: $3a
	jr c, jr_08b_719e                                ; $7150: $38 $4c

	and b                                            ; $7152: $a0
	ld b, b                                          ; $7153: $40
	ld c, l                                          ; $7154: $4d
	ld d, e                                          ; $7155: $53
	pop af                                           ; $7156: $f1
	db $fc                                           ; $7157: $fc

jr_08b_7158:
	ldh a, [rOCPS]                                   ; $7158: $f0 $6a
	ld b, l                                          ; $715a: $45
	ld c, h                                          ; $715b: $4c
	and b                                            ; $715c: $a0

jr_08b_715d:
	cpl                                              ; $715d: $2f
	di                                               ; $715e: $f3
	ld b, [hl]                                       ; $715f: $46
	ld c, c                                          ; $7160: $49
	ldh a, [$fc]                                     ; $7161: $f0 $fc
	dec sp                                           ; $7163: $3b
	dec a                                            ; $7164: $3d
	ld d, h                                          ; $7165: $54
	ld c, c                                          ; $7166: $49
	ldh a, [rAUD1LOW]                                ; $7167: $f0 $13
	jr c, @+$3e                                      ; $7169: $38 $3c

	ld d, b                                          ; $716b: $50

jr_08b_716c:
	add hl, bc                                       ; $716c: $09
	ld b, b                                          ; $716d: $40
	ld c, l                                          ; $716e: $4d
	dec sp                                           ; $716f: $3b
	ccf                                              ; $7170: $3f
	ld c, b                                          ; $7171: $48
	xor h                                            ; $7172: $ac
	pop af                                           ; $7173: $f1
	db $fc                                           ; $7174: $fc
	ldh a, [rOCPS]                                   ; $7175: $f0 $6a
	ld b, d                                          ; $7177: $42
	add h                                            ; $7178: $84
	ld c, e                                          ; $7179: $4b
	inc de                                           ; $717a: $13
	ld b, b                                          ; $717b: $40
	add hl, sp                                       ; $717c: $39
	ld a, [hl-]                                      ; $717d: $3a
	ld b, c                                          ; $717e: $41
	ld e, e                                          ; $717f: $5b
	ld d, [hl]                                       ; $7180: $56
	ld c, b                                          ; $7181: $48
	and b                                            ; $7182: $a0
	ld b, b                                          ; $7183: $40
	ld b, c                                          ; $7184: $41
	ld a, [hl-]                                      ; $7185: $3a
	ld b, d                                          ; $7186: $42
	xor h                                            ; $7187: $ac
	sub c                                            ; $7188: $91
	dec a                                            ; $7189: $3d
	ld d, a                                          ; $718a: $57
	sbc [hl]                                         ; $718b: $9e
	ld c, d                                          ; $718c: $4a
	ld a, $66                                        ; $718d: $3e $66
	add hl, sp                                       ; $718f: $39
	and b                                            ; $7190: $a0
	ld b, b                                          ; $7191: $40
	ld b, c                                          ; $7192: $41
	ld a, [hl-]                                      ; $7193: $3a
	add h                                            ; $7194: $84
	jr c, @+$50                                      ; $7195: $38 $4e

	ld b, d                                          ; $7197: $42
	and c                                            ; $7198: $a1
	cpl                                              ; $7199: $2f
	db $ed                                           ; $719a: $ed
	ld e, [hl]                                       ; $719b: $5e
	ldh a, [$71]                                     ; $719c: $f0 $71

jr_08b_719e:
	ld d, l                                          ; $719e: $55
	ld a, [hl-]                                      ; $719f: $3a
	jr c, jr_08b_71e7                                ; $71a0: $38 $45

	add hl, bc                                       ; $71a2: $09
	ldh a, [c]                                       ; $71a3: $f2
	ld e, l                                          ; $71a4: $5d
	ld c, a                                          ; $71a5: $4f
	ld a, $38                                        ; $71a6: $3e $38
	ld c, h                                          ; $71a8: $4c
	xor b                                            ; $71a9: $a8
	ldh a, [c]                                       ; $71aa: $f2
	ret nz                                           ; $71ab: $c0

	ld h, e                                          ; $71ac: $63
	ld c, l                                          ; $71ad: $4d
	dec a                                            ; $71ae: $3d
	ld c, c                                          ; $71af: $49
	ld e, h                                          ; $71b0: $5c
	ld c, e                                          ; $71b1: $4b
	inc de                                           ; $71b2: $13
	ldh a, [c]                                       ; $71b3: $f2
	dec c                                            ; $71b4: $0d
	dec sp                                           ; $71b5: $3b
	ccf                                              ; $71b6: $3f

jr_08b_71b7:
	ld c, h                                          ; $71b7: $4c
	and b                                            ; $71b8: $a0
	sbc $ac                                          ; $71b9: $de $ac
	ld b, b                                          ; $71bb: $40
	add hl, sp                                       ; $71bc: $39
	ld [hl], a                                       ; $71bd: $77
	dec sp                                           ; $71be: $3b
	ccf                                              ; $71bf: $3f
	ld c, [hl]                                       ; $71c0: $4e
	ld b, d                                          ; $71c1: $42
	and c                                            ; $71c2: $a1
	ld d, c                                          ; $71c3: $51
	ld [hl], b                                       ; $71c4: $70
	jr c, jr_08b_71b7                                ; $71c5: $38 $f0

	ld h, a                                          ; $71c7: $67
	ldh a, [$9f]                                     ; $71c8: $f0 $9f
	ld c, h                                          ; $71ca: $4c
	ld c, b                                          ; $71cb: $48
	and b                                            ; $71cc: $a0
	ld l, d                                          ; $71cd: $6a
	ld [hl], d                                       ; $71ce: $72
	ccf                                              ; $71cf: $3f
	ld e, h                                          ; $71d0: $5c
	dec a                                            ; $71d1: $3d
	xor h                                            ; $71d2: $ac
	ld a, l                                          ; $71d3: $7d
	ldh a, [$03]                                     ; $71d4: $f0 $03
	ldh a, [$35]                                     ; $71d6: $f0 $35
	ld b, d                                          ; $71d8: $42
	db $ec                                           ; $71d9: $ec
	ldh a, [c]                                       ; $71da: $f2
	ld d, e                                          ; $71db: $53
	db $ec                                           ; $71dc: $ec
	cp c                                             ; $71dd: $b9
	ld c, h                                          ; $71de: $4c
	and b                                            ; $71df: $a0
	cpl                                              ; $71e0: $2f
	add sp, -$1a                                     ; $71e1: $e8 $e6
	add hl, bc                                       ; $71e3: $09
	sbc $ac                                          ; $71e4: $de $ac
	ld l, a                                          ; $71e6: $6f

jr_08b_71e7:
	ld c, a                                          ; $71e7: $4f
	ld b, b                                          ; $71e8: $40
	add hl, sp                                       ; $71e9: $39
	ld [hl], a                                       ; $71ea: $77
	add hl, sp                                       ; $71eb: $39
	ld a, [hl-]                                      ; $71ec: $3a
	and b                                            ; $71ed: $a0
	adc b                                            ; $71ee: $88
	sub c                                            ; $71ef: $91
	ld b, l                                          ; $71f0: $45
	ld c, h                                          ; $71f1: $4c
	xor b                                            ; $71f2: $a8
	ldh a, [$78]                                     ; $71f3: $f0 $78
	ldh a, [rVBK]                                    ; $71f5: $f0 $4f
	ld a, $61                                        ; $71f7: $3e $61
	ld d, [hl]                                       ; $71f9: $56
	add hl, sp                                       ; $71fa: $39
	ld h, e                                          ; $71fb: $63
	and b                                            ; $71fc: $a0
	adc b                                            ; $71fd: $88
	sub c                                            ; $71fe: $91
	ld c, h                                          ; $71ff: $4c
	xor b                                            ; $7200: $a8
	ld l, a                                          ; $7201: $6f
	ld c, a                                          ; $7202: $4f
	ld b, b                                          ; $7203: $40
	add hl, sp                                       ; $7204: $39
	ld [hl], a                                       ; $7205: $77
	add hl, sp                                       ; $7206: $39
	ld h, e                                          ; $7207: $63
	and b                                            ; $7208: $a0
	cpl                                              ; $7209: $2f
	add sp, $2f                                      ; $720a: $e8 $2f
	add hl, bc                                       ; $720c: $09
	ld h, e                                          ; $720d: $63
	inc [hl]                                         ; $720e: $34
	ld l, a                                          ; $720f: $6f
	ld c, a                                          ; $7210: $4f
	ldh a, [$2d]                                     ; $7211: $f0 $2d
	dec sp                                           ; $7213: $3b
	ccf                                              ; $7214: $3f
	ld c, [hl]                                       ; $7215: $4e
	inc de                                           ; $7216: $13
	ld e, l                                          ; $7217: $5d
	ld e, d                                          ; $7218: $5a
	ld c, b                                          ; $7219: $48
	and b                                            ; $721a: $a0
	sub c                                            ; $721b: $91
	dec a                                            ; $721c: $3d
	ld d, a                                          ; $721d: $57
	sbc [hl]                                         ; $721e: $9e
	ld c, d                                          ; $721f: $4a
	ld a, $66                                        ; $7220: $3e $66
	add hl, sp                                       ; $7222: $39
	and b                                            ; $7223: $a0
	ldh a, [$2d]                                     ; $7224: $f0 $2d
	dec sp                                           ; $7226: $3b
	ccf                                              ; $7227: $3f
	ld c, [hl]                                       ; $7228: $4e
	ld h, e                                          ; $7229: $63
	ld b, l                                          ; $722a: $45
	and b                                            ; $722b: $a0
	cpl                                              ; $722c: $2f
	add sp, -$6f                                     ; $722d: $e8 $91
	and c                                            ; $722f: $a1
	ld b, b                                          ; $7230: $40
	add hl, sp                                       ; $7231: $39
	xor c                                            ; $7232: $a9
	ld b, b                                          ; $7233: $40
	add hl, sp                                       ; $7234: $39
	jr c, jr_08b_7270                                ; $7235: $38 $39

	ldh a, [$28]                                     ; $7237: $f0 $28
	ld c, e                                          ; $7239: $4b
	xor h                                            ; $723a: $ac
	ld b, l                                          ; $723b: $45
	ld d, l                                          ; $723c: $55
	ld [hl], d                                       ; $723d: $72
	ccf                                              ; $723e: $3f

jr_08b_723f:
	ld a, [hl-]                                      ; $723f: $3a
	inc a                                            ; $7240: $3c
	dec sp                                           ; $7241: $3b
	dec a                                            ; $7242: $3d
	inc a                                            ; $7243: $3c
	ld d, b                                          ; $7244: $50
	ld c, b                                          ; $7245: $48
	and b                                            ; $7246: $a0
	ld b, b                                          ; $7247: $40
	add hl, sp                                       ; $7248: $39
	xor c                                            ; $7249: $a9
	ld c, d                                          ; $724a: $4a
	ld c, a                                          ; $724b: $4f
	inc [hl]                                         ; $724c: $34
	ldh a, [$8a]                                     ; $724d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $724f: $f0 $52
	jr c, jr_08b_723f                                ; $7251: $38 $ec

	ret c                                            ; $7253: $d8

	and b                                            ; $7254: $a0
	ld b, b                                          ; $7255: $40
	add hl, sp                                       ; $7256: $39
	xor c                                            ; $7257: $a9
	db $d3                                           ; $7258: $d3
	inc a                                            ; $7259: $3c
	ld a, [hl-]                                      ; $725a: $3a
	and b                                            ; $725b: $a0
	ldh a, [$8a]                                     ; $725c: $f0 $8a
	ldh a, [rHDMA2]                                  ; $725e: $f0 $52
	jr c, jr_08b_72a3                                ; $7260: $38 $41

	ld b, h                                          ; $7262: $44
	ld e, l                                          ; $7263: $5d
	ld e, d                                          ; $7264: $5a
	ld c, b                                          ; $7265: $48
	xor h                                            ; $7266: $ac
	ldh a, [$c3]                                     ; $7267: $f0 $c3
	ldh a, [rP1]                                     ; $7269: $f0 $00
	ld b, a                                          ; $726b: $47
	ldh a, [c]                                       ; $726c: $f2
	push de                                          ; $726d: $d5
	ld e, e                                          ; $726e: $5b
	ld d, h                                          ; $726f: $54

jr_08b_7270:
	ld [hl], c                                       ; $7270: $71
	ld d, b                                          ; $7271: $50
	ld c, l                                          ; $7272: $4d
	ccf                                              ; $7273: $3f
	inc de                                           ; $7274: $13
	ld l, e                                          ; $7275: $6b
	ld b, h                                          ; $7276: $44
	inc a                                            ; $7277: $3c
	inc [hl]                                         ; $7278: $34
	db $ed                                           ; $7279: $ed
	dec bc                                           ; $727a: $0b
	ld c, h                                          ; $727b: $4c
	and b                                            ; $727c: $a0
	cpl                                              ; $727d: $2f
	ldh a, [rOBP0]                                   ; $727e: $f0 $48
	ldh a, [$2c]                                     ; $7280: $f0 $2c
	ld c, e                                          ; $7282: $4b
	ldh a, [$67]                                     ; $7283: $f0 $67
	ldh a, [$59]                                     ; $7285: $f0 $59
	ld b, d                                          ; $7287: $42
	ldh a, [rAUD2HIGH]                               ; $7288: $f0 $19
	ld d, e                                          ; $728a: $53
	db $ed                                           ; $728b: $ed
	ld [hl], d                                       ; $728c: $72
	ld b, h                                          ; $728d: $44
	ld c, h                                          ; $728e: $4c
	add hl, bc                                       ; $728f: $09
	xor $1f                                          ; $7290: $ee $1f
	xor h                                            ; $7292: $ac
	ld l, a                                          ; $7293: $6f
	ld c, a                                          ; $7294: $4f
	ld b, b                                          ; $7295: $40
	add hl, sp                                       ; $7296: $39
	ld [hl], a                                       ; $7297: $77
	add hl, sp                                       ; $7298: $39
	ld b, d                                          ; $7299: $42
	ld c, b                                          ; $729a: $48
	and b                                            ; $729b: $a0
	ld b, b                                          ; $729c: $40
	add hl, sp                                       ; $729d: $39
	ld [hl], a                                       ; $729e: $77
	add hl, sp                                       ; $729f: $39
	ld c, d                                          ; $72a0: $4a
	ld a, $66                                        ; $72a1: $3e $66

jr_08b_72a3:
	add hl, sp                                       ; $72a3: $39
	xor b                                            ; $72a4: $a8
	ld l, a                                          ; $72a5: $6f
	ld c, a                                          ; $72a6: $4f
	ld b, b                                          ; $72a7: $40
	add hl, sp                                       ; $72a8: $39
	ld [hl], a                                       ; $72a9: $77
	add hl, sp                                       ; $72aa: $39
	ld a, [hl-]                                      ; $72ab: $3a
	ld c, b                                          ; $72ac: $48
	and b                                            ; $72ad: $a0
	ld l, a                                          ; $72ae: $6f
	ld c, a                                          ; $72af: $4f
	inc [hl]                                         ; $72b0: $34
	ld b, b                                          ; $72b1: $40
	ld c, l                                          ; $72b2: $4d
	ld d, e                                          ; $72b3: $53
	inc de                                           ; $72b4: $13
	db $ed                                           ; $72b5: $ed
	ld [hl], d                                       ; $72b6: $72
	ld b, h                                          ; $72b7: $44
	ld c, c                                          ; $72b8: $49
	ld [hl], a                                       ; $72b9: $77
	add hl, sp                                       ; $72ba: $39
	ld a, [hl-]                                      ; $72bb: $3a
	ld c, b                                          ; $72bc: $48
	and b                                            ; $72bd: $a0
	cpl                                              ; $72be: $2f
	di                                               ; $72bf: $f3
	dec h                                            ; $72c0: $25
	ld d, d                                          ; $72c1: $52
	ld c, [hl]                                       ; $72c2: $4e
	ldh a, [$08]                                     ; $72c3: $f0 $08
	add hl, sp                                       ; $72c5: $39
	ld d, e                                          ; $72c6: $53
	ldh a, [$5c]                                     ; $72c7: $f0 $5c
	jr c, @+$43                                      ; $72c9: $38 $41

	ld b, h                                          ; $72cb: $44
	ld b, l                                          ; $72cc: $45
	add hl, bc                                       ; $72cd: $09
	ld e, [hl]                                       ; $72ce: $5e
	dec sp                                           ; $72cf: $3b
	inc [hl]                                         ; $72d0: $34
	adc b                                            ; $72d1: $88
	ld a, a                                          ; $72d2: $7f
	ld a, [hl-]                                      ; $72d3: $3a
	ld b, d                                          ; $72d4: $42
	and c                                            ; $72d5: $a1
	adc b                                            ; $72d6: $88
	ld a, a                                          ; $72d7: $7f
	ld c, d                                          ; $72d8: $4a
	xor h                                            ; $72d9: $ac
	ld b, b                                          ; $72da: $40
	add hl, sp                                       ; $72db: $39
	ld [hl], a                                       ; $72dc: $77
	dec sp                                           ; $72dd: $3b
	ccf                                              ; $72de: $3f
	ld c, [hl]                                       ; $72df: $4e
	ld b, d                                          ; $72e0: $42
	and c                                            ; $72e1: $a1
	ld b, b                                          ; $72e2: $40
	ld b, c                                          ; $72e3: $41
	ld a, [hl-]                                      ; $72e4: $3a
	pop af                                           ; $72e5: $f1
	ld a, a                                          ; $72e6: $7f
	ld b, a                                          ; $72e7: $47
	xor h                                            ; $72e8: $ac
	ldh a, [$a4]                                     ; $72e9: $f0 $a4
	ld e, [hl]                                       ; $72eb: $5e
	ccf                                              ; $72ec: $3f
	dec a                                            ; $72ed: $3d
	ld b, d                                          ; $72ee: $42
	and c                                            ; $72ef: $a1
	cpl                                              ; $72f0: $2f
	ld c, d                                          ; $72f1: $4a
	ld c, a                                          ; $72f2: $4f
	inc [hl]                                         ; $72f3: $34
	ldh a, [rOBP0]                                   ; $72f4: $f0 $48
	ldh a, [$2c]                                     ; $72f6: $f0 $2c
	ldh a, [rLY]                                     ; $72f8: $f0 $44
	ld d, e                                          ; $72fa: $53
	ld a, [hl-]                                      ; $72fb: $3a
	jr c, @+$4b                                      ; $72fc: $38 $49

	ld a, [hl-]                                      ; $72fe: $3a
	ld [hl], h                                       ; $72ff: $74
	add hl, bc                                       ; $7300: $09
	ld b, b                                          ; $7301: $40
	ld c, l                                          ; $7302: $4d
	ld c, e                                          ; $7303: $4b
	xor h                                            ; $7304: $ac
	ld [$4830], a                                    ; $7305: $ea $30 $48
	and b                                            ; $7308: $a0
	pop af                                           ; $7309: $f1
	db $fc                                           ; $730a: $fc
	ldh a, [rOCPS]                                   ; $730b: $f0 $6a
	inc [hl]                                         ; $730d: $34
	ldh a, [rOBP0]                                   ; $730e: $f0 $48
	ldh a, [$2c]                                     ; $7310: $f0 $2c
	ld a, [hl-]                                      ; $7312: $3a
	ld b, c                                          ; $7313: $41
	ccf                                              ; $7314: $3f
	inc de                                           ; $7315: $13
	ld [hl], d                                       ; $7316: $72
	ld c, [hl]                                       ; $7317: $4e
	ldh a, [$c6]                                     ; $7318: $f0 $c6
	ldh a, [rHDMA3]                                  ; $731a: $f0 $53
	ldh a, [rAUD1LOW]                                ; $731c: $f0 $13
	jr c, jr_08b_736f                                ; $731e: $38 $4f

	ld b, c                                          ; $7320: $41
	ld c, h                                          ; $7321: $4c
	and b                                            ; $7322: $a0
	xor $1f                                          ; $7323: $ee $1f
	xor h                                            ; $7325: $ac
	ld b, b                                          ; $7326: $40
	add hl, sp                                       ; $7327: $39
	ld c, e                                          ; $7328: $4b
	ld [hl], a                                       ; $7329: $77
	xor $1f                                          ; $732a: $ee $1f
	ld b, h                                          ; $732c: $44
	ld e, l                                          ; $732d: $5d
	ld e, d                                          ; $732e: $5a
	ld c, h                                          ; $732f: $4c
	ld c, b                                          ; $7330: $48
	and b                                            ; $7331: $a0
	xor $1e                                          ; $7332: $ee $1e
	ldh a, [rOBP0]                                   ; $7334: $f0 $48
	ldh a, [$2c]                                     ; $7336: $f0 $2c
	xor h                                            ; $7338: $ac
	ld l, e                                          ; $7339: $6b
	inc a                                            ; $733a: $3c
	ldh a, [$5d]                                     ; $733b: $f0 $5d
	db $ec                                           ; $733d: $ec
	ret c                                            ; $733e: $d8

	and c                                            ; $733f: $a1
	cpl                                              ; $7340: $2f
	adc b                                            ; $7341: $88
	sub c                                            ; $7342: $91
	inc [hl]                                         ; $7343: $34
	ldh a, [rAUD4ENV]                                ; $7344: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7346: $f0 $23
	jr c, jr_08b_7386                                ; $7348: $38 $3c

	dec sp                                           ; $734a: $3b
	ld d, h                                          ; $734b: $54
	ld a, $3f                                        ; $734c: $3e $3f
	ld c, [hl]                                       ; $734e: $4e
	ld c, h                                          ; $734f: $4c
	add hl, bc                                       ; $7350: $09
	ld b, b                                          ; $7351: $40
	add hl, sp                                       ; $7352: $39
	ld [hl], a                                       ; $7353: $77
	add hl, sp                                       ; $7354: $39
	ld c, d                                          ; $7355: $4a
	ld a, $66                                        ; $7356: $3e $66
	add hl, sp                                       ; $7358: $39
	xor b                                            ; $7359: $a8
	ld c, d                                          ; $735a: $4a
	ld c, a                                          ; $735b: $4f
	inc [hl]                                         ; $735c: $34
	ldh a, [$8a]                                     ; $735d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $735f: $f0 $52
	jr c, jr_08b_73af                                ; $7361: $38 $4c

	and b                                            ; $7363: $a0
	db $ec                                           ; $7364: $ec
	reti                                             ; $7365: $d9


	xor h                                            ; $7366: $ac
	ld b, b                                          ; $7367: $40
	add hl, sp                                       ; $7368: $39
	ld [hl], a                                       ; $7369: $77
	add hl, sp                                       ; $736a: $39
	ld c, d                                          ; $736b: $4a
	ld a, $66                                        ; $736c: $3e $66

jr_08b_736e:
	add hl, sp                                       ; $736e: $39

jr_08b_736f:
	and b                                            ; $736f: $a0
	ld c, d                                          ; $7370: $4a
	ld c, a                                          ; $7371: $4f
	inc [hl]                                         ; $7372: $34
	ldh a, [c]                                       ; $7373: $f2
	ld bc, $3d3b                                     ; $7374: $01 $3b $3d
	ld d, b                                          ; $7377: $50
	xor h                                            ; $7378: $ac
	db $ed                                           ; $7379: $ed
	dec bc                                           ; $737a: $0b
	ld b, l                                          ; $737b: $45
	ld c, h                                          ; $737c: $4c
	and b                                            ; $737d: $a0
	cpl                                              ; $737e: $2f
	xor $1e                                          ; $737f: $ee $1e
	ldh a, [rOBP0]                                   ; $7381: $f0 $48
	ldh a, [$2c]                                     ; $7383: $f0 $2c
	ld b, a                                          ; $7385: $47

jr_08b_7386:
	ldh a, [rHDMA5]                                  ; $7386: $f0 $55
	ldh a, [rBCPS]                                   ; $7388: $f0 $68
	db $ec                                           ; $738a: $ec
	ret c                                            ; $738b: $d8

	inc a                                            ; $738c: $3c
	add hl, bc                                       ; $738d: $09
	ld b, b                                          ; $738e: $40
	inc [hl]                                         ; $738f: $34
	ld b, b                                          ; $7390: $40
	ld b, c                                          ; $7391: $41
	ld a, [hl-]                                      ; $7392: $3a
	add b                                            ; $7393: $80
	ld c, a                                          ; $7394: $4f
	ld d, a                                          ; $7395: $57
	ld c, d                                          ; $7396: $4a
	inc de                                           ; $7397: $13
	add d                                            ; $7398: $82
	dec sp                                           ; $7399: $3b
	dec a                                            ; $739a: $3d
	ld b, c                                          ; $739b: $41
	ld e, e                                          ; $739c: $5b
	ld d, [hl]                                       ; $739d: $56
	ldh a, [rAUD1LOW]                                ; $739e: $f0 $13
	jr c, jr_08b_73e4                                ; $73a0: $38 $42

	ld b, a                                          ; $73a2: $47
	ld c, b                                          ; $73a3: $48
	and b                                            ; $73a4: $a0
	ld b, b                                          ; $73a5: $40
	ld b, c                                          ; $73a6: $41
	ld a, [hl-]                                      ; $73a7: $3a
	add b                                            ; $73a8: $80
	ld c, a                                          ; $73a9: $4f
	ld d, a                                          ; $73aa: $57
	ld c, d                                          ; $73ab: $4a
	xor h                                            ; $73ac: $ac
	add d                                            ; $73ad: $82
	dec sp                                           ; $73ae: $3b

jr_08b_73af:
	dec a                                            ; $73af: $3d
	pop af                                           ; $73b0: $f1
	dec bc                                           ; $73b1: $0b
	db $ec                                           ; $73b2: $ec
	ret c                                            ; $73b3: $d8

	ld h, e                                          ; $73b4: $63
	and b                                            ; $73b5: $a0
	ld b, b                                          ; $73b6: $40
	ld b, c                                          ; $73b7: $41
	ld a, [hl-]                                      ; $73b8: $3a
	sbc d                                            ; $73b9: $9a
	ld h, d                                          ; $73ba: $62
	add d                                            ; $73bb: $82
	add hl, sp                                       ; $73bc: $39
	ldh a, [$08]                                     ; $73bd: $f0 $08
	add hl, sp                                       ; $73bf: $39
	ld d, e                                          ; $73c0: $53
	xor h                                            ; $73c1: $ac
	ldh a, [rHDMA5]                                  ; $73c2: $f0 $55
	ldh a, [rBCPS]                                   ; $73c4: $f0 $68
	ld b, h                                          ; $73c6: $44
	ld c, c                                          ; $73c7: $49
	ld [hl], a                                       ; $73c8: $77
	ld h, e                                          ; $73c9: $63
	ld a, [hl-]                                      ; $73ca: $3a
	jr c, jr_08b_736e                                ; $73cb: $38 $a1

	cpl                                              ; $73cd: $2f
	xor $1f                                          ; $73ce: $ee $1f
	inc [hl]                                         ; $73d0: $34
	ret                                              ; $73d1: $c9


	ld c, h                                          ; $73d2: $4c
	add hl, bc                                       ; $73d3: $09
	ld b, b                                          ; $73d4: $40
	inc [hl]                                         ; $73d5: $34
	ld b, b                                          ; $73d6: $40
	ld b, c                                          ; $73d7: $41
	ld a, [hl-]                                      ; $73d8: $3a
	ld b, a                                          ; $73d9: $47
	ld c, e                                          ; $73da: $4b
	xor h                                            ; $73db: $ac
	ldh a, [rAUD4ENV]                                ; $73dc: $f0 $21
	ldh a, [rAUD4GO]                                 ; $73de: $f0 $23
	ld d, l                                          ; $73e0: $55
	ld a, [hl-]                                      ; $73e1: $3a
	jr c, jr_08b_7429                                ; $73e2: $38 $45

jr_08b_73e4:
	ld c, h                                          ; $73e4: $4c
	and b                                            ; $73e5: $a0
	ld b, [hl]                                       ; $73e6: $46
	ld b, [hl]                                       ; $73e7: $46
	jr c, @+$3b                                      ; $73e8: $38 $39

	ld b, d                                          ; $73ea: $42
	ld c, e                                          ; $73eb: $4b
	inc de                                           ; $73ec: $13
	adc e                                            ; $73ed: $8b
	ld e, h                                          ; $73ee: $5c
	db $ec                                           ; $73ef: $ec
	ret c                                            ; $73f0: $d8

	ld b, d                                          ; $73f1: $42
	and c                                            ; $73f2: $a1
	jp nc, $f013                                     ; $73f3: $d2 $13 $f0

	ld hl, $23f0                                     ; $73f6: $21 $f0 $23
	ld d, l                                          ; $73f9: $55
	ld a, [hl-]                                      ; $73fa: $3a
	jr c, @-$12                                      ; $73fb: $38 $ec

	ld [de], a                                       ; $73fd: $12
	and b                                            ; $73fe: $a0
	ld l, d                                          ; $73ff: $6a
	ld [hl], d                                       ; $7400: $72
	ccf                                              ; $7401: $3f
	ld e, h                                          ; $7402: $5c
	dec a                                            ; $7403: $3d
	xor h                                            ; $7404: $ac
	db $ec                                           ; $7405: $ec
	ld a, [$f034]                                    ; $7406: $fa $34 $f0
	adc d                                            ; $7409: $8a
	ldh a, [rHDMA2]                                  ; $740a: $f0 $52
	inc a                                            ; $740c: $3c
	dec sp                                           ; $740d: $3b
	dec a                                            ; $740e: $3d
	ld c, h                                          ; $740f: $4c
	and b                                            ; $7410: $a0
	cpl                                              ; $7411: $2f
	jp hl                                            ; $7412: $e9


	rrc c                                            ; $7413: $cb $09
	xor $1f                                          ; $7415: $ee $1f
	xor h                                            ; $7417: $ac
	ld b, b                                          ; $7418: $40
	add hl, sp                                       ; $7419: $39
	ld [hl], a                                       ; $741a: $77
	add hl, sp                                       ; $741b: $39
	ld c, d                                          ; $741c: $4a
	ld a, $66                                        ; $741d: $3e $66
	add hl, sp                                       ; $741f: $39
	and b                                            ; $7420: $a0
	sub c                                            ; $7421: $91
	ldh a, [$59]                                     ; $7422: $f0 $59
	xor h                                            ; $7424: $ac
	ld b, b                                          ; $7425: $40
	add hl, sp                                       ; $7426: $39
	ld [hl], a                                       ; $7427: $77
	add hl, sp                                       ; $7428: $39

jr_08b_7429:
	ld h, e                                          ; $7429: $63
	ld b, l                                          ; $742a: $45
	ld c, h                                          ; $742b: $4c
	and b                                            ; $742c: $a0
	cpl                                              ; $742d: $2f
	jp hl                                            ; $742e: $e9


	add hl, sp                                       ; $742f: $39
	add hl, bc                                       ; $7430: $09
	rst JumpTable                                          ; $7431: $c7
	xor b                                            ; $7432: $a8
	ld b, b                                          ; $7433: $40
	add hl, sp                                       ; $7434: $39
	ld [hl], a                                       ; $7435: $77
	dec sp                                           ; $7436: $3b
	ccf                                              ; $7437: $3f
	ld c, [hl]                                       ; $7438: $4e
	ld b, c                                          ; $7439: $41
	ld b, h                                          ; $743a: $44
	and b                                            ; $743b: $a0
	ld b, b                                          ; $743c: $40
	ld b, c                                          ; $743d: $41
	ld a, [hl-]                                      ; $743e: $3a
	ld b, a                                          ; $743f: $47
	inc de                                           ; $7440: $13
	ldh a, [$d8]                                     ; $7441: $f0 $d8
	ld d, e                                          ; $7443: $53
	ld b, c                                          ; $7444: $41
	ld e, e                                          ; $7445: $5b
	ld d, [hl]                                       ; $7446: $56
	xor $05                                          ; $7447: $ee $05
	ld b, l                                          ; $7449: $45
	and b                                            ; $744a: $a0
	sbc $ac                                          ; $744b: $de $ac
	ld b, b                                          ; $744d: $40
	add hl, sp                                       ; $744e: $39
	ld [hl], a                                       ; $744f: $77
	dec sp                                           ; $7450: $3b
	ccf                                              ; $7451: $3f
	ld c, [hl]                                       ; $7452: $4e
	and c                                            ; $7453: $a1
	cpl                                              ; $7454: $2f
	jp hl                                            ; $7455: $e9


	call z, $c709                                    ; $7456: $cc $09 $c7
	xor c                                            ; $7459: $a9
	db $ec                                           ; $745a: $ec
	ld d, $74                                        ; $745b: $16 $74
	xor l                                            ; $745d: $ad
	ld l, d                                          ; $745e: $6a
	ldh a, [$0d]                                     ; $745f: $f0 $0d
	ld [hl], d                                       ; $7461: $72
	ccf                                              ; $7462: $3f
	ld l, h                                          ; $7463: $6c
	ld c, [hl]                                       ; $7464: $4e

jr_08b_7465:
	ld c, h                                          ; $7465: $4c
	and b                                            ; $7466: $a0
	ld b, b                                          ; $7467: $40
	add hl, sp                                       ; $7468: $39
	ld b, h                                          ; $7469: $44
	dec sp                                           ; $746a: $3b
	dec a                                            ; $746b: $3d
	xor c                                            ; $746c: $a9
	ld l, d                                          ; $746d: $6a
	ldh a, [$0d]                                     ; $746e: $f0 $0d
	ld [hl], d                                       ; $7470: $72
	ccf                                              ; $7471: $3f
	ld l, h                                          ; $7472: $6c
	ld c, [hl]                                       ; $7473: $4e
	ld c, h                                          ; $7474: $4c
	and b                                            ; $7475: $a0
	ldh a, [rIF]                                     ; $7476: $f0 $0f
	ld h, l                                          ; $7478: $65
	ldh a, [$f1]                                     ; $7479: $f0 $f1
	ld d, e                                          ; $747b: $53
	ldh a, [$71]                                     ; $747c: $f0 $71
	jr c, jr_08b_74c2                                ; $747e: $38 $42

	ld c, e                                          ; $7480: $4b
	inc de                                           ; $7481: $13
	ldh a, [$2d]                                     ; $7482: $f0 $2d
	dec sp                                           ; $7484: $3b
	ccf                                              ; $7485: $3f
	ld c, [hl]                                       ; $7486: $4e

jr_08b_7487:
	ld e, l                                          ; $7487: $5d
	ld e, d                                          ; $7488: $5a
	ld c, b                                          ; $7489: $48
	and b                                            ; $748a: $a0
	db $ec                                           ; $748b: $ec
	inc de                                           ; $748c: $13
	ld h, h                                          ; $748d: $64
	ldh a, [hDisp0_OBP0]                                     ; $748e: $f0 $86
	ld d, e                                          ; $7490: $53
	inc de                                           ; $7491: $13
	adc $46                                          ; $7492: $ce $46
	ld c, [hl]                                       ; $7494: $4e
	ld c, h                                          ; $7495: $4c
	and b                                            ; $7496: $a0
	cpl                                              ; $7497: $2f
	add sp, $59                                      ; $7498: $e8 $59
	add hl, bc                                       ; $749a: $09
	ld l, a                                          ; $749b: $6f
	ld c, a                                          ; $749c: $4f
	ld b, b                                          ; $749d: $40
	add hl, sp                                       ; $749e: $39
	ld [hl], a                                       ; $749f: $77
	add hl, sp                                       ; $74a0: $39
	ld a, [hl-]                                      ; $74a1: $3a
	xor l                                            ; $74a2: $ad
	ld h, h                                          ; $74a3: $64
	ldh a, [hDisp0_OBP0]                                     ; $74a4: $f0 $86
	dec sp                                           ; $74a6: $3b
	ccf                                              ; $74a7: $3f
	ldh a, [$d0]                                     ; $74a8: $f0 $d0
	ld [hl], a                                       ; $74aa: $77
	ldh a, [c]                                       ; $74ab: $f2
	or b                                             ; $74ac: $b0
	ld b, l                                          ; $74ad: $45
	ld c, h                                          ; $74ae: $4c
	ld c, b                                          ; $74af: $48
	and b                                            ; $74b0: $a0
	sbc h                                            ; $74b1: $9c
	dec sp                                           ; $74b2: $3b
	ld c, c                                          ; $74b3: $49
	ld [hl], d                                       ; $74b4: $72
	ccf                                              ; $74b5: $3f
	ccf                                              ; $74b6: $3f
	ld c, a                                          ; $74b7: $4f
	xor h                                            ; $74b8: $ac
	ldh a, [c]                                       ; $74b9: $f2
	ld a, [hl]                                       ; $74ba: $7e
	ld e, h                                          ; $74bb: $5c
	ld a, [hl-]                                      ; $74bc: $3a
	jr c, jr_08b_7508                                ; $74bd: $38 $49

	ld [hl], a                                       ; $74bf: $77
	ld h, e                                          ; $74c0: $63
	ld a, [hl-]                                      ; $74c1: $3a

jr_08b_74c2:
	jr c, jr_08b_7465                                ; $74c2: $38 $a1

	ld b, b                                          ; $74c4: $40
	ld b, c                                          ; $74c5: $41
	ld a, [hl-]                                      ; $74c6: $3a
	sbc d                                            ; $74c7: $9a
	ld h, d                                          ; $74c8: $62
	add d                                            ; $74c9: $82
	add hl, sp                                       ; $74ca: $39
	ld a, [hl-]                                      ; $74cb: $3a
	ld b, c                                          ; $74cc: $41
	ccf                                              ; $74cd: $3f
	xor h                                            ; $74ce: $ac
	ret                                              ; $74cf: $c9


	inc de                                           ; $74d0: $13
	db $ec                                           ; $74d1: $ec
	ld de, $56eb                                     ; $74d2: $11 $eb $56
	and b                                            ; $74d5: $a0
	cpl                                              ; $74d6: $2f
	ld [$0948], a                                    ; $74d7: $ea $48 $09
	ld e, [hl]                                       ; $74da: $5e
	dec sp                                           ; $74db: $3b
	xor c                                            ; $74dc: $a9
	ld b, b                                          ; $74dd: $40
	ld b, c                                          ; $74de: $41
	ld a, [hl-]                                      ; $74df: $3a
	sbc d                                            ; $74e0: $9a
	add d                                            ; $74e1: $82
	add hl, sp                                       ; $74e2: $39
	ld a, [hl-]                                      ; $74e3: $3a
	ld b, c                                          ; $74e4: $41
	ccf                                              ; $74e5: $3f
	ld c, b                                          ; $74e6: $48
	and b                                            ; $74e7: $a0
	ld c, a                                          ; $74e8: $4f
	add hl, sp                                       ; $74e9: $39
	ldh a, [rHDMA4]                                  ; $74ea: $f0 $54
	ld a, $ac                                        ; $74ec: $3e $ac
	ldh a, [$78]                                     ; $74ee: $f0 $78
	pop af                                           ; $74f0: $f1
	ld c, d                                          ; $74f1: $4a
	pop af                                           ; $74f2: $f1
	ld a, [bc]                                       ; $74f3: $0a
	ld h, d                                          ; $74f4: $62
	di                                               ; $74f5: $f3
	add [hl]                                         ; $74f6: $86
	dec sp                                           ; $74f7: $3b
	dec a                                            ; $74f8: $3d
	ldh a, [$08]                                     ; $74f9: $f0 $08
	add hl, sp                                       ; $74fb: $39
	ld d, e                                          ; $74fc: $53
	inc de                                           ; $74fd: $13
	jr c, jr_08b_7538                                ; $74fe: $38 $38

	ld c, c                                          ; $7500: $49
	ld [hl], a                                       ; $7501: $77
	add hl, sp                                       ; $7502: $39
	ld b, l                                          ; $7503: $45
	and b                                            ; $7504: $a0
	jr c, jr_08b_7487                                ; $7505: $38 $80

	ld c, a                                          ; $7507: $4f

jr_08b_7508:
	inc [hl]                                         ; $7508: $34
	ld b, b                                          ; $7509: $40
	ld b, c                                          ; $750a: $41
	ld a, [hl-]                                      ; $750b: $3a
	sbc d                                            ; $750c: $9a
	ld a, e                                          ; $750d: $7b
	inc a                                            ; $750e: $3c
	ld d, a                                          ; $750f: $57
	inc de                                           ; $7510: $13
	ldh a, [$a4]                                     ; $7511: $f0 $a4
	ld e, [hl]                                       ; $7513: $5e
	ccf                                              ; $7514: $3f
	ld c, [hl]                                       ; $7515: $4e
	ld b, d                                          ; $7516: $42
	and c                                            ; $7517: $a1
	cpl                                              ; $7518: $2f
	jp hl                                            ; $7519: $e9


	jp hl                                            ; $751a: $e9


	add hl, bc                                       ; $751b: $09
	db $ec                                           ; $751c: $ec
	cp c                                             ; $751d: $b9
	xor b                                            ; $751e: $a8
	adc e                                            ; $751f: $8b
	ld l, h                                          ; $7520: $6c
	ld d, e                                          ; $7521: $53
	ld b, [hl]                                       ; $7522: $46
	add hl, sp                                       ; $7523: $39
	ld l, h                                          ; $7524: $6c
	dec a                                            ; $7525: $3d
	jr c, @+$4c                                      ; $7526: $38 $4a

	and b                                            ; $7528: $a0
	ld b, b                                          ; $7529: $40
	add hl, sp                                       ; $752a: $39
	inc [hl]                                         ; $752b: $34
	ld [hl], a                                       ; $752c: $77
	add hl, sp                                       ; $752d: $39
	ld c, d                                          ; $752e: $4a
	ld a, $66                                        ; $752f: $3e $66
	add hl, sp                                       ; $7531: $39
	xor b                                            ; $7532: $a8
	ld b, b                                          ; $7533: $40
	add hl, sp                                       ; $7534: $39
	add d                                            ; $7535: $82
	add hl, sp                                       ; $7536: $39
	ld c, c                                          ; $7537: $49

jr_08b_7538:
	inc de                                           ; $7538: $13
	ld [hl], a                                       ; $7539: $77
	dec sp                                           ; $753a: $3b
	ccf                                              ; $753b: $3f
	dec a                                            ; $753c: $3d
	ld e, l                                          ; $753d: $5d
	ld e, d                                          ; $753e: $5a
	ld c, h                                          ; $753f: $4c
	and b                                            ; $7540: $a0
	db $ec                                           ; $7541: $ec
	inc e                                            ; $7542: $1c
	xor b                                            ; $7543: $a8
	ldh a, [hDisp0_OBP0]                                     ; $7544: $f0 $86
	ld d, e                                          ; $7546: $53
	ldh a, [$64]                                     ; $7547: $f0 $64
	jr c, jr_08b_7585                                ; $7549: $38 $3a

	add h                                            ; $754b: $84
	ld d, e                                          ; $754c: $53
	inc de                                           ; $754d: $13
	jr c, jr_08b_759e                                ; $754e: $38 $4e

	ld c, c                                          ; $7550: $49
	ld [hl], a                                       ; $7551: $77
	ld e, [hl]                                       ; $7552: $5e
	ld a, [hl-]                                      ; $7553: $3a
	jr c, @+$51                                      ; $7554: $38 $4f

	ld b, d                                          ; $7556: $42
	and b                                            ; $7557: $a0
	ld d, h                                          ; $7558: $54
	ld b, d                                          ; $7559: $42
	ld h, h                                          ; $755a: $64
	ldh a, [hDisp0_OBP0]                                     ; $755b: $f0 $86
	xor h                                            ; $755d: $ac
	ld d, c                                          ; $755e: $51
	ld [hl], b                                       ; $755f: $70
	ld d, l                                          ; $7560: $55
	db $ed                                           ; $7561: $ed
	ld c, c                                          ; $7562: $49
	ld c, h                                          ; $7563: $4c
	and b                                            ; $7564: $a0
	cpl                                              ; $7565: $2f
	ldh a, [$67]                                     ; $7566: $f0 $67
	ldh a, [$59]                                     ; $7568: $f0 $59
	ld b, d                                          ; $756a: $42
	adc d                                            ; $756b: $8a
	ld c, e                                          ; $756c: $4b
	db $eb                                           ; $756d: $eb
	ld d, h                                          ; $756e: $54
	ld c, h                                          ; $756f: $4c
	add hl, bc                                       ; $7570: $09
	ldh a, [$67]                                     ; $7571: $f0 $67
	ldh a, [$59]                                     ; $7573: $f0 $59
	ld b, h                                          ; $7575: $44
	inc a                                            ; $7576: $3c
	ld d, b                                          ; $7577: $50
	ld d, h                                          ; $7578: $54
	ld b, b                                          ; $7579: $40
	inc de                                           ; $757a: $13
	ldh a, [$a5]                                     ; $757b: $f0 $a5
	ld d, a                                          ; $757d: $57
	sub h                                            ; $757e: $94
	ld a, c                                          ; $757f: $79
	ld c, [hl]                                       ; $7580: $4e
	ldh a, [$d4]                                     ; $7581: $f0 $d4
	pop af                                           ; $7583: $f1
	add l                                            ; $7584: $85

jr_08b_7585:
	ld b, d                                          ; $7585: $42
	adc d                                            ; $7586: $8a
	ld a, $58                                        ; $7587: $3e $58
	ld c, h                                          ; $7589: $4c
	ld c, b                                          ; $758a: $48
	and b                                            ; $758b: $a0
	ldh a, [$67]                                     ; $758c: $f0 $67
	ldh a, [$59]                                     ; $758e: $f0 $59
	ld b, h                                          ; $7590: $44
	inc a                                            ; $7591: $3c
	ld d, b                                          ; $7592: $50
	ld d, h                                          ; $7593: $54
	ld b, b                                          ; $7594: $40
	inc de                                           ; $7595: $13
	adc d                                            ; $7596: $8a
	ld a, $38                                        ; $7597: $3e $38
	ld b, d                                          ; $7599: $42
	inc a                                            ; $759a: $3c
	ld c, a                                          ; $759b: $4f
	ld a, $4d                                        ; $759c: $3e $4d

jr_08b_759e:
	ld a, [hl-]                                      ; $759e: $3a
	jr c, jr_08b_75ed                                ; $759f: $38 $4c

	and b                                            ; $75a1: $a0
	ldh a, [$67]                                     ; $75a2: $f0 $67
	ldh a, [$59]                                     ; $75a4: $f0 $59
	ld b, a                                          ; $75a6: $47
	ld d, h                                          ; $75a7: $54
	ld b, c                                          ; $75a8: $41
	ld a, [hl-]                                      ; $75a9: $3a
	ld b, a                                          ; $75aa: $47
	inc de                                           ; $75ab: $13
	adc d                                            ; $75ac: $8a
	ld a, $55                                        ; $75ad: $3e $55
	ld a, [hl-]                                      ; $75af: $3a
	ld c, [hl]                                       ; $75b0: $4e
	ld a, [hl-]                                      ; $75b1: $3a
	ld b, c                                          ; $75b2: $41
	ccf                                              ; $75b3: $3f
	inc de                                           ; $75b4: $13
	ldh a, [$d0]                                     ; $75b5: $f0 $d0
	ld [hl], a                                       ; $75b7: $77
	ldh a, [c]                                       ; $75b8: $f2
	or b                                             ; $75b9: $b0
	ld c, h                                          ; $75ba: $4c

jr_08b_75bb:
	and b                                            ; $75bb: $a0
	cpl                                              ; $75bc: $2f
	ld [$a158], a                                    ; $75bd: $ea $58 $a1
	ld e, [hl]                                       ; $75c0: $5e
	dec sp                                           ; $75c1: $3b
	xor c                                            ; $75c2: $a9
	ld b, b                                          ; $75c3: $40
	ld b, c                                          ; $75c4: $41
	ld a, [hl-]                                      ; $75c5: $3a
	sbc d                                            ; $75c6: $9a
	ld a, $3a                                        ; $75c7: $3e $3a
	jr c, jr_08b_75bb                                ; $75c9: $38 $f0

	ld [$5339], sp                                   ; $75cb: $08 $39 $53
	inc de                                           ; $75ce: $13
	jr c, jr_08b_7609                                ; $75cf: $38 $38

	ld c, c                                          ; $75d1: $49
	ld [hl], a                                       ; $75d2: $77
	add hl, sp                                       ; $75d3: $39
	ld a, [hl-]                                      ; $75d4: $3a
	and b                                            ; $75d5: $a0
	ld b, b                                          ; $75d6: $40
	ld b, c                                          ; $75d7: $41
	ld a, [hl-]                                      ; $75d8: $3a
	sbc d                                            ; $75d9: $9a
	xor h                                            ; $75da: $ac
	ld a, $61                                        ; $75db: $3e $61
	ld d, [hl]                                       ; $75dd: $56
	xor $05                                          ; $75de: $ee $05
	ld b, l                                          ; $75e0: $45
	and b                                            ; $75e1: $a0
	pop af                                           ; $75e2: $f1
	jr nc, @+$73                                     ; $75e3: $30 $71

	dec a                                            ; $75e5: $3d
	ldh a, [$08]                                     ; $75e6: $f0 $08
	add hl, sp                                       ; $75e8: $39
	ld d, e                                          ; $75e9: $53
	inc de                                           ; $75ea: $13
	jr c, @+$3a                                      ; $75eb: $38 $38

jr_08b_75ed:
	ld c, c                                          ; $75ed: $49
	ld [hl], a                                       ; $75ee: $77
	add hl, sp                                       ; $75ef: $39
	ld e, l                                          ; $75f0: $5d
	ld e, d                                          ; $75f1: $5a
	ld c, b                                          ; $75f2: $48
	and b                                            ; $75f3: $a0
	cpl                                              ; $75f4: $2f
	adc b                                            ; $75f5: $88
	sub c                                            ; $75f6: $91
	ld b, h                                          ; $75f7: $44
	ld c, h                                          ; $75f8: $4c
	add hl, bc                                       ; $75f9: $09
	db $ec                                           ; $75fa: $ec
	cp c                                             ; $75fb: $b9
	xor b                                            ; $75fc: $a8
	adc e                                            ; $75fd: $8b
	ld l, h                                          ; $75fe: $6c
	ld d, e                                          ; $75ff: $53
	ld b, [hl]                                       ; $7600: $46
	dec sp                                           ; $7601: $3b
	dec a                                            ; $7602: $3d
	ld l, h                                          ; $7603: $6c
	dec a                                            ; $7604: $3d
	jr c, jr_08b_7651                                ; $7605: $38 $4a

	ld c, b                                          ; $7607: $48
	and b                                            ; $7608: $a0

jr_08b_7609:
	db $ec                                           ; $7609: $ec
	reti                                             ; $760a: $d9


	inc [hl]                                         ; $760b: $34
	ld b, b                                          ; $760c: $40
	add hl, sp                                       ; $760d: $39
	ld [hl], a                                       ; $760e: $77
	add hl, sp                                       ; $760f: $39
	and c                                            ; $7610: $a1
	ld b, b                                          ; $7611: $40
	add hl, sp                                       ; $7612: $39
	add d                                            ; $7613: $82

jr_08b_7614:
	add hl, sp                                       ; $7614: $39
	ld c, c                                          ; $7615: $49
	inc [hl]                                         ; $7616: $34
	ld [hl], a                                       ; $7617: $77
	dec sp                                           ; $7618: $3b
	dec a                                            ; $7619: $3d
	ld h, e                                          ; $761a: $63
	and b                                            ; $761b: $a0
	ld h, e                                          ; $761c: $63
	ld [hl], h                                       ; $761d: $74
	inc [hl]                                         ; $761e: $34
	db $ed                                           ; $761f: $ed
	ld c, c                                          ; $7620: $49

jr_08b_7621:
	xor b                                            ; $7621: $a8
	ldh a, [$80]                                     ; $7622: $f0 $80
	ldh a, [$c5]                                     ; $7624: $f0 $c5
	ldh a, [$c9]                                     ; $7626: $f0 $c9
	jr c, @+$41                                      ; $7628: $38 $3f

	ld c, [hl]                                       ; $762a: $4e
	ld b, d                                          ; $762b: $42
	ld c, h                                          ; $762c: $4c
	xor b                                            ; $762d: $a8
	ldh a, [$0a]                                     ; $762e: $f0 $0a
	ld d, l                                          ; $7630: $55
	ldh a, [$e7]                                     ; $7631: $f0 $e7
	ld d, a                                          ; $7633: $57
	ld d, d                                          ; $7634: $52
	ld a, $66                                        ; $7635: $3e $66
	add hl, sp                                       ; $7637: $39
	and b                                            ; $7638: $a0
	pop af                                           ; $7639: $f1
	ld h, l                                          ; $763a: $65
	dec sp                                           ; $763b: $3b
	ccf                                              ; $763c: $3f
	xor h                                            ; $763d: $ac
	ld [$4554], a                                    ; $763e: $ea $54 $45
	ld c, h                                          ; $7641: $4c
	and b                                            ; $7642: $a0
	cpl                                              ; $7643: $2f
	add sp, $30                                      ; $7644: $e8 $30
	add hl, bc                                       ; $7646: $09
	ld d, c                                          ; $7647: $51
	ld [hl], b                                       ; $7648: $70
	ld d, l                                          ; $7649: $55
	db $ed                                           ; $764a: $ed
	inc bc                                           ; $764b: $03
	ld c, h                                          ; $764c: $4c
	xor l                                            ; $764d: $ad
	jr c, @-$7e                                      ; $764e: $38 $80

	ld d, d                                          ; $7650: $52

jr_08b_7651:
	ld c, d                                          ; $7651: $4a
	ld c, a                                          ; $7652: $4f
	ld d, h                                          ; $7653: $54
	add hl, sp                                       ; $7654: $39
	ld a, $3f                                        ; $7655: $3e $3f
	xor h                                            ; $7657: $ac
	pop af                                           ; $7658: $f1
	ld h, l                                          ; $7659: $65
	ld h, d                                          ; $765a: $62
	ld [hl], d                                       ; $765b: $72
	ccf                                              ; $765c: $3f
	dec a                                            ; $765d: $3d
	jr c, jr_08b_769a                                ; $765e: $38 $3a

	and b                                            ; $7660: $a0
	ld d, c                                          ; $7661: $51
	ld [hl], b                                       ; $7662: $70
	ld d, l                                          ; $7663: $55
	db $ed                                           ; $7664: $ed
	inc bc                                           ; $7665: $03
	ld c, d                                          ; $7666: $4a
	xor h                                            ; $7667: $ac
	ldh a, [$57]                                     ; $7668: $f0 $57
	ldh a, [$ae]                                     ; $766a: $f0 $ae
	ld b, h                                          ; $766c: $44
	ld c, c                                          ; $766d: $49
	ld [hl], a                                       ; $766e: $77
	ld h, e                                          ; $766f: $63
	ld a, [hl-]                                      ; $7670: $3a
	jr c, jr_08b_7614                                ; $7671: $38 $a1

	ld d, c                                          ; $7673: $51
	ld [hl], b                                       ; $7674: $70
	ld d, l                                          ; $7675: $55
	db $ed                                           ; $7676: $ed
	inc bc                                           ; $7677: $03
	ld b, h                                          ; $7678: $44
	ld c, c                                          ; $7679: $49
	inc de                                           ; $767a: $13
	ld [hl], a                                       ; $767b: $77
	ld h, e                                          ; $767c: $63
	ld a, [hl-]                                      ; $767d: $3a
	jr c, jr_08b_7621                                ; $767e: $38 $a1

	cpl                                              ; $7680: $2f
	add sp, -$1f                                     ; $7681: $e8 $e1
	add hl, bc                                       ; $7683: $09
	ld b, b                                          ; $7684: $40
	ld c, l                                          ; $7685: $4d
	ld c, e                                          ; $7686: $4b
	ld b, b                                          ; $7687: $40
	add hl, sp                                       ; $7688: $39
	ld b, h                                          ; $7689: $44
	ld e, l                                          ; $768a: $5d
	ld e, d                                          ; $768b: $5a
	ld c, b                                          ; $768c: $48
	and b                                            ; $768d: $a0
	ld b, b                                          ; $768e: $40
	ld c, l                                          ; $768f: $4d
	ld c, e                                          ; $7690: $4b
	ld b, b                                          ; $7691: $40
	add hl, sp                                       ; $7692: $39
	ld b, h                                          ; $7693: $44
	ld e, l                                          ; $7694: $5d
	ld e, d                                          ; $7695: $5a
	xor h                                            ; $7696: $ac
	ld l, e                                          ; $7697: $6b
	ld b, h                                          ; $7698: $44
	inc a                                            ; $7699: $3c

jr_08b_769a:
	ld l, l                                          ; $769a: $6d
	ld a, a                                          ; $769b: $7f
	ld b, a                                          ; $769c: $47
	inc de                                           ; $769d: $13
	pop af                                           ; $769e: $f1
	sub h                                            ; $769f: $94
	ld [hl], c                                       ; $76a0: $71
	ld h, c                                          ; $76a1: $61
	ld d, [hl]                                       ; $76a2: $56
	dec sp                                           ; $76a3: $3b
	dec a                                            ; $76a4: $3d
	ld c, b                                          ; $76a5: $48
	and b                                            ; $76a6: $a0
	ld b, b                                          ; $76a7: $40
	ld c, l                                          ; $76a8: $4d
	ld c, e                                          ; $76a9: $4b
	ld b, b                                          ; $76aa: $40
	add hl, sp                                       ; $76ab: $39
	ld b, h                                          ; $76ac: $44
	ld e, l                                          ; $76ad: $5d
	ld e, d                                          ; $76ae: $5a
	xor l                                            ; $76af: $ad
	db $db                                           ; $76b0: $db
	ld a, [hl-]                                      ; $76b1: $3a
	jr c, @+$3c                                      ; $76b2: $38 $3a

	ld [hl], h                                       ; $76b4: $74
	ld c, b                                          ; $76b5: $48
	and b                                            ; $76b6: $a0
	cpl                                              ; $76b7: $2f
	ld b, b                                          ; $76b8: $40
	add hl, sp                                       ; $76b9: $39
	ld b, h                                          ; $76ba: $44
	ld c, h                                          ; $76bb: $4c
	inc [hl]                                         ; $76bc: $34
	db $ed                                           ; $76bd: $ed
	ld c, c                                          ; $76be: $49
	ld b, h                                          ; $76bf: $44

jr_08b_76c0:
	dec sp                                           ; $76c0: $3b
	dec a                                            ; $76c1: $3d
	ld c, h                                          ; $76c2: $4c
	add hl, bc                                       ; $76c3: $09
	xor $1f                                          ; $76c4: $ee $1f
	inc [hl]                                         ; $76c6: $34
	db $ed                                           ; $76c7: $ed
	inc bc                                           ; $76c8: $03
	ld a, [hl-]                                      ; $76c9: $3a
	inc de                                           ; $76ca: $13
	adc d                                            ; $76cb: $8a
	ld a, $58                                        ; $76cc: $3e $58
	ld c, h                                          ; $76ce: $4c
	xor b                                            ; $76cf: $a8
	ldh a, [hDisp0_BGP]                                     ; $76d0: $f0 $85
	ld c, l                                          ; $76d2: $4d
	pop af                                           ; $76d3: $f1
	ld h, l                                          ; $76d4: $65
	ld b, a                                          ; $76d5: $47
	ld h, h                                          ; $76d6: $64
	ldh a, [$c8]                                     ; $76d7: $f0 $c8
	jr c, jr_08b_772c                                ; $76d9: $38 $51

	ld c, [hl]                                       ; $76db: $4e
	db $ed                                           ; $76dc: $ed
	ld l, a                                          ; $76dd: $6f
	ld h, c                                          ; $76de: $61
	ld d, e                                          ; $76df: $53
	inc de                                           ; $76e0: $13
	ldh a, [rTAC]                                    ; $76e1: $f0 $07
	inc a                                            ; $76e3: $3c
	ld c, [hl]                                       ; $76e4: $4e
	ld a, a                                          ; $76e5: $7f
	ld d, e                                          ; $76e6: $53
	ld d, c                                          ; $76e7: $51
	ld c, [hl]                                       ; $76e8: $4e
	ld c, h                                          ; $76e9: $4c
	and b                                            ; $76ea: $a0
	pop af                                           ; $76eb: $f1
	ld h, l                                          ; $76ec: $65
	ldh a, [$c9]                                     ; $76ed: $f0 $c9
	ld h, d                                          ; $76ef: $62
	ld [hl], d                                       ; $76f0: $72
	ldh a, [$3e]                                     ; $76f1: $f0 $3e
	ldh a, [rSB]                                     ; $76f3: $f0 $01
	ccf                                              ; $76f5: $3f
	xor h                                            ; $76f6: $ac
	db $ed                                           ; $76f7: $ed
	ld c, c                                          ; $76f8: $49
	db $ec                                           ; $76f9: $ec
	ret c                                            ; $76fa: $d8

	ld a, [hl-]                                      ; $76fb: $3a
	ld b, c                                          ; $76fc: $41
	ccf                                              ; $76fd: $3f
	inc de                                           ; $76fe: $13
	ld [hl], a                                       ; $76ff: $77
	add hl, sp                                       ; $7700: $39
	add h                                            ; $7701: $84
	jr c, jr_08b_7752                                ; $7702: $38 $4e

	ld b, d                                          ; $7704: $42
	inc a                                            ; $7705: $3c
	ld a, [hl-]                                      ; $7706: $3a
	and c                                            ; $7707: $a1
	pop af                                           ; $7708: $f1
	ld h, l                                          ; $7709: $65
	ldh a, [$c9]                                     ; $770a: $f0 $c9
	ld b, a                                          ; $770c: $47
	ld c, e                                          ; $770d: $4b
	db $ed                                           ; $770e: $ed
	inc bc                                           ; $770f: $03
	ld a, [hl-]                                      ; $7710: $3a
	inc de                                           ; $7711: $13
	adc d                                            ; $7712: $8a
	ld a, $58                                        ; $7713: $3e $58
	ld d, e                                          ; $7715: $53
	ld b, [hl]                                       ; $7716: $46
	ld c, [hl]                                       ; $7717: $4e
	ld c, c                                          ; $7718: $49
	inc de                                           ; $7719: $13
	ld [hl], a                                       ; $771a: $77
	ld h, e                                          ; $771b: $63
	ld a, [hl-]                                      ; $771c: $3a
	jr c, jr_08b_76c0                                ; $771d: $38 $a1

	ld b, [hl]                                       ; $771f: $46
	dec sp                                           ; $7720: $3b
	xor h                                            ; $7721: $ac
	ld b, [hl]                                       ; $7722: $46
	ld c, l                                          ; $7723: $4d
	ld c, e                                          ; $7724: $4b
	ld l, e                                          ; $7725: $6b
	dec sp                                           ; $7726: $3b
	ccf                                              ; $7727: $3f
	jr c, jr_08b_7763                                ; $7728: $38 $39

	pop af                                           ; $772a: $f1
	ld h, l                                          ; $772b: $65

jr_08b_772c:
	ldh a, [$e7]                                     ; $772c: $f0 $e7
	and c                                            ; $772e: $a1
	cpl                                              ; $772f: $2f
	jp hl                                            ; $7730: $e9


	call nz, Call_08b_4609                           ; $7731: $c4 $09 $46
	ld c, l                                          ; $7734: $4d
	ld d, e                                          ; $7735: $53
	inc [hl]                                         ; $7736: $34
	ldh a, [$0e]                                     ; $7737: $f0 $0e
	di                                               ; $7739: $f3
	rst SubAFromHL                                          ; $773a: $d7
	pop af                                           ; $773b: $f1
	ld h, l                                          ; $773c: $65
	ld b, d                                          ; $773d: $42
	inc de                                           ; $773e: $13
	pop af                                           ; $773f: $f1
	ld h, l                                          ; $7740: $65
	ldh a, [$e7]                                     ; $7741: $f0 $e7
	ld a, [hl-]                                      ; $7743: $3a
	ld b, d                                          ; $7744: $42
	ld c, h                                          ; $7745: $4c
	and b                                            ; $7746: $a0
	ldh a, [$5a]                                     ; $7747: $f0 $5a
	add l                                            ; $7749: $85
	inc [hl]                                         ; $774a: $34
	ld b, [hl]                                       ; $774b: $46
	ld c, l                                          ; $774c: $4d
	ld d, e                                          ; $774d: $53
	ret nz                                           ; $774e: $c0

	xor b                                            ; $774f: $a8
	pop af                                           ; $7750: $f1
	add d                                            ; $7751: $82

jr_08b_7752:
	inc a                                            ; $7752: $3c
	inc [hl]                                         ; $7753: $34
	ldh a, [$0e]                                     ; $7754: $f0 $0e
	di                                               ; $7756: $f3
	rst SubAFromHL                                          ; $7757: $d7
	pop af                                           ; $7758: $f1
	ld h, l                                          ; $7759: $65
	ld b, d                                          ; $775a: $42
	inc de                                           ; $775b: $13
	pop af                                           ; $775c: $f1
	ld h, l                                          ; $775d: $65
	ldh a, [$e7]                                     ; $775e: $f0 $e7
	ld b, l                                          ; $7760: $45
	ld c, h                                          ; $7761: $4c
	and b                                            ; $7762: $a0

jr_08b_7763:
	ret nz                                           ; $7763: $c0

	xor b                                            ; $7764: $a8
	pop af                                           ; $7765: $f1
	add d                                            ; $7766: $82
	inc a                                            ; $7767: $3c
	inc [hl]                                         ; $7768: $34
	pop af                                           ; $7769: $f1
	dec e                                            ; $776a: $1d
	ldh a, [$a6]                                     ; $776b: $f0 $a6
	ld d, e                                          ; $776d: $53
	inc de                                           ; $776e: $13
	di                                               ; $776f: $f3
	add d                                            ; $7770: $82
	pop af                                           ; $7771: $f1
	ld h, l                                          ; $7772: $65
	ld b, d                                          ; $7773: $42
	pop af                                           ; $7774: $f1
	ld h, l                                          ; $7775: $65
	ldh a, [$e7]                                     ; $7776: $f0 $e7
	ld b, l                                          ; $7778: $45
	ld c, h                                          ; $7779: $4c
	and b                                            ; $777a: $a0
	cpl                                              ; $777b: $2f
	add sp, $57                                      ; $777c: $e8 $57
	add hl, bc                                       ; $777e: $09
	ld e, [hl]                                       ; $777f: $5e
	dec sp                                           ; $7780: $3b
	inc [hl]                                         ; $7781: $34
	ld b, b                                          ; $7782: $40
	add hl, sp                                       ; $7783: $39
	xor c                                            ; $7784: $a9
	ldh a, [rAUD4GO]                                 ; $7785: $f0 $23
	ldh a, [c]                                       ; $7787: $f2
	rrca                                             ; $7788: $0f
	ldh a, [$e7]                                     ; $7789: $f0 $e7
	ld a, [hl-]                                      ; $778b: $3a
	ld d, b                                          ; $778c: $50
	xor h                                            ; $778d: $ac
	ld l, a                                          ; $778e: $6f
	ld c, a                                          ; $778f: $4f
	ldh a, [$2d]                                     ; $7790: $f0 $2d
	dec sp                                           ; $7792: $3b
	ccf                                              ; $7793: $3f
	ld c, [hl]                                       ; $7794: $4e
	ld e, l                                          ; $7795: $5d
	ld e, d                                          ; $7796: $5a
	ld c, b                                          ; $7797: $48
	and b                                            ; $7798: $a0
	ldh a, [rAUD4GO]                                 ; $7799: $f0 $23
	ldh a, [c]                                       ; $779b: $f2
	rrca                                             ; $779c: $0f
	ldh a, [$e7]                                     ; $779d: $f0 $e7
	db $ec                                           ; $779f: $ec
	ret c                                            ; $77a0: $d8

	ld c, c                                          ; $77a1: $49
	inc de                                           ; $77a2: $13
	ld [hl], a                                       ; $77a3: $77
	add hl, sp                                       ; $77a4: $39
	ld a, [hl-]                                      ; $77a5: $3a
	xor b                                            ; $77a6: $a8
	ldh a, [rAUD4GO]                                 ; $77a7: $f0 $23
	ldh a, [c]                                       ; $77a9: $f2
	rrca                                             ; $77aa: $0f
	ldh a, [$e7]                                     ; $77ab: $f0 $e7
	ld a, [hl-]                                      ; $77ad: $3a
	ld d, b                                          ; $77ae: $50
	ldh a, [$2d]                                     ; $77af: $f0 $2d
	dec sp                                           ; $77b1: $3b
	ccf                                              ; $77b2: $3f
	ld c, [hl]                                       ; $77b3: $4e
	ld c, a                                          ; $77b4: $4f
	ld b, d                                          ; $77b5: $42
	and b                                            ; $77b6: $a0
	ld b, b                                          ; $77b7: $40
	add hl, sp                                       ; $77b8: $39
	xor c                                            ; $77b9: $a9
	ldh a, [rAUD4GO]                                 ; $77ba: $f0 $23
	ldh a, [c]                                       ; $77bc: $f2
	rrca                                             ; $77bd: $0f
	ldh a, [$e7]                                     ; $77be: $f0 $e7
	ld c, e                                          ; $77c0: $4b
	ld b, [hl]                                       ; $77c1: $46
	ld b, c                                          ; $77c2: $41
	ld a, [hl-]                                      ; $77c3: $3a
	ldh a, [c]                                       ; $77c4: $f2
	ret z                                            ; $77c5: $c8

	ld e, e                                          ; $77c6: $5b
	ld d, [hl]                                       ; $77c7: $56
	inc de                                           ; $77c8: $13
	ld a, [hl-]                                      ; $77c9: $3a
	jr c, jr_08b_7815                                ; $77ca: $38 $49

	ld [hl], a                                       ; $77cc: $77
	add hl, sp                                       ; $77cd: $39
	ld e, l                                          ; $77ce: $5d
	ld e, d                                          ; $77cf: $5a
	ld c, b                                          ; $77d0: $48
	and b                                            ; $77d1: $a0
	cpl                                              ; $77d2: $2f
	add sp, $28                                      ; $77d3: $e8 $28
	add hl, bc                                       ; $77d5: $09
	db $ec                                           ; $77d6: $ec
	dec b                                            ; $77d7: $05
	ld a, [hl-]                                      ; $77d8: $3a
	ld d, b                                          ; $77d9: $50
	xor h                                            ; $77da: $ac
	db $ec                                           ; $77db: $ec
	dec b                                            ; $77dc: $05
	dec sp                                           ; $77dd: $3b
	ccf                                              ; $77de: $3f
	add d                                            ; $77df: $82
	dec sp                                           ; $77e0: $3b
	ccf                                              ; $77e1: $3f
	inc de                                           ; $77e2: $13
	ld d, l                                          ; $77e3: $55
	ld c, l                                          ; $77e4: $4d
	ld c, l                                          ; $77e5: $4d
	ld a, e                                          ; $77e6: $7b
	jr c, jr_08b_7821                                ; $77e7: $38 $38

	ld b, d                                          ; $77e9: $42
	ld b, a                                          ; $77ea: $47
	ld c, b                                          ; $77eb: $48
	and b                                            ; $77ec: $a0
	ld b, b                                          ; $77ed: $40
	ld b, c                                          ; $77ee: $41
	ld a, [hl-]                                      ; $77ef: $3a
	ldh a, [c]                                       ; $77f0: $f2
	ld h, d                                          ; $77f1: $62
	ldh a, [rSB]                                     ; $77f2: $f0 $01
	ld l, [hl]                                       ; $77f4: $6e
	ld d, a                                          ; $77f5: $57
	ld a, [hl-]                                      ; $77f6: $3a
	xor h                                            ; $77f7: $ac
	di                                               ; $77f8: $f3
	inc bc                                           ; $77f9: $03
	ld e, [hl]                                       ; $77fa: $5e
	ldh a, [$38]                                     ; $77fb: $f0 $38
	ld a, $3a                                        ; $77fd: $3e $3a
	ld d, l                                          ; $77ff: $55
	ccf                                              ; $7800: $3f
	ld c, a                                          ; $7801: $4f
	inc de                                           ; $7802: $13
	jr c, jr_08b_783d                                ; $7803: $38 $38

	db $ec                                           ; $7805: $ec
	ret c                                            ; $7806: $d8

	and b                                            ; $7807: $a0
	ld b, b                                          ; $7808: $40
	ld b, c                                          ; $7809: $41
	ld a, [hl-]                                      ; $780a: $3a
	di                                               ; $780b: $f3
	inc bc                                           ; $780c: $03
	ld e, [hl]                                       ; $780d: $5e
	ldh a, [$38]                                     ; $780e: $f0 $38
	ld a, $3a                                        ; $7810: $3e $3a
	ld d, l                                          ; $7812: $55
	ccf                                              ; $7813: $3f
	ld c, a                                          ; $7814: $4f

jr_08b_7815:
	inc de                                           ; $7815: $13
	jr c, jr_08b_7850                                ; $7816: $38 $38

	ld c, c                                          ; $7818: $49
	ld [hl], a                                       ; $7819: $77
	add hl, sp                                       ; $781a: $39
	ld a, [hl-]                                      ; $781b: $3a
	ld c, b                                          ; $781c: $48
	and b                                            ; $781d: $a0
	cpl                                              ; $781e: $2f
	jp hl                                            ; $781f: $e9


	ld a, [hl-]                                      ; $7820: $3a

jr_08b_7821:
	and c                                            ; $7821: $a1
	ld l, a                                          ; $7822: $6f
	ld c, c                                          ; $7823: $49
	xor $06                                          ; $7824: $ee $06
	ld c, h                                          ; $7826: $4c
	xor l                                            ; $7827: $ad
	ld b, b                                          ; $7828: $40
	ld b, d                                          ; $7829: $42
	add hl, sp                                       ; $782a: $39
	ld h, c                                          ; $782b: $61
	inc [hl]                                         ; $782c: $34
	ldh a, [$60]                                     ; $782d: $f0 $60
	ld e, c                                          ; $782f: $59
	add c                                            ; $7830: $81
	ld c, d                                          ; $7831: $4a
	inc de                                           ; $7832: $13
	pop af                                           ; $7833: $f1
	dec c                                            ; $7834: $0d
	ldh a, [$79]                                     ; $7835: $f0 $79
	ld a, $3f                                        ; $7837: $3e $3f
	ld d, l                                          ; $7839: $55
	ld c, l                                          ; $783a: $4d
	ld c, [hl]                                       ; $783b: $4e
	inc a                                            ; $783c: $3c

jr_08b_783d:
	ld a, [hl-]                                      ; $783d: $3a
	and c                                            ; $783e: $a1
	ld l, a                                          ; $783f: $6f
	ld c, c                                          ; $7840: $49
	xor $06                                          ; $7841: $ee $06
	ld c, d                                          ; $7843: $4a
	xor h                                            ; $7844: $ac
	db $ec                                           ; $7845: $ec
	dec b                                            ; $7846: $05
	ld b, d                                          ; $7847: $42
	ld c, h                                          ; $7848: $4c
	xor b                                            ; $7849: $a8
	ldh a, [$d7]                                     ; $784a: $f0 $d7
	ld c, d                                          ; $784c: $4a
	inc [hl]                                         ; $784d: $34
	ldh a, [$75]                                     ; $784e: $f0 $75

jr_08b_7850:
	ldh a, [$8c]                                     ; $7850: $f0 $8c
	ccf                                              ; $7852: $3f
	ld l, h                                          ; $7853: $6c
	ld d, d                                          ; $7854: $52
	ld a, $66                                        ; $7855: $3e $66
	add hl, sp                                       ; $7857: $39
	and b                                            ; $7858: $a0
	ld a, [hl-]                                      ; $7859: $3a
	ld b, c                                          ; $785a: $41
	ccf                                              ; $785b: $3f
	add d                                            ; $785c: $82
	add hl, sp                                       ; $785d: $39
	pop af                                           ; $785e: $f1
	ld h, l                                          ; $785f: $65
	ldh a, [$e7]                                     ; $7860: $f0 $e7
	inc de                                           ; $7862: $13
	ld a, [hl-]                                      ; $7863: $3a
	ld b, d                                          ; $7864: $42
	inc a                                            ; $7865: $3c
	ld a, [hl-]                                      ; $7866: $3a
	xor h                                            ; $7867: $ac
	ldh a, [$60]                                     ; $7868: $f0 $60
	ld e, c                                          ; $786a: $59
	add c                                            ; $786b: $81
	ld c, d                                          ; $786c: $4a
	pop af                                           ; $786d: $f1
	dec c                                            ; $786e: $0d
	ldh a, [$79]                                     ; $786f: $f0 $79
	ld a, $3f                                        ; $7871: $3e $3f
	inc de                                           ; $7873: $13
	ld d, l                                          ; $7874: $55
	ld c, l                                          ; $7875: $4d
	ld c, [hl]                                       ; $7876: $4e
	inc a                                            ; $7877: $3c
	ld c, a                                          ; $7878: $4f
	ld a, $4d                                        ; $7879: $3e $4d
	ld a, [hl-]                                      ; $787b: $3a
	jr c, jr_08b_78ca                                ; $787c: $38 $4c

	and b                                            ; $787e: $a0
	ldh a, [$57]                                     ; $787f: $f0 $57
	ldh a, [$ae]                                     ; $7881: $f0 $ae
	ld a, [hl-]                                      ; $7883: $3a
	ldh a, [$3f]                                     ; $7884: $f0 $3f
	ld d, e                                          ; $7886: $53
	inc de                                           ; $7887: $13
	adc $46                                          ; $7888: $ce $46
	ld c, [hl]                                       ; $788a: $4e
	ld c, h                                          ; $788b: $4c
	and b                                            ; $788c: $a0
	cpl                                              ; $788d: $2f
	add sp, $38                                      ; $788e: $e8 $38
	and c                                            ; $7890: $a1
	xor $1f                                          ; $7891: $ee $1f
	xor b                                            ; $7893: $a8
	ld l, a                                          ; $7894: $6f
	ld c, a                                          ; $7895: $4f
	ld b, b                                          ; $7896: $40
	add hl, sp                                       ; $7897: $39
	ld [hl], a                                       ; $7898: $77
	add hl, sp                                       ; $7899: $39
	ld h, e                                          ; $789a: $63
	and b                                            ; $789b: $a0
	ldh a, [$57]                                     ; $789c: $f0 $57
	ldh a, [$ae]                                     ; $789e: $f0 $ae
	ld c, h                                          ; $78a0: $4c
	xor b                                            ; $78a1: $a8
	ld [hl], d                                       ; $78a2: $72
	ld c, c                                          ; $78a3: $49
	ld c, l                                          ; $78a4: $4d

jr_08b_78a5:
	ld h, c                                          ; $78a5: $61
	ld d, [hl]                                       ; $78a6: $56
	add hl, sp                                       ; $78a7: $39
	ld h, e                                          ; $78a8: $63
	ld c, h                                          ; $78a9: $4c
	and b                                            ; $78aa: $a0
	xor $1f                                          ; $78ab: $ee $1f
	xor b                                            ; $78ad: $a8
	ldh a, [$57]                                     ; $78ae: $f0 $57
	ldh a, [$ae]                                     ; $78b0: $f0 $ae
	ld a, [hl-]                                      ; $78b2: $3a
	ldh a, [$3f]                                     ; $78b3: $f0 $3f
	ld c, h                                          ; $78b5: $4c
	and b                                            ; $78b6: $a0
	cpl                                              ; $78b7: $2f
	jp hl                                            ; $78b8: $e9


	ld c, a                                          ; $78b9: $4f
	ld c, b                                          ; $78ba: $48
	add hl, bc                                       ; $78bb: $09
	ld l, a                                          ; $78bc: $6f
	ld c, c                                          ; $78bd: $49
	jr c, jr_08b_790e                                ; $78be: $38 $4e

	ld b, d                                          ; $78c0: $42
	ld b, a                                          ; $78c1: $47
	xor h                                            ; $78c2: $ac
	pop af                                           ; $78c3: $f1
	ld l, a                                          ; $78c4: $6f
	ld b, d                                          ; $78c5: $42
	add h                                            ; $78c6: $84
	ld h, d                                          ; $78c7: $62
	ld [hl], d                                       ; $78c8: $72
	ld a, [hl-]                                      ; $78c9: $3a

jr_08b_78ca:
	jr c, jr_08b_7916                                ; $78ca: $38 $4a

	ld c, b                                          ; $78cc: $48
	and b                                            ; $78cd: $a0
	ld e, d                                          ; $78ce: $5a
	ld d, h                                          ; $78cf: $54
	ld [hl], d                                       ; $78d0: $72
	ccf                                              ; $78d1: $3f
	ld c, [hl]                                       ; $78d2: $4e
	ld b, d                                          ; $78d3: $42
	xor c                                            ; $78d4: $a9
	ldh a, [$3f]                                     ; $78d5: $f0 $3f
	ld h, d                                          ; $78d7: $62
	ld [hl], d                                       ; $78d8: $72
	ld b, a                                          ; $78d9: $47
	ld a, b                                          ; $78da: $78
	dec a                                            ; $78db: $3d
	ld b, c                                          ; $78dc: $41
	ld c, d                                          ; $78dd: $4a
	ld a, $66                                        ; $78de: $3e $66
	add hl, sp                                       ; $78e0: $39
	and b                                            ; $78e1: $a0
	ld d, d                                          ; $78e2: $52
	dec sp                                           ; $78e3: $3b
	dec a                                            ; $78e4: $3d
	ld d, l                                          ; $78e5: $55
	inc [hl]                                         ; $78e6: $34
	adc d                                            ; $78e7: $8a
	add h                                            ; $78e8: $84
	ld b, h                                          ; $78e9: $44
	ld c, c                                          ; $78ea: $49
	inc de                                           ; $78eb: $13
	ld d, c                                          ; $78ec: $51
	sbc l                                            ; $78ed: $9d
	ldh a, [rAUD3LEVEL]                              ; $78ee: $f0 $1c
	ld d, e                                          ; $78f0: $53
	jr c, jr_08b_7948                                ; $78f1: $38 $55

	ld b, c                                          ; $78f3: $41
	ld b, h                                          ; $78f4: $44
	inc a                                            ; $78f5: $3c
	ld d, b                                          ; $78f6: $50
	and b                                            ; $78f7: $a0
	cpl                                              ; $78f8: $2f
	db $eb                                           ; $78f9: $eb
	push bc                                          ; $78fa: $c5
	inc [hl]                                         ; $78fb: $34
	db $ed                                           ; $78fc: $ed
	ld e, e                                          ; $78fd: $5b
	ldh a, [rPCM12]                                  ; $78fe: $f0 $76
	ccf                                              ; $7900: $3f
	ld a, [hl-]                                      ; $7901: $3a
	jr c, jr_08b_78a5                                ; $7902: $38 $a1

	ld b, b                                          ; $7904: $40
	add hl, sp                                       ; $7905: $39
	xor c                                            ; $7906: $a9
	xor $1f                                          ; $7907: $ee $1f
	inc [hl]                                         ; $7909: $34
	ldh a, [rPCM12]                                  ; $790a: $f0 $76
	ccf                                              ; $790c: $3f
	ld c, [hl]                                       ; $790d: $4e

jr_08b_790e:
	inc a                                            ; $790e: $3c
	ld a, [hl-]                                      ; $790f: $3a
	ld c, b                                          ; $7910: $48
	and b                                            ; $7911: $a0
	ldh a, [rPCM12]                                  ; $7912: $f0 $76
	ccf                                              ; $7914: $3f
	ld c, [hl]                                       ; $7915: $4e

jr_08b_7916:
	ld b, l                                          ; $7916: $45
	add hl, sp                                       ; $7917: $39
	ld a, [hl-]                                      ; $7918: $3a
	xor h                                            ; $7919: $ac
	ldh a, [rPCM12]                                  ; $791a: $f0 $76
	ccf                                              ; $791c: $3f
	ld a, [hl-]                                      ; $791d: $3a
	jr c, jr_08b_7965                                ; $791e: $38 $45

	add hl, sp                                       ; $7920: $39
	ld a, [hl-]                                      ; $7921: $3a
	xor b                                            ; $7922: $a8
	ldh a, [rTAC]                                    ; $7923: $f0 $07
	inc a                                            ; $7925: $3c
	ld d, b                                          ; $7926: $50
	ld a, [hl-]                                      ; $7927: $3a
	jr c, jr_08b_798d                                ; $7928: $38 $63

	and b                                            ; $792a: $a0
	db $ec                                           ; $792b: $ec
	ld d, $a9                                        ; $792c: $16 $a9
	ld b, [hl]                                       ; $792e: $46
	ld d, d                                          ; $792f: $52
	ld d, a                                          ; $7930: $57
	ldh a, [$31]                                     ; $7931: $f0 $31
	ldh a, [$78]                                     ; $7933: $f0 $78
	ld h, e                                          ; $7935: $63
	inc a                                            ; $7936: $3c
	ld a, [hl-]                                      ; $7937: $3a
	jr c, jr_08b_799d                                ; $7938: $38 $63

	and b                                            ; $793a: $a0
	db $eb                                           ; $793b: $eb
	ld d, h                                          ; $793c: $54
	ldh a, [$3f]                                     ; $793d: $f0 $3f
	ld c, h                                          ; $793f: $4c
	xor b                                            ; $7940: $a8
	db $eb                                           ; $7941: $eb
	ld h, a                                          ; $7942: $67
	xor h                                            ; $7943: $ac
	ldh a, [$bd]                                     ; $7944: $f0 $bd
	ld e, l                                          ; $7946: $5d
	ld c, [hl]                                       ; $7947: $4e

jr_08b_7948:
	ld b, d                                          ; $7948: $42
	inc a                                            ; $7949: $3c
	ld a, [hl-]                                      ; $794a: $3a
	and c                                            ; $794b: $a1
	cpl                                              ; $794c: $2f
	jp hl                                            ; $794d: $e9


	push bc                                          ; $794e: $c5
	add hl, bc                                       ; $794f: $09
	ld b, b                                          ; $7950: $40
	inc [hl]                                         ; $7951: $34
	db $ec                                           ; $7952: $ec
	inc e                                            ; $7953: $1c
	xor b                                            ; $7954: $a8
	ld l, a                                          ; $7955: $6f
	ld b, a                                          ; $7956: $47
	ld c, a                                          ; $7957: $4f
	ldh a, [$8a]                                     ; $7958: $f0 $8a
	pop af                                           ; $795a: $f1
	ld [hl], d                                       ; $795b: $72
	pop af                                           ; $795c: $f1
	ld a, [bc]                                       ; $795d: $0a
	ld c, e                                          ; $795e: $4b
	ld b, [hl]                                       ; $795f: $46
	ld c, [hl]                                       ; $7960: $4e
	ld b, l                                          ; $7961: $45
	ld c, h                                          ; $7962: $4c
	and b                                            ; $7963: $a0
	db $ec                                           ; $7964: $ec

jr_08b_7965:
	inc e                                            ; $7965: $1c
	xor b                                            ; $7966: $a8
	pop af                                           ; $7967: $f1
	ld c, c                                          ; $7968: $49
	ld [hl], e                                       ; $7969: $73
	ldh a, [rOCPD]                                   ; $796a: $f0 $6b
	ld l, h                                          ; $796c: $6c
	dec a                                            ; $796d: $3d
	jr c, jr_08b_79b7                                ; $796e: $38 $47

	inc de                                           ; $7970: $13
	pop af                                           ; $7971: $f1
	db $dd                                           ; $7972: $dd
	ldh a, [$7f]                                     ; $7973: $f0 $7f
	ld a, $3a                                        ; $7975: $3e $3a
	ld d, l                                          ; $7977: $55
	ld h, c                                          ; $7978: $61
	ld d, [hl]                                       ; $7979: $56
	ld c, h                                          ; $797a: $4c
	and b                                            ; $797b: $a0
	db $ec                                           ; $797c: $ec
	inc e                                            ; $797d: $1c
	xor b                                            ; $797e: $a8
	ld b, [hl]                                       ; $797f: $46
	ld e, h                                          ; $7980: $5c
	ld d, b                                          ; $7981: $50
	ld [hl], c                                       ; $7982: $71
	dec a                                            ; $7983: $3d
	ld d, b                                          ; $7984: $50
	xor h                                            ; $7985: $ac
	ld l, e                                          ; $7986: $6b
	ld c, a                                          ; $7987: $4f
	sub h                                            ; $7988: $94
	ld a, b                                          ; $7989: $78
	ld a, [hl-]                                      ; $798a: $3a
	jr c, @+$51                                      ; $798b: $38 $4f

jr_08b_798d:
	ld b, c                                          ; $798d: $41
	ld c, h                                          ; $798e: $4c
	and b                                            ; $798f: $a0
	cpl                                              ; $7990: $2f
	add sp, $54                                      ; $7991: $e8 $54
	and c                                            ; $7993: $a1
	ld h, e                                          ; $7994: $63
	inc [hl]                                         ; $7995: $34
	ld l, a                                          ; $7996: $6f
	ld b, a                                          ; $7997: $47
	ld c, e                                          ; $7998: $4b
	inc de                                           ; $7999: $13
	ldh a, [$bd]                                     ; $799a: $f0 $bd
	ld e, l                                          ; $799c: $5d

jr_08b_799d:
	ld a, [hl-]                                      ; $799d: $3a
	jr c, @+$3e                                      ; $799e: $38 $3c

	ld d, b                                          ; $79a0: $50
	ld c, b                                          ; $79a1: $48
	and b                                            ; $79a2: $a0
	ld b, [hl]                                       ; $79a3: $46
	ld a, [hl-]                                      ; $79a4: $3a
	dec a                                            ; $79a5: $3d
	ld c, e                                          ; $79a6: $4b
	ld e, d                                          ; $79a7: $5a
	add hl, sp                                       ; $79a8: $39
	inc a                                            ; $79a9: $3c
	inc de                                           ; $79aa: $13
	db $ec                                           ; $79ab: $ec
	dec b                                            ; $79ac: $05
	ld e, l                                          ; $79ad: $5d

jr_08b_79ae:
	ld e, d                                          ; $79ae: $5a
	xor h                                            ; $79af: $ac
	ld l, a                                          ; $79b0: $6f
	ld b, a                                          ; $79b1: $47
	ld c, e                                          ; $79b2: $4b
	ldh a, [$bd]                                     ; $79b3: $f0 $bd
	ld e, l                                          ; $79b5: $5d
	ld a, [hl-]                                      ; $79b6: $3a

jr_08b_79b7:
	jr c, jr_08b_7a1c                                ; $79b7: $38 $63

	and b                                            ; $79b9: $a0
	ld b, b                                          ; $79ba: $40
	ld b, c                                          ; $79bb: $41
	ld a, [hl-]                                      ; $79bc: $3a
	ld h, e                                          ; $79bd: $63
	ld e, l                                          ; $79be: $5d
	ld a, [hl-]                                      ; $79bf: $3a
	jr c, jr_08b_79ae                                ; $79c0: $38 $ec

	ret c                                            ; $79c2: $d8

	and b                                            ; $79c3: $a0
	cpl                                              ; $79c4: $2f
	add sp, -$68                                     ; $79c5: $e8 $98
	add hl, bc                                       ; $79c7: $09
	db $ec                                           ; $79c8: $ec
	reti                                             ; $79c9: $d9


	inc [hl]                                         ; $79ca: $34
	pop af                                           ; $79cb: $f1
	and e                                            ; $79cc: $a3
	pop af                                           ; $79cd: $f1
	ld [hl], d                                       ; $79ce: $72
	inc a                                            ; $79cf: $3c
	ld a, [hl-]                                      ; $79d0: $3a
	ld [hl], h                                       ; $79d1: $74
	xor b                                            ; $79d2: $a8
	ld l, a                                          ; $79d3: $6f
	ld b, a                                          ; $79d4: $47
	ld c, e                                          ; $79d5: $4b
	ldh a, [rAUD1LOW]                                ; $79d6: $f0 $13
	ldh a, [$63]                                     ; $79d8: $f0 $63
	call c, $dca0                                    ; $79da: $dc $a0 $dc
	xor b                                            ; $79dd: $a8
	pop af                                           ; $79de: $f1
	and e                                            ; $79df: $a3
	pop af                                           ; $79e0: $f1
	ld [hl], d                                       ; $79e1: $72
	ld d, e                                          ; $79e2: $53
	ld a, [hl-]                                      ; $79e3: $3a
	jr c, jr_08b_7a2f                                ; $79e4: $38 $49

	xor h                                            ; $79e6: $ac
	ldh a, [rAUD1LOW]                                ; $79e7: $f0 $13
	ldh a, [$63]                                     ; $79e9: $f0 $63
	ld b, l                                          ; $79eb: $45
	ld c, h                                          ; $79ec: $4c
	and b                                            ; $79ed: $a0
	db $ec                                           ; $79ee: $ec
	reti                                             ; $79ef: $d9


	inc [hl]                                         ; $79f0: $34
	pop af                                           ; $79f1: $f1
	and e                                            ; $79f2: $a3
	pop af                                           ; $79f3: $f1
	ld [hl], d                                       ; $79f4: $72
	ld b, l                                          ; $79f5: $45
	ld c, h                                          ; $79f6: $4c
	ld c, b                                          ; $79f7: $48
	and b                                            ; $79f8: $a0
	ld l, a                                          ; $79f9: $6f
	ld d, h                                          ; $79fa: $54
	add hl, sp                                       ; $79fb: $39
	jr c, jr_08b_7a37                                ; $79fc: $38 $39

	ldh a, [$3f]                                     ; $79fe: $f0 $3f
	ld c, e                                          ; $7a00: $4b
	xor h                                            ; $7a01: $ac
	ret                                              ; $7a02: $c9


	ld c, b                                          ; $7a03: $48
	and b                                            ; $7a04: $a0
	cpl                                              ; $7a05: $2f
	add sp, $5a                                      ; $7a06: $e8 $5a
	add hl, bc                                       ; $7a08: $09
	ldh a, [$8c]                                     ; $7a09: $f0 $8c
	inc [hl]                                         ; $7a0b: $34
	call nc, $ad42                                   ; $7a0c: $d4 $42 $ad
	db $ec                                           ; $7a0f: $ec
	ld a, [de]                                       ; $7a10: $1a
	ld d, h                                          ; $7a11: $54
	add hl, sp                                       ; $7a12: $39
	jr c, jr_08b_7a4e                                ; $7a13: $38 $39

	ld b, d                                          ; $7a15: $42
	ld c, a                                          ; $7a16: $4f
	inc de                                           ; $7a17: $13
	ld a, [hl]                                       ; $7a18: $7e
	jr c, @+$4b                                      ; $7a19: $38 $49

	ld [hl], a                                       ; $7a1b: $77

jr_08b_7a1c:
	add hl, sp                                       ; $7a1c: $39
	ld a, $48                                        ; $7a1d: $3e $48
	and b                                            ; $7a1f: $a0
	ldh a, [$34]                                     ; $7a20: $f0 $34
	ld b, a                                          ; $7a22: $47
	inc [hl]                                         ; $7a23: $34
	jr c, jr_08b_7a5e                                ; $7a24: $38 $38

	ld b, c                                          ; $7a26: $41
	ld b, h                                          ; $7a27: $44
	ld e, l                                          ; $7a28: $5d
	ld e, d                                          ; $7a29: $5a
	xor l                                            ; $7a2a: $ad
	ld [hl], b                                       ; $7a2b: $70
	ld [hl], c                                       ; $7a2c: $71
	ld b, c                                          ; $7a2d: $41
	ld c, h                                          ; $7a2e: $4c

jr_08b_7a2f:
	xor b                                            ; $7a2f: $a8
	ld a, a                                          ; $7a30: $7f
	ld h, d                                          ; $7a31: $62
	pop af                                           ; $7a32: $f1
	sbc l                                            ; $7a33: $9d
	ld h, e                                          ; $7a34: $63
	ld a, c                                          ; $7a35: $79
	ld h, c                                          ; $7a36: $61

jr_08b_7a37:
	ld d, [hl]                                       ; $7a37: $56
	dec sp                                           ; $7a38: $3b
	ccf                                              ; $7a39: $3f
	and b                                            ; $7a3a: $a0
	cpl                                              ; $7a3b: $2f
	ld [$0961], a                                    ; $7a3c: $ea $61 $09
	db $ed                                           ; $7a3f: $ed
	ld e, a                                          ; $7a40: $5f
	db $ec                                           ; $7a41: $ec
	ret c                                            ; $7a42: $d8

	ld c, c                                          ; $7a43: $49
	ld c, e                                          ; $7a44: $4b
	xor h                                            ; $7a45: $ac
	ld [hl], a                                       ; $7a46: $77
	ld h, e                                          ; $7a47: $63
	ld a, [hl-]                                      ; $7a48: $3a
	jr c, jr_08b_7aa8                                ; $7a49: $38 $5d

	ld e, d                                          ; $7a4b: $5a
	ld c, b                                          ; $7a4c: $48
	and b                                            ; $7a4d: $a0

jr_08b_7a4e:
	db $ed                                           ; $7a4e: $ed
	ld e, a                                          ; $7a4f: $5f
	ld b, h                                          ; $7a50: $44
	ld c, c                                          ; $7a51: $49
	ld c, e                                          ; $7a52: $4b
	ld [hl], a                                       ; $7a53: $77
	add hl, sp                                       ; $7a54: $39
	ld e, l                                          ; $7a55: $5d
	ld e, d                                          ; $7a56: $5a
	xor h                                            ; $7a57: $ac
	ld l, a                                          ; $7a58: $6f
	ld b, d                                          ; $7a59: $42
	adc e                                            ; $7a5a: $8b
	ld l, h                                          ; $7a5b: $6c
	ld c, c                                          ; $7a5c: $49
	ld c, e                                          ; $7a5d: $4b

jr_08b_7a5e:
	inc de                                           ; $7a5e: $13
	ldh a, [rTMA]                                    ; $7a5f: $f0 $06
	ld h, e                                          ; $7a61: $63
	ld a, [hl-]                                      ; $7a62: $3a
	jr c, jr_08b_7aa1                                ; $7a63: $38 $3c

	ld a, [hl-]                                      ; $7a65: $3a
	ld c, b                                          ; $7a66: $48
	and b                                            ; $7a67: $a0
	db $ed                                           ; $7a68: $ed
	ld e, a                                          ; $7a69: $5f
	ld b, h                                          ; $7a6a: $44
	ld c, c                                          ; $7a6b: $49
	ld c, e                                          ; $7a6c: $4b
	ld [hl], a                                       ; $7a6d: $77
	add hl, sp                                       ; $7a6e: $39
	ld e, l                                          ; $7a6f: $5d
	ld e, d                                          ; $7a70: $5a
	xor h                                            ; $7a71: $ac
	ld c, a                                          ; $7a72: $4f
	dec sp                                           ; $7a73: $3b
	ld c, c                                          ; $7a74: $49
	inc [hl]                                         ; $7a75: $34
	ldh a, [rVBK]                                    ; $7a76: $f0 $4f
	ld d, e                                          ; $7a78: $53
	pop af                                           ; $7a79: $f1

jr_08b_7a7a:
	add c                                            ; $7a7a: $81
	ld h, c                                          ; $7a7b: $61
	ldh a, [$ac]                                     ; $7a7c: $f0 $ac
	ld d, l                                          ; $7a7e: $55
	ld b, d                                          ; $7a7f: $42
	ld d, e                                          ; $7a80: $53
	inc de                                           ; $7a81: $13
	jr c, jr_08b_7abc                                ; $7a82: $38 $38

	ld c, c                                          ; $7a84: $49
	ld [hl], a                                       ; $7a85: $77
	add hl, sp                                       ; $7a86: $39
	ld a, [hl-]                                      ; $7a87: $3a
	and b                                            ; $7a88: $a0
	cpl                                              ; $7a89: $2f
	add sp, $5b                                      ; $7a8a: $e8 $5b
	ld c, b                                          ; $7a8c: $48
	add hl, bc                                       ; $7a8d: $09
	ldh a, [$64]                                     ; $7a8e: $f0 $64
	jr c, @+$4b                                      ; $7a90: $38 $49

	add d                                            ; $7a92: $82
	add hl, sp                                       ; $7a93: $39
	inc a                                            ; $7a94: $3c
	xor h                                            ; $7a95: $ac
	ld l, a                                          ; $7a96: $6f
	ld b, a                                          ; $7a97: $47
	ld c, e                                          ; $7a98: $4b
	ret                                              ; $7a99: $c9


	inc de                                           ; $7a9a: $13
	ldh a, [rTMA]                                    ; $7a9b: $f0 $06
	ld h, e                                          ; $7a9d: $63
	ld a, [hl-]                                      ; $7a9e: $3a
	jr c, jr_08b_7aea                                ; $7a9f: $38 $49

jr_08b_7aa1:
	ld [hl], a                                       ; $7aa1: $77
	dec sp                                           ; $7aa2: $3b
	ccf                                              ; $7aa3: $3f
	ld c, b                                          ; $7aa4: $48
	and b                                            ; $7aa5: $a0
	ld [hl], b                                       ; $7aa6: $70
	ld [hl], c                                       ; $7aa7: $71

jr_08b_7aa8:
	ld b, c                                          ; $7aa8: $41
	ld c, h                                          ; $7aa9: $4c
	xor b                                            ; $7aaa: $a8
	ld l, a                                          ; $7aab: $6f
	ld b, d                                          ; $7aac: $42
	ldh a, [$7b]                                     ; $7aad: $f0 $7b
	ld h, l                                          ; $7aaf: $65
	add e                                            ; $7ab0: $83
	ld c, c                                          ; $7ab1: $49
	ld c, e                                          ; $7ab2: $4b
	inc de                                           ; $7ab3: $13
	ret                                              ; $7ab4: $c9


	ldh a, [rTMA]                                    ; $7ab5: $f0 $06
	ld h, e                                          ; $7ab7: $63
	ld a, [hl-]                                      ; $7ab8: $3a
	ld d, l                                          ; $7ab9: $55
	ccf                                              ; $7aba: $3f
	and b                                            ; $7abb: $a0

jr_08b_7abc:
	xor $1f                                          ; $7abc: $ee $1f
	inc [hl]                                         ; $7abe: $34
	ld [hl], b                                       ; $7abf: $70
	ld [hl], c                                       ; $7ac0: $71
	ld b, c                                          ; $7ac1: $41
	ld c, h                                          ; $7ac2: $4c
	and b                                            ; $7ac3: $a0
	ld d, h                                          ; $7ac4: $54
	ld b, d                                          ; $7ac5: $42
	db $eb                                           ; $7ac6: $eb
	cp d                                             ; $7ac7: $ba
	xor h                                            ; $7ac8: $ac
	db $eb                                           ; $7ac9: $eb
	ld d, h                                          ; $7aca: $54
	ldh a, [c]                                       ; $7acb: $f2
	set 6, b                                         ; $7acc: $cb $f0
	ld c, b                                          ; $7ace: $48
	ldh a, [$78]                                     ; $7acf: $f0 $78
	ld b, h                                          ; $7ad1: $44
	ld c, c                                          ; $7ad2: $49
	inc de                                           ; $7ad3: $13
	ld [hl], a                                       ; $7ad4: $77
	ld h, e                                          ; $7ad5: $63
	ld a, [hl-]                                      ; $7ad6: $3a
	jr c, jr_08b_7a7a                                ; $7ad7: $38 $a1

	cpl                                              ; $7ad9: $2f
	add sp, $5c                                      ; $7ada: $e8 $5c
	add hl, bc                                       ; $7adc: $09
	db $ec                                           ; $7add: $ec
	reti                                             ; $7ade: $d9


	xor h                                            ; $7adf: $ac
	ld b, b                                          ; $7ae0: $40
	add hl, sp                                       ; $7ae1: $39
	ld [hl], a                                       ; $7ae2: $77
	add hl, sp                                       ; $7ae3: $39
	ld c, d                                          ; $7ae4: $4a
	ld a, $66                                        ; $7ae5: $3e $66
	add hl, sp                                       ; $7ae7: $39
	xor b                                            ; $7ae8: $a8
	db $ec                                           ; $7ae9: $ec

jr_08b_7aea:
	cp c                                             ; $7aea: $b9
	and b                                            ; $7aeb: $a0
	ld b, b                                          ; $7aec: $40
	add hl, sp                                       ; $7aed: $39
	ld c, d                                          ; $7aee: $4a
	ld a, $66                                        ; $7aef: $3e $66
	add hl, sp                                       ; $7af1: $39
	xor b                                            ; $7af2: $a8
	ld l, a                                          ; $7af3: $6f
	inc [hl]                                         ; $7af4: $34
	ld a, a                                          ; $7af5: $7f
	ld b, a                                          ; $7af6: $47
	sub [hl]                                         ; $7af7: $96
	dec sp                                           ; $7af8: $3b
	ld h, c                                          ; $7af9: $61
	ld d, [hl]                                       ; $7afa: $56
	dec sp                                           ; $7afb: $3b
	dec a                                            ; $7afc: $3d
	and b                                            ; $7afd: $a0
	ld d, h                                          ; $7afe: $54
	add hl, sp                                       ; $7aff: $39
	jr c, jr_08b_7b3b                                ; $7b00: $38 $39

	ld b, d                                          ; $7b02: $42
	ldh a, [$a5]                                     ; $7b03: $f0 $a5
	ld c, l                                          ; $7b05: $4d
	ld c, [hl]                                       ; $7b06: $4e
	inc de                                           ; $7b07: $13
	add h                                            ; $7b08: $84
	dec sp                                           ; $7b09: $3b
	ccf                                              ; $7b0a: $3f
	inc [hl]                                         ; $7b0b: $34
	pop af                                           ; $7b0c: $f1
	xor d                                            ; $7b0d: $aa
	pop af                                           ; $7b0e: $f1
	and e                                            ; $7b0f: $a3
	ld b, h                                          ; $7b10: $44
	ld c, c                                          ; $7b11: $49
	ld [hl], a                                       ; $7b12: $77
	add hl, sp                                       ; $7b13: $39
	ld h, e                                          ; $7b14: $63
	and b                                            ; $7b15: $a0
	cpl                                              ; $7b16: $2f
	jp hl                                            ; $7b17: $e9


	ld e, b                                          ; $7b18: $58
	and c                                            ; $7b19: $a1
	ld b, b                                          ; $7b1a: $40
	inc [hl]                                         ; $7b1b: $34
	ld b, b                                          ; $7b1c: $40
	ld b, c                                          ; $7b1d: $41
	ld a, [hl-]                                      ; $7b1e: $3a
	ld b, d                                          ; $7b1f: $42
	xor h                                            ; $7b20: $ac
	db $ed                                           ; $7b21: $ed
	ld a, a                                          ; $7b22: $7f
	ldh a, [rAUD1LOW]                                ; $7b23: $f0 $13
	jr c, @+$4b                                      ; $7b25: $38 $49

jr_08b_7b27:
	ld [hl], a                                       ; $7b27: $77
	add hl, sp                                       ; $7b28: $39
	ld e, l                                          ; $7b29: $5d
	ld e, d                                          ; $7b2a: $5a
	ld c, b                                          ; $7b2b: $48
	and b                                            ; $7b2c: $a0
	db $ec                                           ; $7b2d: $ec
	ld e, c                                          ; $7b2e: $59
	ld b, h                                          ; $7b2f: $44
	inc a                                            ; $7b30: $3c
	ld d, b                                          ; $7b31: $50
	xor h                                            ; $7b32: $ac
	ldh a, [$5c]                                     ; $7b33: $f0 $5c
	jr c, jr_08b_7b27                                ; $7b35: $38 $f0

	and l                                            ; $7b37: $a5
	ldh a, [c]                                       ; $7b38: $f2
	ld a, [bc]                                       ; $7b39: $0a
	ld a, [hl-]                                      ; $7b3a: $3a

jr_08b_7b3b:
	ld b, c                                          ; $7b3b: $41
	ccf                                              ; $7b3c: $3f
	ld d, h                                          ; $7b3d: $54
	ld c, c                                          ; $7b3e: $49
	ld c, e                                          ; $7b3f: $4b
	inc de                                           ; $7b40: $13
	ldh a, [rAUD1LOW]                                ; $7b41: $f0 $13
	jr c, jr_08b_7b8e                                ; $7b43: $38 $49

	ld [hl], a                                       ; $7b45: $77
	add hl, sp                                       ; $7b46: $39
	ld h, e                                          ; $7b47: $63
	and b                                            ; $7b48: $a0
	ld b, b                                          ; $7b49: $40
	ld b, c                                          ; $7b4a: $41
	ld a, [hl-]                                      ; $7b4b: $3a
	ld b, d                                          ; $7b4c: $42
	xor h                                            ; $7b4d: $ac
	db $ed                                           ; $7b4e: $ed
	ld a, a                                          ; $7b4f: $7f
	ldh a, [rAUD1LOW]                                ; $7b50: $f0 $13
	jr c, jr_08b_7b9d                                ; $7b52: $38 $49

	ld [hl], a                                       ; $7b54: $77
	add hl, sp                                       ; $7b55: $39
	ld a, [hl-]                                      ; $7b56: $3a
	and b                                            ; $7b57: $a0
	cpl                                              ; $7b58: $2f
	add sp, -$67                                     ; $7b59: $e8 $99
	add hl, bc                                       ; $7b5b: $09
	ldh a, [c]                                       ; $7b5c: $f2
	ld d, c                                          ; $7b5d: $51
	ld b, d                                          ; $7b5e: $42
	ld c, a                                          ; $7b5f: $4f
	xor h                                            ; $7b60: $ac
	ld l, a                                          ; $7b61: $6f
	inc [hl]                                         ; $7b62: $34
	ld a, [hl]                                       ; $7b63: $7e
	jr c, jr_08b_7ba0                                ; $7b64: $38 $3a

	ld c, c                                          ; $7b66: $49
	inc de                                           ; $7b67: $13
	ld [hl], a                                       ; $7b68: $77
	dec sp                                           ; $7b69: $3b
	ccf                                              ; $7b6a: $3f
	dec a                                            ; $7b6b: $3d
	ld b, d                                          ; $7b6c: $42
	and b                                            ; $7b6d: $a0
	call c, Call_08b_63a8                            ; $7b6e: $dc $a8 $63
	ld d, a                                          ; $7b71: $57
	ld c, c                                          ; $7b72: $49
	jr c, jr_08b_7bad                                ; $7b73: $38 $38

	ld c, h                                          ; $7b75: $4c
	and b                                            ; $7b76: $a0
	ldh a, [c]                                       ; $7b77: $f2
	ld d, c                                          ; $7b78: $51
	ld b, d                                          ; $7b79: $42
	ld c, a                                          ; $7b7a: $4f
	inc [hl]                                         ; $7b7b: $34
	ld h, e                                          ; $7b7c: $63
	ld d, a                                          ; $7b7d: $57
	ld c, c                                          ; $7b7e: $49
	jr c, jr_08b_7bb9                                ; $7b7f: $38 $38

	ld c, h                                          ; $7b81: $4c
	and b                                            ; $7b82: $a0
	ld l, a                                          ; $7b83: $6f
	ld d, h                                          ; $7b84: $54
	ld b, d                                          ; $7b85: $42
	add h                                            ; $7b86: $84
	ld b, d                                          ; $7b87: $42
	ldh a, [$3f]                                     ; $7b88: $f0 $3f

jr_08b_7b8a:
	xor h                                            ; $7b8a: $ac
	add a                                            ; $7b8b: $87
	adc e                                            ; $7b8c: $8b
	ld e, h                                          ; $7b8d: $5c

jr_08b_7b8e:
	ld a, [hl-]                                      ; $7b8e: $3a
	ld b, c                                          ; $7b8f: $41
	ld b, h                                          ; $7b90: $44
	and b                                            ; $7b91: $a0
	cpl                                              ; $7b92: $2f
	halt                                             ; $7b93: $76
	ld c, a                                          ; $7b94: $4f
	ldh a, [$8e]                                     ; $7b95: $f0 $8e
	pop af                                           ; $7b97: $f1
	ld c, l                                          ; $7b98: $4d
	ld h, l                                          ; $7b99: $65
	ld a, [hl-]                                      ; $7b9a: $3a
	ld b, c                                          ; $7b9b: $41
	ld b, h                                          ; $7b9c: $44

jr_08b_7b9d:
	ld b, l                                          ; $7b9d: $45
	add hl, bc                                       ; $7b9e: $09
	adc b                                            ; $7b9f: $88

jr_08b_7ba0:
	sub c                                            ; $7ba0: $91
	xor c                                            ; $7ba1: $a9
	db $ec                                           ; $7ba2: $ec
	cp c                                             ; $7ba3: $b9
	and b                                            ; $7ba4: $a0
	ret nz                                           ; $7ba5: $c0

	xor b                                            ; $7ba6: $a8
	ld [hl], d                                       ; $7ba7: $72
	ld b, a                                          ; $7ba8: $47
	ld a, b                                          ; $7ba9: $78
	ld c, l                                          ; $7baa: $4d
	ccf                                              ; $7bab: $3f
	ld b, l                                          ; $7bac: $45

jr_08b_7bad:
	inc a                                            ; $7bad: $3c
	dec sp                                           ; $7bae: $3b
	dec a                                            ; $7baf: $3d
	ld c, h                                          ; $7bb0: $4c
	and b                                            ; $7bb1: $a0
	adc b                                            ; $7bb2: $88
	sub c                                            ; $7bb3: $91
	xor c                                            ; $7bb4: $a9
	ld [$3ab1], a                                    ; $7bb5: $ea $b1 $3a
	and b                                            ; $7bb8: $a0

jr_08b_7bb9:
	cpl                                              ; $7bb9: $2f
	ld d, h                                          ; $7bba: $54
	ld b, c                                          ; $7bbb: $41
	ld a, [hl-]                                      ; $7bbc: $3a
	ldh a, [$3f]                                     ; $7bbd: $f0 $3f
	ld d, e                                          ; $7bbf: $53
	jr c, jr_08b_7bfa                                ; $7bc0: $38 $38

	ld b, d                                          ; $7bc2: $42
	and c                                            ; $7bc3: $a1
	ld e, [hl]                                       ; $7bc4: $5e
	dec sp                                           ; $7bc5: $3b
	xor c                                            ; $7bc6: $a9
	ld d, h                                          ; $7bc7: $54
	add hl, sp                                       ; $7bc8: $39
	jr c, jr_08b_7c04                                ; $7bc9: $38 $39

	ldh a, [$3f]                                     ; $7bcb: $f0 $3f
	xor h                                            ; $7bcd: $ac
	adc e                                            ; $7bce: $8b
	ld e, h                                          ; $7bcf: $5c
	db $ec                                           ; $7bd0: $ec
	ret c                                            ; $7bd1: $d8

	ld b, c                                          ; $7bd2: $41
	ld b, h                                          ; $7bd3: $44
	ld c, b                                          ; $7bd4: $48
	and b                                            ; $7bd5: $a0
	ld d, h                                          ; $7bd6: $54
	add hl, sp                                       ; $7bd7: $39
	jr c, @+$3b                                      ; $7bd8: $38 $39

	ldh a, [$3f]                                     ; $7bda: $f0 $3f
	ld c, e                                          ; $7bdc: $4b
	ldh a, [$64]                                     ; $7bdd: $f0 $64
	jr c, jr_08b_7b8a                                ; $7bdf: $38 $a9

	ld l, a                                          ; $7be1: $6f
	ld c, e                                          ; $7be2: $4b
	xor h                                            ; $7be3: $ac
	adc e                                            ; $7be4: $8b
	ld e, h                                          ; $7be5: $5c
	ld a, [hl-]                                      ; $7be6: $3a
	ld b, c                                          ; $7be7: $41
	ld b, h                                          ; $7be8: $44
	ld e, l                                          ; $7be9: $5d
	ld e, d                                          ; $7bea: $5a
	ld a, [hl-]                                      ; $7beb: $3a
	ld c, b                                          ; $7bec: $48
	and b                                            ; $7bed: $a0
	ld l, a                                          ; $7bee: $6f
	ld c, e                                          ; $7bef: $4b
	xor h                                            ; $7bf0: $ac
	adc e                                            ; $7bf1: $8b
	ld e, h                                          ; $7bf2: $5c
	ld a, [hl-]                                      ; $7bf3: $3a
	ld b, c                                          ; $7bf4: $41
	ld b, h                                          ; $7bf5: $44
	ld e, l                                          ; $7bf6: $5d
	ld e, d                                          ; $7bf7: $5a
	ld a, [hl-]                                      ; $7bf8: $3a
	ld c, b                                          ; $7bf9: $48

jr_08b_7bfa:
	and b                                            ; $7bfa: $a0
	cpl                                              ; $7bfb: $2f
	ldh a, [$3e]                                     ; $7bfc: $f0 $3e
	ldh a, [$0b]                                     ; $7bfe: $f0 $0b
	ld b, h                                          ; $7c00: $44
	ld b, l                                          ; $7c01: $45
	ld c, h                                          ; $7c02: $4c
	add hl, bc                                       ; $7c03: $09

jr_08b_7c04:
	ld b, b                                          ; $7c04: $40
	add hl, sp                                       ; $7c05: $39
	ld [hl], a                                       ; $7c06: $77
	add hl, sp                                       ; $7c07: $39
	ld c, d                                          ; $7c08: $4a
	ld a, $66                                        ; $7c09: $3e $66
	add hl, sp                                       ; $7c0b: $39
	xor b                                            ; $7c0c: $a8
	pop af                                           ; $7c0d: $f1
	adc d                                            ; $7c0e: $8a
	ldh a, [$fb]                                     ; $7c0f: $f0 $fb
	ld a, [hl-]                                      ; $7c11: $3a
	ldh a, [$7a]                                     ; $7c12: $f0 $7a
	ldh a, [rSVBK]                                   ; $7c14: $f0 $70
	ld b, h                                          ; $7c16: $44
	inc a                                            ; $7c17: $3c
	ld d, b                                          ; $7c18: $50
	ld c, b                                          ; $7c19: $48
	and b                                            ; $7c1a: $a0
	pop af                                           ; $7c1b: $f1
	adc d                                            ; $7c1c: $8a
	ldh a, [$fb]                                     ; $7c1d: $f0 $fb
	ld a, [hl-]                                      ; $7c1f: $3a
	ldh a, [$7a]                                     ; $7c20: $f0 $7a
	ldh a, [rSVBK]                                   ; $7c22: $f0 $70
	ld b, h                                          ; $7c24: $44
	inc a                                            ; $7c25: $3c
	ld d, b                                          ; $7c26: $50
	ld c, h                                          ; $7c27: $4c
	and b                                            ; $7c28: $a0
	ld b, h                                          ; $7c29: $44
	inc a                                            ; $7c2a: $3c
	ld d, b                                          ; $7c2b: $50
	xor h                                            ; $7c2c: $ac
	pop af                                           ; $7c2d: $f1
	adc d                                            ; $7c2e: $8a
	ldh a, [$fb]                                     ; $7c2f: $f0 $fb
	ld a, [hl-]                                      ; $7c31: $3a
	ld b, c                                          ; $7c32: $41
	ld b, h                                          ; $7c33: $44
	ld c, c                                          ; $7c34: $49
	ld [hl], a                                       ; $7c35: $77
	add hl, sp                                       ; $7c36: $39
	ld a, [hl-]                                      ; $7c37: $3a
	and b                                            ; $7c38: $a0
	ld d, h                                          ; $7c39: $54
	ld c, l                                          ; $7c3a: $4d
	db $ec                                           ; $7c3b: $ec
	rst AddAOntoHL                                          ; $7c3c: $ef
	xor h                                            ; $7c3d: $ac
	ld [hl], d                                       ; $7c3e: $72
	dec a                                            ; $7c3f: $3d
	ld c, c                                          ; $7c40: $49
	ld [hl], a                                       ; $7c41: $77
	add hl, sp                                       ; $7c42: $39
	ld e, l                                          ; $7c43: $5d
	ld e, d                                          ; $7c44: $5a
	ld c, b                                          ; $7c45: $48
	and b                                            ; $7c46: $a0
	ld d, h                                          ; $7c47: $54
	ld c, l                                          ; $7c48: $4d
	db $ec                                           ; $7c49: $ec
	rst AddAOntoHL                                          ; $7c4a: $ef
	xor h                                            ; $7c4b: $ac
	ld [hl], d                                       ; $7c4c: $72
	dec a                                            ; $7c4d: $3d
	ld b, d                                          ; $7c4e: $42
	ld b, h                                          ; $7c4f: $44
	ld b, l                                          ; $7c50: $45
	and b                                            ; $7c51: $a0
	ld d, h                                          ; $7c52: $54
	ld c, l                                          ; $7c53: $4d
	db $ec                                           ; $7c54: $ec
	rst AddAOntoHL                                          ; $7c55: $ef
	xor h                                            ; $7c56: $ac
	ld [hl], d                                       ; $7c57: $72
	dec a                                            ; $7c58: $3d
	ld c, c                                          ; $7c59: $49
	ld [hl], a                                       ; $7c5a: $77
	xor $1f                                          ; $7c5b: $ee $1f
	ld b, h                                          ; $7c5d: $44
	ld e, l                                          ; $7c5e: $5d
	ld e, d                                          ; $7c5f: $5a
	ld c, b                                          ; $7c60: $48
	and b                                            ; $7c61: $a0
	ld l, h                                          ; $7c62: $6c
	ld b, c                                          ; $7c63: $41
	ld a, [hl-]                                      ; $7c64: $3a
	pop af                                           ; $7c65: $f1
	ld e, b                                          ; $7c66: $58
	inc a                                            ; $7c67: $3c
	ld b, a                                          ; $7c68: $47
	inc de                                           ; $7c69: $13
	ldh a, [$dd]                                     ; $7c6a: $f0 $dd
	ldh a, [$9c]                                     ; $7c6c: $f0 $9c
	ld a, $3f                                        ; $7c6e: $3e $3f
	ld c, [hl]                                       ; $7c70: $4e
	ld c, h                                          ; $7c71: $4c
	and b                                            ; $7c72: $a0
	cpl                                              ; $7c73: $2f
	add sp, -$66                                     ; $7c74: $e8 $9a
	add hl, bc                                       ; $7c76: $09
	call c, Call_08b_40a8                            ; $7c77: $dc $a8 $40
	add hl, sp                                       ; $7c7a: $39
	ld a, $52                                        ; $7c7b: $3e $52
	ld a, $66                                        ; $7c7d: $3e $66
	add hl, sp                                       ; $7c7f: $39
	ld c, b                                          ; $7c80: $48
	and b                                            ; $7c81: $a0
	call c, Call_08b_40a8                            ; $7c82: $dc $a8 $40
	ld c, l                                          ; $7c85: $4d
	ld e, e                                          ; $7c86: $5b
	ld d, [hl]                                       ; $7c87: $56
	inc [hl]                                         ; $7c88: $34
	ldh a, [$bb]                                     ; $7c89: $f0 $bb
	ld [hl], c                                       ; $7c8b: $71
	ld d, d                                          ; $7c8c: $52
	ld a, $66                                        ; $7c8d: $3e $66
	add hl, sp                                       ; $7c8f: $39
	inc a                                            ; $7c90: $3c
	and b                                            ; $7c91: $a0
	call c, $f0a8                                    ; $7c92: $dc $a8 $f0
	cp e                                             ; $7c95: $bb
	ld [hl], c                                       ; $7c96: $71
	ld d, d                                          ; $7c97: $52
	ld a, $66                                        ; $7c98: $3e $66
	add hl, sp                                       ; $7c9a: $39
	and b                                            ; $7c9b: $a0
	cpl                                              ; $7c9c: $2f
	add sp, $58                                      ; $7c9d: $e8 $58
	and d                                            ; $7c9f: $a2
	ld b, b                                          ; $7ca0: $40
	ld b, c                                          ; $7ca1: $41
	ld a, [hl-]                                      ; $7ca2: $3a
	add a                                            ; $7ca3: $87
	ld e, h                                          ; $7ca4: $5c
	ld a, [hl-]                                      ; $7ca5: $3a
	pop af                                           ; $7ca6: $f1
	dec l                                            ; $7ca7: $2d
	xor h                                            ; $7ca8: $ac
	sub h                                            ; $7ca9: $94
	ld a, $61                                        ; $7caa: $3e $61
	ld d, [hl]                                       ; $7cac: $56
	xor $05                                          ; $7cad: $ee $05
	and b                                            ; $7caf: $a0
	db $eb                                           ; $7cb0: $eb
	ld h, a                                          ; $7cb1: $67
	xor h                                            ; $7cb2: $ac
	ld b, b                                          ; $7cb3: $40
	ld b, c                                          ; $7cb4: $41
	ld a, [hl-]                                      ; $7cb5: $3a
	ldh a, [rAUD1LOW]                                ; $7cb6: $f0 $13
	ldh a, [$d4]                                     ; $7cb8: $f0 $d4
	ldh a, [c]                                       ; $7cba: $f2
	inc hl                                           ; $7cbb: $23
	ld b, a                                          ; $7cbc: $47
	inc de                                           ; $7cbd: $13
	add a                                            ; $7cbe: $87
	ld e, h                                          ; $7cbf: $5c
	ld a, [hl-]                                      ; $7cc0: $3a
	pop af                                           ; $7cc1: $f1
	dec l                                            ; $7cc2: $2d
	ld d, e                                          ; $7cc3: $53
	sub h                                            ; $7cc4: $94
	ld a, c                                          ; $7cc5: $79
	ld c, [hl]                                       ; $7cc6: $4e
	ld b, d                                          ; $7cc7: $42
	and c                                            ; $7cc8: $a1
	ld b, b                                          ; $7cc9: $40
	ld b, c                                          ; $7cca: $41
	ld a, [hl-]                                      ; $7ccb: $3a
	add a                                            ; $7ccc: $87
	ld e, h                                          ; $7ccd: $5c
	ld a, [hl-]                                      ; $7cce: $3a
	pop af                                           ; $7ccf: $f1
	dec l                                            ; $7cd0: $2d
	xor h                                            ; $7cd1: $ac
	sub h                                            ; $7cd2: $94
	ld e, b                                          ; $7cd3: $58
	ld a, [hl-]                                      ; $7cd4: $3a
	jr c, jr_08b_7d21                                ; $7cd5: $38 $4a

	ld b, l                                          ; $7cd7: $45
	and b                                            ; $7cd8: $a0
	cpl                                              ; $7cd9: $2f
	jp hl                                            ; $7cda: $e9


	call $f109                                       ; $7cdb: $cd $09 $f1
	ld e, b                                          ; $7cde: $58
	inc a                                            ; $7cdf: $3c
	ld a, [hl-]                                      ; $7ce0: $3a
	ld b, d                                          ; $7ce1: $42
	xor $2d                                          ; $7ce2: $ee $2d
	jr c, jr_08b_7d43                                ; $7ce4: $38 $5d

	ld e, d                                          ; $7ce6: $5a
	xor h                                            ; $7ce7: $ac
	ret                                              ; $7ce8: $c9


	xor h                                            ; $7ce9: $ac
	db $ec                                           ; $7cea: $ec
	sbc b                                            ; $7ceb: $98
	ld a, [hl-]                                      ; $7cec: $3a
	jr c, jr_08b_7d2b                                ; $7ced: $38 $3c

	ld c, a                                          ; $7cef: $4f
	ld c, b                                          ; $7cf0: $48
	and b                                            ; $7cf1: $a0
	ld b, b                                          ; $7cf2: $40
	ld c, l                                          ; $7cf3: $4d
	ld e, e                                          ; $7cf4: $5b
	ld d, [hl]                                       ; $7cf5: $56
	xor h                                            ; $7cf6: $ac
	ld l, a                                          ; $7cf7: $6f
	ldh a, [rSTAT]                                   ; $7cf8: $f0 $41
	ld c, a                                          ; $7cfa: $4f
	pop af                                           ; $7cfb: $f1
	ld e, b                                          ; $7cfc: $58
	inc a                                            ; $7cfd: $3c
	ld b, a                                          ; $7cfe: $47
	ldh a, [$bb]                                     ; $7cff: $f0 $bb
	ld [hl], c                                       ; $7d01: $71
	ld d, d                                          ; $7d02: $52
	ld a, $66                                        ; $7d03: $3e $66
	add hl, sp                                       ; $7d05: $39
	and b                                            ; $7d06: $a0
	db $ec                                           ; $7d07: $ec
	ld c, e                                          ; $7d08: $4b
	ld b, a                                          ; $7d09: $47
	ld c, e                                          ; $7d0a: $4b
	inc de                                           ; $7d0b: $13
	ld c, a                                          ; $7d0c: $4f
	dec sp                                           ; $7d0d: $3b
	ccf                                              ; $7d0e: $3f
	ld d, h                                          ; $7d0f: $54
	jr c, jr_08b_7d5e                                ; $7d10: $38 $4c

	and b                                            ; $7d12: $a0
	adc b                                            ; $7d13: $88
	ld h, d                                          ; $7d14: $62
	ld c, c                                          ; $7d15: $49
	dec sp                                           ; $7d16: $3b
	ccf                                              ; $7d17: $3f
	ld e, h                                          ; $7d18: $5c
	ccf                                              ; $7d19: $3f
	rst SubAFromDE                                          ; $7d1a: $df
	xor b                                            ; $7d1b: $a8
	ld l, e                                          ; $7d1c: $6b
	ld d, e                                          ; $7d1d: $53
	db $ec                                           ; $7d1e: $ec
	ld a, [bc]                                       ; $7d1f: $0a
	and c                                            ; $7d20: $a1

jr_08b_7d21:
	cpl                                              ; $7d21: $2f
	ld b, b                                          ; $7d22: $40
	ld c, l                                          ; $7d23: $4d
	ld e, e                                          ; $7d24: $5b
	ld d, [hl]                                       ; $7d25: $56
	inc [hl]                                         ; $7d26: $34
	ldh a, [c]                                       ; $7d27: $f2
	ld b, c                                          ; $7d28: $41
	ldh a, [c]                                       ; $7d29: $f2
	inc de                                           ; $7d2a: $13

jr_08b_7d2b:
	pop af                                           ; $7d2b: $f1
	ld l, $62                                        ; $7d2c: $2e $62
	ld c, b                                          ; $7d2e: $48
	add hl, bc                                       ; $7d2f: $09
	ldh a, [rTAC]                                    ; $7d30: $f0 $07
	inc a                                            ; $7d32: $3c
	dec sp                                           ; $7d33: $3b
	dec a                                            ; $7d34: $3d
	ld h, e                                          ; $7d35: $63
	xor b                                            ; $7d36: $a8
	pop af                                           ; $7d37: $f1

jr_08b_7d38:
	ld a, [$383e]                                    ; $7d38: $fa $3e $38
	adc b                                            ; $7d3b: $88
	ld h, d                                          ; $7d3c: $62
	ldh a, [$fa]                                     ; $7d3d: $f0 $fa
	ldh a, [$be]                                     ; $7d3f: $f0 $be

jr_08b_7d41:
	ld b, d                                          ; $7d41: $42
	ld c, h                                          ; $7d42: $4c

jr_08b_7d43:
	and b                                            ; $7d43: $a0
	cpl                                              ; $7d44: $2f
	di                                               ; $7d45: $f3
	jr nz, jr_08b_7d38                               ; $7d46: $20 $f0

	ld a, d                                          ; $7d48: $7a

jr_08b_7d49:
	ld d, e                                          ; $7d49: $53
	jr c, jr_08b_7d84                                ; $7d4a: $38 $38

	ld a, [hl-]                                      ; $7d4c: $3a
	add hl, bc                                       ; $7d4d: $09
	di                                               ; $7d4e: $f3
	jr nz, jr_08b_7d41                               ; $7d4f: $20 $f0

	ld a, d                                          ; $7d51: $7a
	ld a, [hl-]                                      ; $7d52: $3a
	ld b, c                                          ; $7d53: $41
	ccf                                              ; $7d54: $3f
	xor h                                            ; $7d55: $ac
	ld b, [hl]                                       ; $7d56: $46
	ld c, [hl]                                       ; $7d57: $4e
	ld h, e                                          ; $7d58: $63
	ld e, l                                          ; $7d59: $5d
	ld a, [hl-]                                      ; $7d5a: $3a
	jr c, jr_08b_7d49                                ; $7d5b: $38 $ec

	ret c                                            ; $7d5d: $d8

jr_08b_7d5e:
	and b                                            ; $7d5e: $a0
	cpl                                              ; $7d5f: $2f
	ld c, c                                          ; $7d60: $49
	ld d, a                                          ; $7d61: $57
	ld b, [hl]                                       ; $7d62: $46
	ld e, [hl]                                       ; $7d63: $5e
	sbc h                                            ; $7d64: $9c
	inc [hl]                                         ; $7d65: $34
	jr c, jr_08b_7da0                                ; $7d66: $38 $38

	ld b, l                                          ; $7d68: $45
	add hl, bc                                       ; $7d69: $09
	db $d3                                           ; $7d6a: $d3
	xor c                                            ; $7d6b: $a9
	pop af                                           ; $7d6c: $f1
	ld b, $f1                                        ; $7d6d: $06 $f1
	ld a, $3e                                        ; $7d6f: $3e $3e
	ld a, [hl-]                                      ; $7d71: $3a
	ld d, l                                          ; $7d72: $55
	ccf                                              ; $7d73: $3f
	ld c, a                                          ; $7d74: $4f
	jr c, jr_08b_7daf                                ; $7d75: $38 $38

	ld b, d                                          ; $7d77: $42
	ld b, a                                          ; $7d78: $47
	and b                                            ; $7d79: $a0
	ld b, b                                          ; $7d7a: $40
	ld c, l                                          ; $7d7b: $4d
	ld e, e                                          ; $7d7c: $5b
	ld d, [hl]                                       ; $7d7d: $56
	inc [hl]                                         ; $7d7e: $34
	ldh a, [rAUD2HIGH]                               ; $7d7f: $f0 $19
	ld b, a                                          ; $7d81: $47
	sub [hl]                                         ; $7d82: $96
	ld c, [hl]                                       ; $7d83: $4e

jr_08b_7d84:
	and c                                            ; $7d84: $a1
	cpl                                              ; $7d85: $2f
	ld b, e                                          ; $7d86: $43
	ld b, b                                          ; $7d87: $40
	add hl, sp                                       ; $7d88: $39
	ld b, h                                          ; $7d89: $44
	ld c, h                                          ; $7d8a: $4c
	xor b                                            ; $7d8b: $a8
	db $eb                                           ; $7d8c: $eb
	ld d, d                                          ; $7d8d: $52
	and b                                            ; $7d8e: $a0
	cpl                                              ; $7d8f: $2f
	add sp, $29                                      ; $7d90: $e8 $29
	add hl, bc                                       ; $7d92: $09
	cpl                                              ; $7d93: $2f
	add sp, $2a                                      ; $7d94: $e8 $2a
	add hl, bc                                       ; $7d96: $09
	ld l, a                                          ; $7d97: $6f
	inc [hl]                                         ; $7d98: $34
	db $eb                                           ; $7d99: $eb
	ld a, e                                          ; $7d9a: $7b
	ld b, a                                          ; $7d9b: $47
	inc de                                           ; $7d9c: $13
	ld b, [hl]                                       ; $7d9d: $46
	ld d, d                                          ; $7d9e: $52
	ld d, a                                          ; $7d9f: $57

jr_08b_7da0:
	ld a, b                                          ; $7da0: $78
	ld a, [hl-]                                      ; $7da1: $3a
	jr c, jr_08b_7de0                                ; $7da2: $38 $3c

	ld d, b                                          ; $7da4: $50
	ld c, b                                          ; $7da5: $48
	and b                                            ; $7da6: $a0
	cpl                                              ; $7da7: $2f
	ldh a, [$5f]                                     ; $7da8: $f0 $5f
	ldh a, [$9b]                                     ; $7daa: $f0 $9b
	ld c, e                                          ; $7dac: $4b
	inc [hl]                                         ; $7dad: $34
	pop hl                                           ; $7dae: $e1

jr_08b_7daf:
	ld c, a                                          ; $7daf: $4f
	ld a, b                                          ; $7db0: $78
	ld c, [hl]                                       ; $7db1: $4e
	ld b, l                                          ; $7db2: $45
	add hl, bc                                       ; $7db3: $09
	rst JumpTable                                          ; $7db4: $c7
	ld a, [hl-]                                      ; $7db5: $3a
	ld b, c                                          ; $7db6: $41
	ld b, h                                          ; $7db7: $44
	xor b                                            ; $7db8: $a8
	ld [$3ab1], a                                    ; $7db9: $ea $b1 $3a
	and b                                            ; $7dbc: $a0
	ret nz                                           ; $7dbd: $c0

	xor b                                            ; $7dbe: $a8
	ldh a, [$ab]                                     ; $7dbf: $f0 $ab
	ld b, d                                          ; $7dc1: $42
	adc h                                            ; $7dc2: $8c
	ld b, d                                          ; $7dc3: $42
	ldh a, [$b2]                                     ; $7dc4: $f0 $b2
	ldh a, [rKEY1]                                   ; $7dc6: $f0 $4d
	ldh a, [$30]                                     ; $7dc8: $f0 $30
	ld b, h                                          ; $7dca: $44
	ld c, c                                          ; $7dcb: $49
	inc de                                           ; $7dcc: $13
	ld a, e                                          ; $7dcd: $7b
	dec sp                                           ; $7dce: $3b
	inc a                                            ; $7dcf: $3c
	ld d, a                                          ; $7dd0: $57
	ld [hl], a                                       ; $7dd1: $77
	dec sp                                           ; $7dd2: $3b
	ccf                                              ; $7dd3: $3f
	dec a                                            ; $7dd4: $3d
	and b                                            ; $7dd5: $a0
	db $d3                                           ; $7dd6: $d3
	xor c                                            ; $7dd7: $a9
	ldh a, [$5f]                                     ; $7dd8: $f0 $5f
	ldh a, [$9b]                                     ; $7dda: $f0 $9b
	ld c, e                                          ; $7ddc: $4b
	pop hl                                           ; $7ddd: $e1
	ld c, a                                          ; $7dde: $4f
	pop af                                           ; $7ddf: $f1

jr_08b_7de0:
	sub d                                            ; $7de0: $92
	jr c, jr_08b_7e24                                ; $7de1: $38 $41

	ld b, h                                          ; $7de3: $44
	and b                                            ; $7de4: $a0
	cpl                                              ; $7de5: $2f
	add sp, -$0d                                     ; $7de6: $e8 $f3
	add hl, bc                                       ; $7de8: $09
	rst JumpTable                                          ; $7de9: $c7
	xor c                                            ; $7dea: $a9

jr_08b_7deb:
	ld b, b                                          ; $7deb: $40
	ld b, c                                          ; $7dec: $41
	ld a, [hl-]                                      ; $7ded: $3a
	pop af                                           ; $7dee: $f1
	ld a, a                                          ; $7def: $7f
	ld b, a                                          ; $7df0: $47
	ld [hl], d                                       ; $7df1: $72
	ld e, [hl]                                       ; $7df2: $5e
	ld c, [hl]                                       ; $7df3: $4e
	ld c, b                                          ; $7df4: $48
	and c                                            ; $7df5: $a1
	ld b, b                                          ; $7df6: $40
	ld b, d                                          ; $7df7: $42
	add d                                            ; $7df8: $82
	jr c, jr_08b_7deb                                ; $7df9: $38 $f0

	jr c, @-$52                                      ; $7dfb: $38 $ac

jr_08b_7dfd:
	ret                                              ; $7dfd: $c9


	ldh a, [rHDMA5]                                  ; $7dfe: $f0 $55
	ldh a, [rBCPS]                                   ; $7e00: $f0 $68
	ld b, h                                          ; $7e02: $44
	ld c, c                                          ; $7e03: $49
	ld [hl], a                                       ; $7e04: $77
	add hl, sp                                       ; $7e05: $39
	ld a, [hl-]                                      ; $7e06: $3a
	and b                                            ; $7e07: $a0
	ld b, b                                          ; $7e08: $40
	ld b, d                                          ; $7e09: $42
	add d                                            ; $7e0a: $82
	jr c, jr_08b_7dfd                                ; $7e0b: $38 $f0

	jr c, @-$52                                      ; $7e0d: $38 $ac

	jp nc, Jump_08b_4513                             ; $7e0f: $d2 $13 $45

	ld d, l                                          ; $7e12: $55
	ld a, [hl-]                                      ; $7e13: $3a
	jr c, jr_08b_7e5f                                ; $7e14: $38 $49

	ld [hl], a                                       ; $7e16: $77
	add hl, sp                                       ; $7e17: $39
	ld a, [hl-]                                      ; $7e18: $3a
	and b                                            ; $7e19: $a0
	cpl                                              ; $7e1a: $2f
	jp hl                                            ; $7e1b: $e9


	ldh [c], a                                       ; $7e1c: $e2
	and c                                            ; $7e1d: $a1
	ld b, b                                          ; $7e1e: $40
	inc [hl]                                         ; $7e1f: $34
	ld b, b                                          ; $7e20: $40
	ld b, c                                          ; $7e21: $41
	ld a, [hl-]                                      ; $7e22: $3a
	sbc d                                            ; $7e23: $9a

jr_08b_7e24:
	xor h                                            ; $7e24: $ac
	ld [hl], a                                       ; $7e25: $77
	dec sp                                           ; $7e26: $3b
	ccf                                              ; $7e27: $3f
	ld c, a                                          ; $7e28: $4f
	jr c, jr_08b_7e65                                ; $7e29: $38 $3a

	jr c, jr_08b_7e90                                ; $7e2b: $38 $63

	and b                                            ; $7e2d: $a0
	ld b, b                                          ; $7e2e: $40
	ld b, c                                          ; $7e2f: $41
	ld a, [hl-]                                      ; $7e30: $3a
	ld d, h                                          ; $7e31: $54
	ld c, c                                          ; $7e32: $49
	ld [hl], a                                       ; $7e33: $77
	dec sp                                           ; $7e34: $3b
	ccf                                              ; $7e35: $3f
	ld c, [hl]                                       ; $7e36: $4e
	inc de                                           ; $7e37: $13
	ld h, e                                          ; $7e38: $63
	ld e, l                                          ; $7e39: $5d
	ldh a, [rAUD1LOW]                                ; $7e3a: $f0 $13
	jr c, jr_08b_7e88                                ; $7e3c: $38 $4a

	ld a, $66                                        ; $7e3e: $3e $66
	add hl, sp                                       ; $7e40: $39
	and b                                            ; $7e41: $a0
	ld b, b                                          ; $7e42: $40
	ld b, c                                          ; $7e43: $41
	ld a, [hl-]                                      ; $7e44: $3a
	sbc d                                            ; $7e45: $9a
	xor h                                            ; $7e46: $ac
	ld [hl], a                                       ; $7e47: $77
	dec sp                                           ; $7e48: $3b
	ccf                                              ; $7e49: $3f
	ld a, [hl-]                                      ; $7e4a: $3a
	jr c, jr_08b_7eb0                                ; $7e4b: $38 $63

	ld b, l                                          ; $7e4d: $45
	and b                                            ; $7e4e: $a0
	ld e, d                                          ; $7e4f: $5a
	ld b, c                                          ; $7e50: $41
	ld a, [hl-]                                      ; $7e51: $3a
	ldh a, [$6d]                                     ; $7e52: $f0 $6d
	ld e, c                                          ; $7e54: $59
	ldh a, [$27]                                     ; $7e55: $f0 $27
	ld d, e                                          ; $7e57: $53
	inc de                                           ; $7e58: $13
	ldh a, [rAUD4ENV]                                ; $7e59: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7e5b: $f0 $23
	jr c, jr_08b_7ea1                                ; $7e5d: $38 $42

jr_08b_7e5f:
	inc a                                            ; $7e5f: $3c
	ld a, [hl-]                                      ; $7e60: $3a
	and c                                            ; $7e61: $a1
	cpl                                              ; $7e62: $2f
	add sp, $34                                      ; $7e63: $e8 $34

jr_08b_7e65:
	add hl, bc                                       ; $7e65: $09
	ld d, h                                          ; $7e66: $54
	add hl, sp                                       ; $7e67: $39
	jr c, jr_08b_7ea3                                ; $7e68: $38 $39

	ldh a, [$6d]                                     ; $7e6a: $f0 $6d
	ld e, c                                          ; $7e6c: $59
	ldh a, [$27]                                     ; $7e6d: $f0 $27

jr_08b_7e6f:
	ld a, [hl-]                                      ; $7e6f: $3a
	ld d, b                                          ; $7e70: $50
	xor h                                            ; $7e71: $ac
	ld l, a                                          ; $7e72: $6f
	ld b, a                                          ; $7e73: $47
	ld c, a                                          ; $7e74: $4f
	sub h                                            ; $7e75: $94
	ld a, b                                          ; $7e76: $78
	ld c, [hl]                                       ; $7e77: $4e
	inc a                                            ; $7e78: $3c

jr_08b_7e79:
	ld a, [hl-]                                      ; $7e79: $3a
	ld c, b                                          ; $7e7a: $48
	and c                                            ; $7e7b: $a1
	ld d, h                                          ; $7e7c: $54
	add hl, sp                                       ; $7e7d: $39
	jr c, jr_08b_7eb9                                ; $7e7e: $38 $39

	ldh a, [$6d]                                     ; $7e80: $f0 $6d
	ld e, c                                          ; $7e82: $59
	ldh a, [$27]                                     ; $7e83: $f0 $27
	ld a, [hl-]                                      ; $7e85: $3a
	ld d, b                                          ; $7e86: $50
	xor h                                            ; $7e87: $ac

jr_08b_7e88:
	ld l, a                                          ; $7e88: $6f
	ld c, a                                          ; $7e89: $4f
	sub h                                            ; $7e8a: $94
	ld a, b                                          ; $7e8b: $78
	call c, Call_08b_54a0                            ; $7e8c: $dc $a0 $54
	ld c, l                                          ; $7e8f: $4d

jr_08b_7e90:
	ld a, [hl-]                                      ; $7e90: $3a
	ld d, b                                          ; $7e91: $50
	inc de                                           ; $7e92: $13
	ld l, a                                          ; $7e93: $6f
	ld b, a                                          ; $7e94: $47
	ld c, a                                          ; $7e95: $4f
	sub h                                            ; $7e96: $94
	ld a, b                                          ; $7e97: $78
	ld b, b                                          ; $7e98: $40
	add hl, sp                                       ; $7e99: $39
	and b                                            ; $7e9a: $a0
	cpl                                              ; $7e9b: $2f
	jp hl                                            ; $7e9c: $e9


	ld b, c                                          ; $7e9d: $41
	add hl, bc                                       ; $7e9e: $09
	ld l, a                                          ; $7e9f: $6f
	inc [hl]                                         ; $7ea0: $34

jr_08b_7ea1:
	ld d, h                                          ; $7ea1: $54
	add hl, sp                                       ; $7ea2: $39

jr_08b_7ea3:
	jr c, jr_08b_7ede                                ; $7ea3: $38 $39

	ld b, d                                          ; $7ea5: $42
	ld c, e                                          ; $7ea6: $4b
	inc de                                           ; $7ea7: $13
	ret                                              ; $7ea8: $c9


	ld c, b                                          ; $7ea9: $48
	and b                                            ; $7eaa: $a0
	ld d, h                                          ; $7eab: $54
	add hl, sp                                       ; $7eac: $39
	jr c, jr_08b_7ee8                                ; $7ead: $38 $39

	ld b, d                                          ; $7eaf: $42

jr_08b_7eb0:
	ld c, e                                          ; $7eb0: $4b
	xor h                                            ; $7eb1: $ac
	ret                                              ; $7eb2: $c9


	inc de                                           ; $7eb3: $13
	pop af                                           ; $7eb4: $f1
	ld b, $f1                                        ; $7eb5: $06 $f1
	ld a, $3e                                        ; $7eb7: $3e $3e

jr_08b_7eb9:
	ccf                                              ; $7eb9: $3f
	ld h, h                                          ; $7eba: $64
	ld d, l                                          ; $7ebb: $55
	ld h, e                                          ; $7ebc: $63
	and b                                            ; $7ebd: $a0
	ld d, h                                          ; $7ebe: $54
	ld c, l                                          ; $7ebf: $4d
	ld c, e                                          ; $7ec0: $4b
	xor h                                            ; $7ec1: $ac
	ld l, a                                          ; $7ec2: $6f
	ld b, a                                          ; $7ec3: $47
	ld c, e                                          ; $7ec4: $4b
	ret                                              ; $7ec5: $c9


	inc de                                           ; $7ec6: $13
	sub h                                            ; $7ec7: $94
	ld a, b                                          ; $7ec8: $78
	ld a, [hl-]                                      ; $7ec9: $3a

jr_08b_7eca:
	jr c, jr_08b_7f38                                ; $7eca: $38 $6c

	dec a                                            ; $7ecc: $3d
	jr c, jr_08b_7e6f                                ; $7ecd: $38 $a0

	cpl                                              ; $7ecf: $2f
	add sp, $55                                      ; $7ed0: $e8 $55
	and c                                            ; $7ed2: $a1
	ldh a, [$8a]                                     ; $7ed3: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7ed5: $f0 $52
	jr c, jr_08b_7eca                                ; $7ed7: $38 $f1

	ld a, b                                          ; $7ed9: $78
	jr c, jr_08b_7e79                                ; $7eda: $38 $9d

	ld c, [hl]                                       ; $7edc: $4e
	ld l, h                                          ; $7edd: $6c

jr_08b_7ede:
	ld d, e                                          ; $7ede: $53
	inc de                                           ; $7edf: $13
	ld b, [hl]                                       ; $7ee0: $46
	ld c, [hl]                                       ; $7ee1: $4e
	ld b, d                                          ; $7ee2: $42
	ld c, h                                          ; $7ee3: $4c
	xor b                                            ; $7ee4: $a8
	ld c, d                                          ; $7ee5: $4a
	ld c, a                                          ; $7ee6: $4f
	inc [hl]                                         ; $7ee7: $34

jr_08b_7ee8:
	pop af                                           ; $7ee8: $f1
	ld a, [$403e]                                    ; $7ee9: $fa $3e $40
	add hl, sp                                       ; $7eec: $39
	ld c, b                                          ; $7eed: $48
	and b                                            ; $7eee: $a0
	ld [$ac6f], a                                    ; $7eef: $ea $6f $ac
	ld d, c                                          ; $7ef2: $51
	ld [hl], b                                       ; $7ef3: $70
	ld d, l                                          ; $7ef4: $55
	pop af                                           ; $7ef5: $f1
	ld a, [$dc3e]                                    ; $7ef6: $fa $3e $dc
	and b                                            ; $7ef9: $a0
	ld [$ac6f], a                                    ; $7efa: $ea $6f $ac
	ld l, a                                          ; $7efd: $6f
	ld b, a                                          ; $7efe: $47
	sub h                                            ; $7eff: $94
	ld a, b                                          ; $7f00: $78
	ld c, [hl]                                       ; $7f01: $4e
	inc a                                            ; $7f02: $3c
	ld a, [hl-]                                      ; $7f03: $3a
	and b                                            ; $7f04: $a0
	ld d, h                                          ; $7f05: $54
	add hl, sp                                       ; $7f06: $39
	jr c, jr_08b_7f42                                ; $7f07: $38 $39

	ldh a, [$6d]                                     ; $7f09: $f0 $6d
	ld e, c                                          ; $7f0b: $59
	ldh a, [$27]                                     ; $7f0c: $f0 $27
	dec sp                                           ; $7f0e: $3b
	ccf                                              ; $7f0f: $3f
	inc de                                           ; $7f10: $13
	ldh a, [$80]                                     ; $7f11: $f0 $80
	ldh a, [$c5]                                     ; $7f13: $f0 $c5
	ldh a, [rAUD4ENV]                                ; $7f15: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7f17: $f0 $23
	jr c, @+$4e                                      ; $7f19: $38 $4c

	and b                                            ; $7f1b: $a0
	cpl                                              ; $7f1c: $2f
	add sp, $1c                                      ; $7f1d: $e8 $1c
	add hl, bc                                       ; $7f1f: $09
	xor $1f                                          ; $7f20: $ee $1f
	inc [hl]                                         ; $7f22: $34
	ld [hl], a                                       ; $7f23: $77
	ld h, e                                          ; $7f24: $63
	sbc h                                            ; $7f25: $9c
	inc de                                           ; $7f26: $13
	pop af                                           ; $7f27: $f1
	push hl                                          ; $7f28: $e5
	ld d, l                                          ; $7f29: $55
	ld a, [hl-]                                      ; $7f2a: $3a
	dec sp                                           ; $7f2b: $3b
	ld h, c                                          ; $7f2c: $61
	ld d, [hl]                                       ; $7f2d: $56
	dec sp                                           ; $7f2e: $3b
	dec a                                            ; $7f2f: $3d
	and b                                            ; $7f30: $a0
	ld [hl], a                                       ; $7f31: $77
	ld h, e                                          ; $7f32: $63
	sbc h                                            ; $7f33: $9c
	inc de                                           ; $7f34: $13
	ldh a, [$be]                                     ; $7f35: $f0 $be
	ld e, h                                          ; $7f37: $5c

jr_08b_7f38:
	ld b, a                                          ; $7f38: $47
	ld a, [hl-]                                      ; $7f39: $3a
	dec sp                                           ; $7f3a: $3b
	ld h, c                                          ; $7f3b: $61
	ld d, [hl]                                       ; $7f3c: $56
	add hl, sp                                       ; $7f3d: $39
	ld c, h                                          ; $7f3e: $4c
	and b                                            ; $7f3f: $a0
	ld l, a                                          ; $7f40: $6f
	dec sp                                           ; $7f41: $3b

jr_08b_7f42:
	ccf                                              ; $7f42: $3f
	inc [hl]                                         ; $7f43: $34
	pop af                                           ; $7f44: $f1
	ld [hl], h                                       ; $7f45: $74
	ldh a, [$7c]                                     ; $7f46: $f0 $7c
	ld h, l                                          ; $7f48: $65
	ldh a, [rBCPD]                                   ; $7f49: $f0 $69
	ldh a, [$03]                                     ; $7f4b: $f0 $03
	ld b, d                                          ; $7f4d: $42
	inc de                                           ; $7f4e: $13
	ldh a, [$57]                                     ; $7f4f: $f0 $57
	pop af                                           ; $7f51: $f1
	call z, $4e46                                    ; $7f52: $cc $46 $4e
	ld b, d                                          ; $7f55: $42
	inc a                                            ; $7f56: $3c
	ld a, [hl-]                                      ; $7f57: $3a
	and c                                            ; $7f58: $a1
	cpl                                              ; $7f59: $2f
	add sp, $6b                                      ; $7f5a: $e8 $6b
	and c                                            ; $7f5c: $a1
	ld b, b                                          ; $7f5d: $40
	inc [hl]                                         ; $7f5e: $34
	ld b, b                                          ; $7f5f: $40
	ld b, c                                          ; $7f60: $41
	ld a, [hl-]                                      ; $7f61: $3a
	sbc d                                            ; $7f62: $9a
	inc de                                           ; $7f63: $13
	ldh a, [rAUD1LOW]                                ; $7f64: $f0 $13
	jr c, jr_08b_7fb1                                ; $7f66: $38 $49

	ld [hl], a                                       ; $7f68: $77
	add hl, sp                                       ; $7f69: $39
	ld e, l                                          ; $7f6a: $5d
	ld e, d                                          ; $7f6b: $5a
	ld c, b                                          ; $7f6c: $48
	and b                                            ; $7f6d: $a0
	ld b, b                                          ; $7f6e: $40
	ld b, c                                          ; $7f6f: $41
	ld a, [hl-]                                      ; $7f70: $3a
	ld b, c                                          ; $7f71: $41
	db $ec                                           ; $7f72: $ec
	ret c                                            ; $7f73: $d8

	ld h, e                                          ; $7f74: $63
	ld b, l                                          ; $7f75: $45
	and b                                            ; $7f76: $a0
	ldh a, [$f5]                                     ; $7f77: $f0 $f5
	add hl, sp                                       ; $7f79: $39
	ld c, c                                          ; $7f7a: $49
	ld [hl], a                                       ; $7f7b: $77
	add hl, sp                                       ; $7f7c: $39
	ld e, l                                          ; $7f7d: $5d
	ld e, d                                          ; $7f7e: $5a
	ld a, [hl-]                                      ; $7f7f: $3a
	and b                                            ; $7f80: $a0

jr_08b_7f81:
	cpl                                              ; $7f81: $2f
	add sp, $41                                      ; $7f82: $e8 $41
	add hl, bc                                       ; $7f84: $09
	ldh a, [$5a]                                     ; $7f85: $f0 $5a
	ld e, c                                          ; $7f87: $59
	dec sp                                           ; $7f88: $3b
	inc [hl]                                         ; $7f89: $34
	ret nz                                           ; $7f8a: $c0

	and b                                            ; $7f8b: $a0
	db $d3                                           ; $7f8c: $d3
	xor h                                            ; $7f8d: $ac
	add a                                            ; $7f8e: $87
	add h                                            ; $7f8f: $84
	dec sp                                           ; $7f90: $3b
	pop af                                           ; $7f91: $f1
	rla                                              ; $7f92: $17
	jr c, jr_08b_7f81                                ; $7f93: $38 $ec

	cp $62                                           ; $7f95: $fe $62
	inc de                                           ; $7f97: $13
	sub b                                            ; $7f98: $90
	ld a, $41                                        ; $7f99: $3e $41
	ld c, d                                          ; $7f9b: $4a
	ld c, [hl]                                       ; $7f9c: $4e
	ld b, d                                          ; $7f9d: $42
	inc a                                            ; $7f9e: $3c
	ld a, [hl-]                                      ; $7f9f: $3a
	and b                                            ; $7fa0: $a0
	ret nz                                           ; $7fa1: $c0

	xor b                                            ; $7fa2: $a8
	ld [$3ab1], a                                    ; $7fa3: $ea $b1 $3a
	and b                                            ; $7fa6: $a0
	ld h, e                                          ; $7fa7: $63
	inc [hl]                                         ; $7fa8: $34
	adc $f0                                          ; $7fa9: $ce $f0
	ld de, $657d                                     ; $7fab: $11 $7d $65
	ld d, e                                          ; $7fae: $53
	inc de                                           ; $7faf: $13
	sub h                                            ; $7fb0: $94

jr_08b_7fb1:
	ccf                                              ; $7fb1: $3f
	ld e, h                                          ; $7fb2: $5c
	dec a                                            ; $7fb3: $3d
	ld b, l                                          ; $7fb4: $45
	xor b                                            ; $7fb5: $a8
	db $eb                                           ; $7fb6: $eb
	ld e, c                                          ; $7fb7: $59
	and b                                            ; $7fb8: $a0
	cpl                                              ; $7fb9: $2f
	add sp, -$4b                                     ; $7fba: $e8 $b5
	and c                                            ; $7fbc: $a1
	ld e, [hl]                                       ; $7fbd: $5e
	dec sp                                           ; $7fbe: $3b
	xor c                                            ; $7fbf: $a9
	ldh a, [$31]                                     ; $7fc0: $f0 $31
	ld c, e                                          ; $7fc2: $4b
	db $ec                                           ; $7fc3: $ec
	db $d3                                           ; $7fc4: $d3
	sub h                                            ; $7fc5: $94
	dec a                                            ; $7fc6: $3d
	ld b, d                                          ; $7fc7: $42
	inc a                                            ; $7fc8: $3c
	inc de                                           ; $7fc9: $13
	ld a, [hl]                                       ; $7fca: $7e
	ld d, l                                          ; $7fcb: $55
	ldh a, [rTAC]                                    ; $7fcc: $f0 $07
	inc a                                            ; $7fce: $3c
	ld d, b                                          ; $7fcf: $50
	ld a, [hl-]                                      ; $7fd0: $3a
	jr c, @+$44                                      ; $7fd1: $38 $42

	and b                                            ; $7fd3: $a0
	ldh a, [c]                                       ; $7fd4: $f2
	and [hl]                                         ; $7fd5: $a6
	ldh a, [$59]                                     ; $7fd6: $f0 $59
	ld b, l                                          ; $7fd8: $45
	xor b                                            ; $7fd9: $a8
	db $ec                                           ; $7fda: $ec
	db $d3                                           ; $7fdb: $d3
	sub h                                            ; $7fdc: $94
	dec a                                            ; $7fdd: $3d
	ld b, d                                          ; $7fde: $42
	inc a                                            ; $7fdf: $3c
	ld c, a                                          ; $7fe0: $4f
	inc de                                           ; $7fe1: $13
	ldh a, [rTAC]                                    ; $7fe2: $f0 $07
	inc a                                            ; $7fe4: $3c
	ld d, b                                          ; $7fe5: $50
	ld a, [hl-]                                      ; $7fe6: $3a
	jr c, @+$40                                      ; $7fe7: $38 $3e

	ld c, b                                          ; $7fe9: $48
	and b                                            ; $7fea: $a0
	db $ec                                           ; $7feb: $ec
	db $d3                                           ; $7fec: $d3
	xor h                                            ; $7fed: $ac
	ld d, h                                          ; $7fee: $54
	ld b, c                                          ; $7fef: $41
	ld a, [hl-]                                      ; $7ff0: $3a
	ld b, a                                          ; $7ff1: $47
	sub h                                            ; $7ff2: $94
	ld c, [hl]                                       ; $7ff3: $4e
	ld b, d                                          ; $7ff4: $42
	inc a                                            ; $7ff5: $3c
	ld a, $50                                        ; $7ff6: $3e $50
	and c                                            ; $7ff8: $a1
	cpl                                              ; $7ff9: $2f
	jp hl                                            ; $7ffa: $e9


	ld bc, $eaa1                                     ; $7ffb: $01 $a1 $ea
	xor a                                            ; $7ffe: $af
	xor c                                            ; $7fff: $a9
