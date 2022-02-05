; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $094", ROMX[$4000], BANK[$94]

	inc [hl]                                         ; $4000: $34
	pop af                                           ; $4001: $f1
	ld d, d                                          ; $4002: $52
	db $db                                           ; $4003: $db
	ld a, [hl-]                                      ; $4004: $3a
	jr c, jr_094_4056                                ; $4005: $38 $4f

	ld b, d                                          ; $4007: $42
	inc de                                           ; $4008: $13
	ld [hl], d                                       ; $4009: $72
	ld c, [hl]                                       ; $400a: $4e
	ld b, d                                          ; $400b: $42
	ld a, [hl-]                                      ; $400c: $3a
	ld b, c                                          ; $400d: $41
	ccf                                              ; $400e: $3f
	xor h                                            ; $400f: $ac
	ld c, a                                          ; $4010: $4f
	add hl, sp                                       ; $4011: $39
	ld b, h                                          ; $4012: $44
	ld e, b                                          ; $4013: $58
	ld b, h                                          ; $4014: $44
	ld e, b                                          ; $4015: $58
	and b                                            ; $4016: $a0
	cpl                                              ; $4017: $2f
	ld b, e                                          ; $4018: $43
	rst JumpTable                                          ; $4019: $c7
	xor c                                            ; $401a: $a9
	ldh a, [$3f]                                     ; $401b: $f0 $3f
	ld c, e                                          ; $401d: $4b
	ldh a, [rVBK]                                    ; $401e: $f0 $4f
	ld h, d                                          ; $4020: $62
	inc de                                           ; $4021: $13
	ldh a, [c]                                       ; $4022: $f2
	or c                                             ; $4023: $b1
	inc a                                            ; $4024: $3c
	ld b, a                                          ; $4025: $47
	ld d, c                                          ; $4026: $51
	ld c, [hl]                                       ; $4027: $4e
	ld b, c                                          ; $4028: $41
	ld b, h                                          ; $4029: $44
	ld b, l                                          ; $402a: $45
	and b                                            ; $402b: $a0
	ld [$a82e], a                                    ; $402c: $ea $2e $a8
	xor $2b                                          ; $402f: $ee $2b
	ld [$a05d], a                                    ; $4031: $ea $5d $a0
	ld l, d                                          ; $4034: $6a
	ld b, d                                          ; $4035: $42
	inc [hl]                                         ; $4036: $34
	ldh a, [$ed]                                     ; $4037: $f0 $ed
	dec sp                                           ; $4039: $3b
	ccf                                              ; $403a: $3f
	inc de                                           ; $403b: $13
	db $eb                                           ; $403c: $eb
	ld l, a                                          ; $403d: $6f
	ld b, h                                          ; $403e: $44
	ld a, $66                                        ; $403f: $3e $66
	and c                                            ; $4041: $a1
	cpl                                              ; $4042: $2f
	ld b, e                                          ; $4043: $43
	ld b, b                                          ; $4044: $40
	add hl, sp                                       ; $4045: $39
	inc [hl]                                         ; $4046: $34
	ld b, l                                          ; $4047: $45
	ld d, l                                          ; $4048: $55
	ldh a, [$2d]                                     ; $4049: $f0 $2d
	dec sp                                           ; $404b: $3b
	ccf                                              ; $404c: $3f
	ld c, [hl]                                       ; $404d: $4e
	ld c, h                                          ; $404e: $4c
	and b                                            ; $404f: $a0
	ld h, e                                          ; $4050: $63
	ld d, a                                          ; $4051: $57
	ld c, c                                          ; $4052: $49
	adc e                                            ; $4053: $8b
	ld e, h                                          ; $4054: $5c
	inc de                                           ; $4055: $13

jr_094_4056:
	ld b, h                                          ; $4056: $44
	dec sp                                           ; $4057: $3b
	dec a                                            ; $4058: $3d
	dec sp                                           ; $4059: $3b
	ccf                                              ; $405a: $3f
	jr c, jr_094_4096                                ; $405b: $38 $39

	inc a                                            ; $405d: $3c
	ld c, b                                          ; $405e: $48
	and b                                            ; $405f: $a0
	cpl                                              ; $4060: $2f
	ld b, e                                          ; $4061: $43
	ret nz                                           ; $4062: $c0

	xor b                                            ; $4063: $a8
	ldh a, [c]                                       ; $4064: $f2
	ld a, [$383e]                                    ; $4065: $fa $3e $38
	ld c, h                                          ; $4068: $4c
	and b                                            ; $4069: $a0
	ld d, d                                          ; $406a: $52
	ld b, h                                          ; $406b: $44
	xor h                                            ; $406c: $ac
	ld e, d                                          ; $406d: $5a
	ld d, h                                          ; $406e: $54
	inc a                                            ; $406f: $3c
	ld h, a                                          ; $4070: $67
	ld d, l                                          ; $4071: $55
	ld c, d                                          ; $4072: $4a
	ld a, $66                                        ; $4073: $3e $66
	and c                                            ; $4075: $a1
	ld l, d                                          ; $4076: $6a
	ld b, d                                          ; $4077: $42
	ldh a, [$ed]                                     ; $4078: $f0 $ed
	xor h                                            ; $407a: $ac
	db $eb                                           ; $407b: $eb
	ld l, a                                          ; $407c: $6f
	ld b, h                                          ; $407d: $44
	ld b, l                                          ; $407e: $45
	ld c, h                                          ; $407f: $4c
	and b                                            ; $4080: $a0
	cpl                                              ; $4081: $2f
	ld b, e                                          ; $4082: $43
	ldh a, [$5a]                                     ; $4083: $f0 $5a
	add l                                            ; $4085: $85
	inc [hl]                                         ; $4086: $34
	ldh a, [$2d]                                     ; $4087: $f0 $2d
	dec sp                                           ; $4089: $3b
	ccf                                              ; $408a: $3f
	ld c, [hl]                                       ; $408b: $4e
	ld b, c                                          ; $408c: $41
	ld b, h                                          ; $408d: $44
	and b                                            ; $408e: $a0
	ld b, b                                          ; $408f: $40
	ld d, a                                          ; $4090: $57
	ld d, [hl]                                       ; $4091: $56
	sub c                                            ; $4092: $91
	ldh a, [$59]                                     ; $4093: $f0 $59
	ld b, l                                          ; $4095: $45

jr_094_4096:
	xor b                                            ; $4096: $a8
	ld l, a                                          ; $4097: $6f
	ld d, h                                          ; $4098: $54
	ld b, d                                          ; $4099: $42
	ldh a, [$6d]                                     ; $409a: $f0 $6d
	ld e, c                                          ; $409c: $59
	ldh a, [$27]                                     ; $409d: $f0 $27
	xor h                                            ; $409f: $ac
	pop af                                           ; $40a0: $f1
	ld d, d                                          ; $40a1: $52
	adc e                                            ; $40a2: $8b
	ld e, h                                          ; $40a3: $5c
	ld b, h                                          ; $40a4: $44
	dec sp                                           ; $40a5: $3b
	dec a                                            ; $40a6: $3d
	ld b, c                                          ; $40a7: $41
	ld b, h                                          ; $40a8: $44
	inc a                                            ; $40a9: $3c
	ld d, b                                          ; $40aa: $50
	and b                                            ; $40ab: $a0
	cpl                                              ; $40ac: $2f
	ld b, e                                          ; $40ad: $43
	ldh a, [c]                                       ; $40ae: $f2
	ld a, [$383e]                                    ; $40af: $fa $3e $38
	pop af                                           ; $40b2: $f1
	ld b, [hl]                                       ; $40b3: $46
	ld b, h                                          ; $40b4: $44
	ld c, h                                          ; $40b5: $4c
	ld c, b                                          ; $40b6: $48
	and b                                            ; $40b7: $a0
	ld b, b                                          ; $40b8: $40
	ld c, l                                          ; $40b9: $4d
	ld e, e                                          ; $40ba: $5b
	ld d, [hl]                                       ; $40bb: $56
	xor h                                            ; $40bc: $ac
	ldh a, [$d6]                                     ; $40bd: $f0 $d6
	ld e, d                                          ; $40bf: $5a
	ld d, h                                          ; $40c0: $54
	db $ec                                           ; $40c1: $ec
	rlca                                             ; $40c2: $07
	and c                                            ; $40c3: $a1
	ldh a, [$2b]                                     ; $40c4: $f0 $2b
	ldh a, [rWX]                                     ; $40c6: $f0 $4b
	ld e, c                                          ; $40c8: $59
	db $ec                                           ; $40c9: $ec
	rla                                              ; $40ca: $17
	xor b                                            ; $40cb: $a8
	ld l, a                                          ; $40cc: $6f
	inc [hl]                                         ; $40cd: $34
	jp hl                                            ; $40ce: $e9


	adc $a0                                          ; $40cf: $ce $a0
	cpl                                              ; $40d1: $2f
	ld b, e                                          ; $40d2: $43
	ld d, h                                          ; $40d3: $54
	ld b, d                                          ; $40d4: $42
	ldh a, [$ed]                                     ; $40d5: $f0 $ed
	ldh a, [$2d]                                     ; $40d7: $f0 $2d
	dec sp                                           ; $40d9: $3b
	ccf                                              ; $40da: $3f
	ld c, [hl]                                       ; $40db: $4e
	ld b, c                                          ; $40dc: $41
	ld b, h                                          ; $40dd: $44
	and c                                            ; $40de: $a1
	ldh a, [$2d]                                     ; $40df: $f0 $2d
	dec sp                                           ; $40e1: $3b
	ccf                                              ; $40e2: $3f
	ld c, [hl]                                       ; $40e3: $4e

jr_094_40e4:
	ld b, l                                          ; $40e4: $45
	xor b                                            ; $40e5: $a8
	db $eb                                           ; $40e6: $eb
	ld l, a                                          ; $40e7: $6f
	ld b, h                                          ; $40e8: $44
	ld a, $66                                        ; $40e9: $3e $66
	and b                                            ; $40eb: $a0
	cpl                                              ; $40ec: $2f
	ld b, e                                          ; $40ed: $43
	pop af                                           ; $40ee: $f1
	db $fc                                           ; $40ef: $fc
	ldh a, [rOCPS]                                   ; $40f0: $f0 $6a
	db $ec                                           ; $40f2: $ec
	dec b                                            ; $40f3: $05
	dec sp                                           ; $40f4: $3b
	ccf                                              ; $40f5: $3f
	ld c, b                                          ; $40f6: $48
	and b                                            ; $40f7: $a0
	ld c, h                                          ; $40f8: $4c
	inc [hl]                                         ; $40f9: $34
	ldh a, [$d6]                                     ; $40fa: $f0 $d6
	ld c, e                                          ; $40fc: $4b
	ld e, d                                          ; $40fd: $5a
	ld d, h                                          ; $40fe: $54
	ld h, a                                          ; $40ff: $67
	ld d, l                                          ; $4100: $55
	and c                                            ; $4101: $a1
	ld d, h                                          ; $4102: $54
	add hl, sp                                       ; $4103: $39
	jr c, jr_094_413f                                ; $4104: $38 $39

	ldh a, [$78]                                     ; $4106: $f0 $78
	ld e, e                                          ; $4108: $5b
	ld b, d                                          ; $4109: $42
	ldh a, [$ed]                                     ; $410a: $f0 $ed
	ld c, e                                          ; $410c: $4b
	xor h                                            ; $410d: $ac
	xor $05                                          ; $410e: $ee $05
	dec sp                                           ; $4110: $3b
	ccf                                              ; $4111: $3f

jr_094_4112:
	jr c, jr_094_414d                                ; $4112: $38 $39

	inc a                                            ; $4114: $3c
	xor h                                            ; $4115: $ac
	ret                                              ; $4116: $c9


	ld c, h                                          ; $4117: $4c
	ld c, b                                          ; $4118: $48
	and b                                            ; $4119: $a0
	cpl                                              ; $411a: $2f
	ld b, e                                          ; $411b: $43
	ld b, b                                          ; $411c: $40
	add hl, sp                                       ; $411d: $39
	ld [hl], $38                                     ; $411e: $36 $38
	jr c, jr_094_4112                                ; $4120: $38 $f0

	db $ed                                           ; $4122: $ed
	ld b, h                                          ; $4123: $44
	ld c, c                                          ; $4124: $49
	inc de                                           ; $4125: $13
	ld [hl], a                                       ; $4126: $77
	xor $1f                                          ; $4127: $ee $1f
	ld b, h                                          ; $4129: $44
	ld e, l                                          ; $412a: $5d
	ld e, d                                          ; $412b: $5a
	ld a, [hl-]                                      ; $412c: $3a
	ld [hl], h                                       ; $412d: $74
	and b                                            ; $412e: $a0
	ld b, b                                          ; $412f: $40
	ld b, c                                          ; $4130: $41
	ld a, [hl-]                                      ; $4131: $3a
	sbc d                                            ; $4132: $9a
	ld b, l                                          ; $4133: $45
	ld d, a                                          ; $4134: $57
	ld c, a                                          ; $4135: $4f
	ld e, b                                          ; $4136: $58
	xor h                                            ; $4137: $ac
	pop af                                           ; $4138: $f1
	ld l, a                                          ; $4139: $6f
	ld b, d                                          ; $413a: $42
	ldh a, [$28]                                     ; $413b: $f0 $28
	ld b, a                                          ; $413d: $47
	ld h, a                                          ; $413e: $67

jr_094_413f:
	inc a                                            ; $413f: $3c
	ld a, [hl-]                                      ; $4140: $3a
	jr c, jr_094_40e4                                ; $4141: $38 $a1

	pop af                                           ; $4143: $f1
	ld d, d                                          ; $4144: $52
	ld c, e                                          ; $4145: $4b
	ld d, d                                          ; $4146: $52
	ld d, a                                          ; $4147: $57
	ldh a, [c]                                       ; $4148: $f2
	db $eb                                           ; $4149: $eb
	xor b                                            ; $414a: $a8
	ldh a, [$3c]                                     ; $414b: $f0 $3c

jr_094_414d:
	push af                                          ; $414d: $f5
	ld [$3f55], a                                    ; $414e: $ea $55 $3f
	inc [hl]                                         ; $4151: $34
	ld c, a                                          ; $4152: $4f
	add hl, sp                                       ; $4153: $39
	pop af                                           ; $4154: $f1
	ld h, [hl]                                       ; $4155: $66
	inc a                                            ; $4156: $3c
	ld a, [hl-]                                      ; $4157: $3a
	ld d, l                                          ; $4158: $55
	ccf                                              ; $4159: $3f
	inc de                                           ; $415a: $13
	jr c, jr_094_4195                                ; $415b: $38 $38

	dec sp                                           ; $415d: $3b
	ccf                                              ; $415e: $3f
	ldh a, [$78]                                     ; $415f: $f0 $78
	ld e, e                                          ; $4161: $5b
	and b                                            ; $4162: $a0
	db $db                                           ; $4163: $db
	ld a, [hl-]                                      ; $4164: $3a
	jr c, jr_094_41a2                                ; $4165: $38 $3b

	ccf                                              ; $4167: $3f
	jr c, jr_094_41a3                                ; $4168: $38 $39

	inc a                                            ; $416a: $3c
	xor h                                            ; $416b: $ac
	ld l, e                                          ; $416c: $6b
	inc a                                            ; $416d: $3c
	ldh a, [$f5]                                     ; $416e: $f0 $f5
	add hl, sp                                       ; $4170: $39
	ld a, [hl-]                                      ; $4171: $3a
	dec sp                                           ; $4172: $3b
	ccf                                              ; $4173: $3f
	ldh a, [$78]                                     ; $4174: $f0 $78
	ld e, e                                          ; $4176: $5b
	xor b                                            ; $4177: $a8
	ldh a, [rAUD4ENV]                                ; $4178: $f0 $21
	ldh a, [rAUD4GO]                                 ; $417a: $f0 $23
	ld d, l                                          ; $417c: $55
	ld a, [hl-]                                      ; $417d: $3a
	jr c, jr_094_41c5                                ; $417e: $38 $45

	ld c, h                                          ; $4180: $4c
	and b                                            ; $4181: $a0
	ld b, b                                          ; $4182: $40
	ld b, c                                          ; $4183: $41
	ld a, [hl-]                                      ; $4184: $3a
	sbc d                                            ; $4185: $9a
	ld b, l                                          ; $4186: $45
	ld d, a                                          ; $4187: $57
	ld c, a                                          ; $4188: $4f
	xor h                                            ; $4189: $ac
	pop af                                           ; $418a: $f1
	ld l, a                                          ; $418b: $6f
	ld b, d                                          ; $418c: $42
	ldh a, [$28]                                     ; $418d: $f0 $28
	ld b, a                                          ; $418f: $47
	call Call_094_6aa1                               ; $4190: $cd $a1 $6a
	ld b, d                                          ; $4193: $42
	pop af                                           ; $4194: $f1

jr_094_4195:
	ld d, d                                          ; $4195: $52
	ldh a, [c]                                       ; $4196: $f2
	ld bc, $3d5e                                     ; $4197: $01 $5e $3d
	ld c, h                                          ; $419a: $4c
	xor b                                            ; $419b: $a8
	xor $06                                          ; $419c: $ee $06
	ld b, a                                          ; $419e: $47
	ld a, b                                          ; $419f: $78
	ld c, l                                          ; $41a0: $4d
	ccf                                              ; $41a1: $3f

jr_094_41a2:
	inc de                                           ; $41a2: $13

jr_094_41a3:
	db $ec                                           ; $41a3: $ec
	cp c                                             ; $41a4: $b9
	dec sp                                           ; $41a5: $3b

jr_094_41a6:
	ccf                                              ; $41a6: $3f
	ldh a, [$78]                                     ; $41a7: $f0 $78
	ld e, e                                          ; $41a9: $5b
	and b                                            ; $41aa: $a0
	cpl                                              ; $41ab: $2f
	ld b, e                                          ; $41ac: $43
	adc b                                            ; $41ad: $88
	sub c                                            ; $41ae: $91
	xor h                                            ; $41af: $ac
	ldh a, [rAUD4ENV]                                ; $41b0: $f0 $21
	ldh a, [rAUD4GO]                                 ; $41b2: $f0 $23
	jr c, jr_094_41a6                                ; $41b4: $38 $f0

	db $ed                                           ; $41b6: $ed
	ld b, h                                          ; $41b7: $44
	dec sp                                           ; $41b8: $3b
	dec a                                            ; $41b9: $3d
	ld c, h                                          ; $41ba: $4c
	add hl, bc                                       ; $41bb: $09
	ld d, d                                          ; $41bc: $52
	ld b, h                                          ; $41bd: $44
	xor h                                            ; $41be: $ac
	ld l, e                                          ; $41bf: $6b
	db $f4                                           ; $41c0: $f4
	dec h                                            ; $41c1: $25
	inc a                                            ; $41c2: $3c
	ld h, a                                          ; $41c3: $67
	ld d, l                                          ; $41c4: $55

jr_094_41c5:
	ld c, d                                          ; $41c5: $4a
	ld a, $66                                        ; $41c6: $3e $66
	and c                                            ; $41c8: $a1
	ld l, d                                          ; $41c9: $6a
	ld b, d                                          ; $41ca: $42
	ldh a, [$ed]                                     ; $41cb: $f0 $ed
	xor h                                            ; $41cd: $ac
	pop af                                           ; $41ce: $f1
	ld d, d                                          ; $41cf: $52
	ldh a, [c]                                       ; $41d0: $f2
	ld bc, $3d5e                                     ; $41d1: $01 $5e $3d
	ld c, h                                          ; $41d4: $4c
	xor b                                            ; $41d5: $a8
	ld l, e                                          ; $41d6: $6b
	inc a                                            ; $41d7: $3c
	pop af                                           ; $41d8: $f1
	ld l, e                                          ; $41d9: $6b
	ld a, $3d                                        ; $41da: $3e $3d
	dec sp                                           ; $41dc: $3b
	ccf                                              ; $41dd: $3f
	ldh a, [$78]                                     ; $41de: $f0 $78
	ld e, e                                          ; $41e0: $5b
	and b                                            ; $41e1: $a0
	cpl                                              ; $41e2: $2f
	ld b, e                                          ; $41e3: $43
	adc b                                            ; $41e4: $88
	sub c                                            ; $41e5: $91
	xor h                                            ; $41e6: $ac
	ldh a, [$5d]                                     ; $41e7: $f0 $5d
	ld a, [hl-]                                      ; $41e9: $3a
	ldh a, [$ed]                                     ; $41ea: $f0 $ed
	ld b, h                                          ; $41ec: $44
	dec sp                                           ; $41ed: $3b
	dec a                                            ; $41ee: $3d
	ld c, h                                          ; $41ef: $4c
	and b                                            ; $41f0: $a0
	ldh a, [$5f]                                     ; $41f1: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $41f3: $f0 $94
	ld b, d                                          ; $41f5: $42
	ld c, c                                          ; $41f6: $49
	ld d, h                                          ; $41f7: $54
	pop af                                           ; $41f8: $f1
	ld h, [hl]                                       ; $41f9: $66
	jr c, jr_094_4239                                ; $41fa: $38 $3d

	ld c, c                                          ; $41fc: $49
	ld e, h                                          ; $41fd: $5c
	inc de                                           ; $41fe: $13
	ld c, e                                          ; $41ff: $4b
	ld d, d                                          ; $4200: $52
	dec sp                                           ; $4201: $3b
	dec a                                            ; $4202: $3d
	dec sp                                           ; $4203: $3b
	ccf                                              ; $4204: $3f
	inc de                                           ; $4205: $13
	ld [hl], a                                       ; $4206: $77
	dec sp                                           ; $4207: $3b
	ld h, c                                          ; $4208: $61
	ld d, [hl]                                       ; $4209: $56
	dec sp                                           ; $420a: $3b
	dec a                                            ; $420b: $3d
	ld e, l                                          ; $420c: $5d
	ld e, d                                          ; $420d: $5a
	ld c, h                                          ; $420e: $4c
	and b                                            ; $420f: $a0
	cpl                                              ; $4210: $2f
	ld b, e                                          ; $4211: $43
	ldh a, [$5f]                                     ; $4212: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $4214: $f0 $94
	ld c, c                                          ; $4216: $49
	ld b, d                                          ; $4217: $42
	pop af                                           ; $4218: $f1
	ld [hl], h                                       ; $4219: $74
	ldh a, [$7c]                                     ; $421a: $f0 $7c
	ld [hl], e                                       ; $421c: $73
	add c                                            ; $421d: $81
	ld d, e                                          ; $421e: $53
	inc de                                           ; $421f: $13
	jr c, @+$3a                                      ; $4220: $38 $38

	ldh a, [hDisp1_WY]                                     ; $4222: $f0 $95
	ld b, h                                          ; $4224: $44
	ld a, $3f                                        ; $4225: $3e $3f
	dec a                                            ; $4227: $3d
	ld b, l                                          ; $4228: $45
	ld c, h                                          ; $4229: $4c
	and b                                            ; $422a: $a0
	ld b, b                                          ; $422b: $40
	ld c, l                                          ; $422c: $4d
	ld e, e                                          ; $422d: $5b
	ld d, [hl]                                       ; $422e: $56
	xor h                                            ; $422f: $ac
	ldh a, [$d6]                                     ; $4230: $f0 $d6
	inc [hl]                                         ; $4232: $34
	ld l, e                                          ; $4233: $6b
	db $f4                                           ; $4234: $f4
	dec h                                            ; $4235: $25
	db $ec                                           ; $4236: $ec
	rlca                                             ; $4237: $07
	and c                                            ; $4238: $a1

jr_094_4239:
	pop af                                           ; $4239: $f1
	ld d, d                                          ; $423a: $52
	db $ec                                           ; $423b: $ec
	cp c                                             ; $423c: $b9
	xor b                                            ; $423d: $a8
	pop af                                           ; $423e: $f1
	ld l, e                                          ; $423f: $6b
	ld a, $3d                                        ; $4240: $3e $3d
	inc a                                            ; $4242: $3c
	ld a, [hl-]                                      ; $4243: $3a
	dec sp                                           ; $4244: $3b
	ccf                                              ; $4245: $3f
	jr c, jr_094_4281                                ; $4246: $38 $39

	inc a                                            ; $4248: $3c
	xor h                                            ; $4249: $ac
	ld a, b                                          ; $424a: $78
	ccf                                              ; $424b: $3f
	db $ec                                           ; $424c: $ec
	cp c                                             ; $424d: $b9
	dec sp                                           ; $424e: $3b

jr_094_424f:
	ccf                                              ; $424f: $3f
	ldh a, [$78]                                     ; $4250: $f0 $78
	ld e, e                                          ; $4252: $5b
	and b                                            ; $4253: $a0
	cpl                                              ; $4254: $2f
	ld b, e                                          ; $4255: $43
	adc b                                            ; $4256: $88
	sub c                                            ; $4257: $91
	xor h                                            ; $4258: $ac
	ldh a, [rAUD4ENV]                                ; $4259: $f0 $21
	ldh a, [rAUD4GO]                                 ; $425b: $f0 $23
	jr c, jr_094_424f                                ; $425d: $38 $f0

	db $ed                                           ; $425f: $ed
	ld b, h                                          ; $4260: $44
	dec sp                                           ; $4261: $3b
	dec a                                            ; $4262: $3d
	ld c, h                                          ; $4263: $4c
	and b                                            ; $4264: $a0
	ld c, h                                          ; $4265: $4c
	add l                                            ; $4266: $85
	inc [hl]                                         ; $4267: $34
	ldh a, [$d6]                                     ; $4268: $f0 $d6
	ld c, e                                          ; $426a: $4b
	ld l, e                                          ; $426b: $6b
	db $f4                                           ; $426c: $f4
	dec h                                            ; $426d: $25
	ld h, a                                          ; $426e: $67
	ld d, l                                          ; $426f: $55
	and c                                            ; $4270: $a1
	ld c, a                                          ; $4271: $4f
	add hl, sp                                       ; $4272: $39
	inc [hl]                                         ; $4273: $34
	ld b, b                                          ; $4274: $40
	ld b, c                                          ; $4275: $41
	ld a, [hl-]                                      ; $4276: $3a
	ldh a, [rBGP]                                    ; $4277: $f0 $47
	ldh a, [$2a]                                     ; $4279: $f0 $2a
	xor c                                            ; $427b: $a9
	db $eb                                           ; $427c: $eb
	inc [hl]                                         ; $427d: $34
	xor h                                            ; $427e: $ac
	ld e, e                                          ; $427f: $5b
	ld d, [hl]                                       ; $4280: $56

jr_094_4281:
	ld b, [hl]                                       ; $4281: $46
	inc [hl]                                         ; $4282: $34
	ld a, d                                          ; $4283: $7a
	ld e, a                                          ; $4284: $5f
	add hl, sp                                       ; $4285: $39
	ld b, l                                          ; $4286: $45
	and b                                            ; $4287: $a0
	cpl                                              ; $4288: $2f
	ld b, e                                          ; $4289: $43
	ld e, [hl]                                       ; $428a: $5e
	add l                                            ; $428b: $85
	inc [hl]                                         ; $428c: $34
	ld c, a                                          ; $428d: $4f
	add hl, sp                                       ; $428e: $39
	ld h, a                                          ; $428f: $67
	ld d, l                                          ; $4290: $55
	ld b, d                                          ; $4291: $42
	and c                                            ; $4292: $a1
	add hl, bc                                       ; $4293: $09
	ld [$acab], a                                    ; $4294: $ea $ab $ac
	ldh a, [rSCX]                                    ; $4297: $f0 $43
	db $f4                                           ; $4299: $f4
	ret                                              ; $429a: $c9


jr_094_429b:
	ld b, h                                          ; $429b: $44
	ld d, b                                          ; $429c: $50
	ld e, l                                          ; $429d: $5d
	ld c, b                                          ; $429e: $48
	and b                                            ; $429f: $a0
	cpl                                              ; $42a0: $2f
	ld b, e                                          ; $42a1: $43
	ld b, b                                          ; $42a2: $40
	ld d, a                                          ; $42a3: $57
	ld d, [hl]                                       ; $42a4: $56
	inc [hl]                                         ; $42a5: $34
	ldh a, [rSCX]                                    ; $42a6: $f0 $43
	ldh a, [$b8]                                     ; $42a8: $f0 $b8
	adc a                                            ; $42aa: $8f
	ld b, h                                          ; $42ab: $44
	inc a                                            ; $42ac: $3c
	ld d, b                                          ; $42ad: $50
	inc de                                           ; $42ae: $13
	ld c, h                                          ; $42af: $4c
	xor b                                            ; $42b0: $a8
	ld b, [hl]                                       ; $42b1: $46
	dec sp                                           ; $42b2: $3b
	inc [hl]                                         ; $42b3: $34
	db $eb                                           ; $42b4: $eb
	db $fc                                           ; $42b5: $fc
	xor h                                            ; $42b6: $ac
	pop af                                           ; $42b7: $f1
	rrca                                             ; $42b8: $0f
	db $f4                                           ; $42b9: $f4
	ret                                              ; $42ba: $c9


	ldh a, [$64]                                     ; $42bb: $f0 $64
	jr c, jr_094_4309                                ; $42bd: $38 $4a

	ld a, $66                                        ; $42bf: $3e $66
	add hl, sp                                       ; $42c1: $39
	and c                                            ; $42c2: $a1
	add hl, sp                                       ; $42c3: $39
	inc [hl]                                         ; $42c4: $34
	xor $1f                                          ; $42c5: $ee $1f
	xor b                                            ; $42c7: $a8
	ld c, d                                          ; $42c8: $4a
	ld c, a                                          ; $42c9: $4f
	inc [hl]                                         ; $42ca: $34
	ld d, h                                          ; $42cb: $54
	ld c, l                                          ; $42cc: $4d
	inc a                                            ; $42cd: $3c
	ld d, b                                          ; $42ce: $50
	inc de                                           ; $42cf: $13
	adc e                                            ; $42d0: $8b
	ld e, h                                          ; $42d1: $5c
	ld b, a                                          ; $42d2: $47
	ld a, [hl-]                                      ; $42d3: $3a
	ld c, [hl]                                       ; $42d4: $4e
	ld c, a                                          ; $42d5: $4f
	ld b, c                                          ; $42d6: $41
	and b                                            ; $42d7: $a0
	cpl                                              ; $42d8: $2f
	ld b, e                                          ; $42d9: $43
	ld b, h                                          ; $42da: $44

jr_094_42db:
	dec sp                                           ; $42db: $3b
	dec a                                            ; $42dc: $3d
	ld d, b                                          ; $42dd: $50
	ld e, b                                          ; $42de: $58
	inc [hl]                                         ; $42df: $34
	ld d, h                                          ; $42e0: $54
	ld c, l                                          ; $42e1: $4d
	xor h                                            ; $42e2: $ac
	add hl, sp                                       ; $42e3: $39
	ld h, c                                          ; $42e4: $61
	ld b, d                                          ; $42e5: $42
	adc a                                            ; $42e6: $8f
	ld b, d                                          ; $42e7: $42
	ldh a, [rSCX]                                    ; $42e8: $f0 $43
	ldh a, [rAUDTERM]                                ; $42ea: $f0 $25
	ld a, [hl-]                                      ; $42ec: $3a
	ld b, c                                          ; $42ed: $41
	ld b, h                                          ; $42ee: $44
	ld e, l                                          ; $42ef: $5d
	ld e, d                                          ; $42f0: $5a
	xor h                                            ; $42f1: $ac
	ldh a, [$fa]                                     ; $42f2: $f0 $fa
	ld b, c                                          ; $42f4: $41
	ld c, d                                          ; $42f5: $4a
	ld l, h                                          ; $42f6: $6c
	ld a, [hl-]                                      ; $42f7: $3a
	jr c, jr_094_429b                                ; $42f8: $38 $a1

	xor $27                                          ; $42fa: $ee $27
	ld b, a                                          ; $42fc: $47
	xor c                                            ; $42fd: $a9
	xor $1f                                          ; $42fe: $ee $1f
	inc [hl]                                         ; $4300: $34
	ld b, [hl]                                       ; $4301: $46
	ld d, a                                          ; $4302: $57
	ld d, e                                          ; $4303: $53
	ld c, c                                          ; $4304: $49
	add hl, sp                                       ; $4305: $39
	and b                                            ; $4306: $a0
	cpl                                              ; $4307: $2f
	ld b, e                                          ; $4308: $43

jr_094_4309:
	ldh a, [$fa]                                     ; $4309: $f0 $fa
	ld b, c                                          ; $430b: $41
	ld b, h                                          ; $430c: $44
	ld d, b                                          ; $430d: $50
	xor h                                            ; $430e: $ac
	db $ed                                           ; $430f: $ed
	ld [hl], a                                       ; $4310: $77
	db $ec                                           ; $4311: $ec
	ld b, b                                          ; $4312: $40
	ld c, h                                          ; $4313: $4c
	and b                                            ; $4314: $a0
	ld b, [hl]                                       ; $4315: $46
	dec sp                                           ; $4316: $3b
	inc [hl]                                         ; $4317: $34
	jr c, jr_094_4355                                ; $4318: $38 $3b

	ld e, l                                          ; $431a: $5d
	ld a, [hl-]                                      ; $431b: $3a
	jr c, @-$5e                                      ; $431c: $38 $a0

	ld b, [hl]                                       ; $431e: $46
	dec sp                                           ; $431f: $3b
	inc [hl]                                         ; $4320: $34
	db $ec                                           ; $4321: $ec
	jp nz, $2fa0                                     ; $4322: $c2 $a0 $2f

	ld b, e                                          ; $4325: $43
	ld b, [hl]                                       ; $4326: $46
	dec sp                                           ; $4327: $3b
	inc [hl]                                         ; $4328: $34
	db $eb                                           ; $4329: $eb
	db $fc                                           ; $432a: $fc
	xor b                                            ; $432b: $a8
	jr c, jr_094_437e                                ; $432c: $38 $50

	dec sp                                           ; $432e: $3b
	ld a, $56                                        ; $432f: $3e $56
	jr c, jr_094_42db                                ; $4331: $38 $a8

	ld b, [hl]                                       ; $4333: $46
	ld c, l                                          ; $4334: $4d
	inc [hl]                                         ; $4335: $34
	adc e                                            ; $4336: $8b
	ldh a, [$72]                                     ; $4337: $f0 $72
	ld c, e                                          ; $4339: $4b
	and c                                            ; $433a: $a1
	db $eb                                           ; $433b: $eb
	pop af                                           ; $433c: $f1
	xor c                                            ; $433d: $a9
	db $eb                                           ; $433e: $eb
	pop af                                           ; $433f: $f1
	ld c, e                                          ; $4340: $4b
	ld c, h                                          ; $4341: $4c
	add l                                            ; $4342: $85
	xor h                                            ; $4343: $ac
	ld l, d                                          ; $4344: $6a
	inc [hl]                                         ; $4345: $34
	adc d                                            ; $4346: $8a
	ldh a, [$73]                                     ; $4347: $f0 $73
	adc a                                            ; $4349: $8f
	ld b, a                                          ; $434a: $47
	ld h, a                                          ; $434b: $67
	dec sp                                           ; $434c: $3b
	ccf                                              ; $434d: $3f
	ld c, [hl]                                       ; $434e: $4e
	ld b, l                                          ; $434f: $45
	and b                                            ; $4350: $a0
	cpl                                              ; $4351: $2f
	ld b, e                                          ; $4352: $43
	ret nz                                           ; $4353: $c0

	xor b                                            ; $4354: $a8

jr_094_4355:
	ld [hl-], a                                      ; $4355: $32
	adc e                                            ; $4356: $8b
	ldh a, [$72]                                     ; $4357: $f0 $72
	ld b, a                                          ; $4359: $47
	inc [hl]                                         ; $435a: $34
	ldh a, [$3f]                                     ; $435b: $f0 $3f
	ld h, d                                          ; $435d: $62
	db $ed                                           ; $435e: $ed
	and [hl]                                         ; $435f: $a6
	ld d, c                                          ; $4360: $51
	ld c, [hl]                                       ; $4361: $4e
	pop af                                           ; $4362: $f1
	ld a, e                                          ; $4363: $7b
	ldh a, [hDisp1_WY]                                     ; $4364: $f0 $95
	inc de                                           ; $4366: $13
	ld b, [hl]                                       ; $4367: $46
	dec sp                                           ; $4368: $3b
	dec a                                            ; $4369: $3d
	inc a                                            ; $436a: $3c
	ld a, [hl-]                                      ; $436b: $3a
	ld [hl], $33                                     ; $436c: $36 $33
	add hl, bc                                       ; $436e: $09
	ld [$acab], a                                    ; $436f: $ea $ab $ac
	ldh a, [rSCX]                                    ; $4372: $f0 $43
	db $f4                                           ; $4374: $f4
	ret                                              ; $4375: $c9


	ld a, e                                          ; $4376: $7b
	dec sp                                           ; $4377: $3b
	inc a                                            ; $4378: $3c
	ld d, a                                          ; $4379: $57
	ld c, b                                          ; $437a: $48
	and b                                            ; $437b: $a0
	cpl                                              ; $437c: $2f
	ld b, e                                          ; $437d: $43

jr_094_437e:
	ld b, b                                          ; $437e: $40
	ld d, a                                          ; $437f: $57
	ld d, [hl]                                       ; $4380: $56
	inc [hl]                                         ; $4381: $34
	ldh a, [rSCX]                                    ; $4382: $f0 $43
	ldh a, [$b8]                                     ; $4384: $f0 $b8
	adc a                                            ; $4386: $8f
	ld b, h                                          ; $4387: $44
	inc a                                            ; $4388: $3c
	ld d, b                                          ; $4389: $50
	inc de                                           ; $438a: $13
	ld c, h                                          ; $438b: $4c
	and b                                            ; $438c: $a0
	ld d, h                                          ; $438d: $54
	ld b, c                                          ; $438e: $41
	ld a, [hl-]                                      ; $438f: $3a
	ld b, a                                          ; $4390: $47
	xor h                                            ; $4391: $ac
	ldh a, [rSCX]                                    ; $4392: $f0 $43
	db $f4                                           ; $4394: $f4
	ret                                              ; $4395: $c9


	ld b, a                                          ; $4396: $47
	ldh a, [c]                                       ; $4397: $f2
	dec de                                           ; $4398: $1b
	ld d, d                                          ; $4399: $52
	ld c, l                                          ; $439a: $4d
	ccf                                              ; $439b: $3f
	ccf                                              ; $439c: $3f
	xor h                                            ; $439d: $ac
	pop af                                           ; $439e: $f1
	sub $f1                                          ; $439f: $d6 $f1
	ld a, [hl-]                                      ; $43a1: $3a
	ld d, l                                          ; $43a2: $55
	ld a, [hl-]                                      ; $43a3: $3a
	ld d, b                                          ; $43a4: $50
	ld a, [hl-]                                      ; $43a5: $3a
	jr c, jr_094_43ea                                ; $43a6: $38 $42

	and c                                            ; $43a8: $a1
	cpl                                              ; $43a9: $2f
	ld b, e                                          ; $43aa: $43
	ldh a, [$34]                                     ; $43ab: $f0 $34
	ld b, a                                          ; $43ad: $47
	inc [hl]                                         ; $43ae: $34
	pop af                                           ; $43af: $f1
	ld a, [hl-]                                      ; $43b0: $3a
	ld d, l                                          ; $43b1: $55
	ld a, [hl-]                                      ; $43b2: $3a
	ld d, b                                          ; $43b3: $50
	ld a, [hl-]                                      ; $43b4: $3a
	jr c, jr_094_43fc                                ; $43b5: $38 $45

	xor b                                            ; $43b7: $a8
	ld b, [hl]                                       ; $43b8: $46
	dec sp                                           ; $43b9: $3b
	inc [hl]                                         ; $43ba: $34
	db $eb                                           ; $43bb: $eb
	db $fc                                           ; $43bc: $fc
	xor h                                            ; $43bd: $ac
	pop af                                           ; $43be: $f1
	rrca                                             ; $43bf: $0f
	db $f4                                           ; $43c0: $f4
	ret                                              ; $43c1: $c9


	ldh a, [$64]                                     ; $43c2: $f0 $64
	jr c, jr_094_4410                                ; $43c4: $38 $4a

	ld a, $66                                        ; $43c6: $3e $66
	add hl, sp                                       ; $43c8: $39
	and c                                            ; $43c9: $a1
	add hl, sp                                       ; $43ca: $39
	inc [hl]                                         ; $43cb: $34
	xor $1f                                          ; $43cc: $ee $1f
	xor b                                            ; $43ce: $a8
	db $ed                                           ; $43cf: $ed
	ld b, e                                          ; $43d0: $43
	ld c, b                                          ; $43d1: $48
	and b                                            ; $43d2: $a0
	ldh a, [rAUD4ENV]                                ; $43d3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $43d5: $f0 $23
	jr c, jr_094_441b                                ; $43d7: $38 $42

	xor c                                            ; $43d9: $a9
	ld b, b                                          ; $43da: $40
	ld c, l                                          ; $43db: $4d
	ld c, b                                          ; $43dc: $48
	and b                                            ; $43dd: $a0
	cpl                                              ; $43de: $2f
	ld b, e                                          ; $43df: $43
	halt                                             ; $43e0: $76
	ld b, d                                          ; $43e1: $42
	db $ec                                           ; $43e2: $ec
	ei                                               ; $43e3: $fb
	ld b, d                                          ; $43e4: $42
	ld c, a                                          ; $43e5: $4f
	xor h                                            ; $43e6: $ac
	ld a, [$3b38]                                    ; $43e7: $fa $38 $3b

jr_094_43ea:
	ccf                                              ; $43ea: $3f
	ld c, [hl]                                       ; $43eb: $4e
	inc a                                            ; $43ec: $3c
	ld d, b                                          ; $43ed: $50
	xor h                                            ; $43ee: $ac
	ldh a, [rAUD4ENV]                                ; $43ef: $f0 $21
	ldh a, [rAUD4GO]                                 ; $43f1: $f0 $23
	jr c, jr_094_443e                                ; $43f3: $38 $49

	ld [hl], a                                       ; $43f5: $77
	add hl, sp                                       ; $43f6: $39
	ld b, l                                          ; $43f7: $45
	and b                                            ; $43f8: $a0
	ld b, h                                          ; $43f9: $44
	dec sp                                           ; $43fa: $3b
	dec a                                            ; $43fb: $3d

jr_094_43fc:
	ld d, b                                          ; $43fc: $50
	xor h                                            ; $43fd: $ac
	ldh a, [$fa]                                     ; $43fe: $f0 $fa
	ld b, c                                          ; $4400: $41
	ld c, d                                          ; $4401: $4a
	ld l, h                                          ; $4402: $6c
	ld b, l                                          ; $4403: $45
	add hl, sp                                       ; $4404: $39
	inc a                                            ; $4405: $3c
	ld a, [hl-]                                      ; $4406: $3a
	and b                                            ; $4407: $a0
	cpl                                              ; $4408: $2f
	ld b, e                                          ; $4409: $43
	ldh a, [$fa]                                     ; $440a: $f0 $fa
	ld b, c                                          ; $440c: $41
	ld c, d                                          ; $440d: $4a
	inc [hl]                                         ; $440e: $34
	db $ed                                           ; $440f: $ed

jr_094_4410:
	ld [hl], a                                       ; $4410: $77
	db $ec                                           ; $4411: $ec
	ld b, b                                          ; $4412: $40
	inc de                                           ; $4413: $13
	ld b, l                                          ; $4414: $45
	and b                                            ; $4415: $a0
	cpl                                              ; $4416: $2f
	ld b, e                                          ; $4417: $43
	ret nz                                           ; $4418: $c0

	and b                                            ; $4419: $a0
	or h                                             ; $441a: $b4

jr_094_441b:
	ld c, h                                          ; $441b: $4c
	xor h                                            ; $441c: $ac
	db $eb                                           ; $441d: $eb
	sbc a                                            ; $441e: $9f
	and b                                            ; $441f: $a0
	ld e, [hl]                                       ; $4420: $5e
	ld e, c                                          ; $4421: $59
	ld c, c                                          ; $4422: $49
	inc [hl]                                         ; $4423: $34
	ld d, h                                          ; $4424: $54
	ld d, h                                          ; $4425: $54
	ld c, e                                          ; $4426: $4b
	ld c, b                                          ; $4427: $48
	and b                                            ; $4428: $a0
	ld b, [hl]                                       ; $4429: $46
	dec sp                                           ; $442a: $3b
	inc [hl]                                         ; $442b: $34
	ld d, $a8                                        ; $442c: $16 $a8
	db $eb                                           ; $442e: $eb
	pop af                                           ; $442f: $f1
	ld c, e                                          ; $4430: $4b
	inc de                                           ; $4431: $13
	adc d                                            ; $4432: $8a
	ldh a, [$73]                                     ; $4433: $f0 $73
	adc a                                            ; $4435: $8f
	ld b, a                                          ; $4436: $47
	ld h, a                                          ; $4437: $67
	ld d, l                                          ; $4438: $55
	dec sp                                           ; $4439: $3b
	ccf                                              ; $443a: $3f
	and b                                            ; $443b: $a0
	xor $1f                                          ; $443c: $ee $1f

jr_094_443e:
	xor b                                            ; $443e: $a8
	db $ed                                           ; $443f: $ed
	ld b, e                                          ; $4440: $43
	inc [hl]                                         ; $4441: $34
	adc b                                            ; $4442: $88
	ldh a, [$fa]                                     ; $4443: $f0 $fa
	ldh a, [$be]                                     ; $4445: $f0 $be
	db $ec                                           ; $4447: $ec
	or $ac                                           ; $4448: $f6 $ac
	ldh a, [$f3]                                     ; $444a: $f0 $f3
	ld c, l                                          ; $444c: $4d
	ld c, [hl]                                       ; $444d: $4e
	ld b, c                                          ; $444e: $41
	ld b, h                                          ; $444f: $44
	ld c, a                                          ; $4450: $4f
	ld b, c                                          ; $4451: $41
	and b                                            ; $4452: $a0
	ldh a, [rAUD4ENV]                                ; $4453: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4455: $f0 $23
	jr c, jr_094_449b                                ; $4457: $38 $42

	xor c                                            ; $4459: $a9
	ld b, b                                          ; $445a: $40
	ld b, d                                          ; $445b: $42
	inc [hl]                                         ; $445c: $34
	ldh a, [rSCX]                                    ; $445d: $f0 $43
	ldh a, [rAUDTERM]                                ; $445f: $f0 $25
	dec sp                                           ; $4461: $3b
	ccf                                              ; $4462: $3f
	and b                                            ; $4463: $a0
	cpl                                              ; $4464: $2f
	ld b, e                                          ; $4465: $43
	halt                                             ; $4466: $76
	ld c, a                                          ; $4467: $4f
	inc [hl]                                         ; $4468: $34
	pop af                                           ; $4469: $f1
	ld l, $38                                        ; $446a: $2e $38
	ccf                                              ; $446c: $3f
	ld c, [hl]                                       ; $446d: $4e
	ld b, c                                          ; $446e: $41
	ld b, h                                          ; $446f: $44
	xor b                                            ; $4470: $a8
	ldh a, [rAUD4ENV]                                ; $4471: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4473: $f0 $23
	jr c, @+$4b                                      ; $4475: $38 $49

	ld [hl], a                                       ; $4477: $77
	add hl, sp                                       ; $4478: $39
	ld b, l                                          ; $4479: $45
	and b                                            ; $447a: $a0
	xor $10                                          ; $447b: $ee $10
	xor b                                            ; $447d: $a8
	ld e, e                                          ; $447e: $5b
	ld d, [hl]                                       ; $447f: $56
	ld b, [hl]                                       ; $4480: $46
	inc [hl]                                         ; $4481: $34
	ldh a, [$fa]                                     ; $4482: $f0 $fa
	ld b, c                                          ; $4484: $41
	ld c, d                                          ; $4485: $4a
	ld l, h                                          ; $4486: $6c
	ld c, [hl]                                       ; $4487: $4e
	and b                                            ; $4488: $a0
	cpl                                              ; $4489: $2f
	ld b, e                                          ; $448a: $43

jr_094_448b:
	db $eb                                           ; $448b: $eb
	db $fc                                           ; $448c: $fc
	xor l                                            ; $448d: $ad
	ldh a, [$5c]                                     ; $448e: $f0 $5c
	jr c, jr_094_44d3                                ; $4490: $38 $41

	ld b, h                                          ; $4492: $44
	ld e, l                                          ; $4493: $5d
	ld e, d                                          ; $4494: $5a
	inc [hl]                                         ; $4495: $34
	adc e                                            ; $4496: $8b
	ldh a, [$72]                                     ; $4497: $f0 $72
	ld b, a                                          ; $4499: $47
	inc de                                           ; $449a: $13

jr_094_449b:
	ld d, h                                          ; $449b: $54
	ld b, d                                          ; $449c: $42
	ldh a, [rSCX]                                    ; $449d: $f0 $43
	ldh a, [rAUDTERM]                                ; $449f: $f0 $25
	inc [hl]                                         ; $44a1: $34
	pop af                                           ; $44a2: $f1
	ld a, h                                          ; $44a3: $7c
	ld a, $3f                                        ; $44a4: $3e $3f
	ld d, l                                          ; $44a6: $55
	ld c, l                                          ; $44a7: $4d
	ld c, [hl]                                       ; $44a8: $4e
	and c                                            ; $44a9: $a1
	ld e, [hl]                                       ; $44aa: $5e
	ld e, c                                          ; $44ab: $59
	dec sp                                           ; $44ac: $3b
	inc [hl]                                         ; $44ad: $34
	ld l, e                                          ; $44ae: $6b
	ldh a, [c]                                       ; $44af: $f2
	db $eb                                           ; $44b0: $eb
	xor c                                            ; $44b1: $a9
	ld d, h                                          ; $44b2: $54
	ld c, l                                          ; $44b3: $4d
	inc [hl]                                         ; $44b4: $34
	pop af                                           ; $44b5: $f1
	ld a, h                                          ; $44b6: $7c
	ld d, c                                          ; $44b7: $51
	ld b, d                                          ; $44b8: $42
	ld c, h                                          ; $44b9: $4c
	and b                                            ; $44ba: $a0
	cpl                                              ; $44bb: $2f
	ld b, e                                          ; $44bc: $43
	ldh a, [$5c]                                     ; $44bd: $f0 $5c
	jr c, jr_094_450d                                ; $44bf: $38 $4c

	and b                                            ; $44c1: $a0
	ld l, d                                          ; $44c2: $6a
	inc [hl]                                         ; $44c3: $34
	pop af                                           ; $44c4: $f1
	adc a                                            ; $44c5: $8f
	ld a, $38                                        ; $44c6: $3e $38
	ld b, d                                          ; $44c8: $42
	ld b, a                                          ; $44c9: $47
	ld c, b                                          ; $44ca: $48
	and b                                            ; $44cb: $a0
	cpl                                              ; $44cc: $2f
	ld b, e                                          ; $44cd: $43
	adc e                                            ; $44ce: $8b
	ldh a, [$72]                                     ; $44cf: $f0 $72
	ld c, e                                          ; $44d1: $4b
	inc [hl]                                         ; $44d2: $34

jr_094_44d3:
	ld d, h                                          ; $44d3: $54
	ld b, c                                          ; $44d4: $41
	ld a, [hl-]                                      ; $44d5: $3a
	adc a                                            ; $44d6: $8f
	ld b, a                                          ; $44d7: $47
	ld c, e                                          ; $44d8: $4b
	inc de                                           ; $44d9: $13
	ld a, b                                          ; $44da: $78
	ld a, [hl-]                                      ; $44db: $3a
	jr c, jr_094_4527                                ; $44dc: $38 $49

	ld [hl], a                                       ; $44de: $77
	add hl, sp                                       ; $44df: $39
	ld a, [hl-]                                      ; $44e0: $3a
	ld c, b                                          ; $44e1: $48
	and b                                            ; $44e2: $a0
	ld e, [hl]                                       ; $44e3: $5e
	ld e, c                                          ; $44e4: $59
	dec sp                                           ; $44e5: $3b
	ld c, c                                          ; $44e6: $49
	xor b                                            ; $44e7: $a8
	ld e, d                                          ; $44e8: $5a
	ld d, h                                          ; $44e9: $54
	ld b, a                                          ; $44ea: $47
	jr c, jr_094_453b                                ; $44eb: $38 $4e

	ld b, d                                          ; $44ed: $42
	inc a                                            ; $44ee: $3c
	ld a, [hl-]                                      ; $44ef: $3a
	ld [hl], h                                       ; $44f0: $74
	ld c, b                                          ; $44f1: $48
	and b                                            ; $44f2: $a0
	cpl                                              ; $44f3: $2f
	ld b, e                                          ; $44f4: $43
	ld b, [hl]                                       ; $44f5: $46
	dec sp                                           ; $44f6: $3b
	inc [hl]                                         ; $44f7: $34
	db $eb                                           ; $44f8: $eb
	db $fc                                           ; $44f9: $fc
	xor b                                            ; $44fa: $a8
	ld [$a81f], a                                    ; $44fb: $ea $1f $a8
	ld b, [hl]                                       ; $44fe: $46
	ld c, l                                          ; $44ff: $4d
	inc [hl]                                         ; $4500: $34
	adc e                                            ; $4501: $8b
	ldh a, [$72]                                     ; $4502: $f0 $72
	ld c, e                                          ; $4504: $4b
	and c                                            ; $4505: $a1
	db $eb                                           ; $4506: $eb
	pop af                                           ; $4507: $f1
	xor c                                            ; $4508: $a9
	jr c, jr_094_448b                                ; $4509: $38 $80

	ld c, a                                          ; $450b: $4f
	inc [hl]                                         ; $450c: $34

jr_094_450d:
	xor $06                                          ; $450d: $ee $06
	ld b, a                                          ; $450f: $47
	jr c, jr_094_4560                                ; $4510: $38 $4e

	ld h, e                                          ; $4512: $63
	ld e, l                                          ; $4513: $5d
	inc de                                           ; $4514: $13
	db $ec                                           ; $4515: $ec
	ret c                                            ; $4516: $d8

	ld c, a                                          ; $4517: $4f
	ld b, c                                          ; $4518: $41
	and b                                            ; $4519: $a0
	cpl                                              ; $451a: $2f
	ld b, e                                          ; $451b: $43
	ld b, b                                          ; $451c: $40
	ld d, a                                          ; $451d: $57
	ld d, [hl]                                       ; $451e: $56
	inc [hl]                                         ; $451f: $34
	ld b, b                                          ; $4520: $40
	add hl, sp                                       ; $4521: $39
	ld b, h                                          ; $4522: $44
	xor b                                            ; $4523: $a8
	ld c, d                                          ; $4524: $4a
	inc [hl]                                         ; $4525: $34
	db $eb                                           ; $4526: $eb

jr_094_4527:
	ld d, b                                          ; $4527: $50
	xor c                                            ; $4528: $a9
	halt                                             ; $4529: $76
	ld b, d                                          ; $452a: $42
	db $ed                                           ; $452b: $ed
	ld l, d                                          ; $452c: $6a
	and b                                            ; $452d: $a0
	ldh a, [hDisp0_WX]                                     ; $452e: $f0 $89
	ld e, c                                          ; $4530: $59
	ld h, l                                          ; $4531: $65
	ld c, c                                          ; $4532: $49
	ld c, h                                          ; $4533: $4c
	xor h                                            ; $4534: $ac
	ld d, c                                          ; $4535: $51
	ld [hl], b                                       ; $4536: $70
	ld d, l                                          ; $4537: $55
	xor h                                            ; $4538: $ac
	inc a                                            ; $4539: $3c
	dec sp                                           ; $453a: $3b

jr_094_453b:
	ld d, h                                          ; $453b: $54
	db $ec                                           ; $453c: $ec
	cp c                                             ; $453d: $b9
	ld c, d                                          ; $453e: $4a
	ld d, c                                          ; $453f: $51
	and b                                            ; $4540: $a0
	cpl                                              ; $4541: $2f
	ld b, e                                          ; $4542: $43
	ld b, b                                          ; $4543: $40
	add hl, sp                                       ; $4544: $39
	inc [hl]                                         ; $4545: $34
	ld b, [hl]                                       ; $4546: $46
	ld d, a                                          ; $4547: $57
	ld d, e                                          ; $4548: $53
	ld c, c                                          ; $4549: $49
	add hl, sp                                       ; $454a: $39
	xor b                                            ; $454b: $a8
	ld [hl-], a                                      ; $454c: $32
	sbc $34                                          ; $454d: $de $34
	db $eb                                           ; $454f: $eb
	ld [hl], h                                       ; $4550: $74
	ld b, d                                          ; $4551: $42
	inc a                                            ; $4552: $3c
	ld a, [hl-]                                      ; $4553: $3a

jr_094_4554:
	inc de                                           ; $4554: $13
	ld d, h                                          ; $4555: $54
	ld b, d                                          ; $4556: $42
	pop af                                           ; $4557: $f1
	ld b, [hl]                                       ; $4558: $46
	ld [hl], $33                                     ; $4559: $36 $33
	add hl, bc                                       ; $455b: $09
	ld b, [hl]                                       ; $455c: $46
	dec sp                                           ; $455d: $3b
	xor h                                            ; $455e: $ac
	db $ec                                           ; $455f: $ec

jr_094_4560:
	push bc                                          ; $4560: $c5
	inc [hl]                                         ; $4561: $34
	ldh a, [$e8]                                     ; $4562: $f0 $e8
	ld d, b                                          ; $4564: $50
	ld a, [hl-]                                      ; $4565: $3a
	ld e, h                                          ; $4566: $5c
	ld d, [hl]                                       ; $4567: $56
	and b                                            ; $4568: $a0
	cpl                                              ; $4569: $2f
	ld b, e                                          ; $456a: $43
	ld b, [hl]                                       ; $456b: $46
	ld c, l                                          ; $456c: $4d
	inc [hl]                                         ; $456d: $34
	jp hl                                            ; $456e: $e9


	or e                                             ; $456f: $b3
	and c                                            ; $4570: $a1
	xor $1e                                          ; $4571: $ee $1e
	ld c, h                                          ; $4573: $4c
	inc [hl]                                         ; $4574: $34
	xor $27                                          ; $4575: $ee $27
	pop af                                           ; $4577: $f1
	inc l                                            ; $4578: $2c
	add h                                            ; $4579: $84
	ld c, d                                          ; $457a: $4a
	inc de                                           ; $457b: $13
	ld a, b                                          ; $457c: $78
	dec a                                            ; $457d: $3d
	inc a                                            ; $457e: $3c
	dec sp                                           ; $457f: $3b
	dec a                                            ; $4580: $3d
	inc a                                            ; $4581: $3c
	ld d, b                                          ; $4582: $50
	xor h                                            ; $4583: $ac
	db $eb                                           ; $4584: $eb
	pop af                                           ; $4585: $f1
	ld h, d                                          ; $4586: $62
	di                                               ; $4587: $f3
	db $e3                                           ; $4588: $e3
	jr c, jr_094_45ca                                ; $4589: $38 $3f

	ld c, b                                          ; $458b: $48
	and b                                            ; $458c: $a0
	cpl                                              ; $458d: $2f
	ld b, e                                          ; $458e: $43
	ld b, b                                          ; $458f: $40
	add hl, sp                                       ; $4590: $39
	ld b, h                                          ; $4591: $44
	dec sp                                           ; $4592: $3b
	dec a                                            ; $4593: $3d
	ld b, c                                          ; $4594: $41
	ld b, h                                          ; $4595: $44
	xor b                                            ; $4596: $a8
	ld b, h                                          ; $4597: $44
	dec sp                                           ; $4598: $3b
	dec a                                            ; $4599: $3d
	ld d, b                                          ; $459a: $50
	inc [hl]                                         ; $459b: $34
	ldh a, [$0a]                                     ; $459c: $f0 $0a
	ld d, l                                          ; $459e: $55
	db $eb                                           ; $459f: $eb
	ld [hl], d                                       ; $45a0: $72
	xor h                                            ; $45a1: $ac
	adc e                                            ; $45a2: $8b
	ldh a, [$72]                                     ; $45a3: $f0 $72
	inc [hl]                                         ; $45a5: $34
	pop af                                           ; $45a6: $f1
	ld [hl-], a                                      ; $45a7: $32
	dec sp                                           ; $45a8: $3b
	ld h, c                                          ; $45a9: $61
	ld d, [hl]                                       ; $45aa: $56
	add hl, sp                                       ; $45ab: $39
	ld b, l                                          ; $45ac: $45
	and b                                            ; $45ad: $a0
	xor $1f                                          ; $45ae: $ee $1f
	xor b                                            ; $45b0: $a8
	ld c, d                                          ; $45b1: $4a
	ld c, a                                          ; $45b2: $4f
	inc [hl]                                         ; $45b3: $34
	ldh a, [rHDMA3]                                  ; $45b4: $f0 $53
	ld e, [hl]                                       ; $45b6: $5e
	ccf                                              ; $45b7: $3f
	ld b, l                                          ; $45b8: $45
	inc a                                            ; $45b9: $3c
	dec sp                                           ; $45ba: $3b
	dec a                                            ; $45bb: $3d
	xor b                                            ; $45bc: $a8
	ld e, e                                          ; $45bd: $5b
	ld d, [hl]                                       ; $45be: $56
	ld b, [hl]                                       ; $45bf: $46
	inc [hl]                                         ; $45c0: $34
	ld e, b                                          ; $45c1: $58
	ld b, l                                          ; $45c2: $45
	ld a, [hl-]                                      ; $45c3: $3a
	ld d, b                                          ; $45c4: $50
	and b                                            ; $45c5: $a0
	cpl                                              ; $45c6: $2f
	ld b, e                                          ; $45c7: $43
	db $ed                                           ; $45c8: $ed
	dec bc                                           ; $45c9: $0b

jr_094_45ca:
	ld a, [hl-]                                      ; $45ca: $3a
	db $ed                                           ; $45cb: $ed
	ld c, $48                                        ; $45cc: $0e $48
	and b                                            ; $45ce: $a0
	db $eb                                           ; $45cf: $eb
	pop af                                           ; $45d0: $f1
	xor c                                            ; $45d1: $a9
	jr c, jr_094_4554                                ; $45d2: $38 $80

	ld c, a                                          ; $45d4: $4f
	inc [hl]                                         ; $45d5: $34
	db $eb                                           ; $45d6: $eb
	pop af                                           ; $45d7: $f1
	ld c, c                                          ; $45d8: $49
	inc de                                           ; $45d9: $13
	xor $06                                          ; $45da: $ee $06
	db $ec                                           ; $45dc: $ec
	ret c                                            ; $45dd: $d8

	ld c, d                                          ; $45de: $4a
	ld d, c                                          ; $45df: $51
	ld b, l                                          ; $45e0: $45
	ld e, c                                          ; $45e1: $59
	ld b, h                                          ; $45e2: $44
	and b                                            ; $45e3: $a0
	ldh a, [hDisp0_WX]                                     ; $45e4: $f0 $89
	ld e, c                                          ; $45e6: $59
	ld h, l                                          ; $45e7: $65
	ld c, c                                          ; $45e8: $49
	ld c, h                                          ; $45e9: $4c
	xor h                                            ; $45ea: $ac
	inc a                                            ; $45eb: $3c
	dec sp                                           ; $45ec: $3b
	ld d, h                                          ; $45ed: $54
	db $eb                                           ; $45ee: $eb
	ld e, a                                          ; $45ef: $5f
	and b                                            ; $45f0: $a0
	db $ec                                           ; $45f1: $ec
	push bc                                          ; $45f2: $c5
	inc [hl]                                         ; $45f3: $34
	ldh a, [$e8]                                     ; $45f4: $f0 $e8
	ld d, b                                          ; $45f6: $50
	ld a, [hl-]                                      ; $45f7: $3a
	ld e, h                                          ; $45f8: $5c
	ld d, [hl]                                       ; $45f9: $56
	and b                                            ; $45fa: $a0
	db $eb                                           ; $45fb: $eb
	pop af                                           ; $45fc: $f1
	ld c, e                                          ; $45fd: $4b
	xor h                                            ; $45fe: $ac
	ldh a, [$f0]                                     ; $45ff: $f0 $f0
	ld c, d                                          ; $4601: $4a
	sbc c                                            ; $4602: $99
	dec sp                                           ; $4603: $3b
	ccf                                              ; $4604: $3f
	ld d, d                                          ; $4605: $52
	ld e, c                                          ; $4606: $59
	ld d, c                                          ; $4607: $51
	and b                                            ; $4608: $a0
	cpl                                              ; $4609: $2f
	ld b, e                                          ; $460a: $43
	adc e                                            ; $460b: $8b
	ldh a, [$72]                                     ; $460c: $f0 $72
	ld c, e                                          ; $460e: $4b
	ld a, b                                          ; $460f: $78
	ccf                                              ; $4610: $3f
	ld d, l                                          ; $4611: $55
	ld c, l                                          ; $4612: $4d
	ld a, [hl-]                                      ; $4613: $3a
	jr c, jr_094_4657                                ; $4614: $38 $41

	inc de                                           ; $4616: $13
	ld b, h                                          ; $4617: $44
	and b                                            ; $4618: $a0
	xor $1e                                          ; $4619: $ee $1e
	ld c, h                                          ; $461b: $4c
	inc [hl]                                         ; $461c: $34
	ldh a, [$ab]                                     ; $461d: $f0 $ab
	ld b, a                                          ; $461f: $47
	ld a, [hl-]                                      ; $4620: $3a
	ld b, c                                          ; $4621: $41
	inc a                                            ; $4622: $3c
	inc de                                           ; $4623: $13
	ld h, e                                          ; $4624: $63
	ldh a, [rAUD1SWEEP]                              ; $4625: $f0 $10
	ld h, e                                          ; $4627: $63
	ldh a, [rAUD1SWEEP]                              ; $4628: $f0 $10
	ldh a, [rHDMA3]                                  ; $462a: $f0 $53
	jr c, jr_094_4675                                ; $462c: $38 $47

	inc de                                           ; $462e: $13
	ld a, b                                          ; $462f: $78
	dec a                                            ; $4630: $3d
	ld d, l                                          ; $4631: $55
	ld a, [hl-]                                      ; $4632: $3a
	jr c, jr_094_4670                                ; $4633: $38 $3b

	ccf                                              ; $4635: $3f
	and b                                            ; $4636: $a0
	cpl                                              ; $4637: $2f
	ld b, e                                          ; $4638: $43
	ld h, h                                          ; $4639: $64
	jr c, jr_094_46a0                                ; $463a: $38 $64

	jr c, jr_094_4672                                ; $463c: $38 $34

	db $ed                                           ; $463e: $ed
	ld h, d                                          ; $463f: $62
	inc de                                           ; $4640: $13
	ld a, [hl-]                                      ; $4641: $3a
	ld b, d                                          ; $4642: $42
	ld b, a                                          ; $4643: $47
	xor l                                            ; $4644: $ad
	ld c, c                                          ; $4645: $49
	ld d, h                                          ; $4646: $54
	ld e, a                                          ; $4647: $5f
	ld c, d                                          ; $4648: $4a
	inc [hl]                                         ; $4649: $34
	db $eb                                           ; $464a: $eb
	ld d, b                                          ; $464b: $50
	xor c                                            ; $464c: $a9
	halt                                             ; $464d: $76
	ld b, d                                          ; $464e: $42
	db $ed                                           ; $464f: $ed
	ld l, d                                          ; $4650: $6a
	and b                                            ; $4651: $a0
	ldh a, [hDisp0_WX]                                     ; $4652: $f0 $89
	ld e, c                                          ; $4654: $59
	ld h, l                                          ; $4655: $65
	ld c, c                                          ; $4656: $49

jr_094_4657:
	ld c, h                                          ; $4657: $4c
	xor l                                            ; $4658: $ad
	db $ec                                           ; $4659: $ec
	cp c                                             ; $465a: $b9
	ld c, c                                          ; $465b: $49
	ld [hl], a                                       ; $465c: $77
	jr c, jr_094_46b1                                ; $465d: $38 $52

	ld d, c                                          ; $465f: $51
	and b                                            ; $4660: $a0
	cpl                                              ; $4661: $2f
	ld b, e                                          ; $4662: $43
	ld e, e                                          ; $4663: $5b
	ld d, [hl]                                       ; $4664: $56
	ld b, [hl]                                       ; $4665: $46
	inc [hl]                                         ; $4666: $34
	adc e                                            ; $4667: $8b
	ldh a, [$72]                                     ; $4668: $f0 $72
	ld b, a                                          ; $466a: $47
	inc de                                           ; $466b: $13
	ldh a, [$d2]                                     ; $466c: $f0 $d2
	sbc l                                            ; $466e: $9d
	ld d, b                                          ; $466f: $50

jr_094_4670:
	jr c, @+$74                                      ; $4670: $38 $72

jr_094_4672:
	ld a, c                                          ; $4672: $79
	ld e, a                                          ; $4673: $5f
	dec sp                                           ; $4674: $3b

jr_094_4675:
	ccf                                              ; $4675: $3f
	inc de                                           ; $4676: $13
	add d                                            ; $4677: $82
	dec sp                                           ; $4678: $3b
	ld c, c                                          ; $4679: $49
	jr c, jr_094_46bb                                ; $467a: $38 $3f

	and b                                            ; $467c: $a0
	xor $1f                                          ; $467d: $ee $1f
	inc [hl]                                         ; $467f: $34
	pop af                                           ; $4680: $f1
	ld [hl], c                                       ; $4681: $71
	ld e, [hl]                                       ; $4682: $5e
	ccf                                              ; $4683: $3f
	ld h, h                                          ; $4684: $64
	ld d, l                                          ; $4685: $55
	ld c, h                                          ; $4686: $4c
	xor b                                            ; $4687: $a8
	ld e, e                                          ; $4688: $5b
	ld d, [hl]                                       ; $4689: $56
	ld b, [hl]                                       ; $468a: $46
	inc [hl]                                         ; $468b: $34
	ld e, b                                          ; $468c: $58
	ld b, l                                          ; $468d: $45
	ld a, [hl-]                                      ; $468e: $3a
	ld d, b                                          ; $468f: $50
	and b                                            ; $4690: $a0
	ld c, h                                          ; $4691: $4c
	add l                                            ; $4692: $85
	ld c, h                                          ; $4693: $4c
	add l                                            ; $4694: $85
	inc [hl]                                         ; $4695: $34
	ld d, h                                          ; $4696: $54
	ld d, h                                          ; $4697: $54
	ld c, d                                          ; $4698: $4a
	ld c, e                                          ; $4699: $4b
	xor h                                            ; $469a: $ac
	ld l, e                                          ; $469b: $6b
	ld l, [hl]                                       ; $469c: $6e
	dec sp                                           ; $469d: $3b
	ccf                                              ; $469e: $3f
	ld c, [hl]                                       ; $469f: $4e

jr_094_46a0:
	ld b, c                                          ; $46a0: $41
	ld c, d                                          ; $46a1: $4a
	ld d, c                                          ; $46a2: $51
	inc a                                            ; $46a3: $3c
	and c                                            ; $46a4: $a1
	cpl                                              ; $46a5: $2f
	ld b, e                                          ; $46a6: $43
	xor $2a                                          ; $46a7: $ee $2a
	db $ec                                           ; $46a9: $ec
	ldh a, [c]                                       ; $46aa: $f2
	ld a, [hl-]                                      ; $46ab: $3a
	ld b, c                                          ; $46ac: $41
	ld b, h                                          ; $46ad: $44
	xor b                                            ; $46ae: $a8
	ld d, h                                          ; $46af: $54
	ld c, l                                          ; $46b0: $4d

jr_094_46b1:
	inc a                                            ; $46b1: $3c
	ld d, b                                          ; $46b2: $50
	inc [hl]                                         ; $46b3: $34
	ldh a, [$bb]                                     ; $46b4: $f0 $bb
	ld [hl], c                                       ; $46b6: $71
	ld c, [hl]                                       ; $46b7: $4e
	inc a                                            ; $46b8: $3c
	ld d, b                                          ; $46b9: $50
	xor h                                            ; $46ba: $ac

jr_094_46bb:
	ld [$a0c6], a                                    ; $46bb: $ea $c6 $a0
	xor $1f                                          ; $46be: $ee $1f
	and b                                            ; $46c0: $a0
	db $ec                                           ; $46c1: $ec
	rst SubAFromHL                                          ; $46c2: $d7
	inc [hl]                                         ; $46c3: $34
	ldh a, [$2f]                                     ; $46c4: $f0 $2f
	ld [hl], l                                       ; $46c6: $75
	ld a, l                                          ; $46c7: $7d
	ld c, d                                          ; $46c8: $4a
	ld a, $3d                                        ; $46c9: $3e $3d
	xor b                                            ; $46cb: $a8
	db $eb                                           ; $46cc: $eb

jr_094_46cd:
	pop af                                           ; $46cd: $f1
	ld c, a                                          ; $46ce: $4f
	ld [hl], d                                       ; $46cf: $72
	ld b, a                                          ; $46d0: $47
	ld a, b                                          ; $46d1: $78
	ld c, l                                          ; $46d2: $4d
	ld a, e                                          ; $46d3: $7b
	inc de                                           ; $46d4: $13
	db $ec                                           ; $46d5: $ec
	cp c                                             ; $46d6: $b9
	ld b, d                                          ; $46d7: $42
	ld b, a                                          ; $46d8: $47
	and b                                            ; $46d9: $a0
	cpl                                              ; $46da: $2f
	ld b, e                                          ; $46db: $43
	ld b, b                                          ; $46dc: $40
	add hl, sp                                       ; $46dd: $39
	ld b, h                                          ; $46de: $44
	ld b, l                                          ; $46df: $45
	ld c, h                                          ; $46e0: $4c
	xor b                                            ; $46e1: $a8
	ld c, a                                          ; $46e2: $4f
	ld a, $3c                                        ; $46e3: $3e $3c
	ld a, $3d                                        ; $46e5: $3e $3d
	ld d, b                                          ; $46e7: $50
	inc [hl]                                         ; $46e8: $34
	adc d                                            ; $46e9: $8a
	ldh a, [$73]                                     ; $46ea: $f0 $73
	adc a                                            ; $46ec: $8f
	ld b, l                                          ; $46ed: $45
	ld d, a                                          ; $46ee: $57
	inc de                                           ; $46ef: $13
	db $ed                                           ; $46f0: $ed
	ld e, a                                          ; $46f1: $5f
	pop af                                           ; $46f2: $f1
	inc bc                                           ; $46f3: $03
	ld b, h                                          ; $46f4: $44
	dec sp                                           ; $46f5: $3b
	dec a                                            ; $46f6: $3d
	inc a                                            ; $46f7: $3c
	ld c, a                                          ; $46f8: $4f
	ld c, h                                          ; $46f9: $4c
	and b                                            ; $46fa: $a0
	ld c, h                                          ; $46fb: $4c
	add l                                            ; $46fc: $85
	ld c, h                                          ; $46fd: $4c
	add l                                            ; $46fe: $85
	inc [hl]                                         ; $46ff: $34
	ld d, h                                          ; $4700: $54
	ld d, h                                          ; $4701: $54
	ld c, d                                          ; $4702: $4a
	ld c, e                                          ; $4703: $4b
	xor h                                            ; $4704: $ac
	ld l, e                                          ; $4705: $6b
	ld l, [hl]                                       ; $4706: $6e
	dec sp                                           ; $4707: $3b
	ccf                                              ; $4708: $3f
	ld c, [hl]                                       ; $4709: $4e
	ld b, d                                          ; $470a: $42
	and c                                            ; $470b: $a1
	db $ec                                           ; $470c: $ec
	rst SubAFromHL                                          ; $470d: $d7
	inc [hl]                                         ; $470e: $34
	ldh a, [$2f]                                     ; $470f: $f0 $2f
	ld [hl], l                                       ; $4711: $75
	ld a, l                                          ; $4712: $7d
	ld b, h                                          ; $4713: $44
	dec sp                                           ; $4714: $3b
	dec a                                            ; $4715: $3d
	inc de                                           ; $4716: $13
	ld b, l                                          ; $4717: $45
	xor b                                            ; $4718: $a8
	ld d, d                                          ; $4719: $52
	ld c, [hl]                                       ; $471a: $4e
	ld c, d                                          ; $471b: $4a
	inc [hl]                                         ; $471c: $34
	ldh a, [$d0]                                     ; $471d: $f0 $d0
	ld [hl], a                                       ; $471f: $77
	ldh a, [c]                                       ; $4720: $f2
	or b                                             ; $4721: $b0
	ld b, d                                          ; $4722: $42
	ldh a, [$ca]                                     ; $4723: $f0 $ca
	ld b, a                                          ; $4725: $47

jr_094_4726:
	jr c, @+$3f                                      ; $4726: $38 $3d

	inc de                                           ; $4728: $13
	ld l, h                                          ; $4729: $6c
	dec a                                            ; $472a: $3d
	jr c, jr_094_46cd                                ; $472b: $38 $a0

	cpl                                              ; $472d: $2f
	ld b, e                                          ; $472e: $43
	ldh a, [$d0]                                     ; $472f: $f0 $d0
	ld [hl], a                                       ; $4731: $77
	ldh a, [c]                                       ; $4732: $f2
	or b                                             ; $4733: $b0
	ld b, d                                          ; $4734: $42
	ldh a, [$ca]                                     ; $4735: $f0 $ca
	ld c, h                                          ; $4737: $4c
	add l                                            ; $4738: $85
	ld c, b                                          ; $4739: $48
	and b                                            ; $473a: $a0
	cpl                                              ; $473b: $2f
	ld b, e                                          ; $473c: $43
	jp hl                                            ; $473d: $e9


	xor a                                            ; $473e: $af
	xor b                                            ; $473f: $a8
	add sp, $4f                                      ; $4740: $e8 $4f
	xor b                                            ; $4742: $a8
	ld [$a0c6], a                                    ; $4743: $ea $c6 $a0
	db $ec                                           ; $4746: $ec
	rst SubAFromHL                                          ; $4747: $d7
	inc [hl]                                         ; $4748: $34
	ldh a, [$2f]                                     ; $4749: $f0 $2f
	ld [hl], l                                       ; $474b: $75
	ld a, l                                          ; $474c: $7d
	ld b, h                                          ; $474d: $44
	dec sp                                           ; $474e: $3b
	dec a                                            ; $474f: $3d
	inc de                                           ; $4750: $13
	ld e, l                                          ; $4751: $5d
	ld e, d                                          ; $4752: $5a
	inc [hl]                                         ; $4753: $34
	ldh a, [rAUD3LEVEL]                              ; $4754: $f0 $1c
	ld d, e                                          ; $4756: $53
	ldh a, [$2b]                                     ; $4757: $f0 $2b
	ldh a, [$35]                                     ; $4759: $f0 $35
	ldh a, [$2b]                                     ; $475b: $f0 $2b
	ldh a, [$35]                                     ; $475d: $f0 $35
	db $eb                                           ; $475f: $eb
	ld d, [hl]                                       ; $4760: $56
	and b                                            ; $4761: $a0
	cpl                                              ; $4762: $2f
	ld b, e                                          ; $4763: $43
	jp nc, $f0ac                                     ; $4764: $d2 $ac $f0

	inc e                                            ; $4767: $1c
	ld b, a                                          ; $4768: $47
	ld c, e                                          ; $4769: $4b
	ld b, l                                          ; $476a: $45
	ld d, l                                          ; $476b: $55
	ld a, [hl-]                                      ; $476c: $3a
	jr c, jr_094_47ab                                ; $476d: $38 $3c

	ld c, a                                          ; $476f: $4f
	ld c, h                                          ; $4770: $4c
	and b                                            ; $4771: $a0
	cpl                                              ; $4772: $2f
	ld b, e                                          ; $4773: $43
	ld b, [hl]                                       ; $4774: $46
	ld c, l                                          ; $4775: $4d
	xor h                                            ; $4776: $ac
	db $eb                                           ; $4777: $eb
	db $fc                                           ; $4778: $fc
	ld d, e                                          ; $4779: $53
	jr c, jr_094_47b6                                ; $477a: $38 $3a

	jr c, jr_094_4726                                ; $477c: $38 $a8

	adc e                                            ; $477e: $8b
	ldh a, [$72]                                     ; $477f: $f0 $72
	ld b, d                                          ; $4781: $42
	ldh a, [$f8]                                     ; $4782: $f0 $f8
	inc [hl]                                         ; $4784: $34
	ld a, b                                          ; $4785: $78
	dec a                                            ; $4786: $3d
	ld b, d                                          ; $4787: $42
	inc a                                            ; $4788: $3c
	ld a, [hl-]                                      ; $4789: $3a
	ld [hl], h                                       ; $478a: $74
	and b                                            ; $478b: $a0
	cpl                                              ; $478c: $2f
	ld b, e                                          ; $478d: $43
	ld b, b                                          ; $478e: $40
	ld d, a                                          ; $478f: $57
	ld d, [hl]                                       ; $4790: $56
	inc [hl]                                         ; $4791: $34
	ld b, b                                          ; $4792: $40
	add hl, sp                                       ; $4793: $39
	ld b, h                                          ; $4794: $44
	xor b                                            ; $4795: $a8
	db $eb                                           ; $4796: $eb
	ld l, $52                                        ; $4797: $2e $52
	ld c, [hl]                                       ; $4799: $4e
	inc a                                            ; $479a: $3c
	ld d, b                                          ; $479b: $50
	ld e, b                                          ; $479c: $58
	xor h                                            ; $479d: $ac
	ld [$a0c6], a                                    ; $479e: $ea $c6 $a0
	xor $27                                          ; $47a1: $ee $27
	xor h                                            ; $47a3: $ac
	ld d, h                                          ; $47a4: $54
	ld c, l                                          ; $47a5: $4d
	ld [hl], d                                       ; $47a6: $72
	dec a                                            ; $47a7: $3d
	ld d, h                                          ; $47a8: $54
	ld c, c                                          ; $47a9: $49
	ld b, [hl]                                       ; $47aa: $46

jr_094_47ab:
	ld d, a                                          ; $47ab: $57
	ld d, d                                          ; $47ac: $52
	ld d, c                                          ; $47ad: $51
	and b                                            ; $47ae: $a0
	cpl                                              ; $47af: $2f
	ld b, e                                          ; $47b0: $43
	ld e, [hl]                                       ; $47b1: $5e
	dec sp                                           ; $47b2: $3b
	inc [hl]                                         ; $47b3: $34
	ld e, d                                          ; $47b4: $5a
	ld d, h                                          ; $47b5: $54

jr_094_47b6:
	ld c, d                                          ; $47b6: $4a
	and c                                            ; $47b7: $a1
	ld b, h                                          ; $47b8: $44
	jr c, jr_094_47ab                                ; $47b9: $38 $f0

	cp $9e                                           ; $47bb: $fe $9e
	ld b, h                                          ; $47bd: $44
	ld e, l                                          ; $47be: $5d
	ld e, d                                          ; $47bf: $5a
	xor h                                            ; $47c0: $ac
	db $ed                                           ; $47c1: $ed
	rlca                                             ; $47c2: $07
	ld c, d                                          ; $47c3: $4a
	ld c, b                                          ; $47c4: $48
	dec [hl]                                         ; $47c5: $35
	inc hl                                           ; $47c6: $23
	inc de                                           ; $47c7: $13
	db $ec                                           ; $47c8: $ec
	rst SubAFromHL                                          ; $47c9: $d7
	db $ed                                           ; $47ca: $ed
	ld l, a                                          ; $47cb: $6f
	ld h, c                                          ; $47cc: $61
	ldh a, [$5c]                                     ; $47cd: $f0 $5c
	jr c, jr_094_4813                                ; $47cf: $38 $42

	ld d, e                                          ; $47d1: $53
	xor h                                            ; $47d2: $ac
	ldh a, [rAUD2HIGH]                               ; $47d3: $f0 $19
	inc a                                            ; $47d5: $3c
	ld d, b                                          ; $47d6: $50
	sub h                                            ; $47d7: $94
	ccf                                              ; $47d8: $3f
	ld d, l                                          ; $47d9: $55
	ld c, [hl]                                       ; $47da: $4e
	ld b, d                                          ; $47db: $42
	and b                                            ; $47dc: $a0
	cpl                                              ; $47dd: $2f
	ld b, e                                          ; $47de: $43
	ld l, e                                          ; $47df: $6b
	ld b, h                                          ; $47e0: $44
	inc [hl]                                         ; $47e1: $34
	ldh a, [$74]                                     ; $47e2: $f0 $74
	ldh a, [$7a]                                     ; $47e4: $f0 $7a
	ld b, d                                          ; $47e6: $42
	ldh a, [rAUDVOL]                                 ; $47e7: $f0 $24
	inc a                                            ; $47e9: $3c
	ld c, b                                          ; $47ea: $48
	and b                                            ; $47eb: $a0
	xor $27                                          ; $47ec: $ee $27
	inc [hl]                                         ; $47ee: $34
	ld l, d                                          ; $47ef: $6a
	ld b, d                                          ; $47f0: $42
	db $ed                                           ; $47f1: $ed
	rlca                                             ; $47f2: $07
	ld c, d                                          ; $47f3: $4a
	inc de                                           ; $47f4: $13
	ld [hl], d                                       ; $47f5: $72
	dec a                                            ; $47f6: $3d
	ld d, h                                          ; $47f7: $54
	ld c, c                                          ; $47f8: $49
	ld b, [hl]                                       ; $47f9: $46
	ld c, [hl]                                       ; $47fa: $4e
	ld b, l                                          ; $47fb: $45
	and b                                            ; $47fc: $a0
	cpl                                              ; $47fd: $2f
	ld b, e                                          ; $47fe: $43
	db $ed                                           ; $47ff: $ed
	rlca                                             ; $4800: $07
	and c                                            ; $4801: $a1
	ldh a, [rAUD2HIGH]                               ; $4802: $f0 $19
	inc a                                            ; $4804: $3c
	ld d, b                                          ; $4805: $50
	ld c, h                                          ; $4806: $4c
	inc [hl]                                         ; $4807: $34
	ld e, h                                          ; $4808: $5c
	pop af                                           ; $4809: $f1
	halt                                             ; $480a: $76
	ld h, c                                          ; $480b: $61
	inc de                                           ; $480c: $13
	ldh a, [$5c]                                     ; $480d: $f0 $5c
	pop af                                           ; $480f: $f1
	dec [hl]                                         ; $4810: $35
	jr c, jr_094_4855                                ; $4811: $38 $42

jr_094_4813:
	ld d, e                                          ; $4813: $53
	sub h                                            ; $4814: $94
	ccf                                              ; $4815: $3f
	ld d, l                                          ; $4816: $55
	ld c, [hl]                                       ; $4817: $4e
	ld b, d                                          ; $4818: $42
	and b                                            ; $4819: $a0
	cpl                                              ; $481a: $2f
	ld b, e                                          ; $481b: $43
	ld b, b                                          ; $481c: $40
	ld c, l                                          ; $481d: $4d
	ld c, e                                          ; $481e: $4b
	inc [hl]                                         ; $481f: $34
	ldh a, [$74]                                     ; $4820: $f0 $74
	ldh a, [$7a]                                     ; $4822: $f0 $7a
	ld b, d                                          ; $4824: $42
	ldh a, [rAUDVOL]                                 ; $4825: $f0 $24
	inc de                                           ; $4827: $13
	ld c, d                                          ; $4828: $4a
	ld a, $66                                        ; $4829: $3e $66
	and b                                            ; $482b: $a0
	db $ed                                           ; $482c: $ed
	ld b, e                                          ; $482d: $43
	add l                                            ; $482e: $85
	xor l                                            ; $482f: $ad
	ld b, [hl]                                       ; $4830: $46
	dec sp                                           ; $4831: $3b
	xor h                                            ; $4832: $ac
	db $ec                                           ; $4833: $ec
	push bc                                          ; $4834: $c5
	inc [hl]                                         ; $4835: $34
	ldh a, [$e8]                                     ; $4836: $f0 $e8
	ld d, b                                          ; $4838: $50
	ld a, [hl-]                                      ; $4839: $3a
	ld e, h                                          ; $483a: $5c
	ld d, [hl]                                       ; $483b: $56
	and b                                            ; $483c: $a0
	db $eb                                           ; $483d: $eb
	pop af                                           ; $483e: $f1
	ld c, e                                          ; $483f: $4b
	xor h                                            ; $4840: $ac
	pop af                                           ; $4841: $f1
	ld l, a                                          ; $4842: $6f
	ld b, d                                          ; $4843: $42
	ldh a, [$28]                                     ; $4844: $f0 $28
	ld b, a                                          ; $4846: $47
	ld h, a                                          ; $4847: $67
	dec sp                                           ; $4848: $3b
	ccf                                              ; $4849: $3f
	ld d, d                                          ; $484a: $52
	ld e, c                                          ; $484b: $59
	ld d, c                                          ; $484c: $51
	and b                                            ; $484d: $a0
	cpl                                              ; $484e: $2f
	ld b, e                                          ; $484f: $43
	ld a, [hl-]                                      ; $4850: $3a
	ld b, c                                          ; $4851: $41
	ld b, h                                          ; $4852: $44
	xor h                                            ; $4853: $ac
	adc e                                            ; $4854: $8b

jr_094_4855:
	ldh a, [$72]                                     ; $4855: $f0 $72
	ld c, e                                          ; $4857: $4b
	ld a, b                                          ; $4858: $78
	ccf                                              ; $4859: $3f
	ld d, l                                          ; $485a: $55
	ld c, l                                          ; $485b: $4d
	ld a, [hl-]                                      ; $485c: $3a
	jr c, jr_094_48a0                                ; $485d: $38 $41

	ld b, h                                          ; $485f: $44
	and b                                            ; $4860: $a0
	xor $1e                                          ; $4861: $ee $1e
	ld c, h                                          ; $4863: $4c
	inc [hl]                                         ; $4864: $34
	ldh a, [$ab]                                     ; $4865: $f0 $ab
	ld b, a                                          ; $4867: $47
	ld a, [hl-]                                      ; $4868: $3a
	ld b, c                                          ; $4869: $41
	inc a                                            ; $486a: $3c
	inc de                                           ; $486b: $13
	ld h, e                                          ; $486c: $63
	ldh a, [rAUD1SWEEP]                              ; $486d: $f0 $10
	ld h, e                                          ; $486f: $63
	ldh a, [rAUD1SWEEP]                              ; $4870: $f0 $10
	ldh a, [rHDMA3]                                  ; $4872: $f0 $53
	jr c, jr_094_48bd                                ; $4874: $38 $47

	inc de                                           ; $4876: $13
	ld h, a                                          ; $4877: $67
	ld e, h                                          ; $4878: $5c
	dec a                                            ; $4879: $3d
	ld d, l                                          ; $487a: $55
	ld a, [hl-]                                      ; $487b: $3a
	jr c, jr_094_48b9                                ; $487c: $38 $3b

	ccf                                              ; $487e: $3f
	and b                                            ; $487f: $a0
	cpl                                              ; $4880: $2f
	ld b, e                                          ; $4881: $43
	ld h, h                                          ; $4882: $64
	jr c, jr_094_48e9                                ; $4883: $38 $64

	jr c, jr_094_48bb                                ; $4885: $38 $34

	db $ed                                           ; $4887: $ed
	ld h, d                                          ; $4888: $62
	inc de                                           ; $4889: $13
	ld a, [hl-]                                      ; $488a: $3a
	ld b, d                                          ; $488b: $42
	ld b, a                                          ; $488c: $47
	xor l                                            ; $488d: $ad
	db $eb                                           ; $488e: $eb
	ld l, $52                                        ; $488f: $2e $52
	ld c, [hl]                                       ; $4891: $4e
	inc a                                            ; $4892: $3c

jr_094_4893:
	ld d, b                                          ; $4893: $50
	ld e, b                                          ; $4894: $58
	xor h                                            ; $4895: $ac
	ld [$a0c6], a                                    ; $4896: $ea $c6 $a0
	xor $27                                          ; $4899: $ee $27
	ld c, h                                          ; $489b: $4c
	inc [hl]                                         ; $489c: $34
	ld d, h                                          ; $489d: $54
	ld c, l                                          ; $489e: $4d
	xor h                                            ; $489f: $ac

Call_094_48a0:
jr_094_48a0:
	ld b, h                                          ; $48a0: $44
	jr c, jr_094_4893                                ; $48a1: $38 $f0

	cp $41                                           ; $48a3: $fe $41
	sbc [hl]                                         ; $48a5: $9e
	ld b, a                                          ; $48a6: $47
	db $eb                                           ; $48a7: $eb
	pop af                                           ; $48a8: $f1
	ld c, c                                          ; $48a9: $49
	inc de                                           ; $48aa: $13
	db $ed                                           ; $48ab: $ed
	rlca                                             ; $48ac: $07
	ld c, d                                          ; $48ad: $4a
	ld [hl], d                                       ; $48ae: $72
	dec a                                            ; $48af: $3d
	ld b, l                                          ; $48b0: $45
	and b                                            ; $48b1: $a0
	cpl                                              ; $48b2: $2f
	ld b, e                                          ; $48b3: $43
	ld b, b                                          ; $48b4: $40
	ld c, l                                          ; $48b5: $4d
	inc [hl]                                         ; $48b6: $34
	ldh a, [$74]                                     ; $48b7: $f0 $74

jr_094_48b9:
	ldh a, [$7a]                                     ; $48b9: $f0 $7a

jr_094_48bb:
	db $ec                                           ; $48bb: $ec
	ret c                                            ; $48bc: $d8

jr_094_48bd:
	ld b, d                                          ; $48bd: $42
	and c                                            ; $48be: $a1
	ld b, b                                          ; $48bf: $40
	add hl, sp                                       ; $48c0: $39
	xor h                                            ; $48c1: $ac
	db $ec                                           ; $48c2: $ec
	rst SubAFromHL                                          ; $48c3: $d7
	ld e, h                                          ; $48c4: $5c
	pop af                                           ; $48c5: $f1
	halt                                             ; $48c6: $76
	db $f4                                           ; $48c7: $f4
	rst SubAFromDE                                          ; $48c8: $df
	ldh a, [$5c]                                     ; $48c9: $f0 $5c
	inc a                                            ; $48cb: $3c
	dec sp                                           ; $48cc: $3b
	dec a                                            ; $48cd: $3d
	and b                                            ; $48ce: $a0
	cpl                                              ; $48cf: $2f
	ld b, e                                          ; $48d0: $43
	db $ec                                           ; $48d1: $ec
	reti                                             ; $48d2: $d9


	ld c, b                                          ; $48d3: $48
	and b                                            ; $48d4: $a0
	ld b, [hl]                                       ; $48d5: $46
	ld c, l                                          ; $48d6: $4d
	inc [hl]                                         ; $48d7: $34
	db $eb                                           ; $48d8: $eb
	pop af                                           ; $48d9: $f1
	inc de                                           ; $48da: $13
	ld d, d                                          ; $48db: $52
	ld b, h                                          ; $48dc: $44
	ld a, b                                          ; $48dd: $78
	ccf                                              ; $48de: $3f
	ld a, [hl-]                                      ; $48df: $3a
	jr c, jr_094_492a                                ; $48e0: $38 $48

jr_094_48e2:
	and b                                            ; $48e2: $a0
	cpl                                              ; $48e3: $2f
	ld b, e                                          ; $48e4: $43
	ld b, [hl]                                       ; $48e5: $46
	dec sp                                           ; $48e6: $3b
	inc [hl]                                         ; $48e7: $34
	db $eb                                           ; $48e8: $eb

jr_094_48e9:
	db $fc                                           ; $48e9: $fc
	xor b                                            ; $48ea: $a8
	adc e                                            ; $48eb: $8b
	ldh a, [$72]                                     ; $48ec: $f0 $72
	db $ed                                           ; $48ee: $ed
	ld bc, $424e                                     ; $48ef: $01 $4e $42
	and c                                            ; $48f2: $a1
	jr c, @+$3c                                      ; $48f3: $38 $3a

	jr c, jr_094_48e2                                ; $48f5: $38 $eb

	dec [hl]                                         ; $48f7: $35
	xor h                                            ; $48f8: $ac
	ld c, a                                          ; $48f9: $4f
	add hl, sp                                       ; $48fa: $39
	ld a, d                                          ; $48fb: $7a
	ld c, [hl]                                       ; $48fc: $4e
	and b                                            ; $48fd: $a0
	cpl                                              ; $48fe: $2f
	ld b, e                                          ; $48ff: $43
	adc e                                            ; $4900: $8b
	ldh a, [$72]                                     ; $4901: $f0 $72
	ld b, d                                          ; $4903: $42
	ldh a, [$f8]                                     ; $4904: $f0 $f8
	inc [hl]                                         ; $4906: $34
	ldh a, [$c7]                                     ; $4907: $f0 $c7
	ld c, l                                          ; $4909: $4d
	ld c, [hl]                                       ; $490a: $4e
	dec sp                                           ; $490b: $3b
	ccf                                              ; $490c: $3f
	inc de                                           ; $490d: $13
	add d                                            ; $490e: $82
	dec sp                                           ; $490f: $3b
	ccf                                              ; $4910: $3f
	dec a                                            ; $4911: $3d
	inc a                                            ; $4912: $3c
	ld d, b                                          ; $4913: $50
	inc [hl]                                         ; $4914: $34
	ld a, b                                          ; $4915: $78
	ld c, [hl]                                       ; $4916: $4e
	ld d, d                                          ; $4917: $52
	ld c, d                                          ; $4918: $4a
	inc de                                           ; $4919: $13
	db $ec                                           ; $491a: $ec
	ldh a, [c]                                       ; $491b: $f2
	ld c, d                                          ; $491c: $4a
	ld c, a                                          ; $491d: $4f
	ld [hl], d                                       ; $491e: $72
	ccf                                              ; $491f: $3f
	ccf                                              ; $4920: $3f
	ld b, l                                          ; $4921: $45
	and b                                            ; $4922: $a0
	ld d, d                                          ; $4923: $52
	dec sp                                           ; $4924: $3b
	dec a                                            ; $4925: $3d
	ld d, l                                          ; $4926: $55
	inc [hl]                                         ; $4927: $34
	db $eb                                           ; $4928: $eb
	pop af                                           ; $4929: $f1

jr_094_492a:
	ld c, e                                          ; $492a: $4b
	inc de                                           ; $492b: $13
	ldh a, [rBGP]                                    ; $492c: $f0 $47
	ldh a, [$2a]                                     ; $492e: $f0 $2a
	ld b, a                                          ; $4930: $47
	db $ed                                           ; $4931: $ed
	ccf                                              ; $4932: $3f
	ld a, [hl-]                                      ; $4933: $3a
	ld b, c                                          ; $4934: $41
	ld b, h                                          ; $4935: $44
	inc a                                            ; $4936: $3c
	ld d, b                                          ; $4937: $50
	and b                                            ; $4938: $a0
	ld b, [hl]                                       ; $4939: $46
	dec sp                                           ; $493a: $3b
	inc [hl]                                         ; $493b: $34
	ld d, h                                          ; $493c: $54
	ld d, h                                          ; $493d: $54
	ld b, h                                          ; $493e: $44
	ld a, [hl-]                                      ; $493f: $3a
	ld [hl], h                                       ; $4940: $74
	and b                                            ; $4941: $a0
	cpl                                              ; $4942: $2f
	ld b, e                                          ; $4943: $43
	ld b, [hl]                                       ; $4944: $46
	dec sp                                           ; $4945: $3b
	inc [hl]                                         ; $4946: $34
	db $eb                                           ; $4947: $eb
	db $fc                                           ; $4948: $fc
	xor b                                            ; $4949: $a8
	jp hl                                            ; $494a: $e9


	or h                                             ; $494b: $b4
	and b                                            ; $494c: $a0
	db $eb                                           ; $494d: $eb
	pop af                                           ; $494e: $f1
	inc de                                           ; $494f: $13
	ld a, b                                          ; $4950: $78
	ccf                                              ; $4951: $3f
	ld d, d                                          ; $4952: $52
	ld a, c                                          ; $4953: $79
	ld b, c                                          ; $4954: $41
	inc a                                            ; $4955: $3c
	and c                                            ; $4956: $a1
	cpl                                              ; $4957: $2f
	ld b, e                                          ; $4958: $43
	ld e, [hl]                                       ; $4959: $5e
	dec sp                                           ; $495a: $3b
	inc [hl]                                         ; $495b: $34
	jr c, jr_094_49ac                                ; $495c: $38 $4e

	ld e, l                                          ; $495e: $5d
	ld e, d                                          ; $495f: $5a
	xor l                                            ; $4960: $ad
	ldh a, [$08]                                     ; $4961: $f0 $08
	ld d, b                                          ; $4963: $50
	inc [hl]                                         ; $4964: $34
	db $ed                                           ; $4965: $ed
	ld [hl], d                                       ; $4966: $72
	sbc [hl]                                         ; $4967: $9e
	ld c, d                                          ; $4968: $4a
	ld [hl], d                                       ; $4969: $72
	ccf                                              ; $496a: $3f
	ld c, [hl]                                       ; $496b: $4e
	ld b, l                                          ; $496c: $45
	and b                                            ; $496d: $a0
	ld l, [hl]                                       ; $496e: $6e
	ld b, h                                          ; $496f: $44
	ld c, a                                          ; $4970: $4f
	add hl, sp                                       ; $4971: $39
	xor h                                            ; $4972: $ac
	ld l, h                                          ; $4973: $6c
	dec sp                                           ; $4974: $3b
	ld c, c                                          ; $4975: $49
	ld c, a                                          ; $4976: $4f
	ld a, [hl-]                                      ; $4977: $3a
	jr c, jr_094_49bb                                ; $4978: $38 $41

	ld b, h                                          ; $497a: $44
	inc a                                            ; $497b: $3c
	ld d, b                                          ; $497c: $50
	xor b                                            ; $497d: $a8
	ld h, h                                          ; $497e: $64
	pop af                                           ; $497f: $f1
	or e                                             ; $4980: $b3
	ld h, c                                          ; $4981: $61
	ld d, [hl]                                       ; $4982: $56
	ld e, c                                          ; $4983: $59
	ld b, c                                          ; $4984: $41
	and b                                            ; $4985: $a0
	ld a, [hl-]                                      ; $4986: $3a
	ld b, c                                          ; $4987: $41
	ld b, h                                          ; $4988: $44
	ld b, l                                          ; $4989: $45
	inc [hl]                                         ; $498a: $34
	xor $27                                          ; $498b: $ee $27
	xor b                                            ; $498d: $a8
	add hl, sp                                       ; $498e: $39
	ld c, [hl]                                       ; $498f: $4e
	ld e, b                                          ; $4990: $58
	jr c, jr_094_49cd                                ; $4991: $38 $3a

	ld [hl], h                                       ; $4993: $74
	and b                                            ; $4994: $a0
	ld c, a                                          ; $4995: $4f
	add hl, sp                                       ; $4996: $39
	inc [hl]                                         ; $4997: $34
	db $eb                                           ; $4998: $eb
	ld a, h                                          ; $4999: $7c
	ld b, c                                          ; $499a: $41
	ld b, h                                          ; $499b: $44
	inc de                                           ; $499c: $13
	inc a                                            ; $499d: $3c
	ld d, b                                          ; $499e: $50
	xor b                                            ; $499f: $a8
	ld d, h                                          ; $49a0: $54
	ld c, l                                          ; $49a1: $4d
	inc a                                            ; $49a2: $3c
	ld d, b                                          ; $49a3: $50
	inc [hl]                                         ; $49a4: $34
	db $ec                                           ; $49a5: $ec
	ldh a, [c]                                       ; $49a6: $f2
	ld h, d                                          ; $49a7: $62
	ld [hl], d                                       ; $49a8: $72
	ld b, a                                          ; $49a9: $47
	ld h, a                                          ; $49aa: $67
	ld d, l                                          ; $49ab: $55

jr_094_49ac:
	xor $1d                                          ; $49ac: $ee $1d
	inc de                                           ; $49ae: $13
	ld c, d                                          ; $49af: $4a
	ld a, $66                                        ; $49b0: $3e $66
	add hl, sp                                       ; $49b2: $39
	and b                                            ; $49b3: $a0
	cpl                                              ; $49b4: $2f
	ld b, e                                          ; $49b5: $43
	db $ec                                           ; $49b6: $ec
	sub $34                                          ; $49b7: $d6 $34
	db $ec                                           ; $49b9: $ec
	db $db                                           ; $49ba: $db

jr_094_49bb:
	and b                                            ; $49bb: $a0
	ld [hl-], a                                      ; $49bc: $32
	pop af                                           ; $49bd: $f1
	ld [hl+], a                                      ; $49be: $22
	pop af                                           ; $49bf: $f1
	daa                                              ; $49c0: $27
	pop af                                           ; $49c1: $f1
	ld [hl+], a                                      ; $49c2: $22
	pop af                                           ; $49c3: $f1
	daa                                              ; $49c4: $27
	inc sp                                           ; $49c5: $33
	xor $27                                          ; $49c6: $ee $27
	ld h, d                                          ; $49c8: $62
	inc de                                           ; $49c9: $13
	ld d, d                                          ; $49ca: $52
	jr c, jr_094_4a0a                                ; $49cb: $38 $3d

jr_094_49cd:
	ld d, b                                          ; $49cd: $50
	inc [hl]                                         ; $49ce: $34
	ld d, d                                          ; $49cf: $52
	dec a                                            ; $49d0: $3d
	ld a, b                                          ; $49d1: $78
	ld c, [hl]                                       ; $49d2: $4e
	inc a                                            ; $49d3: $3c
	ld d, b                                          ; $49d4: $50
	ld a, [hl-]                                      ; $49d5: $3a
	xor b                                            ; $49d6: $a8
	xor $1e                                          ; $49d7: $ee $1e
	ldh a, [$30]                                     ; $49d9: $f0 $30
	ldh a, [$28]                                     ; $49db: $f0 $28
	ld c, e                                          ; $49dd: $4b
	ldh a, [$2f]                                     ; $49de: $f0 $2f
	ld e, c                                          ; $49e0: $59
	add c                                            ; $49e1: $81
	ld b, h                                          ; $49e2: $44
	adc l                                            ; $49e3: $8d
	and b                                            ; $49e4: $a0
	cpl                                              ; $49e5: $2f
	ld b, e                                          ; $49e6: $43
	db $eb                                           ; $49e7: $eb
	ld [hl], h                                       ; $49e8: $74
	xor h                                            ; $49e9: $ac
	db $eb                                           ; $49ea: $eb
	ld [hl], h                                       ; $49eb: $74
	and b                                            ; $49ec: $a0
	db $eb                                           ; $49ed: $eb
	pop af                                           ; $49ee: $f1
	scf                                              ; $49ef: $37
	inc de                                           ; $49f0: $13
	ld l, e                                          ; $49f1: $6b
	inc [hl]                                         ; $49f2: $34
	pop af                                           ; $49f3: $f1
	halt                                             ; $49f4: $76
	ld b, b                                          ; $49f5: $40
	pop af                                           ; $49f6: $f1
	halt                                             ; $49f7: $76
	ld b, b                                          ; $49f8: $40
	ldh a, [rAUDVOL]                                 ; $49f9: $f0 $24
	ld a, $3f                                        ; $49fb: $3e $3f
	ld c, [hl]                                       ; $49fd: $4e
	ld b, d                                          ; $49fe: $42
	and b                                            ; $49ff: $a0
	jr c, jr_094_4a70                                ; $4a00: $38 $6e

	inc [hl]                                         ; $4a02: $34
	ld l, e                                          ; $4a03: $6b
	ld c, d                                          ; $4a04: $4a
	ld c, a                                          ; $4a05: $4f
	ld a, [hl-]                                      ; $4a06: $3a
	jr c, jr_094_4a4e                                ; $4a07: $38 $45

	xor b                                            ; $4a09: $a8

jr_094_4a0a:
	ld a, [hl-]                                      ; $4a0a: $3a
	ld [hl], h                                       ; $4a0b: $74
	and b                                            ; $4a0c: $a0
	cpl                                              ; $4a0d: $2f
	ld b, e                                          ; $4a0e: $43
	xor $1f                                          ; $4a0f: $ee $1f
	inc [hl]                                         ; $4a11: $34
	xor $1f                                          ; $4a12: $ee $1f
	and b                                            ; $4a14: $a0
	ld e, e                                          ; $4a15: $5b
	ld d, [hl]                                       ; $4a16: $56
	ld b, [hl]                                       ; $4a17: $46
	xor h                                            ; $4a18: $ac
	db $eb                                           ; $4a19: $eb
	pop af                                           ; $4a1a: $f1
	ldh a, [$bc]                                     ; $4a1b: $f0 $bc
	ld b, a                                          ; $4a1d: $47
	ld h, a                                          ; $4a1e: $67
	dec sp                                           ; $4a1f: $3b
	ccf                                              ; $4a20: $3f
	ccf                                              ; $4a21: $3f
	and b                                            ; $4a22: $a0
	xor $2d                                          ; $4a23: $ee $2d
	xor $2d                                          ; $4a25: $ee $2d
	xor b                                            ; $4a27: $a8
	ld [hl-], a                                      ; $4a28: $32
	pop af                                           ; $4a29: $f1
	ld [hl+], a                                      ; $4a2a: $22
	pop af                                           ; $4a2b: $f1
	daa                                              ; $4a2c: $27
	pop af                                           ; $4a2d: $f1
	ld [hl+], a                                      ; $4a2e: $22
	pop af                                           ; $4a2f: $f1
	daa                                              ; $4a30: $27
	inc sp                                           ; $4a31: $33
	ldh a, [$2f]                                     ; $4a32: $f0 $2f
	ld e, c                                          ; $4a34: $59
	add c                                            ; $4a35: $81
	ldh a, [c]                                       ; $4a36: $f2
	ld e, l                                          ; $4a37: $5d
	ldh a, [$be]                                     ; $4a38: $f0 $be
	sub a                                            ; $4a3a: $97
	and b                                            ; $4a3b: $a0
	ldh a, [$0a]                                     ; $4a3c: $f0 $0a
	ld d, l                                          ; $4a3e: $55
	ld h, a                                          ; $4a3f: $67
	dec sp                                           ; $4a40: $3b
	ccf                                              ; $4a41: $3f
	ccf                                              ; $4a42: $3f
	and b                                            ; $4a43: $a0
	db $eb                                           ; $4a44: $eb
	ld [hl], h                                       ; $4a45: $74
	ld b, l                                          ; $4a46: $45
	and b                                            ; $4a47: $a0
	db $eb                                           ; $4a48: $eb
	ccf                                              ; $4a49: $3f
	xor b                                            ; $4a4a: $a8
	db $eb                                           ; $4a4b: $eb
	pop af                                           ; $4a4c: $f1
	inc [hl]                                         ; $4a4d: $34

jr_094_4a4e:
	sbc h                                            ; $4a4e: $9c
	ld e, c                                          ; $4a4f: $59
	dec sp                                           ; $4a50: $3b
	ld c, c                                          ; $4a51: $49
	xor h                                            ; $4a52: $ac
	or $00                                           ; $4a53: $f6 $00
	ldh a, [$e7]                                     ; $4a55: $f0 $e7
	dec sp                                           ; $4a57: $3b
	ccf                                              ; $4a58: $3f
	dec a                                            ; $4a59: $3d
	ld l, h                                          ; $4a5a: $6c
	dec a                                            ; $4a5b: $3d
	jr c, jr_094_4aa8                                ; $4a5c: $38 $4a

	ld c, b                                          ; $4a5e: $48
	and b                                            ; $4a5f: $a0
	cpl                                              ; $4a60: $2f
	ld b, e                                          ; $4a61: $43
	ldh a, [$34]                                     ; $4a62: $f0 $34
	ld b, a                                          ; $4a64: $47
	ld a, a                                          ; $4a65: $7f
	ld b, a                                          ; $4a66: $47
	ld a, $3f                                        ; $4a67: $3e $3f
	ld a, [hl-]                                      ; $4a69: $3a
	jr c, jr_094_4ab1                                ; $4a6a: $38 $45

	and b                                            ; $4a6c: $a0
	xor $1e                                          ; $4a6d: $ee $1e
	inc [hl]                                         ; $4a6f: $34

jr_094_4a70:
	db $ec                                           ; $4a70: $ec
	reti                                             ; $4a71: $d9


	ld d, h                                          ; $4a72: $54
	add hl, sp                                       ; $4a73: $39
	jr c, jr_094_4aaf                                ; $4a74: $38 $39

	ld b, d                                          ; $4a76: $42
	inc de                                           ; $4a77: $13
	adc e                                            ; $4a78: $8b
	ld e, h                                          ; $4a79: $5c
	ld a, [hl-]                                      ; $4a7a: $3a
	ld b, c                                          ; $4a7b: $41
	ld c, d                                          ; $4a7c: $4a
	ld d, c                                          ; $4a7d: $51
	inc a                                            ; $4a7e: $3c
	and c                                            ; $4a7f: $a1
	cpl                                              ; $4a80: $2f
	ld b, e                                          ; $4a81: $43
	ld e, [hl]                                       ; $4a82: $5e
	dec sp                                           ; $4a83: $3b
	xor h                                            ; $4a84: $ac
	ldh a, [$08]                                     ; $4a85: $f0 $08
	ld d, b                                          ; $4a87: $50
	inc [hl]                                         ; $4a88: $34
	db $ed                                           ; $4a89: $ed
	ld e, a                                          ; $4a8a: $5f
	ld c, c                                          ; $4a8b: $49
	ld a, $3f                                        ; $4a8c: $3e $3f
	ld b, h                                          ; $4a8e: $44
	ld c, h                                          ; $4a8f: $4c
	ld c, b                                          ; $4a90: $48
	and b                                            ; $4a91: $a0
	db $ec                                           ; $4a92: $ec
	cp c                                             ; $4a93: $b9
	xor b                                            ; $4a94: $a8
	db $eb                                           ; $4a95: $eb
	pop af                                           ; $4a96: $f1
	ld c, c                                          ; $4a97: $49
	inc de                                           ; $4a98: $13
	xor $06                                          ; $4a99: $ee $06
	ld e, e                                          ; $4a9b: $5b
	ld d, [hl]                                       ; $4a9c: $56
	ld a, [hl-]                                      ; $4a9d: $3a
	ld d, l                                          ; $4a9e: $55
	ccf                                              ; $4a9f: $3f
	ld c, b                                          ; $4aa0: $48
	and b                                            ; $4aa1: $a0
	cpl                                              ; $4aa2: $2f
	ld b, e                                          ; $4aa3: $43
	xor $10                                          ; $4aa4: $ee $10
	dec [hl]                                         ; $4aa6: $35
	rla                                              ; $4aa7: $17

jr_094_4aa8:
	ld [hl-], a                                      ; $4aa8: $32
	db $eb                                           ; $4aa9: $eb
	ccf                                              ; $4aaa: $3f
	xor b                                            ; $4aab: $a8
	pop af                                           ; $4aac: $f1

Jump_094_4aad:
	or [hl]                                          ; $4aad: $b6
	ld c, e                                          ; $4aae: $4b

jr_094_4aaf:
	pop af                                           ; $4aaf: $f1
	ld a, [hl]                                       ; $4ab0: $7e

jr_094_4ab1:
	ld h, d                                          ; $4ab1: $62
	add b                                            ; $4ab2: $80
	jr c, jr_094_4af4                                ; $4ab3: $38 $3f

	jr c, jr_094_4b09                                ; $4ab5: $38 $52

	ld d, c                                          ; $4ab7: $51
	and e                                            ; $4ab8: $a3
	ld h, h                                          ; $4ab9: $64
	jr c, jr_094_4af0                                ; $4aba: $38 $34

	xor $27                                          ; $4abc: $ee $27
	xor b                                            ; $4abe: $a8
	ld l, e                                          ; $4abf: $6b
	ld l, [hl]                                       ; $4ac0: $6e
	dec sp                                           ; $4ac1: $3b
	ccf                                              ; $4ac2: $3f
	ld b, c                                          ; $4ac3: $41
	ld b, h                                          ; $4ac4: $44
	and c                                            ; $4ac5: $a1
	ld b, [hl]                                       ; $4ac6: $46
	dec sp                                           ; $4ac7: $3b
	inc [hl]                                         ; $4ac8: $34
	ld c, a                                          ; $4ac9: $4f
	add hl, sp                                       ; $4aca: $39
	ld h, a                                          ; $4acb: $67
	inc a                                            ; $4acc: $3c
	ld a, [hl-]                                      ; $4acd: $3a
	jr c, jr_094_4b19                                ; $4ace: $38 $49

	xor h                                            ; $4ad0: $ac
	db $eb                                           ; $4ad1: $eb
	pop af                                           ; $4ad2: $f1
	ld d, e                                          ; $4ad3: $53
	add hl, sp                                       ; $4ad4: $39
	ld c, [hl]                                       ; $4ad5: $4e
	ld e, b                                          ; $4ad6: $58
	jr c, jr_094_4b15                                ; $4ad7: $38 $3c

	ld d, b                                          ; $4ad9: $50
	xor b                                            ; $4ada: $a8
	or h                                             ; $4adb: $b4
	inc [hl]                                         ; $4adc: $34
	ld e, b                                          ; $4add: $58
	ld b, l                                          ; $4ade: $45
	ld a, [hl-]                                      ; $4adf: $3a
	ld d, b                                          ; $4ae0: $50
	and b                                            ; $4ae1: $a0

jr_094_4ae2:
	cpl                                              ; $4ae2: $2f
	ld b, e                                          ; $4ae3: $43
	ld c, b                                          ; $4ae4: $48
	di                                               ; $4ae5: $f3
	ld d, $53                                        ; $4ae6: $16 $53
	ld a, $38                                        ; $4ae8: $3e $38
	pop af                                           ; $4aea: $f1
	or e                                             ; $4aeb: $b3
	di                                               ; $4aec: $f3
	jp c, $eba0                                      ; $4aed: $da $a0 $eb

jr_094_4af0:
	pop af                                           ; $4af0: $f1
	inc de                                           ; $4af1: $13
	ld a, b                                          ; $4af2: $78
	ccf                                              ; $4af3: $3f

jr_094_4af4:
	ld c, [hl]                                       ; $4af4: $4e
	ld c, d                                          ; $4af5: $4a
	ld a, $66                                        ; $4af6: $3e $66
	add hl, sp                                       ; $4af8: $39
	and c                                            ; $4af9: $a1
	ld c, a                                          ; $4afa: $4f
	add hl, sp                                       ; $4afb: $39
	inc [hl]                                         ; $4afc: $34
	ld l, h                                          ; $4afd: $6c
	dec sp                                           ; $4afe: $3b
	ld c, c                                          ; $4aff: $49
	ld c, a                                          ; $4b00: $4f
	ld a, [hl-]                                      ; $4b01: $3a
	jr c, jr_094_4b3e                                ; $4b02: $38 $3a

	ld [hl], h                                       ; $4b04: $74
	xor b                                            ; $4b05: $a8
	ld h, h                                          ; $4b06: $64
	pop af                                           ; $4b07: $f1
	or e                                             ; $4b08: $b3

jr_094_4b09:
	ld h, c                                          ; $4b09: $61
	ld d, [hl]                                       ; $4b0a: $56
	ld e, c                                          ; $4b0b: $59
	ld b, c                                          ; $4b0c: $41
	and b                                            ; $4b0d: $a0
	add hl, sp                                       ; $4b0e: $39
	ld c, [hl]                                       ; $4b0f: $4e
	ld e, b                                          ; $4b10: $58
	jr c, jr_094_4b5e                                ; $4b11: $38 $4b

	xor h                                            ; $4b13: $ac
	ld a, [hl-]                                      ; $4b14: $3a

jr_094_4b15:
	jr c, jr_094_4b61                                ; $4b15: $38 $4a

	ld a, $66                                        ; $4b17: $3e $66

jr_094_4b19:
	add hl, sp                                       ; $4b19: $39
	xor b                                            ; $4b1a: $a8
	ld c, a                                          ; $4b1b: $4f
	add hl, sp                                       ; $4b1c: $39
	inc [hl]                                         ; $4b1d: $34
	db $eb                                           ; $4b1e: $eb
	ld a, h                                          ; $4b1f: $7c
	ld b, c                                          ; $4b20: $41
	ld b, h                                          ; $4b21: $44
	inc a                                            ; $4b22: $3c
	ld d, b                                          ; $4b23: $50
	and b                                            ; $4b24: $a0
	ld e, e                                          ; $4b25: $5b
	ld d, [hl]                                       ; $4b26: $56
	ld b, [hl]                                       ; $4b27: $46
	inc [hl]                                         ; $4b28: $34
	ld a, d                                          ; $4b29: $7a
	ld e, a                                          ; $4b2a: $5f
	add hl, sp                                       ; $4b2b: $39
	ld b, l                                          ; $4b2c: $45
	xor b                                            ; $4b2d: $a8
	db $eb                                           ; $4b2e: $eb
	pop af                                           ; $4b2f: $f1
	inc [hl]                                         ; $4b30: $34
	ldh a, [$bc]                                     ; $4b31: $f0 $bc
	ld b, a                                          ; $4b33: $47
	ld h, a                                          ; $4b34: $67
	dec sp                                           ; $4b35: $3b
	ccf                                              ; $4b36: $3f
	ccf                                              ; $4b37: $3f
	and b                                            ; $4b38: $a0
	ldh a, [$0a]                                     ; $4b39: $f0 $0a
	ld d, l                                          ; $4b3b: $55
	ld h, a                                          ; $4b3c: $67
	ld e, h                                          ; $4b3d: $5c

jr_094_4b3e:
	ld a, [hl-]                                      ; $4b3e: $3a
	ld e, b                                          ; $4b3f: $58
	jr c, jr_094_4ae2                                ; $4b40: $38 $a0

	db $eb                                           ; $4b42: $eb
	ccf                                              ; $4b43: $3f
	xor b                                            ; $4b44: $a8
	ldh a, [$5d]                                     ; $4b45: $f0 $5d
	ld a, [hl-]                                      ; $4b47: $3a
	db $eb                                           ; $4b48: $eb
	pop af                                           ; $4b49: $f1
	ld c, d                                          ; $4b4a: $4a
	and b                                            ; $4b4b: $a0
	ld b, b                                          ; $4b4c: $40
	ld c, l                                          ; $4b4d: $4d
	ld e, e                                          ; $4b4e: $5b
	ld d, [hl]                                       ; $4b4f: $56
	xor h                                            ; $4b50: $ac
	db $eb                                           ; $4b51: $eb
	pop af                                           ; $4b52: $f1
	ld d, e                                          ; $4b53: $53
	sbc c                                            ; $4b54: $99
	dec sp                                           ; $4b55: $3b
	ccf                                              ; $4b56: $3f
	ld c, [hl]                                       ; $4b57: $4e
	inc a                                            ; $4b58: $3c
	ld d, b                                          ; $4b59: $50
	xor b                                            ; $4b5a: $a8
	db $eb                                           ; $4b5b: $eb
	sbc a                                            ; $4b5c: $9f
	and b                                            ; $4b5d: $a0

jr_094_4b5e:
	cpl                                              ; $4b5e: $2f
	ld b, e                                          ; $4b5f: $43
	di                                               ; $4b60: $f3

jr_094_4b61:
	ld d, $53                                        ; $4b61: $16 $53
	ld a, $38                                        ; $4b63: $3e $38
	pop af                                           ; $4b65: $f1
	or e                                             ; $4b66: $b3
	di                                               ; $4b67: $f3
	jp c, Jump_094_5ba0                              ; $4b68: $da $a0 $5b

	ld d, [hl]                                       ; $4b6b: $56
	ld b, [hl]                                       ; $4b6c: $46
	xor h                                            ; $4b6d: $ac
	ldh a, [$0a]                                     ; $4b6e: $f0 $0a
	ld d, l                                          ; $4b70: $55
	db $ec                                           ; $4b71: $ec
	ldh a, [c]                                       ; $4b72: $f2
	ld [hl], d                                       ; $4b73: $72
	ld b, a                                          ; $4b74: $47
	call $eea0                                       ; $4b75: $cd $a0 $ee
	dec l                                            ; $4b78: $2d
	xor $2d                                          ; $4b79: $ee $2d
	xor b                                            ; $4b7b: $a8
	ld h, h                                          ; $4b7c: $64
	jr c, jr_094_4bb3                                ; $4b7d: $38 $34

	xor $1d                                          ; $4b7f: $ee $1d
	pop af                                           ; $4b81: $f1
	dec d                                            ; $4b82: $15
	ld c, l                                          ; $4b83: $4d
	ld c, [hl]                                       ; $4b84: $4e
	ld a, [hl-]                                      ; $4b85: $3a
	ld b, l                                          ; $4b86: $45
	and b                                            ; $4b87: $a0
	ld e, e                                          ; $4b88: $5b
	ld d, [hl]                                       ; $4b89: $56
	ld b, [hl]                                       ; $4b8a: $46
	inc [hl]                                         ; $4b8b: $34
	ld e, b                                          ; $4b8c: $58
	ld b, l                                          ; $4b8d: $45
	ld a, [hl-]                                      ; $4b8e: $3a
	ld d, b                                          ; $4b8f: $50
	and b                                            ; $4b90: $a0
	db $eb                                           ; $4b91: $eb
	ld e, l                                          ; $4b92: $5d
	xor h                                            ; $4b93: $ac
	dec a                                            ; $4b94: $3d
	dec sp                                           ; $4b95: $3b
	db $f4                                           ; $4b96: $f4
	ld d, b                                          ; $4b97: $50
	ld d, a                                          ; $4b98: $57
	ei                                               ; $4b99: $fb
	ld a, b                                          ; $4b9a: $78
	pop af                                           ; $4b9b: $f1
	ld [hl], d                                       ; $4b9c: $72
	ld e, b                                          ; $4b9d: $58
	ld a, c                                          ; $4b9e: $79
	ccf                                              ; $4b9f: $3f
	inc de                                           ; $4ba0: $13
	ld c, a                                          ; $4ba1: $4f
	ld d, b                                          ; $4ba2: $50
	dec sp                                           ; $4ba3: $3b
	dec a                                            ; $4ba4: $3d
	ld b, l                                          ; $4ba5: $45
	and b                                            ; $4ba6: $a0
	cpl                                              ; $4ba7: $2f
	ld b, e                                          ; $4ba8: $43
	ld b, [hl]                                       ; $4ba9: $46
	dec sp                                           ; $4baa: $3b
	inc [hl]                                         ; $4bab: $34
	adc e                                            ; $4bac: $8b
	ldh a, [$72]                                     ; $4bad: $f0 $72
	inc de                                           ; $4baf: $13
	ld c, a                                          ; $4bb0: $4f
	add hl, sp                                       ; $4bb1: $39
	ld h, a                                          ; $4bb2: $67

jr_094_4bb3:
	ld d, l                                          ; $4bb3: $55
	ld b, d                                          ; $4bb4: $42
	inc a                                            ; $4bb5: $3c
	and c                                            ; $4bb6: $a1
	ld d, h                                          ; $4bb7: $54
	ld c, l                                          ; $4bb8: $4d
	inc a                                            ; $4bb9: $3c
	ld d, b                                          ; $4bba: $50
	xor $27                                          ; $4bbb: $ee $27
	ld c, c                                          ; $4bbd: $49
	xor h                                            ; $4bbe: $ac
	db $ec                                           ; $4bbf: $ec
	ldh a, [c]                                       ; $4bc0: $f2
	ld h, d                                          ; $4bc1: $62
	ld [hl], d                                       ; $4bc2: $72
	ld b, a                                          ; $4bc3: $47
	ld h, a                                          ; $4bc4: $67
	ld d, l                                          ; $4bc5: $55
	inc de                                           ; $4bc6: $13
	xor $1d                                          ; $4bc7: $ee $1d
	ld h, d                                          ; $4bc9: $62
	ld a, $3f                                        ; $4bca: $3e $3f
	ld c, [hl]                                       ; $4bcc: $4e
	ld b, c                                          ; $4bcd: $41
	ld b, h                                          ; $4bce: $44
	and b                                            ; $4bcf: $a0
	cpl                                              ; $4bd0: $2f
	ld b, e                                          ; $4bd1: $43
	db $eb                                           ; $4bd2: $eb
	db $fc                                           ; $4bd3: $fc
	xor h                                            ; $4bd4: $ac
	ld d, h                                          ; $4bd5: $54
	ld d, h                                          ; $4bd6: $54
	ld b, a                                          ; $4bd7: $47
	ld a, b                                          ; $4bd8: $78
	ld a, [hl-]                                      ; $4bd9: $3a
	jr c, jr_094_4c1e                                ; $4bda: $38 $42

	inc a                                            ; $4bdc: $3c
	ld a, [hl-]                                      ; $4bdd: $3a
	and c                                            ; $4bde: $a1
	ld d, h                                          ; $4bdf: $54
	ld b, c                                          ; $4be0: $41
	ld a, [hl-]                                      ; $4be1: $3a
	inc [hl]                                         ; $4be2: $34
	db $eb                                           ; $4be3: $eb
	ld a, h                                          ; $4be4: $7c
	ldh a, [$28]                                     ; $4be5: $f0 $28
	inc de                                           ; $4be7: $13
	ld b, a                                          ; $4be8: $47
	ld c, e                                          ; $4be9: $4b
	inc [hl]                                         ; $4bea: $34
	ld a, b                                          ; $4beb: $78
	ld a, [hl-]                                      ; $4bec: $3a
	jr c, jr_094_4c2a                                ; $4bed: $38 $3b

	ccf                                              ; $4bef: $3f
	add d                                            ; $4bf0: $82
	dec sp                                           ; $4bf1: $3b
	ccf                                              ; $4bf2: $3f
	dec a                                            ; $4bf3: $3d
	adc l                                            ; $4bf4: $8d
	and b                                            ; $4bf5: $a0
	cpl                                              ; $4bf6: $2f
	ld b, e                                          ; $4bf7: $43
	ld c, e                                          ; $4bf8: $4b
	ld e, c                                          ; $4bf9: $59
	ld [hl], h                                       ; $4bfa: $74
	inc [hl]                                         ; $4bfb: $34
	ret nz                                           ; $4bfc: $c0

	and b                                            ; $4bfd: $a0
	ld l, e                                          ; $4bfe: $6b
	ld b, h                                          ; $4bff: $44
	xor h                                            ; $4c00: $ac
	xor $27                                          ; $4c01: $ee $27
	ld b, a                                          ; $4c03: $47
	ldh a, [rHDMA3]                                  ; $4c04: $f0 $53
	jr c, jr_094_4c45                                ; $4c06: $38 $3d

	inc a                                            ; $4c08: $3c
	dec sp                                           ; $4c09: $3b
	dec a                                            ; $4c0a: $3d
	ld b, d                                          ; $4c0b: $42
	inc a                                            ; $4c0c: $3c
	and c                                            ; $4c0d: $a1
	cpl                                              ; $4c0e: $2f
	ld b, e                                          ; $4c0f: $43
	rst JumpTable                                          ; $4c10: $c7
	jr c, jr_094_4c4c                                ; $4c11: $38 $39

	pop af                                           ; $4c13: $f1
	dec bc                                           ; $4c14: $0b
	inc de                                           ; $4c15: $13
	db $ec                                           ; $4c16: $ec
	ret c                                            ; $4c17: $d8

	ld e, l                                          ; $4c18: $5d
	ld e, d                                          ; $4c19: $5a
	ld c, b                                          ; $4c1a: $48
	and b                                            ; $4c1b: $a0
	xor $27                                          ; $4c1c: $ee $27

jr_094_4c1e:
	ld d, e                                          ; $4c1e: $53
	jr c, jr_094_4c5b                                ; $4c1f: $38 $3a

	ld d, l                                          ; $4c21: $55
	ccf                                              ; $4c22: $3f
	xor h                                            ; $4c23: $ac
	pop af                                           ; $4c24: $f1
	xor b                                            ; $4c25: $a8
	ld a, $40                                        ; $4c26: $3e $40
	add hl, sp                                       ; $4c28: $39
	ld b, a                                          ; $4c29: $47

jr_094_4c2a:
	ld a, $3f                                        ; $4c2a: $3e $3f
	dec a                                            ; $4c2c: $3d
	dec sp                                           ; $4c2d: $3b
	ccf                                              ; $4c2e: $3f
	inc de                                           ; $4c2f: $13
	add d                                            ; $4c30: $82
	dec sp                                           ; $4c31: $3b
	ld c, c                                          ; $4c32: $49
	jr c, jr_094_4c74                                ; $4c33: $38 $3f

	ld l, [hl]                                       ; $4c35: $6e
	ld c, [hl]                                       ; $4c36: $4e
	ld b, l                                          ; $4c37: $45
	and b                                            ; $4c38: $a0
	cpl                                              ; $4c39: $2f
	ld b, e                                          ; $4c3a: $43
	pop af                                           ; $4c3b: $f1
	or d                                             ; $4c3c: $b2
	pop af                                           ; $4c3d: $f1
	ld c, b                                          ; $4c3e: $48
	xor h                                            ; $4c3f: $ac
	db $ed                                           ; $4c40: $ed
	sub [hl]                                         ; $4c41: $96
	ld a, [hl-]                                      ; $4c42: $3a
	ld d, h                                          ; $4c43: $54
	ld c, c                                          ; $4c44: $49

jr_094_4c45:
	ld d, c                                          ; $4c45: $51
	ld c, [hl]                                       ; $4c46: $4e
	ld a, [hl-]                                      ; $4c47: $3a
	and b                                            ; $4c48: $a0
	xor $27                                          ; $4c49: $ee $27
	ld b, d                                          ; $4c4b: $42

jr_094_4c4c:
	ldh a, [$bf]                                     ; $4c4c: $f0 $bf
	ldh a, [$c6]                                     ; $4c4e: $f0 $c6
	ldh a, [$64]                                     ; $4c50: $f0 $64
	pop af                                           ; $4c52: $f1
	inc b                                            ; $4c53: $04
	ld d, a                                          ; $4c54: $57
	ld d, e                                          ; $4c55: $53
	inc de                                           ; $4c56: $13
	add a                                            ; $4c57: $87
	ldh a, [$5d]                                     ; $4c58: $f0 $5d
	db $ec                                           ; $4c5a: $ec

jr_094_4c5b:
	jr nz, jr_094_4cac                               ; $4c5b: $20 $4f

	add hl, sp                                       ; $4c5d: $39
	ld h, a                                          ; $4c5e: $67
	ld d, l                                          ; $4c5f: $55
	adc l                                            ; $4c60: $8d
	xor b                                            ; $4c61: $a8
	db $ec                                           ; $4c62: $ec
	ld sp, $2fa0                                     ; $4c63: $31 $a0 $2f
	ld b, e                                          ; $4c66: $43
	ld b, b                                          ; $4c67: $40
	add hl, sp                                       ; $4c68: $39
	inc a                                            ; $4c69: $3c
	inc [hl]                                         ; $4c6a: $34
	db $eb                                           ; $4c6b: $eb
	db $fc                                           ; $4c6c: $fc
	ld c, e                                          ; $4c6d: $4b
	xor h                                            ; $4c6e: $ac
	ld a, b                                          ; $4c6f: $78
	ld a, [hl-]                                      ; $4c70: $3a
	jr c, jr_094_4cb5                                ; $4c71: $38 $42

	inc a                                            ; $4c73: $3c

jr_094_4c74:
	ld c, b                                          ; $4c74: $48
	and b                                            ; $4c75: $a0
	cpl                                              ; $4c76: $2f
	ld b, e                                          ; $4c77: $43
	ld b, b                                          ; $4c78: $40
	ld d, a                                          ; $4c79: $57
	ld d, [hl]                                       ; $4c7a: $56
	inc [hl]                                         ; $4c7b: $34
	ld b, b                                          ; $4c7c: $40
	add hl, sp                                       ; $4c7d: $39
	ld b, h                                          ; $4c7e: $44
	xor b                                            ; $4c7f: $a8
	db $eb                                           ; $4c80: $eb
	db $fc                                           ; $4c81: $fc
	inc [hl]                                         ; $4c82: $34
	ldh a, [$3f]                                     ; $4c83: $f0 $3f
	ld c, e                                          ; $4c85: $4b
	adc e                                            ; $4c86: $8b
	ld e, h                                          ; $4c87: $5c
	and c                                            ; $4c88: $a1
	ld e, [hl]                                       ; $4c89: $5e
	ld e, c                                          ; $4c8a: $59
	ld c, c                                          ; $4c8b: $49
	ldh a, [c]                                       ; $4c8c: $f2
	ld a, l                                          ; $4c8d: $7d
	inc [hl]                                         ; $4c8e: $34
	jp nc, Jump_094_4aad                             ; $4c8f: $d2 $ad $4a

	ld c, a                                          ; $4c92: $4f
	inc [hl]                                         ; $4c93: $34
	ld d, h                                          ; $4c94: $54
	ld b, d                                          ; $4c95: $42
	ldh a, [$3f]                                     ; $4c96: $f0 $3f
	ld c, e                                          ; $4c98: $4b
	adc e                                            ; $4c99: $8b
	ld e, h                                          ; $4c9a: $5c
	ld c, d                                          ; $4c9b: $4a
	ld d, c                                          ; $4c9c: $51
	and b                                            ; $4c9d: $a0
	cpl                                              ; $4c9e: $2f
	ld b, e                                          ; $4c9f: $43
	adc b                                            ; $4ca0: $88
	sub c                                            ; $4ca1: $91
	inc [hl]                                         ; $4ca2: $34
	ldh a, [$29]                                     ; $4ca3: $f0 $29
	ld a, $38                                        ; $4ca5: $3e $38
	ld a, [hl-]                                      ; $4ca7: $3a
	xor b                                            ; $4ca8: $a8
	ld b, b                                          ; $4ca9: $40
	ld c, l                                          ; $4caa: $4d
	inc [hl]                                         ; $4cab: $34

jr_094_4cac:
	halt                                             ; $4cac: $76
	ld d, e                                          ; $4cad: $53
	ldh a, [$bd]                                     ; $4cae: $f0 $bd
	db $ec                                           ; $4cb0: $ec
	ld l, $a0                                        ; $4cb1: $2e $a0
	db $eb                                           ; $4cb3: $eb
	pop af                                           ; $4cb4: $f1

jr_094_4cb5:
	ld c, c                                          ; $4cb5: $49
	ldh a, [$f5]                                     ; $4cb6: $f0 $f5
	dec sp                                           ; $4cb8: $3b
	ccf                                              ; $4cb9: $3f
	xor h                                            ; $4cba: $ac
	ld l, e                                          ; $4cbb: $6b
	ld c, d                                          ; $4cbc: $4a
	ld c, a                                          ; $4cbd: $4f
	sub h                                            ; $4cbe: $94
	ld a, b                                          ; $4cbf: $78
	ld c, [hl]                                       ; $4cc0: $4e
	ld b, c                                          ; $4cc1: $41
	ld c, d                                          ; $4cc2: $4a
	ld d, c                                          ; $4cc3: $51
	ld c, h                                          ; $4cc4: $4c
	and b                                            ; $4cc5: $a0
	cpl                                              ; $4cc6: $2f
	ld b, e                                          ; $4cc7: $43
	ld b, b                                          ; $4cc8: $40
	ld b, c                                          ; $4cc9: $41
	ld a, [hl-]                                      ; $4cca: $3a
	sbc d                                            ; $4ccb: $9a
	ld c, e                                          ; $4ccc: $4b

jr_094_4ccd:
	ld a, [hl-]                                      ; $4ccd: $3a

jr_094_4cce:
	jr c, jr_094_4d15                                ; $4cce: $38 $45

	and b                                            ; $4cd0: $a0
	ld e, d                                          ; $4cd1: $5a
	ld h, c                                          ; $4cd2: $61
	ld d, b                                          ; $4cd3: $50
	inc a                                            ; $4cd4: $3c
	ld c, c                                          ; $4cd5: $49
	add d                                            ; $4cd6: $82
	add hl, sp                                       ; $4cd7: $39
	ld c, c                                          ; $4cd8: $49
	ld c, h                                          ; $4cd9: $4c
	xor b                                            ; $4cda: $a8
	di                                               ; $4cdb: $f3
	jr nz, jr_094_4cce                               ; $4cdc: $20 $f0

	ld a, d                                          ; $4cde: $7a
	ld c, c                                          ; $4cdf: $49
	inc a                                            ; $4ce0: $3c
	inc de                                           ; $4ce1: $13
	ldh a, [$3d]                                     ; $4ce2: $f0 $3d
	pop af                                           ; $4ce4: $f1
	ld [bc], a                                       ; $4ce5: $02
	ldh a, [$9d]                                     ; $4ce6: $f0 $9d
	ld b, d                                          ; $4ce8: $42
	ldh a, [$38]                                     ; $4ce9: $f0 $38
	ld d, e                                          ; $4ceb: $53
	adc e                                            ; $4cec: $8b
	ld e, h                                          ; $4ced: $5c
	and b                                            ; $4cee: $a0
	cpl                                              ; $4cef: $2f
	ld b, e                                          ; $4cf0: $43
	db $eb                                           ; $4cf1: $eb
	xor d                                            ; $4cf2: $aa
	inc [hl]                                         ; $4cf3: $34
	ld b, b                                          ; $4cf4: $40
	add hl, sp                                       ; $4cf5: $39
	jr c, jr_094_4d31                                ; $4cf6: $38 $39

	inc de                                           ; $4cf8: $13
	ld b, d                                          ; $4cf9: $42
	ld c, e                                          ; $4cfa: $4b
	ldh a, [$c1]                                     ; $4cfb: $f0 $c1
	ldh a, [$d5]                                     ; $4cfd: $f0 $d5
	ld a, $3f                                        ; $4cff: $3e $3f
	ld a, [hl-]                                      ; $4d01: $3a
	jr c, @+$3c                                      ; $4d02: $38 $3a

	ld [hl], h                                       ; $4d04: $74
	and b                                            ; $4d05: $a0
	ld b, [hl]                                       ; $4d06: $46
	dec sp                                           ; $4d07: $3b
	inc [hl]                                         ; $4d08: $34
	ld d, h                                          ; $4d09: $54
	ld b, d                                          ; $4d0a: $42
	ldh a, [$3f]                                     ; $4d0b: $f0 $3f
	ld c, e                                          ; $4d0d: $4b
	adc e                                            ; $4d0e: $8b
	ld e, h                                          ; $4d0f: $5c
	and b                                            ; $4d10: $a0
	cpl                                              ; $4d11: $2f
	ld b, e                                          ; $4d12: $43
	ld b, b                                          ; $4d13: $40
	ld c, l                                          ; $4d14: $4d

jr_094_4d15:
	inc [hl]                                         ; $4d15: $34
	halt                                             ; $4d16: $76
	ld b, d                                          ; $4d17: $42
	ldh a, [$bd]                                     ; $4d18: $f0 $bd
	jr c, jr_094_4d59                                ; $4d1a: $38 $3d

	ldh a, [$3f]                                     ; $4d1c: $f0 $3f
	inc de                                           ; $4d1e: $13
	ld b, h                                          ; $4d1f: $44
	ld b, l                                          ; $4d20: $45
	and b                                            ; $4d21: $a0
	ldh a, [$5a]                                     ; $4d22: $f0 $5a
	add l                                            ; $4d24: $85
	inc [hl]                                         ; $4d25: $34
	db $d3                                           ; $4d26: $d3
	xor b                                            ; $4d27: $a8
	ld d, c                                          ; $4d28: $51
	ld [hl], b                                       ; $4d29: $70
	ld e, c                                          ; $4d2a: $59
	jr c, jr_094_4ccd                                ; $4d2b: $38 $a0

	cpl                                              ; $4d2d: $2f
	ld b, e                                          ; $4d2e: $43
	ld b, [hl]                                       ; $4d2f: $46
	ld d, a                                          ; $4d30: $57

jr_094_4d31:
	ld d, e                                          ; $4d31: $53
	ld c, c                                          ; $4d32: $49
	add hl, sp                                       ; $4d33: $39
	xor b                                            ; $4d34: $a8
	ld [hl-], a                                      ; $4d35: $32
	halt                                             ; $4d36: $76
	ld b, d                                          ; $4d37: $42
	ldh a, [$3f]                                     ; $4d38: $f0 $3f
	dec sp                                           ; $4d3a: $3b
	ccf                                              ; $4d3b: $3f
	xor h                                            ; $4d3c: $ac
	ldh a, [$3d]                                     ; $4d3d: $f0 $3d
	pop af                                           ; $4d3f: $f1
	ld [bc], a                                       ; $4d40: $02
	ldh a, [$9d]                                     ; $4d41: $f0 $9d
	ld d, l                                          ; $4d43: $55
	ld e, b                                          ; $4d44: $58
	jr c, jr_094_4d89                                ; $4d45: $38 $42

	inc a                                            ; $4d47: $3c
	ld a, [hl-]                                      ; $4d48: $3a
	ld [hl], $33                                     ; $4d49: $36 $33
	add hl, bc                                       ; $4d4b: $09
	cpl                                              ; $4d4c: $2f
	ld b, e                                          ; $4d4d: $43
	ld h, h                                          ; $4d4e: $64
	jr c, jr_094_4db5                                ; $4d4f: $38 $64

	jr c, jr_094_4d87                                ; $4d51: $38 $34

	db $ed                                           ; $4d53: $ed
	ld h, d                                          ; $4d54: $62
	inc de                                           ; $4d55: $13
	ld a, [hl-]                                      ; $4d56: $3a
	ld b, d                                          ; $4d57: $42
	ld b, a                                          ; $4d58: $47

jr_094_4d59:
	xor l                                            ; $4d59: $ad
	ld c, c                                          ; $4d5a: $49
	ld d, h                                          ; $4d5b: $54
	ld e, a                                          ; $4d5c: $5f
	ld c, d                                          ; $4d5d: $4a
	inc [hl]                                         ; $4d5e: $34
	db $eb                                           ; $4d5f: $eb
	db $fc                                           ; $4d60: $fc
	ld c, e                                          ; $4d61: $4b
	xor h                                            ; $4d62: $ac
	ldh a, [$3f]                                     ; $4d63: $f0 $3f
	ld c, e                                          ; $4d65: $4b
	adc e                                            ; $4d66: $8b
	ld e, h                                          ; $4d67: $5c

jr_094_4d68:
	ld a, [hl-]                                      ; $4d68: $3a
	ld b, d                                          ; $4d69: $42
	and c                                            ; $4d6a: $a1
	ld e, d                                          ; $4d6b: $5a
	ld h, c                                          ; $4d6c: $61
	ld d, b                                          ; $4d6d: $50
	inc a                                            ; $4d6e: $3c
	ld c, c                                          ; $4d6f: $49
	add d                                            ; $4d70: $82
	add hl, sp                                       ; $4d71: $39
	ld c, c                                          ; $4d72: $49
	ld c, h                                          ; $4d73: $4c
	xor b                                            ; $4d74: $a8
	di                                               ; $4d75: $f3
	jr nz, jr_094_4d68                               ; $4d76: $20 $f0

	ld a, d                                          ; $4d78: $7a
	ld c, c                                          ; $4d79: $49
	inc a                                            ; $4d7a: $3c
	inc de                                           ; $4d7b: $13
	ldh a, [$3d]                                     ; $4d7c: $f0 $3d
	pop af                                           ; $4d7e: $f1
	ld [bc], a                                       ; $4d7f: $02
	ldh a, [$9d]                                     ; $4d80: $f0 $9d
	ld b, d                                          ; $4d82: $42
	ldh a, [$38]                                     ; $4d83: $f0 $38
	ld d, e                                          ; $4d85: $53
	adc e                                            ; $4d86: $8b

jr_094_4d87:
	ld e, h                                          ; $4d87: $5c
	inc a                                            ; $4d88: $3c

jr_094_4d89:
	ld a, [hl-]                                      ; $4d89: $3a
	ld [hl], h                                       ; $4d8a: $74
	and b                                            ; $4d8b: $a0
	ld l, e                                          ; $4d8c: $6b
	ld b, h                                          ; $4d8d: $44
	inc [hl]                                         ; $4d8e: $34
	db $d3                                           ; $4d8f: $d3
	xor b                                            ; $4d90: $a8
	ld b, [hl]                                       ; $4d91: $46
	dec sp                                           ; $4d92: $3b
	xor h                                            ; $4d93: $ac
	db $ec                                           ; $4d94: $ec
	push bc                                          ; $4d95: $c5
	inc [hl]                                         ; $4d96: $34
	ldh a, [$e8]                                     ; $4d97: $f0 $e8
	ld d, b                                          ; $4d99: $50
	ld a, [hl-]                                      ; $4d9a: $3a
	ld e, h                                          ; $4d9b: $5c
	ld d, [hl]                                       ; $4d9c: $56
	and b                                            ; $4d9d: $a0
	ld b, [hl]                                       ; $4d9e: $46
	dec sp                                           ; $4d9f: $3b
	inc [hl]                                         ; $4da0: $34
	ld d, h                                          ; $4da1: $54
	ld d, h                                          ; $4da2: $54
	ld b, h                                          ; $4da3: $44
	xor b                                            ; $4da4: $a8
	pop af                                           ; $4da5: $f1
	adc l                                            ; $4da6: $8d
	db $eb                                           ; $4da7: $eb
	ld d, [hl]                                       ; $4da8: $56
	and b                                            ; $4da9: $a0
	cpl                                              ; $4daa: $2f
	ld b, e                                          ; $4dab: $43
	ld b, b                                          ; $4dac: $40
	ld d, a                                          ; $4dad: $57
	ld d, [hl]                                       ; $4dae: $56
	inc [hl]                                         ; $4daf: $34
	ld b, b                                          ; $4db0: $40
	add hl, sp                                       ; $4db1: $39
	ld b, h                                          ; $4db2: $44
	xor b                                            ; $4db3: $a8
	ld c, d                                          ; $4db4: $4a

jr_094_4db5:
	inc [hl]                                         ; $4db5: $34
	db $eb                                           ; $4db6: $eb
	ld d, b                                          ; $4db7: $50
	xor c                                            ; $4db8: $a9
	ld l, d                                          ; $4db9: $6a
	ld b, d                                          ; $4dba: $42
	ldh a, [$ed]                                     ; $4dbb: $f0 $ed
	and b                                            ; $4dbd: $a0
	xor $27                                          ; $4dbe: $ee $27
	ld c, h                                          ; $4dc0: $4c
	xor h                                            ; $4dc1: $ac
	db $eb                                           ; $4dc2: $eb
	ld h, l                                          ; $4dc3: $65
	pop af                                           ; $4dc4: $f1
	ld h, [hl]                                       ; $4dc5: $66
	ld d, l                                          ; $4dc6: $55
	ld c, c                                          ; $4dc7: $49
	inc de                                           ; $4dc8: $13
	pop af                                           ; $4dc9: $f1
	cp d                                             ; $4dca: $ba
	ld d, l                                          ; $4dcb: $55
	ld a, [hl-]                                      ; $4dcc: $3a
	dec sp                                           ; $4dcd: $3b
	ld h, c                                          ; $4dce: $61
	ld d, [hl]                                       ; $4dcf: $56
	add hl, sp                                       ; $4dd0: $39
	ld b, d                                          ; $4dd1: $42
	and b                                            ; $4dd2: $a0
	cpl                                              ; $4dd3: $2f
	ld b, e                                          ; $4dd4: $43
	ld b, b                                          ; $4dd5: $40
	add hl, sp                                       ; $4dd6: $39
	inc a                                            ; $4dd7: $3c
	ld [hl], h                                       ; $4dd8: $74
	xor b                                            ; $4dd9: $a8
	db $eb                                           ; $4dda: $eb
	db $fc                                           ; $4ddb: $fc
	ld b, a                                          ; $4ddc: $47
	ld c, e                                          ; $4ddd: $4b
	xor h                                            ; $4dde: $ac
	add b                                            ; $4ddf: $80
	ld d, d                                          ; $4de0: $52
	ld d, b                                          ; $4de1: $50
	ld a, [hl-]                                      ; $4de2: $3a
	inc a                                            ; $4de3: $3c
	dec sp                                           ; $4de4: $3b
	dec a                                            ; $4de5: $3d
	inc a                                            ; $4de6: $3c
	ld a, [hl-]                                      ; $4de7: $3a
	ld [hl], h                                       ; $4de8: $74
	and b                                            ; $4de9: $a0
	ld c, d                                          ; $4dea: $4a
	ld c, a                                          ; $4deb: $4f
	ld c, h                                          ; $4dec: $4c
	inc [hl]                                         ; $4ded: $34
	ld d, h                                          ; $4dee: $54
	ld c, l                                          ; $4def: $4d
	inc a                                            ; $4df0: $3c
	ld d, b                                          ; $4df1: $50
	xor h                                            ; $4df2: $ac
	adc e                                            ; $4df3: $8b
	ld e, h                                          ; $4df4: $5c
	ld b, a                                          ; $4df5: $47
	ld a, [hl-]                                      ; $4df6: $3a
	ld c, [hl]                                       ; $4df7: $4e
	ld b, c                                          ; $4df8: $41
	ld b, h                                          ; $4df9: $44
	and b                                            ; $4dfa: $a0
	cpl                                              ; $4dfb: $2f
	ld b, e                                          ; $4dfc: $43
	ldh a, [$0a]                                     ; $4dfd: $f0 $0a
	ld d, l                                          ; $4dff: $55
	xor h                                            ; $4e00: $ac
	adc e                                            ; $4e01: $8b
	ld e, h                                          ; $4e02: $5c
	ld b, a                                          ; $4e03: $47
	ld a, [hl-]                                      ; $4e04: $3a
	ld c, l                                          ; $4e05: $4d
	ld c, [hl]                                       ; $4e06: $4e
	ld c, c                                          ; $4e07: $49
	jr c, @+$3a                                      ; $4e08: $38 $38

	ld c, h                                          ; $4e0a: $4c
	and b                                            ; $4e0b: $a0
	xor $1f                                          ; $4e0c: $ee $1f
	xor b                                            ; $4e0e: $a8
	ld b, [hl]                                       ; $4e0f: $46
	dec sp                                           ; $4e10: $3b
	xor h                                            ; $4e11: $ac
	db $ec                                           ; $4e12: $ec
	push bc                                          ; $4e13: $c5
	inc [hl]                                         ; $4e14: $34
	ldh a, [$e8]                                     ; $4e15: $f0 $e8
	ld d, b                                          ; $4e17: $50
	ld a, [hl-]                                      ; $4e18: $3a
	ld e, h                                          ; $4e19: $5c
	ld d, [hl]                                       ; $4e1a: $56
	and b                                            ; $4e1b: $a0
	cpl                                              ; $4e1c: $2f
	ld b, e                                          ; $4e1d: $43
	ret nz                                           ; $4e1e: $c0

	xor b                                            ; $4e1f: $a8
	ld b, h                                          ; $4e20: $44
	dec sp                                           ; $4e21: $3b
	dec a                                            ; $4e22: $3d
	ld d, b                                          ; $4e23: $50
	inc [hl]                                         ; $4e24: $34
	ldh a, [$0a]                                     ; $4e25: $f0 $0a
	ld d, l                                          ; $4e27: $55
	db $eb                                           ; $4e28: $eb
	ld [hl], d                                       ; $4e29: $72
	xor h                                            ; $4e2a: $ac
	adc e                                            ; $4e2b: $8b
	ldh a, [$72]                                     ; $4e2c: $f0 $72
	inc [hl]                                         ; $4e2e: $34
	pop af                                           ; $4e2f: $f1
	ld [hl-], a                                      ; $4e30: $32
	dec sp                                           ; $4e31: $3b
	ld h, c                                          ; $4e32: $61
	ld d, [hl]                                       ; $4e33: $56
	add hl, sp                                       ; $4e34: $39
	ld b, l                                          ; $4e35: $45
	and b                                            ; $4e36: $a0
	ld d, c                                          ; $4e37: $51
	ld [hl], b                                       ; $4e38: $70
	ld e, c                                          ; $4e39: $59
	ld d, l                                          ; $4e3a: $55
	inc [hl]                                         ; $4e3b: $34
	db $ec                                           ; $4e3c: $ec
	cp c                                             ; $4e3d: $b9
	xor b                                            ; $4e3e: $a8
	db $ed                                           ; $4e3f: $ed
	ld h, l                                          ; $4e40: $65
	ld a, $3d                                        ; $4e41: $3e $3d
	ld a, [hl-]                                      ; $4e43: $3a
	ld e, c                                          ; $4e44: $59
	dec [hl]                                         ; $4e45: $35
	xor $1f                                          ; $4e46: $ee $1f
	and b                                            ; $4e48: $a0
	cpl                                              ; $4e49: $2f
	ld b, e                                          ; $4e4a: $43
	db $eb                                           ; $4e4b: $eb
	db $fc                                           ; $4e4c: $fc
	xor b                                            ; $4e4d: $a8
	db $eb                                           ; $4e4e: $eb
	ld h, l                                          ; $4e4f: $65
	inc [hl]                                         ; $4e50: $34
	jp nc, $8bac                                     ; $4e51: $d2 $ac $8b

	ld e, h                                          ; $4e54: $5c
	db $ec                                           ; $4e55: $ec
	ret c                                            ; $4e56: $d8

	ld c, h                                          ; $4e57: $4c
	and b                                            ; $4e58: $a0
	db $ec                                           ; $4e59: $ec
	reti                                             ; $4e5a: $d9


	xor h                                            ; $4e5b: $ac
	ldh a, [rTAC]                                    ; $4e5c: $f0 $07
	inc a                                            ; $4e5e: $3c
	dec sp                                           ; $4e5f: $3b
	ld h, c                                          ; $4e60: $61
	ld d, [hl]                                       ; $4e61: $56
	add hl, sp                                       ; $4e62: $39
	inc a                                            ; $4e63: $3c
	ld a, [hl-]                                      ; $4e64: $3a
	xor c                                            ; $4e65: $a9
	pop af                                           ; $4e66: $f1
	cp d                                             ; $4e67: $ba
	ld d, l                                          ; $4e68: $55
	ld a, [hl-]                                      ; $4e69: $3a
	dec sp                                           ; $4e6a: $3b
	ld h, c                                          ; $4e6b: $61
	ld d, [hl]                                       ; $4e6c: $56
	xor $1f                                          ; $4e6d: $ee $1f
	ld b, h                                          ; $4e6f: $44
	ld c, a                                          ; $4e70: $4f
	ld b, c                                          ; $4e71: $41
	and b                                            ; $4e72: $a0
	cpl                                              ; $4e73: $2f
	ld b, e                                          ; $4e74: $43
	ld b, b                                          ; $4e75: $40
	add hl, sp                                       ; $4e76: $39
	ld b, h                                          ; $4e77: $44
	ld c, h                                          ; $4e78: $4c
	inc [hl]                                         ; $4e79: $34
	ld d, h                                          ; $4e7a: $54
	add hl, sp                                       ; $4e7b: $39
	jr c, jr_094_4eb7                                ; $4e7c: $38 $39

	inc de                                           ; $4e7e: $13
	db $ed                                           ; $4e7f: $ed
	jr jr_094_4ed1                                   ; $4e80: $18 $4f

	add hl, sp                                       ; $4e82: $39
	ldh a, [rHDMA4]                                  ; $4e83: $f0 $54
	ld a, $13                                        ; $4e85: $3e $13
	add a                                            ; $4e87: $87
	add h                                            ; $4e88: $84
	ld b, a                                          ; $4e89: $47
	ld a, [hl-]                                      ; $4e8a: $3a
	dec sp                                           ; $4e8b: $3b
	dec a                                            ; $4e8c: $3d
	ld d, b                                          ; $4e8d: $50
	ldh a, [rTAC]                                    ; $4e8e: $f0 $07
	inc a                                            ; $4e90: $3c
	ld c, [hl]                                       ; $4e91: $4e
	ld b, l                                          ; $4e92: $45
	and b                                            ; $4e93: $a0
	ld b, [hl]                                       ; $4e94: $46
	ld e, c                                          ; $4e95: $59
	dec sp                                           ; $4e96: $3b
	xor h                                            ; $4e97: $ac
	xor $27                                          ; $4e98: $ee $27
	ld h, d                                          ; $4e9a: $62
	db $ed                                           ; $4e9b: $ed
	ld h, a                                          ; $4e9c: $67
	db $f4                                           ; $4e9d: $f4
	push hl                                          ; $4e9e: $e5
	jr c, jr_094_4edf                                ; $4e9f: $38 $3e

	dec a                                            ; $4ea1: $3d
	ld [hl], h                                       ; $4ea2: $74
	and b                                            ; $4ea3: $a0
	cpl                                              ; $4ea4: $2f
	ld b, e                                          ; $4ea5: $43
	ld a, $3f                                        ; $4ea6: $3e $3f
	ld a, [hl-]                                      ; $4ea8: $3a
	jr c, jr_094_4edf                                ; $4ea9: $38 $34

	ld a, $3f                                        ; $4eab: $3e $3f
	ld a, [hl-]                                      ; $4ead: $3a
	jr c, jr_094_4ef5                                ; $4eae: $38 $45

	and b                                            ; $4eb0: $a0
	pop af                                           ; $4eb1: $f1
	ld a, [de]                                       ; $4eb2: $1a
	pop af                                           ; $4eb3: $f1
	inc c                                            ; $4eb4: $0c
	ld a, $3d                                        ; $4eb5: $3e $3d

jr_094_4eb7:
	xor h                                            ; $4eb7: $ac
	pop af                                           ; $4eb8: $f1
	ld a, [de]                                       ; $4eb9: $1a
	pop af                                           ; $4eba: $f1
	inc c                                            ; $4ebb: $0c
	ld a, $3d                                        ; $4ebc: $3e $3d
	ld c, a                                          ; $4ebe: $4f
	ld b, c                                          ; $4ebf: $41
	and b                                            ; $4ec0: $a0
	cpl                                              ; $4ec1: $2f
	ld [hl-], a                                      ; $4ec2: $32
	pop af                                           ; $4ec3: $f1
	sbc $3b                                          ; $4ec4: $de $3b
	ld h, c                                          ; $4ec6: $61
	ld d, [hl]                                       ; $4ec7: $56
	dec sp                                           ; $4ec8: $3b
	dec a                                            ; $4ec9: $3d
	ld a, [hl-]                                      ; $4eca: $3a
	ld c, b                                          ; $4ecb: $48
	and e                                            ; $4ecc: $a3
	db $ed                                           ; $4ecd: $ed
	ld h, a                                          ; $4ece: $67
	db $f4                                           ; $4ecf: $f4
	push hl                                          ; $4ed0: $e5

jr_094_4ed1:
	jr c, jr_094_4f11                                ; $4ed1: $38 $3e

	ccf                                              ; $4ed3: $3f
	ld a, [hl-]                                      ; $4ed4: $3a
	jr c, jr_094_4f12                                ; $4ed5: $38 $3b

	ccf                                              ; $4ed7: $3f
	inc de                                           ; $4ed8: $13
	add d                                            ; $4ed9: $82
	add hl, sp                                       ; $4eda: $39
	ld a, [hl-]                                      ; $4edb: $3a
	ld d, b                                          ; $4edc: $50
	inc [hl]                                         ; $4edd: $34
	di                                               ; $4ede: $f3

jr_094_4edf:
	adc c                                            ; $4edf: $89
	push af                                          ; $4ee0: $f5
	ld a, [hl+]                                      ; $4ee1: $2a
	ld [hl], d                                       ; $4ee2: $72
	ld a, c                                          ; $4ee3: $79
	ccf                                              ; $4ee4: $3f
	ld b, l                                          ; $4ee5: $45
	and b                                            ; $4ee6: $a0
	cpl                                              ; $4ee7: $2f
	ld b, e                                          ; $4ee8: $43
	db $eb                                           ; $4ee9: $eb
	db $fc                                           ; $4eea: $fc
	xor b                                            ; $4eeb: $a8
	add a                                            ; $4eec: $87
	add h                                            ; $4eed: $84
	ld c, e                                          ; $4eee: $4b
	ld b, b                                          ; $4eef: $40
	ld b, c                                          ; $4ef0: $41
	ld a, [hl-]                                      ; $4ef1: $3a
	sbc d                                            ; $4ef2: $9a
	ld c, e                                          ; $4ef3: $4b
	inc de                                           ; $4ef4: $13

jr_094_4ef5:
	ld a, a                                          ; $4ef5: $7f
	ld b, a                                          ; $4ef6: $47
	ld a, $3a                                        ; $4ef7: $3e $3a
	jr c, jr_094_4f4a                                ; $4ef9: $38 $4f

	ld b, c                                          ; $4efb: $41
	ld b, h                                          ; $4efc: $44
	ld b, l                                          ; $4efd: $45
	and b                                            ; $4efe: $a0
	xor $10                                          ; $4eff: $ee $10
	xor b                                            ; $4f01: $a8
	ld e, e                                          ; $4f02: $5b
	ld d, [hl]                                       ; $4f03: $56
	ld b, [hl]                                       ; $4f04: $46
	inc [hl]                                         ; $4f05: $34
	ld a, a                                          ; $4f06: $7f
	ld b, a                                          ; $4f07: $47
	ld a, $3a                                        ; $4f08: $3e $3a
	jr c, jr_094_4f54                                ; $4f0a: $38 $48

	and b                                            ; $4f0c: $a0
	cpl                                              ; $4f0d: $2f
	ld b, e                                          ; $4f0e: $43
	db $eb                                           ; $4f0f: $eb
	db $fc                                           ; $4f10: $fc

jr_094_4f11:
	xor h                                            ; $4f11: $ac

jr_094_4f12:
	db $ed                                           ; $4f12: $ed
	ld a, $3b                                        ; $4f13: $3e $3b
	and b                                            ; $4f15: $a0
	xor $10                                          ; $4f16: $ee $10
	xor b                                            ; $4f18: $a8
	ld b, [hl]                                       ; $4f19: $46
	dec sp                                           ; $4f1a: $3b
	xor h                                            ; $4f1b: $ac
	db $ec                                           ; $4f1c: $ec
	push bc                                          ; $4f1d: $c5
	inc [hl]                                         ; $4f1e: $34
	ldh a, [$e8]                                     ; $4f1f: $f0 $e8
	ld d, b                                          ; $4f21: $50
	ld a, [hl-]                                      ; $4f22: $3a
	ld e, h                                          ; $4f23: $5c
	ld d, [hl]                                       ; $4f24: $56
	and b                                            ; $4f25: $a0
	cpl                                              ; $4f26: $2f
	ld b, e                                          ; $4f27: $43
	ld h, h                                          ; $4f28: $64
	jr c, @+$66                                      ; $4f29: $38 $64

	jr c, jr_094_4f61                                ; $4f2b: $38 $34

	db $ed                                           ; $4f2d: $ed
	ld h, d                                          ; $4f2e: $62
	inc de                                           ; $4f2f: $13
	ld a, [hl-]                                      ; $4f30: $3a
	ld b, d                                          ; $4f31: $42
	ld b, a                                          ; $4f32: $47
	xor l                                            ; $4f33: $ad
	ld c, c                                          ; $4f34: $49
	ld d, h                                          ; $4f35: $54
	ld e, a                                          ; $4f36: $5f
	ld c, d                                          ; $4f37: $4a
	inc [hl]                                         ; $4f38: $34
	db $eb                                           ; $4f39: $eb
	ld d, b                                          ; $4f3a: $50
	xor c                                            ; $4f3b: $a9
	ld l, d                                          ; $4f3c: $6a
	ld b, d                                          ; $4f3d: $42
	ldh a, [$ed]                                     ; $4f3e: $f0 $ed
	and b                                            ; $4f40: $a0
	xor $27                                          ; $4f41: $ee $27
	ld c, e                                          ; $4f43: $4b
	ld c, h                                          ; $4f44: $4c
	xor h                                            ; $4f45: $ac
	ret                                              ; $4f46: $c9


	xor h                                            ; $4f47: $ac
	pop af                                           ; $4f48: $f1
	cp d                                             ; $4f49: $ba

jr_094_4f4a:
	ld d, l                                          ; $4f4a: $55
	ld a, [hl-]                                      ; $4f4b: $3a
	dec sp                                           ; $4f4c: $3b
	ld h, c                                          ; $4f4d: $61
	ld d, [hl]                                       ; $4f4e: $56
	dec sp                                           ; $4f4f: $3b
	dec a                                            ; $4f50: $3d
	and b                                            ; $4f51: $a0
	cpl                                              ; $4f52: $2f
	ld b, e                                          ; $4f53: $43

jr_094_4f54:
	ld d, h                                          ; $4f54: $54
	add hl, sp                                       ; $4f55: $39
	jr c, jr_094_4f91                                ; $4f56: $38 $39

	ldh a, [$ed]                                     ; $4f58: $f0 $ed
	ld b, d                                          ; $4f5a: $42
	ldh a, [rAUD4ENV]                                ; $4f5b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4f5d: $f0 $23
	ld e, b                                          ; $4f5f: $58
	ld c, e                                          ; $4f60: $4b

jr_094_4f61:
	xor h                                            ; $4f61: $ac
	ld c, a                                          ; $4f62: $4f
	add hl, sp                                       ; $4f63: $39
	ldh a, [rHDMA4]                                  ; $4f64: $f0 $54
	ld a, $87                                        ; $4f66: $3e $87
	add h                                            ; $4f68: $84
	ld b, a                                          ; $4f69: $47
	ld a, [hl-]                                      ; $4f6a: $3a
	dec sp                                           ; $4f6b: $3b
	dec a                                            ; $4f6c: $3d
	ld d, b                                          ; $4f6d: $50
	inc de                                           ; $4f6e: $13
	ldh a, [rTAC]                                    ; $4f6f: $f0 $07
	inc a                                            ; $4f71: $3c
	ld c, [hl]                                       ; $4f72: $4e
	ld b, l                                          ; $4f73: $45
	and b                                            ; $4f74: $a0
	cpl                                              ; $4f75: $2f
	ld b, e                                          ; $4f76: $43
	db $ed                                           ; $4f77: $ed
	ld b, e                                          ; $4f78: $43
	xor h                                            ; $4f79: $ac
	db $ed                                           ; $4f7a: $ed
	ld h, a                                          ; $4f7b: $67
	ld l, h                                          ; $4f7c: $6c
	dec a                                            ; $4f7d: $3d
	jr c, jr_094_4fba                                ; $4f7e: $38 $3a

	ld d, h                                          ; $4f80: $54
	ld c, c                                          ; $4f81: $49
	inc de                                           ; $4f82: $13
	add d                                            ; $4f83: $82
	xor $1f                                          ; $4f84: $ee $1f
	ld b, h                                          ; $4f86: $44
	ld c, a                                          ; $4f87: $4f
	ld b, c                                          ; $4f88: $41
	and b                                            ; $4f89: $a0
	ldh a, [rSCY]                                    ; $4f8a: $f0 $42
	ld b, c                                          ; $4f8c: $41
	xor b                                            ; $4f8d: $a8
	jr c, jr_094_4fc8                                ; $4f8e: $38 $38

	ld c, d                                          ; $4f90: $4a

jr_094_4f91:
	ld d, c                                          ; $4f91: $51
	ld b, l                                          ; $4f92: $45
	ld e, c                                          ; $4f93: $59
	ld b, h                                          ; $4f94: $44
	xor b                                            ; $4f95: $a8
	ld c, a                                          ; $4f96: $4f
	add hl, sp                                       ; $4f97: $39
	inc [hl]                                         ; $4f98: $34
	ld a, d                                          ; $4f99: $7a
	dec sp                                           ; $4f9a: $3b
	ld h, c                                          ; $4f9b: $61
	ld d, [hl]                                       ; $4f9c: $56
	ld h, h                                          ; $4f9d: $64
	and b                                            ; $4f9e: $a0
	db $ec                                           ; $4f9f: $ec
	ldh a, [rLY]                                     ; $4fa0: $f0 $44
	inc [hl]                                         ; $4fa2: $34
	pop af                                           ; $4fa3: $f1
	ld [hl], c                                       ; $4fa4: $71
	ld e, [hl]                                       ; $4fa5: $5e
	ccf                                              ; $4fa6: $3f
	ld a, [hl-]                                      ; $4fa7: $3a
	ld b, c                                          ; $4fa8: $41
	ccf                                              ; $4fa9: $3f
	inc de                                           ; $4faa: $13
	ld b, [hl]                                       ; $4fab: $46
	ldh a, [rSB]                                     ; $4fac: $f0 $01
	ld a, [hl-]                                      ; $4fae: $3a
	jr c, jr_094_5000                                ; $4faf: $38 $4f

	ld b, c                                          ; $4fb1: $41
	and b                                            ; $4fb2: $a0
	ld l, d                                          ; $4fb3: $6a
	ld b, d                                          ; $4fb4: $42
	ldh a, [$ed]                                     ; $4fb5: $f0 $ed
	inc [hl]                                         ; $4fb7: $34
	cp e                                             ; $4fb8: $bb
	inc de                                           ; $4fb9: $13

jr_094_4fba:
	ld c, d                                          ; $4fba: $4a
	ld d, c                                          ; $4fbb: $51
	dec [hl]                                         ; $4fbc: $35
	xor $27                                          ; $4fbd: $ee $27
	inc [hl]                                         ; $4fbf: $34
	ld d, h                                          ; $4fc0: $54
	add hl, sp                                       ; $4fc1: $39
	jr c, jr_094_4ffd                                ; $4fc2: $38 $39

	ld b, d                                          ; $4fc4: $42
	add a                                            ; $4fc5: $87
	adc e                                            ; $4fc6: $8b
	ld e, h                                          ; $4fc7: $5c

jr_094_4fc8:
	and b                                            ; $4fc8: $a0
	cpl                                              ; $4fc9: $2f
	ld b, e                                          ; $4fca: $43
	sub d                                            ; $4fcb: $92
	adc [hl]                                         ; $4fcc: $8e
	dec sp                                           ; $4fcd: $3b
	dec a                                            ; $4fce: $3d
	ldh a, [$b1]                                     ; $4fcf: $f0 $b1
	ldh a, [c]                                       ; $4fd1: $f2
	ld [hl+], a                                      ; $4fd2: $22
	ld d, e                                          ; $4fd3: $53
	ld b, [hl]                                       ; $4fd4: $46
	ld c, [hl]                                       ; $4fd5: $4e
	inc de                                           ; $4fd6: $13
	ld b, l                                          ; $4fd7: $45
	dec [hl]                                         ; $4fd8: $35
	ld b, [hl]                                       ; $4fd9: $46

jr_094_4fda:
	ld d, a                                          ; $4fda: $57
	ld d, e                                          ; $4fdb: $53
	ld c, c                                          ; $4fdc: $49
	add hl, sp                                       ; $4fdd: $39
	and b                                            ; $4fde: $a0
	ld l, d                                          ; $4fdf: $6a
	ld l, h                                          ; $4fe0: $6c
	dec a                                            ; $4fe1: $3d
	jr c, jr_094_501e                                ; $4fe2: $38 $3a

	ldh a, [rAUD4ENV]                                ; $4fe4: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4fe6: $f0 $23
	jr c, jr_094_4fda                                ; $4fe8: $38 $f0

	db $ed                                           ; $4fea: $ed
	xor h                                            ; $4feb: $ac
	xor $27                                          ; $4fec: $ee $27
	inc [hl]                                         ; $4fee: $34
	add a                                            ; $4fef: $87
	adc e                                            ; $4ff0: $8b
	ld e, h                                          ; $4ff1: $5c
	and b                                            ; $4ff2: $a0
	cpl                                              ; $4ff3: $2f
	ld b, e                                          ; $4ff4: $43
	ld e, e                                          ; $4ff5: $5b
	ld d, [hl]                                       ; $4ff6: $56
	ld b, [hl]                                       ; $4ff7: $46
	inc [hl]                                         ; $4ff8: $34
	pop af                                           ; $4ff9: $f1
	ld d, $53                                        ; $4ffa: $16 $53
	ld a, [hl-]                                      ; $4ffc: $3a

jr_094_4ffd:
	jr c, jr_094_5048                                ; $4ffd: $38 $49

	and b                                            ; $4fff: $a0

jr_094_5000:
	xor $1f                                          ; $5000: $ee $1f
	xor h                                            ; $5002: $ac
	ld b, b                                          ; $5003: $40
	ld c, l                                          ; $5004: $4d
	ld e, e                                          ; $5005: $5b
	ld d, [hl]                                       ; $5006: $56
	inc [hl]                                         ; $5007: $34
	db $eb                                           ; $5008: $eb
	sbc a                                            ; $5009: $9f
	and b                                            ; $500a: $a0
	db $eb                                           ; $500b: $eb
	pop af                                           ; $500c: $f1
	ld c, e                                          ; $500d: $4b
	ld c, h                                          ; $500e: $4c
	xor h                                            ; $500f: $ac
	adc d                                            ; $5010: $8a
	ldh a, [$73]                                     ; $5011: $f0 $73
	adc a                                            ; $5013: $8f
	ld b, a                                          ; $5014: $47
	ld h, a                                          ; $5015: $67
	ld d, l                                          ; $5016: $55
	dec sp                                           ; $5017: $3b
	ccf                                              ; $5018: $3f
	and b                                            ; $5019: $a0
	cpl                                              ; $501a: $2f
	ld b, e                                          ; $501b: $43
	ret nz                                           ; $501c: $c0

	xor b                                            ; $501d: $a8

jr_094_501e:
	ld [hl-], a                                      ; $501e: $32
	adc e                                            ; $501f: $8b
	ldh a, [$72]                                     ; $5020: $f0 $72
	ld b, a                                          ; $5022: $47
	inc [hl]                                         ; $5023: $34
	ldh a, [$3f]                                     ; $5024: $f0 $3f
	ld h, d                                          ; $5026: $62
	db $ed                                           ; $5027: $ed
	and [hl]                                         ; $5028: $a6
	ld d, c                                          ; $5029: $51
	ld c, [hl]                                       ; $502a: $4e
	pop af                                           ; $502b: $f1
	ld a, e                                          ; $502c: $7b
	ldh a, [hDisp1_WY]                                     ; $502d: $f0 $95
	inc de                                           ; $502f: $13
	ld b, [hl]                                       ; $5030: $46
	dec sp                                           ; $5031: $3b
	dec a                                            ; $5032: $3d
	inc a                                            ; $5033: $3c
	ld a, [hl-]                                      ; $5034: $3a
	and c                                            ; $5035: $a1
	cpl                                              ; $5036: $2f
	ld b, e                                          ; $5037: $43
	adc e                                            ; $5038: $8b
	ldh a, [$72]                                     ; $5039: $f0 $72
	ld c, e                                          ; $503b: $4b
	inc [hl]                                         ; $503c: $34
	ldh a, [$99]                                     ; $503d: $f0 $99
	sub b                                            ; $503f: $90
	ld a, [hl-]                                      ; $5040: $3a
	ld b, c                                          ; $5041: $41
	inc a                                            ; $5042: $3c
	inc de                                           ; $5043: $13
	pop af                                           ; $5044: $f1
	ld h, [hl]                                       ; $5045: $66
	ld e, h                                          ; $5046: $5c
	ld b, a                                          ; $5047: $47

jr_094_5048:
	ld a, b                                          ; $5048: $78
	ld a, [hl-]                                      ; $5049: $3a
	jr c, jr_094_5095                                ; $504a: $38 $49

	ld [hl], a                                       ; $504c: $77
	add hl, sp                                       ; $504d: $39
	ld a, [hl-]                                      ; $504e: $3a
	ld c, b                                          ; $504f: $48
	and b                                            ; $5050: $a0
	cpl                                              ; $5051: $2f
	ld b, e                                          ; $5052: $43
	db $ec                                           ; $5053: $ec
	ld b, a                                          ; $5054: $47
	db $ec                                           ; $5055: $ec
	ld hl, $eb13                                     ; $5056: $21 $13 $eb
	db $fc                                           ; $5059: $fc
	db $ec                                           ; $505a: $ec
	inc hl                                           ; $505b: $23
	xor b                                            ; $505c: $a8
	add sp, -$63                                     ; $505d: $e8 $9d
	and b                                            ; $505f: $a0
	cpl                                              ; $5060: $2f
	ld b, e                                          ; $5061: $43
	db $eb                                           ; $5062: $eb
	rst FarCall                                          ; $5063: $f7
	xor c                                            ; $5064: $a9
	db $eb                                           ; $5065: $eb
	db $fc                                           ; $5066: $fc
	and b                                            ; $5067: $a0
	db $eb                                           ; $5068: $eb
	pop af                                           ; $5069: $f1
	ld c, c                                          ; $506a: $49
	ld b, d                                          ; $506b: $42
	xor $1d                                          ; $506c: $ee $1d
	ld b, d                                          ; $506e: $42
	inc de                                           ; $506f: $13
	ldh a, [rBGP]                                    ; $5070: $f0 $47
	ldh a, [$2a]                                     ; $5072: $f0 $2a
	pop af                                           ; $5074: $f1
	sub b                                            ; $5075: $90
	ldh a, [$cb]                                     ; $5076: $f0 $cb
	ld h, c                                          ; $5078: $61
	ld d, [hl]                                       ; $5079: $56
	dec sp                                           ; $507a: $3b
	dec a                                            ; $507b: $3d
	xor b                                            ; $507c: $a8
	ld c, d                                          ; $507d: $4a
	ld c, a                                          ; $507e: $4f
	inc [hl]                                         ; $507f: $34
	db $eb                                           ; $5080: $eb
	sub a                                            ; $5081: $97
	ld c, b                                          ; $5082: $48
	and b                                            ; $5083: $a0
	cpl                                              ; $5084: $2f
	ld b, e                                          ; $5085: $43
	ldh a, [$0a]                                     ; $5086: $f0 $0a
	ld d, l                                          ; $5088: $55
	ld h, a                                          ; $5089: $67
	inc a                                            ; $508a: $3c
	ld a, [hl-]                                      ; $508b: $3a
	jr c, jr_094_50d7                                ; $508c: $38 $49

	xor h                                            ; $508e: $ac
	adc e                                            ; $508f: $8b
	ldh a, [$72]                                     ; $5090: $f0 $72
	ld b, a                                          ; $5092: $47
	pop af                                           ; $5093: $f1
	ld [hl-], a                                      ; $5094: $32

jr_094_5095:
	ld d, b                                          ; $5095: $50
	ld c, l                                          ; $5096: $4d
	ld h, c                                          ; $5097: $61
	ld d, [hl]                                       ; $5098: $56
	add hl, sp                                       ; $5099: $39
	ld b, l                                          ; $509a: $45
	and b                                            ; $509b: $a0
	add hl, sp                                       ; $509c: $39
	inc [hl]                                         ; $509d: $34
	xor $1f                                          ; $509e: $ee $1f
	inc [hl]                                         ; $50a0: $34
	db $ec                                           ; $50a1: $ec
	reti                                             ; $50a2: $d9


	ldh a, [$e8]                                     ; $50a3: $f0 $e8
	ld c, [hl]                                       ; $50a5: $4e
	xor b                                            ; $50a6: $a8
	or h                                             ; $50a7: $b4
	inc [hl]                                         ; $50a8: $34
	ld e, b                                          ; $50a9: $58
	ld b, l                                          ; $50aa: $45
	ld a, [hl-]                                      ; $50ab: $3a
	ld d, b                                          ; $50ac: $50
	and b                                            ; $50ad: $a0
	ldh a, [$5a]                                     ; $50ae: $f0 $5a
	ldh a, [$5a]                                     ; $50b0: $f0 $5a
	dec sp                                           ; $50b2: $3b
	inc [hl]                                         ; $50b3: $34
	ldh a, [$31]                                     ; $50b4: $f0 $31
	ld c, e                                          ; $50b6: $4b
	ld c, h                                          ; $50b7: $4c
	xor h                                            ; $50b8: $ac
	db $eb                                           ; $50b9: $eb
	pop af                                           ; $50ba: $f1
	ld h, d                                          ; $50bb: $62
	di                                               ; $50bc: $f3
	db $e3                                           ; $50bd: $e3
	ld e, h                                          ; $50be: $5c
	ldh a, [c]                                       ; $50bf: $f2
	ld l, [hl]                                       ; $50c0: $6e
	ld d, a                                          ; $50c1: $57
	ld b, a                                          ; $50c2: $47
	ld a, $3f                                        ; $50c3: $3e $3f
	inc de                                           ; $50c5: $13
	ld a, b                                          ; $50c6: $78
	ld h, c                                          ; $50c7: $61
	ld d, [hl]                                       ; $50c8: $56
	dec sp                                           ; $50c9: $3b
	dec a                                            ; $50ca: $3d
	ld b, d                                          ; $50cb: $42
	and b                                            ; $50cc: $a0
	cpl                                              ; $50cd: $2f
	ld b, e                                          ; $50ce: $43
	ld b, [hl]                                       ; $50cf: $46
	ld [hl], h                                       ; $50d0: $74
	xor h                                            ; $50d1: $ac
	ld a, [hl-]                                      ; $50d2: $3a
	ld b, c                                          ; $50d3: $41
	ccf                                              ; $50d4: $3f
	db $ed                                           ; $50d5: $ed
	dec bc                                           ; $50d6: $0b

jr_094_50d7:
	ld a, [hl-]                                      ; $50d7: $3a
	inc [hl]                                         ; $50d8: $34
	db $ed                                           ; $50d9: $ed
	ld c, $a0                                        ; $50da: $0e $a0
	ld b, h                                          ; $50dc: $44
	inc a                                            ; $50dd: $3c
	ld d, b                                          ; $50de: $50
	xor h                                            ; $50df: $ac
	db $ec                                           ; $50e0: $ec
	push bc                                          ; $50e1: $c5
	db $eb                                           ; $50e2: $eb
	ld [hl], d                                       ; $50e3: $72
	xor l                                            ; $50e4: $ad
	ld e, e                                          ; $50e5: $5b
	ld d, [hl]                                       ; $50e6: $56
	ld b, [hl]                                       ; $50e7: $46
	ld c, h                                          ; $50e8: $4c
	inc [hl]                                         ; $50e9: $34
	db $eb                                           ; $50ea: $eb
	sbc a                                            ; $50eb: $9f
	and b                                            ; $50ec: $a0
	db $eb                                           ; $50ed: $eb
	pop af                                           ; $50ee: $f1
	ld c, c                                          ; $50ef: $49
	ld b, d                                          ; $50f0: $42
	xor $1d                                          ; $50f1: $ee $1d
	ld b, d                                          ; $50f3: $42
	inc de                                           ; $50f4: $13
	ldh a, [rBGP]                                    ; $50f5: $f0 $47
	ldh a, [$2a]                                     ; $50f7: $f0 $2a
	pop af                                           ; $50f9: $f1
	sub b                                            ; $50fa: $90
	ldh a, [$cb]                                     ; $50fb: $f0 $cb
	ld h, c                                          ; $50fd: $61
	ld d, [hl]                                       ; $50fe: $56
	dec sp                                           ; $50ff: $3b
	dec a                                            ; $5100: $3d
	xor b                                            ; $5101: $a8
	ldh a, [$0a]                                     ; $5102: $f0 $0a
	ld d, l                                          ; $5104: $55
	ldh a, [$e8]                                     ; $5105: $f0 $e8

jr_094_5107:
	ld d, b                                          ; $5107: $50
	ld a, [hl-]                                      ; $5108: $3a
	ld d, l                                          ; $5109: $55
	ld h, c                                          ; $510a: $61
	ld d, [hl]                                       ; $510b: $56
	and b                                            ; $510c: $a0
	db $eb                                           ; $510d: $eb
	pop af                                           ; $510e: $f1
	ld c, c                                          ; $510f: $49
	ld b, d                                          ; $5110: $42
	xor $1d                                          ; $5111: $ee $1d
	ld b, d                                          ; $5113: $42
	inc de                                           ; $5114: $13
	ldh a, [rBGP]                                    ; $5115: $f0 $47
	ldh a, [$2a]                                     ; $5117: $f0 $2a
	pop af                                           ; $5119: $f1
	sub b                                            ; $511a: $90
	ldh a, [$cb]                                     ; $511b: $f0 $cb
	ld h, c                                          ; $511d: $61
	ld d, [hl]                                       ; $511e: $56
	dec sp                                           ; $511f: $3b
	dec a                                            ; $5120: $3d
	xor b                                            ; $5121: $a8
	ldh a, [$0a]                                     ; $5122: $f0 $0a
	ld d, l                                          ; $5124: $55
	db $eb                                           ; $5125: $eb
	ld [hl], d                                       ; $5126: $72
	and b                                            ; $5127: $a0
	ld b, b                                          ; $5128: $40
	ld c, l                                          ; $5129: $4d
	ld e, e                                          ; $512a: $5b
	ld d, [hl]                                       ; $512b: $56
	inc [hl]                                         ; $512c: $34
	ld e, b                                          ; $512d: $58
	ld b, l                                          ; $512e: $45
	ld a, [hl-]                                      ; $512f: $3a
	ld d, b                                          ; $5130: $50
	and b                                            ; $5131: $a0
	db $eb                                           ; $5132: $eb
	pop af                                           ; $5133: $f1
	xor c                                            ; $5134: $a9
	db $eb                                           ; $5135: $eb
	pop af                                           ; $5136: $f1
	ld c, e                                          ; $5137: $4b
	ld c, h                                          ; $5138: $4c
	add l                                            ; $5139: $85
	xor h                                            ; $513a: $ac
	ld l, d                                          ; $513b: $6a
	inc [hl]                                         ; $513c: $34
	adc d                                            ; $513d: $8a
	ldh a, [$73]                                     ; $513e: $f0 $73
	adc a                                            ; $5140: $8f
	ld a, [hl-]                                      ; $5141: $3a
	ld b, d                                          ; $5142: $42
	ld c, b                                          ; $5143: $48
	and b                                            ; $5144: $a0
	ld d, h                                          ; $5145: $54
	ld d, h                                          ; $5146: $54
	inc a                                            ; $5147: $3c
	ld a, [hl-]                                      ; $5148: $3a
	ld [hl], h                                       ; $5149: $74
	and b                                            ; $514a: $a0
	cpl                                              ; $514b: $2f
	ld b, e                                          ; $514c: $43
	ld b, [hl]                                       ; $514d: $46
	ld c, l                                          ; $514e: $4d
	inc [hl]                                         ; $514f: $34
	db $eb                                           ; $5150: $eb
	db $fc                                           ; $5151: $fc
	xor b                                            ; $5152: $a8
	db $eb                                           ; $5153: $eb
	rst FarCall                                          ; $5154: $f7
	and c                                            ; $5155: $a1
	ld d, h                                          ; $5156: $54
	ld d, h                                          ; $5157: $54
	ld b, a                                          ; $5158: $47
	ld c, a                                          ; $5159: $4f
	inc [hl]                                         ; $515a: $34
	jr c, @+$3c                                      ; $515b: $38 $3a

	jr c, jr_094_5107                                ; $515d: $38 $a8

	ld e, d                                          ; $515f: $5a
	ld d, h                                          ; $5160: $54
	ld h, a                                          ; $5161: $67
	dec sp                                           ; $5162: $3b
	dec a                                            ; $5163: $3d
	ld b, c                                          ; $5164: $41
	ld b, h                                          ; $5165: $44
	ld e, a                                          ; $5166: $5f
	add hl, sp                                       ; $5167: $39
	xor h                                            ; $5168: $ac
	db $eb                                           ; $5169: $eb
	pop af                                           ; $516a: $f1
	ld c, b                                          ; $516b: $48
	and b                                            ; $516c: $a0
	add hl, bc                                       ; $516d: $09
	ld d, h                                          ; $516e: $54
	ld d, h                                          ; $516f: $54
	ldh a, [rSCX]                                    ; $5170: $f0 $43
	ldh a, [$b8]                                     ; $5172: $f0 $b8
	adc a                                            ; $5174: $8f
	ld c, d                                          ; $5175: $4a
	ld d, c                                          ; $5176: $51
	ld b, l                                          ; $5177: $45
	ld c, h                                          ; $5178: $4c
	xor b                                            ; $5179: $a8
	ld l, e                                          ; $517a: $6b
	ld l, [hl]                                       ; $517b: $6e
	dec sp                                           ; $517c: $3b
	ccf                                              ; $517d: $3f
	ld c, [hl]                                       ; $517e: $4e
	ld b, d                                          ; $517f: $42
	inc a                                            ; $5180: $3c
	ld a, [hl-]                                      ; $5181: $3a
	ld [hl], h                                       ; $5182: $74
	and c                                            ; $5183: $a1
	cpl                                              ; $5184: $2f
	ld b, e                                          ; $5185: $43
	ldh a, [$a5]                                     ; $5186: $f0 $a5
	ldh a, [rSCX]                                    ; $5188: $f0 $43
	ld b, d                                          ; $518a: $42
	ldh a, [$c1]                                     ; $518b: $f0 $c1
	ldh a, [$d5]                                     ; $518d: $f0 $d5
	ld b, h                                          ; $518f: $44
	ld c, h                                          ; $5190: $4c
	and b                                            ; $5191: $a0
	ld e, b                                          ; $5192: $58
	inc [hl]                                         ; $5193: $34
	ldh a, [$a5]                                     ; $5194: $f0 $a5
	ldh a, [rSCX]                                    ; $5196: $f0 $43
	xor c                                            ; $5198: $a9
	xor $27                                          ; $5199: $ee $27
	jp nc, Jump_094_7213                             ; $519b: $d2 $13 $72

	dec a                                            ; $519e: $3d
	ld d, l                                          ; $519f: $55
	ld a, [hl-]                                      ; $51a0: $3a
	jr c, jr_094_51dd                                ; $51a1: $38 $3a

	ld [hl], h                                       ; $51a3: $74
	and b                                            ; $51a4: $a0
	cpl                                              ; $51a5: $2f
	ld b, e                                          ; $51a6: $43
	db $eb                                           ; $51a7: $eb
	db $fc                                           ; $51a8: $fc
	xor h                                            ; $51a9: $ac
	ldh a, [$a5]                                     ; $51aa: $f0 $a5
	ldh a, [rSCX]                                    ; $51ac: $f0 $43
	ldh a, [$64]                                     ; $51ae: $f0 $64
	jr c, jr_094_51ec                                ; $51b0: $38 $3a

	ld b, d                                          ; $51b2: $42
	and c                                            ; $51b3: $a1
	db $ed                                           ; $51b4: $ed
	ld b, e                                          ; $51b5: $43
	ldh a, [$a5]                                     ; $51b6: $f0 $a5
	ldh a, [rSCX]                                    ; $51b8: $f0 $43
	ld a, [hl-]                                      ; $51ba: $3a
	ld b, c                                          ; $51bb: $41
	ccf                                              ; $51bc: $3f
	inc de                                           ; $51bd: $13
	ldh a, [rAUD4ENV]                                ; $51be: $f0 $21
	ldh a, [rAUD4GO]                                 ; $51c0: $f0 $23
	ld d, l                                          ; $51c2: $55
	ld a, [hl-]                                      ; $51c3: $3a
	jr c, jr_094_5215                                ; $51c4: $38 $4f

	ld b, c                                          ; $51c6: $41
	and b                                            ; $51c7: $a0
	cpl                                              ; $51c8: $2f
	ld b, e                                          ; $51c9: $43
	ldh a, [$fa]                                     ; $51ca: $f0 $fa
	ld b, c                                          ; $51cc: $41
	ld c, d                                          ; $51cd: $4a
	ld l, h                                          ; $51ce: $6c
	dec a                                            ; $51cf: $3d
	ld d, b                                          ; $51d0: $50
	xor h                                            ; $51d1: $ac
	ldh a, [rAUD4ENV]                                ; $51d2: $f0 $21
	ldh a, [rAUD4GO]                                 ; $51d4: $f0 $23
	jr c, jr_094_5214                                ; $51d6: $38 $3c

	ld c, a                                          ; $51d8: $4f
	ld b, l                                          ; $51d9: $45
	and b                                            ; $51da: $a0
	db $ed                                           ; $51db: $ed
	ld b, e                                          ; $51dc: $43

jr_094_51dd:
	xor l                                            ; $51dd: $ad
	db $ed                                           ; $51de: $ed
	ld b, e                                          ; $51df: $43
	ld c, b                                          ; $51e0: $48
	inc [hl]                                         ; $51e1: $34
	ldh a, [$a5]                                     ; $51e2: $f0 $a5
	ldh a, [rSCX]                                    ; $51e4: $f0 $43
	ld a, [hl-]                                      ; $51e6: $3a
	ld b, c                                          ; $51e7: $41
	ccf                                              ; $51e8: $3f
	ld c, b                                          ; $51e9: $48
	and b                                            ; $51ea: $a0
	cpl                                              ; $51eb: $2f

jr_094_51ec:
	ld b, e                                          ; $51ec: $43
	ld h, e                                          ; $51ed: $63
	inc [hl]                                         ; $51ee: $34
	ldh a, [rTAC]                                    ; $51ef: $f0 $07
	inc a                                            ; $51f1: $3c
	dec sp                                           ; $51f2: $3b
	dec a                                            ; $51f3: $3d
	ld b, l                                          ; $51f4: $45
	xor b                                            ; $51f5: $a8
	ld e, e                                          ; $51f6: $5b
	ld d, [hl]                                       ; $51f7: $56
	ld b, [hl]                                       ; $51f8: $46
	inc [hl]                                         ; $51f9: $34
	ld c, a                                          ; $51fa: $4f
	add hl, sp                                       ; $51fb: $39
	ld a, d                                          ; $51fc: $7a
	ld e, a                                          ; $51fd: $5f
	add hl, sp                                       ; $51fe: $39
	and b                                            ; $51ff: $a0
	ld e, [hl]                                       ; $5200: $5e
	dec sp                                           ; $5201: $3b
	inc [hl]                                         ; $5202: $34
	ld c, d                                          ; $5203: $4a
	ld c, a                                          ; $5204: $4f
	xor l                                            ; $5205: $ad
	xor $1f                                          ; $5206: $ee $1f
	inc [hl]                                         ; $5208: $34
	db $ec                                           ; $5209: $ec
	reti                                             ; $520a: $d9


	ld a, d                                          ; $520b: $7a
	ld c, [hl]                                       ; $520c: $4e
	and b                                            ; $520d: $a0
	ld d, h                                          ; $520e: $54
	ld d, h                                          ; $520f: $54
	ldh a, [rSCX]                                    ; $5210: $f0 $43
	ldh a, [$b8]                                     ; $5212: $f0 $b8

jr_094_5214:
	adc a                                            ; $5214: $8f

jr_094_5215:
	ld b, h                                          ; $5215: $44
	ld b, l                                          ; $5216: $45
	ld c, h                                          ; $5217: $4c
	xor b                                            ; $5218: $a8
	ld l, e                                          ; $5219: $6b

jr_094_521a:
	ld l, [hl]                                       ; $521a: $6e
	dec sp                                           ; $521b: $3b
	ccf                                              ; $521c: $3f
	ld c, [hl]                                       ; $521d: $4e
	ld b, d                                          ; $521e: $42
	inc a                                            ; $521f: $3c
	ld a, [hl-]                                      ; $5220: $3a
	ld [hl], h                                       ; $5221: $74
	and c                                            ; $5222: $a1
	ld e, b                                          ; $5223: $58
	inc [hl]                                         ; $5224: $34
	ldh a, [$a5]                                     ; $5225: $f0 $a5
	ldh a, [rSCX]                                    ; $5227: $f0 $43
	xor c                                            ; $5229: $a9
	ld e, [hl]                                       ; $522a: $5e
	ld e, c                                          ; $522b: $59
	ld c, c                                          ; $522c: $49
	ld c, b                                          ; $522d: $48
	xor h                                            ; $522e: $ac
	ld e, b                                          ; $522f: $58
	ld [hl], h                                       ; $5230: $74
	inc [hl]                                         ; $5231: $34
	db $ec                                           ; $5232: $ec
	rrca                                             ; $5233: $0f
	ld a, [hl-]                                      ; $5234: $3a
	and b                                            ; $5235: $a0
	cpl                                              ; $5236: $2f
	ld b, e                                          ; $5237: $43
	ld b, [hl]                                       ; $5238: $46
	dec sp                                           ; $5239: $3b
	inc [hl]                                         ; $523a: $34
	db $eb                                           ; $523b: $eb
	db $fc                                           ; $523c: $fc
	xor b                                            ; $523d: $a8
	ld e, d                                          ; $523e: $5a
	ld d, h                                          ; $523f: $54
	ld h, a                                          ; $5240: $67
	ld d, l                                          ; $5241: $55
	ld b, d                                          ; $5242: $42
	and b                                            ; $5243: $a0
	db $ed                                           ; $5244: $ed
	ld b, e                                          ; $5245: $43
	xor $27                                          ; $5246: $ee $27
	xor h                                            ; $5248: $ac
	ldh a, [$a5]                                     ; $5249: $f0 $a5
	ldh a, [rSCX]                                    ; $524b: $f0 $43
	ld a, [hl-]                                      ; $524d: $3a
	ld b, c                                          ; $524e: $41
	ccf                                              ; $524f: $3f
	inc de                                           ; $5250: $13
	ld [hl], d                                       ; $5251: $72
	dec a                                            ; $5252: $3d
	ld d, l                                          ; $5253: $55
	ld a, [hl-]                                      ; $5254: $3a
	jr c, jr_094_52a6                                ; $5255: $38 $4f

	ld b, c                                          ; $5257: $41
	and b                                            ; $5258: $a0
	ld l, [hl]                                       ; $5259: $6e
	ld b, h                                          ; $525a: $44
	ld l, [hl]                                       ; $525b: $6e
	ld b, h                                          ; $525c: $44
	xor b                                            ; $525d: $a8
	ldh a, [$a5]                                     ; $525e: $f0 $a5
	ldh a, [rSCX]                                    ; $5260: $f0 $43
	ld a, [hl-]                                      ; $5262: $3a
	ld b, c                                          ; $5263: $41
	ccf                                              ; $5264: $3f
	inc de                                           ; $5265: $13
	db $ec                                           ; $5266: $ec
	ld c, c                                          ; $5267: $49
	ld c, a                                          ; $5268: $4f
	ld b, c                                          ; $5269: $41
	and b                                            ; $526a: $a0
	xor $1f                                          ; $526b: $ee $1f
	inc [hl]                                         ; $526d: $34
	db $ec                                           ; $526e: $ec
	cp c                                             ; $526f: $b9
	xor b                                            ; $5270: $a8
	jp hl                                            ; $5271: $e9


	ld [hl+], a                                      ; $5272: $22
	and b                                            ; $5273: $a0
	ld e, b                                          ; $5274: $58
	inc [hl]                                         ; $5275: $34
	ldh a, [$a5]                                     ; $5276: $f0 $a5
	ldh a, [rSCX]                                    ; $5278: $f0 $43
	xor c                                            ; $527a: $a9
	ld b, [hl]                                       ; $527b: $46
	dec sp                                           ; $527c: $3b
	inc [hl]                                         ; $527d: $34
	xor $27                                          ; $527e: $ee $27
	xor h                                            ; $5280: $ac
	xor $07                                          ; $5281: $ee $07
	ld [hl], a                                       ; $5283: $77
	jr c, jr_094_521a                                ; $5284: $38 $94

	db $eb                                           ; $5286: $eb
	ld d, [hl]                                       ; $5287: $56
	and b                                            ; $5288: $a0
	cpl                                              ; $5289: $2f
	ld b, e                                          ; $528a: $43
	ld b, [hl]                                       ; $528b: $46
	dec sp                                           ; $528c: $3b
	inc [hl]                                         ; $528d: $34
	db $eb                                           ; $528e: $eb
	db $fc                                           ; $528f: $fc
	xor b                                            ; $5290: $a8
	ld b, b                                          ; $5291: $40
	ld b, c                                          ; $5292: $41
	ld a, [hl-]                                      ; $5293: $3a
	sbc d                                            ; $5294: $9a
	add d                                            ; $5295: $82
	dec sp                                           ; $5296: $3b
	ccf                                              ; $5297: $3f
	adc b                                            ; $5298: $88
	sub c                                            ; $5299: $91
	ld c, e                                          ; $529a: $4b
	xor h                                            ; $529b: $ac
	ldh a, [$a5]                                     ; $529c: $f0 $a5
	ldh a, [rSCX]                                    ; $529e: $f0 $43
	ldh a, [$64]                                     ; $52a0: $f0 $64
	jr c, jr_094_52de                                ; $52a2: $38 $3a

	ld b, c                                          ; $52a4: $41
	ld c, d                                          ; $52a5: $4a

jr_094_52a6:
	ld a, $66                                        ; $52a6: $3e $66
	add hl, sp                                       ; $52a8: $39
	and b                                            ; $52a9: $a0
	add hl, sp                                       ; $52aa: $39
	inc [hl]                                         ; $52ab: $34
	xor $1f                                          ; $52ac: $ee $1f
	xor b                                            ; $52ae: $a8
	db $ed                                           ; $52af: $ed
	ld b, e                                          ; $52b0: $43
	xor $27                                          ; $52b1: $ee $27
	xor h                                            ; $52b3: $ac
	ldh a, [$64]                                     ; $52b4: $f0 $64
	ld a, [hl-]                                      ; $52b6: $3a
	ld b, c                                          ; $52b7: $41
	ld b, h                                          ; $52b8: $44
	ld c, a                                          ; $52b9: $4f
	ld b, c                                          ; $52ba: $41
	and b                                            ; $52bb: $a0
	ldh a, [$64]                                     ; $52bc: $f0 $64
	inc [hl]                                         ; $52be: $34
	xor $27                                          ; $52bf: $ee $27
	pop af                                           ; $52c1: $f1
	ld a, [de]                                       ; $52c2: $1a
	pop af                                           ; $52c3: $f1
	inc c                                            ; $52c4: $0c
	ld b, a                                          ; $52c5: $47
	inc de                                           ; $52c6: $13
	db $ec                                           ; $52c7: $ec
	ld c, c                                          ; $52c8: $49
	and b                                            ; $52c9: $a0
	adc b                                            ; $52ca: $88
	sub c                                            ; $52cb: $91
	xor c                                            ; $52cc: $a9
	jp hl                                            ; $52cd: $e9


	ld [hl+], a                                      ; $52ce: $22
	and b                                            ; $52cf: $a0
	cpl                                              ; $52d0: $2f
	ld b, e                                          ; $52d1: $43
	db $ed                                           ; $52d2: $ed
	ld l, d                                          ; $52d3: $6a
	add a                                            ; $52d4: $87
	ldh a, [rHDMA3]                                  ; $52d5: $f0 $53
	ld d, e                                          ; $52d7: $53
	xor h                                            ; $52d8: $ac
	ldh a, [$bb]                                     ; $52d9: $f0 $bb
	ld d, d                                          ; $52db: $52
	ld c, [hl]                                       ; $52dc: $4e
	ld l, h                                          ; $52dd: $6c

jr_094_52de:
	dec a                                            ; $52de: $3d
	jr c, jr_094_5325                                ; $52df: $38 $44

	ld c, h                                          ; $52e1: $4c
	and b                                            ; $52e2: $a0
	add hl, sp                                       ; $52e3: $39
	ld e, c                                          ; $52e4: $59
	ld b, c                                          ; $52e5: $41
	xor b                                            ; $52e6: $a8
	ld l, e                                          ; $52e7: $6b
	ld b, h                                          ; $52e8: $44
	inc a                                            ; $52e9: $3c
	ld b, l                                          ; $52ea: $45
	ld d, l                                          ; $52eb: $55
	ldh a, [rTAC]                                    ; $52ec: $f0 $07
	inc a                                            ; $52ee: $3c
	ld b, c                                          ; $52ef: $41
	ld a, [hl-]                                      ; $52f0: $3a
	inc de                                           ; $52f1: $13
	inc a                                            ; $52f2: $3c
	dec sp                                           ; $52f3: $3b
	dec a                                            ; $52f4: $3d
	ld a, [hl-]                                      ; $52f5: $3a
	ld [hl], h                                       ; $52f6: $74
	and b                                            ; $52f7: $a0
	cpl                                              ; $52f8: $2f
	ld b, e                                          ; $52f9: $43
	adc b                                            ; $52fa: $88
	sub c                                            ; $52fb: $91
	xor h                                            ; $52fc: $ac
	ld l, e                                          ; $52fd: $6b
	add d                                            ; $52fe: $82
	dec sp                                           ; $52ff: $3b
	db $ec                                           ; $5300: $ec
	add hl, de                                       ; $5301: $19
	ld e, a                                          ; $5302: $5f
	add hl, sp                                       ; $5303: $39
	ld c, h                                          ; $5304: $4c
	and b                                            ; $5305: $a0
	ld c, a                                          ; $5306: $4f
	add hl, sp                                       ; $5307: $39
	db $ec                                           ; $5308: $ec
	xor $52                                          ; $5309: $ee $52
	ld c, d                                          ; $530b: $4a
	xor h                                            ; $530c: $ac
	di                                               ; $530d: $f3
	reti                                             ; $530e: $d9


	ld d, l                                          ; $530f: $55
	ld a, [hl-]                                      ; $5310: $3a
	dec sp                                           ; $5311: $3b
	ld h, c                                          ; $5312: $61
	ld d, [hl]                                       ; $5313: $56
	dec sp                                           ; $5314: $3b
	dec a                                            ; $5315: $3d
	and b                                            ; $5316: $a0
	cpl                                              ; $5317: $2f
	ld b, e                                          ; $5318: $43
	or h                                             ; $5319: $b4
	xor h                                            ; $531a: $ac
	db $ec                                           ; $531b: $ec
	push bc                                          ; $531c: $c5
	db $ec                                           ; $531d: $ec
	rrca                                             ; $531e: $0f
	and c                                            ; $531f: $a1
	ld e, [hl]                                       ; $5320: $5e
	dec sp                                           ; $5321: $3b
	inc [hl]                                         ; $5322: $34
	ld c, a                                          ; $5323: $4f
	add hl, sp                                       ; $5324: $39

jr_094_5325:
	xor c                                            ; $5325: $a9
	ld c, b                                          ; $5326: $48
	ld c, d                                          ; $5327: $4a
	ld c, a                                          ; $5328: $4f
	inc [hl]                                         ; $5329: $34
	jr c, jr_094_5364                                ; $532a: $38 $38

	ld l, [hl]                                       ; $532c: $6e
	xor b                                            ; $532d: $a8
	xor $1f                                          ; $532e: $ee $1f
	inc [hl]                                         ; $5330: $34
	ld a, d                                          ; $5331: $7a
	ld d, a                                          ; $5332: $57
	ld d, d                                          ; $5333: $52
	ld d, c                                          ; $5334: $51
	and b                                            ; $5335: $a0
	ld l, e                                          ; $5336: $6b
	ld b, h                                          ; $5337: $44
	inc a                                            ; $5338: $3c
	xor h                                            ; $5339: $ac
	ldh a, [$5d]                                     ; $533a: $f0 $5d
	ld a, [hl-]                                      ; $533c: $3a
	add h                                            ; $533d: $84
	ld b, h                                          ; $533e: $44
	dec sp                                           ; $533f: $3b
	dec a                                            ; $5340: $3d
	ld c, h                                          ; $5341: $4c
	and b                                            ; $5342: $a0
	cpl                                              ; $5343: $2f
	ld b, e                                          ; $5344: $43
	adc b                                            ; $5345: $88
	sub c                                            ; $5346: $91
	ld b, h                                          ; $5347: $44
	ld c, h                                          ; $5348: $4c
	xor b                                            ; $5349: $a8
	add d                                            ; $534a: $82
	dec sp                                           ; $534b: $3b
	ccf                                              ; $534c: $3f
	ld c, [hl]                                       ; $534d: $4e
	ld d, h                                          ; $534e: $54
	ld c, c                                          ; $534f: $49
	ld d, e                                          ; $5350: $53
	inc de                                           ; $5351: $13
	ld b, l                                          ; $5352: $45
	ld d, l                                          ; $5353: $55
	ldh a, [rTAC]                                    ; $5354: $f0 $07
	inc a                                            ; $5356: $3c
	ld d, b                                          ; $5357: $50
	ld a, [hl-]                                      ; $5358: $3a
	inc a                                            ; $5359: $3c
	dec sp                                           ; $535a: $3b
	dec a                                            ; $535b: $3d
	ld a, $a0                                        ; $535c: $3e $a0
	ld c, h                                          ; $535e: $4c
	add l                                            ; $535f: $85
	inc [hl]                                         ; $5360: $34
	ld [$f2d0], a                                    ; $5361: $ea $d0 $f2

jr_094_5364:
	ld a, l                                          ; $5364: $7d
	and b                                            ; $5365: $a0
	cpl                                              ; $5366: $2f
	ld b, e                                          ; $5367: $43
	ld b, b                                          ; $5368: $40
	add hl, sp                                       ; $5369: $39
	ld b, h                                          ; $536a: $44
	ld c, h                                          ; $536b: $4c
	xor b                                            ; $536c: $a8
	ld a, d                                          ; $536d: $7a
	ld e, a                                          ; $536e: $5f
	add hl, sp                                       ; $536f: $39

jr_094_5370:
	and b                                            ; $5370: $a0
	add hl, sp                                       ; $5371: $39
	ld e, c                                          ; $5372: $59
	ld b, c                                          ; $5373: $41
	xor b                                            ; $5374: $a8
	ld l, e                                          ; $5375: $6b
	ld h, d                                          ; $5376: $62
	add d                                            ; $5377: $82
	dec sp                                           ; $5378: $3b
	ccf                                              ; $5379: $3f
	dec a                                            ; $537a: $3d
	ld b, d                                          ; $537b: $42
	inc a                                            ; $537c: $3c
	inc de                                           ; $537d: $13
	db $ed                                           ; $537e: $ed
	ld e, [hl]                                       ; $537f: $5e
	ld h, e                                          ; $5380: $63
	inc a                                            ; $5381: $3c
	ld b, c                                          ; $5382: $41
	ld a, [hl-]                                      ; $5383: $3a
	inc a                                            ; $5384: $3c
	dec sp                                           ; $5385: $3b
	dec a                                            ; $5386: $3d
	ld a, [hl-]                                      ; $5387: $3a
	ld [hl], h                                       ; $5388: $74
	and b                                            ; $5389: $a0
	or h                                             ; $538a: $b4
	xor h                                            ; $538b: $ac
	ld c, a                                          ; $538c: $4f
	add hl, sp                                       ; $538d: $39
	db $ec                                           ; $538e: $ec
	push bc                                          ; $538f: $c5
	xor h                                            ; $5390: $ac
	ld a, d                                          ; $5391: $7a
	ld d, a                                          ; $5392: $57
	ld d, d                                          ; $5393: $52
	ld a, c                                          ; $5394: $79
	ld b, c                                          ; $5395: $41
	inc a                                            ; $5396: $3c
	and c                                            ; $5397: $a1
	cpl                                              ; $5398: $2f
	ld b, e                                          ; $5399: $43
	ld b, b                                          ; $539a: $40
	add hl, sp                                       ; $539b: $39
	ld b, h                                          ; $539c: $44
	ld c, h                                          ; $539d: $4c
	xor b                                            ; $539e: $a8
	db $ec                                           ; $539f: $ec
	push bc                                          ; $53a0: $c5
	db $ec                                           ; $53a1: $ec
	rrca                                             ; $53a2: $0f
	and b                                            ; $53a3: $a0
	ld d, h                                          ; $53a4: $54
	ld d, h                                          ; $53a5: $54
	ld c, e                                          ; $53a6: $4b
	inc [hl]                                         ; $53a7: $34
	adc d                                            ; $53a8: $8a
	ldh a, [$73]                                     ; $53a9: $f0 $73
	adc a                                            ; $53ab: $8f
	ld c, b                                          ; $53ac: $48
	and b                                            ; $53ad: $a0
	cpl                                              ; $53ae: $2f
	ld b, e                                          ; $53af: $43
	db $eb                                           ; $53b0: $eb
	db $fc                                           ; $53b1: $fc
	xor b                                            ; $53b2: $a8
	db $eb                                           ; $53b3: $eb
	rst FarCall                                          ; $53b4: $f7
	and c                                            ; $53b5: $a1
	ld d, h                                          ; $53b6: $54
	ld d, h                                          ; $53b7: $54
	ld [hl], d                                       ; $53b8: $72
	ld c, [hl]                                       ; $53b9: $4e
	ld b, d                                          ; $53ba: $42
	pop af                                           ; $53bb: $f1
	jr nc, jr_094_542f                               ; $53bc: $30 $71

	ccf                                              ; $53be: $3f
	xor h                                            ; $53bf: $ac
	ld a, d                                          ; $53c0: $7a
	ld d, a                                          ; $53c1: $57
	ld d, d                                          ; $53c2: $52
	ld a, c                                          ; $53c3: $79
	ld b, c                                          ; $53c4: $41
	inc a                                            ; $53c5: $3c
	and c                                            ; $53c6: $a1
	cpl                                              ; $53c7: $2f
	ld b, e                                          ; $53c8: $43
	ld e, [hl]                                       ; $53c9: $5e
	dec sp                                           ; $53ca: $3b
	inc [hl]                                         ; $53cb: $34
	db $ec                                           ; $53cc: $ec
	db $d3                                           ; $53cd: $d3
	xor c                                            ; $53ce: $a9
	db $ec                                           ; $53cf: $ec
	add hl, bc                                       ; $53d0: $09
	ld a, b                                          ; $53d1: $78
	dec a                                            ; $53d2: $3d
	ld b, d                                          ; $53d3: $42
	ld b, a                                          ; $53d4: $47
	ld c, b                                          ; $53d5: $48
	and b                                            ; $53d6: $a0
	ld b, [hl]                                       ; $53d7: $46
	dec sp                                           ; $53d8: $3b
	inc [hl]                                         ; $53d9: $34
	db $eb                                           ; $53da: $eb
	pop af                                           ; $53db: $f1
	ld c, b                                          ; $53dc: $48
	and b                                            ; $53dd: $a0
	cpl                                              ; $53de: $2f
	ld b, e                                          ; $53df: $43
	ld e, [hl]                                       ; $53e0: $5e
	dec sp                                           ; $53e1: $3b
	inc [hl]                                         ; $53e2: $34
	adc e                                            ; $53e3: $8b
	ldh a, [$72]                                     ; $53e4: $f0 $72
	ld c, a                                          ; $53e6: $4f
	jr c, jr_094_5437                                ; $53e7: $38 $4e

	ld b, d                                          ; $53e9: $42
	ld [hl], $17                                     ; $53ea: $36 $17
	ld [hl-], a                                      ; $53ec: $32
	ld b, [hl]                                       ; $53ed: $46
	jr c, jr_094_5370                                ; $53ee: $38 $80

	adc d                                            ; $53f0: $8a
	ldh a, [$73]                                     ; $53f1: $f0 $73
	adc a                                            ; $53f3: $8f
	ld b, a                                          ; $53f4: $47
	inc de                                           ; $53f5: $13
	ld l, e                                          ; $53f6: $6b
	ld a, $47                                        ; $53f7: $3e $47
	ld a, b                                          ; $53f9: $78
	ccf                                              ; $53fa: $3f
	ld c, [hl]                                       ; $53fb: $4e
	ld b, c                                          ; $53fc: $41
	ld b, h                                          ; $53fd: $44
	ld e, a                                          ; $53fe: $5f
	add hl, sp                                       ; $53ff: $39
	and e                                            ; $5400: $a3
	db $eb                                           ; $5401: $eb
	pop af                                           ; $5402: $f1
	ld b, a                                          ; $5403: $47
	ld [hl], d                                       ; $5404: $72
	add b                                            ; $5405: $80
	inc a                                            ; $5406: $3c
	ld c, [hl]                                       ; $5407: $4e
	inc de                                           ; $5408: $13
	sbc [hl]                                         ; $5409: $9e
	ld b, a                                          ; $540a: $47
	inc [hl]                                         ; $540b: $34
	ld a, d                                          ; $540c: $7a
	ld d, b                                          ; $540d: $50
	ld a, [hl-]                                      ; $540e: $3a
	ld e, h                                          ; $540f: $5c
	ld d, [hl]                                       ; $5410: $56
	ld c, b                                          ; $5411: $48
	and b                                            ; $5412: $a0
	cpl                                              ; $5413: $2f
	ld b, e                                          ; $5414: $43
	db $ec                                           ; $5415: $ec
	db $d3                                           ; $5416: $d3
	xor c                                            ; $5417: $a9
	adc e                                            ; $5418: $8b
	ldh a, [$72]                                     ; $5419: $f0 $72
	ld b, a                                          ; $541b: $47
	di                                               ; $541c: $f3
	db $fc                                           ; $541d: $fc
	di                                               ; $541e: $f3
	db $fd                                           ; $541f: $fd
	sbc l                                            ; $5420: $9d
	ld d, b                                          ; $5421: $50
	jr c, jr_094_546c                                ; $5422: $38 $48

	and b                                            ; $5424: $a0
	xor $05                                          ; $5425: $ee $05
	dec sp                                           ; $5427: $3b
	xor b                                            ; $5428: $a8
	ld b, b                                          ; $5429: $40
	dec sp                                           ; $542a: $3b
	ld h, c                                          ; $542b: $61
	ld b, a                                          ; $542c: $47
	ld h, a                                          ; $542d: $67
	dec sp                                           ; $542e: $3b

jr_094_542f:
	ld h, c                                          ; $542f: $61
	ld d, [hl]                                       ; $5430: $56
	xor h                                            ; $5431: $ac
	ld l, [hl]                                       ; $5432: $6e
	ld b, h                                          ; $5433: $44
	ld e, c                                          ; $5434: $59
	dec sp                                           ; $5435: $3b
	and b                                            ; $5436: $a0

jr_094_5437:
	cpl                                              ; $5437: $2f
	ld b, e                                          ; $5438: $43
	ld h, e                                          ; $5439: $63
	inc [hl]                                         ; $543a: $34
	ldh a, [rTAC]                                    ; $543b: $f0 $07
	inc a                                            ; $543d: $3c
	dec sp                                           ; $543e: $3b
	dec a                                            ; $543f: $3d
	ld b, l                                          ; $5440: $45
	xor b                                            ; $5441: $a8
	db $eb                                           ; $5442: $eb
	inc [hl]                                         ; $5443: $34
	xor b                                            ; $5444: $a8
	db $ec                                           ; $5445: $ec
	push bc                                          ; $5446: $c5
	db $ec                                           ; $5447: $ec
	rrca                                             ; $5448: $0f
	and c                                            ; $5449: $a1
	db $ed                                           ; $544a: $ed
	ld b, c                                          ; $544b: $41
	xor c                                            ; $544c: $a9
	db $ec                                           ; $544d: $ec
	cp c                                             ; $544e: $b9
	ld e, c                                          ; $544f: $59
	xor b                                            ; $5450: $a8
	ld e, e                                          ; $5451: $5b
	ld d, [hl]                                       ; $5452: $56
	ld b, [hl]                                       ; $5453: $46
	inc [hl]                                         ; $5454: $34
	ld a, d                                          ; $5455: $7a
	ld d, a                                          ; $5456: $57
	ld d, d                                          ; $5457: $52
	ld a, $66                                        ; $5458: $3e $66
	and b                                            ; $545a: $a0
	cpl                                              ; $545b: $2f
	ld [hl-], a                                      ; $545c: $32
	ld a, d                                          ; $545d: $7a
	ld d, a                                          ; $545e: $57
	ldh a, [c]                                       ; $545f: $f2
	or [hl]                                          ; $5460: $b6
	ld b, a                                          ; $5461: $47
	ldh a, [c]                                       ; $5462: $f2
	add b                                            ; $5463: $80
	ldh a, [rAUD3LEVEL]                              ; $5464: $f0 $1c
	ld c, d                                          ; $5466: $4a
	inc de                                           ; $5467: $13
	ld [hl], d                                       ; $5468: $72
	ld h, c                                          ; $5469: $61
	ld d, [hl]                                       ; $546a: $56
	ld e, [hl]                                       ; $546b: $5e

jr_094_546c:
	xor b                                            ; $546c: $a8
	ld a, [hl-]                                      ; $546d: $3a
	ld c, [hl]                                       ; $546e: $4e
	ldh a, [$08]                                     ; $546f: $f0 $08
	ld e, d                                          ; $5471: $5a
	ld b, b                                          ; $5472: $40
	add hl, sp                                       ; $5473: $39
	jr c, @+$3b                                      ; $5474: $38 $39

	sbc d                                            ; $5476: $9a
	inc a                                            ; $5477: $3c
	xor l                                            ; $5478: $ad
	adc e                                            ; $5479: $8b
	ldh a, [$72]                                     ; $547a: $f0 $72
	inc [hl]                                         ; $547c: $34
	ld h, h                                          ; $547d: $64
	sbc [hl]                                         ; $547e: $9e
	jr c, jr_094_54b9                                ; $547f: $38 $38

	ld b, l                                          ; $5481: $45
	ld a, [hl-]                                      ; $5482: $3a
	ld c, b                                          ; $5483: $48
	and e                                            ; $5484: $a3
	ld b, [hl]                                       ; $5485: $46
	dec sp                                           ; $5486: $3b
	inc [hl]                                         ; $5487: $34
	db $eb                                           ; $5488: $eb
	pop af                                           ; $5489: $f1
	inc de                                           ; $548a: $13
	ld d, d                                          ; $548b: $52
	ld c, d                                          ; $548c: $4a
	jr c, jr_094_54dd                                ; $548d: $38 $4e

	and b                                            ; $548f: $a0
	ld d, h                                          ; $5490: $54
	ld d, h                                          ; $5491: $54
	ld c, e                                          ; $5492: $4b
	ld [hl], d                                       ; $5493: $72
	ld a, [hl-]                                      ; $5494: $3a
	jr c, jr_094_54e1                                ; $5495: $38 $4a

	inc de                                           ; $5497: $13
	ld a, d                                          ; $5498: $7a
	ld e, a                                          ; $5499: $5f
	add hl, sp                                       ; $549a: $39
	ld b, l                                          ; $549b: $45
	and b                                            ; $549c: $a0
	cpl                                              ; $549d: $2f
	ld b, e                                          ; $549e: $43
	db $ec                                           ; $549f: $ec
	db $d3                                           ; $54a0: $d3
	xor c                                            ; $54a1: $a9
	adc e                                            ; $54a2: $8b
	ldh a, [$72]                                     ; $54a3: $f0 $72
	ld c, a                                          ; $54a5: $4f
	jr c, @+$50                                      ; $54a6: $38 $4e

	ld b, d                                          ; $54a8: $42
	ld b, a                                          ; $54a9: $47
	and b                                            ; $54aa: $a0
	db $ed                                           ; $54ab: $ed
	ld b, e                                          ; $54ac: $43
	xor h                                            ; $54ad: $ac
	xor $27                                          ; $54ae: $ee $27
	ld d, h                                          ; $54b0: $54
	ld b, c                                          ; $54b1: $41
	ld a, [hl-]                                      ; $54b2: $3a
	ld b, d                                          ; $54b3: $42
	inc de                                           ; $54b4: $13
	ld [hl], d                                       ; $54b5: $72
	ld c, [hl]                                       ; $54b6: $4e
	ld b, d                                          ; $54b7: $42
	ld l, [hl]                                       ; $54b8: $6e

jr_094_54b9:
	ld b, h                                          ; $54b9: $44
	ld c, a                                          ; $54ba: $4f
	ld b, c                                          ; $54bb: $41
	and b                                            ; $54bc: $a0
	cpl                                              ; $54bd: $2f

jr_094_54be:
	ld b, e                                          ; $54be: $43
	ld [hl], d                                       ; $54bf: $72
	ld c, [hl]                                       ; $54c0: $4e
	ld b, d                                          ; $54c1: $42
	ld l, [hl]                                       ; $54c2: $6e
	ld b, h                                          ; $54c3: $44
	ld c, a                                          ; $54c4: $4f
	ld b, c                                          ; $54c5: $41
	dec sp                                           ; $54c6: $3b
	ccf                                              ; $54c7: $3f
	xor l                                            ; $54c8: $ad
	ld e, e                                          ; $54c9: $5b
	ld d, [hl]                                       ; $54ca: $56
	ld b, [hl]                                       ; $54cb: $46
	inc [hl]                                         ; $54cc: $34
	ret                                              ; $54cd: $c9


	adc e                                            ; $54ce: $8b
	ldh a, [$72]                                     ; $54cf: $f0 $72
	ld b, a                                          ; $54d1: $47
	inc de                                           ; $54d2: $13
	di                                               ; $54d3: $f3
	db $fc                                           ; $54d4: $fc
	di                                               ; $54d5: $f3
	db $fd                                           ; $54d6: $fd
	ld a, $3f                                        ; $54d7: $3e $3f
	ld d, l                                          ; $54d9: $55
	ld c, [hl]                                       ; $54da: $4e
	ld b, l                                          ; $54db: $45
	and b                                            ; $54dc: $a0

jr_094_54dd:
	xor $05                                          ; $54dd: $ee $05
	ld e, c                                          ; $54df: $59
	dec sp                                           ; $54e0: $3b

jr_094_54e1:
	xor b                                            ; $54e1: $a8
	ld b, b                                          ; $54e2: $40
	dec sp                                           ; $54e3: $3b
	ld h, c                                          ; $54e4: $61
	ld b, a                                          ; $54e5: $47
	ld h, a                                          ; $54e6: $67
	dec sp                                           ; $54e7: $3b
	ld h, c                                          ; $54e8: $61
	ld d, [hl]                                       ; $54e9: $56
	inc de                                           ; $54ea: $13
	xor $05                                          ; $54eb: $ee $05
	ld a, [hl-]                                      ; $54ed: $3a
	ld b, d                                          ; $54ee: $42
	and b                                            ; $54ef: $a0
	cpl                                              ; $54f0: $2f
	ld b, e                                          ; $54f1: $43
	ld b, b                                          ; $54f2: $40
	ld c, l                                          ; $54f3: $4d
	ld c, a                                          ; $54f4: $4f
	xor $05                                          ; $54f5: $ee $05
	ld a, [hl-]                                      ; $54f7: $3a
	ld b, d                                          ; $54f8: $42
	xor c                                            ; $54f9: $a9
	db $eb                                           ; $54fa: $eb
	inc [hl]                                         ; $54fb: $34
	ld a, [hl-]                                      ; $54fc: $3a
	ld c, b                                          ; $54fd: $48
	xor h                                            ; $54fe: $ac
	ld e, e                                          ; $54ff: $5b
	ld d, [hl]                                       ; $5500: $56
	ld b, [hl]                                       ; $5501: $46
	inc [hl]                                         ; $5502: $34
	db $ec                                           ; $5503: $ec
	rrca                                             ; $5504: $0f
	and c                                            ; $5505: $a1
	db $ed                                           ; $5506: $ed
	ld b, c                                          ; $5507: $41
	xor c                                            ; $5508: $a9
	xor $1f                                          ; $5509: $ee $1f
	inc [hl]                                         ; $550b: $34
	ld a, d                                          ; $550c: $7a
	ld e, a                                          ; $550d: $5f
	and b                                            ; $550e: $a0
	db $eb                                           ; $550f: $eb
	pop af                                           ; $5510: $f1
	ld d, d                                          ; $5511: $52
	ld c, d                                          ; $5512: $4a
	jr c, jr_094_5563                                ; $5513: $38 $4e

	xor l                                            ; $5515: $ad
	ld l, h                                          ; $5516: $6c
	dec sp                                           ; $5517: $3b
	ld c, c                                          ; $5518: $49
	ld c, a                                          ; $5519: $4f
	ld a, [hl-]                                      ; $551a: $3a
	ld e, c                                          ; $551b: $59
	jr c, jr_094_54be                                ; $551c: $38 $a0

	cpl                                              ; $551e: $2f
	ld b, e                                          ; $551f: $43
	ld e, [hl]                                       ; $5520: $5e
	dec sp                                           ; $5521: $3b
	inc [hl]                                         ; $5522: $34
	adc e                                            ; $5523: $8b
	ldh a, [$72]                                     ; $5524: $f0 $72
	ld c, a                                          ; $5526: $4f
	jr c, jr_094_5577                                ; $5527: $38 $4e

	ld b, d                                          ; $5529: $42
	xor c                                            ; $552a: $a9
	ld [hl-], a                                      ; $552b: $32
	ld l, e                                          ; $552c: $6b
	ld c, d                                          ; $552d: $4a
	adc d                                            ; $552e: $8a
	ldh a, [$73]                                     ; $552f: $f0 $73
	adc a                                            ; $5531: $8f
	ld a, [hl-]                                      ; $5532: $3a
	ld b, c                                          ; $5533: $41
	inc a                                            ; $5534: $3c
	ld b, a                                          ; $5535: $47
	xor l                                            ; $5536: $ad
	ld l, h                                          ; $5537: $6c
	dec sp                                           ; $5538: $3b
	ld c, c                                          ; $5539: $49
	ld c, a                                          ; $553a: $4f
	ld a, [hl-]                                      ; $553b: $3a
	jr c, jr_094_5586                                ; $553c: $38 $48

	ld [hl], $33                                     ; $553e: $36 $33
	add hl, bc                                       ; $5540: $09
	ld b, [hl]                                       ; $5541: $46
	ld b, c                                          ; $5542: $41
	ld a, [hl-]                                      ; $5543: $3a
	db $eb                                           ; $5544: $eb
	pop af                                           ; $5545: $f1
	ld c, c                                          ; $5546: $49
	inc de                                           ; $5547: $13
	xor $06                                          ; $5548: $ee $06
	ld b, h                                          ; $554a: $44
	ld c, c                                          ; $554b: $49
	db $eb                                           ; $554c: $eb
	ld c, a                                          ; $554d: $4f
	inc a                                            ; $554e: $3c
	ld d, b                                          ; $554f: $50
	xor h                                            ; $5550: $ac
	xor $27                                          ; $5551: $ee $27
	inc [hl]                                         ; $5553: $34
	ld a, d                                          ; $5554: $7a
	ld d, a                                          ; $5555: $57
	ld d, d                                          ; $5556: $52
	ld d, c                                          ; $5557: $51
	and b                                            ; $5558: $a0
	cpl                                              ; $5559: $2f
	ld b, e                                          ; $555a: $43
	ld b, [hl]                                       ; $555b: $46
	dec sp                                           ; $555c: $3b
	inc [hl]                                         ; $555d: $34
	db $eb                                           ; $555e: $eb
	db $fc                                           ; $555f: $fc
	xor l                                            ; $5560: $ad
	ld h, h                                          ; $5561: $64
	ld h, h                                          ; $5562: $64

jr_094_5563:
	ld [$a052], a                                    ; $5563: $ea $52 $a0
	ld b, l                                          ; $5566: $45
	ldh a, [c]                                       ; $5567: $f2
	ld a, l                                          ; $5568: $7d
	inc [hl]                                         ; $5569: $34
	db $ec                                           ; $556a: $ec
	reti                                             ; $556b: $d9


	ld a, b                                          ; $556c: $78
	dec a                                            ; $556d: $3d
	ld a, [hl-]                                      ; $556e: $3a
	xor b                                            ; $556f: $a8
	db $ed                                           ; $5570: $ed
	dec d                                            ; $5571: $15
	adc e                                            ; $5572: $8b
	ld e, h                                          ; $5573: $5c
	ld b, h                                          ; $5574: $44
	inc a                                            ; $5575: $3c
	ld d, b                                          ; $5576: $50

jr_094_5577:
	ld a, [hl-]                                      ; $5577: $3a
	ld [hl], h                                       ; $5578: $74
	and b                                            ; $5579: $a0
	cpl                                              ; $557a: $2f
	ld b, e                                          ; $557b: $43
	ld h, h                                          ; $557c: $64
	inc [hl]                                         ; $557d: $34
	ld h, h                                          ; $557e: $64
	sbc [hl]                                         ; $557f: $9e
	ld c, c                                          ; $5580: $49
	xor $06                                          ; $5581: $ee $06
	ld b, a                                          ; $5583: $47
	inc de                                           ; $5584: $13
	ld d, c                                          ; $5585: $51

jr_094_5586:
	ld c, [hl]                                       ; $5586: $4e
	ld a, [hl-]                                      ; $5587: $3a
	ld b, l                                          ; $5588: $45
	xor b                                            ; $5589: $a8
	ld l, d                                          ; $558a: $6a
	inc [hl]                                         ; $558b: $34
	db $eb                                           ; $558c: $eb
	db $fc                                           ; $558d: $fc
	ld c, c                                          ; $558e: $49
	ld c, b                                          ; $558f: $48
	and b                                            ; $5590: $a0
	ld e, [hl]                                       ; $5591: $5e
	dec sp                                           ; $5592: $3b
	inc [hl]                                         ; $5593: $34
	xor $27                                          ; $5594: $ee $27
	xor c                                            ; $5596: $a9
	xor $27                                          ; $5597: $ee $27
	ld c, c                                          ; $5599: $49
	xor $06                                          ; $559a: $ee $06
	ld b, h                                          ; $559c: $44
	dec sp                                           ; $559d: $3b
	dec a                                            ; $559e: $3d
	ld b, d                                          ; $559f: $42
	inc a                                            ; $55a0: $3c
	and c                                            ; $55a1: $a1
	cpl                                              ; $55a2: $2f
	ld b, e                                          ; $55a3: $43
	rst JumpTable                                          ; $55a4: $c7
	ld b, h                                          ; $55a5: $44
	xor b                                            ; $55a6: $a8
	db $eb                                           ; $55a7: $eb
	db $fc                                           ; $55a8: $fc
	ld h, d                                          ; $55a9: $62
	ldh a, [c]                                       ; $55aa: $f2
	ld sp, hl                                        ; $55ab: $f9
	ld h, e                                          ; $55ac: $63
	ld a, [hl-]                                      ; $55ad: $3a
	ld e, h                                          ; $55ae: $5c
	ld d, [hl]                                       ; $55af: $56
	xor b                                            ; $55b0: $a8
	adc e                                            ; $55b1: $8b
	ldh a, [$72]                                     ; $55b2: $f0 $72
	inc [hl]                                         ; $55b4: $34
	ld d, d                                          ; $55b5: $52
	dec a                                            ; $55b6: $3d
	ldh a, [$d7]                                     ; $55b7: $f0 $d7
	ld c, d                                          ; $55b9: $4a
	ld a, [hl-]                                      ; $55ba: $3a
	and b                                            ; $55bb: $a0
	ld d, h                                          ; $55bc: $54
	ld d, h                                          ; $55bd: $54
	adc d                                            ; $55be: $8a
	ldh a, [$73]                                     ; $55bf: $f0 $73
	adc a                                            ; $55c1: $8f
	ld c, d                                          ; $55c2: $4a
	ld d, c                                          ; $55c3: $51
	ld b, l                                          ; $55c4: $45
	ld c, h                                          ; $55c5: $4c
	xor b                                            ; $55c6: $a8
	ld l, e                                          ; $55c7: $6b
	ld l, [hl]                                       ; $55c8: $6e
	dec sp                                           ; $55c9: $3b
	ccf                                              ; $55ca: $3f
	ld c, [hl]                                       ; $55cb: $4e
	ld b, d                                          ; $55cc: $42
	inc a                                            ; $55cd: $3c
	ld a, [hl-]                                      ; $55ce: $3a
	ld [hl], h                                       ; $55cf: $74
	and c                                            ; $55d0: $a1
	cpl                                              ; $55d1: $2f
	ld b, e                                          ; $55d2: $43
	db $eb                                           ; $55d3: $eb
	adc b                                            ; $55d4: $88
	ld b, h                                          ; $55d5: $44
	ld c, h                                          ; $55d6: $4c
	xor b                                            ; $55d7: $a8
	db $eb                                           ; $55d8: $eb
	db $fc                                           ; $55d9: $fc
	inc [hl]                                         ; $55da: $34
	ldh a, [$3f]                                     ; $55db: $f0 $3f
	ld c, e                                          ; $55dd: $4b
	adc e                                            ; $55de: $8b
	ld e, h                                          ; $55df: $5c
	and c                                            ; $55e0: $a1
	ld e, [hl]                                       ; $55e1: $5e
	ld e, c                                          ; $55e2: $59
	ld c, c                                          ; $55e3: $49
	ldh a, [c]                                       ; $55e4: $f2
	ld a, l                                          ; $55e5: $7d
	inc [hl]                                         ; $55e6: $34
	jp nc, Jump_094_4aad                             ; $55e7: $d2 $ad $4a

	ld c, a                                          ; $55ea: $4f
	inc [hl]                                         ; $55eb: $34
	ld d, h                                          ; $55ec: $54
	add hl, sp                                       ; $55ed: $39
	jr c, jr_094_5629                                ; $55ee: $38 $39

	ldh a, [$3f]                                     ; $55f0: $f0 $3f
	ld c, e                                          ; $55f2: $4b
	inc de                                           ; $55f3: $13
	adc e                                            ; $55f4: $8b
	ld e, h                                          ; $55f5: $5c
	ld c, d                                          ; $55f6: $4a
	ld d, c                                          ; $55f7: $51
	and b                                            ; $55f8: $a0
	cpl                                              ; $55f9: $2f
	ld b, e                                          ; $55fa: $43
	ld e, e                                          ; $55fb: $5b
	ld d, [hl]                                       ; $55fc: $56
	ld b, [hl]                                       ; $55fd: $46
	inc [hl]                                         ; $55fe: $34
	ld [hl], d                                       ; $55ff: $72
	ccf                                              ; $5600: $3f
	call $32a8                                       ; $5601: $cd $a8 $32
	ldh a, [$3f]                                     ; $5604: $f0 $3f
	ld d, e                                          ; $5606: $53
	ldh a, [$64]                                     ; $5607: $f0 $64
	jr c, jr_094_5654                                ; $5609: $38 $49

	jr c, jr_094_5646                                ; $560b: $38 $39

	ld h, e                                          ; $560d: $63
	ld e, l                                          ; $560e: $5d
	ld e, e                                          ; $560f: $5b
	ld d, [hl]                                       ; $5610: $56
	inc de                                           ; $5611: $13
	ld a, [hl-]                                      ; $5612: $3a
	ld e, b                                          ; $5613: $58
	ld b, b                                          ; $5614: $40
	add hl, sp                                       ; $5615: $39
	ld b, h                                          ; $5616: $44
	ld a, [hl-]                                      ; $5617: $3a
	ld c, b                                          ; $5618: $48
	and e                                            ; $5619: $a3
	cpl                                              ; $561a: $2f
	ld b, e                                          ; $561b: $43
	db $eb                                           ; $561c: $eb
	ld d, b                                          ; $561d: $50
	and c                                            ; $561e: $a1
	xor $1f                                          ; $561f: $ee $1f
	inc [hl]                                         ; $5621: $34
	ldh a, [$80]                                     ; $5622: $f0 $80
	ldh a, [$c5]                                     ; $5624: $f0 $c5
	inc de                                           ; $5626: $13
	cp e                                             ; $5627: $bb
	ld c, d                                          ; $5628: $4a

jr_094_5629:
	ld d, c                                          ; $5629: $51
	and b                                            ; $562a: $a0
	ld d, h                                          ; $562b: $54
	ld d, h                                          ; $562c: $54
	adc d                                            ; $562d: $8a
	ldh a, [$73]                                     ; $562e: $f0 $73
	adc a                                            ; $5630: $8f
	ld b, h                                          ; $5631: $44

jr_094_5632:
	ld b, l                                          ; $5632: $45
	ld c, h                                          ; $5633: $4c
	xor b                                            ; $5634: $a8
	ld l, e                                          ; $5635: $6b
	ld l, [hl]                                       ; $5636: $6e
	dec sp                                           ; $5637: $3b
	ccf                                              ; $5638: $3f
	ld c, [hl]                                       ; $5639: $4e
	ld b, d                                          ; $563a: $42
	inc a                                            ; $563b: $3c
	ld a, [hl-]                                      ; $563c: $3a
	ld [hl], h                                       ; $563d: $74
	and c                                            ; $563e: $a1
	di                                               ; $563f: $f3
	jr nz, jr_094_5632                               ; $5640: $20 $f0

	ld a, d                                          ; $5642: $7a
	ld c, c                                          ; $5643: $49
	inc a                                            ; $5644: $3c
	inc de                                           ; $5645: $13

jr_094_5646:
	ldh a, [$3d]                                     ; $5646: $f0 $3d
	pop af                                           ; $5648: $f1
	ld [bc], a                                       ; $5649: $02
	ldh a, [$9d]                                     ; $564a: $f0 $9d
	ld c, e                                          ; $564c: $4b
	add a                                            ; $564d: $87
	adc e                                            ; $564e: $8b
	ld e, h                                          ; $564f: $5c
	and b                                            ; $5650: $a0
	cpl                                              ; $5651: $2f
	ld b, e                                          ; $5652: $43
	ld c, e                                          ; $5653: $4b

jr_094_5654:
	ld c, e                                          ; $5654: $4b
	inc [hl]                                         ; $5655: $34
	ldh a, [$3d]                                     ; $5656: $f0 $3d
	pop af                                           ; $5658: $f1
	ld [bc], a                                       ; $5659: $02
	ldh a, [$9d]                                     ; $565a: $f0 $9d
	ld c, h                                          ; $565c: $4c
	add l                                            ; $565d: $85
	xor l                                            ; $565e: $ad
	ld b, b                                          ; $565f: $40
	add hl, sp                                       ; $5660: $39
	jr c, jr_094_569c                                ; $5661: $38 $39

	ld b, d                                          ; $5663: $42
	ld c, e                                          ; $5664: $4b
	xor h                                            ; $5665: $ac
	ld a, [hl-]                                      ; $5666: $3a
	jr c, jr_094_56b2                                ; $5667: $38 $49

	ld [hl], a                                       ; $5669: $77
	add hl, sp                                       ; $566a: $39
	ld a, [hl-]                                      ; $566b: $3a
	ld [hl], h                                       ; $566c: $74

jr_094_566d:
	and b                                            ; $566d: $a0
	db $ec                                           ; $566e: $ec
	ldh a, [$a8]                                     ; $566f: $f0 $a8
	ld c, d                                          ; $5671: $4a
	ld c, a                                          ; $5672: $4f
	inc [hl]                                         ; $5673: $34
	ld d, h                                          ; $5674: $54
	ld c, l                                          ; $5675: $4d
	ld a, [hl-]                                      ; $5676: $3a
	ld b, c                                          ; $5677: $41
	inc a                                            ; $5678: $3c
	inc de                                           ; $5679: $13
	di                                               ; $567a: $f3
	jr nz, jr_094_566d                               ; $567b: $20 $f0

	ld a, d                                          ; $567d: $7a
	ld b, d                                          ; $567e: $42
	ldh a, [$3f]                                     ; $567f: $f0 $3f
	ld l, h                                          ; $5681: $6c
	dec a                                            ; $5682: $3d
	jr c, @-$5e                                      ; $5683: $38 $a0

	cpl                                              ; $5685: $2f
	ld b, e                                          ; $5686: $43

jr_094_5687:
	ld b, b                                          ; $5687: $40
	ld c, l                                          ; $5688: $4d
	ld e, e                                          ; $5689: $5b
	ld d, [hl]                                       ; $568a: $56
	inc [hl]                                         ; $568b: $34
	ld [hl], d                                       ; $568c: $72
	ccf                                              ; $568d: $3f
	ld h, a                                          ; $568e: $67
	ld d, h                                          ; $568f: $54

jr_094_5690:
	add hl, sp                                       ; $5690: $39
	dec [hl]                                         ; $5691: $35
	rla                                              ; $5692: $17
	ld [hl-], a                                      ; $5693: $32
	ldh a, [$3f]                                     ; $5694: $f0 $3f
	ld c, e                                          ; $5696: $4b
	ldh a, [$64]                                     ; $5697: $f0 $64
	jr c, jr_094_5687                                ; $5699: $38 $ec

	ret c                                            ; $569b: $d8

jr_094_569c:
	inc de                                           ; $569c: $13
	ld l, h                                          ; $569d: $6c
	dec a                                            ; $569e: $3d
	jr c, jr_094_56e5                                ; $569f: $38 $44

	ld a, [hl-]                                      ; $56a1: $3a
	ld c, b                                          ; $56a2: $48
	and e                                            ; $56a3: $a3
	xor $1f                                          ; $56a4: $ee $1f
	inc [hl]                                         ; $56a6: $34
	ldh a, [$80]                                     ; $56a7: $f0 $80

jr_094_56a9:
	ldh a, [$c5]                                     ; $56a9: $f0 $c5
	inc de                                           ; $56ab: $13
	cp e                                             ; $56ac: $bb
	ld b, l                                          ; $56ad: $45
	and b                                            ; $56ae: $a0
	xor $1f                                          ; $56af: $ee $1f
	inc [hl]                                         ; $56b1: $34

jr_094_56b2:
	ld a, d                                          ; $56b2: $7a
	ld e, a                                          ; $56b3: $5f
	add hl, sp                                       ; $56b4: $39
	and b                                            ; $56b5: $a0
	di                                               ; $56b6: $f3
	jr nz, jr_094_56a9                               ; $56b7: $20 $f0

	ld a, d                                          ; $56b9: $7a
	ld c, c                                          ; $56ba: $49
	inc a                                            ; $56bb: $3c
	ldh a, [$3d]                                     ; $56bc: $f0 $3d
	pop af                                           ; $56be: $f1
	ld [bc], a                                       ; $56bf: $02
	ldh a, [$9d]                                     ; $56c0: $f0 $9d
	ld b, d                                          ; $56c2: $42
	inc de                                           ; $56c3: $13
	ldh a, [$3f]                                     ; $56c4: $f0 $3f
	ld b, h                                          ; $56c6: $44
	dec sp                                           ; $56c7: $3b
	dec a                                            ; $56c8: $3d
	ld d, b                                          ; $56c9: $50
	adc e                                            ; $56ca: $8b
	ld e, h                                          ; $56cb: $5c
	ld c, d                                          ; $56cc: $4a
	ld d, c                                          ; $56cd: $51
	and b                                            ; $56ce: $a0
	ld l, e                                          ; $56cf: $6b
	ld b, h                                          ; $56d0: $44
	inc [hl]                                         ; $56d1: $34
	db $d3                                           ; $56d2: $d3
	xor b                                            ; $56d3: $a8
	ld e, e                                          ; $56d4: $5b
	ld d, [hl]                                       ; $56d5: $56
	ld b, [hl]                                       ; $56d6: $46
	inc [hl]                                         ; $56d7: $34
	ld a, d                                          ; $56d8: $7a
	ld d, a                                          ; $56d9: $57
	ld d, d                                          ; $56da: $52
	ld a, c                                          ; $56db: $79
	ld b, c                                          ; $56dc: $41
	and c                                            ; $56dd: $a1
	cpl                                              ; $56de: $2f
	ld b, e                                          ; $56df: $43
	db $ec                                           ; $56e0: $ec
	add hl, bc                                       ; $56e1: $09
	ld a, b                                          ; $56e2: $78
	dec a                                            ; $56e3: $3d
	ld b, c                                          ; $56e4: $41

jr_094_56e5:
	ld b, h                                          ; $56e5: $44
	ld a, $13                                        ; $56e6: $3e $13
	ld [hl], d                                       ; $56e8: $72
	ccf                                              ; $56e9: $3f
	ld h, a                                          ; $56ea: $67
	inc a                                            ; $56eb: $3c
	ld a, [hl-]                                      ; $56ec: $3a
	jr c, jr_094_5690                                ; $56ed: $38 $a1

	ld a, [hl-]                                      ; $56ef: $3a
	ld d, b                                          ; $56f0: $50
	inc [hl]                                         ; $56f1: $34
	jr c, jr_094_572c                                ; $56f2: $38 $38

	ld c, d                                          ; $56f4: $4a
	ld d, c                                          ; $56f5: $51
	ld b, l                                          ; $56f6: $45
	xor b                                            ; $56f7: $a8
	ldh a, [$34]                                     ; $56f8: $f0 $34
	ld b, a                                          ; $56fa: $47
	ldh a, [$64]                                     ; $56fb: $f0 $64
	jr c, @+$3c                                      ; $56fd: $38 $3a

	pop af                                           ; $56ff: $f1
	dec bc                                           ; $5700: $0b
	ld e, e                                          ; $5701: $5b
	ld d, [hl]                                       ; $5702: $56
	inc de                                           ; $5703: $13
	ld a, [hl-]                                      ; $5704: $3a
	jr c, jr_094_5743                                ; $5705: $38 $3c

	ld d, b                                          ; $5707: $50
	and b                                            ; $5708: $a0
	xor $1f                                          ; $5709: $ee $1f
	inc [hl]                                         ; $570b: $34
	ldh a, [$80]                                     ; $570c: $f0 $80
	ldh a, [$c5]                                     ; $570e: $f0 $c5
	inc de                                           ; $5710: $13
	cp e                                             ; $5711: $bb
	ld c, c                                          ; $5712: $49
	ld [hl], a                                       ; $5713: $77
	jr c, jr_094_5768                                ; $5714: $38 $52

	ld d, c                                          ; $5716: $51
	and b                                            ; $5717: $a0
	cpl                                              ; $5718: $2f
	ld b, e                                          ; $5719: $43
	db $ec                                           ; $571a: $ec
	ret nc                                           ; $571b: $d0

	ld b, d                                          ; $571c: $42
	db $eb                                           ; $571d: $eb
	ld e, e                                          ; $571e: $5b
	inc de                                           ; $571f: $13
	ld d, e                                          ; $5720: $53
	inc [hl]                                         ; $5721: $34
	ldh a, [$bb]                                     ; $5722: $f0 $bb
	ld d, d                                          ; $5724: $52
	ld c, [hl]                                       ; $5725: $4e
	ld l, h                                          ; $5726: $6c
	dec a                                            ; $5727: $3d
	jr c, jr_094_576e                                ; $5728: $38 $44

	ld c, h                                          ; $572a: $4c
	and b                                            ; $572b: $a0

jr_094_572c:
	cpl                                              ; $572c: $2f
	ld b, e                                          ; $572d: $43
	db $eb                                           ; $572e: $eb
	db $fc                                           ; $572f: $fc
	xor b                                            ; $5730: $a8
	db $eb                                           ; $5731: $eb
	ld d, b                                          ; $5732: $50
	and c                                            ; $5733: $a1
	xor $27                                          ; $5734: $ee $27
	ld c, h                                          ; $5736: $4c
	xor h                                            ; $5737: $ac
	ld [$625a], a                                    ; $5738: $ea $5a $62
	ldh a, [$0c]                                     ; $573b: $f0 $0c
	ld d, l                                          ; $573d: $55
	ld c, c                                          ; $573e: $49
	xor h                                            ; $573f: $ac
	pop af                                           ; $5740: $f1
	cp d                                             ; $5741: $ba
	ld d, l                                          ; $5742: $55

jr_094_5743:
	ld a, [hl-]                                      ; $5743: $3a
	dec sp                                           ; $5744: $3b
	ld h, c                                          ; $5745: $61
	ld d, [hl]                                       ; $5746: $56
	add hl, sp                                       ; $5747: $39
	ld b, d                                          ; $5748: $42
	and b                                            ; $5749: $a0
	cpl                                              ; $574a: $2f
	ld b, e                                          ; $574b: $43
	ld b, b                                          ; $574c: $40
	add hl, sp                                       ; $574d: $39
	inc a                                            ; $574e: $3c
	ld [hl], h                                       ; $574f: $74
	xor b                                            ; $5750: $a8
	db $eb                                           ; $5751: $eb
	db $fc                                           ; $5752: $fc
	ld b, a                                          ; $5753: $47
	ld c, e                                          ; $5754: $4b
	xor h                                            ; $5755: $ac
	add b                                            ; $5756: $80
	ld d, d                                          ; $5757: $52
	ld d, b                                          ; $5758: $50
	ld a, [hl-]                                      ; $5759: $3a
	inc a                                            ; $575a: $3c
	dec sp                                           ; $575b: $3b
	dec a                                            ; $575c: $3d
	inc a                                            ; $575d: $3c
	ld a, [hl-]                                      ; $575e: $3a
	ld [hl], h                                       ; $575f: $74
	and b                                            ; $5760: $a0
	ld c, d                                          ; $5761: $4a
	ld c, a                                          ; $5762: $4f
	ld c, h                                          ; $5763: $4c
	inc [hl]                                         ; $5764: $34
	ld d, h                                          ; $5765: $54
	ld c, l                                          ; $5766: $4d
	inc a                                            ; $5767: $3c

jr_094_5768:
	ld d, b                                          ; $5768: $50
	xor h                                            ; $5769: $ac
	pop af                                           ; $576a: $f1
	ld h, [hl]                                       ; $576b: $66
	ld d, l                                          ; $576c: $55
	ld b, l                                          ; $576d: $45

jr_094_576e:
	add hl, sp                                       ; $576e: $39
	ld b, a                                          ; $576f: $47
	ld d, c                                          ; $5770: $51
	ld c, [hl]                                       ; $5771: $4e
	ld b, c                                          ; $5772: $41
	ld b, h                                          ; $5773: $44
	and b                                            ; $5774: $a0
	cpl                                              ; $5775: $2f
	ld b, e                                          ; $5776: $43
	ld b, b                                          ; $5777: $40
	add hl, sp                                       ; $5778: $39
	inc [hl]                                         ; $5779: $34
	cp d                                             ; $577a: $ba
	xor b                                            ; $577b: $a8
	or h                                             ; $577c: $b4
	xor h                                            ; $577d: $ac
	db $ec                                           ; $577e: $ec
	push bc                                          ; $577f: $c5
	db $ec                                           ; $5780: $ec
	rrca                                             ; $5781: $0f
	and c                                            ; $5782: $a1
	ld d, c                                          ; $5783: $51
	ld [hl], b                                       ; $5784: $70
	ld e, c                                          ; $5785: $59
	ld d, l                                          ; $5786: $55
	inc [hl]                                         ; $5787: $34
	db $ec                                           ; $5788: $ec
	cp c                                             ; $5789: $b9
	xor b                                            ; $578a: $a8
	db $ed                                           ; $578b: $ed
	ld h, l                                          ; $578c: $65
	ld a, $3d                                        ; $578d: $3e $3d
	ld a, [hl-]                                      ; $578f: $3a
	ld e, c                                          ; $5790: $59
	and b                                            ; $5791: $a0
	cpl                                              ; $5792: $2f
	ld b, e                                          ; $5793: $43
	db $eb                                           ; $5794: $eb
	db $fc                                           ; $5795: $fc
	xor b                                            ; $5796: $a8
	db $eb                                           ; $5797: $eb
	ld h, l                                          ; $5798: $65
	jp nc, $8bac                                     ; $5799: $d2 $ac $8b

	ld e, h                                          ; $579c: $5c
	db $ec                                           ; $579d: $ec
	ret c                                            ; $579e: $d8

	ld c, h                                          ; $579f: $4c
	and b                                            ; $57a0: $a0
	db $ec                                           ; $57a1: $ec
	reti                                             ; $57a2: $d9


	xor h                                            ; $57a3: $ac
	ldh a, [rTAC]                                    ; $57a4: $f0 $07
	inc a                                            ; $57a6: $3c
	dec sp                                           ; $57a7: $3b
	ld h, c                                          ; $57a8: $61
	ld d, [hl]                                       ; $57a9: $56
	add hl, sp                                       ; $57aa: $39
	inc a                                            ; $57ab: $3c
	ld a, [hl-]                                      ; $57ac: $3a
	xor c                                            ; $57ad: $a9
	pop af                                           ; $57ae: $f1
	cp d                                             ; $57af: $ba
	ld d, l                                          ; $57b0: $55
	ld a, [hl-]                                      ; $57b1: $3a
	dec sp                                           ; $57b2: $3b
	ld h, c                                          ; $57b3: $61
	ld d, [hl]                                       ; $57b4: $56
	xor $1f                                          ; $57b5: $ee $1f
	ld b, h                                          ; $57b7: $44
	ld c, a                                          ; $57b8: $4f
	ld b, c                                          ; $57b9: $41
	and b                                            ; $57ba: $a0
	cpl                                              ; $57bb: $2f
	ld b, e                                          ; $57bc: $43
	ld d, h                                          ; $57bd: $54
	add hl, sp                                       ; $57be: $39
	ldh a, [$b5]                                     ; $57bf: $f0 $b5
	add hl, sp                                       ; $57c1: $39
	ldh a, [$99]                                     ; $57c2: $f0 $99
	sub b                                            ; $57c4: $90
	ld b, d                                          ; $57c5: $42
	ldh a, [rAUD4ENV]                                ; $57c6: $f0 $21
	ldh a, [rAUD4GO]                                 ; $57c8: $f0 $23
	ld e, b                                          ; $57ca: $58
	inc de                                           ; $57cb: $13
	ld c, e                                          ; $57cc: $4b
	inc [hl]                                         ; $57cd: $34
	ld c, a                                          ; $57ce: $4f
	add hl, sp                                       ; $57cf: $39
	ldh a, [rHDMA4]                                  ; $57d0: $f0 $54
	ld a, $87                                        ; $57d2: $3e $87
	add h                                            ; $57d4: $84
	ld b, a                                          ; $57d5: $47
	ld a, [hl-]                                      ; $57d6: $3a
	dec sp                                           ; $57d7: $3b
	dec a                                            ; $57d8: $3d
	ld d, b                                          ; $57d9: $50
	inc de                                           ; $57da: $13
	ldh a, [rTAC]                                    ; $57db: $f0 $07
	inc a                                            ; $57dd: $3c
	ld c, [hl]                                       ; $57de: $4e
	ld b, l                                          ; $57df: $45
	and b                                            ; $57e0: $a0
	ld b, [hl]                                       ; $57e1: $46
	ld e, c                                          ; $57e2: $59
	dec sp                                           ; $57e3: $3b
	xor h                                            ; $57e4: $ac
	xor $27                                          ; $57e5: $ee $27
	ld h, d                                          ; $57e7: $62
	db $ed                                           ; $57e8: $ed
	ld h, a                                          ; $57e9: $67
	db $f4                                           ; $57ea: $f4
	push hl                                          ; $57eb: $e5
	jr c, jr_094_582c                                ; $57ec: $38 $3e

	dec a                                            ; $57ee: $3d
	ld [hl], h                                       ; $57ef: $74
	and b                                            ; $57f0: $a0
	cpl                                              ; $57f1: $2f
	ld b, e                                          ; $57f2: $43
	ld a, $3f                                        ; $57f3: $3e $3f
	ld a, [hl-]                                      ; $57f5: $3a
	jr c, jr_094_582c                                ; $57f6: $38 $34

	ld a, $3f                                        ; $57f8: $3e $3f
	ld a, [hl-]                                      ; $57fa: $3a
	jr c, jr_094_5842                                ; $57fb: $38 $45

	and b                                            ; $57fd: $a0
	pop af                                           ; $57fe: $f1
	ld a, [de]                                       ; $57ff: $1a
	pop af                                           ; $5800: $f1
	inc c                                            ; $5801: $0c
	ld a, $3d                                        ; $5802: $3e $3d
	xor h                                            ; $5804: $ac
	pop af                                           ; $5805: $f1
	ld a, [de]                                       ; $5806: $1a
	pop af                                           ; $5807: $f1
	inc c                                            ; $5808: $0c
	ld a, $3d                                        ; $5809: $3e $3d
	ld c, a                                          ; $580b: $4f
	ld b, c                                          ; $580c: $41
	and b                                            ; $580d: $a0
	cpl                                              ; $580e: $2f
	ld [hl-], a                                      ; $580f: $32
	pop af                                           ; $5810: $f1
	sbc $3b                                          ; $5811: $de $3b
	ld h, c                                          ; $5813: $61
	ld d, [hl]                                       ; $5814: $56
	dec sp                                           ; $5815: $3b
	dec a                                            ; $5816: $3d
	ld a, [hl-]                                      ; $5817: $3a
	ld c, b                                          ; $5818: $48
	and e                                            ; $5819: $a3
	db $ed                                           ; $581a: $ed
	ld h, a                                          ; $581b: $67
	db $f4                                           ; $581c: $f4
	push hl                                          ; $581d: $e5
	jr c, jr_094_585e                                ; $581e: $38 $3e

	ccf                                              ; $5820: $3f
	ld a, [hl-]                                      ; $5821: $3a
	jr c, jr_094_585f                                ; $5822: $38 $3b

	ccf                                              ; $5824: $3f
	inc de                                           ; $5825: $13
	add d                                            ; $5826: $82
	add hl, sp                                       ; $5827: $39
	ld a, [hl-]                                      ; $5828: $3a
	ld d, b                                          ; $5829: $50
	inc [hl]                                         ; $582a: $34
	di                                               ; $582b: $f3

jr_094_582c:
	adc c                                            ; $582c: $89
	push af                                          ; $582d: $f5
	ld a, [hl+]                                      ; $582e: $2a
	ld [hl], d                                       ; $582f: $72
	ld a, c                                          ; $5830: $79
	ccf                                              ; $5831: $3f
	ld b, l                                          ; $5832: $45
	and b                                            ; $5833: $a0
	cpl                                              ; $5834: $2f
	ld b, e                                          ; $5835: $43
	db $eb                                           ; $5836: $eb
	db $fc                                           ; $5837: $fc
	xor b                                            ; $5838: $a8
	add a                                            ; $5839: $87
	add h                                            ; $583a: $84
	ld c, e                                          ; $583b: $4b
	ld b, b                                          ; $583c: $40
	ld b, c                                          ; $583d: $41
	ld a, [hl-]                                      ; $583e: $3a
	sbc d                                            ; $583f: $9a
	ld c, e                                          ; $5840: $4b
	inc de                                           ; $5841: $13

jr_094_5842:
	ld a, a                                          ; $5842: $7f
	ld b, a                                          ; $5843: $47
	ld a, $3a                                        ; $5844: $3e $3a
	jr c, jr_094_5897                                ; $5846: $38 $4f

	ld b, c                                          ; $5848: $41
	ld b, h                                          ; $5849: $44
	ld b, l                                          ; $584a: $45
	and b                                            ; $584b: $a0
	xor $10                                          ; $584c: $ee $10
	xor b                                            ; $584e: $a8
	ld e, e                                          ; $584f: $5b
	ld d, [hl]                                       ; $5850: $56
	ld b, [hl]                                       ; $5851: $46
	inc [hl]                                         ; $5852: $34
	ld a, a                                          ; $5853: $7f
	ld b, a                                          ; $5854: $47
	ld a, $3a                                        ; $5855: $3e $3a
	jr c, jr_094_58a1                                ; $5857: $38 $48

	and b                                            ; $5859: $a0
	cpl                                              ; $585a: $2f
	ld b, e                                          ; $585b: $43
	db $eb                                           ; $585c: $eb
	db $fc                                           ; $585d: $fc

jr_094_585e:
	xor h                                            ; $585e: $ac

jr_094_585f:
	db $ed                                           ; $585f: $ed
	ld a, $3b                                        ; $5860: $3e $3b
	xor b                                            ; $5862: $a8
	jp hl                                            ; $5863: $e9


	ld [hl+], a                                      ; $5864: $22
	inc a                                            ; $5865: $3c
	and c                                            ; $5866: $a1
	xor $1f                                          ; $5867: $ee $1f
	xor b                                            ; $5869: $a8
	ld b, b                                          ; $586a: $40
	add hl, sp                                       ; $586b: $39
	ld d, c                                          ; $586c: $51
	ld c, [hl]                                       ; $586d: $4e
	and b                                            ; $586e: $a0
	xor $27                                          ; $586f: $ee $27
	ld c, e                                          ; $5871: $4b
	ld c, h                                          ; $5872: $4c
	xor h                                            ; $5873: $ac
	ret                                              ; $5874: $c9


	xor h                                            ; $5875: $ac
	pop af                                           ; $5876: $f1
	cp d                                             ; $5877: $ba
	ld d, l                                          ; $5878: $55
	ld a, [hl-]                                      ; $5879: $3a
	dec sp                                           ; $587a: $3b
	ld h, c                                          ; $587b: $61
	ld d, [hl]                                       ; $587c: $56
	dec sp                                           ; $587d: $3b
	dec a                                            ; $587e: $3d
	and b                                            ; $587f: $a0
	cpl                                              ; $5880: $2f
	ld b, e                                          ; $5881: $43
	ld d, h                                          ; $5882: $54
	add hl, sp                                       ; $5883: $39
	ldh a, [$b5]                                     ; $5884: $f0 $b5
	add hl, sp                                       ; $5886: $39
	ldh a, [$ed]                                     ; $5887: $f0 $ed
	ld b, d                                          ; $5889: $42
	ldh a, [rAUD4ENV]                                ; $588a: $f0 $21
	ldh a, [rAUD4GO]                                 ; $588c: $f0 $23
	ld e, b                                          ; $588e: $58
	ld c, e                                          ; $588f: $4b
	xor h                                            ; $5890: $ac
	ld c, a                                          ; $5891: $4f
	add hl, sp                                       ; $5892: $39
	ldh a, [rHDMA4]                                  ; $5893: $f0 $54
	ld a, $87                                        ; $5895: $3e $87

jr_094_5897:
	add h                                            ; $5897: $84
	ld b, a                                          ; $5898: $47
	ld a, [hl-]                                      ; $5899: $3a
	dec sp                                           ; $589a: $3b
	dec a                                            ; $589b: $3d
	ld d, b                                          ; $589c: $50
	inc de                                           ; $589d: $13
	ldh a, [rTAC]                                    ; $589e: $f0 $07
	inc a                                            ; $58a0: $3c

jr_094_58a1:
	ld c, [hl]                                       ; $58a1: $4e
	ld b, l                                          ; $58a2: $45
	and b                                            ; $58a3: $a0
	cpl                                              ; $58a4: $2f
	ld b, e                                          ; $58a5: $43
	db $ed                                           ; $58a6: $ed
	ld b, e                                          ; $58a7: $43
	xor h                                            ; $58a8: $ac
	db $ed                                           ; $58a9: $ed
	ld h, a                                          ; $58aa: $67
	ld l, h                                          ; $58ab: $6c
	dec a                                            ; $58ac: $3d
	jr c, jr_094_58e9                                ; $58ad: $38 $3a

	ld d, h                                          ; $58af: $54
	ld c, c                                          ; $58b0: $49
	inc de                                           ; $58b1: $13
	add d                                            ; $58b2: $82
	xor $1f                                          ; $58b3: $ee $1f
	ld b, h                                          ; $58b5: $44
	ld c, a                                          ; $58b6: $4f
	ld b, c                                          ; $58b7: $41
	and b                                            ; $58b8: $a0
	ldh a, [rSCY]                                    ; $58b9: $f0 $42
	ld b, c                                          ; $58bb: $41
	xor b                                            ; $58bc: $a8
	jr c, jr_094_58f7                                ; $58bd: $38 $38

	ld c, d                                          ; $58bf: $4a
	ld d, c                                          ; $58c0: $51
	ld b, l                                          ; $58c1: $45
	ld e, c                                          ; $58c2: $59
	ld b, h                                          ; $58c3: $44
	xor b                                            ; $58c4: $a8
	ld c, a                                          ; $58c5: $4f
	add hl, sp                                       ; $58c6: $39
	inc [hl]                                         ; $58c7: $34
	ld a, d                                          ; $58c8: $7a
	dec sp                                           ; $58c9: $3b
	ld h, c                                          ; $58ca: $61
	ld d, [hl]                                       ; $58cb: $56
	ld h, h                                          ; $58cc: $64
	and b                                            ; $58cd: $a0
	cpl                                              ; $58ce: $2f
	ld b, e                                          ; $58cf: $43
	ld e, e                                          ; $58d0: $5b
	ld d, [hl]                                       ; $58d1: $56
	ld b, [hl]                                       ; $58d2: $46
	inc [hl]                                         ; $58d3: $34
	halt                                             ; $58d4: $76
	ld c, a                                          ; $58d5: $4f
	ld a, d                                          ; $58d6: $7a
	ld e, a                                          ; $58d7: $5f
	dec sp                                           ; $58d8: $3b
	ld c, c                                          ; $58d9: $49
	and b                                            ; $58da: $a0
	ld l, d                                          ; $58db: $6a
	ld b, d                                          ; $58dc: $42
	ldh a, [$ed]                                     ; $58dd: $f0 $ed
	inc [hl]                                         ; $58df: $34
	ld h, h                                          ; $58e0: $64
	inc a                                            ; $58e1: $3c
	ld a, $3c                                        ; $58e2: $3e $3c
	dec sp                                           ; $58e4: $3b
	dec a                                            ; $58e5: $3d
	inc de                                           ; $58e6: $13
	ld c, d                                          ; $58e7: $4a
	ld d, c                                          ; $58e8: $51

jr_094_58e9:
	xor b                                            ; $58e9: $a8
	xor $27                                          ; $58ea: $ee $27
	inc [hl]                                         ; $58ec: $34
	ld d, h                                          ; $58ed: $54
	add hl, sp                                       ; $58ee: $39
	jr c, jr_094_592a                                ; $58ef: $38 $39

jr_094_58f1:
	ld b, d                                          ; $58f1: $42
	add a                                            ; $58f2: $87
	adc e                                            ; $58f3: $8b
	ld e, h                                          ; $58f4: $5c

jr_094_58f5:
	and b                                            ; $58f5: $a0
	cpl                                              ; $58f6: $2f

jr_094_58f7:
	ld b, e                                          ; $58f7: $43
	adc b                                            ; $58f8: $88
	sub c                                            ; $58f9: $91
	inc [hl]                                         ; $58fa: $34
	ldh a, [rAUD4ENV]                                ; $58fb: $f0 $21
	ldh a, [rAUD4GO]                                 ; $58fd: $f0 $23
	jr c, jr_094_58f1                                ; $58ff: $38 $f0

	db $ed                                           ; $5901: $ed
	ld b, h                                          ; $5902: $44
	dec sp                                           ; $5903: $3b
	dec a                                            ; $5904: $3d
	inc de                                           ; $5905: $13
	ld b, l                                          ; $5906: $45
	ld c, h                                          ; $5907: $4c
	xor b                                            ; $5908: $a8
	or h                                             ; $5909: $b4
	xor h                                            ; $590a: $ac
	db $ec                                           ; $590b: $ec

jr_094_590c:
	push bc                                          ; $590c: $c5
	db $ec                                           ; $590d: $ec
	rrca                                             ; $590e: $0f
	and c                                            ; $590f: $a1
	ld l, d                                          ; $5910: $6a
	ld l, h                                          ; $5911: $6c
	dec a                                            ; $5912: $3d
	jr c, jr_094_594f                                ; $5913: $38 $3a

	inc [hl]                                         ; $5915: $34
	ldh a, [rAUD4ENV]                                ; $5916: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5918: $f0 $23
	jr c, jr_094_590c                                ; $591a: $38 $f0

	db $ed                                           ; $591c: $ed
	inc de                                           ; $591d: $13
	xor $27                                          ; $591e: $ee $27

jr_094_5920:
	inc [hl]                                         ; $5920: $34
	add a                                            ; $5921: $87
	adc e                                            ; $5922: $8b
	ld e, h                                          ; $5923: $5c
	and b                                            ; $5924: $a0
	cpl                                              ; $5925: $2f
	ld b, e                                          ; $5926: $43
	adc b                                            ; $5927: $88
	sub c                                            ; $5928: $91
	xor b                                            ; $5929: $a8

jr_094_592a:
	ldh a, [rAUD4ENV]                                ; $592a: $f0 $21
	ldh a, [rAUD4GO]                                 ; $592c: $f0 $23
	jr c, jr_094_5920                                ; $592e: $38 $f0

	db $ed                                           ; $5930: $ed
	ld b, h                                          ; $5931: $44
	dec sp                                           ; $5932: $3b
	dec a                                            ; $5933: $3d
	ld c, h                                          ; $5934: $4c
	and b                                            ; $5935: $a0
	or h                                             ; $5936: $b4
	xor h                                            ; $5937: $ac
	db $ec                                           ; $5938: $ec
	push bc                                          ; $5939: $c5
	ld a, d                                          ; $593a: $7a
	ld e, a                                          ; $593b: $5f
	and c                                            ; $593c: $a1
	db $eb                                           ; $593d: $eb
	pop af                                           ; $593e: $f1
	ld c, a                                          ; $593f: $4f
	inc de                                           ; $5940: $13
	ld a, b                                          ; $5941: $78
	ld c, l                                          ; $5942: $4d
	ld a, e                                          ; $5943: $7b
	ld b, l                                          ; $5944: $45
	inc a                                            ; $5945: $3c
	dec sp                                           ; $5946: $3b
	dec a                                            ; $5947: $3d
	ld b, d                                          ; $5948: $42
	ld b, a                                          ; $5949: $47
	and b                                            ; $594a: $a0
	cpl                                              ; $594b: $2f
	ld b, e                                          ; $594c: $43
	db $eb                                           ; $594d: $eb
	ld d, c                                          ; $594e: $51

jr_094_594f:
	xor h                                            ; $594f: $ac
	adc e                                            ; $5950: $8b
	ldh a, [$72]                                     ; $5951: $f0 $72
	ld e, d                                          ; $5953: $5a
	ld d, h                                          ; $5954: $54
	ld b, a                                          ; $5955: $47
	ld h, a                                          ; $5956: $67
	dec sp                                           ; $5957: $3b
	ccf                                              ; $5958: $3f
	ld c, [hl]                                       ; $5959: $4e
	ld b, d                                          ; $595a: $42
	and c                                            ; $595b: $a1
	db $eb                                           ; $595c: $eb
	pop af                                           ; $595d: $f1
	ld c, e                                          ; $595e: $4b
	xor h                                            ; $595f: $ac
	adc d                                            ; $5960: $8a
	ldh a, [$73]                                     ; $5961: $f0 $73
	adc a                                            ; $5963: $8f
	ld b, a                                          ; $5964: $47
	ld h, a                                          ; $5965: $67
	ld d, l                                          ; $5966: $55
	dec sp                                           ; $5967: $3b
	ccf                                              ; $5968: $3f
	ld c, b                                          ; $5969: $48
	and b                                            ; $596a: $a0
	cpl                                              ; $596b: $2f
	ld b, e                                          ; $596c: $43
	db $ec                                           ; $596d: $ec
	ldh a, [$35]                                     ; $596e: $f0 $35
	rla                                              ; $5970: $17
	ld [hl-], a                                      ; $5971: $32
	ld b, [hl]                                       ; $5972: $46
	jr c, jr_094_58f5                                ; $5973: $38 $80

	ld b, a                                          ; $5975: $47
	inc [hl]                                         ; $5976: $34
	ldh a, [$3f]                                     ; $5977: $f0 $3f
	ld h, d                                          ; $5979: $62
	db $ed                                           ; $597a: $ed
	and [hl]                                         ; $597b: $a6
	ld d, c                                          ; $597c: $51
	ld c, [hl]                                       ; $597d: $4e
	pop af                                           ; $597e: $f1
	ld a, e                                          ; $597f: $7b
	ldh a, [hDisp1_WY]                                     ; $5980: $f0 $95
	inc de                                           ; $5982: $13
	ld b, [hl]                                       ; $5983: $46
	dec sp                                           ; $5984: $3b
	dec a                                            ; $5985: $3d
	inc a                                            ; $5986: $3c
	ld a, [hl-]                                      ; $5987: $3a
	ld [hl], $33                                     ; $5988: $36 $33
	add hl, bc                                       ; $598a: $09
	or h                                             ; $598b: $b4
	xor h                                            ; $598c: $ac
	db $ec                                           ; $598d: $ec
	push bc                                          ; $598e: $c5
	ld a, d                                          ; $598f: $7a
	ld d, a                                          ; $5990: $57
	ld d, d                                          ; $5991: $52
	ld a, $66                                        ; $5992: $3e $66
	and b                                            ; $5994: $a0
	cpl                                              ; $5995: $2f
	ld b, e                                          ; $5996: $43
	ld b, b                                          ; $5997: $40
	add hl, sp                                       ; $5998: $39
	ld b, h                                          ; $5999: $44
	ld c, h                                          ; $599a: $4c
	xor b                                            ; $599b: $a8
	ld c, a                                          ; $599c: $4f
	add hl, sp                                       ; $599d: $39
	ld a, d                                          ; $599e: $7a
	ld e, a                                          ; $599f: $5f
	add hl, sp                                       ; $59a0: $39
	and b                                            ; $59a1: $a0
	ld d, h                                          ; $59a2: $54
	ld d, h                                          ; $59a3: $54
	ldh a, [$aa]                                     ; $59a4: $f0 $aa
	adc c                                            ; $59a6: $89
	adc a                                            ; $59a7: $8f
	ld c, d                                          ; $59a8: $4a
	ld d, c                                          ; $59a9: $51
	ld b, l                                          ; $59aa: $45
	ld c, h                                          ; $59ab: $4c
	xor b                                            ; $59ac: $a8
	ld l, e                                          ; $59ad: $6b
	ld l, [hl]                                       ; $59ae: $6e
	dec sp                                           ; $59af: $3b
	ccf                                              ; $59b0: $3f
	ld c, [hl]                                       ; $59b1: $4e
	ld b, d                                          ; $59b2: $42
	inc a                                            ; $59b3: $3c
	ld a, [hl-]                                      ; $59b4: $3a
	ld [hl], h                                       ; $59b5: $74
	and c                                            ; $59b6: $a1
	ld d, h                                          ; $59b7: $54
	ld d, h                                          ; $59b8: $54
	ldh a, [$aa]                                     ; $59b9: $f0 $aa
	adc c                                            ; $59bb: $89
	adc a                                            ; $59bc: $8f
	ld b, h                                          ; $59bd: $44
	ld b, l                                          ; $59be: $45
	ld c, h                                          ; $59bf: $4c
	xor b                                            ; $59c0: $a8
	ld l, e                                          ; $59c1: $6b
	ld l, [hl]                                       ; $59c2: $6e
	dec sp                                           ; $59c3: $3b
	ccf                                              ; $59c4: $3f
	ld c, [hl]                                       ; $59c5: $4e
	ld b, d                                          ; $59c6: $42
	inc a                                            ; $59c7: $3c
	ld a, [hl-]                                      ; $59c8: $3a
	ld [hl], h                                       ; $59c9: $74
	and c                                            ; $59ca: $a1
	cpl                                              ; $59cb: $2f
	ld b, e                                          ; $59cc: $43
	xor $2a                                          ; $59cd: $ee $2a
	db $ec                                           ; $59cf: $ec
	ldh a, [c]                                       ; $59d0: $f2
	ld l, h                                          ; $59d1: $6c
	dec a                                            ; $59d2: $3d
	jr c, jr_094_5a19                                ; $59d3: $38 $44

	ld c, h                                          ; $59d5: $4c
	xor b                                            ; $59d6: $a8
	ld b, [hl]                                       ; $59d7: $46
	dec sp                                           ; $59d8: $3b

jr_094_59d9:
	inc [hl]                                         ; $59d9: $34
	db $ec                                           ; $59da: $ec
	db $10                                           ; $59db: $10
	inc de                                           ; $59dc: $13
	ldh a, [$bb]                                     ; $59dd: $f0 $bb
	ld d, d                                          ; $59df: $52
	ld c, [hl]                                       ; $59e0: $4e
	ld l, h                                          ; $59e1: $6c
	dec a                                            ; $59e2: $3d
	jr c, jr_094_5a29                                ; $59e3: $38 $44

	ld b, l                                          ; $59e5: $45
	and b                                            ; $59e6: $a0
	db $ec                                           ; $59e7: $ec
	rst SubAFromHL                                          ; $59e8: $d7
	inc [hl]                                         ; $59e9: $34
	ldh a, [$2f]                                     ; $59ea: $f0 $2f
	ld [hl], l                                       ; $59ec: $75
	ld a, l                                          ; $59ed: $7d
	ld c, d                                          ; $59ee: $4a
	ld a, $3d                                        ; $59ef: $3e $3d
	inc de                                           ; $59f1: $13
	ld c, h                                          ; $59f2: $4c
	xor b                                            ; $59f3: $a8
	db $eb                                           ; $59f4: $eb
	pop af                                           ; $59f5: $f1
	ld c, a                                          ; $59f6: $4f
	ld [hl], d                                       ; $59f7: $72
	ld b, a                                          ; $59f8: $47
	ld a, b                                          ; $59f9: $78
	ld c, l                                          ; $59fa: $4d
	ld a, e                                          ; $59fb: $7b
	inc de                                           ; $59fc: $13
	db $ec                                           ; $59fd: $ec
	cp c                                             ; $59fe: $b9
	ld b, d                                          ; $59ff: $42
	ld b, a                                          ; $5a00: $47
	and b                                            ; $5a01: $a0
	ldh a, [rAUD3LEVEL]                              ; $5a02: $f0 $1c
	ld d, e                                          ; $5a04: $53
	pop af                                           ; $5a05: $f1
	ld a, [hl-]                                      ; $5a06: $3a
	ld d, l                                          ; $5a07: $55
	ld a, [hl-]                                      ; $5a08: $3a
	dec sp                                           ; $5a09: $3b
	ld h, c                                          ; $5a0a: $61

jr_094_5a0b:
	ld d, [hl]                                       ; $5a0b: $56
	dec sp                                           ; $5a0c: $3b
	dec a                                            ; $5a0d: $3d
	xor b                                            ; $5a0e: $a8
	ld c, a                                          ; $5a0f: $4f
	add hl, sp                                       ; $5a10: $39
	ld a, d                                          ; $5a11: $7a
	ld d, a                                          ; $5a12: $57
	ld d, d                                          ; $5a13: $52
	ld a, c                                          ; $5a14: $79
	ld b, c                                          ; $5a15: $41
	inc a                                            ; $5a16: $3c
	and c                                            ; $5a17: $a1
	db $ec                                           ; $5a18: $ec

jr_094_5a19:
	rst SubAFromHL                                          ; $5a19: $d7
	inc [hl]                                         ; $5a1a: $34
	ldh a, [$2f]                                     ; $5a1b: $f0 $2f
	ld [hl], l                                       ; $5a1d: $75
	ld a, l                                          ; $5a1e: $7d
	ld b, h                                          ; $5a1f: $44
	dec sp                                           ; $5a20: $3b
	dec a                                            ; $5a21: $3d
	inc de                                           ; $5a22: $13
	ld c, h                                          ; $5a23: $4c
	xor b                                            ; $5a24: $a8
	ld d, d                                          ; $5a25: $52
	ld c, [hl]                                       ; $5a26: $4e
	ld c, d                                          ; $5a27: $4a
	inc [hl]                                         ; $5a28: $34

jr_094_5a29:
	ldh a, [$d0]                                     ; $5a29: $f0 $d0
	ld [hl], a                                       ; $5a2b: $77
	ldh a, [c]                                       ; $5a2c: $f2
	or b                                             ; $5a2d: $b0
	ld b, d                                          ; $5a2e: $42
	ldh a, [$ca]                                     ; $5a2f: $f0 $ca
	ld b, a                                          ; $5a31: $47
	jr c, jr_094_5a71                                ; $5a32: $38 $3d

	inc de                                           ; $5a34: $13
	ld l, h                                          ; $5a35: $6c
	dec a                                            ; $5a36: $3d
	jr c, jr_094_59d9                                ; $5a37: $38 $a0

	cpl                                              ; $5a39: $2f
	ld b, e                                          ; $5a3a: $43
	ldh a, [$d0]                                     ; $5a3b: $f0 $d0
	ld [hl], a                                       ; $5a3d: $77
	ldh a, [c]                                       ; $5a3e: $f2
	or b                                             ; $5a3f: $b0
	ld b, d                                          ; $5a40: $42
	ldh a, [$ca]                                     ; $5a41: $f0 $ca
	ld c, h                                          ; $5a43: $4c
	add l                                            ; $5a44: $85
	ld c, b                                          ; $5a45: $48
	dec [hl]                                         ; $5a46: $35
	rla                                              ; $5a47: $17
	ld [hl-], a                                      ; $5a48: $32
	db $eb                                           ; $5a49: $eb
	db $fc                                           ; $5a4a: $fc
	dec sp                                           ; $5a4b: $3b
	ccf                                              ; $5a4c: $3f
	xor h                                            ; $5a4d: $ac
	db $ed                                           ; $5a4e: $ed
	ld h, a                                          ; $5a4f: $67
	dec sp                                           ; $5a50: $3b
	pop af                                           ; $5a51: $f1
	rla                                              ; $5a52: $17
	jr c, jr_094_5a8f                                ; $5a53: $38 $3a

	ld [hl], h                                       ; $5a55: $74
	ld c, b                                          ; $5a56: $48
	and e                                            ; $5a57: $a3
	ld a, [hl-]                                      ; $5a58: $3a
	ld b, c                                          ; $5a59: $41
	inc a                                            ; $5a5a: $3c
	inc [hl]                                         ; $5a5b: $34
	ldh a, [rAUD3LEVEL]                              ; $5a5c: $f0 $1c
	ld d, e                                          ; $5a5e: $53
	inc de                                           ; $5a5f: $13
	db $eb                                           ; $5a60: $eb
	jr c, jr_094_5a0b                                ; $5a61: $38 $a8

	ld c, a                                          ; $5a63: $4f
	add hl, sp                                       ; $5a64: $39
	inc [hl]                                         ; $5a65: $34
	ld a, d                                          ; $5a66: $7a
	ld e, a                                          ; $5a67: $5f
	add hl, sp                                       ; $5a68: $39
	ld b, l                                          ; $5a69: $45
	and b                                            ; $5a6a: $a0
	db $ec                                           ; $5a6b: $ec
	rst SubAFromHL                                          ; $5a6c: $d7
	inc [hl]                                         ; $5a6d: $34
	ldh a, [$2f]                                     ; $5a6e: $f0 $2f
	ld [hl], l                                       ; $5a70: $75

jr_094_5a71:
	ld a, l                                          ; $5a71: $7d
	ld b, h                                          ; $5a72: $44
	dec sp                                           ; $5a73: $3b
	dec a                                            ; $5a74: $3d
	inc de                                           ; $5a75: $13
	ld e, l                                          ; $5a76: $5d
	ld e, d                                          ; $5a77: $5a
	inc [hl]                                         ; $5a78: $34
	ldh a, [rAUD3LEVEL]                              ; $5a79: $f0 $1c
	ld d, e                                          ; $5a7b: $53
	ldh a, [$2b]                                     ; $5a7c: $f0 $2b
	ldh a, [$35]                                     ; $5a7e: $f0 $35
	ldh a, [$2b]                                     ; $5a80: $f0 $2b
	ldh a, [$35]                                     ; $5a82: $f0 $35
	db $eb                                           ; $5a84: $eb
	ld d, [hl]                                       ; $5a85: $56
	and b                                            ; $5a86: $a0
	cpl                                              ; $5a87: $2f
	ld b, e                                          ; $5a88: $43
	jp nc, $f0ac                                     ; $5a89: $d2 $ac $f0

	inc e                                            ; $5a8c: $1c
	ld b, a                                          ; $5a8d: $47
	ld c, e                                          ; $5a8e: $4b

jr_094_5a8f:
	ld b, l                                          ; $5a8f: $45
	ld d, l                                          ; $5a90: $55
	ld a, [hl-]                                      ; $5a91: $3a
	jr c, @+$3e                                      ; $5a92: $38 $3c

	ld c, a                                          ; $5a94: $4f
	ld c, h                                          ; $5a95: $4c
	and b                                            ; $5a96: $a0
	or h                                             ; $5a97: $b4
	xor h                                            ; $5a98: $ac
	ld a, d                                          ; $5a99: $7a
	ld c, [hl]                                       ; $5a9a: $4e
	ld c, h                                          ; $5a9b: $4c
	and b                                            ; $5a9c: $a0
	cpl                                              ; $5a9d: $2f
	ld b, e                                          ; $5a9e: $43
	ld b, [hl]                                       ; $5a9f: $46
	dec sp                                           ; $5aa0: $3b
	inc [hl]                                         ; $5aa1: $34
	halt                                             ; $5aa2: $76
	ld c, a                                          ; $5aa3: $4f
	ld a, d                                          ; $5aa4: $7a
	ld c, [hl]                                       ; $5aa5: $4e
	ld b, l                                          ; $5aa6: $45
	and b                                            ; $5aa7: $a0
	xor $27                                          ; $5aa8: $ee $27
	xor h                                            ; $5aaa: $ac
	ld d, h                                          ; $5aab: $54
	ld c, l                                          ; $5aac: $4d
	ld [hl], d                                       ; $5aad: $72
	dec a                                            ; $5aae: $3d
	ld d, h                                          ; $5aaf: $54
	ld c, c                                          ; $5ab0: $49
	ld b, [hl]                                       ; $5ab1: $46

jr_094_5ab2:
	ld d, a                                          ; $5ab2: $57
	ld d, d                                          ; $5ab3: $52
	ld d, c                                          ; $5ab4: $51
	and b                                            ; $5ab5: $a0
	cpl                                              ; $5ab6: $2f
	ld b, e                                          ; $5ab7: $43
	ld e, [hl]                                       ; $5ab8: $5e
	dec sp                                           ; $5ab9: $3b
	inc [hl]                                         ; $5aba: $34
	ld e, d                                          ; $5abb: $5a
	ld d, h                                          ; $5abc: $54
	ld c, d                                          ; $5abd: $4a
	and c                                            ; $5abe: $a1
	ld b, h                                          ; $5abf: $44
	jr c, jr_094_5ab2                                ; $5ac0: $38 $f0

	cp $41                                           ; $5ac2: $fe $41
	sbc [hl]                                         ; $5ac4: $9e
	inc [hl]                                         ; $5ac5: $34
	db $ed                                           ; $5ac6: $ed
	rlca                                             ; $5ac7: $07
	ld c, d                                          ; $5ac8: $4a
	xor l                                            ; $5ac9: $ad
	db $ec                                           ; $5aca: $ec
	rst SubAFromHL                                          ; $5acb: $d7
	db $ed                                           ; $5acc: $ed
	ld l, a                                          ; $5acd: $6f
	ld h, c                                          ; $5ace: $61
	ldh a, [$5c]                                     ; $5acf: $f0 $5c
	jr c, jr_094_5b15                                ; $5ad1: $38 $42

	ld d, e                                          ; $5ad3: $53
	xor h                                            ; $5ad4: $ac
	ldh a, [rAUD2HIGH]                               ; $5ad5: $f0 $19
	inc a                                            ; $5ad7: $3c
	ld d, b                                          ; $5ad8: $50
	sub h                                            ; $5ad9: $94
	ccf                                              ; $5ada: $3f
	ld d, l                                          ; $5adb: $55
	ld c, [hl]                                       ; $5adc: $4e
	ld b, d                                          ; $5add: $42
	and b                                            ; $5ade: $a0
	cpl                                              ; $5adf: $2f
	ld b, e                                          ; $5ae0: $43
	ld l, e                                          ; $5ae1: $6b
	ld b, h                                          ; $5ae2: $44
	inc [hl]                                         ; $5ae3: $34
	ldh a, [$74]                                     ; $5ae4: $f0 $74
	ldh a, [$7a]                                     ; $5ae6: $f0 $7a
	ld b, d                                          ; $5ae8: $42
	ldh a, [rAUDVOL]                                 ; $5ae9: $f0 $24
	inc a                                            ; $5aeb: $3c
	xor l                                            ; $5aec: $ad
	ld [hl-], a                                      ; $5aed: $32
	ldh a, [$5f]                                     ; $5aee: $f0 $5f
	ldh a, [$9b]                                     ; $5af0: $f0 $9b
	ld e, e                                          ; $5af2: $5b
	ld d, [hl]                                       ; $5af3: $56
	sub c                                            ; $5af4: $91
	dec a                                            ; $5af5: $3d
	ld d, a                                          ; $5af6: $57
	sbc [hl]                                         ; $5af7: $9e
	ld a, [hl-]                                      ; $5af8: $3a
	ld b, d                                          ; $5af9: $42
	inc a                                            ; $5afa: $3c
	ld c, c                                          ; $5afb: $49
	inc de                                           ; $5afc: $13
	ld [hl], a                                       ; $5afd: $77
	dec sp                                           ; $5afe: $3b
	ld h, c                                          ; $5aff: $61
	ld d, [hl]                                       ; $5b00: $56
	dec sp                                           ; $5b01: $3b
	dec a                                            ; $5b02: $3d
	ld b, l                                          ; $5b03: $45
	ld c, b                                          ; $5b04: $48
	and e                                            ; $5b05: $a3
	db $ec                                           ; $5b06: $ec
	push bc                                          ; $5b07: $c5
	xor h                                            ; $5b08: $ac
	ld a, d                                          ; $5b09: $7a
	ld d, a                                          ; $5b0a: $57
	ld d, d                                          ; $5b0b: $52
	ld a, c                                          ; $5b0c: $79
	ld b, c                                          ; $5b0d: $41
	inc a                                            ; $5b0e: $3c
	and c                                            ; $5b0f: $a1
	cpl                                              ; $5b10: $2f
	ld b, e                                          ; $5b11: $43
	rst JumpTable                                          ; $5b12: $c7
	ld b, h                                          ; $5b13: $44
	ld c, h                                          ; $5b14: $4c

jr_094_5b15:
	xor b                                            ; $5b15: $a8
	ld a, d                                          ; $5b16: $7a
	ld e, a                                          ; $5b17: $5f
	add hl, sp                                       ; $5b18: $39
	and b                                            ; $5b19: $a0
	xor $27                                          ; $5b1a: $ee $27
	inc [hl]                                         ; $5b1c: $34
	ld l, d                                          ; $5b1d: $6a
	ld b, d                                          ; $5b1e: $42
	inc [hl]                                         ; $5b1f: $34
	db $ed                                           ; $5b20: $ed
	rlca                                             ; $5b21: $07
	ld c, d                                          ; $5b22: $4a
	inc de                                           ; $5b23: $13
	ld [hl], d                                       ; $5b24: $72
	dec a                                            ; $5b25: $3d
	ld d, h                                          ; $5b26: $54
	ld c, c                                          ; $5b27: $49
	ld b, [hl]                                       ; $5b28: $46
	ld c, [hl]                                       ; $5b29: $4e
	ld b, l                                          ; $5b2a: $45
	and b                                            ; $5b2b: $a0
	cpl                                              ; $5b2c: $2f
	ld b, e                                          ; $5b2d: $43
	db $ed                                           ; $5b2e: $ed
	rlca                                             ; $5b2f: $07
	ld c, d                                          ; $5b30: $4a
	inc [hl]                                         ; $5b31: $34
	adc b                                            ; $5b32: $88
	sub c                                            ; $5b33: $91
	ld [hl], $17                                     ; $5b34: $36 $17
	ld [hl-], a                                      ; $5b36: $32
	db $ed                                           ; $5b37: $ed
	call z, $f042                                    ; $5b38: $cc $42 $f0
	xor d                                            ; $5b3b: $aa
	adc c                                            ; $5b3c: $89
	ld c, e                                          ; $5b3d: $4b
	inc de                                           ; $5b3e: $13
	ld d, h                                          ; $5b3f: $54
	ld d, h                                          ; $5b40: $54
	ld d, d                                          ; $5b41: $52
	ld c, d                                          ; $5b42: $4a
	pop af                                           ; $5b43: $f1
	dec hl                                           ; $5b44: $2b
	pop af                                           ; $5b45: $f1
	ld h, $3e                                        ; $5b46: $26 $3e
	dec a                                            ; $5b48: $3d
	ld b, d                                          ; $5b49: $42
	inc a                                            ; $5b4a: $3c
	ld c, b                                          ; $5b4b: $48
	and e                                            ; $5b4c: $a3
	ldh a, [rAUD2HIGH]                               ; $5b4d: $f0 $19
	inc a                                            ; $5b4f: $3c
	ld d, b                                          ; $5b50: $50
	ld c, h                                          ; $5b51: $4c
	inc [hl]                                         ; $5b52: $34
	ld e, h                                          ; $5b53: $5c
	pop af                                           ; $5b54: $f1
	halt                                             ; $5b55: $76
	db $f4                                           ; $5b56: $f4
	rst SubAFromDE                                          ; $5b57: $df
	inc de                                           ; $5b58: $13
	ldh a, [$5c]                                     ; $5b59: $f0 $5c
	jr c, jr_094_5b9f                                ; $5b5b: $38 $42

	ld d, e                                          ; $5b5d: $53
	sub h                                            ; $5b5e: $94
	ccf                                              ; $5b5f: $3f
	ld d, l                                          ; $5b60: $55
	ld c, [hl]                                       ; $5b61: $4e
	ld b, d                                          ; $5b62: $42
	and b                                            ; $5b63: $a0
	cpl                                              ; $5b64: $2f
	ld b, e                                          ; $5b65: $43
	ld b, b                                          ; $5b66: $40
	inc [hl]                                         ; $5b67: $34
	ld b, b                                          ; $5b68: $40
	ld c, l                                          ; $5b69: $4d
	ld c, e                                          ; $5b6a: $4b
	xor h                                            ; $5b6b: $ac
	ldh a, [$74]                                     ; $5b6c: $f0 $74
	ldh a, [$7a]                                     ; $5b6e: $f0 $7a
	ld b, d                                          ; $5b70: $42
	ldh a, [rAUDVOL]                                 ; $5b71: $f0 $24
	ld c, d                                          ; $5b73: $4a
	ld a, $66                                        ; $5b74: $3e $66
	and b                                            ; $5b76: $a0
	db $ed                                           ; $5b77: $ed
	ld b, e                                          ; $5b78: $43
	add l                                            ; $5b79: $85
	xor l                                            ; $5b7a: $ad
	ld l, [hl]                                       ; $5b7b: $6e
	dec sp                                           ; $5b7c: $3b
	db $ec                                           ; $5b7d: $ec
	add hl, de                                       ; $5b7e: $19
	ld c, a                                          ; $5b7f: $4f
	ld b, c                                          ; $5b80: $41
	and b                                            ; $5b81: $a0
	cpl                                              ; $5b82: $2f
	ld b, e                                          ; $5b83: $43
	ld b, b                                          ; $5b84: $40
	inc [hl]                                         ; $5b85: $34
	or h                                             ; $5b86: $b4

jr_094_5b87:
	xor h                                            ; $5b87: $ac
	db $ec                                           ; $5b88: $ec
	push bc                                          ; $5b89: $c5
	db $ec                                           ; $5b8a: $ec
	rrca                                             ; $5b8b: $0f
	and c                                            ; $5b8c: $a1
	xor $27                                          ; $5b8d: $ee $27
	ld c, h                                          ; $5b8f: $4c
	inc [hl]                                         ; $5b90: $34
	ld d, h                                          ; $5b91: $54
	ld c, l                                          ; $5b92: $4d
	xor h                                            ; $5b93: $ac
	ld b, h                                          ; $5b94: $44
	jr c, jr_094_5b87                                ; $5b95: $38 $f0

	cp $41                                           ; $5b97: $fe $41
	sbc [hl]                                         ; $5b99: $9e
	ld b, a                                          ; $5b9a: $47
	db $eb                                           ; $5b9b: $eb
	pop af                                           ; $5b9c: $f1
	ld c, c                                          ; $5b9d: $49
	inc de                                           ; $5b9e: $13

jr_094_5b9f:
	db $ed                                           ; $5b9f: $ed

Jump_094_5ba0:
	rlca                                             ; $5ba0: $07
	ld c, d                                          ; $5ba1: $4a
	ld [hl], d                                       ; $5ba2: $72
	dec a                                            ; $5ba3: $3d
	ld b, l                                          ; $5ba4: $45
	and b                                            ; $5ba5: $a0
	cpl                                              ; $5ba6: $2f
	ld b, e                                          ; $5ba7: $43
	ld b, b                                          ; $5ba8: $40
	ld c, l                                          ; $5ba9: $4d
	inc [hl]                                         ; $5baa: $34
	ldh a, [$74]                                     ; $5bab: $f0 $74
	ldh a, [$7a]                                     ; $5bad: $f0 $7a
	db $ec                                           ; $5baf: $ec
	ret c                                            ; $5bb0: $d8

	ld b, d                                          ; $5bb1: $42
	and c                                            ; $5bb2: $a1
	ld b, b                                          ; $5bb3: $40
	add hl, sp                                       ; $5bb4: $39
	xor h                                            ; $5bb5: $ac
	db $ec                                           ; $5bb6: $ec
	rst SubAFromHL                                          ; $5bb7: $d7
	ld e, h                                          ; $5bb8: $5c
	pop af                                           ; $5bb9: $f1
	halt                                             ; $5bba: $76
	db $f4                                           ; $5bbb: $f4
	rst SubAFromDE                                          ; $5bbc: $df
	ldh a, [$5c]                                     ; $5bbd: $f0 $5c
	inc a                                            ; $5bbf: $3c
	dec sp                                           ; $5bc0: $3b
	dec a                                            ; $5bc1: $3d
	and b                                            ; $5bc2: $a0
	cpl                                              ; $5bc3: $2f
	ld b, e                                          ; $5bc4: $43
	db $ec                                           ; $5bc5: $ec
	reti                                             ; $5bc6: $d9


	xor l                                            ; $5bc7: $ad
	ld [hl-], a                                      ; $5bc8: $32
	halt                                             ; $5bc9: $76
	ld c, a                                          ; $5bca: $4f
	ld [hl], d                                       ; $5bcb: $72
	dec a                                            ; $5bcc: $3d
	ld c, a                                          ; $5bcd: $4f
	ld b, c                                          ; $5bce: $41
	and e                                            ; $5bcf: $a3
	or h                                             ; $5bd0: $b4
	xor h                                            ; $5bd1: $ac
	db $ec                                           ; $5bd2: $ec
	push bc                                          ; $5bd3: $c5
	inc de                                           ; $5bd4: $13
	ld a, d                                          ; $5bd5: $7a
	ld d, a                                          ; $5bd6: $57
	ld d, d                                          ; $5bd7: $52
	ld a, $66                                        ; $5bd8: $3e $66
	and b                                            ; $5bda: $a0
	ld b, [hl]                                       ; $5bdb: $46
	dec sp                                           ; $5bdc: $3b
	xor h                                            ; $5bdd: $ac
	ld l, e                                          ; $5bde: $6b
	inc a                                            ; $5bdf: $3c
	ldh a, [$bb]                                     ; $5be0: $f0 $bb
	ld d, d                                          ; $5be2: $52
	ld c, [hl]                                       ; $5be3: $4e
	ld l, h                                          ; $5be4: $6c
	dec a                                            ; $5be5: $3d
	jr c, jr_094_5c32                                ; $5be6: $38 $4a

	ld d, c                                          ; $5be8: $51
	ld c, h                                          ; $5be9: $4c
	and b                                            ; $5bea: $a0
	ld b, [hl]                                       ; $5beb: $46
	dec sp                                           ; $5bec: $3b
	xor h                                            ; $5bed: $ac
	ld l, e                                          ; $5bee: $6b
	inc a                                            ; $5bef: $3c
	ldh a, [$bb]                                     ; $5bf0: $f0 $bb
	ld d, d                                          ; $5bf2: $52
	ld c, [hl]                                       ; $5bf3: $4e
	ld l, h                                          ; $5bf4: $6c
	dec a                                            ; $5bf5: $3d
	jr c, @-$5e                                      ; $5bf6: $38 $a0

	add hl, bc                                       ; $5bf8: $09
	jp hl                                            ; $5bf9: $e9


	sbc $a0                                          ; $5bfa: $de $a0
	cpl                                              ; $5bfc: $2f
	ld b, e                                          ; $5bfd: $43
	ld b, l                                          ; $5bfe: $45
	inc a                                            ; $5bff: $3c
	dec sp                                           ; $5c00: $3b
	dec a                                            ; $5c01: $3d
	xor b                                            ; $5c02: $a8
	add sp, -$6d                                     ; $5c03: $e8 $93
	and b                                            ; $5c05: $a0
	add hl, sp                                       ; $5c06: $39
	ld h, e                                          ; $5c07: $63
	ld e, c                                          ; $5c08: $59
	inc [hl]                                         ; $5c09: $34
	adc $ac                                          ; $5c0a: $ce $ac
	sbc e                                            ; $5c0c: $9b
	ld d, e                                          ; $5c0d: $53
	db $eb                                           ; $5c0e: $eb
	ld l, e                                          ; $5c0f: $6b
	ld c, h                                          ; $5c10: $4c
	and b                                            ; $5c11: $a0
	cpl                                              ; $5c12: $2f
	ld b, e                                          ; $5c13: $43
	jp hl                                            ; $5c14: $e9


	push de                                          ; $5c15: $d5
	inc de                                           ; $5c16: $13
	push af                                          ; $5c17: $f5
	ld [hl], $3b                                     ; $5c18: $36 $3b
	dec a                                            ; $5c1a: $3d
	ld b, c                                          ; $5c1b: $41
	ld b, h                                          ; $5c1c: $44
	ld b, l                                          ; $5c1d: $45
	and b                                            ; $5c1e: $a0
	ld l, a                                          ; $5c1f: $6f
	inc [hl]                                         ; $5c20: $34
	db $ed                                           ; $5c21: $ed
	ld e, l                                          ; $5c22: $5d
	ld c, d                                          ; $5c23: $4a
	sbc e                                            ; $5c24: $9b
	ld d, e                                          ; $5c25: $53
	inc de                                           ; $5c26: $13
	pop af                                           ; $5c27: $f1
	ld l, $5d                                        ; $5c28: $2e $5d
	ld a, [hl-]                                      ; $5c2a: $3a
	jr c, jr_094_5c69                                ; $5c2b: $38 $3c

	ld d, b                                          ; $5c2d: $50
	inc [hl]                                         ; $5c2e: $34
	sbc e                                            ; $5c2f: $9b
	ld h, d                                          ; $5c30: $62
	pop af                                           ; $5c31: $f1

jr_094_5c32:
	ld l, $5d                                        ; $5c32: $2e $5d
	ld c, [hl]                                       ; $5c34: $4e
	add h                                            ; $5c35: $84
	dec sp                                           ; $5c36: $3b
	ccf                                              ; $5c37: $3f
	inc de                                           ; $5c38: $13
	db $ed                                           ; $5c39: $ed
	adc d                                            ; $5c3a: $8a
	ld a, $61                                        ; $5c3b: $3e $61
	ld d, [hl]                                       ; $5c3d: $56
	add hl, sp                                       ; $5c3e: $39
	ld h, e                                          ; $5c3f: $63
	and b                                            ; $5c40: $a0
	cpl                                              ; $5c41: $2f
	ld b, e                                          ; $5c42: $43
	add sp, -$2d                                     ; $5c43: $e8 $d3
	inc de                                           ; $5c45: $13
	jp hl                                            ; $5c46: $e9


	dec a                                            ; $5c47: $3d
	xor b                                            ; $5c48: $a8
	add sp, -$5a                                     ; $5c49: $e8 $a6
	and b                                            ; $5c4b: $a0
	ld l, a                                          ; $5c4c: $6f
	ld b, a                                          ; $5c4d: $47
	xor c                                            ; $5c4e: $a9
	ld c, d                                          ; $5c4f: $4a
	ld c, a                                          ; $5c50: $4f
	inc [hl]                                         ; $5c51: $34
	ldh a, [$63]                                     ; $5c52: $f0 $63
	pop af                                           ; $5c54: $f1
	dec sp                                           ; $5c55: $3b
	ld c, d                                          ; $5c56: $4a
	ld e, h                                          ; $5c57: $5c
	ld c, [hl]                                       ; $5c58: $4e
	inc a                                            ; $5c59: $3c
	ld a, [hl-]                                      ; $5c5a: $3a
	ld [hl], h                                       ; $5c5b: $74
	xor b                                            ; $5c5c: $a8
	ld b, [hl]                                       ; $5c5d: $46
	dec sp                                           ; $5c5e: $3b
	inc [hl]                                         ; $5c5f: $34
	ld c, a                                          ; $5c60: $4f
	add hl, sp                                       ; $5c61: $39
	ld h, a                                          ; $5c62: $67
	inc a                                            ; $5c63: $3c
	ld a, [hl-]                                      ; $5c64: $3a
	jr c, jr_094_5cb0                                ; $5c65: $38 $49

	ld c, b                                          ; $5c67: $48
	and b                                            ; $5c68: $a0

jr_094_5c69:
	cpl                                              ; $5c69: $2f
	ld b, e                                          ; $5c6a: $43
	ld e, [hl]                                       ; $5c6b: $5e
	add l                                            ; $5c6c: $85
	xor b                                            ; $5c6d: $a8
	jp hl                                            ; $5c6e: $e9


	or e                                             ; $5c6f: $b3
	and c                                            ; $5c70: $a1
	jp hl                                            ; $5c71: $e9


	ld [hl], a                                       ; $5c72: $77
	xor h                                            ; $5c73: $ac
	db $ed                                           ; $5c74: $ed
	ld h, d                                          ; $5c75: $62
	ld c, c                                          ; $5c76: $49
	xor $1d                                          ; $5c77: $ee $1d
	ld a, $3f                                        ; $5c79: $3e $3f
	ld c, [hl]                                       ; $5c7b: $4e
	ld b, d                                          ; $5c7c: $42
	xor l                                            ; $5c7d: $ad

jr_094_5c7e:
	ld [hl], b                                       ; $5c7e: $70
	ld [hl], c                                       ; $5c7f: $71
	ld b, c                                          ; $5c80: $41
	ld c, h                                          ; $5c81: $4c
	and b                                            ; $5c82: $a0
	db $eb                                           ; $5c83: $eb
	rlca                                             ; $5c84: $07
	and b                                            ; $5c85: $a0
	ld d, c                                          ; $5c86: $51
	ld [hl], b                                       ; $5c87: $70
	jr c, jr_094_5c7e                                ; $5c88: $38 $f4

	sub a                                            ; $5c8a: $97
	ld b, d                                          ; $5c8b: $42
	sbc e                                            ; $5c8c: $9b
	ld d, e                                          ; $5c8d: $53
	inc de                                           ; $5c8e: $13
	db $eb                                           ; $5c8f: $eb
	ld l, e                                          ; $5c90: $6b
	ld b, d                                          ; $5c91: $42
	ld c, h                                          ; $5c92: $4c
	and b                                            ; $5c93: $a0
	sbc e                                            ; $5c94: $9b
	ld h, d                                          ; $5c95: $62
	push af                                          ; $5c96: $f5
	ld [hl], $4d                                     ; $5c97: $36 $4d
	ld c, [hl]                                       ; $5c99: $4e
	add h                                            ; $5c9a: $84
	dec sp                                           ; $5c9b: $3b
	ccf                                              ; $5c9c: $3f
	xor h                                            ; $5c9d: $ac
	db $ed                                           ; $5c9e: $ed
	adc d                                            ; $5c9f: $8a
	ld d, c                                          ; $5ca0: $51
	ld c, [hl]                                       ; $5ca1: $4e
	ld h, e                                          ; $5ca2: $63
	and b                                            ; $5ca3: $a0
	ld b, [hl]                                       ; $5ca4: $46
	ld d, a                                          ; $5ca5: $57
	ld d, e                                          ; $5ca6: $53
	ld c, c                                          ; $5ca7: $49
	add hl, sp                                       ; $5ca8: $39
	xor b                                            ; $5ca9: $a8
	ld b, [hl]                                       ; $5caa: $46
	dec sp                                           ; $5cab: $3b
	xor h                                            ; $5cac: $ac
	jp hl                                            ; $5cad: $e9


	inc a                                            ; $5cae: $3c
	and b                                            ; $5caf: $a0

jr_094_5cb0:
	db $ed                                           ; $5cb0: $ed
	ld h, d                                          ; $5cb1: $62
	ld c, c                                          ; $5cb2: $49
	ld [$a8cf], a                                    ; $5cb3: $ea $cf $a8
	ld [hl], b                                       ; $5cb6: $70
	ld [hl], c                                       ; $5cb7: $71
	ld b, c                                          ; $5cb8: $41
	ld c, h                                          ; $5cb9: $4c
	and b                                            ; $5cba: $a0
	ld d, h                                          ; $5cbb: $54
	ld b, d                                          ; $5cbc: $42
	adc a                                            ; $5cbd: $8f
	ld b, h                                          ; $5cbe: $44
	dec sp                                           ; $5cbf: $3b
	dec a                                            ; $5cc0: $3d
	ld b, d                                          ; $5cc1: $42
	ld c, b                                          ; $5cc2: $48
	and b                                            ; $5cc3: $a0
	cpl                                              ; $5cc4: $2f
	ld b, e                                          ; $5cc5: $43
	db $ec                                           ; $5cc6: $ec
	and $a8                                          ; $5cc7: $e6 $a8
	ld [$a01f], a                                    ; $5cc9: $ea $1f $a0
	ld b, d                                          ; $5ccc: $42
	sub a                                            ; $5ccd: $97
	jr c, jr_094_5d0f                                ; $5cce: $38 $3f

	ld l, h                                          ; $5cd0: $6c
	dec a                                            ; $5cd1: $3d
	ld b, h                                          ; $5cd2: $44
	ld e, l                                          ; $5cd3: $5d
	ld b, l                                          ; $5cd4: $45
	and b                                            ; $5cd5: $a0
	cpl                                              ; $5cd6: $2f
	ld b, e                                          ; $5cd7: $43
	add sp, -$2d                                     ; $5cd8: $e8 $d3
	inc de                                           ; $5cda: $13
	jp hl                                            ; $5cdb: $e9


	dec a                                            ; $5cdc: $3d
	xor b                                            ; $5cdd: $a8
	add sp, -$7b                                     ; $5cde: $e8 $85
	and c                                            ; $5ce0: $a1
	sbc e                                            ; $5ce1: $9b
	ld c, e                                          ; $5ce2: $4b
	adc e                                            ; $5ce3: $8b
	ld e, h                                          ; $5ce4: $5c
	db $ec                                           ; $5ce5: $ec
	ret c                                            ; $5ce6: $d8

	ld b, d                                          ; $5ce7: $42
	and b                                            ; $5ce8: $a0
	cpl                                              ; $5ce9: $2f
	ld b, e                                          ; $5cea: $43
	ld b, b                                          ; $5ceb: $40
	add hl, sp                                       ; $5cec: $39
	ld c, b                                          ; $5ced: $48
	and b                                            ; $5cee: $a0
	cpl                                              ; $5cef: $2f
	ld b, e                                          ; $5cf0: $43
	db $ec                                           ; $5cf1: $ec
	cp c                                             ; $5cf2: $b9
	xor b                                            ; $5cf3: $a8
	add sp, -$6d                                     ; $5cf4: $e8 $93
	and b                                            ; $5cf6: $a0
	add hl, sp                                       ; $5cf7: $39
	ld h, e                                          ; $5cf8: $63
	ld e, c                                          ; $5cf9: $59
	inc [hl]                                         ; $5cfa: $34
	adc $ac                                          ; $5cfb: $ce $ac
	ldh a, [$a5]                                     ; $5cfd: $f0 $a5
	ldh a, [rSCX]                                    ; $5cff: $f0 $43
	ld d, e                                          ; $5d01: $53
	db $eb                                           ; $5d02: $eb
	ld l, e                                          ; $5d03: $6b
	ld c, h                                          ; $5d04: $4c
	and b                                            ; $5d05: $a0
	cpl                                              ; $5d06: $2f
	ld b, e                                          ; $5d07: $43
	jp hl                                            ; $5d08: $e9


	push de                                          ; $5d09: $d5
	inc de                                           ; $5d0a: $13
	db $ec                                           ; $5d0b: $ec
	ei                                               ; $5d0c: $fb
	ld b, c                                          ; $5d0d: $41
	ld b, h                                          ; $5d0e: $44

jr_094_5d0f:
	ld b, l                                          ; $5d0f: $45
	and b                                            ; $5d10: $a0
	ld d, c                                          ; $5d11: $51
	ld [hl], b                                       ; $5d12: $70
	jr c, jr_094_5d61                                ; $5d13: $38 $4c

	xor b                                            ; $5d15: $a8
	ldh a, [$a5]                                     ; $5d16: $f0 $a5
	ldh a, [rSCX]                                    ; $5d18: $f0 $43
	ld a, [hl-]                                      ; $5d1a: $3a
	ld b, c                                          ; $5d1b: $41
	ccf                                              ; $5d1c: $3f
	inc [hl]                                         ; $5d1d: $34
	db $ec                                           ; $5d1e: $ec
	db $eb                                           ; $5d1f: $eb
	inc de                                           ; $5d20: $13
	pop af                                           ; $5d21: $f1
	ld l, $38                                        ; $5d22: $2e $38
	ccf                                              ; $5d24: $3f
	ld a, [hl-]                                      ; $5d25: $3a
	jr c, jr_094_5d8b                                ; $5d26: $38 $63

	and b                                            ; $5d28: $a0
	cpl                                              ; $5d29: $2f
	ld b, e                                          ; $5d2a: $43
	add sp, -$2d                                     ; $5d2b: $e8 $d3
	inc de                                           ; $5d2d: $13
	ldh a, [$a5]                                     ; $5d2e: $f0 $a5
	dec sp                                           ; $5d30: $3b
	dec a                                            ; $5d31: $3d
	inc [hl]                                         ; $5d32: $34
	ldh a, [rSCX]                                    ; $5d33: $f0 $43
	ldh a, [rAUDTERM]                                ; $5d35: $f0 $25
	ld a, [hl-]                                      ; $5d37: $3a
	ld b, c                                          ; $5d38: $41
	ld b, h                                          ; $5d39: $44
	xor b                                            ; $5d3a: $a8
	add sp, -$7b                                     ; $5d3b: $e8 $85
	and c                                            ; $5d3d: $a1
	ld l, a                                          ; $5d3e: $6f
	ld b, a                                          ; $5d3f: $47
	xor c                                            ; $5d40: $a9
	ld c, d                                          ; $5d41: $4a
	ld c, a                                          ; $5d42: $4f
	inc [hl]                                         ; $5d43: $34
	ldh a, [$fa]                                     ; $5d44: $f0 $fa
	ld [hl], c                                       ; $5d46: $71
	ld c, [hl]                                       ; $5d47: $4e
	inc a                                            ; $5d48: $3c
	ld a, [hl-]                                      ; $5d49: $3a
	xor b                                            ; $5d4a: $a8
	ld b, [hl]                                       ; $5d4b: $46
	dec sp                                           ; $5d4c: $3b
	inc [hl]                                         ; $5d4d: $34
	ld c, a                                          ; $5d4e: $4f
	add hl, sp                                       ; $5d4f: $39
	ld h, a                                          ; $5d50: $67
	ld d, l                                          ; $5d51: $55
	ld c, h                                          ; $5d52: $4c
	and b                                            ; $5d53: $a0
	jp hl                                            ; $5d54: $e9


	ld [hl], a                                       ; $5d55: $77
	xor h                                            ; $5d56: $ac
	db $ed                                           ; $5d57: $ed
	ld h, d                                          ; $5d58: $62
	ld c, c                                          ; $5d59: $49
	xor $1d                                          ; $5d5a: $ee $1d
	ld a, $3f                                        ; $5d5c: $3e $3f

jr_094_5d5e:
	ld c, [hl]                                       ; $5d5e: $4e
	ld b, d                                          ; $5d5f: $42
	xor b                                            ; $5d60: $a8

jr_094_5d61:
	ld [hl], b                                       ; $5d61: $70
	ld [hl], c                                       ; $5d62: $71
	ld b, c                                          ; $5d63: $41
	ld c, h                                          ; $5d64: $4c
	and b                                            ; $5d65: $a0
	ld d, c                                          ; $5d66: $51
	ld [hl], b                                       ; $5d67: $70
	jr c, jr_094_5d5e                                ; $5d68: $38 $f4

	sub a                                            ; $5d6a: $97
	ld b, d                                          ; $5d6b: $42
	ldh a, [$a5]                                     ; $5d6c: $f0 $a5
	ldh a, [rSCX]                                    ; $5d6e: $f0 $43
	ld c, h                                          ; $5d70: $4c
	and b                                            ; $5d71: $a0
	ld c, c                                          ; $5d72: $49
	ccf                                              ; $5d73: $3f
	ld c, a                                          ; $5d74: $4f
	db $ec                                           ; $5d75: $ec
	ret c                                            ; $5d76: $d8

	ld e, l                                          ; $5d77: $5d
	ld e, d                                          ; $5d78: $5a
	xor h                                            ; $5d79: $ac
	db $ed                                           ; $5d7a: $ed
	adc b                                            ; $5d7b: $88
	ldh a, [$fa]                                     ; $5d7c: $f0 $fa
	ld [hl], c                                       ; $5d7e: $71
	ld a, [hl-]                                      ; $5d7f: $3a
	jr c, jr_094_5dce                                ; $5d80: $38 $4c

	and b                                            ; $5d82: $a0
	ld l, l                                          ; $5d83: $6d
	ldh a, [$a9]                                     ; $5d84: $f0 $a9
	ld c, a                                          ; $5d86: $4f
	ld d, b                                          ; $5d87: $50
	dec sp                                           ; $5d88: $3b
	ccf                                              ; $5d89: $3f
	ld h, h                                          ; $5d8a: $64

jr_094_5d8b:
	ld d, l                                          ; $5d8b: $55
	ld h, e                                          ; $5d8c: $63
	xor b                                            ; $5d8d: $a8
	db $ec                                           ; $5d8e: $ec
	push bc                                          ; $5d8f: $c5
	ld h, a                                          ; $5d90: $67
	ld d, l                                          ; $5d91: $55
	ld c, h                                          ; $5d92: $4c
	and b                                            ; $5d93: $a0
	ld b, b                                          ; $5d94: $40
	ld c, l                                          ; $5d95: $4d
	ld a, [hl-]                                      ; $5d96: $3a
	ld d, b                                          ; $5d97: $50
	xor h                                            ; $5d98: $ac
	ld e, b                                          ; $5d99: $58
	dec sp                                           ; $5d9a: $3b
	ld e, h                                          ; $5d9b: $5c
	inc [hl]                                         ; $5d9c: $34
	pop af                                           ; $5d9d: $f1
	and c                                            ; $5d9e: $a1
	dec sp                                           ; $5d9f: $3b
	dec a                                            ; $5da0: $3d
	ld h, e                                          ; $5da1: $63
	and b                                            ; $5da2: $a0
	ld h, h                                          ; $5da3: $64
	ldh a, [$f3]                                     ; $5da4: $f0 $f3
	ld c, l                                          ; $5da6: $4d
	ld e, b                                          ; $5da7: $58
	ld d, d                                          ; $5da8: $52
	xor b                                            ; $5da9: $a8
	ld [hl], d                                       ; $5daa: $72
	ccf                                              ; $5dab: $3f
	dec a                                            ; $5dac: $3d
	ld b, l                                          ; $5dad: $45
	and b                                            ; $5dae: $a0
	cpl                                              ; $5daf: $2f
	ld b, e                                          ; $5db0: $43
	ld b, [hl]                                       ; $5db1: $46
	dec sp                                           ; $5db2: $3b
	inc [hl]                                         ; $5db3: $34
	db $ec                                           ; $5db4: $ec
	and $a8                                          ; $5db5: $e6 $a8
	db $eb                                           ; $5db7: $eb
	ld d, b                                          ; $5db8: $50
	and c                                            ; $5db9: $a1
	db $f4                                           ; $5dba: $f4
	ld a, $f0                                        ; $5dbb: $3e $f0
	rst GetHLinHL                                          ; $5dbd: $cf
	ld a, $3f                                        ; $5dbe: $3e $3f
	ccf                                              ; $5dc0: $3f
	xor h                                            ; $5dc1: $ac
	pop de                                           ; $5dc2: $d1
	ld b, l                                          ; $5dc3: $45
	inc a                                            ; $5dc4: $3c
	dec sp                                           ; $5dc5: $3b
	dec a                                            ; $5dc6: $3d
	ld b, l                                          ; $5dc7: $45
	and b                                            ; $5dc8: $a0
	cpl                                              ; $5dc9: $2f
	ld b, e                                          ; $5dca: $43
	rst JumpTable                                          ; $5dcb: $c7
	xor c                                            ; $5dcc: $a9
	ld l, e                                          ; $5dcd: $6b

jr_094_5dce:
	inc a                                            ; $5dce: $3c
	inc [hl]                                         ; $5dcf: $34
	pop af                                           ; $5dd0: $f1
	sbc c                                            ; $5dd1: $99
	ld c, l                                          ; $5dd2: $4d
	ld h, c                                          ; $5dd3: $61
	ld d, [hl]                                       ; $5dd4: $56
	add hl, sp                                       ; $5dd5: $39
	ld a, [hl-]                                      ; $5dd6: $3a
	and b                                            ; $5dd7: $a0
	ld [hl], d                                       ; $5dd8: $72
	ccf                                              ; $5dd9: $3f
	dec a                                            ; $5dda: $3d
	ld b, l                                          ; $5ddb: $45
	and b                                            ; $5ddc: $a0
	cpl                                              ; $5ddd: $2f
	ld b, e                                          ; $5dde: $43
	ld b, [hl]                                       ; $5ddf: $46
	dec sp                                           ; $5de0: $3b
	inc [hl]                                         ; $5de1: $34
	db $ec                                           ; $5de2: $ec
	and $13                                          ; $5de3: $e6 $13
	db $eb                                           ; $5de5: $eb
	ld d, b                                          ; $5de6: $50
	and c                                            ; $5de7: $a1
	db $f4                                           ; $5de8: $f4
	ld a, $f0                                        ; $5de9: $3e $f0
	rst GetHLinHL                                          ; $5deb: $cf
	ld c, c                                          ; $5dec: $49
	ld a, $3f                                        ; $5ded: $3e $3f
	ccf                                              ; $5def: $3f
	inc de                                           ; $5df0: $13
	ldh a, [$d9]                                     ; $5df1: $f0 $d9
	pop af                                           ; $5df3: $f1
	reti                                             ; $5df4: $d9


	inc [hl]                                         ; $5df5: $34
	ldh a, [$d9]                                     ; $5df6: $f0 $d9
	pop af                                           ; $5df8: $f1
	reti                                             ; $5df9: $d9


	and b                                            ; $5dfa: $a0
	cpl                                              ; $5dfb: $2f
	ld b, e                                          ; $5dfc: $43
	ld b, [hl]                                       ; $5dfd: $46
	dec sp                                           ; $5dfe: $3b
	inc [hl]                                         ; $5dff: $34
	db $ec                                           ; $5e00: $ec
	and $a8                                          ; $5e01: $e6 $a8
	ld [$a01f], a                                    ; $5e03: $ea $1f $a0
	ld b, d                                          ; $5e06: $42
	sub a                                            ; $5e07: $97
	jr c, jr_094_5e49                                ; $5e08: $38 $3f

	ld l, h                                          ; $5e0a: $6c
	dec a                                            ; $5e0b: $3d
	ld b, h                                          ; $5e0c: $44
	ld e, l                                          ; $5e0d: $5d
	ld b, l                                          ; $5e0e: $45
	xor b                                            ; $5e0f: $a8
	ld b, b                                          ; $5e10: $40
	ld c, l                                          ; $5e11: $4d
	ld e, e                                          ; $5e12: $5b
	ld d, [hl]                                       ; $5e13: $56
	and b                                            ; $5e14: $a0
	cpl                                              ; $5e15: $2f
	ld b, e                                          ; $5e16: $43
	xor $10                                          ; $5e17: $ee $10
	xor $10                                          ; $5e19: $ee $10
	and b                                            ; $5e1b: $a0
	cpl                                              ; $5e1c: $2f
	ld b, e                                          ; $5e1d: $43
	ld b, [hl]                                       ; $5e1e: $46
	dec sp                                           ; $5e1f: $3b
	inc [hl]                                         ; $5e20: $34
	db $ec                                           ; $5e21: $ec
	and $a8                                          ; $5e22: $e6 $a8
	ld b, l                                          ; $5e24: $45
	ld d, l                                          ; $5e25: $55
	ld a, b                                          ; $5e26: $78
	ccf                                              ; $5e27: $3f
	ld d, l                                          ; $5e28: $55
	ld c, l                                          ; $5e29: $4d
	dec a                                            ; $5e2a: $3d
	ld c, h                                          ; $5e2b: $4c
	and b                                            ; $5e2c: $a0
	ld l, e                                          ; $5e2d: $6b
	ld b, d                                          ; $5e2e: $42
	xor $2a                                          ; $5e2f: $ee $2a
	ld h, d                                          ; $5e31: $62
	ld a, $3f                                        ; $5e32: $3e $3f
	ld c, [hl]                                       ; $5e34: $4e
	ld b, d                                          ; $5e35: $42
	and c                                            ; $5e36: $a1
	cpl                                              ; $5e37: $2f
	ld b, e                                          ; $5e38: $43
	db $ed                                           ; $5e39: $ed
	cp c                                             ; $5e3a: $b9
	ld a, [hl-]                                      ; $5e3b: $3a
	ldh a, [$6d]                                     ; $5e3c: $f0 $6d
	ld e, c                                          ; $5e3e: $59
	ldh a, [$27]                                     ; $5e3f: $f0 $27
	ld h, d                                          ; $5e41: $62
	inc de                                           ; $5e42: $13
	add c                                            ; $5e43: $81
	ld [hl], l                                       ; $5e44: $75
	ld a, l                                          ; $5e45: $7d
	ld a, $3f                                        ; $5e46: $3e $3f
	inc [hl]                                         ; $5e48: $34

jr_094_5e49:
	ld b, b                                          ; $5e49: $40
	ld b, d                                          ; $5e4a: $42
	add h                                            ; $5e4b: $84
	ld b, d                                          ; $5e4c: $42
	ldh a, [rHDMA1]                                  ; $5e4d: $f0 $51
	add b                                            ; $5e4f: $80
	inc de                                           ; $5e50: $13
	ld [$6218], a                                    ; $5e51: $ea $18 $62
	inc de                                           ; $5e54: $13
	pop af                                           ; $5e55: $f1
	rst JumpTable                                          ; $5e56: $c7
	ldh a, [hDisp0_WY]                                     ; $5e57: $f0 $88
	ld d, c                                          ; $5e59: $51
	ld c, [hl]                                       ; $5e5a: $4e
	xor $2a                                          ; $5e5b: $ee $2a
	ld b, h                                          ; $5e5d: $44
	ld b, l                                          ; $5e5e: $45
	and b                                            ; $5e5f: $a0
	ld a, [hl-]                                      ; $5e60: $3a
	ld b, c                                          ; $5e61: $41
	inc a                                            ; $5e62: $3c
	ld c, b                                          ; $5e63: $48
	inc [hl]                                         ; $5e64: $34
	pop af                                           ; $5e65: $f1
	ld a, [$dc3e]                                    ; $5e66: $fa $3e $dc
	and b                                            ; $5e69: $a0
	cpl                                              ; $5e6a: $2f
	ld b, e                                          ; $5e6b: $43
	db $f4                                           ; $5e6c: $f4
	db $e3                                           ; $5e6d: $e3
	ldh a, [rIE]                                     ; $5e6e: $f0 $ff
	ld a, $55                                        ; $5e70: $3e $55
	ldh a, [$a4]                                     ; $5e72: $f0 $a4
	ld e, [hl]                                       ; $5e74: $5e
	ld a, [hl-]                                      ; $5e75: $3a
	ld d, l                                          ; $5e76: $55
	ccf                                              ; $5e77: $3f
	inc de                                           ; $5e78: $13
	jr c, jr_094_5eb3                                ; $5e79: $38 $38

	ld b, c                                          ; $5e7b: $41
	ld b, h                                          ; $5e7c: $44
	ld b, l                                          ; $5e7d: $45
	dec [hl]                                         ; $5e7e: $35
	ldh a, [$6d]                                     ; $5e7f: $f0 $6d
	ld e, c                                          ; $5e81: $59
	ldh a, [$27]                                     ; $5e82: $f0 $27
	ld c, c                                          ; $5e84: $49
	ld [hl], a                                       ; $5e85: $77
	ld e, [hl]                                       ; $5e86: $5e
	ld a, e                                          ; $5e87: $7b
	and b                                            ; $5e88: $a0
	db $d3                                           ; $5e89: $d3
	and c                                            ; $5e8a: $a1
	cpl                                              ; $5e8b: $2f
	ld b, e                                          ; $5e8c: $43
	ld l, [hl]                                       ; $5e8d: $6e
	dec sp                                           ; $5e8e: $3b
	ccf                                              ; $5e8f: $3f
	ld l, h                                          ; $5e90: $6c
	ld c, [hl]                                       ; $5e91: $4e
	and c                                            ; $5e92: $a1
	ld h, e                                          ; $5e93: $63
	inc [hl]                                         ; $5e94: $34
	ld l, a                                          ; $5e95: $6f
	ld d, e                                          ; $5e96: $53
	xor c                                            ; $5e97: $a9
	ldh a, [$6d]                                     ; $5e98: $f0 $6d
	ld e, c                                          ; $5e9a: $59
	ldh a, [$27]                                     ; $5e9b: $f0 $27
	ld c, e                                          ; $5e9d: $4b
	db $ed                                           ; $5e9e: $ed
	ld l, b                                          ; $5e9f: $68
	ld b, h                                          ; $5ea0: $44
	inc a                                            ; $5ea1: $3c
	ld d, b                                          ; $5ea2: $50
	xor e                                            ; $5ea3: $ab
	ld d, $34                                        ; $5ea4: $16 $34
	ld l, [hl]                                       ; $5ea6: $6e
	dec sp                                           ; $5ea7: $3b
	ccf                                              ; $5ea8: $3f
	ld l, h                                          ; $5ea9: $6c
	ld a, c                                          ; $5eaa: $79
	ccf                                              ; $5eab: $3f
	and b                                            ; $5eac: $a0
	cpl                                              ; $5ead: $2f
	ld b, e                                          ; $5eae: $43
	halt                                             ; $5eaf: $76
	ld d, e                                          ; $5eb0: $53
	ld [hl], $dd                                     ; $5eb1: $36 $dd

jr_094_5eb3:
	ld [hl], d                                       ; $5eb3: $72
	ccf                                              ; $5eb4: $3f
	ld e, a                                          ; $5eb5: $5f
	ld b, l                                          ; $5eb6: $45
	and b                                            ; $5eb7: $a0
	ld d, d                                          ; $5eb8: $52
	ld b, h                                          ; $5eb9: $44
	jr c, jr_094_5ef9                                ; $5eba: $38 $3d

	jr c, jr_094_5eff                                ; $5ebc: $38 $41

	ld b, h                                          ; $5ebe: $44
	ld e, l                                          ; $5ebf: $5d
	ld e, d                                          ; $5ec0: $5a
	xor h                                            ; $5ec1: $ac
	db $ed                                           ; $5ec2: $ed
	ld h, d                                          ; $5ec3: $62
	ld c, c                                          ; $5ec4: $49
	ld [$a8cf], a                                    ; $5ec5: $ea $cf $a8
	ld [hl], b                                       ; $5ec8: $70
	ld [hl], c                                       ; $5ec9: $71
	ld b, c                                          ; $5eca: $41
	ld c, h                                          ; $5ecb: $4c
	and b                                            ; $5ecc: $a0
	ld d, h                                          ; $5ecd: $54
	ld d, h                                          ; $5ece: $54
	ld c, e                                          ; $5ecf: $4b
	inc [hl]                                         ; $5ed0: $34
	ld l, e                                          ; $5ed1: $6b
	ld b, d                                          ; $5ed2: $42
	xor $2a                                          ; $5ed3: $ee $2a
	and c                                            ; $5ed5: $a1
	cpl                                              ; $5ed6: $2f
	ld b, e                                          ; $5ed7: $43
	db $ed                                           ; $5ed8: $ed
	cp c                                             ; $5ed9: $b9
	ld b, a                                          ; $5eda: $47
	add d                                            ; $5edb: $82
	ld e, [hl]                                       ; $5edc: $5e
	ld a, e                                          ; $5edd: $7b
	inc de                                           ; $5ede: $13
	ldh a, [$6d]                                     ; $5edf: $f0 $6d
	ld e, c                                          ; $5ee1: $59
	ldh a, [$27]                                     ; $5ee2: $f0 $27
	ld b, h                                          ; $5ee4: $44
	ld b, l                                          ; $5ee5: $45
	inc [hl]                                         ; $5ee6: $34
	ldh a, [$6d]                                     ; $5ee7: $f0 $6d
	ld e, c                                          ; $5ee9: $59
	ldh a, [$27]                                     ; $5eea: $f0 $27
	and b                                            ; $5eec: $a0
	ld h, e                                          ; $5eed: $63
	inc [hl]                                         ; $5eee: $34
	ld l, a                                          ; $5eef: $6f
	ld d, e                                          ; $5ef0: $53
	ld [hl], $40                                     ; $5ef1: $36 $40
	ld b, d                                          ; $5ef3: $42
	sbc [hl]                                         ; $5ef4: $9e
	ld b, a                                          ; $5ef5: $47
	xor h                                            ; $5ef6: $ac
	ld d, $34                                        ; $5ef7: $16 $34

jr_094_5ef9:
	ld l, [hl]                                       ; $5ef9: $6e
	dec sp                                           ; $5efa: $3b
	ccf                                              ; $5efb: $3f
	ld l, h                                          ; $5efc: $6c
	ld a, c                                          ; $5efd: $79
	ccf                                              ; $5efe: $3f

jr_094_5eff:
	and b                                            ; $5eff: $a0
	cpl                                              ; $5f00: $2f
	ld b, e                                          ; $5f01: $43
	halt                                             ; $5f02: $76
	ld d, e                                          ; $5f03: $53
	ld [hl], $dd                                     ; $5f04: $36 $dd
	ld [hl], d                                       ; $5f06: $72
	ccf                                              ; $5f07: $3f
	ccf                                              ; $5f08: $3f
	ld c, h                                          ; $5f09: $4c
	and b                                            ; $5f0a: $a0
	cpl                                              ; $5f0b: $2f
	ld b, e                                          ; $5f0c: $43
	ld e, e                                          ; $5f0d: $5b
	ld d, [hl]                                       ; $5f0e: $56
	xor h                                            ; $5f0f: $ac
	ldh a, [$d6]                                     ; $5f10: $f0 $d6
	ld c, e                                          ; $5f12: $4b
	db $ec                                           ; $5f13: $ec
	and $44                                          ; $5f14: $e6 $44
	ld b, l                                          ; $5f16: $45
	and b                                            ; $5f17: $a0
	ld b, [hl]                                       ; $5f18: $46
	inc [hl]                                         ; $5f19: $34
	ld c, a                                          ; $5f1a: $4f
	add hl, sp                                       ; $5f1b: $39
	ldh a, [rBGP]                                    ; $5f1c: $f0 $47
	ldh a, [$2a]                                     ; $5f1e: $f0 $2a
	ld b, h                                          ; $5f20: $44
	xor b                                            ; $5f21: $a8
	db $ed                                           ; $5f22: $ed
	ld h, d                                          ; $5f23: $62
	ld c, c                                          ; $5f24: $49
	ld [$a8cf], a                                    ; $5f25: $ea $cf $a8
	ld [hl], b                                       ; $5f28: $70
	ld [hl], c                                       ; $5f29: $71
	ld b, c                                          ; $5f2a: $41
	ld c, h                                          ; $5f2b: $4c
	and b                                            ; $5f2c: $a0
	cpl                                              ; $5f2d: $2f
	ld b, e                                          ; $5f2e: $43
	ld c, b                                          ; $5f2f: $48
	inc hl                                           ; $5f30: $23
	ldh a, [$e1]                                     ; $5f31: $f0 $e1
	ldh a, [rSB]                                     ; $5f33: $f0 $01
	ld d, b                                          ; $5f35: $50
	ld c, l                                          ; $5f36: $4d
	dec a                                            ; $5f37: $3d
	and b                                            ; $5f38: $a0
	ld c, e                                          ; $5f39: $4b
	ld b, [hl]                                       ; $5f3a: $46
	xor $10                                          ; $5f3b: $ee $10
	and b                                            ; $5f3d: $a0
	cpl                                              ; $5f3e: $2f
	ld b, e                                          ; $5f3f: $43
	ld h, h                                          ; $5f40: $64
	ld e, c                                          ; $5f41: $59
	jr c, jr_094_5f78                                ; $5f42: $38 $34

	db $ec                                           ; $5f44: $ec
	and $ad                                          ; $5f45: $e6 $ad
	ld [$48be], a                                    ; $5f47: $ea $be $48
	and b                                            ; $5f4a: $a0
	xor $10                                          ; $5f4b: $ee $10
	and b                                            ; $5f4d: $a0
	cpl                                              ; $5f4e: $2f
	ld b, e                                          ; $5f4f: $43
	ld h, c                                          ; $5f50: $61
	ld h, [hl]                                       ; $5f51: $66
	inc [hl]                                         ; $5f52: $34
	ret                                              ; $5f53: $c9


	inc [hl]                                         ; $5f54: $34
	db $ed                                           ; $5f55: $ed
	ld d, a                                          ; $5f56: $57
	inc de                                           ; $5f57: $13
	ldh a, [$75]                                     ; $5f58: $f0 $75
	adc h                                            ; $5f5a: $8c
	ld d, e                                          ; $5f5b: $53
	ldh a, [$5c]                                     ; $5f5c: $f0 $5c
	jr c, jr_094_5f9c                                ; $5f5e: $38 $3c

	ld a, [hl-]                                      ; $5f60: $3a
	ld c, b                                          ; $5f61: $48
	ldh a, [rAUD3ENA]                                ; $5f62: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $5f64: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $5f66: $f0 $1a
	and b                                            ; $5f68: $a0
	rst JumpTable                                          ; $5f69: $c7
	ld a, [hl-]                                      ; $5f6a: $3a
	ld b, d                                          ; $5f6b: $42
	xor l                                            ; $5f6c: $ad
	ldh a, [rAUD1LOW]                                ; $5f6d: $f0 $13
	ldh a, [$63]                                     ; $5f6f: $f0 $63
	xor $2d                                          ; $5f71: $ee $2d
	ld e, l                                          ; $5f73: $5d
	db $ec                                           ; $5f74: $ec
	dec bc                                           ; $5f75: $0b
	and b                                            ; $5f76: $a0
	db $eb                                           ; $5f77: $eb

jr_094_5f78:
	rst FarCall                                          ; $5f78: $f7
	xor c                                            ; $5f79: $a9
	ldh a, [$75]                                     ; $5f7a: $f0 $75
	adc h                                            ; $5f7c: $8c
	ldh a, [$5c]                                     ; $5f7d: $f0 $5c
	jr c, @+$44                                      ; $5f7f: $38 $42

	and c                                            ; $5f81: $a1
	cpl                                              ; $5f82: $2f
	ld b, e                                          ; $5f83: $43
	ld b, b                                          ; $5f84: $40
	ld b, c                                          ; $5f85: $41
	ld a, [hl-]                                      ; $5f86: $3a
	pop af                                           ; $5f87: $f1
	or d                                             ; $5f88: $b2
	pop af                                           ; $5f89: $f1
	ld c, b                                          ; $5f8a: $48
	ld a, [hl-]                                      ; $5f8b: $3a
	xor l                                            ; $5f8c: $ad
	ld c, a                                          ; $5f8d: $4f
	add hl, sp                                       ; $5f8e: $39
	ld l, l                                          ; $5f8f: $6d
	ldh a, [$d3]                                     ; $5f90: $f0 $d3
	ld l, [hl]                                       ; $5f92: $6e
	ld d, b                                          ; $5f93: $50
	ld a, c                                          ; $5f94: $79
	ccf                                              ; $5f95: $3f
	ld d, l                                          ; $5f96: $55
	ld c, l                                          ; $5f97: $4d
	scf                                              ; $5f98: $37
	inc de                                           ; $5f99: $13
	ldh a, [c]                                       ; $5f9a: $f2
	ld e, l                                          ; $5f9b: $5d

jr_094_5f9c:
	ldh a, [$be]                                     ; $5f9c: $f0 $be
	pop af                                           ; $5f9e: $f1

jr_094_5f9f:
	dec [hl]                                         ; $5f9f: $35
	scf                                              ; $5fa0: $37
	ld c, a                                          ; $5fa1: $4f
	add hl, sp                                       ; $5fa2: $39
	ld l, l                                          ; $5fa3: $6d
	ldh a, [$d3]                                     ; $5fa4: $f0 $d3
	and d                                            ; $5fa6: $a2
	ldh a, [rAUD1LOW]                                ; $5fa7: $f0 $13
	ldh a, [$63]                                     ; $5fa9: $f0 $63
	ld a, $3a                                        ; $5fab: $3e $3a
	jr c, jr_094_5f9f                                ; $5fad: $38 $f0

	jr c, jr_094_6004                                ; $5faf: $38 $53

	jr c, jr_094_5feb                                ; $5fb1: $38 $38

	ld b, l                                          ; $5fb3: $45
	and b                                            ; $5fb4: $a0
	pop de                                           ; $5fb5: $d1
	inc de                                           ; $5fb6: $13
	db $ec                                           ; $5fb7: $ec
	cp c                                             ; $5fb8: $b9

jr_094_5fb9:
	ld b, c                                          ; $5fb9: $41
	db $ec                                           ; $5fba: $ec
	ret c                                            ; $5fbb: $d8

	and c                                            ; $5fbc: $a1
	cpl                                              ; $5fbd: $2f
	ld b, e                                          ; $5fbe: $43
	ld d, d                                          ; $5fbf: $52
	inc [hl]                                         ; $5fc0: $34
	ld [$a076], a                                    ; $5fc1: $ea $76 $a0
	xor $1f                                          ; $5fc4: $ee $1f
	xor $1f                                          ; $5fc6: $ee $1f
	and b                                            ; $5fc8: $a0
	ld d, c                                          ; $5fc9: $51
	ld [hl], b                                       ; $5fca: $70
	jr c, jr_094_5fb9                                ; $5fcb: $38 $ec

	ret c                                            ; $5fcd: $d8

	and d                                            ; $5fce: $a2
	cpl                                              ; $5fcf: $2f
	ld b, e                                          ; $5fd0: $43
	ld d, d                                          ; $5fd1: $52
	inc a                                            ; $5fd2: $3c
	ld a, $3f                                        ; $5fd3: $3e $3f
	ld d, l                                          ; $5fd5: $55
	ld c, l                                          ; $5fd6: $4d
	ld b, l                                          ; $5fd7: $45
	and b                                            ; $5fd8: $a0
	ldh a, [c]                                       ; $5fd9: $f2
	call z, $1cf0                                    ; $5fda: $cc $f0 $1c
	ld b, d                                          ; $5fdd: $42
	pop af                                           ; $5fde: $f1
	inc bc                                           ; $5fdf: $03
	ld b, l                                          ; $5fe0: $45
	xor b                                            ; $5fe1: $a8
	db $ec                                           ; $5fe2: $ec
	sub l                                            ; $5fe3: $95
	jr c, jr_094_6028                                ; $5fe4: $38 $42

	ld c, h                                          ; $5fe6: $4c
	ld e, c                                          ; $5fe7: $59
	and b                                            ; $5fe8: $a0
	cpl                                              ; $5fe9: $2f
	ld b, e                                          ; $5fea: $43

jr_094_5feb:
	jp hl                                            ; $5feb: $e9


	xor a                                            ; $5fec: $af
	xor b                                            ; $5fed: $a8
	add sp, $4f                                      ; $5fee: $e8 $4f
	xor b                                            ; $5ff0: $a8
	ld [$a0c6], a                                    ; $5ff1: $ea $c6 $a0
	xor $1f                                          ; $5ff4: $ee $1f
	xor b                                            ; $5ff6: $a8
	ld b, b                                          ; $5ff7: $40
	ld b, d                                          ; $5ff8: $42
	add b                                            ; $5ff9: $80
	ld c, a                                          ; $5ffa: $4f
	ld d, a                                          ; $5ffb: $57
	ld c, d                                          ; $5ffc: $4a
	ld a, b                                          ; $5ffd: $78
	dec a                                            ; $5ffe: $3d
	ld b, d                                          ; $5fff: $42
	and b                                            ; $6000: $a0
	ld d, c                                          ; $6001: $51
	ld [hl], b                                       ; $6002: $70
	ld d, l                                          ; $6003: $55

jr_094_6004:
	inc [hl]                                         ; $6004: $34
	db $ed                                           ; $6005: $ed
	ld c, c                                          ; $6006: $49
	xor l                                            ; $6007: $ad
	ldh a, [$57]                                     ; $6008: $f0 $57
	ldh a, [$ae]                                     ; $600a: $f0 $ae

jr_094_600c:
	ld b, h                                          ; $600c: $44
	dec sp                                           ; $600d: $3b
	dec a                                            ; $600e: $3d
	ld h, e                                          ; $600f: $63
	and b                                            ; $6010: $a0
	cpl                                              ; $6011: $2f
	ld b, e                                          ; $6012: $43
	ld b, [hl]                                       ; $6013: $46
	ld d, a                                          ; $6014: $57
	ld d, e                                          ; $6015: $53
	ld c, c                                          ; $6016: $49
	add hl, sp                                       ; $6017: $39
	xor b                                            ; $6018: $a8
	add sp, -$7c                                     ; $6019: $e8 $84
	and b                                            ; $601b: $a0
	jp hl                                            ; $601c: $e9


	ld [hl], a                                       ; $601d: $77
	xor h                                            ; $601e: $ac
	db $ed                                           ; $601f: $ed
	ld h, d                                          ; $6020: $62
	ld c, c                                          ; $6021: $49
	ld [$a8cf], a                                    ; $6022: $ea $cf $a8
	db $eb                                           ; $6025: $eb
	ccf                                              ; $6026: $3f
	and b                                            ; $6027: $a0

jr_094_6028:
	cpl                                              ; $6028: $2f
	ld b, e                                          ; $6029: $43
	jp hl                                            ; $602a: $e9


	xor a                                            ; $602b: $af
	xor b                                            ; $602c: $a8
	add sp, $4f                                      ; $602d: $e8 $4f
	xor b                                            ; $602f: $a8
	jp hl                                            ; $6030: $e9


	call nc, $eea0                                   ; $6031: $d4 $a0 $ee
	rra                                              ; $6034: $1f
	inc [hl]                                         ; $6035: $34
	ldh a, [rTAC]                                    ; $6036: $f0 $07
	inc a                                            ; $6038: $3c
	dec sp                                           ; $6039: $3b
	dec a                                            ; $603a: $3d
	and b                                            ; $603b: $a0
	ld d, c                                          ; $603c: $51
	ld [hl], b                                       ; $603d: $70
	ld d, l                                          ; $603e: $55
	inc [hl]                                         ; $603f: $34
	db $ed                                           ; $6040: $ed
	ld c, c                                          ; $6041: $49
	ld b, h                                          ; $6042: $44
	dec sp                                           ; $6043: $3b
	dec a                                            ; $6044: $3d
	ld h, e                                          ; $6045: $63
	and b                                            ; $6046: $a0
	cpl                                              ; $6047: $2f
	ld b, e                                          ; $6048: $43
	adc b                                            ; $6049: $88
	sub c                                            ; $604a: $91
	xor c                                            ; $604b: $a9
	add sp, -$7c                                     ; $604c: $e8 $84
	and b                                            ; $604e: $a0
	ld c, b                                          ; $604f: $48
	ld a, $3c                                        ; $6050: $3e $3c
	dec a                                            ; $6052: $3d
	ld a, [hl-]                                      ; $6053: $3a
	jr c, jr_094_6090                                ; $6054: $38 $3a

	ld [hl], h                                       ; $6056: $74
	and b                                            ; $6057: $a0
	cpl                                              ; $6058: $2f
	ld b, e                                          ; $6059: $43
	ld b, [hl]                                       ; $605a: $46
	ld c, l                                          ; $605b: $4d
	xor h                                            ; $605c: $ac
	db $ec                                           ; $605d: $ec
	and $53                                          ; $605e: $e6 $53
	jr c, jr_094_609c                                ; $6060: $38 $3a

	jr c, jr_094_600c                                ; $6062: $38 $a8

	ld [$1343], a                                    ; $6064: $ea $43 $13
	jp hl                                            ; $6067: $e9


	cp l                                             ; $6068: $bd
	ld c, b                                          ; $6069: $48
	and b                                            ; $606a: $a0
	xor $1f                                          ; $606b: $ee $1f
	xor b                                            ; $606d: $a8
	ld d, h                                          ; $606e: $54
	ld c, l                                          ; $606f: $4d
	ld h, d                                          ; $6070: $62
	ld [hl], d                                       ; $6071: $72
	ld b, a                                          ; $6072: $47

jr_094_6073:
	ld a, b                                          ; $6073: $78
	dec a                                            ; $6074: $3d
	ld b, d                                          ; $6075: $42
	ld b, l                                          ; $6076: $45
	and b                                            ; $6077: $a0
	ld d, h                                          ; $6078: $54
	ld d, h                                          ; $6079: $54
	ld b, d                                          ; $607a: $42
	adc a                                            ; $607b: $8f
	dec sp                                           ; $607c: $3b
	ccf                                              ; $607d: $3f
	inc de                                           ; $607e: $13
	ld d, c                                          ; $607f: $51
	ld [hl], b                                       ; $6080: $70
	jr c, jr_094_6073                                ; $6081: $38 $f0

	xor d                                            ; $6083: $aa
	adc c                                            ; $6084: $89
	ldh a, [$7f]                                     ; $6085: $f0 $7f
	ld h, d                                          ; $6087: $62
	ldh a, [rHDMA1]                                  ; $6088: $f0 $51
	dec sp                                           ; $608a: $3b
	ccf                                              ; $608b: $3f
	ld c, [hl]                                       ; $608c: $4e
	ld b, d                                          ; $608d: $42
	ld c, h                                          ; $608e: $4c
	and b                                            ; $608f: $a0

jr_094_6090:
	cpl                                              ; $6090: $2f
	ld b, e                                          ; $6091: $43
	rst JumpTable                                          ; $6092: $c7
	ld c, d                                          ; $6093: $4a
	ld a, $66                                        ; $6094: $3e $66
	and b                                            ; $6096: $a0
	ld e, b                                          ; $6097: $58
	ccf                                              ; $6098: $3f
	ld c, c                                          ; $6099: $49
	inc [hl]                                         ; $609a: $34
	ld b, b                                          ; $609b: $40

jr_094_609c:
	ld c, l                                          ; $609c: $4d
	ld e, e                                          ; $609d: $5b
	ld d, [hl]                                       ; $609e: $56
	and b                                            ; $609f: $a0
	xor $1f                                          ; $60a0: $ee $1f
	inc [hl]                                         ; $60a2: $34
	ld b, b                                          ; $60a3: $40
	add hl, sp                                       ; $60a4: $39
	ld d, c                                          ; $60a5: $51
	ld c, [hl]                                       ; $60a6: $4e
	ld h, e                                          ; $60a7: $63
	and b                                            ; $60a8: $a0
	ld d, c                                          ; $60a9: $51
	ld [hl], b                                       ; $60aa: $70
	inc a                                            ; $60ab: $3c
	dec sp                                           ; $60ac: $3b
	dec a                                            ; $60ad: $3d
	ld h, e                                          ; $60ae: $63
	xor h                                            ; $60af: $ac
	ldh a, [$98]                                     ; $60b0: $f0 $98
	ld d, e                                          ; $60b2: $53
	ld b, [hl]                                       ; $60b3: $46
	ld b, c                                          ; $60b4: $41
	ld a, [hl-]                                      ; $60b5: $3a
	db $f4                                           ; $60b6: $f4
	inc b                                            ; $60b7: $04
	di                                               ; $60b8: $f3
	db $e3                                           ; $60b9: $e3
	ldh a, [$a5]                                     ; $60ba: $f0 $a5
	dec sp                                           ; $60bc: $3b
	dec a                                            ; $60bd: $3d
	ld b, d                                          ; $60be: $42
	and c                                            ; $60bf: $a1

jr_094_60c0:
	cpl                                              ; $60c0: $2f
	ld b, e                                          ; $60c1: $43
	ld e, b                                          ; $60c2: $58
	ld b, [hl]                                       ; $60c3: $46
	inc [hl]                                         ; $60c4: $34
	ldh a, [$98]                                     ; $60c5: $f0 $98
	ld b, h                                          ; $60c7: $44
	ld e, a                                          ; $60c8: $5f
	add hl, sp                                       ; $60c9: $39
	and c                                            ; $60ca: $a1
	db $ec                                           ; $60cb: $ec
	dec b                                            ; $60cc: $05
	ld b, d                                          ; $60cd: $42
	xor c                                            ; $60ce: $a9
	ldh a, [$cd]                                     ; $60cf: $f0 $cd
	ld e, e                                          ; $60d1: $5b
	adc a                                            ; $60d2: $8f
	pop af                                           ; $60d3: $f1
	ld c, [hl]                                       ; $60d4: $4e
	ld c, d                                          ; $60d5: $4a
	ld a, $66                                        ; $60d6: $3e $66
	xor c                                            ; $60d8: $a9
	ld b, [hl]                                       ; $60d9: $46
	dec sp                                           ; $60da: $3b
	inc [hl]                                         ; $60db: $34
	jp hl                                            ; $60dc: $e9


	inc a                                            ; $60dd: $3c
	ld c, b                                          ; $60de: $48
	and b                                            ; $60df: $a0
	ld c, b                                          ; $60e0: $48
	ld l, l                                          ; $60e1: $6d
	ldh a, [$a9]                                     ; $60e2: $f0 $a9
	ld [hl], d                                       ; $60e4: $72
	ccf                                              ; $60e5: $3f
	ld l, h                                          ; $60e6: $6c
	ld b, l                                          ; $60e7: $45
	add hl, sp                                       ; $60e8: $39
	inc a                                            ; $60e9: $3c
	ld a, [hl-]                                      ; $60ea: $3a
	and b                                            ; $60eb: $a0
	cpl                                              ; $60ec: $2f
	ld b, e                                          ; $60ed: $43
	db $ec                                           ; $60ee: $ec
	cp c                                             ; $60ef: $b9
	ld d, b                                          ; $60f0: $50
	xor h                                            ; $60f1: $ac
	ldh a, [rPCM12]                                  ; $60f2: $f0 $76
	ldh a, [$d2]                                     ; $60f4: $f0 $d2
	ldh a, [$3f]                                     ; $60f6: $f0 $3f
	ld e, d                                          ; $60f8: $5a
	add hl, sp                                       ; $60f9: $39
	and c                                            ; $60fa: $a1
	ld e, [hl]                                       ; $60fb: $5e
	dec sp                                           ; $60fc: $3b
	inc [hl]                                         ; $60fd: $34
	ldh a, [$bd]                                     ; $60fe: $f0 $bd
	jr c, jr_094_6141                                ; $6100: $38 $3f

	ld d, l                                          ; $6102: $55
	ld c, l                                          ; $6103: $4d
	ld c, [hl]                                       ; $6104: $4e
	ld b, d                                          ; $6105: $42
	and c                                            ; $6106: $a1
	cpl                                              ; $6107: $2f
	ld b, e                                          ; $6108: $43
	ld [$a84a], a                                    ; $6109: $ea $4a $a8
	ld e, d                                          ; $610c: $5a
	add hl, sp                                       ; $610d: $39
	and c                                            ; $610e: $a1
	ld d, c                                          ; $610f: $51
	ld [hl], b                                       ; $6110: $70
	jr c, jr_094_60c0                                ; $6111: $38 $ad

	ldh a, [$3e]                                     ; $6113: $f0 $3e
	ldh a, [$0b]                                     ; $6115: $f0 $0b
	ld c, h                                          ; $6117: $4c
	and b                                            ; $6118: $a0
	cpl                                              ; $6119: $2f
	ld b, e                                          ; $611a: $43
	ld b, [hl]                                       ; $611b: $46
	ld d, a                                          ; $611c: $57
	ld d, e                                          ; $611d: $53
	ld c, c                                          ; $611e: $49
	add hl, sp                                       ; $611f: $39
	xor b                                            ; $6120: $a8
	ldh a, [$29]                                     ; $6121: $f0 $29
	ld a, $38                                        ; $6123: $3e $38
	ld b, l                                          ; $6125: $45
	and b                                            ; $6126: $a0
	ld hl, $10ee                                     ; $6127: $21 $ee $10
	ld h, b                                          ; $612a: $60
	xor b                                            ; $612b: $a8
	jr nz, @-$2d                                     ; $612c: $20 $d1

	ldh a, [$3e]                                     ; $612e: $f0 $3e
	ldh a, [$0b]                                     ; $6130: $f0 $0b
	ld c, h                                          ; $6132: $4c
	and b                                            ; $6133: $a0
	cpl                                              ; $6134: $2f
	ld b, e                                          ; $6135: $43
	ld b, [hl]                                       ; $6136: $46
	ld d, a                                          ; $6137: $57
	ld d, e                                          ; $6138: $53
	ld c, c                                          ; $6139: $49
	add hl, sp                                       ; $613a: $39
	xor b                                            ; $613b: $a8
	ld [hl-], a                                      ; $613c: $32
	jp nc, $ea13                                     ; $613d: $d2 $13 $ea

	inc bc                                           ; $6140: $03

jr_094_6141:
	and e                                            ; $6141: $a3
	jp hl                                            ; $6142: $e9


	ld [hl], a                                       ; $6143: $77
	xor h                                            ; $6144: $ac
	db $ed                                           ; $6145: $ed
	ld h, d                                          ; $6146: $62
	ld c, c                                          ; $6147: $49
	ld [$a8cf], a                                    ; $6148: $ea $cf $a8
	ld [hl], b                                       ; $614b: $70
	ld [hl], c                                       ; $614c: $71
	ld b, c                                          ; $614d: $41
	ld c, h                                          ; $614e: $4c
	and b                                            ; $614f: $a0
	xor $1f                                          ; $6150: $ee $1f
	inc [hl]                                         ; $6152: $34
	ldh a, [$bd]                                     ; $6153: $f0 $bd
	jr c, jr_094_6196                                ; $6155: $38 $3f

	inc [hl]                                         ; $6157: $34
	ldh a, [$bd]                                     ; $6158: $f0 $bd
	jr c, jr_094_619b                                ; $615a: $38 $3f

	and b                                            ; $615c: $a0

jr_094_615d:
	ld b, b                                          ; $615d: $40
	dec sp                                           ; $615e: $3b
	ld d, l                                          ; $615f: $55
	ld d, a                                          ; $6160: $57
	ld c, h                                          ; $6161: $4c
	and b                                            ; $6162: $a0
	ld hl, $10ee                                     ; $6163: $21 $ee $10
	ld h, b                                          ; $6166: $60
	xor b                                            ; $6167: $a8
	jr nz, jr_094_615d                               ; $6168: $20 $f3

	ld b, c                                          ; $616a: $41
	pop af                                           ; $616b: $f1
	db $e4                                           ; $616c: $e4
	ld d, e                                          ; $616d: $53
	ldh a, [rPCM12]                                  ; $616e: $f0 $76
	ccf                                              ; $6170: $3f
	ld c, [hl]                                       ; $6171: $4e
	inc a                                            ; $6172: $3c
	ld a, [hl-]                                      ; $6173: $3a
	and b                                            ; $6174: $a0
	db $ec                                           ; $6175: $ec
	ld e, l                                          ; $6176: $5d
	jr c, jr_094_61b6                                ; $6177: $38 $3d

	ld b, d                                          ; $6179: $42
	ld c, b                                          ; $617a: $48
	and b                                            ; $617b: $a0
	pop af                                           ; $617c: $f1
	ld b, $f1                                        ; $617d: $06 $f1
	ld a, $3e                                        ; $617f: $3e $3e
	ccf                                              ; $6181: $3f
	ld h, h                                          ; $6182: $64
	ld d, l                                          ; $6183: $55
	ld h, e                                          ; $6184: $63
	xor b                                            ; $6185: $a8
	ld b, b                                          ; $6186: $40
	ld c, l                                          ; $6187: $4d
	ld e, e                                          ; $6188: $5b
	ld d, [hl]                                       ; $6189: $56
	ld c, b                                          ; $618a: $48
	and b                                            ; $618b: $a0
	ldh a, [$b2]                                     ; $618c: $f0 $b2
	ldh a, [rKEY1]                                   ; $618e: $f0 $4d
	ld b, a                                          ; $6190: $47
	ld a, b                                          ; $6191: $78
	ld h, c                                          ; $6192: $61
	ld d, [hl]                                       ; $6193: $56
	ld c, b                                          ; $6194: $48
	inc h                                            ; $6195: $24

jr_094_6196:
	dec sp                                           ; $6196: $3b
	dec a                                            ; $6197: $3d
	ld c, b                                          ; $6198: $48
	and b                                            ; $6199: $a0
	cpl                                              ; $619a: $2f

jr_094_619b:
	ld b, e                                          ; $619b: $43
	ld b, [hl]                                       ; $619c: $46
	dec sp                                           ; $619d: $3b
	inc [hl]                                         ; $619e: $34
	db $ec                                           ; $619f: $ec
	and $a8                                          ; $61a0: $e6 $a8
	jp hl                                            ; $61a2: $e9


	or h                                             ; $61a3: $b4
	and b                                            ; $61a4: $a0
	xor $10                                          ; $61a5: $ee $10
	xor b                                            ; $61a7: $a8
	ld b, b                                          ; $61a8: $40
	ld c, l                                          ; $61a9: $4d
	ld e, e                                          ; $61aa: $5b
	ld d, [hl]                                       ; $61ab: $56
	and b                                            ; $61ac: $a0
	cpl                                              ; $61ad: $2f
	ld b, e                                          ; $61ae: $43
	ld e, [hl]                                       ; $61af: $5e
	dec sp                                           ; $61b0: $3b
	xor h                                            ; $61b1: $ac
	ld a, b                                          ; $61b2: $78
	dec a                                            ; $61b3: $3d
	ld a, e                                          ; $61b4: $7b
	inc a                                            ; $61b5: $3c

jr_094_61b6:
	ld d, a                                          ; $61b6: $57
	db $ec                                           ; $61b7: $ec
	ret c                                            ; $61b8: $d8

	and b                                            ; $61b9: $a0
	db $ed                                           ; $61ba: $ed
	ld b, e                                          ; $61bb: $43
	inc [hl]                                         ; $61bc: $34
	db $eb                                           ; $61bd: $eb
	ld c, a                                          ; $61be: $4f
	ld h, e                                          ; $61bf: $63
	xor b                                            ; $61c0: $a8
	ld [hl], b                                       ; $61c1: $70
	ld [hl], c                                       ; $61c2: $71
	ld b, c                                          ; $61c3: $41
	ld c, h                                          ; $61c4: $4c
	and b                                            ; $61c5: $a0
	cpl                                              ; $61c6: $2f
	ld b, e                                          ; $61c7: $43
	ld b, [hl]                                       ; $61c8: $46
	ld e, c                                          ; $61c9: $59
	ld b, [hl]                                       ; $61ca: $46
	xor h                                            ; $61cb: $ac
	sbc $ea                                          ; $61cc: $de $ea
	cp [hl]                                          ; $61ce: $be
	and b                                            ; $61cf: $a0
	xor $10                                          ; $61d0: $ee $10
	xor b                                            ; $61d2: $a8
	ld e, e                                          ; $61d3: $5b
	ld d, [hl]                                       ; $61d4: $56
	ld b, [hl]                                       ; $61d5: $46
	ld c, h                                          ; $61d6: $4c
	and b                                            ; $61d7: $a0
	db $ed                                           ; $61d8: $ed
	ld b, e                                          ; $61d9: $43
	xor h                                            ; $61da: $ac
	or $00                                           ; $61db: $f6 $00
	ldh a, [$30]                                     ; $61dd: $f0 $30
	ldh a, [$28]                                     ; $61df: $f0 $28
	ld d, e                                          ; $61e1: $53
	ldh a, [rAUD1LOW]                                ; $61e2: $f0 $13
	jr c, @+$51                                      ; $61e4: $38 $4f

	ld b, c                                          ; $61e6: $41
	xor b                                            ; $61e7: $a8
	ld [hl], b                                       ; $61e8: $70
	ld [hl], c                                       ; $61e9: $71
	ld b, c                                          ; $61ea: $41
	ld c, h                                          ; $61eb: $4c
	and b                                            ; $61ec: $a0
	cpl                                              ; $61ed: $2f
	ld b, e                                          ; $61ee: $43
	ld b, [hl]                                       ; $61ef: $46
	dec sp                                           ; $61f0: $3b
	inc [hl]                                         ; $61f1: $34
	db $ec                                           ; $61f2: $ec
	and $a0                                          ; $61f3: $e6 $a0
	cpl                                              ; $61f5: $2f
	ld b, e                                          ; $61f6: $43
	ld b, [hl]                                       ; $61f7: $46
	ld c, l                                          ; $61f8: $4d
	inc [hl]                                         ; $61f9: $34
	ld [$a8be], a                                    ; $61fa: $ea $be $a8
	db $ec                                           ; $61fd: $ec
	dec [hl]                                         ; $61fe: $35
	inc a                                            ; $61ff: $3c
	dec sp                                           ; $6200: $3b
	dec a                                            ; $6201: $3d
	ld b, d                                          ; $6202: $42
	inc a                                            ; $6203: $3c
	ld a, [hl-]                                      ; $6204: $3a
	and b                                            ; $6205: $a0
	ld e, d                                          ; $6206: $5a
	ld c, l                                          ; $6207: $4d
	ld c, a                                          ; $6208: $4f
	inc [hl]                                         ; $6209: $34
	ld d, c                                          ; $620a: $51
	ld [hl], b                                       ; $620b: $70
	ld d, l                                          ; $620c: $55
	ldh a, [$3e]                                     ; $620d: $f0 $3e
	ldh a, [$0b]                                     ; $620f: $f0 $0b
	ld c, h                                          ; $6211: $4c
	and b                                            ; $6212: $a0
	cpl                                              ; $6213: $2f
	ld b, e                                          ; $6214: $43
	halt                                             ; $6215: $76
	ld b, d                                          ; $6216: $42
	ldh a, [$3f]                                     ; $6217: $f0 $3f
	ld c, a                                          ; $6219: $4f
	and c                                            ; $621a: $a1
	ld e, [hl]                                       ; $621b: $5e
	dec sp                                           ; $621c: $3b
	ld [hl], $46                                     ; $621d: $36 $46
	dec sp                                           ; $621f: $3b
	dec a                                            ; $6220: $3d
	ld b, d                                          ; $6221: $42
	and c                                            ; $6222: $a1
	cpl                                              ; $6223: $2f
	ld b, e                                          ; $6224: $43
	ldh a, [$d8]                                     ; $6225: $f0 $d8
	ld c, d                                          ; $6227: $4a
	ld e, c                                          ; $6228: $59
	xor h                                            ; $6229: $ac
	ld b, b                                          ; $622a: $40
	ld d, h                                          ; $622b: $54
	ld b, a                                          ; $622c: $47
	ld b, [hl]                                       ; $622d: $46
	dec sp                                           ; $622e: $3b

jr_094_622f:
	dec a                                            ; $622f: $3d
	ld c, d                                          ; $6230: $4a
	ld a, $66                                        ; $6231: $3e $66
	and b                                            ; $6233: $a0
	ldh a, [hDisp0_WX]                                     ; $6234: $f0 $89
	pop af                                           ; $6236: $f1
	daa                                              ; $6237: $27
	ldh a, [hDisp0_WX]                                     ; $6238: $f0 $89
	pop af                                           ; $623a: $f1
	daa                                              ; $623b: $27
	xor b                                            ; $623c: $a8
	ld l, a                                          ; $623d: $6f
	ld c, e                                          ; $623e: $4b
	db $ed                                           ; $623f: $ed
	ld [hl], d                                       ; $6240: $72
	jr c, jr_094_627b                                ; $6241: $38 $38

	ldh a, [$3f]                                     ; $6243: $f0 $3f
	ld c, c                                          ; $6245: $49
	ld [hl], a                                       ; $6246: $77
	add hl, sp                                       ; $6247: $39
	ld b, l                                          ; $6248: $45
	and b                                            ; $6249: $a0
	cpl                                              ; $624a: $2f
	ld b, e                                          ; $624b: $43
	ld b, [hl]                                       ; $624c: $46
	ld d, a                                          ; $624d: $57
	ld d, e                                          ; $624e: $53
	ld c, c                                          ; $624f: $49
	add hl, sp                                       ; $6250: $39
	xor h                                            ; $6251: $ac
	pop af                                           ; $6252: $f1
	db $d3                                           ; $6253: $d3
	ld [hl], c                                       ; $6254: $71
	ccf                                              ; $6255: $3f
	ld d, l                                          ; $6256: $55
	ld c, l                                          ; $6257: $4d
	ccf                                              ; $6258: $3f
	and b                                            ; $6259: $a0
	db $ec                                           ; $625a: $ec
	inc de                                           ; $625b: $13
	ldh a, [$3f]                                     ; $625c: $f0 $3f
	ld a, e                                          ; $625e: $7b
	inc a                                            ; $625f: $3c
	ld d, a                                          ; $6260: $57
	ld c, h                                          ; $6261: $4c
	and b                                            ; $6262: $a0
	cpl                                              ; $6263: $2f
	ld b, e                                          ; $6264: $43
	halt                                             ; $6265: $76
	ld b, d                                          ; $6266: $42
	ldh a, [$3f]                                     ; $6267: $f0 $3f
	ld c, e                                          ; $6269: $4b
	ld e, d                                          ; $626a: $5a
	add hl, sp                                       ; $626b: $39
	and c                                            ; $626c: $a1
	jr c, jr_094_62a7                                ; $626d: $38 $38

	ld c, c                                          ; $626f: $49
	ld [hl], a                                       ; $6270: $77
	add hl, sp                                       ; $6271: $39
	ld b, l                                          ; $6272: $45
	and b                                            ; $6273: $a0
	cpl                                              ; $6274: $2f
	ld b, e                                          ; $6275: $43
	add sp, -$1b                                     ; $6276: $e8 $e5
	and b                                            ; $6278: $a0
	pop af                                           ; $6279: $f1
	nop                                              ; $627a: $00

jr_094_627b:
	pop af                                           ; $627b: $f1
	ld l, b                                          ; $627c: $68
	ldh a, [$2a]                                     ; $627d: $f0 $2a
	ldh a, [$f5]                                     ; $627f: $f0 $f5
	ld e, [hl]                                       ; $6281: $5e
	dec a                                            ; $6282: $3d
	ld l, h                                          ; $6283: $6c
	dec a                                            ; $6284: $3d
	jr c, jr_094_622f                                ; $6285: $38 $a8

	ld b, [hl]                                       ; $6287: $46
	dec sp                                           ; $6288: $3b
	ld h, c                                          ; $6289: $61
	inc a                                            ; $628a: $3c
	ld a, [hl-]                                      ; $628b: $3a
	ld c, b                                          ; $628c: $48
	and b                                            ; $628d: $a0
	cpl                                              ; $628e: $2f
	ld b, e                                          ; $628f: $43
	xor $10                                          ; $6290: $ee $10
	and b                                            ; $6292: $a0
	cpl                                              ; $6293: $2f
	ld b, e                                          ; $6294: $43
	ld b, [hl]                                       ; $6295: $46
	dec sp                                           ; $6296: $3b
	inc [hl]                                         ; $6297: $34
	db $ec                                           ; $6298: $ec
	and $a8                                          ; $6299: $e6 $a8
	db $ed                                           ; $629b: $ed
	ld [hl], a                                       ; $629c: $77
	ld c, e                                          ; $629d: $4b
	and c                                            ; $629e: $a1
	ld [$a8e6], a                                    ; $629f: $ea $e6 $a8
	ld l, e                                          ; $62a2: $6b
	ld b, d                                          ; $62a3: $42
	ldh a, [$ed]                                     ; $62a4: $f0 $ed
	ld a, [hl-]                                      ; $62a6: $3a

jr_094_62a7:
	ld b, d                                          ; $62a7: $42
	inc a                                            ; $62a8: $3c
	xor h                                            ; $62a9: $ac
	ldh a, [rTAC]                                    ; $62aa: $f0 $07
	inc a                                            ; $62ac: $3c
	ld d, b                                          ; $62ad: $50
	ld a, [hl-]                                      ; $62ae: $3a
	inc a                                            ; $62af: $3c
	dec sp                                           ; $62b0: $3b
	dec a                                            ; $62b1: $3d
	ld e, l                                          ; $62b2: $5d
	ld e, d                                          ; $62b3: $5a
	and b                                            ; $62b4: $a0
	cpl                                              ; $62b5: $2f
	ld b, e                                          ; $62b6: $43
	ld b, [hl]                                       ; $62b7: $46
	ld d, a                                          ; $62b8: $57
	ld d, e                                          ; $62b9: $53
	ld c, c                                          ; $62ba: $49
	add hl, sp                                       ; $62bb: $39
	xor b                                            ; $62bc: $a8
	ld l, d                                          ; $62bd: $6a
	ld b, d                                          ; $62be: $42
	ldh a, [$ed]                                     ; $62bf: $f0 $ed
	ld c, e                                          ; $62c1: $4b
	ld c, h                                          ; $62c2: $4c
	xor h                                            ; $62c3: $ac
	ldh a, [$6d]                                     ; $62c4: $f0 $6d
	ld e, c                                          ; $62c6: $59
	ldh a, [$27]                                     ; $62c7: $f0 $27
	ld b, d                                          ; $62c9: $42
	ldh a, [$99]                                     ; $62ca: $f0 $99
	sub b                                            ; $62cc: $90
	ld a, [hl-]                                      ; $62cd: $3a
	ld b, c                                          ; $62ce: $41
	ld b, h                                          ; $62cf: $44
	and b                                            ; $62d0: $a0
	ldh a, [$5a]                                     ; $62d1: $f0 $5a
	ld e, [hl]                                       ; $62d3: $5e
	inc [hl]                                         ; $62d4: $34
	ldh a, [$6d]                                     ; $62d5: $f0 $6d
	ld e, c                                          ; $62d7: $59
	ldh a, [$27]                                     ; $62d8: $f0 $27
	ld a, [hl-]                                      ; $62da: $3a
	ld b, c                                          ; $62db: $41
	ld b, h                                          ; $62dc: $44
	xor b                                            ; $62dd: $a8
	db $ec                                           ; $62de: $ec
	cp e                                             ; $62df: $bb
	ld b, d                                          ; $62e0: $42
	ldh a, [$ed]                                     ; $62e1: $f0 $ed
	inc a                                            ; $62e3: $3c
	ld c, c                                          ; $62e4: $49
	ld [hl], a                                       ; $62e5: $77
	dec sp                                           ; $62e6: $3b
	dec a                                            ; $62e7: $3d
	ld h, e                                          ; $62e8: $63
	xor b                                            ; $62e9: $a8
	ld b, [hl]                                       ; $62ea: $46
	dec sp                                           ; $62eb: $3b
	inc [hl]                                         ; $62ec: $34
	ld c, a                                          ; $62ed: $4f
	add hl, sp                                       ; $62ee: $39
	ld h, a                                          ; $62ef: $67
	inc a                                            ; $62f0: $3c
	ld a, [hl-]                                      ; $62f1: $3a
	jr c, jr_094_633d                                ; $62f2: $38 $49

	ld c, b                                          ; $62f4: $48
	and b                                            ; $62f5: $a0
	jp hl                                            ; $62f6: $e9


	ld [hl], a                                       ; $62f7: $77
	xor h                                            ; $62f8: $ac
	db $ed                                           ; $62f9: $ed
	ld h, d                                          ; $62fa: $62
	ld c, c                                          ; $62fb: $49
	ld [$accf], a                                    ; $62fc: $ea $cf $ac
	ld [hl], b                                       ; $62ff: $70
	ld [hl], c                                       ; $6300: $71
	ld b, c                                          ; $6301: $41
	ld c, h                                          ; $6302: $4c
	and b                                            ; $6303: $a0
	db $eb                                           ; $6304: $eb
	ld e, a                                          ; $6305: $5f
	xor b                                            ; $6306: $a8
	ld c, d                                          ; $6307: $4a
	ld c, a                                          ; $6308: $4f
	inc [hl]                                         ; $6309: $34
	db $ed                                           ; $630a: $ed
	ld d, $3f                                        ; $630b: $16 $3f
	ld l, e                                          ; $630d: $6b
	ld b, d                                          ; $630e: $42
	ldh a, [$ed]                                     ; $630f: $f0 $ed
	and c                                            ; $6311: $a1
	cpl                                              ; $6312: $2f
	ld b, e                                          ; $6313: $43
	ldh a, [$31]                                     ; $6314: $f0 $31
	ld c, e                                          ; $6316: $4b
	xor h                                            ; $6317: $ac
	ldh a, [$6d]                                     ; $6318: $f0 $6d
	ld e, c                                          ; $631a: $59
	ldh a, [$27]                                     ; $631b: $f0 $27
	ld b, d                                          ; $631d: $42
	ldh a, [$99]                                     ; $631e: $f0 $99
	sub b                                            ; $6320: $90
	ld a, [hl-]                                      ; $6321: $3a
	ld b, c                                          ; $6322: $41
	ld b, h                                          ; $6323: $44
	and b                                            ; $6324: $a0
	ldh a, [$6d]                                     ; $6325: $f0 $6d
	ld e, c                                          ; $6327: $59
	ldh a, [$27]                                     ; $6328: $f0 $27
	inc a                                            ; $632a: $3c
	xor e                                            ; $632b: $ab
	ldh a, [rTAC]                                    ; $632c: $f0 $07
	inc a                                            ; $632e: $3c
	ld d, b                                          ; $632f: $50
	ld a, [hl-]                                      ; $6330: $3a
	jr c, @+$4d                                      ; $6331: $38 $4b

	sbc h                                            ; $6333: $9c
	ld c, h                                          ; $6334: $4c
	xor b                                            ; $6335: $a8
	ld b, [hl]                                       ; $6336: $46
	dec sp                                           ; $6337: $3b
	inc [hl]                                         ; $6338: $34
	jp hl                                            ; $6339: $e9


	inc a                                            ; $633a: $3c
	ld c, b                                          ; $633b: $48
	and b                                            ; $633c: $a0

jr_094_633d:
	ret                                              ; $633d: $c9


	db $ed                                           ; $633e: $ed
	ld h, l                                          ; $633f: $65
	ld a, $3d                                        ; $6340: $3e $3d
	inc a                                            ; $6342: $3c
	ld a, [hl-]                                      ; $6343: $3a
	and b                                            ; $6344: $a0
	ld l, d                                          ; $6345: $6a
	ld b, d                                          ; $6346: $42
	ld [hl], d                                       ; $6347: $72
	ccf                                              ; $6348: $3f
	dec a                                            ; $6349: $3d
	ld b, l                                          ; $634a: $45
	and b                                            ; $634b: $a0
	ld b, l                                          ; $634c: $45
	ld d, l                                          ; $634d: $55
	ldh a, [rTAC]                                    ; $634e: $f0 $07
	inc a                                            ; $6350: $3c
	ld d, b                                          ; $6351: $50
	ld a, [hl-]                                      ; $6352: $3a
	inc a                                            ; $6353: $3c
	dec sp                                           ; $6354: $3b
	dec a                                            ; $6355: $3d
	ld e, l                                          ; $6356: $5d
	ld e, d                                          ; $6357: $5a
	xor h                                            ; $6358: $ac
	db $ed                                           ; $6359: $ed
	ld h, l                                          ; $635a: $65
	db $eb                                           ; $635b: $eb
	ld d, [hl]                                       ; $635c: $56
	and b                                            ; $635d: $a0
	ldh a, [$5d]                                     ; $635e: $f0 $5d
	ld a, [hl-]                                      ; $6360: $3a
	ldh a, [$ed]                                     ; $6361: $f0 $ed
	ld c, h                                          ; $6363: $4c
	add l                                            ; $6364: $85
	xor b                                            ; $6365: $a8
	db $ed                                           ; $6366: $ed
	ld h, a                                          ; $6367: $67
	ld b, a                                          ; $6368: $47
	add hl, sp                                       ; $6369: $39
	ld e, l                                          ; $636a: $5d
	ccf                                              ; $636b: $3f
	dec a                                            ; $636c: $3d
	ld h, e                                          ; $636d: $63
	ld b, l                                          ; $636e: $45
	and b                                            ; $636f: $a0
	cpl                                              ; $6370: $2f
	ld b, e                                          ; $6371: $43
	db $ed                                           ; $6372: $ed
	ld b, c                                          ; $6373: $41
	xor c                                            ; $6374: $a9
	add sp, -$7c                                     ; $6375: $e8 $84
	and b                                            ; $6377: $a0
	ld [hl], a                                       ; $6378: $77
	ld h, e                                          ; $6379: $63
	sbc h                                            ; $637a: $9c
	ldh a, [c]                                       ; $637b: $f2
	ld bc, $613b                                     ; $637c: $01 $3b $61
	ld d, [hl]                                       ; $637f: $56
	dec sp                                           ; $6380: $3b
	dec a                                            ; $6381: $3d
	xor b                                            ; $6382: $a8
	ld l, l                                          ; $6383: $6d
	adc b                                            ; $6384: $88
	pop af                                           ; $6385: $f1
	inc b                                            ; $6386: $04
	ld d, b                                          ; $6387: $50
	ld c, l                                          ; $6388: $4d
	dec a                                            ; $6389: $3d
	ld h, e                                          ; $638a: $63
	and b                                            ; $638b: $a0
	cpl                                              ; $638c: $2f
	ld b, e                                          ; $638d: $43
	db $ec                                           ; $638e: $ec
	cp c                                             ; $638f: $b9
	inc [hl]                                         ; $6390: $34
	add hl, sp                                       ; $6391: $39
	ld e, l                                          ; $6392: $5d
	ccf                                              ; $6393: $3f
	ld d, l                                          ; $6394: $55
	ld c, l                                          ; $6395: $4d
	ccf                                              ; $6396: $3f
	xor b                                            ; $6397: $a8
	add sp, -$7c                                     ; $6398: $e8 $84
	and b                                            ; $639a: $a0
	db $ed                                           ; $639b: $ed
	ld h, d                                          ; $639c: $62
	ld h, d                                          ; $639d: $62
	pop af                                           ; $639e: $f1
	adc l                                            ; $639f: $8d
	ld a, $47                                        ; $63a0: $3e $47
	inc de                                           ; $63a2: $13
	ld a, b                                          ; $63a3: $78
	dec a                                            ; $63a4: $3d
	ld b, d                                          ; $63a5: $42
	ld b, l                                          ; $63a6: $45
	xor b                                            ; $63a7: $a8
	ld c, b                                          ; $63a8: $48
	inc hl                                           ; $63a9: $23
	ld d, h                                          ; $63aa: $54
	ld d, h                                          ; $63ab: $54
	ld b, a                                          ; $63ac: $47
	xor $2d                                          ; $63ad: $ee $2d
	ld a, [hl-]                                      ; $63af: $3a
	jr c, jr_094_63f7                                ; $63b0: $38 $45

	add hl, sp                                       ; $63b2: $39
	ld c, h                                          ; $63b3: $4c
	and b                                            ; $63b4: $a0
	cpl                                              ; $63b5: $2f
	ld b, e                                          ; $63b6: $43
	db $ec                                           ; $63b7: $ec
	ld b, a                                          ; $63b8: $47
	db $ec                                           ; $63b9: $ec
	ld hl, $ec13                                     ; $63ba: $21 $13 $ec
	and $53                                          ; $63bd: $e6 $53
	jr c, jr_094_63fe                                ; $63bf: $38 $3d

	ld a, [hl-]                                      ; $63c1: $3a
	xor b                                            ; $63c2: $a8
	add sp, -$63                                     ; $63c3: $e8 $9d
	and b                                            ; $63c5: $a0
	ld b, [hl]                                       ; $63c6: $46
	dec sp                                           ; $63c7: $3b
	xor h                                            ; $63c8: $ac
	db $ec                                           ; $63c9: $ec
	push bc                                          ; $63ca: $c5
	ld h, a                                          ; $63cb: $67
	ld d, l                                          ; $63cc: $55
	ld c, h                                          ; $63cd: $4c
	and b                                            ; $63ce: $a0
	ld b, [hl]                                       ; $63cf: $46
	dec sp                                           ; $63d0: $3b
	inc [hl]                                         ; $63d1: $34
	ld c, a                                          ; $63d2: $4f
	add hl, sp                                       ; $63d3: $39
	ld h, a                                          ; $63d4: $67
	ld d, l                                          ; $63d5: $55
	ld c, h                                          ; $63d6: $4c
	and b                                            ; $63d7: $a0
	add hl, bc                                       ; $63d8: $09
	db $ec                                           ; $63d9: $ec
	ld h, $6b                                        ; $63da: $26 $6b
	ld h, d                                          ; $63dc: $62
	inc de                                           ; $63dd: $13
	ldh a, [$c1]                                     ; $63de: $f0 $c1
	ldh a, [$d5]                                     ; $63e0: $f0 $d5
	ld a, $3f                                        ; $63e2: $3e $3f
	ld c, [hl]                                       ; $63e4: $4e
	ld b, d                                          ; $63e5: $42
	and c                                            ; $63e6: $a1
	cpl                                              ; $63e7: $2f
	ld b, e                                          ; $63e8: $43
	ld e, d                                          ; $63e9: $5a
	add hl, sp                                       ; $63ea: $39
	ld c, a                                          ; $63eb: $4f
	sbc e                                            ; $63ec: $9b
	ld b, d                                          ; $63ed: $42
	ldh a, [$c1]                                     ; $63ee: $f0 $c1
	ldh a, [$d5]                                     ; $63f0: $f0 $d5
	inc de                                           ; $63f2: $13
	ld l, h                                          ; $63f3: $6c
	dec a                                            ; $63f4: $3d
	jr c, jr_094_643b                                ; $63f5: $38 $44

jr_094_63f7:
	ld e, l                                          ; $63f7: $5d
	ld e, d                                          ; $63f8: $5a
	and b                                            ; $63f9: $a0
	ldh a, [$d6]                                     ; $63fa: $f0 $d6
	inc [hl]                                         ; $63fc: $34
	ld h, a                                          ; $63fd: $67

jr_094_63fe:
	ld d, h                                          ; $63fe: $54
	add hl, sp                                       ; $63ff: $39
	and b                                            ; $6400: $a0
	cpl                                              ; $6401: $2f
	ld b, e                                          ; $6402: $43
	db $ec                                           ; $6403: $ec
	add hl, bc                                       ; $6404: $09
	ld a, b                                          ; $6405: $78
	dec a                                            ; $6406: $3d
	ld b, c                                          ; $6407: $41
	ld b, h                                          ; $6408: $44
	inc a                                            ; $6409: $3c
	ld d, b                                          ; $640a: $50
	inc de                                           ; $640b: $13
	ld [hl], d                                       ; $640c: $72
	ccf                                              ; $640d: $3f
	call Call_094_48a0                               ; $640e: $cd $a0 $48
	xor $1f                                          ; $6411: $ee $1f
	and b                                            ; $6413: $a0
	sbc e                                            ; $6414: $9b
	ld h, d                                          ; $6415: $62
	pop af                                           ; $6416: $f1
	ld l, $5d                                        ; $6417: $2e $5d
	ld c, [hl]                                       ; $6419: $4e
	add h                                            ; $641a: $84

jr_094_641b:
	dec sp                                           ; $641b: $3b
	ccf                                              ; $641c: $3f
	inc de                                           ; $641d: $13
	ld b, [hl]                                       ; $641e: $46
	ld c, [hl]                                       ; $641f: $4e
	db $ed                                           ; $6420: $ed
	add a                                            ; $6421: $87
	inc [hl]                                         ; $6422: $34
	db $ed                                           ; $6423: $ed
	adc d                                            ; $6424: $8a
	ld d, c                                          ; $6425: $51
	ld c, [hl]                                       ; $6426: $4e
	ld h, e                                          ; $6427: $63
	and b                                            ; $6428: $a0
	cpl                                              ; $6429: $2f
	ld b, e                                          ; $642a: $43
	ld b, b                                          ; $642b: $40
	add hl, sp                                       ; $642c: $39
	ld b, h                                          ; $642d: $44
	ld c, h                                          ; $642e: $4c
	xor b                                            ; $642f: $a8
	pop af                                           ; $6430: $f1
	ld c, h                                          ; $6431: $4c
	ldh a, [$61]                                     ; $6432: $f0 $61
	ldh a, [$7f]                                     ; $6434: $f0 $7f
	jr c, jr_094_6486                                ; $6436: $38 $4e

	ld c, a                                          ; $6438: $4f
	ld b, c                                          ; $6439: $41
	ld c, h                                          ; $643a: $4c

jr_094_643b:
	and b                                            ; $643b: $a0
	ld l, a                                          ; $643c: $6f
	ld a, [hl-]                                      ; $643d: $3a
	ld b, c                                          ; $643e: $41
	inc a                                            ; $643f: $3c
	db $ec                                           ; $6440: $ec
	ld l, h                                          ; $6441: $6c
	ld c, h                                          ; $6442: $4c
	and b                                            ; $6443: $a0
	cpl                                              ; $6444: $2f
	ld b, e                                          ; $6445: $43
	or h                                             ; $6446: $b4
	xor h                                            ; $6447: $ac
	db $ec                                           ; $6448: $ec
	push bc                                          ; $6449: $c5
	db $ec                                           ; $644a: $ec
	rrca                                             ; $644b: $0f
	and c                                            ; $644c: $a1
	call c, Call_094_7aa8                            ; $644d: $dc $a8 $7a
	ld e, a                                          ; $6450: $5f
	and b                                            ; $6451: $a0
	sbc e                                            ; $6452: $9b
	dec sp                                           ; $6453: $3b
	ccf                                              ; $6454: $3f
	pop af                                           ; $6455: $f1
	ld l, $38                                        ; $6456: $2e $38
	ccf                                              ; $6458: $3f
	ccf                                              ; $6459: $3f
	inc de                                           ; $645a: $13
	db $eb                                           ; $645b: $eb
	ld l, d                                          ; $645c: $6a
	ld a, [hl-]                                      ; $645d: $3a
	jr c, jr_094_64a2                                ; $645e: $38 $42

	inc a                                            ; $6460: $3c
	ld a, [hl-]                                      ; $6461: $3a
	and c                                            ; $6462: $a1
	cpl                                              ; $6463: $2f
	ld b, e                                          ; $6464: $43
	ldh a, [$fa]                                     ; $6465: $f0 $fa
	ld b, c                                          ; $6467: $41
	ld c, d                                          ; $6468: $4a
	ccf                                              ; $6469: $3f

jr_094_646a:
	ld c, a                                          ; $646a: $4f
	inc de                                           ; $646b: $13
	db $eb                                           ; $646c: $eb
	ld c, a                                          ; $646d: $4f
	ld b, l                                          ; $646e: $45
	ld c, h                                          ; $646f: $4c
	and b                                            ; $6470: $a0
	ld c, a                                          ; $6471: $4f
	add hl, sp                                       ; $6472: $39
	db $ec                                           ; $6473: $ec
	push bc                                          ; $6474: $c5
	ld a, d                                          ; $6475: $7a
	ld d, b                                          ; $6476: $50
	ld a, [hl-]                                      ; $6477: $3a
	jr c, jr_094_641b                                ; $6478: $38 $a1

	cpl                                              ; $647a: $2f
	ld b, e                                          ; $647b: $43
	ld b, b                                          ; $647c: $40
	add hl, sp                                       ; $647d: $39
	ld b, h                                          ; $647e: $44
	ld c, h                                          ; $647f: $4c
	and b                                            ; $6480: $a0
	cpl                                              ; $6481: $2f
	ld b, e                                          ; $6482: $43
	ld e, d                                          ; $6483: $5a
	add hl, sp                                       ; $6484: $39
	ld c, a                                          ; $6485: $4f

jr_094_6486:
	ldh a, [$a5]                                     ; $6486: $f0 $a5
	ldh a, [rSCX]                                    ; $6488: $f0 $43
	ld b, d                                          ; $648a: $42
	ldh a, [$c1]                                     ; $648b: $f0 $c1
	ldh a, [$d5]                                     ; $648d: $f0 $d5
	inc de                                           ; $648f: $13
	ld l, h                                          ; $6490: $6c
	dec a                                            ; $6491: $3d
	jr c, jr_094_64d8                                ; $6492: $38 $44

	ld e, l                                          ; $6494: $5d
	ld e, d                                          ; $6495: $5a
	and b                                            ; $6496: $a0
	ldh a, [$a5]                                     ; $6497: $f0 $a5
	ldh a, [rSCX]                                    ; $6499: $f0 $43
	ld a, [hl-]                                      ; $649b: $3a
	ld b, c                                          ; $649c: $41
	ccf                                              ; $649d: $3f
	inc de                                           ; $649e: $13
	ld c, a                                          ; $649f: $4f

jr_094_64a0:
	add hl, sp                                       ; $64a0: $39
	pop af                                           ; $64a1: $f1

jr_094_64a2:
	ld l, $5d                                        ; $64a2: $2e $5d
	ld a, [hl-]                                      ; $64a4: $3a
	jr c, jr_094_650a                                ; $64a5: $38 $63

	and b                                            ; $64a7: $a0
	cpl                                              ; $64a8: $2f
	ld b, e                                          ; $64a9: $43
	halt                                             ; $64aa: $76
	ld c, a                                          ; $64ab: $4f
	pop af                                           ; $64ac: $f1
	add hl, de                                       ; $64ad: $19
	adc c                                            ; $64ae: $89
	ldh a, [rTIMA]                                   ; $64af: $f0 $05
	sbc l                                            ; $64b1: $9d
	ld d, b                                          ; $64b2: $50
	jr c, jr_094_64f1                                ; $64b3: $38 $3c

	ld d, b                                          ; $64b5: $50
	inc de                                           ; $64b6: $13
	pop af                                           ; $64b7: $f1
	ld l, $38                                        ; $64b8: $2e $38
	ccf                                              ; $64ba: $3f
	ld a, [hl-]                                      ; $64bb: $3a
	jr c, jr_094_64f8                                ; $64bc: $38 $3a

	ld [hl], h                                       ; $64be: $74
	and b                                            ; $64bf: $a0
	or h                                             ; $64c0: $b4
	xor h                                            ; $64c1: $ac
	db $ec                                           ; $64c2: $ec
	push bc                                          ; $64c3: $c5
	ld a, d                                          ; $64c4: $7a
	ld d, b                                          ; $64c5: $50
	ld a, [hl-]                                      ; $64c6: $3a
	jr c, jr_094_646a                                ; $64c7: $38 $a1

jr_094_64c9:
	cpl                                              ; $64c9: $2f
	ld b, e                                          ; $64ca: $43
	ld b, b                                          ; $64cb: $40
	add hl, sp                                       ; $64cc: $39
	ld b, h                                          ; $64cd: $44
	ld c, h                                          ; $64ce: $4c
	xor b                                            ; $64cf: $a8
	ld a, d                                          ; $64d0: $7a
	ld e, a                                          ; $64d1: $5f
	add hl, sp                                       ; $64d2: $39
	and b                                            ; $64d3: $a0
	ld d, c                                          ; $64d4: $51
	ld [hl], b                                       ; $64d5: $70
	jr c, jr_094_64c9                                ; $64d6: $38 $f1

jr_094_64d8:
	ld [hl], a                                       ; $64d8: $77
	db $f4                                           ; $64d9: $f4
	sbc d                                            ; $64da: $9a
	ld b, d                                          ; $64db: $42
	inc de                                           ; $64dc: $13
	ldh a, [$a5]                                     ; $64dd: $f0 $a5
	ldh a, [rSCX]                                    ; $64df: $f0 $43
	ld c, c                                          ; $64e1: $49
	inc a                                            ; $64e2: $3c
	ld b, [hl]                                       ; $64e3: $46
	ld c, [hl]                                       ; $64e4: $4e
	ld c, h                                          ; $64e5: $4c
	and b                                            ; $64e6: $a0
	cpl                                              ; $64e7: $2f
	ld b, e                                          ; $64e8: $43
	ldh a, [$fa]                                     ; $64e9: $f0 $fa
	ld b, c                                          ; $64eb: $41

jr_094_64ec:
	ld c, d                                          ; $64ec: $4a
	ccf                                              ; $64ed: $3f
	inc de                                           ; $64ee: $13
	db $eb                                           ; $64ef: $eb
	ld l, d                                          ; $64f0: $6a

jr_094_64f1:
	ld a, [hl-]                                      ; $64f1: $3a
	dec sp                                           ; $64f2: $3b
	ccf                                              ; $64f3: $3f
	ld d, l                                          ; $64f4: $55
	ld c, [hl]                                       ; $64f5: $4e
	ld c, h                                          ; $64f6: $4c
	and b                                            ; $64f7: $a0

jr_094_64f8:
	db $ec                                           ; $64f8: $ec
	push bc                                          ; $64f9: $c5
	ld a, d                                          ; $64fa: $7a
	ld d, b                                          ; $64fb: $50
	ld a, [hl-]                                      ; $64fc: $3a
	jr c, jr_094_64a0                                ; $64fd: $38 $a1

	ld c, c                                          ; $64ff: $49
	ccf                                              ; $6500: $3f
	ld c, a                                          ; $6501: $4f
	db $ec                                           ; $6502: $ec
	ret c                                            ; $6503: $d8

	ld e, l                                          ; $6504: $5d
	ld e, d                                          ; $6505: $5a
	xor h                                            ; $6506: $ac
	db $eb                                           ; $6507: $eb
	ld [hl], $4c                                     ; $6508: $36 $4c

jr_094_650a:
	and b                                            ; $650a: $a0
	cpl                                              ; $650b: $2f
	ld b, e                                          ; $650c: $43
	ld b, [hl]                                       ; $650d: $46
	dec sp                                           ; $650e: $3b
	inc [hl]                                         ; $650f: $34
	ldh a, [rSCX]                                    ; $6510: $f0 $43
	ldh a, [rAUDTERM]                                ; $6512: $f0 $25
	ldh a, [$b0]                                     ; $6514: $f0 $b0
	dec sp                                           ; $6516: $3b
	ccf                                              ; $6517: $3f
	ld c, [hl]                                       ; $6518: $4e
	inc a                                            ; $6519: $3c
	ld d, b                                          ; $651a: $50
	inc de                                           ; $651b: $13
	ld [$a099], a                                    ; $651c: $ea $99 $a0
	cpl                                              ; $651f: $2f
	ld b, e                                          ; $6520: $43
	xor $2d                                          ; $6521: $ee $2d
	inc [hl]                                         ; $6523: $34
	ld [$a09a], a                                    ; $6524: $ea $9a $a0
	ld e, [hl]                                       ; $6527: $5e
	ld [hl], $f0                                     ; $6528: $36 $f0
	ld a, [$3b71]                                    ; $652a: $fa $71 $3b
	ccf                                              ; $652d: $3f
	ld c, b                                          ; $652e: $48
	xor c                                            ; $652f: $a9
	ld d, d                                          ; $6530: $52
	ld b, [hl]                                       ; $6531: $46
	jr c, jr_094_656c                                ; $6532: $38 $38

	inc a                                            ; $6534: $3c
	xor b                                            ; $6535: $a8
	db $ec                                           ; $6536: $ec
	push bc                                          ; $6537: $c5
	ld a, d                                          ; $6538: $7a
	ld d, b                                          ; $6539: $50
	ld a, [hl-]                                      ; $653a: $3a
	jr c, @-$5d                                      ; $653b: $38 $a1

	db $ec                                           ; $653d: $ec
	db $10                                           ; $653e: $10
	inc [hl]                                         ; $653f: $34
	db $ed                                           ; $6540: $ed
	ld l, d                                          ; $6541: $6a
	ld d, e                                          ; $6542: $53
	inc de                                           ; $6543: $13
	ldh a, [$bb]                                     ; $6544: $f0 $bb
	ld d, d                                          ; $6546: $52
	ld c, [hl]                                       ; $6547: $4e
	ld l, h                                          ; $6548: $6c
	dec a                                            ; $6549: $3d
	jr c, jr_094_64ec                                ; $654a: $38 $a0

	ld l, d                                          ; $654c: $6a
	ld b, d                                          ; $654d: $42
	add h                                            ; $654e: $84
	xor h                                            ; $654f: $ac
	ld l, e                                          ; $6550: $6b
	ld d, e                                          ; $6551: $53
	add d                                            ; $6552: $82
	jr c, jr_094_6592                                ; $6553: $38 $3d

	inc a                                            ; $6555: $3c
	dec sp                                           ; $6556: $3b
	dec a                                            ; $6557: $3d
	ld b, d                                          ; $6558: $42
	and c                                            ; $6559: $a1
	cpl                                              ; $655a: $2f
	ld b, e                                          ; $655b: $43
	ld l, e                                          ; $655c: $6b
	ld b, h                                          ; $655d: $44
	ld e, a                                          ; $655e: $5f
	add hl, sp                                       ; $655f: $39
	ld c, h                                          ; $6560: $4c
	xor b                                            ; $6561: $a8
	halt                                             ; $6562: $76
	ld c, a                                          ; $6563: $4f
	ld b, l                                          ; $6564: $45
	ld d, l                                          ; $6565: $55
	pop af                                           ; $6566: $f1
	dec sp                                           ; $6567: $3b
	ld d, b                                          ; $6568: $50
	ld a, [hl-]                                      ; $6569: $3a
	inc a                                            ; $656a: $3c
	dec sp                                           ; $656b: $3b

jr_094_656c:
	dec a                                            ; $656c: $3d
	ld b, l                                          ; $656d: $45
	and b                                            ; $656e: $a0
	xor $10                                          ; $656f: $ee $10
	and b                                            ; $6571: $a0
	cpl                                              ; $6572: $2f
	ld b, e                                          ; $6573: $43
	xor $10                                          ; $6574: $ee $10
	and b                                            ; $6576: $a0
	cpl                                              ; $6577: $2f
	ld b, e                                          ; $6578: $43
	db $ec                                           ; $6579: $ec
	rrca                                             ; $657a: $0f
	and c                                            ; $657b: $a1
	call c, $e9a0                                    ; $657c: $dc $a0 $e9
	jp c, $e913                                      ; $657f: $da $13 $e9

	ld c, l                                          ; $6582: $4d
	ld b, l                                          ; $6583: $45
	and b                                            ; $6584: $a0
	cpl                                              ; $6585: $2f
	ld b, e                                          ; $6586: $43
	db $ec                                           ; $6587: $ec
	and $ac                                          ; $6588: $e6 $ac
	jp hl                                            ; $658a: $e9


	ldh [$a1], a                                     ; $658b: $e0 $a1
	xor $1f                                          ; $658d: $ee $1f
	inc [hl]                                         ; $658f: $34
	ld h, a                                          ; $6590: $67
	dec sp                                           ; $6591: $3b

jr_094_6592:
	ccf                                              ; $6592: $3f
	ld d, l                                          ; $6593: $55
	ld c, [hl]                                       ; $6594: $4e
	ld c, h                                          ; $6595: $4c
	and b                                            ; $6596: $a0
	cpl                                              ; $6597: $2f
	ld b, e                                          ; $6598: $43
	jp hl                                            ; $6599: $e9


	ret c                                            ; $659a: $d8

	and c                                            ; $659b: $a1
	adc d                                            ; $659c: $8a
	ldh a, [$73]                                     ; $659d: $f0 $73
	adc a                                            ; $659f: $8f
	ld b, d                                          ; $65a0: $42
	add h                                            ; $65a1: $84
	ld b, a                                          ; $65a2: $47
	xor h                                            ; $65a3: $ac
	ld b, e                                          ; $65a4: $43
	di                                               ; $65a5: $f3
	ld b, c                                          ; $65a6: $41
	pop af                                           ; $65a7: $f1
	db $e4                                           ; $65a8: $e4
	ld d, e                                          ; $65a9: $53
	pop af                                           ; $65aa: $f1
	ld a, [$383e]                                    ; $65ab: $fa $3e $38
	inc a                                            ; $65ae: $3c
	ld d, b                                          ; $65af: $50
	ldh a, [rIF]                                     ; $65b0: $f0 $0f
	add e                                            ; $65b2: $83
	ldh a, [$eb]                                     ; $65b3: $f0 $eb
	inc de                                           ; $65b5: $13
	dec sp                                           ; $65b6: $3b
	ccf                                              ; $65b7: $3f
	add d                                            ; $65b8: $82
	ld h, e                                          ; $65b9: $63
	ld c, l                                          ; $65ba: $4d
	ld h, c                                          ; $65bb: $61
	ld d, [hl]                                       ; $65bc: $56
	dec sp                                           ; $65bd: $3b
	dec a                                            ; $65be: $3d
	ld c, b                                          ; $65bf: $48
	and b                                            ; $65c0: $a0
	cpl                                              ; $65c1: $2f
	ld b, e                                          ; $65c2: $43
	ld b, b                                          ; $65c3: $40
	add hl, sp                                       ; $65c4: $39
	xor l                                            ; $65c5: $ad
	ld b, b                                          ; $65c6: $40
	ld c, l                                          ; $65c7: $4d
	ld c, e                                          ; $65c8: $4b
	ldh a, [$8d]                                     ; $65c9: $f0 $8d
	ldh a, [$9e]                                     ; $65cb: $f0 $9e
	ld b, h                                          ; $65cd: $44
	dec sp                                           ; $65ce: $3b
	dec a                                            ; $65cf: $3d
	ld c, h                                          ; $65d0: $4c
	and b                                            ; $65d1: $a0
	ret                                              ; $65d2: $c9


	ldh a, [rHDMA5]                                  ; $65d3: $f0 $55
	ldh a, [rBCPS]                                   ; $65d5: $f0 $68
	ld b, l                                          ; $65d7: $45
	ld c, h                                          ; $65d8: $4c
	and b                                            ; $65d9: $a0
	xor $1f                                          ; $65da: $ee $1f
	and b                                            ; $65dc: $a0
	db $ec                                           ; $65dd: $ec
	add hl, bc                                       ; $65de: $09
	ld b, h                                          ; $65df: $44
	inc a                                            ; $65e0: $3c
	ld d, b                                          ; $65e1: $50
	xor h                                            ; $65e2: $ac
	ld h, a                                          ; $65e3: $67
	dec sp                                           ; $65e4: $3b
	ccf                                              ; $65e5: $3f
	ld d, l                                          ; $65e6: $55
	ld c, [hl]                                       ; $65e7: $4e
	ld c, h                                          ; $65e8: $4c
	and b                                            ; $65e9: $a0
	ld b, e                                          ; $65ea: $43
	di                                               ; $65eb: $f3
	ld b, c                                          ; $65ec: $41
	pop af                                           ; $65ed: $f1
	db $e4                                           ; $65ee: $e4
	ld b, d                                          ; $65ef: $42
	pop af                                           ; $65f0: $f1
	ld a, [$383e]                                    ; $65f1: $fa $3e $38
	add h                                            ; $65f4: $84
	ld c, e                                          ; $65f5: $4b
	inc de                                           ; $65f6: $13
	ldh a, [rAUD1LOW]                                ; $65f7: $f0 $13
	ldh a, [$63]                                     ; $65f9: $f0 $63
	ld b, h                                          ; $65fb: $44
	dec [hl]                                         ; $65fc: $35
	ldh a, [$eb]                                     ; $65fd: $f0 $eb
	db $ed                                           ; $65ff: $ed
	ld b, e                                          ; $6600: $43
	xor b                                            ; $6601: $a8
	ldh a, [rHDMA5]                                  ; $6602: $f0 $55
	ldh a, [rBCPS]                                   ; $6604: $f0 $68
	ld b, l                                          ; $6606: $45
	ld c, h                                          ; $6607: $4c
	ld e, [hl]                                       ; $6608: $5e
	and b                                            ; $6609: $a0
	xor $19                                          ; $660a: $ee $19
	ldh a, [$d0]                                     ; $660c: $f0 $d0
	pop af                                           ; $660e: $f1
	cp [hl]                                          ; $660f: $be
	ld b, h                                          ; $6610: $44
	ld b, l                                          ; $6611: $45
	ld c, h                                          ; $6612: $4c
	and b                                            ; $6613: $a0
	cpl                                              ; $6614: $2f
	ld b, e                                          ; $6615: $43
	ld c, b                                          ; $6616: $48
	inc h                                            ; $6617: $24
	ld c, b                                          ; $6618: $48
	inc h                                            ; $6619: $24
	ld b, b                                          ; $661a: $40
	add hl, sp                                       ; $661b: $39
	ld b, h                                          ; $661c: $44
	ld c, h                                          ; $661d: $4c
	xor b                                            ; $661e: $a8
	or h                                             ; $661f: $b4
	xor h                                            ; $6620: $ac
	db $ec                                           ; $6621: $ec
	push bc                                          ; $6622: $c5
	db $ec                                           ; $6623: $ec
	rrca                                             ; $6624: $0f
	and c                                            ; $6625: $a1
	ld b, [hl]                                       ; $6626: $46
	ld e, c                                          ; $6627: $59
	dec sp                                           ; $6628: $3b
	ld c, b                                          ; $6629: $48
	and b                                            ; $662a: $a0
	cpl                                              ; $662b: $2f
	ld b, e                                          ; $662c: $43
	db $eb                                           ; $662d: $eb
	rst FarCall                                          ; $662e: $f7
	xor c                                            ; $662f: $a9
	db $ec                                           ; $6630: $ec
	and $a0                                          ; $6631: $e6 $a0
	ld c, h                                          ; $6633: $4c
	add l                                            ; $6634: $85
	inc [hl]                                         ; $6635: $34
	ldh a, [$2d]                                     ; $6636: $f0 $2d
	dec sp                                           ; $6638: $3b
	ccf                                              ; $6639: $3f
	dec a                                            ; $663a: $3d
	ld b, c                                          ; $663b: $41
	ld c, d                                          ; $663c: $4a
	ld a, $66                                        ; $663d: $3e $66
	and c                                            ; $663f: $a1
	cpl                                              ; $6640: $2f
	ld b, e                                          ; $6641: $43
	ld l, e                                          ; $6642: $6b
	ld d, e                                          ; $6643: $53
	and c                                            ; $6644: $a1
	ld h, h                                          ; $6645: $64
	ldh a, [rAUD3HIGH]                               ; $6646: $f0 $1e
	ld c, c                                          ; $6648: $49
	ldh a, [rAUD3HIGH]                               ; $6649: $f0 $1e
	pop af                                           ; $664b: $f1
	halt                                             ; $664c: $76
	ldh a, [rAUD3HIGH]                               ; $664d: $f0 $1e
	ld e, l                                          ; $664f: $5d
	and b                                            ; $6650: $a0
	cpl                                              ; $6651: $2f
	ld b, e                                          ; $6652: $43
	ld l, e                                          ; $6653: $6b
	ld b, d                                          ; $6654: $42
	ld d, h                                          ; $6655: $54
	ld c, c                                          ; $6656: $49
	ld b, h                                          ; $6657: $44
	ld b, l                                          ; $6658: $45
	and b                                            ; $6659: $a0
	ld c, b                                          ; $665a: $48
	inc hl                                           ; $665b: $23
	ld c, b                                          ; $665c: $48
	inc hl                                           ; $665d: $23
	ldh a, [$f0]                                     ; $665e: $f0 $f0
	ld c, d                                          ; $6660: $4a
	sbc c                                            ; $6661: $99
	dec sp                                           ; $6662: $3b
	ccf                                              ; $6663: $3f
	ld c, [hl]                                       ; $6664: $4e
	inc a                                            ; $6665: $3c
	ld d, b                                          ; $6666: $50
	xor h                                            ; $6667: $ac
	ei                                               ; $6668: $fb
	ld a, b                                          ; $6669: $78
	pop af                                           ; $666a: $f1
	ld [hl], d                                       ; $666b: $72
	ld a, $3f                                        ; $666c: $3e $3f
	ld e, h                                          ; $666e: $5c
	ccf                                              ; $666f: $3f
	ld c, h                                          ; $6670: $4c
	and b                                            ; $6671: $a0
	ld c, h                                          ; $6672: $4c
	add l                                            ; $6673: $85
	inc [hl]                                         ; $6674: $34
	ldh a, [$31]                                     ; $6675: $f0 $31
	ld c, e                                          ; $6677: $4b
	ld d, h                                          ; $6678: $54
	ld c, l                                          ; $6679: $4d
	ld d, e                                          ; $667a: $53
	inc de                                           ; $667b: $13
	ldh a, [rAUD3LEVEL]                              ; $667c: $f0 $1c
	sub c                                            ; $667e: $91
	ccf                                              ; $667f: $3f
	ld b, h                                          ; $6680: $44
	dec sp                                           ; $6681: $3b
	dec a                                            ; $6682: $3d
	ld b, c                                          ; $6683: $41
	ld c, d                                          ; $6684: $4a
	ld a, $66                                        ; $6685: $3e $66
	and c                                            ; $6687: $a1
	ld d, d                                          ; $6688: $52
	inc [hl]                                         ; $6689: $34
	jr c, jr_094_66c4                                ; $668a: $38 $38

	inc a                                            ; $668c: $3c
	xor b                                            ; $668d: $a8
	ldh a, [$f0]                                     ; $668e: $f0 $f0
	ld c, d                                          ; $6690: $4a
	sbc c                                            ; $6691: $99
	dec sp                                           ; $6692: $3b
	ccf                                              ; $6693: $3f
	ld c, [hl]                                       ; $6694: $4e
	inc a                                            ; $6695: $3c
	ld d, b                                          ; $6696: $50
	ld c, h                                          ; $6697: $4c
	and b                                            ; $6698: $a0
	cpl                                              ; $6699: $2f
	ld b, e                                          ; $669a: $43
	ld h, h                                          ; $669b: $64
	ld [$3752], a                                    ; $669c: $ea $52 $37
	inc de                                           ; $669f: $13
	ld [hl-], a                                      ; $66a0: $32
	ld b, b                                          ; $66a1: $40
	add hl, sp                                       ; $66a2: $39
	jr c, jr_094_66de                                ; $66a3: $38 $39

	sbc d                                            ; $66a5: $9a
	inc a                                            ; $66a6: $3c
	ld c, b                                          ; $66a7: $48
	and e                                            ; $66a8: $a3
	jp hl                                            ; $66a9: $e9


	ld d, [hl]                                       ; $66aa: $56
	xor b                                            ; $66ab: $a8
	jp hl                                            ; $66ac: $e9


	ld d, a                                          ; $66ad: $57
	and b                                            ; $66ae: $a0
	cpl                                              ; $66af: $2f
	ld b, e                                          ; $66b0: $43
	ld e, b                                          ; $66b1: $58
	inc [hl]                                         ; $66b2: $34
	db $ec                                           ; $66b3: $ec
	and $53                                          ; $66b4: $e6 $53
	inc de                                           ; $66b6: $13
	sbc c                                            ; $66b7: $99
	dec sp                                           ; $66b8: $3b
	ccf                                              ; $66b9: $3f
	ld c, [hl]                                       ; $66ba: $4e
	ld a, $34                                        ; $66bb: $3e $34
	ld a, d                                          ; $66bd: $7a
	ld e, a                                          ; $66be: $5f
	add hl, sp                                       ; $66bf: $39
	and b                                            ; $66c0: $a0
	db $ec                                           ; $66c1: $ec
	jr z, jr_094_66d7                                ; $66c2: $28 $13

jr_094_66c4:
	ld l, e                                          ; $66c4: $6b
	ld b, d                                          ; $66c5: $42
	ldh a, [$c1]                                     ; $66c6: $f0 $c1
	ldh a, [$d5]                                     ; $66c8: $f0 $d5
	inc a                                            ; $66ca: $3c
	ld a, [hl-]                                      ; $66cb: $3a
	and c                                            ; $66cc: $a1
	cpl                                              ; $66cd: $2f
	ld b, e                                          ; $66ce: $43
	db $eb                                           ; $66cf: $eb
	adc b                                            ; $66d0: $88
	inc de                                           ; $66d1: $13
	ld l, h                                          ; $66d2: $6c
	dec a                                            ; $66d3: $3d
	jr c, jr_094_671a                                ; $66d4: $38 $44

	ld e, l                                          ; $66d6: $5d

jr_094_66d7:
	ld e, d                                          ; $66d7: $5a
	and b                                            ; $66d8: $a0
	ld l, h                                          ; $66d9: $6c
	ld c, [hl]                                       ; $66da: $4e
	ld b, d                                          ; $66db: $42
	and c                                            ; $66dc: $a1
	cpl                                              ; $66dd: $2f

jr_094_66de:
	ld b, e                                          ; $66de: $43
	sub c                                            ; $66df: $91
	ldh a, [$59]                                     ; $66e0: $f0 $59
	and b                                            ; $66e2: $a0
	ld a, $3c                                        ; $66e3: $3e $3c
	dec a                                            ; $66e5: $3d
	ld a, [hl-]                                      ; $66e6: $3a
	jr c, jr_094_6731                                ; $66e7: $38 $48

	and b                                            ; $66e9: $a0
	ld l, a                                          ; $66ea: $6f
	inc [hl]                                         ; $66eb: $34
	ldh a, [$3f]                                     ; $66ec: $f0 $3f
	dec sp                                           ; $66ee: $3b
	ccf                                              ; $66ef: $3f
	inc de                                           ; $66f0: $13
	ld b, l                                          ; $66f1: $45
	ld d, l                                          ; $66f2: $55
	ldh a, [rTAC]                                    ; $66f3: $f0 $07
	inc a                                            ; $66f5: $3c
	ld d, b                                          ; $66f6: $50
	ld a, [hl-]                                      ; $66f7: $3a
	jr c, @+$44                                      ; $66f8: $38 $42

	and b                                            ; $66fa: $a0
	cpl                                              ; $66fb: $2f
	ld b, e                                          ; $66fc: $43
	db $ed                                           ; $66fd: $ed
	ld c, c                                          ; $66fe: $49
	db $ec                                           ; $66ff: $ec
	ret c                                            ; $6700: $d8

	and b                                            ; $6701: $a0
	db $ec                                           ; $6702: $ec
	inc de                                           ; $6703: $13
	ld b, d                                          ; $6704: $42
	ld c, e                                          ; $6705: $4b
	ldh a, [rTAC]                                    ; $6706: $f0 $07
	inc a                                            ; $6708: $3c
	ld c, [hl]                                       ; $6709: $4e
	ld e, l                                          ; $670a: $5d
	ld e, d                                          ; $670b: $5a
	xor e                                            ; $670c: $ab
	ld b, b                                          ; $670d: $40
	ld c, l                                          ; $670e: $4d
	ld b, h                                          ; $670f: $44
	ld e, l                                          ; $6710: $5d
	ld a, $3c                                        ; $6711: $3e $3c
	ldh a, [rTAC]                                    ; $6713: $f0 $07

jr_094_6715:
	inc a                                            ; $6715: $3c
	ld d, b                                          ; $6716: $50
	ld a, [hl-]                                      ; $6717: $3a
	jr c, jr_094_675c                                ; $6718: $38 $42

jr_094_671a:
	ld b, l                                          ; $671a: $45
	ld c, h                                          ; $671b: $4c
	and b                                            ; $671c: $a0
	cpl                                              ; $671d: $2f
	ld b, e                                          ; $671e: $43
	ld b, b                                          ; $671f: $40
	ld c, l                                          ; $6720: $4d
	ld c, d                                          ; $6721: $4a
	db $ed                                           ; $6722: $ed
	ld [hl], e                                       ; $6723: $73
	db $ec                                           ; $6724: $ec
	ret c                                            ; $6725: $d8

	ld b, d                                          ; $6726: $42
	xor b                                            ; $6727: $a8
	or h                                             ; $6728: $b4
	xor h                                            ; $6729: $ac
	db $ec                                           ; $672a: $ec
	push bc                                          ; $672b: $c5
	db $ec                                           ; $672c: $ec
	rrca                                             ; $672d: $0f
	and c                                            ; $672e: $a1
	ld c, b                                          ; $672f: $48
	inc hl                                           ; $6730: $23

jr_094_6731:
	call c, $f0a0                                    ; $6731: $dc $a0 $f0
	ccf                                              ; $6734: $3f
	ld b, l                                          ; $6735: $45
	ld d, a                                          ; $6736: $57
	inc [hl]                                         ; $6737: $34
	xor $15                                          ; $6738: $ee $15
	ld b, d                                          ; $673a: $42
	ldh a, [$38]                                     ; $673b: $f0 $38
	ld d, e                                          ; $673d: $53
	inc de                                           ; $673e: $13
	ldh a, [rAUD4ENV]                                ; $673f: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6741: $f0 $23
	jr c, jr_094_678e                                ; $6743: $38 $49

	ld [hl], a                                       ; $6745: $77
	add hl, sp                                       ; $6746: $39
	ld e, l                                          ; $6747: $5d
	ld e, d                                          ; $6748: $5a
	ld c, h                                          ; $6749: $4c
	and b                                            ; $674a: $a0
	cpl                                              ; $674b: $2f
	ld b, e                                          ; $674c: $43
	ldh a, [$3f]                                     ; $674d: $f0 $3f
	ld b, a                                          ; $674f: $47
	ld c, e                                          ; $6750: $4b
	ldh a, [$3f]                                     ; $6751: $f0 $3f
	ld b, d                                          ; $6753: $42
	ld a, [hl]                                       ; $6754: $7e
	ld e, b                                          ; $6755: $58
	ld d, e                                          ; $6756: $53
	inc de                                           ; $6757: $13
	ld b, [hl]                                       ; $6758: $46
	ld c, [hl]                                       ; $6759: $4e
	ld b, c                                          ; $675a: $41
	ld b, h                                          ; $675b: $44

jr_094_675c:
	ld b, l                                          ; $675c: $45
	and b                                            ; $675d: $a0
	ld b, b                                          ; $675e: $40
	ld c, l                                          ; $675f: $4d
	ld d, e                                          ; $6760: $53
	db $ed                                           ; $6761: $ed
	rst JumpTable                                          ; $6762: $c7
	ld c, c                                          ; $6763: $49
	inc de                                           ; $6764: $13
	ld a, b                                          ; $6765: $78
	ld a, [hl-]                                      ; $6766: $3a
	jr c, jr_094_67ab                                ; $6767: $38 $42

	ld b, l                                          ; $6769: $45
	ld c, h                                          ; $676a: $4c
	xor b                                            ; $676b: $a8
	inc hl                                           ; $676c: $23
	db $ec                                           ; $676d: $ec
	push bc                                          ; $676e: $c5
	ld a, d                                          ; $676f: $7a
	ld d, b                                          ; $6770: $50

jr_094_6771:
	ld a, [hl-]                                      ; $6771: $3a
	jr c, jr_094_6715                                ; $6772: $38 $a1

	db $ec                                           ; $6774: $ec
	db $10                                           ; $6775: $10
	inc [hl]                                         ; $6776: $34
	db $eb                                           ; $6777: $eb
	ld e, e                                          ; $6778: $5b
	ld d, e                                          ; $6779: $53
	inc de                                           ; $677a: $13
	ldh a, [$bb]                                     ; $677b: $f0 $bb
	ld d, d                                          ; $677d: $52
	ld c, [hl]                                       ; $677e: $4e
	db $ec                                           ; $677f: $ec
	ld [de], a                                       ; $6780: $12
	and b                                            ; $6781: $a0
	ld c, h                                          ; $6782: $4c
	add l                                            ; $6783: $85
	inc [hl]                                         ; $6784: $34
	ld l, d                                          ; $6785: $6a
	ld b, d                                          ; $6786: $42
	ldh a, [$ed]                                     ; $6787: $f0 $ed
	ld l, e                                          ; $6789: $6b
	and c                                            ; $678a: $a1
	cpl                                              ; $678b: $2f
	ld b, e                                          ; $678c: $43
	ld b, e                                          ; $678d: $43

jr_094_678e:
	ld c, c                                          ; $678e: $49
	ld e, h                                          ; $678f: $5c
	ld [hl], c                                       ; $6790: $71
	ld e, h                                          ; $6791: $5c
	ldh a, [$eb]                                     ; $6792: $f0 $eb
	ld c, d                                          ; $6794: $4a
	ld a, $66                                        ; $6795: $3e $66
	add hl, sp                                       ; $6797: $39
	xor c                                            ; $6798: $a9
	ld [$a05f], a                                    ; $6799: $ea $5f $a0
	db $eb                                           ; $679c: $eb
	sbc e                                            ; $679d: $9b
	ld a, [hl-]                                      ; $679e: $3a
	ld b, d                                          ; $679f: $42
	xor c                                            ; $67a0: $a9
	ld b, l                                          ; $67a1: $45
	ld d, l                                          ; $67a2: $55
	ldh a, [$2d]                                     ; $67a3: $f0 $2d
	dec sp                                           ; $67a5: $3b
	ccf                                              ; $67a6: $3f
	ld c, [hl]                                       ; $67a7: $4e
	ld c, h                                          ; $67a8: $4c
	and b                                            ; $67a9: $a0
	cpl                                              ; $67aa: $2f

jr_094_67ab:
	ld b, e                                          ; $67ab: $43
	db $ed                                           ; $67ac: $ed
	ld b, e                                          ; $67ad: $43
	halt                                             ; $67ae: $76
	xor h                                            ; $67af: $ac
	ldh a, [$6d]                                     ; $67b0: $f0 $6d
	ld e, c                                          ; $67b2: $59
	ldh a, [$27]                                     ; $67b3: $f0 $27
	adc e                                            ; $67b5: $8b
	ld e, h                                          ; $67b6: $5c
	ld b, h                                          ; $67b7: $44
	ld c, a                                          ; $67b8: $4f
	ld b, c                                          ; $67b9: $41
	and b                                            ; $67ba: $a0
	ld b, b                                          ; $67bb: $40
	add hl, sp                                       ; $67bc: $39
	xor c                                            ; $67bd: $a9
	ldh a, [$6d]                                     ; $67be: $f0 $6d
	ld e, c                                          ; $67c0: $59
	ldh a, [$27]                                     ; $67c1: $f0 $27
	dec sp                                           ; $67c3: $3b
	ccf                                              ; $67c4: $3f
	inc [hl]                                         ; $67c5: $34
	ld b, b                                          ; $67c6: $40
	ld b, c                                          ; $67c7: $41
	ld a, [hl-]                                      ; $67c8: $3a
	ld b, a                                          ; $67c9: $47
	ldh a, [rAUD4ENV]                                ; $67ca: $f0 $21
	ldh a, [rAUD4GO]                                 ; $67cc: $f0 $23
	jr c, jr_094_6771                                ; $67ce: $38 $a1

	cpl                                              ; $67d0: $2f
	ld b, e                                          ; $67d1: $43
	ldh a, [rAUD4ENV]                                ; $67d2: $f0 $21
	ldh a, [rAUD4GO]                                 ; $67d4: $f0 $23
	jr c, jr_094_681d                                ; $67d6: $38 $45

	xor b                                            ; $67d8: $a8
	ld l, d                                          ; $67d9: $6a
	ldh a, [$0d]                                     ; $67da: $f0 $0d
	xor $06                                          ; $67dc: $ee $06
	ld b, a                                          ; $67de: $47
	ld l, [hl]                                       ; $67df: $6e
	ld e, a                                          ; $67e0: $5f
	add hl, sp                                       ; $67e1: $39
	ld b, l                                          ; $67e2: $45
	and b                                            ; $67e3: $a0
	ldh a, [$a4]                                     ; $67e4: $f0 $a4
	ld e, [hl]                                       ; $67e6: $5e
	ccf                                              ; $67e7: $3f
	ld h, h                                          ; $67e8: $64
	ld d, l                                          ; $67e9: $55
	ld h, e                                          ; $67ea: $63
	and b                                            ; $67eb: $a0
	cpl                                              ; $67ec: $2f
	ld b, e                                          ; $67ed: $43
	or h                                             ; $67ee: $b4
	xor h                                            ; $67ef: $ac
	db $ec                                           ; $67f0: $ec
	push bc                                          ; $67f1: $c5
	ld a, d                                          ; $67f2: $7a
	ld e, a                                          ; $67f3: $5f
	add hl, sp                                       ; $67f4: $39
	and b                                            ; $67f5: $a0
	ret nz                                           ; $67f6: $c0

	and b                                            ; $67f7: $a0
	cpl                                              ; $67f8: $2f
	ld b, e                                          ; $67f9: $43
	or h                                             ; $67fa: $b4
	xor h                                            ; $67fb: $ac
	db $ec                                           ; $67fc: $ec
	push bc                                          ; $67fd: $c5
	ld a, d                                          ; $67fe: $7a
	ld e, a                                          ; $67ff: $5f
	add hl, sp                                       ; $6800: $39
	ld b, l                                          ; $6801: $45
	and b                                            ; $6802: $a0
	ld e, b                                          ; $6803: $58
	dec sp                                           ; $6804: $3b
	ld e, h                                          ; $6805: $5c
	ld b, d                                          ; $6806: $42
	xor $2b                                          ; $6807: $ee $2b
	xor h                                            ; $6809: $ac
	pop de                                           ; $680a: $d1
	db $ec                                           ; $680b: $ec
	cp c                                             ; $680c: $b9
	ld c, h                                          ; $680d: $4c
	and b                                            ; $680e: $a0
	cpl                                              ; $680f: $2f
	ld b, e                                          ; $6810: $43
	xor $1f                                          ; $6811: $ee $1f
	xor b                                            ; $6813: $a8
	ld [$4437], a                                    ; $6814: $ea $37 $44
	dec sp                                           ; $6817: $3b
	dec a                                            ; $6818: $3d
	ld c, h                                          ; $6819: $4c
	and b                                            ; $681a: $a0
	ld l, a                                          ; $681b: $6f
	ld c, d                                          ; $681c: $4a

jr_094_681d:
	ld c, a                                          ; $681d: $4f
	inc de                                           ; $681e: $13
	db $ed                                           ; $681f: $ed
	ld h, l                                          ; $6820: $65
	ld a, $3d                                        ; $6821: $3e $3d
	sbc l                                            ; $6823: $9d
	ld d, b                                          ; $6824: $50
	jr c, jr_094_686b                                ; $6825: $38 $44

	inc a                                            ; $6827: $3c
	ld d, b                                          ; $6828: $50
	ld c, h                                          ; $6829: $4c
	and b                                            ; $682a: $a0
	ld b, l                                          ; $682b: $45
	ld d, l                                          ; $682c: $55
	pop af                                           ; $682d: $f1
	dec sp                                           ; $682e: $3b
	ld d, b                                          ; $682f: $50
	ld a, [hl-]                                      ; $6830: $3a
	inc a                                            ; $6831: $3c
	dec sp                                           ; $6832: $3b
	dec a                                            ; $6833: $3d
	ld e, l                                          ; $6834: $5d
	ld e, d                                          ; $6835: $5a
	xor h                                            ; $6836: $ac
	db $ec                                           ; $6837: $ec
	cp c                                             ; $6838: $b9
	ld c, c                                          ; $6839: $49
	ld [hl], a                                       ; $683a: $77
	add hl, sp                                       ; $683b: $39
	ld h, e                                          ; $683c: $63
	and b                                            ; $683d: $a0
	cpl                                              ; $683e: $2f
	ld b, e                                          ; $683f: $43
	adc b                                            ; $6840: $88
	sub c                                            ; $6841: $91
	inc [hl]                                         ; $6842: $34
	db $ec                                           ; $6843: $ec
	cp c                                             ; $6844: $b9
	ld c, h                                          ; $6845: $4c
	xor b                                            ; $6846: $a8
	db $ed                                           ; $6847: $ed
	ld h, l                                          ; $6848: $65
	ld a, $3d                                        ; $6849: $3e $3d
	ld b, l                                          ; $684b: $45
	and b                                            ; $684c: $a0
	db $eb                                           ; $684d: $eb
	ld h, l                                          ; $684e: $65
	ld d, e                                          ; $684f: $53
	inc de                                           ; $6850: $13
	ldh a, [$63]                                     ; $6851: $f0 $63
	pop af                                           ; $6853: $f1
	dec sp                                           ; $6854: $3b
	ld c, d                                          ; $6855: $4a
	ld e, h                                          ; $6856: $5c
	ld c, [hl]                                       ; $6857: $4e
	ld b, d                                          ; $6858: $42
	ld [hl], $ed                                     ; $6859: $36 $ed
	adc d                                            ; $685b: $8a
	ld d, c                                          ; $685c: $51
	ld c, [hl]                                       ; $685d: $4e
	ld h, e                                          ; $685e: $63
	and b                                            ; $685f: $a0
	cpl                                              ; $6860: $2f
	ld b, e                                          ; $6861: $43
	halt                                             ; $6862: $76
	ld c, e                                          ; $6863: $4b
	inc de                                           ; $6864: $13
	ld a, [hl]                                       ; $6865: $7e
	ld d, l                                          ; $6866: $55
	ld h, e                                          ; $6867: $63
	inc a                                            ; $6868: $3c
	ld d, b                                          ; $6869: $50
	ld a, [hl-]                                      ; $686a: $3a

jr_094_686b:
	inc a                                            ; $686b: $3c
	dec sp                                           ; $686c: $3b
	dec a                                            ; $686d: $3d
	ld b, l                                          ; $686e: $45
	and b                                            ; $686f: $a0
	ld e, [hl]                                       ; $6870: $5e
	dec sp                                           ; $6871: $3b
	xor h                                            ; $6872: $ac
	ldh a, [$31]                                     ; $6873: $f0 $31
	ld c, e                                          ; $6875: $4b
	inc [hl]                                         ; $6876: $34
	ld l, a                                          ; $6877: $6f
	ld c, a                                          ; $6878: $4f
	db $d3                                           ; $6879: $d3
	ld c, b                                          ; $687a: $48
	and b                                            ; $687b: $a0
	cpl                                              ; $687c: $2f
	ld b, e                                          ; $687d: $43
	ld l, e                                          ; $687e: $6b
	ld b, h                                          ; $687f: $44
	inc [hl]                                         ; $6880: $34
	ret nz                                           ; $6881: $c0

jr_094_6882:
	xor b                                            ; $6882: $a8
	or h                                             ; $6883: $b4
	xor h                                            ; $6884: $ac
	db $ec                                           ; $6885: $ec
	push bc                                          ; $6886: $c5
	ld a, d                                          ; $6887: $7a
	ld e, a                                          ; $6888: $5f
	add hl, sp                                       ; $6889: $39
	ld b, l                                          ; $688a: $45
	and b                                            ; $688b: $a0
	ldh a, [rAUD4ENV]                                ; $688c: $f0 $21
	ldh a, [rAUD4GO]                                 ; $688e: $f0 $23
	jr c, jr_094_6882                                ; $6890: $38 $f0

	db $ed                                           ; $6892: $ed
	ld c, h                                          ; $6893: $4c
	xor b                                            ; $6894: $a8
	ld h, h                                          ; $6895: $64
	inc a                                            ; $6896: $3c
	ld a, $3c                                        ; $6897: $3e $3c
	dec sp                                           ; $6899: $3b
	dec a                                            ; $689a: $3d
	and b                                            ; $689b: $a0
	cpl                                              ; $689c: $2f
	ld b, e                                          ; $689d: $43
	adc b                                            ; $689e: $88
	sub c                                            ; $689f: $91
	inc [hl]                                         ; $68a0: $34
	ldh a, [$5d]                                     ; $68a1: $f0 $5d
	ld a, [hl-]                                      ; $68a3: $3a
	ldh a, [$ed]                                     ; $68a4: $f0 $ed
	inc de                                           ; $68a6: $13
	ld b, h                                          ; $68a7: $44
	dec sp                                           ; $68a8: $3b
	dec a                                            ; $68a9: $3d
	ld c, h                                          ; $68aa: $4c
	xor b                                            ; $68ab: $a8
	ld c, d                                          ; $68ac: $4a
	ld c, a                                          ; $68ad: $4f
	inc [hl]                                         ; $68ae: $34
	ld d, h                                          ; $68af: $54
	add hl, sp                                       ; $68b0: $39
	jr c, jr_094_68ec                                ; $68b1: $38 $39

	ldh a, [$ed]                                     ; $68b3: $f0 $ed
	ld c, a                                          ; $68b5: $4f
	inc de                                           ; $68b6: $13
	jr c, jr_094_68f1                                ; $68b7: $38 $38

	ld b, c                                          ; $68b9: $41
	db $ec                                           ; $68ba: $ec
	ret c                                            ; $68bb: $d8

	and c                                            ; $68bc: $a1
	db $ed                                           ; $68bd: $ed
	ld h, a                                          ; $68be: $67
	ldh a, [rSTAT]                                   ; $68bf: $f0 $41
	ld b, a                                          ; $68c1: $47
	add hl, sp                                       ; $68c2: $39
	ld e, l                                          ; $68c3: $5d
	ccf                                              ; $68c4: $3f
	ldh [$a0], a                                     ; $68c5: $e0 $a0
	xor $1f                                          ; $68c7: $ee $1f
	xor h                                            ; $68c9: $ac
	or b                                             ; $68ca: $b0
	and b                                            ; $68cb: $a0
	ldh a, [$5d]                                     ; $68cc: $f0 $5d
	ld a, [hl-]                                      ; $68ce: $3a
	ldh a, [$ed]                                     ; $68cf: $f0 $ed
	ld b, h                                          ; $68d1: $44
	dec sp                                           ; $68d2: $3b
	dec a                                            ; $68d3: $3d
	ld c, h                                          ; $68d4: $4c
	xor b                                            ; $68d5: $a8
	ld [hl], a                                       ; $68d6: $77
	ld h, e                                          ; $68d7: $63
	sbc h                                            ; $68d8: $9c
	ldh a, [c]                                       ; $68d9: $f2
	ld bc, $613b                                     ; $68da: $01 $3b $61
	ld d, [hl]                                       ; $68dd: $56
	dec sp                                           ; $68de: $3b
	dec a                                            ; $68df: $3d
	and b                                            ; $68e0: $a0
	cpl                                              ; $68e1: $2f
	ld b, e                                          ; $68e2: $43
	halt                                             ; $68e3: $76
	inc [hl]                                         ; $68e4: $34
	ld d, h                                          ; $68e5: $54
	add hl, sp                                       ; $68e6: $39
	jr c, jr_094_6922                                ; $68e7: $38 $39

	ldh a, [$ed]                                     ; $68e9: $f0 $ed
	inc de                                           ; $68eb: $13

jr_094_68ec:
	adc e                                            ; $68ec: $8b
	ld e, h                                          ; $68ed: $5c
	ld b, h                                          ; $68ee: $44
	ld a, [hl-]                                      ; $68ef: $3a
	ld [hl], h                                       ; $68f0: $74

jr_094_68f1:
	and b                                            ; $68f1: $a0
	ld l, a                                          ; $68f2: $6f
	ld c, a                                          ; $68f3: $4f
	jr c, jr_094_692e                                ; $68f4: $38 $38

	ld c, c                                          ; $68f6: $49
	ld [hl], a                                       ; $68f7: $77
	add hl, sp                                       ; $68f8: $39
	ld b, l                                          ; $68f9: $45
	and b                                            ; $68fa: $a0
	ldh a, [$aa]                                     ; $68fb: $f0 $aa
	adc c                                            ; $68fd: $89
	adc a                                            ; $68fe: $8f
	ld c, e                                          ; $68ff: $4b
	inc [hl]                                         ; $6900: $34
	ld l, e                                          ; $6901: $6b
	inc a                                            ; $6902: $3c
	inc de                                           ; $6903: $13
	ldh a, [$c6]                                     ; $6904: $f0 $c6
	ldh a, [c]                                       ; $6906: $f2
	xor d                                            ; $6907: $aa
	ld b, d                                          ; $6908: $42
	ldh a, [$c1]                                     ; $6909: $f0 $c1
	ldh a, [$d5]                                     ; $690b: $f0 $d5
	ld l, h                                          ; $690d: $6c
	dec a                                            ; $690e: $3d
	jr c, jr_094_6956                                ; $690f: $38 $45

	and b                                            ; $6911: $a0
	cpl                                              ; $6912: $2f
	ld b, e                                          ; $6913: $43
	ld l, e                                          ; $6914: $6b
	ldh a, [$cf]                                     ; $6915: $f0 $cf
	xor h                                            ; $6917: $ac
	ld b, e                                          ; $6918: $43
	ldh a, [$6d]                                     ; $6919: $f0 $6d
	ld e, c                                          ; $691b: $59
	ldh a, [$27]                                     ; $691c: $f0 $27
	ld h, d                                          ; $691e: $62
	add c                                            ; $691f: $81
	ld [hl], l                                       ; $6920: $75
	ld a, l                                          ; $6921: $7d

jr_094_6922:
	ld a, $3f                                        ; $6922: $3e $3f
	inc [hl]                                         ; $6924: $34
	ld b, [hl]                                       ; $6925: $46
	ld a, [hl-]                                      ; $6926: $3a
	dec a                                            ; $6927: $3d
	ld b, d                                          ; $6928: $42
	inc de                                           ; $6929: $13
	ld [$6218], a                                    ; $692a: $ea $18 $62
	inc de                                           ; $692d: $13

jr_094_692e:
	pop af                                           ; $692e: $f1
	rst JumpTable                                          ; $692f: $c7
	ldh a, [hDisp0_WY]                                     ; $6930: $f0 $88
	ld a, $52                                        ; $6932: $3e $52
	ld d, c                                          ; $6934: $51
	ldh a, [$eb]                                     ; $6935: $f0 $eb
	db $ed                                           ; $6937: $ed
	ld b, e                                          ; $6938: $43
	and b                                            ; $6939: $a0
	ldh a, [$99]                                     ; $693a: $f0 $99
	sub b                                            ; $693c: $90
	ldh a, [$7b]                                     ; $693d: $f0 $7b
	ld h, l                                          ; $693f: $65
	add e                                            ; $6940: $83
	xor c                                            ; $6941: $a9
	ld b, b                                          ; $6942: $40
	ld b, c                                          ; $6943: $41
	ld a, [hl-]                                      ; $6944: $3a
	ld b, d                                          ; $6945: $42
	ld e, d                                          ; $6946: $5a
	add hl, sp                                       ; $6947: $39
	ld l, [hl]                                       ; $6948: $6e
	dec sp                                           ; $6949: $3b
	ccf                                              ; $694a: $3f
	inc de                                           ; $694b: $13
	pop af                                           ; $694c: $f1
	rst JumpTable                                          ; $694d: $c7
	ldh a, [hDisp0_WY]                                     ; $694e: $f0 $88
	ld d, c                                          ; $6950: $51
	ld c, [hl]                                       ; $6951: $4e
	ld b, d                                          ; $6952: $42
	and c                                            ; $6953: $a1
	cpl                                              ; $6954: $2f
	ld b, e                                          ; $6955: $43

jr_094_6956:
	ld l, e                                          ; $6956: $6b
	ld c, e                                          ; $6957: $4b
	ld c, c                                          ; $6958: $49
	ld c, a                                          ; $6959: $4f
	ld b, [hl]                                       ; $695a: $46
	ld c, l                                          ; $695b: $4d
	xor h                                            ; $695c: $ac
	ld l, [hl]                                       ; $695d: $6e
	dec sp                                           ; $695e: $3b
	ccf                                              ; $695f: $3f
	ld l, h                                          ; $6960: $6c
	ld b, l                                          ; $6961: $45
	add hl, sp                                       ; $6962: $39
	and b                                            ; $6963: $a0
	ld [$ac6f], a                                    ; $6964: $ea $6f $ac

jr_094_6967:
	ldh a, [$6d]                                     ; $6967: $f0 $6d
	ld e, c                                          ; $6969: $59
	ldh a, [$27]                                     ; $696a: $f0 $27
	ld c, e                                          ; $696c: $4b
	db $ed                                           ; $696d: $ed
	ld l, b                                          ; $696e: $68
	ld b, h                                          ; $696f: $44
	inc a                                            ; $6970: $3c
	ld d, b                                          ; $6971: $50
	ld c, b                                          ; $6972: $48
	and b                                            ; $6973: $a0
	cpl                                              ; $6974: $2f
	ld b, e                                          ; $6975: $43
	halt                                             ; $6976: $76
	ld d, e                                          ; $6977: $53
	ld l, [hl]                                       ; $6978: $6e
	dec sp                                           ; $6979: $3b
	ccf                                              ; $697a: $3f
	ld l, h                                          ; $697b: $6c
	ld c, [hl]                                       ; $697c: $4e
	ld b, l                                          ; $697d: $45
	xor b                                            ; $697e: $a8
	ld [hl], d                                       ; $697f: $72
	ccf                                              ; $6980: $3f
	ccf                                              ; $6981: $3f
	ld c, h                                          ; $6982: $4c
	and b                                            ; $6983: $a0
	cpl                                              ; $6984: $2f
	ld b, e                                          ; $6985: $43
	or h                                             ; $6986: $b4
	xor h                                            ; $6987: $ac
	db $ec                                           ; $6988: $ec
	push bc                                          ; $6989: $c5
	db $ec                                           ; $698a: $ec
	rrca                                             ; $698b: $0f
	and b                                            ; $698c: $a0
	ldh a, [$6d]                                     ; $698d: $f0 $6d
	ld e, c                                          ; $698f: $59
	ldh a, [$27]                                     ; $6990: $f0 $27
	ld c, e                                          ; $6992: $4b
	db $ed                                           ; $6993: $ed
	ld l, b                                          ; $6994: $68
	ld b, h                                          ; $6995: $44
	inc a                                            ; $6996: $3c
	ld d, b                                          ; $6997: $50
	xor l                                            ; $6998: $ad
	ld d, $34                                        ; $6999: $16 $34
	ld l, [hl]                                       ; $699b: $6e
	dec sp                                           ; $699c: $3b
	ccf                                              ; $699d: $3f
	ld l, h                                          ; $699e: $6c
	ccf                                              ; $699f: $3f
	and b                                            ; $69a0: $a0
	cpl                                              ; $69a1: $2f
	ld b, e                                          ; $69a2: $43
	ld b, l                                          ; $69a3: $45
	ld a, $5c                                        ; $69a4: $3e $5c
	dec a                                            ; $69a6: $3d
	and b                                            ; $69a7: $a0
	ldh a, [$aa]                                     ; $69a8: $f0 $aa
	adc c                                            ; $69aa: $89
	adc a                                            ; $69ab: $8f
	ld c, e                                          ; $69ac: $4b
	xor $2a                                          ; $69ad: $ee $2a
	db $ec                                           ; $69af: $ec
	ldh a, [c]                                       ; $69b0: $f2
	ld h, d                                          ; $69b1: $62
	inc de                                           ; $69b2: $13
	ld [$4c31], a                                    ; $69b3: $ea $31 $4c
	and b                                            ; $69b6: $a0
	cpl                                              ; $69b7: $2f
	ld b, e                                          ; $69b8: $43
	db $ec                                           ; $69b9: $ec
	db $10                                           ; $69ba: $10
	inc de                                           ; $69bb: $13
	ldh a, [$bb]                                     ; $69bc: $f0 $bb
	ld d, d                                          ; $69be: $52
	ld c, [hl]                                       ; $69bf: $4e
	ld c, c                                          ; $69c0: $49
	ld d, h                                          ; $69c1: $54
	ld e, a                                          ; $69c2: $5f
	ld l, h                                          ; $69c3: $6c
	dec a                                            ; $69c4: $3d
	jr c, jr_094_6967                                ; $69c5: $38 $a0

	ldh a, [$57]                                     ; $69c7: $f0 $57
	ldh a, [$ae]                                     ; $69c9: $f0 $ae
	ld b, h                                          ; $69cb: $44
	dec sp                                           ; $69cc: $3b
	dec a                                            ; $69cd: $3d
	ld c, h                                          ; $69ce: $4c
	ld c, b                                          ; $69cf: $48
	and b                                            ; $69d0: $a0
	cpl                                              ; $69d1: $2f
	ld b, e                                          ; $69d2: $43
	db $ed                                           ; $69d3: $ed
	ld c, c                                          ; $69d4: $49
	ld b, h                                          ; $69d5: $44
	dec sp                                           ; $69d6: $3b
	dec a                                            ; $69d7: $3d
	ld c, h                                          ; $69d8: $4c
	and b                                            ; $69d9: $a0
	ldh a, [hDisp0_SCX]                                     ; $69da: $f0 $84
	add h                                            ; $69dc: $84
	ld c, d                                          ; $69dd: $4a
	ld [hl], d                                       ; $69de: $72
	ld c, l                                          ; $69df: $4d
	ccf                                              ; $69e0: $3f
	inc de                                           ; $69e1: $13
	db $ec                                           ; $69e2: $ec
	cp c                                             ; $69e3: $b9
	ld c, b                                          ; $69e4: $48
	and b                                            ; $69e5: $a0
	cpl                                              ; $69e6: $2f
	ld b, e                                          ; $69e7: $43
	ld e, [hl]                                       ; $69e8: $5e
	ld [hl], $6b                                     ; $69e9: $36 $6b
	inc a                                            ; $69eb: $3c
	add d                                            ; $69ec: $82
	dec sp                                           ; $69ed: $3b
	dec a                                            ; $69ee: $3d
	and c                                            ; $69ef: $a1
	add hl, sp                                       ; $69f0: $39
	xor $1f                                          ; $69f1: $ee $1f
	xor b                                            ; $69f3: $a8
	ld a, a                                          ; $69f4: $7f
	ld b, d                                          ; $69f5: $42
	ld a, c                                          ; $69f6: $79
	jr c, jr_094_6a3e                                ; $69f7: $38 $45

	and b                                            ; $69f9: $a0
	xor $1f                                          ; $69fa: $ee $1f
	ld c, b                                          ; $69fc: $48
	and b                                            ; $69fd: $a0
	db $ed                                           ; $69fe: $ed
	ld c, c                                          ; $69ff: $49
	ld b, h                                          ; $6a00: $44
	dec sp                                           ; $6a01: $3b
	dec a                                            ; $6a02: $3d
	ld c, h                                          ; $6a03: $4c
	and b                                            ; $6a04: $a0
	cpl                                              ; $6a05: $2f
	ld b, e                                          ; $6a06: $43
	sbc $ed                                          ; $6a07: $de $ed
	ld c, c                                          ; $6a09: $49
	ld b, h                                          ; $6a0a: $44
	dec sp                                           ; $6a0b: $3b
	dec a                                            ; $6a0c: $3d
	ld c, h                                          ; $6a0d: $4c
	and b                                            ; $6a0e: $a0
	ld c, a                                          ; $6a0f: $4f
	add hl, sp                                       ; $6a10: $39
	ldh a, [rHDMA4]                                  ; $6a11: $f0 $54
	ld a, $13                                        ; $6a13: $3e $13
	ld [hl], d                                       ; $6a15: $72
	ccf                                              ; $6a16: $3f
	jr c, jr_094_6a56                                ; $6a17: $38 $3d

	inc a                                            ; $6a19: $3c
	dec sp                                           ; $6a1a: $3b
	dec a                                            ; $6a1b: $3d
	ld c, h                                          ; $6a1c: $4c
	and b                                            ; $6a1d: $a0
	cpl                                              ; $6a1e: $2f
	ld b, e                                          ; $6a1f: $43
	ld b, b                                          ; $6a20: $40
	add hl, sp                                       ; $6a21: $39
	ld b, h                                          ; $6a22: $44
	ld c, h                                          ; $6a23: $4c
	xor b                                            ; $6a24: $a8
	ld c, d                                          ; $6a25: $4a
	ld c, a                                          ; $6a26: $4f
	ldh a, [$ce]                                     ; $6a27: $f0 $ce
	ld h, e                                          ; $6a29: $63
	ld d, a                                          ; $6a2a: $57
	db $eb                                           ; $6a2b: $eb
	dec [hl]                                         ; $6a2c: $35
	inc de                                           ; $6a2d: $13
	db $ec                                           ; $6a2e: $ec
	rrca                                             ; $6a2f: $0f
	and c                                            ; $6a30: $a1
	ld b, b                                          ; $6a31: $40
	add hl, sp                                       ; $6a32: $39
	ld b, h                                          ; $6a33: $44
	ld c, h                                          ; $6a34: $4c
	and b                                            ; $6a35: $a0
	cpl                                              ; $6a36: $2f
	ld b, e                                          ; $6a37: $43
	db $ec                                           ; $6a38: $ec
	db $10                                           ; $6a39: $10
	inc de                                           ; $6a3a: $13
	jp hl                                            ; $6a3b: $e9


	ld hl, sp-$60                                    ; $6a3c: $f8 $a0

jr_094_6a3e:
	ld d, c                                          ; $6a3e: $51
	inc [hl]                                         ; $6a3f: $34
	ld d, c                                          ; $6a40: $51
	ld [hl], b                                       ; $6a41: $70
	jr c, jr_094_6a8c                                ; $6a42: $38 $48

	and b                                            ; $6a44: $a0
	cpl                                              ; $6a45: $2f
	ld b, e                                          ; $6a46: $43
	ld e, d                                          ; $6a47: $5a
	add hl, sp                                       ; $6a48: $39
	jr c, jr_094_6a84                                ; $6a49: $38 $39

	ldh a, [c]                                       ; $6a4b: $f2
	sbc c                                            ; $6a4c: $99
	ldh a, [c]                                       ; $6a4d: $f2
	push af                                          ; $6a4e: $f5
	ld e, l                                          ; $6a4f: $5d
	inc de                                           ; $6a50: $13
	ld a, [hl-]                                      ; $6a51: $3a
	ld b, c                                          ; $6a52: $41
	ld b, h                                          ; $6a53: $44
	ld c, b                                          ; $6a54: $48
	and c                                            ; $6a55: $a1

jr_094_6a56:
	ldh a, [$71]                                     ; $6a56: $f0 $71
	ld c, [hl]                                       ; $6a58: $4e
	ldh a, [$8c]                                     ; $6a59: $f0 $8c
	ld e, h                                          ; $6a5b: $5c
	xor h                                            ; $6a5c: $ac
	ldh a, [$aa]                                     ; $6a5d: $f0 $aa
	adc c                                            ; $6a5f: $89
	adc a                                            ; $6a60: $8f
	ld c, b                                          ; $6a61: $48
	ld b, h                                          ; $6a62: $44
	ld c, h                                          ; $6a63: $4c
	and b                                            ; $6a64: $a0
	cpl                                              ; $6a65: $2f
	ld b, e                                          ; $6a66: $43
	adc b                                            ; $6a67: $88
	sub c                                            ; $6a68: $91
	xor h                                            ; $6a69: $ac
	ldh a, [$98]                                     ; $6a6a: $f0 $98
	ld d, e                                          ; $6a6c: $53
	ldh a, [$a5]                                     ; $6a6d: $f0 $a5
	dec sp                                           ; $6a6f: $3b
	dec a                                            ; $6a70: $3d
	ld b, c                                          ; $6a71: $41
	ld b, h                                          ; $6a72: $44
	ld e, a                                          ; $6a73: $5f
	add hl, sp                                       ; $6a74: $39
	ld [hl], $22                                     ; $6a75: $36 $22
	inc de                                           ; $6a77: $13
	db $ec                                           ; $6a78: $ec
	push bc                                          ; $6a79: $c5
	ld a, d                                          ; $6a7a: $7a
	ld e, a                                          ; $6a7b: $5f
	add hl, sp                                       ; $6a7c: $39
	ld b, l                                          ; $6a7d: $45
	and b                                            ; $6a7e: $a0
	ld l, d                                          ; $6a7f: $6a
	ld b, d                                          ; $6a80: $42
	ld d, e                                          ; $6a81: $53
	ldh a, [$2c]                                     ; $6a82: $f0 $2c

jr_094_6a84:
	pop af                                           ; $6a84: $f1
	call z, $36f1                                    ; $6a85: $cc $f1 $36
	pop af                                           ; $6a88: $f1
	pop af                                           ; $6a89: $f1
	and c                                            ; $6a8a: $a1
	cpl                                              ; $6a8b: $2f

jr_094_6a8c:
	ld b, e                                          ; $6a8c: $43
	ld b, b                                          ; $6a8d: $40
	add hl, sp                                       ; $6a8e: $39
	ld l, h                                          ; $6a8f: $6c
	dec a                                            ; $6a90: $3d
	jr c, jr_094_6ad7                                ; $6a91: $38 $44

	ld c, h                                          ; $6a93: $4c
	and b                                            ; $6a94: $a0
	db $ed                                           ; $6a95: $ed
	add b                                            ; $6a96: $80
	inc a                                            ; $6a97: $3c
	ld c, c                                          ; $6a98: $49
	ld [hl], a                                       ; $6a99: $77

jr_094_6a9a:
	dec sp                                           ; $6a9a: $3b
	dec a                                            ; $6a9b: $3d
	ld e, l                                          ; $6a9c: $5d
	ld e, d                                          ; $6a9d: $5a
	ld c, b                                          ; $6a9e: $48
	xor h                                            ; $6a9f: $ac
	ld b, b                                          ; $6aa0: $40

Call_094_6aa1:
	add hl, sp                                       ; $6aa1: $39
	db $ec                                           ; $6aa2: $ec
	ret c                                            ; $6aa3: $d8

	ld b, d                                          ; $6aa4: $42
	ld a, [hl-]                                      ; $6aa5: $3a
	ld d, b                                          ; $6aa6: $50
	inc de                                           ; $6aa7: $13
	ld d, c                                          ; $6aa8: $51
	ld [hl], b                                       ; $6aa9: $70
	jr c, jr_094_6a9a                                ; $6aaa: $38 $ee

	ld a, [hl+]                                      ; $6aac: $2a
	ld c, c                                          ; $6aad: $49
	jr c, jr_094_6ae9                                ; $6aae: $38 $39

	ld d, h                                          ; $6ab0: $54
	ld c, c                                          ; $6ab1: $49
	ld b, l                                          ; $6ab2: $45
	ld c, h                                          ; $6ab3: $4c
	and b                                            ; $6ab4: $a0
	cpl                                              ; $6ab5: $2f
	ld b, e                                          ; $6ab6: $43
	ld b, b                                          ; $6ab7: $40
	add hl, sp                                       ; $6ab8: $39
	jr c, jr_094_6af4                                ; $6ab9: $38 $39

	ld d, h                                          ; $6abb: $54
	ld c, c                                          ; $6abc: $49
	ld b, h                                          ; $6abd: $44
	ld b, l                                          ; $6abe: $45
	ld c, h                                          ; $6abf: $4c
	and b                                            ; $6ac0: $a0
	ld e, d                                          ; $6ac1: $5a
	dec sp                                           ; $6ac2: $3b
	ld h, c                                          ; $6ac3: $61
	ld a, [hl-]                                      ; $6ac4: $3a
	ld b, c                                          ; $6ac5: $41
	ld b, h                                          ; $6ac6: $44
	ld e, a                                          ; $6ac7: $5f
	add hl, sp                                       ; $6ac8: $39
	and c                                            ; $6ac9: $a1
	cpl                                              ; $6aca: $2f
	ld b, e                                          ; $6acb: $43
	ld c, h                                          ; $6acc: $4c
	inc [hl]                                         ; $6acd: $34
	ld c, h                                          ; $6ace: $4c
	add l                                            ; $6acf: $85
	xor b                                            ; $6ad0: $a8
	db $ec                                           ; $6ad1: $ec
	push bc                                          ; $6ad2: $c5
	ld a, d                                          ; $6ad3: $7a
	ld e, a                                          ; $6ad4: $5f
	add hl, sp                                       ; $6ad5: $39
	ld b, l                                          ; $6ad6: $45

jr_094_6ad7:
	and b                                            ; $6ad7: $a0
	rst JumpTable                                          ; $6ad8: $c7
	ld c, h                                          ; $6ad9: $4c
	and b                                            ; $6ada: $a0
	add hl, bc                                       ; $6adb: $09
	cpl                                              ; $6adc: $2f
	ld [hl-], a                                      ; $6add: $32
	ld l, e                                          ; $6ade: $6b
	ld h, d                                          ; $6adf: $62
	db $eb                                           ; $6ae0: $eb
	ld h, b                                          ; $6ae1: $60
	inc de                                           ; $6ae2: $13
	ld d, c                                          ; $6ae3: $51
	ld c, [hl]                                       ; $6ae4: $4e
	ld b, c                                          ; $6ae5: $41
	ld b, h                                          ; $6ae6: $44
	dec sp                                           ; $6ae7: $3b
	ld e, l                                          ; $6ae8: $5d

jr_094_6ae9:
	ld [hl], $33                                     ; $6ae9: $36 $33
	add hl, bc                                       ; $6aeb: $09
	cpl                                              ; $6aec: $2f
	ld [hl-], a                                      ; $6aed: $32
	ld l, e                                          ; $6aee: $6b
	ld h, d                                          ; $6aef: $62
	db $eb                                           ; $6af0: $eb
	ld h, b                                          ; $6af1: $60
	inc de                                           ; $6af2: $13
	db $ec                                           ; $6af3: $ec

jr_094_6af4:
	inc c                                            ; $6af4: $0c
	ld a, [hl-]                                      ; $6af5: $3a
	ld [hl], $33                                     ; $6af6: $36 $33
	add hl, bc                                       ; $6af8: $09
	cpl                                              ; $6af9: $2f
	ld a, l                                          ; $6afa: $7d
	pop af                                           ; $6afb: $f1
	db $e3                                           ; $6afc: $e3
	ldh a, [rP1]                                     ; $6afd: $f0 $00
	ld h, l                                          ; $6aff: $65
	ldh a, [$50]                                     ; $6b00: $f0 $50
	add hl, bc                                       ; $6b02: $09
	cpl                                              ; $6b03: $2f
	ld [hl-], a                                      ; $6b04: $32
	db $dd                                           ; $6b05: $dd
	ld a, l                                          ; $6b06: $7d
	pop af                                           ; $6b07: $f1
	db $e3                                           ; $6b08: $e3
	ldh a, [rP1]                                     ; $6b09: $f0 $00
	ld h, l                                          ; $6b0b: $65
	ldh a, [$50]                                     ; $6b0c: $f0 $50
	ld h, d                                          ; $6b0e: $62
	inc de                                           ; $6b0f: $13
	db $eb                                           ; $6b10: $eb
	ld h, b                                          ; $6b11: $60
	ld a, $45                                        ; $6b12: $3e $45
	add hl, sp                                       ; $6b14: $39
	and e                                            ; $6b15: $a3
	cpl                                              ; $6b16: $2f
	pop af                                           ; $6b17: $f1
	ld [de], a                                       ; $6b18: $12
	sbc b                                            ; $6b19: $98
	pop af                                           ; $6b1a: $f1
	inc sp                                           ; $6b1b: $33
	ld [hl], e                                       ; $6b1c: $73
	ld l, c                                          ; $6b1d: $69
	add hl, bc                                       ; $6b1e: $09
	cpl                                              ; $6b1f: $2f
	ld [hl-], a                                      ; $6b20: $32
	db $dd                                           ; $6b21: $dd
	pop af                                           ; $6b22: $f1
	ld [de], a                                       ; $6b23: $12
	sbc b                                            ; $6b24: $98
	pop af                                           ; $6b25: $f1
	inc sp                                           ; $6b26: $33
	ld [hl], e                                       ; $6b27: $73
	ld l, c                                          ; $6b28: $69
	ld h, d                                          ; $6b29: $62
	inc de                                           ; $6b2a: $13
	db $eb                                           ; $6b2b: $eb
	ld h, b                                          ; $6b2c: $60
	ld a, $45                                        ; $6b2d: $3e $45
	add hl, sp                                       ; $6b2f: $39
	and e                                            ; $6b30: $a3
	cpl                                              ; $6b31: $2f
	ldh a, [rOCPD]                                   ; $6b32: $f0 $6b
	ldh a, [rSC]                                     ; $6b34: $f0 $02
	ld e, c                                          ; $6b36: $59
	pop af                                           ; $6b37: $f1
	add hl, de                                       ; $6b38: $19
	pop af                                           ; $6b39: $f1
	dec c                                            ; $6b3a: $0d
	add hl, bc                                       ; $6b3b: $09
	cpl                                              ; $6b3c: $2f
	ld [hl-], a                                      ; $6b3d: $32
	db $dd                                           ; $6b3e: $dd
	ldh a, [rOCPD]                                   ; $6b3f: $f0 $6b
	ldh a, [rSC]                                     ; $6b41: $f0 $02
	ld e, c                                          ; $6b43: $59
	pop af                                           ; $6b44: $f1
	add hl, de                                       ; $6b45: $19
	pop af                                           ; $6b46: $f1
	dec c                                            ; $6b47: $0d
	ld h, d                                          ; $6b48: $62
	inc de                                           ; $6b49: $13
	db $eb                                           ; $6b4a: $eb
	ld h, b                                          ; $6b4b: $60
	ld a, $45                                        ; $6b4c: $3e $45
	add hl, sp                                       ; $6b4e: $39
	and e                                            ; $6b4f: $a3
	cpl                                              ; $6b50: $2f
	ld [$09fc], a                                    ; $6b51: $ea $fc $09
	cpl                                              ; $6b54: $2f
	ld [hl-], a                                      ; $6b55: $32
	db $dd                                           ; $6b56: $dd
	ld [$62fc], a                                    ; $6b57: $ea $fc $62
	inc de                                           ; $6b5a: $13
	db $eb                                           ; $6b5b: $eb
	ld h, b                                          ; $6b5c: $60
	ld a, $45                                        ; $6b5d: $3e $45
	add hl, sp                                       ; $6b5f: $39
	and e                                            ; $6b60: $a3
	cpl                                              ; $6b61: $2f
	pop af                                           ; $6b62: $f1
	ld [hl], b                                       ; $6b63: $70
	ldh a, [rHDMA2]                                  ; $6b64: $f0 $52
	pop af                                           ; $6b66: $f1
	add hl, de                                       ; $6b67: $19
	pop af                                           ; $6b68: $f1
	dec c                                            ; $6b69: $0d
	add hl, bc                                       ; $6b6a: $09
	cpl                                              ; $6b6b: $2f
	ld [hl-], a                                      ; $6b6c: $32
	db $dd                                           ; $6b6d: $dd
	pop af                                           ; $6b6e: $f1
	ld [hl], b                                       ; $6b6f: $70
	ldh a, [rHDMA2]                                  ; $6b70: $f0 $52
	pop af                                           ; $6b72: $f1
	add hl, de                                       ; $6b73: $19
	pop af                                           ; $6b74: $f1
	dec c                                            ; $6b75: $0d
	ld h, d                                          ; $6b76: $62
	inc de                                           ; $6b77: $13
	db $eb                                           ; $6b78: $eb
	ld h, b                                          ; $6b79: $60
	ld a, $45                                        ; $6b7a: $3e $45
	add hl, sp                                       ; $6b7c: $39
	and e                                            ; $6b7d: $a3
	cpl                                              ; $6b7e: $2f
	ldh a, [rAUD4POLY]                               ; $6b7f: $f0 $22
	ld h, l                                          ; $6b81: $65
	ldh a, [$f1]                                     ; $6b82: $f0 $f1
	ldh a, [$03]                                     ; $6b84: $f0 $03
	add hl, bc                                       ; $6b86: $09
	cpl                                              ; $6b87: $2f
	ld [hl-], a                                      ; $6b88: $32
	db $dd                                           ; $6b89: $dd
	ldh a, [rAUD4POLY]                               ; $6b8a: $f0 $22
	ld h, l                                          ; $6b8c: $65
	ldh a, [$f1]                                     ; $6b8d: $f0 $f1
	ldh a, [$03]                                     ; $6b8f: $f0 $03
	ld h, d                                          ; $6b91: $62
	inc de                                           ; $6b92: $13
	db $eb                                           ; $6b93: $eb
	ld h, b                                          ; $6b94: $60
	ld a, $45                                        ; $6b95: $3e $45
	add hl, sp                                       ; $6b97: $39
	and e                                            ; $6b98: $a3
	cpl                                              ; $6b99: $2f
	db $eb                                           ; $6b9a: $eb
	ld h, l                                          ; $6b9b: $65
	ld b, d                                          ; $6b9c: $42
	ldh a, [c]                                       ; $6b9d: $f2
	inc h                                            ; $6b9e: $24
	ldh a, [c]                                       ; $6b9f: $f2
	ld d, l                                          ; $6ba0: $55
	add hl, bc                                       ; $6ba1: $09
	cpl                                              ; $6ba2: $2f
	ld [hl-], a                                      ; $6ba3: $32
	ld b, l                                          ; $6ba4: $45
	ld a, $ac                                        ; $6ba5: $3e $ac
	db $eb                                           ; $6ba7: $eb
	ld h, l                                          ; $6ba8: $65
	ld b, d                                          ; $6ba9: $42
	ldh a, [c]                                       ; $6baa: $f2
	inc h                                            ; $6bab: $24
	ldh a, [c]                                       ; $6bac: $f2
	ld d, l                                          ; $6bad: $55
	ld h, d                                          ; $6bae: $62
	inc de                                           ; $6baf: $13
	db $eb                                           ; $6bb0: $eb
	ld h, b                                          ; $6bb1: $60
	ld a, $45                                        ; $6bb2: $3e $45
	add hl, sp                                       ; $6bb4: $39
	and e                                            ; $6bb5: $a3
	cpl                                              ; $6bb6: $2f
	ldh a, [rAUD3ENA]                                ; $6bb7: $f0 $1a
	ld h, l                                          ; $6bb9: $65
	ldh a, [$35]                                     ; $6bba: $f0 $35
	ldh a, [$2b]                                     ; $6bbc: $f0 $2b
	add hl, bc                                       ; $6bbe: $09
	cpl                                              ; $6bbf: $2f
	ld [hl-], a                                      ; $6bc0: $32
	db $dd                                           ; $6bc1: $dd
	ldh a, [rAUD3ENA]                                ; $6bc2: $f0 $1a
	ld h, l                                          ; $6bc4: $65
	ldh a, [$35]                                     ; $6bc5: $f0 $35
	ldh a, [$2b]                                     ; $6bc7: $f0 $2b
	ld h, d                                          ; $6bc9: $62
	inc de                                           ; $6bca: $13
	db $eb                                           ; $6bcb: $eb
	ld h, b                                          ; $6bcc: $60
	ld a, $45                                        ; $6bcd: $3e $45
	add hl, sp                                       ; $6bcf: $39
	and e                                            ; $6bd0: $a3
	cpl                                              ; $6bd1: $2f
	ldh a, [$fd]                                     ; $6bd2: $f0 $fd
	ldh a, [$3d]                                     ; $6bd4: $f0 $3d
	add e                                            ; $6bd6: $83
	add hl, bc                                       ; $6bd7: $09
	cpl                                              ; $6bd8: $2f
	ld [hl-], a                                      ; $6bd9: $32
	db $dd                                           ; $6bda: $dd
	ldh a, [$fd]                                     ; $6bdb: $f0 $fd
	ldh a, [$3d]                                     ; $6bdd: $f0 $3d
	add e                                            ; $6bdf: $83
	ld h, d                                          ; $6be0: $62
	inc de                                           ; $6be1: $13
	db $eb                                           ; $6be2: $eb
	ld h, b                                          ; $6be3: $60
	ld a, $45                                        ; $6be4: $3e $45
	add hl, sp                                       ; $6be6: $39
	and e                                            ; $6be7: $a3
	cpl                                              ; $6be8: $2f
	ld b, e                                          ; $6be9: $43
	ld b, [hl]                                       ; $6bea: $46
	dec sp                                           ; $6beb: $3b
	inc [hl]                                         ; $6bec: $34
	db $ed                                           ; $6bed: $ed
	xor c                                            ; $6bee: $a9
	and d                                            ; $6bef: $a2
	cpl                                              ; $6bf0: $2f
	ld b, e                                          ; $6bf1: $43
	jp hl                                            ; $6bf2: $e9


	ld d, c                                          ; $6bf3: $51
	xor b                                            ; $6bf4: $a8
	jp hl                                            ; $6bf5: $e9


	db $dd                                           ; $6bf6: $dd
	and b                                            ; $6bf7: $a0
	cpl                                              ; $6bf8: $2f
	ld b, e                                          ; $6bf9: $43
	jp hl                                            ; $6bfa: $e9


	db $dd                                           ; $6bfb: $dd
	and b                                            ; $6bfc: $a0
	or h                                             ; $6bfd: $b4
	xor h                                            ; $6bfe: $ac
	or b                                             ; $6bff: $b0
	and b                                            ; $6c00: $a0
	cpl                                              ; $6c01: $2f
	ld [hl-], a                                      ; $6c02: $32
	db $eb                                           ; $6c03: $eb
	ld h, b                                          ; $6c04: $60
	ld c, a                                          ; $6c05: $4f
	inc de                                           ; $6c06: $13
	ldh a, [rAUD2LEN]                                ; $6c07: $f0 $16
	ldh a, [$c0]                                     ; $6c09: $f0 $c0
	ld c, d                                          ; $6c0b: $4a
	ld e, h                                          ; $6c0c: $5c
	dec a                                            ; $6c0d: $3d
	ld a, $ac                                        ; $6c0e: $3e $ac
	db $ed                                           ; $6c10: $ed
	xor c                                            ; $6c11: $a9
	ld h, d                                          ; $6c12: $62
	db $f4                                           ; $6c13: $f4
	ld a, c                                          ; $6c14: $79
	ld d, c                                          ; $6c15: $51
	inc a                                            ; $6c16: $3c
	ld a, [hl-]                                      ; $6c17: $3a
	and e                                            ; $6c18: $a3
	cpl                                              ; $6c19: $2f
	ld b, e                                          ; $6c1a: $43
	ld b, [hl]                                       ; $6c1b: $46
	dec sp                                           ; $6c1c: $3b
	inc [hl]                                         ; $6c1d: $34
	db $ed                                           ; $6c1e: $ed
	xor c                                            ; $6c1f: $a9
	scf                                              ; $6c20: $37
	inc de                                           ; $6c21: $13
	ld [hl-], a                                      ; $6c22: $32
	ld a, [hl-]                                      ; $6c23: $3a
	ld b, c                                          ; $6c24: $41
	ccf                                              ; $6c25: $3f
	jr c, jr_094_6c60                                ; $6c26: $38 $38

	db $eb                                           ; $6c28: $eb
	adc $37                                          ; $6c29: $ce $37
	scf                                              ; $6c2b: $37
	inc sp                                           ; $6c2c: $33
	add hl, bc                                       ; $6c2d: $09
	cpl                                              ; $6c2e: $2f
	ld b, e                                          ; $6c2f: $43
	xor $1e                                          ; $6c30: $ee $1e
	ld e, b                                          ; $6c32: $58
	xor l                                            ; $6c33: $ad
	ret                                              ; $6c34: $c9


	ld a, $3d                                        ; $6c35: $3e $3d
	inc de                                           ; $6c37: $13
	xor $07                                          ; $6c38: $ee $07
	ld d, e                                          ; $6c3a: $53
	ld b, [hl]                                       ; $6c3b: $46
	ld c, [hl]                                       ; $6c3c: $4e
	ld b, c                                          ; $6c3d: $41
	ld b, h                                          ; $6c3e: $44
	ld e, l                                          ; $6c3f: $5d
	ld e, d                                          ; $6c40: $5a
	xor l                                            ; $6c41: $ad
	db $eb                                           ; $6c42: $eb
	ldh a, [c]                                       ; $6c43: $f2
	ld b, a                                          ; $6c44: $47
	xor h                                            ; $6c45: $ac
	ld a, b                                          ; $6c46: $78
	ld c, l                                          ; $6c47: $4d
	ld a, [hl-]                                      ; $6c48: $3a
	jr c, jr_094_6c87                                ; $6c49: $38 $3c

	ld a, [hl-]                                      ; $6c4b: $3a
	and c                                            ; $6c4c: $a1
	cpl                                              ; $6c4d: $2f
	ld b, e                                          ; $6c4e: $43
	ld e, b                                          ; $6c4f: $58
	ccf                                              ; $6c50: $3f
	inc [hl]                                         ; $6c51: $34
	ret                                              ; $6c52: $c9


	inc de                                           ; $6c53: $13
	db $eb                                           ; $6c54: $eb
	sub c                                            ; $6c55: $91
	inc [hl]                                         ; $6c56: $34
	ld h, a                                          ; $6c57: $67
	dec sp                                           ; $6c58: $3b
	ccf                                              ; $6c59: $3f
	ld d, l                                          ; $6c5a: $55
	ld c, [hl]                                       ; $6c5b: $4e
	inc a                                            ; $6c5c: $3c
	and b                                            ; $6c5d: $a0
	cpl                                              ; $6c5e: $2f
	ld b, e                                          ; $6c5f: $43

jr_094_6c60:
	xor $1e                                          ; $6c60: $ee $1e
	ld e, b                                          ; $6c62: $58
	xor l                                            ; $6c63: $ad
	ret                                              ; $6c64: $c9


	ld a, $3d                                        ; $6c65: $3e $3d
	inc de                                           ; $6c67: $13
	xor $07                                          ; $6c68: $ee $07
	ld d, e                                          ; $6c6a: $53
	ld b, [hl]                                       ; $6c6b: $46
	ld c, [hl]                                       ; $6c6c: $4e
	ld b, c                                          ; $6c6d: $41
	ld b, h                                          ; $6c6e: $44
	ld e, l                                          ; $6c6f: $5d
	ld e, d                                          ; $6c70: $5a
	xor l                                            ; $6c71: $ad
	ld l, d                                          ; $6c72: $6a
	inc a                                            ; $6c73: $3c
	ld d, b                                          ; $6c74: $50
	sub h                                            ; $6c75: $94
	ccf                                              ; $6c76: $3f
	ld a, b                                          ; $6c77: $78
	ld c, l                                          ; $6c78: $4d
	ld a, [hl-]                                      ; $6c79: $3a
	jr c, jr_094_6cb8                                ; $6c7a: $38 $3c

	ld a, [hl-]                                      ; $6c7c: $3a
	and c                                            ; $6c7d: $a1
	ld b, [hl]                                       ; $6c7e: $46
	dec sp                                           ; $6c7f: $3b
	ld hl, $20ad                                     ; $6c80: $21 $ad $20
	ld e, d                                          ; $6c83: $5a
	inc [hl]                                         ; $6c84: $34
	db $eb                                           ; $6c85: $eb
	rst FarCall                                          ; $6c86: $f7

jr_094_6c87:
	and c                                            ; $6c87: $a1
	ld d, $a8                                        ; $6c88: $16 $a8
	db $eb                                           ; $6c8a: $eb
	rst FarCall                                          ; $6c8b: $f7
	and c                                            ; $6c8c: $a1
	xor $14                                          ; $6c8d: $ee $14
	inc [hl]                                         ; $6c8f: $34
	ld d, $a8                                        ; $6c90: $16 $a8
	db $eb                                           ; $6c92: $eb
	rst FarCall                                          ; $6c93: $f7
	and c                                            ; $6c94: $a1
	ld hl, $20ad                                     ; $6c95: $21 $ad $20
	ld l, e                                          ; $6c98: $6b
	inc a                                            ; $6c99: $3c
	xor $1c                                          ; $6c9a: $ee $1c
	and c                                            ; $6c9c: $a1
	cpl                                              ; $6c9d: $2f
	ld b, e                                          ; $6c9e: $43
	ld b, b                                          ; $6c9f: $40
	ld c, l                                          ; $6ca0: $4d
	ld e, e                                          ; $6ca1: $5b
	ld d, [hl]                                       ; $6ca2: $56
	inc [hl]                                         ; $6ca3: $34
	db $ed                                           ; $6ca4: $ed
	halt                                             ; $6ca5: $76
	ld c, d                                          ; $6ca6: $4a
	inc de                                           ; $6ca7: $13
	db $ed                                           ; $6ca8: $ed
	xor c                                            ; $6ca9: $a9
	ld h, d                                          ; $6caa: $62
	inc de                                           ; $6cab: $13
	pop af                                           ; $6cac: $f1
	ld bc, $4df0                                     ; $6cad: $01 $f0 $4d
	sub h                                            ; $6cb0: $94
	ld b, b                                          ; $6cb1: $40
	add hl, sp                                       ; $6cb2: $39
	and b                                            ; $6cb3: $a0
	xor $13                                          ; $6cb4: $ee $13
	inc [hl]                                         ; $6cb6: $34
	db $ed                                           ; $6cb7: $ed

jr_094_6cb8:
	xor b                                            ; $6cb8: $a8
	ld c, d                                          ; $6cb9: $4a
	ld d, c                                          ; $6cba: $51
	and b                                            ; $6cbb: $a0
	cpl                                              ; $6cbc: $2f
	ld b, e                                          ; $6cbd: $43
	ld e, [hl]                                       ; $6cbe: $5e
	dec sp                                           ; $6cbf: $3b
	ld c, c                                          ; $6cc0: $49
	xor e                                            ; $6cc1: $ab
	ld de, $ffe9                                     ; $6cc2: $11 $e9 $ff
	and b                                            ; $6cc5: $a0
	ld b, [hl]                                       ; $6cc6: $46
	dec sp                                           ; $6cc7: $3b
	ld c, b                                          ; $6cc8: $48
	and b                                            ; $6cc9: $a0
	cpl                                              ; $6cca: $2f
	ld b, e                                          ; $6ccb: $43
	ld e, [hl]                                       ; $6ccc: $5e
	dec sp                                           ; $6ccd: $3b
	inc [hl]                                         ; $6cce: $34
	db $eb                                           ; $6ccf: $eb
	rst FarCall                                          ; $6cd0: $f7
	and b                                            ; $6cd1: $a0
	add hl, sp                                       ; $6cd2: $39
	xor $1f                                          ; $6cd3: $ee $1f
	inc [hl]                                         ; $6cd5: $34
	db $eb                                           ; $6cd6: $eb
	ld b, d                                          ; $6cd7: $42
	ld b, d                                          ; $6cd8: $42
	xor b                                            ; $6cd9: $a8
	db $eb                                           ; $6cda: $eb
	rst FarCall                                          ; $6cdb: $f7
	and c                                            ; $6cdc: $a1
	ld d, $a9                                        ; $6cdd: $16 $a9
	db $ed                                           ; $6cdf: $ed
	ld d, a                                          ; $6ce0: $57
	inc [hl]                                         ; $6ce1: $34
	ld l, e                                          ; $6ce2: $6b
	and c                                            ; $6ce3: $a1
	ld e, [hl]                                       ; $6ce4: $5e
	inc [hl]                                         ; $6ce5: $34
	ld d, $36                                        ; $6ce6: $16 $36
	scf                                              ; $6ce8: $37
	inc de                                           ; $6ce9: $13
	db $eb                                           ; $6cea: $eb
	rst FarCall                                          ; $6ceb: $f7
	inc [hl]                                         ; $6cec: $34
	db $ed                                           ; $6ced: $ed
	ld d, a                                          ; $6cee: $57
	and c                                            ; $6cef: $a1
	xor $10                                          ; $6cf0: $ee $10
	xor $10                                          ; $6cf2: $ee $10
	xor b                                            ; $6cf4: $a8
	ld l, e                                          ; $6cf5: $6b
	inc a                                            ; $6cf6: $3c
	inc [hl]                                         ; $6cf7: $34
	xor $1c                                          ; $6cf8: $ee $1c
	and c                                            ; $6cfa: $a1
	cpl                                              ; $6cfb: $2f
	ld [hl-], a                                      ; $6cfc: $32
	add hl, sp                                       ; $6cfd: $39
	dec sp                                           ; $6cfe: $3b
	inc [hl]                                         ; $6cff: $34
	db $ed                                           ; $6d00: $ed
	xor c                                            ; $6d01: $a9
	ld b, d                                          ; $6d02: $42
	ld l, [hl]                                       ; $6d03: $6e
	add b                                            ; $6d04: $80
	xor b                                            ; $6d05: $a8
	ld l, e                                          ; $6d06: $6b
	ld b, h                                          ; $6d07: $44
	inc a                                            ; $6d08: $3c
	inc de                                           ; $6d09: $13
	pop af                                           ; $6d0a: $f1
	ld [hl-], a                                      ; $6d0b: $32
	dec sp                                           ; $6d0c: $3b
	ccf                                              ; $6d0d: $3f
	ld c, [hl]                                       ; $6d0e: $4e
	db $eb                                           ; $6d0f: $eb
	sbc l                                            ; $6d10: $9d
	and e                                            ; $6d11: $a3
	ld l, e                                          ; $6d12: $6b
	xor c                                            ; $6d13: $a9
	ldh a, [rAUD2LEN]                                ; $6d14: $f0 $16
	ld d, e                                          ; $6d16: $53
	ld a, [hl-]                                      ; $6d17: $3a
	jr c, jr_094_6d54                                ; $6d18: $38 $3a

	ld d, b                                          ; $6d1a: $50
	pop af                                           ; $6d1b: $f1
	inc d                                            ; $6d1c: $14
	ld c, [hl]                                       ; $6d1d: $4e
	ld h, e                                          ; $6d1e: $63
	ld b, l                                          ; $6d1f: $45
	and b                                            ; $6d20: $a0
	cpl                                              ; $6d21: $2f
	ld b, e                                          ; $6d22: $43
	db $eb                                           ; $6d23: $eb
	rla                                              ; $6d24: $17
	and b                                            ; $6d25: $a0
	xor $1f                                          ; $6d26: $ee $1f
	inc [hl]                                         ; $6d28: $34
	ret nc                                           ; $6d29: $d0

	xor b                                            ; $6d2a: $a8
	ld d, c                                          ; $6d2b: $51
	sbc l                                            ; $6d2c: $9d
	ld b, a                                          ; $6d2d: $47
	ld h, a                                          ; $6d2e: $67
	ld d, l                                          ; $6d2f: $55
	inc a                                            ; $6d30: $3c
	ld d, b                                          ; $6d31: $50
	xor h                                            ; $6d32: $ac
	ret                                              ; $6d33: $c9


	sbc c                                            ; $6d34: $99
	dec sp                                           ; $6d35: $3b
	ccf                                              ; $6d36: $3f
	ccf                                              ; $6d37: $3f
	ld c, h                                          ; $6d38: $4c
	and b                                            ; $6d39: $a0
	xor $1f                                          ; $6d3a: $ee $1f
	inc [hl]                                         ; $6d3c: $34
	ret nc                                           ; $6d3d: $d0

	and b                                            ; $6d3e: $a0
	xor l                                            ; $6d3f: $ad
	ld e, [hl]                                       ; $6d40: $5e
	ld e, [hl]                                       ; $6d41: $5e
	inc [hl]                                         ; $6d42: $34
	ld h, a                                          ; $6d43: $67
	ld d, l                                          ; $6d44: $55
	ld h, e                                          ; $6d45: $63
	and b                                            ; $6d46: $a0
	cpl                                              ; $6d47: $2f
	ld b, e                                          ; $6d48: $43
	ld e, e                                          ; $6d49: $5b
	ld d, [hl]                                       ; $6d4a: $56
	ld b, [hl]                                       ; $6d4b: $46
	inc [hl]                                         ; $6d4c: $34
	sbc c                                            ; $6d4d: $99
	dec sp                                           ; $6d4e: $3b
	ccf                                              ; $6d4f: $3f
	ld c, [hl]                                       ; $6d50: $4e
	ld b, l                                          ; $6d51: $45
	and b                                            ; $6d52: $a0
	cpl                                              ; $6d53: $2f

jr_094_6d54:
	ld h, $ed                                        ; $6d54: $26 $ed
	ld e, h                                          ; $6d56: $5c
	dec h                                            ; $6d57: $25

jr_094_6d58:
	add hl, bc                                       ; $6d58: $09
	sbc c                                            ; $6d59: $99
	dec sp                                           ; $6d5a: $3b
	dec a                                            ; $6d5b: $3d
	ld [hl], h                                       ; $6d5c: $74
	xor b                                            ; $6d5d: $a8
	ld [hl], b                                       ; $6d5e: $70
	ld [hl], c                                       ; $6d5f: $71
	ld b, c                                          ; $6d60: $41
	ld c, h                                          ; $6d61: $4c
	xor h                                            ; $6d62: $ac
	ldh a, [$c7]                                     ; $6d63: $f0 $c7
	ld d, l                                          ; $6d65: $55
	ld a, [hl-]                                      ; $6d66: $3a
	dec sp                                           ; $6d67: $3b
	ld h, c                                          ; $6d68: $61
	ld d, [hl]                                       ; $6d69: $56
	dec sp                                           ; $6d6a: $3b
	ccf                                              ; $6d6b: $3f
	and b                                            ; $6d6c: $a0
	cpl                                              ; $6d6d: $2f
	ld b, e                                          ; $6d6e: $43
	db $ec                                           ; $6d6f: $ec
	xor $3c                                          ; $6d70: $ee $3c
	ld d, b                                          ; $6d72: $50
	inc de                                           ; $6d73: $13
	pop af                                           ; $6d74: $f1
	ld bc, $4df0                                     ; $6d75: $01 $f0 $4d
	sub h                                            ; $6d78: $94
	ld a, $3d                                        ; $6d79: $3e $3d
	ld b, c                                          ; $6d7b: $41
	ld b, h                                          ; $6d7c: $44
	inc a                                            ; $6d7d: $3c
	ld d, b                                          ; $6d7e: $50
	xor h                                            ; $6d7f: $ac
	jp hl                                            ; $6d80: $e9


	dec l                                            ; $6d81: $2d
	and b                                            ; $6d82: $a0
	db $eb                                           ; $6d83: $eb
	ld d, c                                          ; $6d84: $51
	xor h                                            ; $6d85: $ac
	db $ed                                           ; $6d86: $ed
	sbc l                                            ; $6d87: $9d
	pop af                                           ; $6d88: $f1
	inc e                                            ; $6d89: $1c
	inc [hl]                                         ; $6d8a: $34
	ld b, l                                          ; $6d8b: $45
	inc a                                            ; $6d8c: $3c
	dec sp                                           ; $6d8d: $3b
	dec a                                            ; $6d8e: $3d
	ld c, h                                          ; $6d8f: $4c
	and b                                            ; $6d90: $a0
	cpl                                              ; $6d91: $2f
	ld b, e                                          ; $6d92: $43
	ld b, [hl]                                       ; $6d93: $46
	inc [hl]                                         ; $6d94: $34
	ldh a, [hDisp0_SCX]                                     ; $6d95: $f0 $84
	add h                                            ; $6d97: $84
	pop af                                           ; $6d98: $f1
	ld [hl], e                                       ; $6d99: $73
	di                                               ; $6d9a: $f3
	ei                                               ; $6d9b: $fb
	ld b, h                                          ; $6d9c: $44
	ld c, h                                          ; $6d9d: $4c
	xor b                                            ; $6d9e: $a8
	db $ed                                           ; $6d9f: $ed
	xor c                                            ; $6da0: $a9
	ld c, c                                          ; $6da1: $49
	xor $06                                          ; $6da2: $ee $06
	ld b, h                                          ; $6da4: $44
	dec sp                                           ; $6da5: $3b
	dec a                                            ; $6da6: $3d
	inc a                                            ; $6da7: $3c
	ld d, b                                          ; $6da8: $50
	xor h                                            ; $6da9: $ac
	sub d                                            ; $6daa: $92
	adc [hl]                                         ; $6dab: $8e
	dec sp                                           ; $6dac: $3b
	dec a                                            ; $6dad: $3d
	ld b, l                                          ; $6dae: $45
	and b                                            ; $6daf: $a0
	ld l, l                                          ; $6db0: $6d
	ldh a, [$ac]                                     ; $6db1: $f0 $ac
	ld a, [hl-]                                      ; $6db3: $3a
	ld b, c                                          ; $6db4: $41
	ccf                                              ; $6db5: $3f
	xor h                                            ; $6db6: $ac
	add hl, sp                                       ; $6db7: $39
	ld c, l                                          ; $6db8: $4d
	ld a, $3c                                        ; $6db9: $3e $3c
	dec sp                                           ; $6dbb: $3b
	dec a                                            ; $6dbc: $3d
	ld a, [hl-]                                      ; $6dbd: $3a
	xor b                                            ; $6dbe: $a8
	jr c, jr_094_6df9                                ; $6dbf: $38 $38

	ld [hl], a                                       ; $6dc1: $77
	jr c, jr_094_6d58                                ; $6dc2: $38 $94

	ld b, a                                          ; $6dc4: $47
	ld a, [hl-]                                      ; $6dc5: $3a
	ld c, [hl]                                       ; $6dc6: $4e
	ld c, h                                          ; $6dc7: $4c
	and b                                            ; $6dc8: $a0
	cpl                                              ; $6dc9: $2f
	ld b, e                                          ; $6dca: $43
	ld b, [hl]                                       ; $6dcb: $46
	ld b, [hl]                                       ; $6dcc: $46
	inc [hl]                                         ; $6dcd: $34
	ld b, b                                          ; $6dce: $40
	add hl, sp                                       ; $6dcf: $39

jr_094_6dd0:
	ld b, h                                          ; $6dd0: $44
	ld c, h                                          ; $6dd1: $4c
	and b                                            ; $6dd2: $a0
	ld b, [hl]                                       ; $6dd3: $46
	inc [hl]                                         ; $6dd4: $34
	ld b, b                                          ; $6dd5: $40
	add hl, sp                                       ; $6dd6: $39
	ld b, h                                          ; $6dd7: $44
	xor b                                            ; $6dd8: $a8
	ld l, a                                          ; $6dd9: $6f
	ld b, a                                          ; $6dda: $47
	ldh a, [rAUD2LEN]                                ; $6ddb: $f0 $16
	ld d, e                                          ; $6ddd: $53
	ld b, [hl]                                       ; $6dde: $46
	dec sp                                           ; $6ddf: $3b
	dec a                                            ; $6de0: $3d
	ld b, d                                          ; $6de1: $42
	ld b, l                                          ; $6de2: $45
	ld c, h                                          ; $6de3: $4c
	xor b                                            ; $6de4: $a8
	ld l, e                                          ; $6de5: $6b
	ld b, d                                          ; $6de6: $42
	ldh a, [rAUD2LEN]                                ; $6de7: $f0 $16
	inc a                                            ; $6de9: $3c
	ld a, $50                                        ; $6dea: $3e $50
	and c                                            ; $6dec: $a1
	db $eb                                           ; $6ded: $eb
	ld d, c                                          ; $6dee: $51
	xor h                                            ; $6def: $ac
	add a                                            ; $6df0: $87
	adc c                                            ; $6df1: $89
	ld b, d                                          ; $6df2: $42
	sub [hl]                                         ; $6df3: $96
	pop af                                           ; $6df4: $f1
	add hl, sp                                       ; $6df5: $39
	ld c, e                                          ; $6df6: $4b
	db $eb                                           ; $6df7: $eb
	ld d, b                                          ; $6df8: $50

jr_094_6df9:
	and c                                            ; $6df9: $a1
	db $eb                                           ; $6dfa: $eb
	ld d, c                                          ; $6dfb: $51
	xor h                                            ; $6dfc: $ac
	ldh a, [c]                                       ; $6dfd: $f2
	ld [hl-], a                                      ; $6dfe: $32
	pop af                                           ; $6dff: $f1
	rst FarCall                                          ; $6e00: $f7
	xor $2c                                          ; $6e01: $ee $2c
	ld c, e                                          ; $6e03: $4b
	db $eb                                           ; $6e04: $eb
	ld d, b                                          ; $6e05: $50
	and c                                            ; $6e06: $a1
	ld h, h                                          ; $6e07: $64
	sbc c                                            ; $6e08: $99
	dec a                                            ; $6e09: $3d
	ld a, c                                          ; $6e0a: $79
	xor b                                            ; $6e0b: $a8
	ld b, b                                          ; $6e0c: $40
	ld c, l                                          ; $6e0d: $4d
	ld c, d                                          ; $6e0e: $4a
	inc [hl]                                         ; $6e0f: $34
	xor $07                                          ; $6e10: $ee $07
	dec sp                                           ; $6e12: $3b
	ccf                                              ; $6e13: $3f
	and c                                            ; $6e14: $a1
	ld hl, $20ad                                     ; $6e15: $21 $ad $20
	ldh a, [rAUD2LEN]                                ; $6e18: $f0 $16
	ldh a, [c]                                       ; $6e1a: $f2
	ld c, [hl]                                       ; $6e1b: $4e
	ld c, e                                          ; $6e1c: $4b
	ld l, e                                          ; $6e1d: $6b
	and c                                            ; $6e1e: $a1
	cpl                                              ; $6e1f: $2f
	ld b, e                                          ; $6e20: $43
	ld c, e                                          ; $6e21: $4b
	inc [hl]                                         ; $6e22: $34
	ld c, e                                          ; $6e23: $4b
	inc [hl]                                         ; $6e24: $34
	ld c, e                                          ; $6e25: $4b
	xor h                                            ; $6e26: $ac
	xor $05                                          ; $6e27: $ee $05
	ld b, h                                          ; $6e29: $44
	dec sp                                           ; $6e2a: $3b
	dec a                                            ; $6e2b: $3d
	ld l, h                                          ; $6e2c: $6c
	dec a                                            ; $6e2d: $3d
	jr c, jr_094_6dd0                                ; $6e2e: $38 $a0

	ld b, [hl]                                       ; $6e30: $46
	inc [hl]                                         ; $6e31: $34
	ld [hl], b                                       ; $6e32: $70
	ld [hl], c                                       ; $6e33: $71
	ld b, c                                          ; $6e34: $41
	ld c, h                                          ; $6e35: $4c

jr_094_6e36:
	xor b                                            ; $6e36: $a8
	ld b, l                                          ; $6e37: $45
	ld e, l                                          ; $6e38: $5d
	jr c, jr_094_6e75                                ; $6e39: $38 $3a

	ld d, h                                          ; $6e3b: $54
	ld c, c                                          ; $6e3c: $49
	inc [hl]                                         ; $6e3d: $34
	ldh a, [$0c]                                     ; $6e3e: $f0 $0c
	jr c, jr_094_6ea3                                ; $6e40: $38 $61

	ld d, [hl]                                       ; $6e42: $56
	dec sp                                           ; $6e43: $3b
	ccf                                              ; $6e44: $3f
	and b                                            ; $6e45: $a0
	cpl                                              ; $6e46: $2f
	ld b, e                                          ; $6e47: $43
	jp hl                                            ; $6e48: $e9


	dec l                                            ; $6e49: $2d
	xor b                                            ; $6e4a: $a8
	halt                                             ; $6e4b: $76
	ldh a, [$67]                                     ; $6e4c: $f0 $67
	pop af                                           ; $6e4e: $f1
	ld de, $7942                                     ; $6e4f: $11 $42 $79
	jr c, @+$3c                                      ; $6e52: $38 $3a

	ld b, c                                          ; $6e54: $41
	ld b, h                                          ; $6e55: $44
	ld a, $a0                                        ; $6e56: $3e $a0
	cpl                                              ; $6e58: $2f
	ld b, e                                          ; $6e59: $43
	xor $1f                                          ; $6e5a: $ee $1f
	xor h                                            ; $6e5c: $ac
	add a                                            ; $6e5d: $87
	ldh a, [$5b]                                     ; $6e5e: $f0 $5b
	ldh a, [$5e]                                     ; $6e60: $f0 $5e
	ld b, h                                          ; $6e62: $44
	ld c, c                                          ; $6e63: $49
	ld [hl], a                                       ; $6e64: $77
	add hl, sp                                       ; $6e65: $39
	ld b, l                                          ; $6e66: $45
	and b                                            ; $6e67: $a0
	ld b, b                                          ; $6e68: $40
	add hl, sp                                       ; $6e69: $39
	inc [hl]                                         ; $6e6a: $34
	ld b, l                                          ; $6e6b: $45
	inc a                                            ; $6e6c: $3c
	dec sp                                           ; $6e6d: $3b
	dec a                                            ; $6e6e: $3d
	ld c, h                                          ; $6e6f: $4c
	and b                                            ; $6e70: $a0
	cpl                                              ; $6e71: $2f
	ld b, e                                          ; $6e72: $43
	db $ed                                           ; $6e73: $ed
	ld h, e                                          ; $6e74: $63

jr_094_6e75:
	ld d, e                                          ; $6e75: $53
	sub h                                            ; $6e76: $94
	ld c, [hl]                                       ; $6e77: $4e
	ld d, d                                          ; $6e78: $52
	ld c, d                                          ; $6e79: $4a
	ld c, e                                          ; $6e7a: $4b
	xor h                                            ; $6e7b: $ac
	pop af                                           ; $6e7c: $f1
	cp c                                             ; $6e7d: $b9
	ldh a, [rVBK]                                    ; $6e7e: $f0 $4f
	ld c, d                                          ; $6e80: $4a
	ld e, h                                          ; $6e81: $5c
	ld a, [hl-]                                      ; $6e82: $3a
	jr c, jr_094_6ee2                                ; $6e83: $38 $5d

	ld e, d                                          ; $6e85: $5a
	ld c, h                                          ; $6e86: $4c
	and b                                            ; $6e87: $a0
	ld e, [hl]                                       ; $6e88: $5e
	dec sp                                           ; $6e89: $3b
	ld c, b                                          ; $6e8a: $48
	ldh a, [$29]                                     ; $6e8b: $f0 $29
	ld a, $38                                        ; $6e8d: $3e $38
	xor l                                            ; $6e8f: $ad
	db $ec                                           ; $6e90: $ec
	ld b, $38                                        ; $6e91: $06 $38
	jr c, jr_094_6e36                                ; $6e93: $38 $a1

	ld b, [hl]                                       ; $6e95: $46
	ld d, a                                          ; $6e96: $57
	ld d, e                                          ; $6e97: $53
	ld c, c                                          ; $6e98: $49
	add hl, sp                                       ; $6e99: $39
	xor b                                            ; $6e9a: $a8
	ld c, h                                          ; $6e9b: $4c
	add l                                            ; $6e9c: $85
	inc [hl]                                         ; $6e9d: $34
	db $ec                                           ; $6e9e: $ec
	ld b, $ec                                        ; $6e9f: $06 $ec
	ld a, [bc]                                       ; $6ea1: $0a
	and c                                            ; $6ea2: $a1

jr_094_6ea3:
	ld hl, $20ad                                     ; $6ea3: $21 $ad $20
	db $ec                                           ; $6ea6: $ec
	ld b, $ec                                        ; $6ea7: $06 $ec
	ld a, [bc]                                       ; $6ea9: $0a
	and c                                            ; $6eaa: $a1
	cpl                                              ; $6eab: $2f
	ld b, e                                          ; $6eac: $43
	jr c, jr_094_6ee7                                ; $6ead: $38 $38

	ld b, l                                          ; $6eaf: $45
	inc [hl]                                         ; $6eb0: $34
	db $ec                                           ; $6eb1: $ec
	ld b, $a8                                        ; $6eb2: $06 $a8
	ld e, d                                          ; $6eb4: $5a
	add hl, sp                                       ; $6eb5: $39
	and c                                            ; $6eb6: $a1
	ld d, h                                          ; $6eb7: $54
	ld c, l                                          ; $6eb8: $4d
	inc [hl]                                         ; $6eb9: $34
	sbc [hl]                                         ; $6eba: $9e
	inc a                                            ; $6ebb: $3c
	ld d, b                                          ; $6ebc: $50
	inc de                                           ; $6ebd: $13
	pop af                                           ; $6ebe: $f1
	add hl, hl                                       ; $6ebf: $29
	ld a, $3c                                        ; $6ec0: $3e $3c
	dec sp                                           ; $6ec2: $3b
	dec a                                            ; $6ec3: $3d
	ld b, d                                          ; $6ec4: $42
	xor b                                            ; $6ec5: $a8
	sbc h                                            ; $6ec6: $9c
	dec sp                                           ; $6ec7: $3b
	ld c, c                                          ; $6ec8: $49
	inc [hl]                                         ; $6ec9: $34
	add a                                            ; $6eca: $87
	pop af                                           ; $6ecb: $f1
	inc d                                            ; $6ecc: $14
	ld b, a                                          ; $6ecd: $47
	ld d, c                                          ; $6ece: $51
	ld c, [hl]                                       ; $6ecf: $4e
	ld c, h                                          ; $6ed0: $4c
	and b                                            ; $6ed1: $a0
	cpl                                              ; $6ed2: $2f
	ld b, e                                          ; $6ed3: $43
	db $ec                                           ; $6ed4: $ec
	dec hl                                           ; $6ed5: $2b
	ldh a, [$66]                                     ; $6ed6: $f0 $66
	ld b, c                                          ; $6ed8: $41
	ld c, d                                          ; $6ed9: $4a
	inc de                                           ; $6eda: $13
	ld d, l                                          ; $6edb: $55
	ld c, l                                          ; $6edc: $4d
	ld c, [hl]                                       ; $6edd: $4e
	ld a, [hl-]                                      ; $6ede: $3a
	ld b, c                                          ; $6edf: $41
	ccf                                              ; $6ee0: $3f
	xor h                                            ; $6ee1: $ac

jr_094_6ee2:
	add sp, $6f                                      ; $6ee2: $e8 $6f
	and b                                            ; $6ee4: $a0
	xor $1f                                          ; $6ee5: $ee $1f

jr_094_6ee7:
	inc [hl]                                         ; $6ee7: $34
	add a                                            ; $6ee8: $87
	pop af                                           ; $6ee9: $f1
	inc d                                            ; $6eea: $14
	ld b, a                                          ; $6eeb: $47
	ld d, c                                          ; $6eec: $51
	ld c, [hl]                                       ; $6eed: $4e
	ld h, e                                          ; $6eee: $63
	and b                                            ; $6eef: $a0
	cpl                                              ; $6ef0: $2f
	ld b, e                                          ; $6ef1: $43
	db $ec                                           ; $6ef2: $ec
	sub $ac                                          ; $6ef3: $d6 $ac
	ldh a, [$66]                                     ; $6ef5: $f0 $66
	ld b, c                                          ; $6ef7: $41
	ld c, d                                          ; $6ef8: $4a
	ld c, a                                          ; $6ef9: $4f
	ld d, b                                          ; $6efa: $50
	ld e, [hl]                                       ; $6efb: $5e
	dec a                                            ; $6efc: $3d
	ld a, [hl-]                                      ; $6efd: $3a
	xor b                                            ; $6efe: $a8
	ld [$4876], a                                    ; $6eff: $ea $76 $48
	and b                                            ; $6f02: $a0
	ld hl, $10ee                                     ; $6f03: $21 $ee $10
	xor b                                            ; $6f06: $a8
	jr nz, @+$4b                                     ; $6f07: $20 $49

	inc [hl]                                         ; $6f09: $34
	ld c, c                                          ; $6f0a: $49
	ld d, a                                          ; $6f0b: $57
	ld b, [hl]                                       ; $6f0c: $46
	ld e, [hl]                                       ; $6f0d: $5e
	sbc h                                            ; $6f0e: $9c
	xor h                                            ; $6f0f: $ac
	pop af                                           ; $6f10: $f1
	and c                                            ; $6f11: $a1
	dec sp                                           ; $6f12: $3b
	ccf                                              ; $6f13: $3f
	ld h, h                                          ; $6f14: $64
	ld d, l                                          ; $6f15: $55
	ld h, e                                          ; $6f16: $63
	ld c, h                                          ; $6f17: $4c
	ld c, b                                          ; $6f18: $48
	and b                                            ; $6f19: $a0
	cpl                                              ; $6f1a: $2f
	ld b, e                                          ; $6f1b: $43
	ld [$1368], a                                    ; $6f1c: $ea $68 $13
	ld [$ad5b], a                                    ; $6f1f: $ea $5b $ad
	ld [$485e], a                                    ; $6f22: $ea $5e $48
	and b                                            ; $6f25: $a0
	cpl                                              ; $6f26: $2f
	ld [hl-], a                                      ; $6f27: $32
	db $ec                                           ; $6f28: $ec
	dec hl                                           ; $6f29: $2b
	inc de                                           ; $6f2a: $13
	ldh a, [$66]                                     ; $6f2b: $f0 $66
	ld b, c                                          ; $6f2d: $41
	ld c, d                                          ; $6f2e: $4a
	ld d, l                                          ; $6f2f: $55
	ld c, l                                          ; $6f30: $4d
	ld c, [hl]                                       ; $6f31: $4e
	ld a, [hl-]                                      ; $6f32: $3a
	ld b, c                                          ; $6f33: $41
	ccf                                              ; $6f34: $3f
	xor h                                            ; $6f35: $ac
	add sp, $6f                                      ; $6f36: $e8 $6f
	and e                                            ; $6f38: $a3
	cpl                                              ; $6f39: $2f
	ld [hl-], a                                      ; $6f3a: $32
	db $ec                                           ; $6f3b: $ec
	sub $ac                                          ; $6f3c: $d6 $ac
	ldh a, [$66]                                     ; $6f3e: $f0 $66
	ld b, c                                          ; $6f40: $41
	ld c, d                                          ; $6f41: $4a
	ld c, a                                          ; $6f42: $4f
	ld d, b                                          ; $6f43: $50
	ld e, [hl]                                       ; $6f44: $5e
	dec a                                            ; $6f45: $3d
	ld a, [hl-]                                      ; $6f46: $3a
	xor b                                            ; $6f47: $a8
	ld [$4876], a                                    ; $6f48: $ea $76 $48
	and e                                            ; $6f4b: $a3
	cpl                                              ; $6f4c: $2f
	ld [hl-], a                                      ; $6f4d: $32
	ld [$1368], a                                    ; $6f4e: $ea $68 $13
	ld [$ad5b], a                                    ; $6f51: $ea $5b $ad
	ld [$485e], a                                    ; $6f54: $ea $5e $48
	and e                                            ; $6f57: $a3
	cpl                                              ; $6f58: $2f
	ld b, e                                          ; $6f59: $43
	db $ec                                           ; $6f5a: $ec
	dec hl                                           ; $6f5b: $2b
	inc de                                           ; $6f5c: $13
	ldh a, [$66]                                     ; $6f5d: $f0 $66
	ld b, c                                          ; $6f5f: $41
	ld c, d                                          ; $6f60: $4a
	ld d, l                                          ; $6f61: $55
	ld c, l                                          ; $6f62: $4d
	ld c, [hl]                                       ; $6f63: $4e
	ld a, [hl-]                                      ; $6f64: $3a
	ld b, c                                          ; $6f65: $41
	ccf                                              ; $6f66: $3f
	xor h                                            ; $6f67: $ac
	add sp, $6f                                      ; $6f68: $e8 $6f
	and b                                            ; $6f6a: $a0
	add hl, bc                                       ; $6f6b: $09
	cpl                                              ; $6f6c: $2f
	ld b, e                                          ; $6f6d: $43
	db $ed                                           ; $6f6e: $ed
	ld d, a                                          ; $6f6f: $57
	xor h                                            ; $6f70: $ac
	halt                                             ; $6f71: $76
	db $ec                                           ; $6f72: $ec
	inc h                                            ; $6f73: $24
	ld b, h                                          ; $6f74: $44
	and b                                            ; $6f75: $a0
	cpl                                              ; $6f76: $2f
	ld b, e                                          ; $6f77: $43
	ld a, $3c                                        ; $6f78: $3e $3c
	ld a, $34                                        ; $6f7a: $3e $34
	ldh a, [$98]                                     ; $6f7c: $f0 $98
	inc a                                            ; $6f7e: $3c
	ld d, b                                          ; $6f7f: $50
	ld c, a                                          ; $6f80: $4f
	inc de                                           ; $6f81: $13
	db $eb                                           ; $6f82: $eb
	dec a                                            ; $6f83: $3d
	ld [$a85b], a                                    ; $6f84: $ea $5b $a8
	pop af                                           ; $6f87: $f1
	xor b                                            ; $6f88: $a8
	ld a, $38                                        ; $6f89: $3e $38
	ld a, [hl-]                                      ; $6f8b: $3a
	ld [hl], h                                       ; $6f8c: $74
	and b                                            ; $6f8d: $a0
	cpl                                              ; $6f8e: $2f
	ld h, $ed                                        ; $6f8f: $26 $ed
	rst JumpTable                                          ; $6f91: $c7
	pop af                                           ; $6f92: $f1
	ld [de], a                                       ; $6f93: $12
	ld e, c                                          ; $6f94: $59
	ld h, l                                          ; $6f95: $65
	dec h                                            ; $6f96: $25
	add hl, bc                                       ; $6f97: $09
	cpl                                              ; $6f98: $2f
	ld [hl-], a                                      ; $6f99: $32
	ld b, c                                          ; $6f9a: $41
	inc [hl]                                         ; $6f9b: $34
	ldh a, [$98]                                     ; $6f9c: $f0 $98
	ld b, h                                          ; $6f9e: $44
	ld e, a                                          ; $6f9f: $5f
	add hl, sp                                       ; $6fa0: $39
	ld [hl], $33                                     ; $6fa1: $36 $33
	add hl, bc                                       ; $6fa3: $09
	ld b, [hl]                                       ; $6fa4: $46
	dec sp                                           ; $6fa5: $3b
	inc [hl]                                         ; $6fa6: $34
	ld d, $a0                                        ; $6fa7: $16 $a0
	cpl                                              ; $6fa9: $2f
	ld b, e                                          ; $6faa: $43
	ld b, [hl]                                       ; $6fab: $46
	dec sp                                           ; $6fac: $3b
	inc [hl]                                         ; $6fad: $34
	db $ed                                           ; $6fae: $ed
	xor c                                            ; $6faf: $a9
	and b                                            ; $6fb0: $a0
	ld b, [hl]                                       ; $6fb1: $46
	dec sp                                           ; $6fb2: $3b
	ld c, b                                          ; $6fb3: $48
	ld d, $a0                                        ; $6fb4: $16 $a0
	cpl                                              ; $6fb6: $2f
	ld b, e                                          ; $6fb7: $43
	ld b, [hl]                                       ; $6fb8: $46
	dec sp                                           ; $6fb9: $3b
	inc [hl]                                         ; $6fba: $34
	db $ec                                           ; $6fbb: $ec
	rst SubAFromDE                                          ; $6fbc: $df
	and b                                            ; $6fbd: $a0
	cpl                                              ; $6fbe: $2f
	ld b, e                                          ; $6fbf: $43
	ld b, [hl]                                       ; $6fc0: $46
	ld c, l                                          ; $6fc1: $4d
	inc [hl]                                         ; $6fc2: $34
	db $ec                                           ; $6fc3: $ec
	ldh [$a1], a                                     ; $6fc4: $e0 $a1
	db $ed                                           ; $6fc6: $ed
	ld b, [hl]                                       ; $6fc7: $46
	inc [hl]                                         ; $6fc8: $34
	ld d, $a0                                        ; $6fc9: $16 $a0
	cpl                                              ; $6fcb: $2f
	ld b, e                                          ; $6fcc: $43
	ld b, [hl]                                       ; $6fcd: $46
	dec sp                                           ; $6fce: $3b
	inc [hl]                                         ; $6fcf: $34
	db $ec                                           ; $6fd0: $ec
	pop hl                                           ; $6fd1: $e1
	and b                                            ; $6fd2: $a0
	cpl                                              ; $6fd3: $2f
	ld b, e                                          ; $6fd4: $43
	ld b, [hl]                                       ; $6fd5: $46
	dec sp                                           ; $6fd6: $3b
	inc [hl]                                         ; $6fd7: $34
	db $ed                                           ; $6fd8: $ed
	ld d, e                                          ; $6fd9: $53
	and b                                            ; $6fda: $a0
	cpl                                              ; $6fdb: $2f
	ld b, e                                          ; $6fdc: $43
	ld b, [hl]                                       ; $6fdd: $46
	dec sp                                           ; $6fde: $3b
	inc [hl]                                         ; $6fdf: $34
	db $eb                                           ; $6fe0: $eb
	ld a, [$2fa0]                                    ; $6fe1: $fa $a0 $2f
	ld b, e                                          ; $6fe4: $43
	ld b, [hl]                                       ; $6fe5: $46
	ld c, l                                          ; $6fe6: $4d
	inc [hl]                                         ; $6fe7: $34
	db $eb                                           ; $6fe8: $eb
	db $fc                                           ; $6fe9: $fc
	and c                                            ; $6fea: $a1
	cpl                                              ; $6feb: $2f
	ld b, e                                          ; $6fec: $43
	ld b, [hl]                                       ; $6fed: $46
	dec sp                                           ; $6fee: $3b
	inc [hl]                                         ; $6fef: $34
	db $ec                                           ; $6ff0: $ec
	and $a0                                          ; $6ff1: $e6 $a0
	ldh a, [hDisp0_SCY]                                     ; $6ff3: $f0 $83
	ldh a, [rTIMA]                                   ; $6ff5: $f0 $05
	ld l, b                                          ; $6ff7: $68
	db $eb                                           ; $6ff8: $eb
	ld e, [hl]                                       ; $6ff9: $5e
	xor b                                            ; $6ffa: $a8
	ld d, h                                          ; $6ffb: $54
	ld c, l                                          ; $6ffc: $4d
	ld c, b                                          ; $6ffd: $48
	db $eb                                           ; $6ffe: $eb
	ld h, b                                          ; $6fff: $60
	ld a, [hl-]                                      ; $7000: $3a
	ld b, d                                          ; $7001: $42
	and b                                            ; $7002: $a0
	adc c                                            ; $7003: $89
	sbc a                                            ; $7004: $9f
	ld c, d                                          ; $7005: $4a
	pop af                                           ; $7006: $f1
	ld a, h                                          ; $7007: $7c
	ld b, b                                          ; $7008: $40
	add hl, sp                                       ; $7009: $39
	ld c, c                                          ; $700a: $49
	inc de                                           ; $700b: $13
	ld [$ac4d], a                                    ; $700c: $ea $4d $ac
	ld l, h                                          ; $700f: $6c
	ld b, c                                          ; $7010: $41
	ld a, [hl-]                                      ; $7011: $3a
	ld d, e                                          ; $7012: $53
	ld [hl], d                                       ; $7013: $72
	ccf                                              ; $7014: $3f
	dec a                                            ; $7015: $3d
	inc a                                            ; $7016: $3c
	ld d, b                                          ; $7017: $50
	ld c, b                                          ; $7018: $48
	and b                                            ; $7019: $a0
	cpl                                              ; $701a: $2f
	ld b, e                                          ; $701b: $43
	ldh a, [$f4]                                     ; $701c: $f0 $f4
	ld e, [hl]                                       ; $701e: $5e
	ccf                                              ; $701f: $3f
	ccf                                              ; $7020: $3f
	ld d, l                                          ; $7021: $55
	ld c, l                                          ; $7022: $4d
	dec a                                            ; $7023: $3d
	ld b, c                                          ; $7024: $41
	ld b, h                                          ; $7025: $44
	xor b                                            ; $7026: $a8
	ld b, [hl]                                       ; $7027: $46
	ld d, a                                          ; $7028: $57
	ld d, e                                          ; $7029: $53
	ld c, c                                          ; $702a: $49
	add hl, sp                                       ; $702b: $39
	and b                                            ; $702c: $a0
	ld b, l                                          ; $702d: $45
	inc a                                            ; $702e: $3c
	dec sp                                           ; $702f: $3b
	dec a                                            ; $7030: $3d
	xor h                                            ; $7031: $ac
	pop af                                           ; $7032: $f1
	ld c, d                                          ; $7033: $4a
	ld e, l                                          ; $7034: $5d
	pop af                                           ; $7035: $f1
	inc b                                            ; $7036: $04
	dec sp                                           ; $7037: $3b
	ccf                                              ; $7038: $3f
	ld c, a                                          ; $7039: $4f
	ld d, b                                          ; $703a: $50
	ld e, [hl]                                       ; $703b: $5e
	ccf                                              ; $703c: $3f
	and b                                            ; $703d: $a0
	ld d, h                                          ; $703e: $54
	ld c, l                                          ; $703f: $4d
	inc [hl]                                         ; $7040: $34
	ldh a, [hDisp0_SCY]                                     ; $7041: $f0 $83
	ldh a, [rTIMA]                                   ; $7043: $f0 $05
	ld l, b                                          ; $7045: $68
	db $eb                                           ; $7046: $eb
	ld h, b                                          ; $7047: $60
	inc de                                           ; $7048: $13
	ld c, d                                          ; $7049: $4a
	ld d, c                                          ; $704a: $51
	and b                                            ; $704b: $a0
	cpl                                              ; $704c: $2f
	ld b, e                                          ; $704d: $43
	ld e, [hl]                                       ; $704e: $5e
	dec sp                                           ; $704f: $3b
	inc [hl]                                         ; $7050: $34
	halt                                             ; $7051: $76
	ld b, a                                          ; $7052: $47
	and c                                            ; $7053: $a1
	xor $2d                                          ; $7054: $ee $2d
	xor l                                            ; $7056: $ad
	pop af                                           ; $7057: $f1
	or c                                             ; $7058: $b1
	ldh a, [c]                                       ; $7059: $f2
	ld [hl], l                                       ; $705a: $75
	ld b, h                                          ; $705b: $44
	dec sp                                           ; $705c: $3b
	dec a                                            ; $705d: $3d
	ld c, d                                          ; $705e: $4a
	ld a, $66                                        ; $705f: $3e $66
	add hl, sp                                       ; $7061: $39
	inc a                                            ; $7062: $3c
	and c                                            ; $7063: $a1
	cpl                                              ; $7064: $2f
	ld b, e                                          ; $7065: $43
	ld b, b                                          ; $7066: $40
	ld b, c                                          ; $7067: $41
	ld a, [hl-]                                      ; $7068: $3a
	ld d, h                                          ; $7069: $54
	ld c, c                                          ; $706a: $49
	ld a, [hl-]                                      ; $706b: $3a
	jr c, jr_094_70b3                                ; $706c: $38 $45

	xor b                                            ; $706e: $a8
	ld b, [hl]                                       ; $706f: $46
	ld d, a                                          ; $7070: $57
	ld d, e                                          ; $7071: $53
	ld c, c                                          ; $7072: $49
	add hl, sp                                       ; $7073: $39
	and b                                            ; $7074: $a0
	ld [$ac57], a                                    ; $7075: $ea $57 $ac
	ldh a, [$29]                                     ; $7078: $f0 $29
	ld a, $38                                        ; $707a: $3e $38
	ld c, d                                          ; $707c: $4a
	ld d, c                                          ; $707d: $51
	and b                                            ; $707e: $a0
	adc b                                            ; $707f: $88
	sub c                                            ; $7080: $91
	ld c, e                                          ; $7081: $4b
	adc c                                            ; $7082: $89
	sbc a                                            ; $7083: $9f
	ld c, d                                          ; $7084: $4a
	pop af                                           ; $7085: $f1
	ld a, h                                          ; $7086: $7c
	ld b, b                                          ; $7087: $40
	add hl, sp                                       ; $7088: $39
	ld c, c                                          ; $7089: $49
	inc de                                           ; $708a: $13
	ld [hl], a                                       ; $708b: $77
	dec sp                                           ; $708c: $3b
	ccf                                              ; $708d: $3f
	jr c, jr_094_70cd                                ; $708e: $38 $3d

	ld b, d                                          ; $7090: $42
	ld c, d                                          ; $7091: $4a
	ld d, c                                          ; $7092: $51
	ld d, e                                          ; $7093: $53
	ld c, b                                          ; $7094: $48
	and b                                            ; $7095: $a0
	db $ed                                           ; $7096: $ed
	ld d, a                                          ; $7097: $57
	xor h                                            ; $7098: $ac
	ld b, [hl]                                       ; $7099: $46
	ld a, [hl-]                                      ; $709a: $3a
	dec a                                            ; $709b: $3d
	db $ec                                           ; $709c: $ec
	inc h                                            ; $709d: $24
	ld b, d                                          ; $709e: $42
	ld c, e                                          ; $709f: $4b
	sbc h                                            ; $70a0: $9c
	ld c, h                                          ; $70a1: $4c
	xor b                                            ; $70a2: $a8
	db $eb                                           ; $70a3: $eb
	ld h, b                                          ; $70a4: $60
	ld b, l                                          ; $70a5: $45
	and b                                            ; $70a6: $a0
	cpl                                              ; $70a7: $2f
	ld b, e                                          ; $70a8: $43
	db $ec                                           ; $70a9: $ec
	ldh [rHDMA3], a                                  ; $70aa: $e0 $53
	inc [hl]                                         ; $70ac: $34
	halt                                             ; $70ad: $76
	ld b, a                                          ; $70ae: $47
	and c                                            ; $70af: $a1
	ld l, h                                          ; $70b0: $6c
	inc [hl]                                         ; $70b1: $34
	pop af                                           ; $70b2: $f1

jr_094_70b3:
	or l                                             ; $70b3: $b5
	ld a, b                                          ; $70b4: $78
	ld b, d                                          ; $70b5: $42
	adc a                                            ; $70b6: $8f
	ldh a, [$a3]                                     ; $70b7: $f0 $a3
	ld b, a                                          ; $70b9: $47
	inc de                                           ; $70ba: $13
	pop af                                           ; $70bb: $f1
	inc c                                            ; $70bc: $0c
	ld d, c                                          ; $70bd: $51
	ld c, [hl]                                       ; $70be: $4e
	ldh a, [$b0]                                     ; $70bf: $f0 $b0
	pop af                                           ; $70c1: $f1
	ld a, $45                                        ; $70c2: $3e $45
	and b                                            ; $70c4: $a0
	cpl                                              ; $70c5: $2f
	ld b, e                                          ; $70c6: $43
	ld h, e                                          ; $70c7: $63
	ldh a, [rAUD1SWEEP]                              ; $70c8: $f0 $10
	ld h, e                                          ; $70ca: $63
	ldh a, [rAUD1SWEEP]                              ; $70cb: $f0 $10

jr_094_70cd:
	ldh a, [rSVBK]                                   ; $70cd: $f0 $70
	ld d, d                                          ; $70cf: $52
	ld c, d                                          ; $70d0: $4a
	ld c, b                                          ; $70d1: $48
	dec [hl]                                         ; $70d2: $35
	rla                                              ; $70d3: $17
	adc c                                            ; $70d4: $89
	sbc a                                            ; $70d5: $9f
	ld c, d                                          ; $70d6: $4a
	pop af                                           ; $70d7: $f1
	ld a, h                                          ; $70d8: $7c
	ld a, $3f                                        ; $70d9: $3e $3f
	ld d, l                                          ; $70db: $55
	ld c, l                                          ; $70dc: $4d
	ccf                                              ; $70dd: $3f
	ld c, a                                          ; $70de: $4f
	inc de                                           ; $70df: $13
	db $ec                                           ; $70e0: $ec
	cp c                                             ; $70e1: $b9
	ld b, d                                          ; $70e2: $42
	ld b, a                                          ; $70e3: $47
	and b                                            ; $70e4: $a0
	ldh a, [$8c]                                     ; $70e5: $f0 $8c
	inc [hl]                                         ; $70e7: $34
	call nc, $d8ec                                   ; $70e8: $d4 $ec $d8
	xor b                                            ; $70eb: $a8
	ld l, a                                          ; $70ec: $6f
	ld b, d                                          ; $70ed: $42
	ldh a, [$6f]                                     ; $70ee: $f0 $6f
	ldh a, [$0b]                                     ; $70f0: $f0 $0b
	ld c, d                                          ; $70f2: $4a
	ld a, $66                                        ; $70f3: $3e $66
	and b                                            ; $70f5: $a0
	cpl                                              ; $70f6: $2f
	ld b, e                                          ; $70f7: $43
	rst JumpTable                                          ; $70f8: $c7
	ld b, h                                          ; $70f9: $44
	ld c, h                                          ; $70fa: $4c
	xor b                                            ; $70fb: $a8
	ld b, [hl]                                       ; $70fc: $46
	ld d, a                                          ; $70fd: $57
	ld d, e                                          ; $70fe: $53
	ld c, c                                          ; $70ff: $49
	add hl, sp                                       ; $7100: $39
	and b                                            ; $7101: $a0
	ldh a, [rAUD3ENA]                                ; $7102: $f0 $1a
	ld [hl], e                                       ; $7104: $73
	ldh a, [$fd]                                     ; $7105: $f0 $fd
	ld e, c                                          ; $7107: $59
	ldh a, [rAUD4LEN]                                ; $7108: $f0 $20
	ld e, c                                          ; $710a: $59
	add e                                            ; $710b: $83
	ldh a, [rWY]                                     ; $710c: $f0 $4a
	ld e, c                                          ; $710e: $59
	xor b                                            ; $710f: $a8
	jp hl                                            ; $7110: $e9


	db $dd                                           ; $7111: $dd
	ld b, l                                          ; $7112: $45
	and b                                            ; $7113: $a0
	adc b                                            ; $7114: $88
	sub c                                            ; $7115: $91
	ld c, e                                          ; $7116: $4b
	adc c                                            ; $7117: $89
	sbc a                                            ; $7118: $9f
	ld c, d                                          ; $7119: $4a
	pop af                                           ; $711a: $f1
	ld a, h                                          ; $711b: $7c
	ld b, b                                          ; $711c: $40
	add hl, sp                                       ; $711d: $39
	ld c, c                                          ; $711e: $49
	inc de                                           ; $711f: $13
	ld [hl], a                                       ; $7120: $77
	dec sp                                           ; $7121: $3b
	db $ec                                           ; $7122: $ec
	add hl, de                                       ; $7123: $19
	ld e, l                                          ; $7124: $5d
	ld e, d                                          ; $7125: $5a
	ld c, h                                          ; $7126: $4c
	and b                                            ; $7127: $a0
	ld a, a                                          ; $7128: $7f
	ld b, a                                          ; $7129: $47
	sub [hl]                                         ; $712a: $96
	dec sp                                           ; $712b: $3b
	ccf                                              ; $712c: $3f
	ld c, a                                          ; $712d: $4f
	ld d, b                                          ; $712e: $50
	ld e, [hl]                                       ; $712f: $5e
	ld c, [hl]                                       ; $7130: $4e
	ld c, c                                          ; $7131: $49
	inc de                                           ; $7132: $13
	ld [hl], a                                       ; $7133: $77
	add hl, sp                                       ; $7134: $39
	ld e, l                                          ; $7135: $5d
	ld e, d                                          ; $7136: $5a
	and b                                            ; $7137: $a0
	ldh a, [hDisp0_SCY]                                     ; $7138: $f0 $83
	ldh a, [rTIMA]                                   ; $713a: $f0 $05
	ld l, b                                          ; $713c: $68
	db $eb                                           ; $713d: $eb
	ld h, b                                          ; $713e: $60
	ld b, l                                          ; $713f: $45
	and b                                            ; $7140: $a0
	add b                                            ; $7141: $80
	inc [hl]                                         ; $7142: $34
	add b                                            ; $7143: $80
	jr c, jr_094_7190                                ; $7144: $38 $4a

	ld b, l                                          ; $7146: $45
	ld c, b                                          ; $7147: $48
	add b                                            ; $7148: $80
	jr c, jr_094_7195                                ; $7149: $38 $4a

	xor b                                            ; $714b: $a8
	db $ec                                           ; $714c: $ec
	ld sp, hl                                        ; $714d: $f9
	inc [hl]                                         ; $714e: $34
	pop af                                           ; $714f: $f1
	ld c, $38                                        ; $7150: $0e $38
	ldh a, [$2c]                                     ; $7152: $f0 $2c
	ld b, a                                          ; $7154: $47
	ld h, a                                          ; $7155: $67
	dec sp                                           ; $7156: $3b
	dec a                                            ; $7157: $3d
	inc a                                            ; $7158: $3c
	ld d, b                                          ; $7159: $50
	ld c, b                                          ; $715a: $48
	add hl, bc                                       ; $715b: $09
	ldh a, [$8c]                                     ; $715c: $f0 $8c
	inc [hl]                                         ; $715e: $34
	call nc, $3e4a                                   ; $715f: $d4 $4a $3e
	ld h, [hl]                                       ; $7162: $66
	xor b                                            ; $7163: $a8
	ld e, d                                          ; $7164: $5a
	ld d, h                                          ; $7165: $54
	ld c, d                                          ; $7166: $4a
	pop af                                           ; $7167: $f1
	ld a, h                                          ; $7168: $7c
	ld b, b                                          ; $7169: $40
	add hl, sp                                       ; $716a: $39
	ld c, c                                          ; $716b: $49
	ld l, a                                          ; $716c: $6f
	ld b, d                                          ; $716d: $42
	ldh a, [$6f]                                     ; $716e: $f0 $6f
	ldh a, [$0b]                                     ; $7170: $f0 $0b
	ld b, l                                          ; $7172: $45
	and b                                            ; $7173: $a0
	adc b                                            ; $7174: $88
	sub c                                            ; $7175: $91
	ld c, e                                          ; $7176: $4b
	adc c                                            ; $7177: $89
	sbc a                                            ; $7178: $9f
	ld c, d                                          ; $7179: $4a
	pop af                                           ; $717a: $f1
	ld a, h                                          ; $717b: $7c
	ld b, b                                          ; $717c: $40
	add hl, sp                                       ; $717d: $39
	ld c, c                                          ; $717e: $49
	inc de                                           ; $717f: $13
	ld [hl], a                                       ; $7180: $77
	dec sp                                           ; $7181: $3b
	db $ec                                           ; $7182: $ec
	add hl, de                                       ; $7183: $19
	ld e, l                                          ; $7184: $5d
	ld e, d                                          ; $7185: $5a
	ld c, b                                          ; $7186: $48
	and b                                            ; $7187: $a0
	ld l, d                                          ; $7188: $6a
	ld l, b                                          ; $7189: $68
	xor h                                            ; $718a: $ac
	ldh a, [hDisp0_SCY]                                     ; $718b: $f0 $83
	ldh a, [rTIMA]                                   ; $718d: $f0 $05
	ld l, b                                          ; $718f: $68

jr_094_7190:
	ld b, h                                          ; $7190: $44
	ld b, l                                          ; $7191: $45
	ld c, h                                          ; $7192: $4c
	xor b                                            ; $7193: $a8
	db $eb                                           ; $7194: $eb

jr_094_7195:
	ld h, b                                          ; $7195: $60
	ld b, h                                          ; $7196: $44
	ld b, l                                          ; $7197: $45
	and b                                            ; $7198: $a0
	pop de                                           ; $7199: $d1
	ld a, [hl]                                       ; $719a: $7e
	jr c, jr_094_71df                                ; $719b: $38 $42

	ld d, e                                          ; $719d: $53
	inc de                                           ; $719e: $13
	ldh a, [rAUD1LOW]                                ; $719f: $f0 $13
	ld d, l                                          ; $71a1: $55
	dec sp                                           ; $71a2: $3b
	ccf                                              ; $71a3: $3f
	ld e, b                                          ; $71a4: $58
	xor h                                            ; $71a5: $ac
	add a                                            ; $71a6: $87
	ldh a, [$5d]                                     ; $71a7: $f0 $5d
	ld b, h                                          ; $71a9: $44
	dec sp                                           ; $71aa: $3b
	dec a                                            ; $71ab: $3d
	ld b, c                                          ; $71ac: $41
	ld b, h                                          ; $71ad: $44
	inc a                                            ; $71ae: $3c
	ld d, b                                          ; $71af: $50
	and b                                            ; $71b0: $a0
	ld d, h                                          ; $71b1: $54
	ld c, l                                          ; $71b2: $4d
	xor h                                            ; $71b3: $ac
	ldh a, [hDisp0_SCY]                                     ; $71b4: $f0 $83
	ldh a, [rTIMA]                                   ; $71b6: $f0 $05
	ld l, b                                          ; $71b8: $68
	db $eb                                           ; $71b9: $eb
	ld h, b                                          ; $71ba: $60
	ld c, d                                          ; $71bb: $4a
	ld d, c                                          ; $71bc: $51
	and b                                            ; $71bd: $a0
	cpl                                              ; $71be: $2f
	ld b, e                                          ; $71bf: $43
	add sp, -$1b                                     ; $71c0: $e8 $e5
	and b                                            ; $71c2: $a0
	ld a, a                                          ; $71c3: $7f
	ld b, a                                          ; $71c4: $47
	sub [hl]                                         ; $71c5: $96
	dec sp                                           ; $71c6: $3b
	ccf                                              ; $71c7: $3f
	ldh a, [$08]                                     ; $71c8: $f0 $08
	ld a, $55                                        ; $71ca: $3e $55
	ccf                                              ; $71cc: $3f
	xor h                                            ; $71cd: $ac
	db $ec                                           ; $71ce: $ec
	jp hl                                            ; $71cf: $e9


	pop af                                           ; $71d0: $f1
	jr c, jr_094_7214                                ; $71d1: $38 $41

	ld b, h                                          ; $71d3: $44
	ld b, c                                          ; $71d4: $41
	ld b, h                                          ; $71d5: $44
	ld b, l                                          ; $71d6: $45
	and b                                            ; $71d7: $a0
	cpl                                              ; $71d8: $2f
	ld b, e                                          ; $71d9: $43
	db $eb                                           ; $71da: $eb
	db $fc                                           ; $71db: $fc
	ld b, a                                          ; $71dc: $47
	ld c, a                                          ; $71dd: $4f
	ld d, b                                          ; $71de: $50

jr_094_71df:
	ld e, [hl]                                       ; $71df: $5e
	ld c, l                                          ; $71e0: $4d
	ld a, e                                          ; $71e1: $7b
	inc de                                           ; $71e2: $13
	ld l, e                                          ; $71e3: $6b
	ld c, d                                          ; $71e4: $4a
	ld c, a                                          ; $71e5: $4f
	ldh a, [$29]                                     ; $71e6: $f0 $29
	ld a, $38                                        ; $71e8: $3e $38
	ld b, l                                          ; $71ea: $45
	and b                                            ; $71eb: $a0
	cp [hl]                                          ; $71ec: $be
	xor c                                            ; $71ed: $a9
	ldh a, [$29]                                     ; $71ee: $f0 $29
	ld a, $38                                        ; $71f0: $3e $38
	ld a, [hl-]                                      ; $71f2: $3a
	ld [hl], h                                       ; $71f3: $74
	and b                                            ; $71f4: $a0
	db $ed                                           ; $71f5: $ed
	ld d, a                                          ; $71f6: $57
	inc [hl]                                         ; $71f7: $34
	ldh a, [hDisp0_SCY]                                     ; $71f8: $f0 $83
	ldh a, [rTIMA]                                   ; $71fa: $f0 $05
	ld l, b                                          ; $71fc: $68
	ld b, h                                          ; $71fd: $44
	dec sp                                           ; $71fe: $3b
	dec a                                            ; $71ff: $3d
	inc de                                           ; $7200: $13
	ld b, l                                          ; $7201: $45
	ld c, h                                          ; $7202: $4c
	dec [hl]                                         ; $7203: $35
	inc hl                                           ; $7204: $23
	jp hl                                            ; $7205: $e9


	db $dd                                           ; $7206: $dd
	and b                                            ; $7207: $a0
	cpl                                              ; $7208: $2f
	ld b, e                                          ; $7209: $43
	ld b, [hl]                                       ; $720a: $46
	dec sp                                           ; $720b: $3b
	inc [hl]                                         ; $720c: $34
	db $ec                                           ; $720d: $ec
	and $a8                                          ; $720e: $e6 $a8
	ldh a, [$f4]                                     ; $7210: $f0 $f4
	ld e, [hl]                                       ; $7212: $5e

Jump_094_7213:
	ccf                                              ; $7213: $3f

jr_094_7214:
	ccf                                              ; $7214: $3f
	ld d, l                                          ; $7215: $55
	ld c, l                                          ; $7216: $4d
	dec a                                            ; $7217: $3d
	ld b, c                                          ; $7218: $41
	ld b, h                                          ; $7219: $44
	and b                                            ; $721a: $a0
	adc b                                            ; $721b: $88
	sub c                                            ; $721c: $91
	ld c, e                                          ; $721d: $4b
	adc c                                            ; $721e: $89
	sbc a                                            ; $721f: $9f
	ld c, d                                          ; $7220: $4a
	pop af                                           ; $7221: $f1
	ld a, h                                          ; $7222: $7c
	ld b, b                                          ; $7223: $40
	add hl, sp                                       ; $7224: $39
	ld c, c                                          ; $7225: $49
	inc de                                           ; $7226: $13
	ld [hl], a                                       ; $7227: $77
	dec sp                                           ; $7228: $3b
	db $ec                                           ; $7229: $ec
	add hl, de                                       ; $722a: $19
	ld e, l                                          ; $722b: $5d
	ld e, d                                          ; $722c: $5a
	xor h                                            ; $722d: $ac
	ld l, h                                          ; $722e: $6c
	ld b, c                                          ; $722f: $41
	ld a, [hl-]                                      ; $7230: $3a
	ld d, e                                          ; $7231: $53
	ld [hl], d                                       ; $7232: $72
	ccf                                              ; $7233: $3f
	dec a                                            ; $7234: $3d
	inc a                                            ; $7235: $3c
	ld d, b                                          ; $7236: $50
	xor e                                            ; $7237: $ab
	ret                                              ; $7238: $c9


	inc [hl]                                         ; $7239: $34
	ld c, h                                          ; $723a: $4c
	and b                                            ; $723b: $a0
	ret                                              ; $723c: $c9


	pop af                                           ; $723d: $f1
	sbc c                                            ; $723e: $99
	ld c, l                                          ; $723f: $4d
	ld c, [hl]                                       ; $7240: $4e
	ld c, h                                          ; $7241: $4c
	and b                                            ; $7242: $a0
	cpl                                              ; $7243: $2f
	ld [hl-], a                                      ; $7244: $32
	add sp, $04                                      ; $7245: $e8 $04
	ld b, a                                          ; $7247: $47
	inc de                                           ; $7248: $13
	db $eb                                           ; $7249: $eb
	dec a                                            ; $724a: $3d
	ld c, a                                          ; $724b: $4f
	ld d, b                                          ; $724c: $50
	ld e, [hl]                                       ; $724d: $5e
	ld c, [hl]                                       ; $724e: $4e
	ld a, [hl-]                                      ; $724f: $3a
	ld b, c                                          ; $7250: $41
	ccf                                              ; $7251: $3f
	xor h                                            ; $7252: $ac
	halt                                             ; $7253: $76
	ld c, e                                          ; $7254: $4b
	pop af                                           ; $7255: $f1
	and d                                            ; $7256: $a2
	ld a, c                                          ; $7257: $79
	pop af                                           ; $7258: $f1
	ld b, d                                          ; $7259: $42
	ld b, h                                          ; $725a: $44
	ld e, c                                          ; $725b: $59
	scf                                              ; $725c: $37
	inc sp                                           ; $725d: $33
	add hl, bc                                       ; $725e: $09
	cpl                                              ; $725f: $2f
	ld [hl-], a                                      ; $7260: $32
	ld l, e                                          ; $7261: $6b
	ld h, d                                          ; $7262: $62
	inc de                                           ; $7263: $13
	db $eb                                           ; $7264: $eb
	ld h, b                                          ; $7265: $60
	db $ec                                           ; $7266: $ec
	inc c                                            ; $7267: $0c
	ld a, [hl-]                                      ; $7268: $3a
	ld [hl], $33                                     ; $7269: $36 $33
	add hl, bc                                       ; $726b: $09
	cpl                                              ; $726c: $2f
	db $ec                                           ; $726d: $ec
	sbc e                                            ; $726e: $9b
	add hl, bc                                       ; $726f: $09
	cpl                                              ; $7270: $2f
	ld [hl-], a                                      ; $7271: $32
	db $dd                                           ; $7272: $dd
	db $ec                                           ; $7273: $ec
	sbc e                                            ; $7274: $9b
	ld b, d                                          ; $7275: $42
	inc de                                           ; $7276: $13
	db $ed                                           ; $7277: $ed
	add l                                            ; $7278: $85
	ld h, d                                          ; $7279: $62
	db $eb                                           ; $727a: $eb
	ld h, b                                          ; $727b: $60
	ld a, $45                                        ; $727c: $3e $45
	add hl, sp                                       ; $727e: $39
	and e                                            ; $727f: $a3
	cpl                                              ; $7280: $2f
	db $ed                                           ; $7281: $ed
	call $fdf0                                       ; $7282: $cd $f0 $fd
	ld e, c                                          ; $7285: $59
	add e                                            ; $7286: $83
	add hl, bc                                       ; $7287: $09
	cpl                                              ; $7288: $2f
	ld [hl-], a                                      ; $7289: $32
	db $dd                                           ; $728a: $dd
	db $ed                                           ; $728b: $ed
	call $fdf0                                       ; $728c: $cd $f0 $fd
	ld e, c                                          ; $728f: $59
	add e                                            ; $7290: $83
	ld h, d                                          ; $7291: $62
	inc de                                           ; $7292: $13
	db $eb                                           ; $7293: $eb
	ld h, b                                          ; $7294: $60
	ld a, $45                                        ; $7295: $3e $45
	add hl, sp                                       ; $7297: $39
	and e                                            ; $7298: $a3
	cpl                                              ; $7299: $2f
	di                                               ; $729a: $f3
	jr nz, @-$0e                                     ; $729b: $20 $f0

	ld a, d                                          ; $729d: $7a
	adc b                                            ; $729e: $88
	add hl, bc                                       ; $729f: $09
	cpl                                              ; $72a0: $2f
	ld [hl-], a                                      ; $72a1: $32
	db $dd                                           ; $72a2: $dd
	di                                               ; $72a3: $f3
	jr nz, @-$0e                                     ; $72a4: $20 $f0

	ld a, d                                          ; $72a6: $7a
	adc b                                            ; $72a7: $88
	ld h, d                                          ; $72a8: $62
	inc de                                           ; $72a9: $13
	db $eb                                           ; $72aa: $eb
	ld h, b                                          ; $72ab: $60
	ld a, $45                                        ; $72ac: $3e $45
	add hl, sp                                       ; $72ae: $39
	and e                                            ; $72af: $a3
	cpl                                              ; $72b0: $2f
	sbc b                                            ; $72b1: $98
	pop af                                           ; $72b2: $f1
	inc sp                                           ; $72b3: $33
	ld e, c                                          ; $72b4: $59
	sub e                                            ; $72b5: $93
	add e                                            ; $72b6: $83
	ldh a, [$fd]                                     ; $72b7: $f0 $fd
	ldh a, [$3d]                                     ; $72b9: $f0 $3d
	ldh a, [rOBP1]                                   ; $72bb: $f0 $49
	ldh a, [rAUDTERM]                                ; $72bd: $f0 $25
	add hl, bc                                       ; $72bf: $09
	cpl                                              ; $72c0: $2f
	ld [hl-], a                                      ; $72c1: $32
	db $dd                                           ; $72c2: $dd
	sbc b                                            ; $72c3: $98
	pop af                                           ; $72c4: $f1
	inc sp                                           ; $72c5: $33
	ld e, c                                          ; $72c6: $59
	sub e                                            ; $72c7: $93
	add e                                            ; $72c8: $83
	ldh a, [$fd]                                     ; $72c9: $f0 $fd
	ldh a, [$3d]                                     ; $72cb: $f0 $3d
	inc de                                           ; $72cd: $13
	ldh a, [rOBP1]                                   ; $72ce: $f0 $49
	ldh a, [rAUDTERM]                                ; $72d0: $f0 $25
	ld h, d                                          ; $72d2: $62
	db $eb                                           ; $72d3: $eb
	ld h, b                                          ; $72d4: $60
	ld a, $45                                        ; $72d5: $3e $45
	add hl, sp                                       ; $72d7: $39
	and e                                            ; $72d8: $a3
	cpl                                              ; $72d9: $2f
	ldh a, [rAUD3ENA]                                ; $72da: $f0 $1a
	ld h, l                                          ; $72dc: $65
	ldh a, [$35]                                     ; $72dd: $f0 $35
	ldh a, [$2b]                                     ; $72df: $f0 $2b
	add hl, bc                                       ; $72e1: $09
	cpl                                              ; $72e2: $2f
	ld [hl-], a                                      ; $72e3: $32
	db $dd                                           ; $72e4: $dd
	ldh a, [rAUD3ENA]                                ; $72e5: $f0 $1a
	ld h, l                                          ; $72e7: $65
	ldh a, [$35]                                     ; $72e8: $f0 $35
	ldh a, [$2b]                                     ; $72ea: $f0 $2b
	ld h, d                                          ; $72ec: $62
	inc de                                           ; $72ed: $13
	db $eb                                           ; $72ee: $eb
	ld h, b                                          ; $72ef: $60
	ld a, $45                                        ; $72f0: $3e $45
	add hl, sp                                       ; $72f2: $39
	and e                                            ; $72f3: $a3
	cpl                                              ; $72f4: $2f
	di                                               ; $72f5: $f3
	inc c                                            ; $72f6: $0c
	ldh a, [c]                                       ; $72f7: $f2
	rla                                              ; $72f8: $17
	ld b, d                                          ; $72f9: $42
	ldh a, [c]                                       ; $72fa: $f2
	xor a                                            ; $72fb: $af
	add hl, bc                                       ; $72fc: $09
	cpl                                              ; $72fd: $2f
	ld [hl-], a                                      ; $72fe: $32
	db $dd                                           ; $72ff: $dd
	di                                               ; $7300: $f3
	inc c                                            ; $7301: $0c
	ldh a, [c]                                       ; $7302: $f2
	rla                                              ; $7303: $17
	ld b, d                                          ; $7304: $42
	ldh a, [c]                                       ; $7305: $f2
	xor a                                            ; $7306: $af
	ld h, d                                          ; $7307: $62
	inc de                                           ; $7308: $13
	db $eb                                           ; $7309: $eb
	ld h, b                                          ; $730a: $60
	ld a, $45                                        ; $730b: $3e $45
	add hl, sp                                       ; $730d: $39
	and e                                            ; $730e: $a3
	cpl                                              ; $730f: $2f
	ldh a, [$6d]                                     ; $7310: $f0 $6d
	ld e, c                                          ; $7312: $59
	ldh a, [$60]                                     ; $7313: $f0 $60
	ld b, d                                          ; $7315: $42
	db $ed                                           ; $7316: $ed
	add l                                            ; $7317: $85
	add hl, bc                                       ; $7318: $09
	cpl                                              ; $7319: $2f
	ld [hl-], a                                      ; $731a: $32
	db $dd                                           ; $731b: $dd
	ldh a, [$6d]                                     ; $731c: $f0 $6d
	ld e, c                                          ; $731e: $59
	ldh a, [$60]                                     ; $731f: $f0 $60
	ld b, d                                          ; $7321: $42
	db $ed                                           ; $7322: $ed
	add l                                            ; $7323: $85
	ld h, d                                          ; $7324: $62
	inc de                                           ; $7325: $13
	db $eb                                           ; $7326: $eb
	ld h, b                                          ; $7327: $60
	ld a, $45                                        ; $7328: $3e $45
	add hl, sp                                       ; $732a: $39
	and e                                            ; $732b: $a3
	cpl                                              ; $732c: $2f
	pop af                                           ; $732d: $f1
	ld c, d                                          ; $732e: $4a
	ldh a, [$ad]                                     ; $732f: $f0 $ad
	pop af                                           ; $7331: $f1
	add hl, bc                                       ; $7332: $09
	ldh a, [$a4]                                     ; $7333: $f0 $a4
	pop af                                           ; $7335: $f1
	ld l, $09                                        ; $7336: $2e $09
	cpl                                              ; $7338: $2f
	ld [hl-], a                                      ; $7339: $32
	db $dd                                           ; $733a: $dd
	pop af                                           ; $733b: $f1
	ld c, d                                          ; $733c: $4a
	ldh a, [$ad]                                     ; $733d: $f0 $ad
	pop af                                           ; $733f: $f1
	add hl, bc                                       ; $7340: $09
	ldh a, [$a4]                                     ; $7341: $f0 $a4
	pop af                                           ; $7343: $f1
	ld l, $62                                        ; $7344: $2e $62
	inc de                                           ; $7346: $13
	db $eb                                           ; $7347: $eb
	ld h, b                                          ; $7348: $60
	ld a, $45                                        ; $7349: $3e $45
	add hl, sp                                       ; $734b: $39
	and e                                            ; $734c: $a3
	cpl                                              ; $734d: $2f
	add e                                            ; $734e: $83
	ld [hl], e                                       ; $734f: $73
	pop af                                           ; $7350: $f1
	ld [de], a                                       ; $7351: $12
	ld h, l                                          ; $7352: $65
	ld b, d                                          ; $7353: $42
	ldh a, [rTIMA]                                   ; $7354: $f0 $05
	ld e, h                                          ; $7356: $5c
	ldh a, [c]                                       ; $7357: $f2
	rla                                              ; $7358: $17
	add hl, bc                                       ; $7359: $09
	cpl                                              ; $735a: $2f
	ld [hl-], a                                      ; $735b: $32
	db $dd                                           ; $735c: $dd
	add e                                            ; $735d: $83
	ld [hl], e                                       ; $735e: $73
	pop af                                           ; $735f: $f1
	ld [de], a                                       ; $7360: $12
	ld h, l                                          ; $7361: $65
	ld b, d                                          ; $7362: $42
	inc de                                           ; $7363: $13
	ldh a, [rTIMA]                                   ; $7364: $f0 $05
	ld e, h                                          ; $7366: $5c
	ldh a, [c]                                       ; $7367: $f2
	rla                                              ; $7368: $17
	ld h, d                                          ; $7369: $62
	db $eb                                           ; $736a: $eb
	ld h, b                                          ; $736b: $60
	ld a, $45                                        ; $736c: $3e $45
	add hl, sp                                       ; $736e: $39
	and e                                            ; $736f: $a3
	cpl                                              ; $7370: $2f
	ld b, e                                          ; $7371: $43
	ld b, [hl]                                       ; $7372: $46
	dec sp                                           ; $7373: $3b
	inc [hl]                                         ; $7374: $34
	db $ec                                           ; $7375: $ec
	rst SubAFromDE                                          ; $7376: $df
	and d                                            ; $7377: $a2
	ld d, $37                                        ; $7378: $16 $37
	inc de                                           ; $737a: $13
	ld l, e                                          ; $737b: $6b
	inc a                                            ; $737c: $3c
	xor $1c                                          ; $737d: $ee $1c
	ld c, d                                          ; $737f: $4a
	ld d, c                                          ; $7380: $51
	inc a                                            ; $7381: $3c
	and c                                            ; $7382: $a1
	ld d, $a8                                        ; $7383: $16 $a8
	ld l, e                                          ; $7385: $6b
	inc a                                            ; $7386: $3c
	xor $1c                                          ; $7387: $ee $1c
	and c                                            ; $7389: $a1
	xor $2d                                          ; $738a: $ee $2d
	inc [hl]                                         ; $738c: $34
	ld a, [hl-]                                      ; $738d: $3a
	ld b, c                                          ; $738e: $41
	ld c, d                                          ; $738f: $4a
	ld d, c                                          ; $7390: $51
	inc a                                            ; $7391: $3c
	xor c                                            ; $7392: $a9
	ld d, $a0                                        ; $7393: $16 $a0
	ld hl, $20ad                                     ; $7395: $21 $ad $20
	xor $2d                                          ; $7398: $ee $2d
	inc [hl]                                         ; $739a: $34
	ld a, [hl-]                                      ; $739b: $3a
	ld b, c                                          ; $739c: $41
	ld c, d                                          ; $739d: $4a
	ld a, $66                                        ; $739e: $3e $66
	add hl, sp                                       ; $73a0: $39
	and c                                            ; $73a1: $a1
	cpl                                              ; $73a2: $2f
	ld b, e                                          ; $73a3: $43
	ld l, d                                          ; $73a4: $6a
	ld l, b                                          ; $73a5: $68
	xor h                                            ; $73a6: $ac
	ldh a, [hDisp0_SCY]                                     ; $73a7: $f0 $83
	ldh a, [rTIMA]                                   ; $73a9: $f0 $05
	ld l, b                                          ; $73ab: $68
	ld b, h                                          ; $73ac: $44
	ld b, l                                          ; $73ad: $45
	ld c, h                                          ; $73ae: $4c
	xor b                                            ; $73af: $a8
	jp hl                                            ; $73b0: $e9


	db $dd                                           ; $73b1: $dd
	and b                                            ; $73b2: $a0
	ld e, [hl]                                       ; $73b3: $5e
	dec sp                                           ; $73b4: $3b
	inc [hl]                                         ; $73b5: $34
	inc hl                                           ; $73b6: $23
	ld l, a                                          ; $73b7: $6f
	ld b, a                                          ; $73b8: $47
	ld c, b                                          ; $73b9: $48
	ld [hl], $23                                     ; $73ba: $36 $23
	inc de                                           ; $73bc: $13
	jp hl                                            ; $73bd: $e9


	inc d                                            ; $73be: $14
	dec [hl]                                         ; $73bf: $35
	inc hl                                           ; $73c0: $23
	inc de                                           ; $73c1: $13
	db $ec                                           ; $73c2: $ec
	ld b, $34                                        ; $73c3: $06 $34
	jr c, jr_094_73ff                                ; $73c5: $38 $38

	ld c, d                                          ; $73c7: $4a
	ld a, $66                                        ; $73c8: $3e $66
	add hl, sp                                       ; $73ca: $39
	inc a                                            ; $73cb: $3c
	and c                                            ; $73cc: $a1
	jp hl                                            ; $73cd: $e9


	inc d                                            ; $73ce: $14
	dec [hl]                                         ; $73cf: $35
	inc hl                                           ; $73d0: $23
	inc de                                           ; $73d1: $13
	db $ec                                           ; $73d2: $ec
	ld b, $34                                        ; $73d3: $06 $34
	jr c, @+$3a                                      ; $73d5: $38 $38

	ld c, d                                          ; $73d7: $4a
	ld d, c                                          ; $73d8: $51
	inc a                                            ; $73d9: $3c
	and c                                            ; $73da: $a1
	jp hl                                            ; $73db: $e9


	inc d                                            ; $73dc: $14
	dec [hl]                                         ; $73dd: $35
	inc hl                                           ; $73de: $23
	inc de                                           ; $73df: $13
	db $ec                                           ; $73e0: $ec
	ld b, $34                                        ; $73e1: $06 $34
	jr c, jr_094_741d                                ; $73e3: $38 $38

	ld c, d                                          ; $73e5: $4a
	ld a, $66                                        ; $73e6: $3e $66
	add hl, sp                                       ; $73e8: $39
	inc a                                            ; $73e9: $3c
	and c                                            ; $73ea: $a1
	ld hl, $20ad                                     ; $73eb: $21 $ad $20
	db $ec                                           ; $73ee: $ec
	ld b, $34                                        ; $73ef: $06 $34
	jr c, @+$3a                                      ; $73f1: $38 $38

	ld c, d                                          ; $73f3: $4a
	ld a, $66                                        ; $73f4: $3e $66
	add hl, sp                                       ; $73f6: $39
	inc a                                            ; $73f7: $3c
	and c                                            ; $73f8: $a1
	cpl                                              ; $73f9: $2f
	ld b, e                                          ; $73fa: $43
	jr c, jr_094_7435                                ; $73fb: $38 $38

	ld b, l                                          ; $73fd: $45
	inc [hl]                                         ; $73fe: $34

jr_094_73ff:
	db $ec                                           ; $73ff: $ec
	ld b, $35                                        ; $7400: $06 $35
	inc hl                                           ; $7402: $23
	inc de                                           ; $7403: $13
	ld e, d                                          ; $7404: $5a
	add hl, sp                                       ; $7405: $39
	and c                                            ; $7406: $a1
	ld d, h                                          ; $7407: $54
	ld b, c                                          ; $7408: $41
	ld a, [hl-]                                      ; $7409: $3a
	ld b, a                                          ; $740a: $47
	inc [hl]                                         ; $740b: $34
	ldh a, [$57]                                     ; $740c: $f0 $57
	ldh a, [$ae]                                     ; $740e: $f0 $ae
	ld a, [hl-]                                      ; $7410: $3a
	inc de                                           ; $7411: $13
	ld c, a                                          ; $7412: $4f
	ld b, d                                          ; $7413: $42
	ld h, d                                          ; $7414: $62
	xor l                                            ; $7415: $ad
	ld l, l                                          ; $7416: $6d
	ldh a, [rTIMA]                                   ; $7417: $f0 $05
	inc [hl]                                         ; $7419: $34
	add a                                            ; $741a: $87
	sbc d                                            ; $741b: $9a
	ld b, a                                          ; $741c: $47

jr_094_741d:
	ld a, $52                                        ; $741d: $3e $52
	ld d, c                                          ; $741f: $51
	and b                                            ; $7420: $a0
	ld b, [hl]                                       ; $7421: $46
	inc [hl]                                         ; $7422: $34
	ld b, [hl]                                       ; $7423: $46
	ld d, a                                          ; $7424: $57
	ld d, e                                          ; $7425: $53
	ld c, c                                          ; $7426: $49
	add hl, sp                                       ; $7427: $39
	inc de                                           ; $7428: $13
	ld [hl], b                                       ; $7429: $70
	ldh a, [rAUD1SWEEP]                              ; $742a: $f0 $10
	jr c, @+$54                                      ; $742c: $38 $52

	ld d, c                                          ; $742e: $51
	xor b                                            ; $742f: $a8
	sbc h                                            ; $7430: $9c
	dec sp                                           ; $7431: $3b
	ld c, c                                          ; $7432: $49
	inc [hl]                                         ; $7433: $34
	add a                                            ; $7434: $87

jr_094_7435:
	sbc d                                            ; $7435: $9a
	ld b, a                                          ; $7436: $47
	ld a, $52                                        ; $7437: $3e $52
	ld d, c                                          ; $7439: $51
	and b                                            ; $743a: $a0
	cpl                                              ; $743b: $2f
	ld b, e                                          ; $743c: $43
	db $ec                                           ; $743d: $ec
	dec hl                                           ; $743e: $2b
	inc de                                           ; $743f: $13
	ldh a, [$66]                                     ; $7440: $f0 $66
	ld b, c                                          ; $7442: $41
	ld c, d                                          ; $7443: $4a
	ld d, l                                          ; $7444: $55
	ld c, l                                          ; $7445: $4d
	ld c, [hl]                                       ; $7446: $4e
	ld a, [hl-]                                      ; $7447: $3a
	ld b, c                                          ; $7448: $41
	ccf                                              ; $7449: $3f
	xor h                                            ; $744a: $ac
	add sp, $6f                                      ; $744b: $e8 $6f
	and b                                            ; $744d: $a0
	ld b, [hl]                                       ; $744e: $46
	ld d, a                                          ; $744f: $57
	ld d, e                                          ; $7450: $53
	dec a                                            ; $7451: $3d
	ld d, l                                          ; $7452: $55
	xor h                                            ; $7453: $ac
	ldh a, [c]                                       ; $7454: $f2
	rst JumpTable                                          ; $7455: $c7
	di                                               ; $7456: $f3
	halt                                             ; $7457: $76
	ld a, $52                                        ; $7458: $3e $52
	ld d, c                                          ; $745a: $51
	and b                                            ; $745b: $a0
	cpl                                              ; $745c: $2f
	ld b, e                                          ; $745d: $43
	db $ec                                           ; $745e: $ec
	sub $ac                                          ; $745f: $d6 $ac
	ldh a, [$66]                                     ; $7461: $f0 $66
	ld b, c                                          ; $7463: $41
	ld c, d                                          ; $7464: $4a
	ld c, a                                          ; $7465: $4f
	ld d, b                                          ; $7466: $50
	ld e, [hl]                                       ; $7467: $5e
	dec a                                            ; $7468: $3d
	ld a, [hl-]                                      ; $7469: $3a
	xor b                                            ; $746a: $a8
	ld [$4876], a                                    ; $746b: $ea $76 $48
	and b                                            ; $746e: $a0
	ld hl, $10ee                                     ; $746f: $21 $ee $10
	xor b                                            ; $7472: $a8
	jr nz, jr_094_74bb                               ; $7473: $20 $46

	inc [hl]                                         ; $7475: $34
	ld b, [hl]                                       ; $7476: $46
	ld d, a                                          ; $7477: $57
	ld d, e                                          ; $7478: $53
	ld c, c                                          ; $7479: $49
	add hl, sp                                       ; $747a: $39
	inc de                                           ; $747b: $13
	ld [hl], b                                       ; $747c: $70
	ldh a, [rAUD1SWEEP]                              ; $747d: $f0 $10
	jr c, jr_094_74d3                                ; $747f: $38 $52

	ld a, $3d                                        ; $7481: $3e $3d
	ld c, b                                          ; $7483: $48
	and b                                            ; $7484: $a0
	cpl                                              ; $7485: $2f
	ld b, e                                          ; $7486: $43
	ld [$1368], a                                    ; $7487: $ea $68 $13
	ld [$ad5b], a                                    ; $748a: $ea $5b $ad
	ld [$485e], a                                    ; $748d: $ea $5e $48
	and b                                            ; $7490: $a0
	cpl                                              ; $7491: $2f
	ld [hl-], a                                      ; $7492: $32
	ld l, e                                          ; $7493: $6b
	ld h, d                                          ; $7494: $62
	db $eb                                           ; $7495: $eb
	ld h, b                                          ; $7496: $60
	inc de                                           ; $7497: $13
	db $ec                                           ; $7498: $ec
	inc c                                            ; $7499: $0c
	ld a, [hl-]                                      ; $749a: $3a
	ld [hl], $33                                     ; $749b: $36 $33
	add hl, bc                                       ; $749d: $09
	cpl                                              ; $749e: $2f
	di                                               ; $749f: $f3
	dec c                                            ; $74a0: $0d
	ldh a, [$58]                                     ; $74a1: $f0 $58
	pop af                                           ; $74a3: $f1
	sbc [hl]                                         ; $74a4: $9e
	pop af                                           ; $74a5: $f1
	sbc [hl]                                         ; $74a6: $9e
	pop af                                           ; $74a7: $f1
	sbc [hl]                                         ; $74a8: $9e
	pop af                                           ; $74a9: $f1
	sbc [hl]                                         ; $74aa: $9e
	ldh a, [$2b]                                     ; $74ab: $f0 $2b
	ld [hl], e                                       ; $74ad: $73
	add c                                            ; $74ae: $81
	add hl, bc                                       ; $74af: $09
	cpl                                              ; $74b0: $2f
	ld [hl-], a                                      ; $74b1: $32
	db $dd                                           ; $74b2: $dd
	di                                               ; $74b3: $f3
	dec c                                            ; $74b4: $0d
	ldh a, [$58]                                     ; $74b5: $f0 $58
	pop af                                           ; $74b7: $f1
	sbc [hl]                                         ; $74b8: $9e
	pop af                                           ; $74b9: $f1
	sbc [hl]                                         ; $74ba: $9e

jr_094_74bb:
	pop af                                           ; $74bb: $f1
	sbc [hl]                                         ; $74bc: $9e
	pop af                                           ; $74bd: $f1
	sbc [hl]                                         ; $74be: $9e
	inc de                                           ; $74bf: $13
	ldh a, [$2b]                                     ; $74c0: $f0 $2b
	ld [hl], e                                       ; $74c2: $73
	add c                                            ; $74c3: $81
	ld h, d                                          ; $74c4: $62
	db $eb                                           ; $74c5: $eb
	ld h, b                                          ; $74c6: $60
	ld a, $45                                        ; $74c7: $3e $45
	add hl, sp                                       ; $74c9: $39
	and e                                            ; $74ca: $a3
	cpl                                              ; $74cb: $2f
	ldh a, [rAUD4GO]                                 ; $74cc: $f0 $23
	ldh a, [c]                                       ; $74ce: $f2
	jr nz, jr_094_74da                               ; $74cf: $20 $09

	cpl                                              ; $74d1: $2f
	ld [hl-], a                                      ; $74d2: $32

jr_094_74d3:
	db $dd                                           ; $74d3: $dd
	ldh a, [rAUD4GO]                                 ; $74d4: $f0 $23
	ldh a, [c]                                       ; $74d6: $f2
	jr nz, jr_094_753b                               ; $74d7: $20 $62

	inc de                                           ; $74d9: $13

jr_094_74da:
	db $eb                                           ; $74da: $eb
	ld h, b                                          ; $74db: $60
	ld a, $45                                        ; $74dc: $3e $45
	add hl, sp                                       ; $74de: $39
	and e                                            ; $74df: $a3
	cpl                                              ; $74e0: $2f
	ldh a, [$32]                                     ; $74e1: $f0 $32
	ldh a, [rSC]                                     ; $74e3: $f0 $02
	ldh a, [$27]                                     ; $74e5: $f0 $27
	db $f4                                           ; $74e7: $f4
	ld [hl], d                                       ; $74e8: $72
	add hl, bc                                       ; $74e9: $09
	cpl                                              ; $74ea: $2f
	ld [hl-], a                                      ; $74eb: $32
	db $dd                                           ; $74ec: $dd
	ldh a, [$32]                                     ; $74ed: $f0 $32
	ldh a, [rSC]                                     ; $74ef: $f0 $02
	ldh a, [$27]                                     ; $74f1: $f0 $27

jr_094_74f3:
	db $f4                                           ; $74f3: $f4
	ld [hl], d                                       ; $74f4: $72
	ld h, d                                          ; $74f5: $62
	inc de                                           ; $74f6: $13
	db $eb                                           ; $74f7: $eb
	ld h, b                                          ; $74f8: $60
	ld a, $45                                        ; $74f9: $3e $45
	add hl, sp                                       ; $74fb: $39
	and e                                            ; $74fc: $a3
	cpl                                              ; $74fd: $2f
	ldh a, [rAUD1ENV]                                ; $74fe: $f0 $12
	pop af                                           ; $7500: $f1
	jr jr_094_74f3                                   ; $7501: $18 $f0

	ld a, [hl]                                       ; $7503: $7e
	ldh a, [$c3]                                     ; $7504: $f0 $c3
	ldh a, [$9d]                                     ; $7506: $f0 $9d
	ld l, c                                          ; $7508: $69
	ldh a, [rP1]                                     ; $7509: $f0 $00
	ldh a, [$a8]                                     ; $750b: $f0 $a8
	db $f4                                           ; $750d: $f4

jr_094_750e:
	ld [hl], c                                       ; $750e: $71
	ldh a, [$63]                                     ; $750f: $f0 $63
	pop af                                           ; $7511: $f1
	ldh [rSCY], a                                    ; $7512: $e0 $42
	adc b                                            ; $7514: $88
	add hl, bc                                       ; $7515: $09
	cpl                                              ; $7516: $2f
	ld [hl-], a                                      ; $7517: $32
	db $dd                                           ; $7518: $dd
	ldh a, [rAUD1ENV]                                ; $7519: $f0 $12
	pop af                                           ; $751b: $f1
	jr jr_094_750e                                   ; $751c: $18 $f0

	ld a, [hl]                                       ; $751e: $7e
	ldh a, [$c3]                                     ; $751f: $f0 $c3
	ldh a, [$9d]                                     ; $7521: $f0 $9d
	ld l, c                                          ; $7523: $69
	ldh a, [rP1]                                     ; $7524: $f0 $00
	inc de                                           ; $7526: $13
	ldh a, [$a8]                                     ; $7527: $f0 $a8
	db $f4                                           ; $7529: $f4
	ld [hl], c                                       ; $752a: $71
	ldh a, [$63]                                     ; $752b: $f0 $63
	pop af                                           ; $752d: $f1
	ldh [rSCY], a                                    ; $752e: $e0 $42
	adc b                                            ; $7530: $88
	ld h, d                                          ; $7531: $62
	inc de                                           ; $7532: $13
	db $eb                                           ; $7533: $eb
	ld h, b                                          ; $7534: $60
	ld a, $45                                        ; $7535: $3e $45
	add hl, sp                                       ; $7537: $39
	and e                                            ; $7538: $a3
	cpl                                              ; $7539: $2f
	ldh a, [c]                                       ; $753a: $f2

jr_094_753b:
	and l                                            ; $753b: $a5
	pop af                                           ; $753c: $f1
	and h                                            ; $753d: $a4
	di                                               ; $753e: $f3
	ld bc, $b9f2                                     ; $753f: $01 $f2 $b9
	db $ed                                           ; $7542: $ed
	jr nz, jr_094_754e                               ; $7543: $20 $09

	cpl                                              ; $7545: $2f
	ld [hl-], a                                      ; $7546: $32
	ld b, l                                          ; $7547: $45
	ld a, $ac                                        ; $7548: $3e $ac
	ldh a, [c]                                       ; $754a: $f2
	and l                                            ; $754b: $a5
	pop af                                           ; $754c: $f1
	and h                                            ; $754d: $a4

jr_094_754e:
	di                                               ; $754e: $f3
	ld bc, $b9f2                                     ; $754f: $01 $f2 $b9
	db $ed                                           ; $7552: $ed
	jr nz, @+$64                                     ; $7553: $20 $62

	inc de                                           ; $7555: $13
	db $eb                                           ; $7556: $eb
	ld h, b                                          ; $7557: $60
	ld a, $45                                        ; $7558: $3e $45
	add hl, sp                                       ; $755a: $39
	and e                                            ; $755b: $a3
	cpl                                              ; $755c: $2f
	ldh a, [$2b]                                     ; $755d: $f0 $2b
	ldh a, [$7c]                                     ; $755f: $f0 $7c
	ld a, l                                          ; $7561: $7d
	ldh a, [$ba]                                     ; $7562: $f0 $ba
	ldh a, [$32]                                     ; $7564: $f0 $32
	ld [hl], l                                       ; $7566: $75
	add e                                            ; $7567: $83
	add hl, bc                                       ; $7568: $09
	cpl                                              ; $7569: $2f
	ld [hl-], a                                      ; $756a: $32
	db $dd                                           ; $756b: $dd
	ldh a, [$2b]                                     ; $756c: $f0 $2b
	ldh a, [$7c]                                     ; $756e: $f0 $7c
	ld a, l                                          ; $7570: $7d
	ldh a, [$ba]                                     ; $7571: $f0 $ba
	ldh a, [$32]                                     ; $7573: $f0 $32
	ld [hl], l                                       ; $7575: $75
	add e                                            ; $7576: $83
	ld h, d                                          ; $7577: $62
	inc de                                           ; $7578: $13
	db $eb                                           ; $7579: $eb
	ld h, b                                          ; $757a: $60
	ld a, $45                                        ; $757b: $3e $45
	add hl, sp                                       ; $757d: $39
	and e                                            ; $757e: $a3
	cpl                                              ; $757f: $2f
	ldh a, [c]                                       ; $7580: $f2
	ld [hl], $f2                                     ; $7581: $36 $f2
	ld [$f6f0], a                                    ; $7583: $ea $f0 $f6
	pop af                                           ; $7586: $f1
	call $f3ea                                       ; $7587: $cd $ea $f3
	ldh a, [$63]                                     ; $758a: $f0 $63
	pop af                                           ; $758c: $f1
	ldh [rSCY], a                                    ; $758d: $e0 $42
	adc b                                            ; $758f: $88
	add hl, bc                                       ; $7590: $09
	cpl                                              ; $7591: $2f
	ld [hl-], a                                      ; $7592: $32
	db $dd                                           ; $7593: $dd
	ldh a, [c]                                       ; $7594: $f2
	ld [hl], $f2                                     ; $7595: $36 $f2
	ld [$f6f0], a                                    ; $7597: $ea $f0 $f6
	pop af                                           ; $759a: $f1
	call $ea13                                       ; $759b: $cd $13 $ea
	di                                               ; $759e: $f3
	ldh a, [$63]                                     ; $759f: $f0 $63
	pop af                                           ; $75a1: $f1
	ldh [rSCY], a                                    ; $75a2: $e0 $42
	adc b                                            ; $75a4: $88
	ld h, d                                          ; $75a5: $62
	inc de                                           ; $75a6: $13
	db $eb                                           ; $75a7: $eb
	ld h, b                                          ; $75a8: $60
	ld a, $45                                        ; $75a9: $3e $45
	add hl, sp                                       ; $75ab: $39
	and e                                            ; $75ac: $a3
	cpl                                              ; $75ad: $2f
	ldh a, [$27]                                     ; $75ae: $f0 $27
	ldh a, [$2b]                                     ; $75b0: $f0 $2b
	add hl, bc                                       ; $75b2: $09
	cpl                                              ; $75b3: $2f
	ld [hl-], a                                      ; $75b4: $32
	db $dd                                           ; $75b5: $dd
	ldh a, [$27]                                     ; $75b6: $f0 $27
	ldh a, [$2b]                                     ; $75b8: $f0 $2b
	ld h, d                                          ; $75ba: $62
	inc de                                           ; $75bb: $13
	db $eb                                           ; $75bc: $eb
	ld h, b                                          ; $75bd: $60
	ld a, $45                                        ; $75be: $3e $45
	add hl, sp                                       ; $75c0: $39
	and e                                            ; $75c1: $a3
	cpl                                              ; $75c2: $2f
	ldh a, [c]                                       ; $75c3: $f2
	dec bc                                           ; $75c4: $0b
	ldh a, [rPCM34]                                  ; $75c5: $f0 $77
	add hl, bc                                       ; $75c7: $09
	cpl                                              ; $75c8: $2f
	ld [hl-], a                                      ; $75c9: $32
	db $dd                                           ; $75ca: $dd
	ldh a, [c]                                       ; $75cb: $f2
	dec bc                                           ; $75cc: $0b
	ldh a, [rPCM34]                                  ; $75cd: $f0 $77
	ld h, d                                          ; $75cf: $62
	inc de                                           ; $75d0: $13
	db $eb                                           ; $75d1: $eb
	ld h, b                                          ; $75d2: $60
	ld a, $45                                        ; $75d3: $3e $45
	add hl, sp                                       ; $75d5: $39
	and e                                            ; $75d6: $a3
	cpl                                              ; $75d7: $2f
	ld b, e                                          ; $75d8: $43
	ld b, [hl]                                       ; $75d9: $46
	dec sp                                           ; $75da: $3b
	inc [hl]                                         ; $75db: $34
	db $ec                                           ; $75dc: $ec
	ldh [$a2], a                                     ; $75dd: $e0 $a2
	ld a, [hl-]                                      ; $75df: $3a
	inc [hl]                                         ; $75e0: $34
	inc hl                                           ; $75e1: $23
	ld l, e                                          ; $75e2: $6b
	ld b, d                                          ; $75e3: $42
	ldh a, [rAUD2LEN]                                ; $75e4: $f0 $16
	ld b, l                                          ; $75e6: $45
	and c                                            ; $75e7: $a1
	xor $14                                          ; $75e8: $ee $14
	inc [hl]                                         ; $75ea: $34
	ld l, e                                          ; $75eb: $6b
	inc a                                            ; $75ec: $3c
	ldh a, [rAUD2LEN]                                ; $75ed: $f0 $16
	and c                                            ; $75ef: $a1
	ld l, e                                          ; $75f0: $6b
	ld b, d                                          ; $75f1: $42
	ldh a, [rAUD2LEN]                                ; $75f2: $f0 $16
	and c                                            ; $75f4: $a1
	xor $10                                          ; $75f5: $ee $10
	xor b                                            ; $75f7: $a8
	ld l, e                                          ; $75f8: $6b
	and c                                            ; $75f9: $a1
	ld l, h                                          ; $75fa: $6c
	inc [hl]                                         ; $75fb: $34
	inc hl                                           ; $75fc: $23
	pop af                                           ; $75fd: $f1
	or l                                             ; $75fe: $b5
	ld a, b                                          ; $75ff: $78
	ld b, d                                          ; $7600: $42
	di                                               ; $7601: $f3
	ld d, [hl]                                       ; $7602: $56
	ldh a, [$b0]                                     ; $7603: $f0 $b0
	pop af                                           ; $7605: $f1
	ld b, d                                          ; $7606: $42
	ld b, a                                          ; $7607: $47
	xor h                                            ; $7608: $ac
	pop af                                           ; $7609: $f1
	inc c                                            ; $760a: $0c
	ld d, c                                          ; $760b: $51
	ld c, [hl]                                       ; $760c: $4e
	ldh a, [rBCPS]                                   ; $760d: $f0 $68
	push af                                          ; $760f: $f5
	ld l, $45                                        ; $7610: $2e $45
	ld c, h                                          ; $7612: $4c
	dec [hl]                                         ; $7613: $35
	inc hl                                           ; $7614: $23
	inc de                                           ; $7615: $13
	db $ec                                           ; $7616: $ec
	ld b, $34                                        ; $7617: $06 $34
	jr c, jr_094_7653                                ; $7619: $38 $38

	and c                                            ; $761b: $a1
	db $eb                                           ; $761c: $eb
	di                                               ; $761d: $f3
	inc de                                           ; $761e: $13
	sub c                                            ; $761f: $91
	ldh a, [$59]                                     ; $7620: $f0 $59
	ld b, d                                          ; $7622: $42
	ld h, a                                          ; $7623: $67
	di                                               ; $7624: $f3
	ld b, e                                          ; $7625: $43
	ld c, h                                          ; $7626: $4c
	dec [hl]                                         ; $7627: $35
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7628: $f0 $81
	ld e, l                                          ; $762a: $5d
	ld c, [hl]                                       ; $762b: $4e
	ld h, e                                          ; $762c: $63
	ld b, l                                          ; $762d: $45
	and c                                            ; $762e: $a1
	ld b, [hl]                                       ; $762f: $46
	ld d, a                                          ; $7630: $57
	ld d, e                                          ; $7631: $53
	ld c, c                                          ; $7632: $49
	dec [hl]                                         ; $7633: $35
	inc hl                                           ; $7634: $23
	inc de                                           ; $7635: $13
	db $ec                                           ; $7636: $ec
	ld b, $34                                        ; $7637: $06 $34
	ret nc                                           ; $7639: $d0

	ld c, h                                          ; $763a: $4c
	and c                                            ; $763b: $a1
	xor $10                                          ; $763c: $ee $10
	xor b                                            ; $763e: $a8
	db $ec                                           ; $763f: $ec
	ld b, $34                                        ; $7640: $06 $34
	ret nc                                           ; $7642: $d0

	ld c, h                                          ; $7643: $4c
	and c                                            ; $7644: $a1
	cpl                                              ; $7645: $2f
	ld b, e                                          ; $7646: $43
	jr c, jr_094_7681                                ; $7647: $38 $38

	ld b, l                                          ; $7649: $45
	inc [hl]                                         ; $764a: $34
	db $ec                                           ; $764b: $ec
	ld b, $a8                                        ; $764c: $06 $a8
	ld e, d                                          ; $764e: $5a
	add hl, sp                                       ; $764f: $39
	and c                                            ; $7650: $a1
	db $eb                                           ; $7651: $eb
	add h                                            ; $7652: $84

jr_094_7653:
	scf                                              ; $7653: $37
	scf                                              ; $7654: $37
	inc hl                                           ; $7655: $23
	inc de                                           ; $7656: $13
	xor $17                                          ; $7657: $ee $17
	ldh a, [$c0]                                     ; $7659: $f0 $c0
	pop af                                           ; $765b: $f1
	add hl, hl                                       ; $765c: $29
	ld d, e                                          ; $765d: $53
	ld h, e                                          ; $765e: $63
	jr c, @+$41                                      ; $765f: $38 $3f

	ld e, h                                          ; $7661: $5c
	dec a                                            ; $7662: $3d
	ld h, e                                          ; $7663: $63
	dec [hl]                                         ; $7664: $35
	inc hl                                           ; $7665: $23
	inc de                                           ; $7666: $13
	ld [$5121], a                                    ; $7667: $ea $21 $51
	ld c, [hl]                                       ; $766a: $4e
	ld h, e                                          ; $766b: $63
	and b                                            ; $766c: $a0
	db $eb                                           ; $766d: $eb
	sub a                                            ; $766e: $97
	ld a, [hl-]                                      ; $766f: $3a
	ld d, b                                          ; $7670: $50
	xor h                                            ; $7671: $ac
	ldh a, [c]                                       ; $7672: $f2
	reti                                             ; $7673: $d9


	ld b, a                                          ; $7674: $47
	ldh a, [$d9]                                     ; $7675: $f0 $d9
	add b                                            ; $7677: $80
	inc a                                            ; $7678: $3c
	ld c, b                                          ; $7679: $48
	and b                                            ; $767a: $a0
	ld hl, $10ee                                     ; $767b: $21 $ee $10
	xor b                                            ; $767e: $a8
	jr nz, @+$55                                     ; $767f: $20 $53

jr_094_7681:
	ld d, b                                          ; $7681: $50
	ld d, l                                          ; $7682: $55
	dec a                                            ; $7683: $3d
	ld c, h                                          ; $7684: $4c
	xor l                                            ; $7685: $ad
	xor $17                                          ; $7686: $ee $17
	ld b, d                                          ; $7688: $42
	pop af                                           ; $7689: $f1
	cp [hl]                                          ; $768a: $be
	ld a, $47                                        ; $768b: $3e $47
	ld c, a                                          ; $768d: $4f
	ld a, [hl-]                                      ; $768e: $3a
	ld d, b                                          ; $768f: $50
	ld a, [hl-]                                      ; $7690: $3a
	jr c, jr_094_76f6                                ; $7691: $38 $63

	and b                                            ; $7693: $a0
	cpl                                              ; $7694: $2f
	ldh a, [rOCPS]                                   ; $7695: $f0 $6a
	ldh a, [$9f]                                     ; $7697: $f0 $9f
	ldh a, [$35]                                     ; $7699: $f0 $35

jr_094_769b:
	ldh a, [rSC]                                     ; $769b: $f0 $02
	ldh a, [$c3]                                     ; $769d: $f0 $c3
	ldh a, [$c2]                                     ; $769f: $f0 $c2
	db $ed                                           ; $76a1: $ed
	jr nz, jr_094_76ad                               ; $76a2: $20 $09

	cpl                                              ; $76a4: $2f
	ld [hl-], a                                      ; $76a5: $32
	ld b, l                                          ; $76a6: $45
	ld a, $ac                                        ; $76a7: $3e $ac
	ldh a, [rOCPS]                                   ; $76a9: $f0 $6a
	ldh a, [$9f]                                     ; $76ab: $f0 $9f

jr_094_76ad:
	ldh a, [$35]                                     ; $76ad: $f0 $35
	ldh a, [rSC]                                     ; $76af: $f0 $02
	ldh a, [$c3]                                     ; $76b1: $f0 $c3
	ldh a, [$c2]                                     ; $76b3: $f0 $c2
	db $ed                                           ; $76b5: $ed
	jr nz, jr_094_771a                               ; $76b6: $20 $62

	inc de                                           ; $76b8: $13
	db $eb                                           ; $76b9: $eb
	ld h, b                                          ; $76ba: $60
	ld a, $45                                        ; $76bb: $3e $45
	add hl, sp                                       ; $76bd: $39
	and e                                            ; $76be: $a3
	cpl                                              ; $76bf: $2f
	ldh a, [$27]                                     ; $76c0: $f0 $27
	ld h, l                                          ; $76c2: $65
	sub e                                            ; $76c3: $93
	ld b, d                                          ; $76c4: $42
	ldh a, [c]                                       ; $76c5: $f2
	db $e4                                           ; $76c6: $e4
	ldh a, [rKEY1]                                   ; $76c7: $f0 $4d
	ld b, d                                          ; $76c9: $42
	add h                                            ; $76ca: $84
	ldh a, [c]                                       ; $76cb: $f2
	ret z                                            ; $76cc: $c8

	add hl, bc                                       ; $76cd: $09
	cpl                                              ; $76ce: $2f
	ld [hl-], a                                      ; $76cf: $32
	ld b, l                                          ; $76d0: $45
	ld a, $ac                                        ; $76d1: $3e $ac
	ldh a, [$27]                                     ; $76d3: $f0 $27
	ld h, l                                          ; $76d5: $65
	sub e                                            ; $76d6: $93
	ld b, d                                          ; $76d7: $42
	ldh a, [c]                                       ; $76d8: $f2
	db $e4                                           ; $76d9: $e4
	ldh a, [rKEY1]                                   ; $76da: $f0 $4d
	ld b, d                                          ; $76dc: $42
	add h                                            ; $76dd: $84
	ldh a, [c]                                       ; $76de: $f2
	ret z                                            ; $76df: $c8

	ld h, d                                          ; $76e0: $62
	inc de                                           ; $76e1: $13
	db $eb                                           ; $76e2: $eb
	ld h, b                                          ; $76e3: $60
	ld a, $45                                        ; $76e4: $3e $45
	add hl, sp                                       ; $76e6: $39
	and e                                            ; $76e7: $a3
	cpl                                              ; $76e8: $2f
	pop af                                           ; $76e9: $f1
	or c                                             ; $76ea: $b1
	pop af                                           ; $76eb: $f1
	xor [hl]                                         ; $76ec: $ae
	pop af                                           ; $76ed: $f1
	ld a, d                                          ; $76ee: $7a
	add hl, bc                                       ; $76ef: $09
	cpl                                              ; $76f0: $2f
	ld [hl-], a                                      ; $76f1: $32
	db $dd                                           ; $76f2: $dd
	pop af                                           ; $76f3: $f1
	or c                                             ; $76f4: $b1
	pop af                                           ; $76f5: $f1

jr_094_76f6:
	xor [hl]                                         ; $76f6: $ae
	pop af                                           ; $76f7: $f1
	ld a, d                                          ; $76f8: $7a
	ld h, d                                          ; $76f9: $62
	inc de                                           ; $76fa: $13
	db $eb                                           ; $76fb: $eb
	ld h, b                                          ; $76fc: $60
	ld a, $45                                        ; $76fd: $3e $45
	add hl, sp                                       ; $76ff: $39
	and e                                            ; $7700: $a3
	cpl                                              ; $7701: $2f
	db $f4                                           ; $7702: $f4
	jr z, jr_094_769b                                ; $7703: $28 $96

	di                                               ; $7705: $f3
	ret z                                            ; $7706: $c8

	ldh a, [$a6]                                     ; $7707: $f0 $a6
	ld e, c                                          ; $7709: $59
	pop af                                           ; $770a: $f1
	ld [hl], h                                       ; $770b: $74
	ld e, c                                          ; $770c: $59
	ldh a, [$7a]                                     ; $770d: $f0 $7a
	ldh a, [rAUDTERM]                                ; $770f: $f0 $25
	add hl, bc                                       ; $7711: $09
	cpl                                              ; $7712: $2f
	ld [hl-], a                                      ; $7713: $32
	ld b, l                                          ; $7714: $45
	ld a, $ac                                        ; $7715: $3e $ac
	db $f4                                           ; $7717: $f4
	jr z, @-$68                                      ; $7718: $28 $96

jr_094_771a:
	di                                               ; $771a: $f3
	ret z                                            ; $771b: $c8

	ldh a, [$a6]                                     ; $771c: $f0 $a6
	ld e, c                                          ; $771e: $59
	pop af                                           ; $771f: $f1
	ld [hl], h                                       ; $7720: $74
	ld e, c                                          ; $7721: $59
	ldh a, [$7a]                                     ; $7722: $f0 $7a
	ldh a, [rAUDTERM]                                ; $7724: $f0 $25
	ld h, d                                          ; $7726: $62
	inc de                                           ; $7727: $13
	db $eb                                           ; $7728: $eb
	ld h, b                                          ; $7729: $60
	ld a, $45                                        ; $772a: $3e $45
	add hl, sp                                       ; $772c: $39
	and e                                            ; $772d: $a3
	cpl                                              ; $772e: $2f
	ldh a, [rPCM34]                                  ; $772f: $f0 $77
	ldh a, [rAUD2HIGH]                               ; $7731: $f0 $19
	ldh a, [$9d]                                     ; $7733: $f0 $9d
	ldh a, [$a6]                                     ; $7735: $f0 $a6
	ldh a, [$09]                                     ; $7737: $f0 $09
	add hl, bc                                       ; $7739: $09
	cpl                                              ; $773a: $2f
	ld [hl-], a                                      ; $773b: $32
	db $dd                                           ; $773c: $dd
	ldh a, [rPCM34]                                  ; $773d: $f0 $77
	ldh a, [rAUD2HIGH]                               ; $773f: $f0 $19
	ldh a, [$9d]                                     ; $7741: $f0 $9d
	ldh a, [$a6]                                     ; $7743: $f0 $a6
	ldh a, [$09]                                     ; $7745: $f0 $09
	ld h, d                                          ; $7747: $62
	inc de                                           ; $7748: $13
	db $eb                                           ; $7749: $eb
	ld h, b                                          ; $774a: $60
	ld a, $45                                        ; $774b: $3e $45
	add hl, sp                                       ; $774d: $39
	and e                                            ; $774e: $a3
	cpl                                              ; $774f: $2f
	ld d, c                                          ; $7750: $51
	ld [hl], b                                       ; $7751: $70
	ld d, l                                          ; $7752: $55
	db $f4                                           ; $7753: $f4
	ld [hl], b                                       ; $7754: $70
	ld a, $f0                                        ; $7755: $3e $f0
	ld bc, $883a                                     ; $7757: $01 $3a $88
	add hl, bc                                       ; $775a: $09
	cpl                                              ; $775b: $2f
	ld [hl-], a                                      ; $775c: $32
	ld b, l                                          ; $775d: $45
	ld a, $ac                                        ; $775e: $3e $ac
	ld d, c                                          ; $7760: $51
	ld [hl], b                                       ; $7761: $70
	ld d, l                                          ; $7762: $55
	db $f4                                           ; $7763: $f4
	ld [hl], b                                       ; $7764: $70
	ld a, $f0                                        ; $7765: $3e $f0
	ld bc, $883a                                     ; $7767: $01 $3a $88
	ld h, d                                          ; $776a: $62
	inc de                                           ; $776b: $13
	db $eb                                           ; $776c: $eb
	ld h, b                                          ; $776d: $60
	ld a, $45                                        ; $776e: $3e $45
	add hl, sp                                       ; $7770: $39
	and e                                            ; $7771: $a3
	cpl                                              ; $7772: $2f
	pop af                                           ; $7773: $f1
	dec e                                            ; $7774: $1d
	ld [hl], l                                       ; $7775: $75
	ld e, c                                          ; $7776: $59
	di                                               ; $7777: $f3
	db $dd                                           ; $7778: $dd
	add hl, bc                                       ; $7779: $09
	cpl                                              ; $777a: $2f
	ld [hl-], a                                      ; $777b: $32
	db $dd                                           ; $777c: $dd
	pop af                                           ; $777d: $f1
	dec e                                            ; $777e: $1d
	ld [hl], l                                       ; $777f: $75
	ld e, c                                          ; $7780: $59
	di                                               ; $7781: $f3
	db $dd                                           ; $7782: $dd
	ld h, d                                          ; $7783: $62
	inc de                                           ; $7784: $13
	db $eb                                           ; $7785: $eb
	ld h, b                                          ; $7786: $60
	ld a, $45                                        ; $7787: $3e $45
	add hl, sp                                       ; $7789: $39
	and e                                            ; $778a: $a3
	cpl                                              ; $778b: $2f
	db $f4                                           ; $778c: $f4
	dec c                                            ; $778d: $0d
	ld b, d                                          ; $778e: $42
	ldh a, [$0b]                                     ; $778f: $f0 $0b
	add hl, bc                                       ; $7791: $09
	cpl                                              ; $7792: $2f
	ld [hl-], a                                      ; $7793: $32
	db $dd                                           ; $7794: $dd
	db $f4                                           ; $7795: $f4
	dec c                                            ; $7796: $0d
	ld b, d                                          ; $7797: $42
	ldh a, [$0b]                                     ; $7798: $f0 $0b
	ld h, d                                          ; $779a: $62
	inc de                                           ; $779b: $13
	db $eb                                           ; $779c: $eb
	ld h, b                                          ; $779d: $60
	ld a, $45                                        ; $779e: $3e $45
	add hl, sp                                       ; $77a0: $39
	and e                                            ; $77a1: $a3
	cpl                                              ; $77a2: $2f
	ld b, e                                          ; $77a3: $43
	ld b, [hl]                                       ; $77a4: $46
	dec sp                                           ; $77a5: $3b
	inc [hl]                                         ; $77a6: $34
	db $ec                                           ; $77a7: $ec
	pop hl                                           ; $77a8: $e1
	and d                                            ; $77a9: $a2
	ld e, [hl]                                       ; $77aa: $5e
	dec sp                                           ; $77ab: $3b
	ld [hl], $23                                     ; $77ac: $36 $23
	inc de                                           ; $77ae: $13
	ld l, a                                          ; $77af: $6f
	ld b, a                                          ; $77b0: $47
	ld l, e                                          ; $77b1: $6b
	inc a                                            ; $77b2: $3c
	ldh a, [rAUD2LEN]                                ; $77b3: $f0 $16
	and c                                            ; $77b5: $a1
	db $ed                                           ; $77b6: $ed
	ld b, [hl]                                       ; $77b7: $46
	inc [hl]                                         ; $77b8: $34
	ld d, $35                                        ; $77b9: $16 $35
	inc hl                                           ; $77bb: $23
	inc de                                           ; $77bc: $13
	ld l, e                                          ; $77bd: $6b
	inc a                                            ; $77be: $3c
	ldh a, [rAUD2LEN]                                ; $77bf: $f0 $16
	and c                                            ; $77c1: $a1
	ld b, c                                          ; $77c2: $41
	ld [hl], $23                                     ; $77c3: $36 $23
	inc de                                           ; $77c5: $13
	ld l, e                                          ; $77c6: $6b
	inc a                                            ; $77c7: $3c
	ldh a, [rAUD2LEN]                                ; $77c8: $f0 $16
	and c                                            ; $77ca: $a1
	ld l, e                                          ; $77cb: $6b
	ld b, d                                          ; $77cc: $42
	ldh a, [rAUD2LEN]                                ; $77cd: $f0 $16
	ld b, l                                          ; $77cf: $45
	and c                                            ; $77d0: $a1
	ld e, [hl]                                       ; $77d1: $5e
	dec sp                                           ; $77d2: $3b
	inc [hl]                                         ; $77d3: $34
	ld l, a                                          ; $77d4: $6f
	ld b, a                                          ; $77d5: $47
	ld [hl], $23                                     ; $77d6: $36 $23
	inc de                                           ; $77d8: $13
	db $ec                                           ; $77d9: $ec
	sub e                                            ; $77da: $93
	inc [hl]                                         ; $77db: $34
	inc hl                                           ; $77dc: $23
	ldh a, [$29]                                     ; $77dd: $f0 $29
	ld a, $38                                        ; $77df: $3e $38
	ld c, b                                          ; $77e1: $48
	dec [hl]                                         ; $77e2: $35
	inc hl                                           ; $77e3: $23
	inc de                                           ; $77e4: $13
	db $ec                                           ; $77e5: $ec
	ld b, $34                                        ; $77e6: $06 $34
	jr c, jr_094_7822                                ; $77e8: $38 $38

	and c                                            ; $77ea: $a1
	db $ec                                           ; $77eb: $ec
	scf                                              ; $77ec: $37
	inc [hl]                                         ; $77ed: $34
	sbc $36                                          ; $77ee: $de $36
	inc hl                                           ; $77f0: $23
	inc de                                           ; $77f1: $13
	db $ec                                           ; $77f2: $ec
	ld b, $38                                        ; $77f3: $06 $38
	jr c, jr_094_7841                                ; $77f5: $38 $4a

	ld a, $66                                        ; $77f7: $3e $66
	and c                                            ; $77f9: $a1
	db $eb                                           ; $77fa: $eb
	ld e, l                                          ; $77fb: $5d
	inc [hl]                                         ; $77fc: $34
	ld b, [hl]                                       ; $77fd: $46
	ld d, a                                          ; $77fe: $57
	ld d, e                                          ; $77ff: $53
	ld c, c                                          ; $7800: $49
	xor b                                            ; $7801: $a8

jr_094_7802:
	db $ec                                           ; $7802: $ec
	ld b, $38                                        ; $7803: $06 $38
	jr c, @+$4c                                      ; $7805: $38 $4a

	ld a, $66                                        ; $7807: $3e $66
	and c                                            ; $7809: $a1
	ld hl, $10ee                                     ; $780a: $21 $ee $10
	xor $10                                          ; $780d: $ee $10
	xor b                                            ; $780f: $a8
	jr nz, jr_094_7802                               ; $7810: $20 $f0

	add c                                            ; $7812: $81
	ld e, l                                          ; $7813: $5d
	ld c, [hl]                                       ; $7814: $4e
	ld h, e                                          ; $7815: $63
	ld b, l                                          ; $7816: $45
	and c                                            ; $7817: $a1
	db $eb                                           ; $7818: $eb
	sbc d                                            ; $7819: $9a
	inc [hl]                                         ; $781a: $34
	inc hl                                           ; $781b: $23
	inc de                                           ; $781c: $13
	db $eb                                           ; $781d: $eb
	ld d, h                                          ; $781e: $54
	ld h, e                                          ; $781f: $63
	dec [hl]                                         ; $7820: $35
	inc hl                                           ; $7821: $23

jr_094_7822:
	inc de                                           ; $7822: $13
	db $eb                                           ; $7823: $eb
	ld e, b                                          ; $7824: $58
	inc [hl]                                         ; $7825: $34
	pop af                                           ; $7826: $f1
	and c                                            ; $7827: $a1
	ld e, [hl]                                       ; $7828: $5e
	ld c, [hl]                                       ; $7829: $4e
	ld a, [hl-]                                      ; $782a: $3a
	ld b, c                                          ; $782b: $41
	ccf                                              ; $782c: $3f
	xor h                                            ; $782d: $ac
	ld [hl], a                                       ; $782e: $77
	dec sp                                           ; $782f: $3b
	ccf                                              ; $7830: $3f
	ld c, a                                          ; $7831: $4f
	ld [hl], d                                       ; $7832: $72
	ld a, [hl-]                                      ; $7833: $3a
	inc a                                            ; $7834: $3c
	dec sp                                           ; $7835: $3b
	dec a                                            ; $7836: $3d
	ld h, e                                          ; $7837: $63
	and b                                            ; $7838: $a0
	db $eb                                           ; $7839: $eb
	ld d, h                                          ; $783a: $54
	ld h, e                                          ; $783b: $63
	dec [hl]                                         ; $783c: $35
	inc hl                                           ; $783d: $23
	inc de                                           ; $783e: $13
	db $eb                                           ; $783f: $eb
	ld e, b                                          ; $7840: $58

jr_094_7841:
	inc [hl]                                         ; $7841: $34
	pop af                                           ; $7842: $f1
	and c                                            ; $7843: $a1
	ld e, [hl]                                       ; $7844: $5e
	ld c, [hl]                                       ; $7845: $4e
	ld a, [hl-]                                      ; $7846: $3a
	ld b, c                                          ; $7847: $41
	ccf                                              ; $7848: $3f
	ld c, b                                          ; $7849: $48
	and b                                            ; $784a: $a0
	xor $14                                          ; $784b: $ee $14
	inc [hl]                                         ; $784d: $34
	ldh a, [$57]                                     ; $784e: $f0 $57
	ldh a, [$ae]                                     ; $7850: $f0 $ae
	db $ec                                           ; $7852: $ec
	ret c                                            ; $7853: $d8

	dec [hl]                                         ; $7854: $35

jr_094_7855:
	inc hl                                           ; $7855: $23
	inc de                                           ; $7856: $13
	ld b, [hl]                                       ; $7857: $46
	ld d, a                                          ; $7858: $57
	ld d, e                                          ; $7859: $53
	dec a                                            ; $785a: $3d
	ld d, l                                          ; $785b: $55
	xor h                                            ; $785c: $ac
	db $eb                                           ; $785d: $eb
	ld a, a                                          ; $785e: $7f
	ld c, h                                          ; $785f: $4c
	and b                                            ; $7860: $a0
	ld hl, $10ee                                     ; $7861: $21 $ee $10
	xor $10                                          ; $7864: $ee $10
	xor b                                            ; $7866: $a8
	jr nz, jr_094_7855                               ; $7867: $20 $ec

	sub $34                                          ; $7869: $d6 $34
	inc a                                            ; $786b: $3c
	ld a, [hl-]                                      ; $786c: $3a
	ld c, b                                          ; $786d: $48
	and b                                            ; $786e: $a0
	cpl                                              ; $786f: $2f
	add c                                            ; $7870: $81
	ldh a, [rSC]                                     ; $7871: $f0 $02
	ldh a, [$2b]                                     ; $7873: $f0 $2b
	ldh a, [$ba]                                     ; $7875: $f0 $ba
	ld b, d                                          ; $7877: $42
	sub e                                            ; $7878: $93
	ldh a, [$1f]                                     ; $7879: $f0 $1f
	add e                                            ; $787b: $83
	add hl, bc                                       ; $787c: $09
	cpl                                              ; $787d: $2f
	ld [hl-], a                                      ; $787e: $32
	ld b, l                                          ; $787f: $45
	ld a, $ac                                        ; $7880: $3e $ac
	add c                                            ; $7882: $81
	ldh a, [rSC]                                     ; $7883: $f0 $02
	ldh a, [$2b]                                     ; $7885: $f0 $2b
	ldh a, [$ba]                                     ; $7887: $f0 $ba
	ld b, d                                          ; $7889: $42
	sub e                                            ; $788a: $93
	ldh a, [$1f]                                     ; $788b: $f0 $1f
	add e                                            ; $788d: $83
	ld h, d                                          ; $788e: $62
	inc de                                           ; $788f: $13
	db $eb                                           ; $7890: $eb
	ld h, b                                          ; $7891: $60
	ld a, $45                                        ; $7892: $3e $45
	add hl, sp                                       ; $7894: $39
	and e                                            ; $7895: $a3
	cpl                                              ; $7896: $2f
	di                                               ; $7897: $f3
	call c, $0ff4                                    ; $7898: $dc $f4 $0f
	db $ed                                           ; $789b: $ed
	jr nz, @+$0b                                     ; $789c: $20 $09

	cpl                                              ; $789e: $2f
	ld [hl-], a                                      ; $789f: $32
	db $dd                                           ; $78a0: $dd
	di                                               ; $78a1: $f3
	call c, $0ff4                                    ; $78a2: $dc $f4 $0f
	db $ed                                           ; $78a5: $ed
	jr nz, jr_094_790a                               ; $78a6: $20 $62

	inc de                                           ; $78a8: $13
	db $eb                                           ; $78a9: $eb
	ld h, b                                          ; $78aa: $60
	ld a, $45                                        ; $78ab: $3e $45
	add hl, sp                                       ; $78ad: $39
	and e                                            ; $78ae: $a3
	cpl                                              ; $78af: $2f
	di                                               ; $78b0: $f3
	daa                                              ; $78b1: $27
	di                                               ; $78b2: $f3
	or c                                             ; $78b3: $b1
	ld b, d                                          ; $78b4: $42
	db $ed                                           ; $78b5: $ed
	dec l                                            ; $78b6: $2d
	add hl, bc                                       ; $78b7: $09
	cpl                                              ; $78b8: $2f
	ld [hl-], a                                      ; $78b9: $32
	db $dd                                           ; $78ba: $dd
	di                                               ; $78bb: $f3
	daa                                              ; $78bc: $27
	di                                               ; $78bd: $f3
	or c                                             ; $78be: $b1
	ld b, d                                          ; $78bf: $42
	db $ed                                           ; $78c0: $ed
	dec l                                            ; $78c1: $2d
	ld h, d                                          ; $78c2: $62
	inc de                                           ; $78c3: $13
	db $eb                                           ; $78c4: $eb
	ld h, b                                          ; $78c5: $60
	ld a, $45                                        ; $78c6: $3e $45
	add hl, sp                                       ; $78c8: $39
	and e                                            ; $78c9: $a3
	cpl                                              ; $78ca: $2f
	pop af                                           ; $78cb: $f1
	cp a                                             ; $78cc: $bf
	ld b, d                                          ; $78cd: $42
	db $ed                                           ; $78ce: $ed
	rst SubAFromBC                                          ; $78cf: $e7
	add hl, bc                                       ; $78d0: $09
	cpl                                              ; $78d1: $2f
	ld [hl-], a                                      ; $78d2: $32
	db $dd                                           ; $78d3: $dd
	pop af                                           ; $78d4: $f1
	cp a                                             ; $78d5: $bf
	ld b, d                                          ; $78d6: $42
	db $ed                                           ; $78d7: $ed
	rst SubAFromBC                                          ; $78d8: $e7
	ld h, d                                          ; $78d9: $62
	inc de                                           ; $78da: $13
	db $eb                                           ; $78db: $eb
	ld h, b                                          ; $78dc: $60
	ld a, $45                                        ; $78dd: $3e $45
	add hl, sp                                       ; $78df: $39
	and e                                            ; $78e0: $a3
	cpl                                              ; $78e1: $2f
	ldh a, [rAUD1LEN]                                ; $78e2: $f0 $11
	ld h, l                                          ; $78e4: $65
	ldh a, [rIF]                                     ; $78e5: $f0 $0f
	sub e                                            ; $78e7: $93
	ld l, c                                          ; $78e8: $69
	add hl, bc                                       ; $78e9: $09
	cpl                                              ; $78ea: $2f
	ld [hl-], a                                      ; $78eb: $32
	db $dd                                           ; $78ec: $dd
	ldh a, [rAUD1LEN]                                ; $78ed: $f0 $11
	ld h, l                                          ; $78ef: $65
	ldh a, [rIF]                                     ; $78f0: $f0 $0f
	sub e                                            ; $78f2: $93
	ld l, c                                          ; $78f3: $69
	ld h, d                                          ; $78f4: $62
	inc de                                           ; $78f5: $13
	db $eb                                           ; $78f6: $eb
	ld h, b                                          ; $78f7: $60
	ld a, $45                                        ; $78f8: $3e $45
	add hl, sp                                       ; $78fa: $39
	and e                                            ; $78fb: $a3
	cpl                                              ; $78fc: $2f
	db $f4                                           ; $78fd: $f4
	ld l, a                                          ; $78fe: $6f
	ld b, d                                          ; $78ff: $42
	ld l, [hl]                                       ; $7900: $6e
	inc a                                            ; $7901: $3c
	ld b, c                                          ; $7902: $41
	add hl, bc                                       ; $7903: $09
	cpl                                              ; $7904: $2f
	ld [hl-], a                                      ; $7905: $32
	db $dd                                           ; $7906: $dd
	db $f4                                           ; $7907: $f4
	ld l, a                                          ; $7908: $6f
	ld b, d                                          ; $7909: $42

jr_094_790a:
	ld l, [hl]                                       ; $790a: $6e
	inc a                                            ; $790b: $3c
	ld b, c                                          ; $790c: $41
	ld h, d                                          ; $790d: $62
	inc de                                           ; $790e: $13
	db $eb                                           ; $790f: $eb
	ld h, b                                          ; $7910: $60
	ld a, $45                                        ; $7911: $3e $45
	add hl, sp                                       ; $7913: $39
	and e                                            ; $7914: $a3
	cpl                                              ; $7915: $2f
	pop af                                           ; $7916: $f1
	add [hl]                                         ; $7917: $86
	ld b, d                                          ; $7918: $42
	di                                               ; $7919: $f3
	ld b, c                                          ; $791a: $41
	ldh a, [c]                                       ; $791b: $f2
	ld [$0957], sp                                   ; $791c: $08 $57 $09
	cpl                                              ; $791f: $2f
	ld [hl-], a                                      ; $7920: $32
	db $dd                                           ; $7921: $dd
	pop af                                           ; $7922: $f1
	add [hl]                                         ; $7923: $86
	ld b, d                                          ; $7924: $42
	di                                               ; $7925: $f3
	ld b, c                                          ; $7926: $41
	ldh a, [c]                                       ; $7927: $f2
	ld [$6257], sp                                   ; $7928: $08 $57 $62
	inc de                                           ; $792b: $13
	db $eb                                           ; $792c: $eb
	ld h, b                                          ; $792d: $60
	ld a, $45                                        ; $792e: $3e $45
	add hl, sp                                       ; $7930: $39
	and e                                            ; $7931: $a3
	cpl                                              ; $7932: $2f
	adc d                                            ; $7933: $8a
	ldh a, [rHDMA4]                                  ; $7934: $f0 $54
	ldh a, [rAUD1HIGH]                               ; $7936: $f0 $14
	xor $15                                          ; $7938: $ee $15
	ldh a, [rAUDTERM]                                ; $793a: $f0 $25
	add hl, bc                                       ; $793c: $09
	cpl                                              ; $793d: $2f
	ld [hl-], a                                      ; $793e: $32
	ld b, l                                          ; $793f: $45
	ld a, $ac                                        ; $7940: $3e $ac
	adc d                                            ; $7942: $8a
	ldh a, [rHDMA4]                                  ; $7943: $f0 $54
	ldh a, [rAUD1HIGH]                               ; $7945: $f0 $14
	xor $15                                          ; $7947: $ee $15
	ldh a, [rAUDTERM]                                ; $7949: $f0 $25
	ld h, d                                          ; $794b: $62
	inc de                                           ; $794c: $13
	db $eb                                           ; $794d: $eb
	ld h, b                                          ; $794e: $60
	ld a, $45                                        ; $794f: $3e $45
	add hl, sp                                       ; $7951: $39
	and e                                            ; $7952: $a3
	cpl                                              ; $7953: $2f
	ldh a, [rOBP1]                                   ; $7954: $f0 $49
	ldh a, [$67]                                     ; $7956: $f0 $67
	ldh a, [rOBP0]                                   ; $7958: $f0 $48
	ldh a, [rAUD3ENA]                                ; $795a: $f0 $1a
	ldh a, [$6e]                                     ; $795c: $f0 $6e
	ldh a, [$2f]                                     ; $795e: $f0 $2f
	add hl, bc                                       ; $7960: $09
	cpl                                              ; $7961: $2f
	ld [hl-], a                                      ; $7962: $32
	db $dd                                           ; $7963: $dd
	ldh a, [rOBP1]                                   ; $7964: $f0 $49
	ldh a, [$67]                                     ; $7966: $f0 $67
	ldh a, [rOBP0]                                   ; $7968: $f0 $48
	ldh a, [rAUD3ENA]                                ; $796a: $f0 $1a
	ldh a, [$6e]                                     ; $796c: $f0 $6e
	ldh a, [$2f]                                     ; $796e: $f0 $2f
	ld h, d                                          ; $7970: $62
	inc de                                           ; $7971: $13
	db $eb                                           ; $7972: $eb
	ld h, b                                          ; $7973: $60
	ld a, $45                                        ; $7974: $3e $45
	add hl, sp                                       ; $7976: $39
	and e                                            ; $7977: $a3
	cpl                                              ; $7978: $2f
	ld b, e                                          ; $7979: $43
	ld b, [hl]                                       ; $797a: $46
	dec sp                                           ; $797b: $3b
	inc [hl]                                         ; $797c: $34
	db $ed                                           ; $797d: $ed
	ld d, e                                          ; $797e: $53
	and d                                            ; $797f: $a2
	xor $14                                          ; $7980: $ee $14
	inc [hl]                                         ; $7982: $34
	inc hl                                           ; $7983: $23
	inc de                                           ; $7984: $13
	ld l, a                                          ; $7985: $6f
	ld b, a                                          ; $7986: $47
	ld l, e                                          ; $7987: $6b
	inc a                                            ; $7988: $3c
	xor $1c                                          ; $7989: $ee $1c
	ld c, d                                          ; $798b: $4a
	ld c, a                                          ; $798c: $4f
	and c                                            ; $798d: $a1
	xor $14                                          ; $798e: $ee $14
	inc [hl]                                         ; $7990: $34
	ld d, $35                                        ; $7991: $16 $35
	inc hl                                           ; $7993: $23
	inc de                                           ; $7994: $13
	ld l, e                                          ; $7995: $6b
	inc a                                            ; $7996: $3c
	xor $1c                                          ; $7997: $ee $1c
	inc a                                            ; $7999: $3c
	ld a, $50                                        ; $799a: $3e $50
	and c                                            ; $799c: $a1
	xor $14                                          ; $799d: $ee $14
	inc [hl]                                         ; $799f: $34
	ld l, a                                          ; $79a0: $6f
	ld b, a                                          ; $79a1: $47
	ld l, e                                          ; $79a2: $6b
	inc a                                            ; $79a3: $3c
	xor $1c                                          ; $79a4: $ee $1c
	and c                                            ; $79a6: $a1
	ldh a, [rSCY]                                    ; $79a7: $f0 $42
	ld b, c                                          ; $79a9: $41
	scf                                              ; $79aa: $37
	inc hl                                           ; $79ab: $23
	inc de                                           ; $79ac: $13
	ld l, e                                          ; $79ad: $6b
	ld b, d                                          ; $79ae: $42
	xor $1c                                          ; $79af: $ee $1c
	inc a                                            ; $79b1: $3c
	ld a, $50                                        ; $79b2: $3e $50
	and c                                            ; $79b4: $a1
	cpl                                              ; $79b5: $2f
	ld b, e                                          ; $79b6: $43
	ld b, b                                          ; $79b7: $40
	ld c, l                                          ; $79b8: $4d
	ld e, e                                          ; $79b9: $5b
	ld d, [hl]                                       ; $79ba: $56
	inc [hl]                                         ; $79bb: $34
	db $ed                                           ; $79bc: $ed
	halt                                             ; $79bd: $76
	ld c, d                                          ; $79be: $4a
	inc de                                           ; $79bf: $13
	db $ed                                           ; $79c0: $ed
	ld d, e                                          ; $79c1: $53
	ld h, d                                          ; $79c2: $62
	inc de                                           ; $79c3: $13
	pop af                                           ; $79c4: $f1
	ld bc, $4df0                                     ; $79c5: $01 $f0 $4d
	sub h                                            ; $79c8: $94
	ld b, b                                          ; $79c9: $40
	add hl, sp                                       ; $79ca: $39
	and b                                            ; $79cb: $a0
	xor $13                                          ; $79cc: $ee $13
	inc [hl]                                         ; $79ce: $34
	ldh a, [$b3]                                     ; $79cf: $f0 $b3
	ld c, d                                          ; $79d1: $4a
	ld d, c                                          ; $79d2: $51
	and b                                            ; $79d3: $a0
	cpl                                              ; $79d4: $2f
	ld b, e                                          ; $79d5: $43
	ld e, [hl]                                       ; $79d6: $5e
	dec sp                                           ; $79d7: $3b
	ld c, c                                          ; $79d8: $49
	xor e                                            ; $79d9: $ab
	ld de, $ffe9                                     ; $79da: $11 $e9 $ff
	and b                                            ; $79dd: $a0
	ld e, [hl]                                       ; $79de: $5e
	dec sp                                           ; $79df: $3b
	inc [hl]                                         ; $79e0: $34
	ld d, $36                                        ; $79e1: $16 $36
	inc hl                                           ; $79e3: $23
	inc de                                           ; $79e4: $13
	db $ec                                           ; $79e5: $ec
	push bc                                          ; $79e6: $c5
	inc [hl]                                         ; $79e7: $34
	ldh a, [c]                                       ; $79e8: $f2
	rra                                              ; $79e9: $1f
	ldh a, [$38]                                     ; $79ea: $f0 $38
	inc a                                            ; $79ec: $3c
	ld d, b                                          ; $79ed: $50
	db $ed                                           ; $79ee: $ed
	halt                                             ; $79ef: $76
	ld d, e                                          ; $79f0: $53
	inc de                                           ; $79f1: $13
	ld a, b                                          ; $79f2: $78
	ld c, [hl]                                       ; $79f3: $4e
	ldh a, [c]                                       ; $79f4: $f2
	inc b                                            ; $79f5: $04
	ld b, h                                          ; $79f6: $44
	ld c, c                                          ; $79f7: $49
	ld [hl], a                                       ; $79f8: $77
	dec sp                                           ; $79f9: $3b
	ccf                                              ; $79fa: $3f
	jr c, jr_094_7a3a                                ; $79fb: $38 $3d

	ld h, e                                          ; $79fd: $63
	and b                                            ; $79fe: $a0
	ld d, $36                                        ; $79ff: $16 $36
	inc hl                                           ; $7a01: $23
	inc de                                           ; $7a02: $13
	db $ed                                           ; $7a03: $ed
	ld d, a                                          ; $7a04: $57
	inc [hl]                                         ; $7a05: $34
	db $ed                                           ; $7a06: $ed
	halt                                             ; $7a07: $76
	ld a, e                                          ; $7a08: $7b
	dec sp                                           ; $7a09: $3b
	inc a                                            ; $7a0a: $3c
	ld d, a                                          ; $7a0b: $57
	xor l                                            ; $7a0c: $ad
	ld c, a                                          ; $7a0d: $4f
	ccf                                              ; $7a0e: $3f
	ld d, c                                          ; $7a0f: $51
	ldh a, [$cb]                                     ; $7a10: $f0 $cb
	ld c, [hl]                                       ; $7a12: $4e
	ld b, d                                          ; $7a13: $42
	ld c, a                                          ; $7a14: $4f
	inc [hl]                                         ; $7a15: $34
	pop af                                           ; $7a16: $f1
	sbc $57                                          ; $7a17: $de $57
	ldh a, [$2c]                                     ; $7a19: $f0 $2c
	ld b, l                                          ; $7a1b: $45
	ld c, h                                          ; $7a1c: $4c
	xor b                                            ; $7a1d: $a8
	ld c, d                                          ; $7a1e: $4a
	inc [hl]                                         ; $7a1f: $34
	ld l, e                                          ; $7a20: $6b
	ld b, d                                          ; $7a21: $42
	ldh a, [rAUD2LEN]                                ; $7a22: $f0 $16
	inc a                                            ; $7a24: $3c
	ld a, $50                                        ; $7a25: $3e $50
	and c                                            ; $7a27: $a1
	xor $14                                          ; $7a28: $ee $14
	inc [hl]                                         ; $7a2a: $34
	ld l, e                                          ; $7a2b: $6b
	ld b, d                                          ; $7a2c: $42
	xor $1c                                          ; $7a2d: $ee $1c
	inc a                                            ; $7a2f: $3c
	ld a, $50                                        ; $7a30: $3e $50
	and c                                            ; $7a32: $a1
	ld b, [hl]                                       ; $7a33: $46
	ld b, [hl]                                       ; $7a34: $46
	inc [hl]                                         ; $7a35: $34
	db $f4                                           ; $7a36: $f4
	sbc c                                            ; $7a37: $99
	ldh a, [c]                                       ; $7a38: $f2
	reti                                             ; $7a39: $d9


jr_094_7a3a:
	ldh a, [rRP]                                     ; $7a3a: $f0 $56
	ld c, h                                          ; $7a3c: $4c
	and b                                            ; $7a3d: $a0
	cpl                                              ; $7a3e: $2f
	ld b, e                                          ; $7a3f: $43
	ldh a, [$f5]                                     ; $7a40: $f0 $f5
	add hl, sp                                       ; $7a42: $39
	ld b, l                                          ; $7a43: $45
	xor b                                            ; $7a44: $a8
	ld de, $4544                                     ; $7a45: $11 $44 $45
	and b                                            ; $7a48: $a0
	ldh a, [$98]                                     ; $7a49: $f0 $98
	ld e, b                                          ; $7a4b: $58
	ld b, c                                          ; $7a4c: $41
	ld c, d                                          ; $7a4d: $4a
	ld c, a                                          ; $7a4e: $4f
	db $ec                                           ; $7a4f: $ec
	ld [$46ad], sp                                   ; $7a50: $08 $ad $46
	ld a, [hl-]                                      ; $7a53: $3a
	dec a                                            ; $7a54: $3d
	ld l, h                                          ; $7a55: $6c
	dec a                                            ; $7a56: $3d
	jr c, jr_094_7a93                                ; $7a57: $38 $3a

	add h                                            ; $7a59: $84
	ld d, e                                          ; $7a5a: $53
	inc [hl]                                         ; $7a5b: $34
	ld l, a                                          ; $7a5c: $6f
	ld b, a                                          ; $7a5d: $47
	inc de                                           ; $7a5e: $13
	ld l, e                                          ; $7a5f: $6b
	ld b, d                                          ; $7a60: $42
	xor $1c                                          ; $7a61: $ee $1c
	ld d, e                                          ; $7a63: $53
	ld b, [hl]                                       ; $7a64: $46
	ld c, [hl]                                       ; $7a65: $4e
	ld b, d                                          ; $7a66: $42
	inc a                                            ; $7a67: $3c
	ld a, $50                                        ; $7a68: $3e $50
	and c                                            ; $7a6a: $a1
	cpl                                              ; $7a6b: $2f
	ld b, e                                          ; $7a6c: $43
	xor $1e                                          ; $7a6d: $ee $1e
	ld e, b                                          ; $7a6f: $58
	xor l                                            ; $7a70: $ad
	ret                                              ; $7a71: $c9


	ld a, $3d                                        ; $7a72: $3e $3d
	inc de                                           ; $7a74: $13
	xor $07                                          ; $7a75: $ee $07
	ld d, e                                          ; $7a77: $53
	ld b, [hl]                                       ; $7a78: $46
	ld c, [hl]                                       ; $7a79: $4e
	ld b, c                                          ; $7a7a: $41
	ld b, h                                          ; $7a7b: $44
	ld e, l                                          ; $7a7c: $5d
	ld e, d                                          ; $7a7d: $5a
	xor l                                            ; $7a7e: $ad
	db $eb                                           ; $7a7f: $eb
	ldh a, [c]                                       ; $7a80: $f2
	ld b, a                                          ; $7a81: $47
	xor h                                            ; $7a82: $ac
	ld a, b                                          ; $7a83: $78
	ld c, l                                          ; $7a84: $4d
	ld a, [hl-]                                      ; $7a85: $3a
	jr c, jr_094_7ac4                                ; $7a86: $38 $3c

	ld a, [hl-]                                      ; $7a88: $3a
	and c                                            ; $7a89: $a1
	ld d, d                                          ; $7a8a: $52
	ld [hl], h                                       ; $7a8b: $74
	inc [hl]                                         ; $7a8c: $34
	inc hl                                           ; $7a8d: $23
	inc de                                           ; $7a8e: $13
	pop af                                           ; $7a8f: $f1
	ld bc, $4df0                                     ; $7a90: $01 $f0 $4d

jr_094_7a93:
	sub h                                            ; $7a93: $94
	ld a, $42                                        ; $7a94: $3e $42
	ld h, h                                          ; $7a96: $64
	db $ed                                           ; $7a97: $ed
	halt                                             ; $7a98: $76
	ld a, [hl-]                                      ; $7a99: $3a
	ld b, d                                          ; $7a9a: $42
	ld c, h                                          ; $7a9b: $4c
	xor b                                            ; $7a9c: $a8
	ret nc                                           ; $7a9d: $d0

	and b                                            ; $7a9e: $a0
	call c, $2348                                    ; $7a9f: $dc $48 $23
	inc de                                           ; $7aa2: $13
	db $ed                                           ; $7aa3: $ed
	ld d, a                                          ; $7aa4: $57
	inc [hl]                                         ; $7aa5: $34
	ld c, a                                          ; $7aa6: $4f
	add hl, sp                                       ; $7aa7: $39

Call_094_7aa8:
	ldh a, [$cc]                                     ; $7aa8: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $7aaa: $f0 $88
	ld d, e                                          ; $7aac: $53
	ld a, [hl-]                                      ; $7aad: $3a
	jr c, jr_094_7aec                                ; $7aae: $38 $3c

	ld d, b                                          ; $7ab0: $50
	xor h                                            ; $7ab1: $ac
	ld b, l                                          ; $7ab2: $45
	ld d, l                                          ; $7ab3: $55
	dec sp                                           ; $7ab4: $3b
	ccf                                              ; $7ab5: $3f
	ld b, l                                          ; $7ab6: $45
	and b                                            ; $7ab7: $a0
	ld l, d                                          ; $7ab8: $6a
	ld c, e                                          ; $7ab9: $4b
	ldh a, [$ea]                                     ; $7aba: $f0 $ea
	ld b, h                                          ; $7abc: $44
	inc a                                            ; $7abd: $3c
	ld d, b                                          ; $7abe: $50
	xor h                                            ; $7abf: $ac
	ld h, a                                          ; $7ac0: $67
	dec sp                                           ; $7ac1: $3b
	ccf                                              ; $7ac2: $3f
	ld b, [hl]                                       ; $7ac3: $46

jr_094_7ac4:
	ldh a, [rSB]                                     ; $7ac4: $f0 $01
	ld a, [hl-]                                      ; $7ac6: $3a
	jr c, jr_094_7adc                                ; $7ac7: $38 $13

	ld d, h                                          ; $7ac9: $54
	ld c, c                                          ; $7aca: $49
	ld c, a                                          ; $7acb: $4f
	ld a, [hl-]                                      ; $7acc: $3a
	ld d, l                                          ; $7acd: $55
	ccf                                              ; $7ace: $3f
	ld b, l                                          ; $7acf: $45
	and b                                            ; $7ad0: $a0
	cpl                                              ; $7ad1: $2f
	ld b, e                                          ; $7ad2: $43
	ld e, e                                          ; $7ad3: $5b
	ld d, [hl]                                       ; $7ad4: $56
	ld b, [hl]                                       ; $7ad5: $46
	inc [hl]                                         ; $7ad6: $34
	sbc c                                            ; $7ad7: $99
	dec sp                                           ; $7ad8: $3b
	ccf                                              ; $7ad9: $3f
	ld c, [hl]                                       ; $7ada: $4e
	ld b, l                                          ; $7adb: $45

jr_094_7adc:
	and b                                            ; $7adc: $a0
	cpl                                              ; $7add: $2f
	ld b, e                                          ; $7ade: $43
	ld e, b                                          ; $7adf: $58
	ccf                                              ; $7ae0: $3f
	inc [hl]                                         ; $7ae1: $34
	ldh a, [$bc]                                     ; $7ae2: $f0 $bc
	ld b, a                                          ; $7ae4: $47
	ld h, a                                          ; $7ae5: $67
	dec sp                                           ; $7ae6: $3b
	ccf                                              ; $7ae7: $3f
	inc de                                           ; $7ae8: $13
	sbc c                                            ; $7ae9: $99
	dec sp                                           ; $7aea: $3b
	ccf                                              ; $7aeb: $3f

jr_094_7aec:
	ld c, [hl]                                       ; $7aec: $4e
	inc a                                            ; $7aed: $3c
	and b                                            ; $7aee: $a0
	db $eb                                           ; $7aef: $eb
	ccf                                              ; $7af0: $3f
	dec [hl]                                         ; $7af1: $35
	inc hl                                           ; $7af2: $23
	inc de                                           ; $7af3: $13
	sbc c                                            ; $7af4: $99
	dec a                                            ; $7af5: $3d
	ld a, c                                          ; $7af6: $79
	ccf                                              ; $7af7: $3f
	db $ec                                           ; $7af8: $ec
	push de                                          ; $7af9: $d5
	inc a                                            ; $7afa: $3c
	ld a, $50                                        ; $7afb: $3e $50
	and c                                            ; $7afd: $a1
	ld a, b                                          ; $7afe: $78
	ccf                                              ; $7aff: $3f
	ld b, [hl]                                       ; $7b00: $46
	ldh a, [rSB]                                     ; $7b01: $f0 $01
	dec a                                            ; $7b03: $3d
	ld h, e                                          ; $7b04: $63
	ld b, l                                          ; $7b05: $45
	xor b                                            ; $7b06: $a8
	ld d, h                                          ; $7b07: $54
	ld b, d                                          ; $7b08: $42
	ld l, a                                          ; $7b09: $6f
	ld b, a                                          ; $7b0a: $47
	ld l, e                                          ; $7b0b: $6b
	ld b, d                                          ; $7b0c: $42
	ldh a, [rAUD2LEN]                                ; $7b0d: $f0 $16
	inc a                                            ; $7b0f: $3c
	ld a, $50                                        ; $7b10: $3e $50
	and c                                            ; $7b12: $a1
	ldh a, [rAUD2LEN]                                ; $7b13: $f0 $16
	ldh a, [c]                                       ; $7b15: $f2
	ld c, [hl]                                       ; $7b16: $4e
	ld h, d                                          ; $7b17: $62
	inc [hl]                                         ; $7b18: $34
	ld c, e                                          ; $7b19: $4b
	ld l, [hl]                                       ; $7b1a: $6e
	ld d, l                                          ; $7b1b: $55
	inc de                                           ; $7b1c: $13
	add d                                            ; $7b1d: $82
	dec sp                                           ; $7b1e: $3b
	ccf                                              ; $7b1f: $3f
	ld d, l                                          ; $7b20: $55
	ld b, h                                          ; $7b21: $44
	ld e, b                                          ; $7b22: $58
	ld c, [hl]                                       ; $7b23: $4e
	inc a                                            ; $7b24: $3c
	ld a, $50                                        ; $7b25: $3e $50
	and c                                            ; $7b27: $a1
	cpl                                              ; $7b28: $2f
	ld b, e                                          ; $7b29: $43
	ld c, c                                          ; $7b2a: $49
	inc [hl]                                         ; $7b2b: $34
	ld [hl], a                                       ; $7b2c: $77
	dec sp                                           ; $7b2d: $3b
	dec a                                            ; $7b2e: $3d
	ld e, l                                          ; $7b2f: $5d
	ld e, d                                          ; $7b30: $5a
	xor b                                            ; $7b31: $a8
	db $ed                                           ; $7b32: $ed
	halt                                             ; $7b33: $76
	ldh a, [rDMA]                                    ; $7b34: $f0 $46
	ldh a, [c]                                       ; $7b36: $f2
	ld [hl], h                                       ; $7b37: $74
	db $ec                                           ; $7b38: $ec
	dec b                                            ; $7b39: $05
	ld l, [hl]                                       ; $7b3a: $6e
	xor b                                            ; $7b3b: $a8
	db $eb                                           ; $7b3c: $eb
	inc [hl]                                         ; $7b3d: $34
	inc [hl]                                         ; $7b3e: $34
	ld b, [hl]                                       ; $7b3f: $46
	ld e, h                                          ; $7b40: $5c
	ld d, b                                          ; $7b41: $50
	ld [hl], c                                       ; $7b42: $71
	ld c, [hl]                                       ; $7b43: $4e
	inc a                                            ; $7b44: $3c
	ld c, b                                          ; $7b45: $48
	and b                                            ; $7b46: $a0
	cpl                                              ; $7b47: $2f
	ld b, e                                          ; $7b48: $43
	jp hl                                            ; $7b49: $e9


	db $dd                                           ; $7b4a: $dd
	and b                                            ; $7b4b: $a0
	ldh a, [c]                                       ; $7b4c: $f2
	rra                                              ; $7b4d: $1f
	ldh a, [$38]                                     ; $7b4e: $f0 $38
	ld d, e                                          ; $7b50: $53
	inc [hl]                                         ; $7b51: $34
	ld l, a                                          ; $7b52: $6f
	ld b, a                                          ; $7b53: $47
	ld c, b                                          ; $7b54: $48
	ld [hl], $23                                     ; $7b55: $36 $23
	inc de                                           ; $7b57: $13
	db $ec                                           ; $7b58: $ec
	ld b, $ec                                        ; $7b59: $06 $ec
	ld e, $3c                                        ; $7b5b: $1e $3c
	ld a, $50                                        ; $7b5d: $3e $50
	and c                                            ; $7b5f: $a1
	ld b, [hl]                                       ; $7b60: $46
	ld d, a                                          ; $7b61: $57
	ld d, e                                          ; $7b62: $53
	ld c, c                                          ; $7b63: $49
	add hl, sp                                       ; $7b64: $39
	inc [hl]                                         ; $7b65: $34
	db $eb                                           ; $7b66: $eb
	ld a, a                                          ; $7b67: $7f
	dec [hl]                                         ; $7b68: $35
	inc hl                                           ; $7b69: $23
	inc de                                           ; $7b6a: $13
	ld d, d                                          ; $7b6b: $52
	dec a                                            ; $7b6c: $3d
	inc [hl]                                         ; $7b6d: $34
	ld l, a                                          ; $7b6e: $6f
	ld b, d                                          ; $7b6f: $42
	push af                                          ; $7b70: $f5
	dec l                                            ; $7b71: $2d
	ld d, e                                          ; $7b72: $53
	xor $08                                          ; $7b73: $ee $08
	xor l                                            ; $7b75: $ad
	db $ec                                           ; $7b76: $ec
	ld b, $38                                        ; $7b77: $06 $38
	jr c, jr_094_7bb7                                ; $7b79: $38 $3c

	ld a, $50                                        ; $7b7b: $3e $50
	and c                                            ; $7b7d: $a1
	ld d, d                                          ; $7b7e: $52
	dec a                                            ; $7b7f: $3d
	inc [hl]                                         ; $7b80: $34
	db $eb                                           ; $7b81: $eb
	ld h, b                                          ; $7b82: $60
	xor c                                            ; $7b83: $a9
	ld a, d                                          ; $7b84: $7a
	ld d, a                                          ; $7b85: $57
	ld d, e                                          ; $7b86: $53
	pop af                                           ; $7b87: $f1
	sbc $3b                                          ; $7b88: $de $3b
	ld h, c                                          ; $7b8a: $61
	ld d, [hl]                                       ; $7b8b: $56
	add hl, sp                                       ; $7b8c: $39
	ld h, e                                          ; $7b8d: $63
	ld c, h                                          ; $7b8e: $4c
	xor b                                            ; $7b8f: $a8
	db $ec                                           ; $7b90: $ec
	ld b, $ec                                        ; $7b91: $06 $ec
	jr jr_094_7bd4                                   ; $7b93: $18 $3f

	and c                                            ; $7b95: $a1
	ld l, a                                          ; $7b96: $6f
	ld b, a                                          ; $7b97: $47
	inc [hl]                                         ; $7b98: $34
	push af                                          ; $7b99: $f5
	inc l                                            ; $7b9a: $2c
	ldh a, [$cb]                                     ; $7b9b: $f0 $cb
	ldh a, [$2c]                                     ; $7b9d: $f0 $2c
	xor c                                            ; $7b9f: $a9
	ld d, d                                          ; $7ba0: $52
	inc [hl]                                         ; $7ba1: $34
	pop af                                           ; $7ba2: $f1
	ld c, d                                          ; $7ba3: $4a
	ld e, l                                          ; $7ba4: $5d
	pop af                                           ; $7ba5: $f1
	inc b                                            ; $7ba6: $04
	dec sp                                           ; $7ba7: $3b
	ccf                                              ; $7ba8: $3f
	rst SubAFromDE                                          ; $7ba9: $df
	ld h, e                                          ; $7baa: $63
	xor b                                            ; $7bab: $a8
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7bac: $f0 $81
	ld e, l                                          ; $7bae: $5d
	ld c, [hl]                                       ; $7baf: $4e
	ld h, e                                          ; $7bb0: $63
	ld c, h                                          ; $7bb1: $4c
	and b                                            ; $7bb2: $a0
	ld d, d                                          ; $7bb3: $52
	ld b, [hl]                                       ; $7bb4: $46
	inc [hl]                                         ; $7bb5: $34
	ld l, a                                          ; $7bb6: $6f

jr_094_7bb7:
	ld b, a                                          ; $7bb7: $47
	xor h                                            ; $7bb8: $ac
	ldh a, [rPCM12]                                  ; $7bb9: $f0 $76
	add b                                            ; $7bbb: $80
	inc a                                            ; $7bbc: $3c
	ld h, e                                          ; $7bbd: $63
	ld a, $38                                        ; $7bbe: $3e $38
	inc de                                           ; $7bc0: $13
	ldh a, [$57]                                     ; $7bc1: $f0 $57
	ldh a, [$ae]                                     ; $7bc3: $f0 $ae
	ld a, [hl-]                                      ; $7bc5: $3a
	ld c, a                                          ; $7bc6: $4f
	ld b, d                                          ; $7bc7: $42
	ld c, d                                          ; $7bc8: $4a
	ld d, c                                          ; $7bc9: $51
	ld d, h                                          ; $7bca: $54
	ld c, c                                          ; $7bcb: $49
	dec [hl]                                         ; $7bcc: $35
	inc hl                                           ; $7bcd: $23
	inc de                                           ; $7bce: $13
	ld b, [hl]                                       ; $7bcf: $46
	ld d, a                                          ; $7bd0: $57
	ld d, e                                          ; $7bd1: $53
	dec a                                            ; $7bd2: $3d
	ld d, l                                          ; $7bd3: $55

jr_094_7bd4:
	inc [hl]                                         ; $7bd4: $34
	db $eb                                           ; $7bd5: $eb
	ld a, a                                          ; $7bd6: $7f
	and b                                            ; $7bd7: $a0
	ld d, d                                          ; $7bd8: $52
	ld [hl], h                                       ; $7bd9: $74
	inc [hl]                                         ; $7bda: $34
	ld d, h                                          ; $7bdb: $54
	ld b, c                                          ; $7bdc: $41
	ld a, [hl-]                                      ; $7bdd: $3a
	ld c, c                                          ; $7bde: $49
	ld d, h                                          ; $7bdf: $54
	ld e, a                                          ; $7be0: $5f
	ld c, h                                          ; $7be1: $4c
	xor b                                            ; $7be2: $a8
	ld c, c                                          ; $7be3: $49
	ld d, a                                          ; $7be4: $57
	ld b, [hl]                                       ; $7be5: $46
	ld e, [hl]                                       ; $7be6: $5e
	sbc h                                            ; $7be7: $9c
	xor h                                            ; $7be8: $ac
	ldh a, [c]                                       ; $7be9: $f2
	rst JumpTable                                          ; $7bea: $c7
	jr c, jr_094_7c2c                                ; $7beb: $38 $3f

	ld h, h                                          ; $7bed: $64
	ld d, l                                          ; $7bee: $55
	ld h, e                                          ; $7bef: $63
	ld c, h                                          ; $7bf0: $4c
	and b                                            ; $7bf1: $a0
	ld l, a                                          ; $7bf2: $6f
	ld c, a                                          ; $7bf3: $4f
	ldh a, [c]                                       ; $7bf4: $f2
	ld c, h                                          ; $7bf5: $4c
	ld d, l                                          ; $7bf6: $55
	ld [hl], d                                       ; $7bf7: $72
	ld d, b                                          ; $7bf8: $50
	ld c, l                                          ; $7bf9: $4d
	dec a                                            ; $7bfa: $3d
	inc de                                           ; $7bfb: $13
	ld c, a                                          ; $7bfc: $4f
	ld b, d                                          ; $7bfd: $42
	ld b, h                                          ; $7bfe: $44
	ld h, e                                          ; $7bff: $63
	xor b                                            ; $7c00: $a8
	ld d, h                                          ; $7c01: $54
	ld b, d                                          ; $7c02: $42
	sbc l                                            ; $7c03: $9d
	ld d, b                                          ; $7c04: $50
	jr c, jr_094_7c49                                ; $7c05: $38 $42

	ldh a, [c]                                       ; $7c07: $f2
	adc e                                            ; $7c08: $8b
	di                                               ; $7c09: $f3
	ld c, $4a                                        ; $7c0a: $0e $4a
	ld a, $3c                                        ; $7c0c: $3e $3c
	ld a, [hl-]                                      ; $7c0e: $3a
	jr c, jr_094_7c53                                ; $7c0f: $38 $42

	ld c, h                                          ; $7c11: $4c
	dec [hl]                                         ; $7c12: $35
	inc hl                                           ; $7c13: $23
	inc de                                           ; $7c14: $13
	ldh a, [rHDMA5]                                  ; $7c15: $f0 $55
	ldh a, [rBCPS]                                   ; $7c17: $f0 $68
	ld d, c                                          ; $7c19: $51
	ld c, [hl]                                       ; $7c1a: $4e
	ld h, e                                          ; $7c1b: $63
	and b                                            ; $7c1c: $a0
	cpl                                              ; $7c1d: $2f
	ld [hl-], a                                      ; $7c1e: $32
	db $ec                                           ; $7c1f: $ec
	dec hl                                           ; $7c20: $2b
	inc de                                           ; $7c21: $13
	ldh a, [$66]                                     ; $7c22: $f0 $66
	ld b, c                                          ; $7c24: $41
	ld c, d                                          ; $7c25: $4a
	ld d, l                                          ; $7c26: $55
	ld c, l                                          ; $7c27: $4d
	ld c, [hl]                                       ; $7c28: $4e
	ld a, [hl-]                                      ; $7c29: $3a
	ld b, c                                          ; $7c2a: $41
	ccf                                              ; $7c2b: $3f

jr_094_7c2c:
	xor h                                            ; $7c2c: $ac
	add sp, $6f                                      ; $7c2d: $e8 $6f
	and e                                            ; $7c2f: $a3
	cpl                                              ; $7c30: $2f
	ld [hl-], a                                      ; $7c31: $32
	db $ec                                           ; $7c32: $ec
	sub $ac                                          ; $7c33: $d6 $ac
	ldh a, [$66]                                     ; $7c35: $f0 $66
	ld b, c                                          ; $7c37: $41
	ld c, d                                          ; $7c38: $4a
	ld c, a                                          ; $7c39: $4f
	ld d, b                                          ; $7c3a: $50
	ld e, [hl]                                       ; $7c3b: $5e
	dec a                                            ; $7c3c: $3d
	ld a, [hl-]                                      ; $7c3d: $3a
	xor b                                            ; $7c3e: $a8
	ld [$4876], a                                    ; $7c3f: $ea $76 $48
	and e                                            ; $7c42: $a3
	ld l, a                                          ; $7c43: $6f
	ld c, a                                          ; $7c44: $4f
	ldh a, [c]                                       ; $7c45: $f2
	ld c, h                                          ; $7c46: $4c
	ld d, l                                          ; $7c47: $55
	ld [hl], d                                       ; $7c48: $72

jr_094_7c49:
	ld d, b                                          ; $7c49: $50
	ld c, l                                          ; $7c4a: $4d
	dec a                                            ; $7c4b: $3d
	inc de                                           ; $7c4c: $13
	ld c, a                                          ; $7c4d: $4f
	ld b, d                                          ; $7c4e: $42
	ld b, h                                          ; $7c4f: $44
	ld h, e                                          ; $7c50: $63
	xor b                                            ; $7c51: $a8
	ld d, h                                          ; $7c52: $54

jr_094_7c53:
	ld b, d                                          ; $7c53: $42
	sbc l                                            ; $7c54: $9d
	ld d, b                                          ; $7c55: $50
	jr c, jr_094_7c9a                                ; $7c56: $38 $42

	inc de                                           ; $7c58: $13
	ldh a, [c]                                       ; $7c59: $f2
	adc e                                            ; $7c5a: $8b
	di                                               ; $7c5b: $f3
	ld c, $4a                                        ; $7c5c: $0e $4a
	ld a, $3c                                        ; $7c5e: $3e $3c
	ld a, [hl-]                                      ; $7c60: $3a
	jr c, jr_094_7ca5                                ; $7c61: $38 $42

	ld c, h                                          ; $7c63: $4c
	and b                                            ; $7c64: $a0
	cpl                                              ; $7c65: $2f
	ld [hl-], a                                      ; $7c66: $32
	ld [$1368], a                                    ; $7c67: $ea $68 $13
	ld [$ad5b], a                                    ; $7c6a: $ea $5b $ad
	ld [$485e], a                                    ; $7c6d: $ea $5e $48
	and e                                            ; $7c70: $a3
	cpl                                              ; $7c71: $2f
	di                                               ; $7c72: $f3
	ld de, $12f3                                     ; $7c73: $11 $f3 $12
	db $ed                                           ; $7c76: $ed
	rlca                                             ; $7c77: $07
	db $ed                                           ; $7c78: $ed
	halt                                             ; $7c79: $76
	add hl, bc                                       ; $7c7a: $09
	cpl                                              ; $7c7b: $2f
	ld [hl-], a                                      ; $7c7c: $32
	ld b, l                                          ; $7c7d: $45
	ld a, $ac                                        ; $7c7e: $3e $ac
	di                                               ; $7c80: $f3
	ld de, $12f3                                     ; $7c81: $11 $f3 $12
	db $ed                                           ; $7c84: $ed
	rlca                                             ; $7c85: $07
	db $ed                                           ; $7c86: $ed
	halt                                             ; $7c87: $76
	ld h, d                                          ; $7c88: $62
	inc de                                           ; $7c89: $13
	db $eb                                           ; $7c8a: $eb
	ld h, b                                          ; $7c8b: $60
	ld a, $45                                        ; $7c8c: $3e $45
	add hl, sp                                       ; $7c8e: $39
	and e                                            ; $7c8f: $a3
	cpl                                              ; $7c90: $2f
	db $ec                                           ; $7c91: $ec
	sub h                                            ; $7c92: $94
	ld b, d                                          ; $7c93: $42
	ldh a, [c]                                       ; $7c94: $f2
	inc h                                            ; $7c95: $24
	ldh a, [c]                                       ; $7c96: $f2
	ld d, l                                          ; $7c97: $55
	add hl, bc                                       ; $7c98: $09
	cpl                                              ; $7c99: $2f

jr_094_7c9a:
	ld [hl-], a                                      ; $7c9a: $32
	db $dd                                           ; $7c9b: $dd
	db $ec                                           ; $7c9c: $ec
	sub h                                            ; $7c9d: $94
	ld b, d                                          ; $7c9e: $42
	ldh a, [c]                                       ; $7c9f: $f2
	inc h                                            ; $7ca0: $24
	ldh a, [c]                                       ; $7ca1: $f2
	ld d, l                                          ; $7ca2: $55
	ld h, d                                          ; $7ca3: $62
	inc de                                           ; $7ca4: $13

jr_094_7ca5:
	db $eb                                           ; $7ca5: $eb
	ld h, b                                          ; $7ca6: $60
	ld a, $45                                        ; $7ca7: $3e $45
	add hl, sp                                       ; $7ca9: $39
	and e                                            ; $7caa: $a3
	cpl                                              ; $7cab: $2f
	add e                                            ; $7cac: $83
	db $ed                                           ; $7cad: $ed
	sbc [hl]                                         ; $7cae: $9e
	ldh a, [$6e]                                     ; $7caf: $f0 $6e
	ld e, c                                          ; $7cb1: $59
	ldh a, [$32]                                     ; $7cb2: $f0 $32
	add hl, bc                                       ; $7cb4: $09
	cpl                                              ; $7cb5: $2f
	ld [hl-], a                                      ; $7cb6: $32
	db $dd                                           ; $7cb7: $dd
	add e                                            ; $7cb8: $83
	db $ed                                           ; $7cb9: $ed
	sbc [hl]                                         ; $7cba: $9e
	ldh a, [$6e]                                     ; $7cbb: $f0 $6e
	ld e, c                                          ; $7cbd: $59
	ldh a, [$32]                                     ; $7cbe: $f0 $32
	ld h, d                                          ; $7cc0: $62
	inc de                                           ; $7cc1: $13
	db $eb                                           ; $7cc2: $eb
	ld h, b                                          ; $7cc3: $60
	ld a, $45                                        ; $7cc4: $3e $45
	add hl, sp                                       ; $7cc6: $39
	and e                                            ; $7cc7: $a3
	cpl                                              ; $7cc8: $2f
	ldh a, [rAUD3LEVEL]                              ; $7cc9: $f0 $1c
	ldh a, [$f4]                                     ; $7ccb: $f0 $f4
	ld d, d                                          ; $7ccd: $52
	ld a, $f0                                        ; $7cce: $3e $f0
	ld b, a                                          ; $7cd0: $47
	ldh a, [c]                                       ; $7cd1: $f2
	ld [bc], a                                       ; $7cd2: $02
	add hl, bc                                       ; $7cd3: $09
	cpl                                              ; $7cd4: $2f
	ld [hl-], a                                      ; $7cd5: $32
	ld b, l                                          ; $7cd6: $45
	ld a, $ac                                        ; $7cd7: $3e $ac
	ldh a, [rAUD3LEVEL]                              ; $7cd9: $f0 $1c
	ldh a, [$f4]                                     ; $7cdb: $f0 $f4
	ld d, d                                          ; $7cdd: $52
	ld a, $f0                                        ; $7cde: $3e $f0
	ld b, a                                          ; $7ce0: $47
	ldh a, [c]                                       ; $7ce1: $f2
	ld [bc], a                                       ; $7ce2: $02
	ld h, d                                          ; $7ce3: $62
	inc de                                           ; $7ce4: $13
	db $eb                                           ; $7ce5: $eb
	ld h, b                                          ; $7ce6: $60
	ld a, $45                                        ; $7ce7: $3e $45
	add hl, sp                                       ; $7ce9: $39
	and e                                            ; $7cea: $a3
	cpl                                              ; $7ceb: $2f
	di                                               ; $7cec: $f3
	inc [hl]                                         ; $7ced: $34
	pop af                                           ; $7cee: $f1
	ld h, $f2                                        ; $7cef: $26 $f2
	ld [bc], a                                       ; $7cf1: $02
	add hl, bc                                       ; $7cf2: $09
	cpl                                              ; $7cf3: $2f
	ld [hl-], a                                      ; $7cf4: $32
	db $dd                                           ; $7cf5: $dd
	di                                               ; $7cf6: $f3
	inc [hl]                                         ; $7cf7: $34
	pop af                                           ; $7cf8: $f1
	ld h, $f2                                        ; $7cf9: $26 $f2
	ld [bc], a                                       ; $7cfb: $02
	ld h, d                                          ; $7cfc: $62
	inc de                                           ; $7cfd: $13
	db $eb                                           ; $7cfe: $eb
	ld h, b                                          ; $7cff: $60
	ld a, $45                                        ; $7d00: $3e $45
	add hl, sp                                       ; $7d02: $39
	and e                                            ; $7d03: $a3
	cpl                                              ; $7d04: $2f
	ldh a, [$5f]                                     ; $7d05: $f0 $5f
	pop af                                           ; $7d07: $f1
	ld e, h                                          ; $7d08: $5c
	pop af                                           ; $7d09: $f1
	db $e4                                           ; $7d0a: $e4
	di                                               ; $7d0b: $f3
	ld de, $12f3                                     ; $7d0c: $11 $f3 $12
	ldh a, [$6d]                                     ; $7d0f: $f0 $6d
	ld e, c                                          ; $7d11: $59
	ldh a, [$27]                                     ; $7d12: $f0 $27
	add hl, bc                                       ; $7d14: $09
	cpl                                              ; $7d15: $2f
	ld [hl-], a                                      ; $7d16: $32
	ld b, l                                          ; $7d17: $45
	ld a, $ac                                        ; $7d18: $3e $ac
	ldh a, [$5f]                                     ; $7d1a: $f0 $5f
	pop af                                           ; $7d1c: $f1
	ld e, h                                          ; $7d1d: $5c
	pop af                                           ; $7d1e: $f1
	db $e4                                           ; $7d1f: $e4
	di                                               ; $7d20: $f3
	ld de, $12f3                                     ; $7d21: $11 $f3 $12
	ldh a, [$6d]                                     ; $7d24: $f0 $6d
	ld e, c                                          ; $7d26: $59
	ldh a, [$27]                                     ; $7d27: $f0 $27
	ld h, d                                          ; $7d29: $62
	inc de                                           ; $7d2a: $13
	db $eb                                           ; $7d2b: $eb
	ld h, b                                          ; $7d2c: $60
	ld a, $45                                        ; $7d2d: $3e $45
	add hl, sp                                       ; $7d2f: $39
	and e                                            ; $7d30: $a3
	cpl                                              ; $7d31: $2f
	ldh a, [$8e]                                     ; $7d32: $f0 $8e
	pop af                                           ; $7d34: $f1
	ld c, l                                          ; $7d35: $4d
	ld [hl], e                                       ; $7d36: $73
	sbc b                                            ; $7d37: $98
	ldh a, [rWX]                                     ; $7d38: $f0 $4b
	ld h, l                                          ; $7d3a: $65
	di                                               ; $7d3b: $f3
	add e                                            ; $7d3c: $83
	di                                               ; $7d3d: $f3
	ld sp, $2f09                                     ; $7d3e: $31 $09 $2f
	ld [hl-], a                                      ; $7d41: $32
	ld b, l                                          ; $7d42: $45
	ld a, $ac                                        ; $7d43: $3e $ac
	ldh a, [$8e]                                     ; $7d45: $f0 $8e
	pop af                                           ; $7d47: $f1
	ld c, l                                          ; $7d48: $4d
	ld [hl], e                                       ; $7d49: $73
	sbc b                                            ; $7d4a: $98
	ldh a, [rWX]                                     ; $7d4b: $f0 $4b
	ld h, l                                          ; $7d4d: $65
	di                                               ; $7d4e: $f3
	add e                                            ; $7d4f: $83
	di                                               ; $7d50: $f3
	ld sp, $1362                                     ; $7d51: $31 $62 $13
	db $eb                                           ; $7d54: $eb
	ld h, b                                          ; $7d55: $60
	ld a, $45                                        ; $7d56: $3e $45
	add hl, sp                                       ; $7d58: $39
	and e                                            ; $7d59: $a3
	cpl                                              ; $7d5a: $2f
	pop af                                           ; $7d5b: $f1
	ld [hl], b                                       ; $7d5c: $70
	ldh a, [rHDMA2]                                  ; $7d5d: $f0 $52
	pop af                                           ; $7d5f: $f1
	add hl, de                                       ; $7d60: $19
	pop af                                           ; $7d61: $f1
	dec c                                            ; $7d62: $0d
	add hl, bc                                       ; $7d63: $09
	cpl                                              ; $7d64: $2f
	ld [hl-], a                                      ; $7d65: $32
	db $dd                                           ; $7d66: $dd
	pop af                                           ; $7d67: $f1
	ld [hl], b                                       ; $7d68: $70
	ldh a, [rHDMA2]                                  ; $7d69: $f0 $52
	pop af                                           ; $7d6b: $f1
	add hl, de                                       ; $7d6c: $19
	pop af                                           ; $7d6d: $f1
	dec c                                            ; $7d6e: $0d
	ld h, d                                          ; $7d6f: $62
	inc de                                           ; $7d70: $13
	db $eb                                           ; $7d71: $eb
	ld h, b                                          ; $7d72: $60
	ld a, $45                                        ; $7d73: $3e $45
	add hl, sp                                       ; $7d75: $39
	and e                                            ; $7d76: $a3
	cpl                                              ; $7d77: $2f
	ld b, e                                          ; $7d78: $43
	ld b, [hl]                                       ; $7d79: $46
	dec sp                                           ; $7d7a: $3b
	inc [hl]                                         ; $7d7b: $34
	db $eb                                           ; $7d7c: $eb
	ld a, [$16a2]                                    ; $7d7d: $fa $a2 $16
	ld [hl], $23                                     ; $7d80: $36 $23
	inc de                                           ; $7d82: $13
	ld l, e                                          ; $7d83: $6b
	ldh a, [$cf]                                     ; $7d84: $f0 $cf
	inc [hl]                                         ; $7d86: $34
	db $eb                                           ; $7d87: $eb
	rst FarCall                                          ; $7d88: $f7
	and c                                            ; $7d89: $a1
	ld b, c                                          ; $7d8a: $41
	ld [hl], $23                                     ; $7d8b: $36 $23
	inc de                                           ; $7d8d: $13
	ld l, e                                          ; $7d8e: $6b
	ldh a, [$cf]                                     ; $7d8f: $f0 $cf
	and c                                            ; $7d91: $a1
	ld d, $a8                                        ; $7d92: $16 $a8
	ld l, e                                          ; $7d94: $6b
	inc [hl]                                         ; $7d95: $34
	db $eb                                           ; $7d96: $eb
	rst FarCall                                          ; $7d97: $f7
	and c                                            ; $7d98: $a1
	ld l, e                                          ; $7d99: $6b
	xor c                                            ; $7d9a: $a9
	ld l, a                                          ; $7d9b: $6f
	inc [hl]                                         ; $7d9c: $34
	pop af                                           ; $7d9d: $f1
	adc a                                            ; $7d9e: $8f
	ld a, $38                                        ; $7d9f: $3e $38
	ld b, c                                          ; $7da1: $41
	ld b, h                                          ; $7da2: $44
	ld e, l                                          ; $7da3: $5d
	ld e, d                                          ; $7da4: $5a
	ld c, b                                          ; $7da5: $48
	and b                                            ; $7da6: $a0
	cpl                                              ; $7da7: $2f
	ld b, e                                          ; $7da8: $43
	ld b, b                                          ; $7da9: $40
	ld c, l                                          ; $7daa: $4d
	ld e, e                                          ; $7dab: $5b
	ld d, [hl]                                       ; $7dac: $56
	inc [hl]                                         ; $7dad: $34
	db $ed                                           ; $7dae: $ed
	halt                                             ; $7daf: $76
	ld c, d                                          ; $7db0: $4a
	inc de                                           ; $7db1: $13
	db $eb                                           ; $7db2: $eb
	ld a, [$1362]                                    ; $7db3: $fa $62 $13
	pop af                                           ; $7db6: $f1
	ld bc, $4df0                                     ; $7db7: $01 $f0 $4d
	sub h                                            ; $7dba: $94
	ld b, b                                          ; $7dbb: $40
	add hl, sp                                       ; $7dbc: $39
	and b                                            ; $7dbd: $a0
	xor $13                                          ; $7dbe: $ee $13
	inc [hl]                                         ; $7dc0: $34
	db $ed                                           ; $7dc1: $ed
	ld d, c                                          ; $7dc2: $51
	ld c, d                                          ; $7dc3: $4a
	ld d, c                                          ; $7dc4: $51
	and b                                            ; $7dc5: $a0
	ld b, [hl]                                       ; $7dc6: $46
	dec sp                                           ; $7dc7: $3b
	inc [hl]                                         ; $7dc8: $34
	ld d, $a9                                        ; $7dc9: $16 $a9
	jp hl                                            ; $7dcb: $e9


	db $fc                                           ; $7dcc: $fc
	dec [hl]                                         ; $7dcd: $35
	ldh a, [$ea]                                     ; $7dce: $f0 $ea
	ld a, $3f                                        ; $7dd0: $3e $3f
	dec a                                            ; $7dd2: $3d
	ld b, d                                          ; $7dd3: $42
	and b                                            ; $7dd4: $a0
	ld d, $a9                                        ; $7dd5: $16 $a9
	ld l, e                                          ; $7dd7: $6b
	xor c                                            ; $7dd8: $a9
	db $eb                                           ; $7dd9: $eb
	rst FarCall                                          ; $7dda: $f7
	and c                                            ; $7ddb: $a1
	ld d, $a9                                        ; $7ddc: $16 $a9
	db $eb                                           ; $7dde: $eb
	rst FarCall                                          ; $7ddf: $f7
	and c                                            ; $7de0: $a1
	inc hl                                           ; $7de1: $23
	xor $10                                          ; $7de2: $ee $10
	inc [hl]                                         ; $7de4: $34
	ldh a, [rAUD2LEN]                                ; $7de5: $f0 $16
	ld c, e                                          ; $7de7: $4b
	ld l, e                                          ; $7de8: $6b
	and c                                            ; $7de9: $a1
	cpl                                              ; $7dea: $2f
	ld [hl-], a                                      ; $7deb: $32
	add hl, sp                                       ; $7dec: $39
	dec sp                                           ; $7ded: $3b
	inc [hl]                                         ; $7dee: $34
	db $eb                                           ; $7def: $eb
	ld a, [$6ba8]                                    ; $7df0: $fa $a8 $6b
	ld b, h                                          ; $7df3: $44
	inc a                                            ; $7df4: $3c
	inc de                                           ; $7df5: $13
	pop af                                           ; $7df6: $f1
	ld [hl-], a                                      ; $7df7: $32
	dec sp                                           ; $7df8: $3b
	ccf                                              ; $7df9: $3f
	ld c, [hl]                                       ; $7dfa: $4e
	db $eb                                           ; $7dfb: $eb
	sbc l                                            ; $7dfc: $9d
	and e                                            ; $7dfd: $a3
	xor $1f                                          ; $7dfe: $ee $1f
	xor b                                            ; $7e00: $a8
	ld l, e                                          ; $7e01: $6b
	inc a                                            ; $7e02: $3c
	ldh a, [rTAC]                                    ; $7e03: $f0 $07
	inc a                                            ; $7e05: $3c
	ld d, b                                          ; $7e06: $50
	ld a, [hl-]                                      ; $7e07: $3a
	jr c, jr_094_7e67                                ; $7e08: $38 $5d

	ld e, d                                          ; $7e0a: $5a
	xor h                                            ; $7e0b: $ac
	ld d, c                                          ; $7e0c: $51
	sbc l                                            ; $7e0d: $9d
	ld h, a                                          ; $7e0e: $67
	ld d, l                                          ; $7e0f: $55
	ld c, h                                          ; $7e10: $4c
	and b                                            ; $7e11: $a0
	xor $1f                                          ; $7e12: $ee $1f
	inc [hl]                                         ; $7e14: $34
	ldh a, [rTAC]                                    ; $7e15: $f0 $07
	inc a                                            ; $7e17: $3c
	dec sp                                           ; $7e18: $3b
	dec a                                            ; $7e19: $3d
	ld h, e                                          ; $7e1a: $63
	and b                                            ; $7e1b: $a0
	ldh a, [rTAC]                                    ; $7e1c: $f0 $07
	inc a                                            ; $7e1e: $3c
	dec sp                                           ; $7e1f: $3b
	dec a                                            ; $7e20: $3d
	ld h, e                                          ; $7e21: $63
	ld c, b                                          ; $7e22: $48
	and b                                            ; $7e23: $a0
	ld [hl], b                                       ; $7e24: $70
	ld [hl], c                                       ; $7e25: $71
	ld b, c                                          ; $7e26: $41
	ld c, h                                          ; $7e27: $4c
	xor b                                            ; $7e28: $a8
	pop af                                           ; $7e29: $f1
	ld d, $38                                        ; $7e2a: $16 $38
	ld c, d                                          ; $7e2c: $4a
	ld a, b                                          ; $7e2d: $78
	dec a                                            ; $7e2e: $3d
	ld b, d                                          ; $7e2f: $42
	ld b, a                                          ; $7e30: $47
	ld c, b                                          ; $7e31: $48
	and b                                            ; $7e32: $a0
	db $eb                                           ; $7e33: $eb
	rst FarCall                                          ; $7e34: $f7
	and c                                            ; $7e35: $a1
	ld l, e                                          ; $7e36: $6b
	ld b, d                                          ; $7e37: $42
	ldh a, [rAUD2LEN]                                ; $7e38: $f0 $16
	ld a, [hl-]                                      ; $7e3a: $3a
	ld b, d                                          ; $7e3b: $42
	and b                                            ; $7e3c: $a0
	pop af                                           ; $7e3d: $f1
	ld a, [hl]                                       ; $7e3e: $7e
	inc [hl]                                         ; $7e3f: $34
	ld l, a                                          ; $7e40: $6f
	ld b, a                                          ; $7e41: $47
	ld c, b                                          ; $7e42: $48
	dec [hl]                                         ; $7e43: $35
	inc hl                                           ; $7e44: $23
	inc de                                           ; $7e45: $13
	ld c, h                                          ; $7e46: $4c
	inc [hl]                                         ; $7e47: $34
	db $ec                                           ; $7e48: $ec
	ld b, $38                                        ; $7e49: $06 $38
	jr c, jr_094_7e97                                ; $7e4b: $38 $4a

	ld a, $66                                        ; $7e4d: $3e $66
	and c                                            ; $7e4f: $a1
	db $ed                                           ; $7e50: $ed
	ld b, c                                          ; $7e51: $41
	scf                                              ; $7e52: $37
	inc de                                           ; $7e53: $13
	ld h, c                                          ; $7e54: $61
	ld h, [hl]                                       ; $7e55: $66
	ld e, c                                          ; $7e56: $59
	add hl, sp                                       ; $7e57: $39
	ld c, l                                          ; $7e58: $4d
	ld a, $38                                        ; $7e59: $3e $38
	scf                                              ; $7e5b: $37
	inc de                                           ; $7e5c: $13
	db $ec                                           ; $7e5d: $ec
	ld b, $38                                        ; $7e5e: $06 $38
	jr c, jr_094_7ea7                                ; $7e60: $38 $45

	ld c, h                                          ; $7e62: $4c
	and c                                            ; $7e63: $a1
	ld e, [hl]                                       ; $7e64: $5e
	add l                                            ; $7e65: $85
	ld e, c                                          ; $7e66: $59

jr_094_7e67:
	xor b                                            ; $7e67: $a8
	ld l, a                                          ; $7e68: $6f
	ld b, a                                          ; $7e69: $47
	ld d, l                                          ; $7e6a: $55
	ld c, l                                          ; $7e6b: $4d
	ld c, [hl]                                       ; $7e6c: $4e
	ld b, d                                          ; $7e6d: $42
	xor c                                            ; $7e6e: $a9
	db $ec                                           ; $7e6f: $ec
	ld b, $38                                        ; $7e70: $06 $38
	jr c, jr_094_7eb9                                ; $7e72: $38 $45

	ld c, h                                          ; $7e74: $4c
	and c                                            ; $7e75: $a1
	ld b, [hl]                                       ; $7e76: $46
	inc [hl]                                         ; $7e77: $34
	ld b, b                                          ; $7e78: $40
	add hl, sp                                       ; $7e79: $39
	dec [hl]                                         ; $7e7a: $35
	inc hl                                           ; $7e7b: $23
	inc de                                           ; $7e7c: $13
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7e7d: $f0 $81
	ld e, l                                          ; $7e7f: $5d
	ld c, [hl]                                       ; $7e80: $4e
	ld b, l                                          ; $7e81: $45
	and b                                            ; $7e82: $a0
	ld h, h                                          ; $7e83: $64
	dec sp                                           ; $7e84: $3b
	ld a, $56                                        ; $7e85: $3e $56
	ld c, l                                          ; $7e87: $4d
	ld e, c                                          ; $7e88: $59
	dec sp                                           ; $7e89: $3b
	xor b                                            ; $7e8a: $a8
	pop af                                           ; $7e8b: $f1
	ld d, d                                          ; $7e8c: $52
	ldh a, [$7b]                                     ; $7e8d: $f0 $7b
	ld h, l                                          ; $7e8f: $65
	add e                                            ; $7e90: $83
	jr c, jr_094_7ecb                                ; $7e91: $38 $38

	db $ec                                           ; $7e93: $ec
	ret c                                            ; $7e94: $d8

	dec [hl]                                         ; $7e95: $35
	inc hl                                           ; $7e96: $23

jr_094_7e97:
	inc de                                           ; $7e97: $13
	add a                                            ; $7e98: $87
	pop af                                           ; $7e99: $f1
	inc d                                            ; $7e9a: $14
	ld b, a                                          ; $7e9b: $47
	ld d, c                                          ; $7e9c: $51
	ld c, [hl]                                       ; $7e9d: $4e
	ld c, h                                          ; $7e9e: $4c
	and b                                            ; $7e9f: $a0
	ld d, h                                          ; $7ea0: $54
	add hl, sp                                       ; $7ea1: $39
	jr c, jr_094_7edd                                ; $7ea2: $38 $39

	db $ed                                           ; $7ea4: $ed
	ld a, a                                          ; $7ea5: $7f
	ld c, a                                          ; $7ea6: $4f

jr_094_7ea7:
	inc de                                           ; $7ea7: $13
	ld h, e                                          ; $7ea8: $63
	ld d, a                                          ; $7ea9: $57
	ld c, c                                          ; $7eaa: $49
	adc e                                            ; $7eab: $8b
	ld e, h                                          ; $7eac: $5c
	ld l, h                                          ; $7ead: $6c
	dec a                                            ; $7eae: $3d
	jr c, jr_094_7eeb                                ; $7eaf: $38 $3a

	xor b                                            ; $7eb1: $a8
	add a                                            ; $7eb2: $87
	sbc d                                            ; $7eb3: $9a
	ld b, a                                          ; $7eb4: $47
	ld d, c                                          ; $7eb5: $51
	ld c, [hl]                                       ; $7eb6: $4e
	ld c, h                                          ; $7eb7: $4c
	and b                                            ; $7eb8: $a0

jr_094_7eb9:
	ld b, [hl]                                       ; $7eb9: $46
	ld c, e                                          ; $7eba: $4b
	inc [hl]                                         ; $7ebb: $34
	ld c, e                                          ; $7ebc: $4b
	inc [hl]                                         ; $7ebd: $34
	ld c, e                                          ; $7ebe: $4b
	ld c, b                                          ; $7ebf: $48
	inc hl                                           ; $7ec0: $23
	inc de                                           ; $7ec1: $13
	ld b, [hl]                                       ; $7ec2: $46
	ld d, a                                          ; $7ec3: $57
	ld d, e                                          ; $7ec4: $53
	ld c, c                                          ; $7ec5: $49
	ld c, b                                          ; $7ec6: $48
	and b                                            ; $7ec7: $a0
	cpl                                              ; $7ec8: $2f
	ldh a, [c]                                       ; $7ec9: $f2
	nop                                              ; $7eca: $00

jr_094_7ecb:
	db $f4                                           ; $7ecb: $f4
	ld l, [hl]                                       ; $7ecc: $6e
	pop af                                           ; $7ecd: $f1
	ld [hl+], a                                      ; $7ece: $22
	add e                                            ; $7ecf: $83
	ld l, c                                          ; $7ed0: $69
	ldh a, [rP1]                                     ; $7ed1: $f0 $00
	ld e, c                                          ; $7ed3: $59
	add a                                            ; $7ed4: $87
	ldh a, [rOBP1]                                   ; $7ed5: $f0 $49
	add hl, bc                                       ; $7ed7: $09
	cpl                                              ; $7ed8: $2f
	ld [hl-], a                                      ; $7ed9: $32
	ld b, l                                          ; $7eda: $45
	ld a, $ac                                        ; $7edb: $3e $ac

jr_094_7edd:
	ldh a, [c]                                       ; $7edd: $f2
	nop                                              ; $7ede: $00
	db $f4                                           ; $7edf: $f4
	ld l, [hl]                                       ; $7ee0: $6e
	pop af                                           ; $7ee1: $f1
	ld [hl+], a                                      ; $7ee2: $22
	add e                                            ; $7ee3: $83
	ld l, c                                          ; $7ee4: $69
	ldh a, [rP1]                                     ; $7ee5: $f0 $00
	ld e, c                                          ; $7ee7: $59
	add a                                            ; $7ee8: $87
	ldh a, [rOBP1]                                   ; $7ee9: $f0 $49

jr_094_7eeb:
	ld h, d                                          ; $7eeb: $62
	inc de                                           ; $7eec: $13
	db $eb                                           ; $7eed: $eb
	ld h, b                                          ; $7eee: $60
	ld a, $45                                        ; $7eef: $3e $45
	add hl, sp                                       ; $7ef1: $39
	and e                                            ; $7ef2: $a3
	cpl                                              ; $7ef3: $2f
	ldh a, [rP1]                                     ; $7ef4: $f0 $00
	ld [hl], e                                       ; $7ef6: $73
	add c                                            ; $7ef7: $81
	add hl, bc                                       ; $7ef8: $09
	cpl                                              ; $7ef9: $2f
	ld [hl-], a                                      ; $7efa: $32
	db $dd                                           ; $7efb: $dd
	ldh a, [rP1]                                     ; $7efc: $f0 $00
	ld [hl], e                                       ; $7efe: $73
	add c                                            ; $7eff: $81
	ld h, d                                          ; $7f00: $62
	inc de                                           ; $7f01: $13
	db $eb                                           ; $7f02: $eb
	ld h, b                                          ; $7f03: $60
	ld a, $45                                        ; $7f04: $3e $45
	add hl, sp                                       ; $7f06: $39
	and e                                            ; $7f07: $a3
	cpl                                              ; $7f08: $2f
	ldh a, [$de]                                     ; $7f09: $f0 $de
	ld e, c                                          ; $7f0b: $59
	di                                               ; $7f0c: $f3
	inc d                                            ; $7f0d: $14
	add hl, bc                                       ; $7f0e: $09
	cpl                                              ; $7f0f: $2f
	ld [hl-], a                                      ; $7f10: $32
	db $dd                                           ; $7f11: $dd
	ldh a, [$de]                                     ; $7f12: $f0 $de
	ld e, c                                          ; $7f14: $59
	di                                               ; $7f15: $f3
	inc d                                            ; $7f16: $14
	ld h, d                                          ; $7f17: $62
	inc de                                           ; $7f18: $13
	db $eb                                           ; $7f19: $eb
	ld h, b                                          ; $7f1a: $60
	ld a, $45                                        ; $7f1b: $3e $45
	add hl, sp                                       ; $7f1d: $39
	and e                                            ; $7f1e: $a3
	cpl                                              ; $7f1f: $2f
	pop af                                           ; $7f20: $f1
	dec e                                            ; $7f21: $1d
	ldh a, [$3d]                                     ; $7f22: $f0 $3d
	ldh a, [rDIV]                                    ; $7f24: $f0 $04
	ld h, l                                          ; $7f26: $65
	sub e                                            ; $7f27: $93
	ldh a, [$5d]                                     ; $7f28: $f0 $5d
	pop af                                           ; $7f2a: $f1
	ld de, $20ed                                     ; $7f2b: $11 $ed $20
	add hl, bc                                       ; $7f2e: $09
	cpl                                              ; $7f2f: $2f
	ld [hl-], a                                      ; $7f30: $32
	ld b, l                                          ; $7f31: $45
	ld a, $ac                                        ; $7f32: $3e $ac
	pop af                                           ; $7f34: $f1
	dec e                                            ; $7f35: $1d
	ldh a, [$3d]                                     ; $7f36: $f0 $3d
	ldh a, [rDIV]                                    ; $7f38: $f0 $04
	ld h, l                                          ; $7f3a: $65
	sub e                                            ; $7f3b: $93
	ldh a, [$5d]                                     ; $7f3c: $f0 $5d
	pop af                                           ; $7f3e: $f1
	ld de, $20ed                                     ; $7f3f: $11 $ed $20
	ld h, d                                          ; $7f42: $62
	inc de                                           ; $7f43: $13
	db $eb                                           ; $7f44: $eb
	ld h, b                                          ; $7f45: $60
	ld a, $45                                        ; $7f46: $3e $45
	add hl, sp                                       ; $7f48: $39
	and e                                            ; $7f49: $a3
	cpl                                              ; $7f4a: $2f
	db $eb                                           ; $7f4b: $eb
	and b                                            ; $7f4c: $a0
	add hl, bc                                       ; $7f4d: $09
	cpl                                              ; $7f4e: $2f
	ld [hl-], a                                      ; $7f4f: $32
	db $dd                                           ; $7f50: $dd
	db $eb                                           ; $7f51: $eb
	and b                                            ; $7f52: $a0
	ld h, d                                          ; $7f53: $62
	inc de                                           ; $7f54: $13
	db $eb                                           ; $7f55: $eb
	ld h, b                                          ; $7f56: $60
	ld a, $45                                        ; $7f57: $3e $45
	add hl, sp                                       ; $7f59: $39
	and e                                            ; $7f5a: $a3
	cpl                                              ; $7f5b: $2f
	ldh a, [$35]                                     ; $7f5c: $f0 $35
	add e                                            ; $7f5e: $83
	ldh a, [rDIV]                                    ; $7f5f: $f0 $04
	ldh a, [$09]                                     ; $7f61: $f0 $09
	ld [hl], e                                       ; $7f63: $73
	ld l, c                                          ; $7f64: $69
	add hl, bc                                       ; $7f65: $09
	cpl                                              ; $7f66: $2f
	ld [hl-], a                                      ; $7f67: $32
	db $dd                                           ; $7f68: $dd
	ldh a, [$35]                                     ; $7f69: $f0 $35
	add e                                            ; $7f6b: $83
	ldh a, [rDIV]                                    ; $7f6c: $f0 $04
	ldh a, [$09]                                     ; $7f6e: $f0 $09
	ld [hl], e                                       ; $7f70: $73
	ld l, c                                          ; $7f71: $69
	ld h, d                                          ; $7f72: $62
	inc de                                           ; $7f73: $13
	db $eb                                           ; $7f74: $eb
	ld h, b                                          ; $7f75: $60
	ld a, $45                                        ; $7f76: $3e $45
	add hl, sp                                       ; $7f78: $39
	and e                                            ; $7f79: $a3
	cpl                                              ; $7f7a: $2f
	ld b, e                                          ; $7f7b: $43
	ld b, [hl]                                       ; $7f7c: $46
	dec sp                                           ; $7f7d: $3b
	inc [hl]                                         ; $7f7e: $34
	db $eb                                           ; $7f7f: $eb
	db $fc                                           ; $7f80: $fc
	and d                                            ; $7f81: $a2
	ld d, $a8                                        ; $7f82: $16 $a8
	xor $27                                          ; $7f84: $ee $27
	ld b, a                                          ; $7f86: $47
	inc [hl]                                         ; $7f87: $34
	xor $1c                                          ; $7f88: $ee $1c
	ld c, d                                          ; $7f8a: $4a
	ld d, c                                          ; $7f8b: $51
	inc a                                            ; $7f8c: $3c
	and c                                            ; $7f8d: $a1
	ld l, e                                          ; $7f8e: $6b
	xor c                                            ; $7f8f: $a9
	xor $27                                          ; $7f90: $ee $27
	ld b, a                                          ; $7f92: $47
	ldh a, [rAUD2LEN]                                ; $7f93: $f0 $16
	and c                                            ; $7f95: $a1
	xor $27                                          ; $7f96: $ee $27
	ld b, a                                          ; $7f98: $47
	ld l, e                                          ; $7f99: $6b
	inc a                                            ; $7f9a: $3c
	ldh a, [rAUD2LEN]                                ; $7f9b: $f0 $16
	and c                                            ; $7f9d: $a1
	ld l, e                                          ; $7f9e: $6b
	ld c, b                                          ; $7f9f: $48
	and c                                            ; $7fa0: $a1
	cpl                                              ; $7fa1: $2f
	ld b, e                                          ; $7fa2: $43
	ld b, b                                          ; $7fa3: $40
	ld c, l                                          ; $7fa4: $4d
	ld e, e                                          ; $7fa5: $5b
	ld d, [hl]                                       ; $7fa6: $56
	inc [hl]                                         ; $7fa7: $34
	db $ed                                           ; $7fa8: $ed
	halt                                             ; $7fa9: $76
	ld c, d                                          ; $7faa: $4a
	inc de                                           ; $7fab: $13
	db $eb                                           ; $7fac: $eb
	db $fc                                           ; $7fad: $fc
	ld h, d                                          ; $7fae: $62
	inc de                                           ; $7faf: $13
	pop af                                           ; $7fb0: $f1
	ld bc, $4df0                                     ; $7fb1: $01 $f0 $4d
	sub h                                            ; $7fb4: $94
	ld b, b                                          ; $7fb5: $40
	add hl, sp                                       ; $7fb6: $39
	and b                                            ; $7fb7: $a0
	jp hl                                            ; $7fb8: $e9


	cp $a0                                           ; $7fb9: $fe $a0
	ld d, $a9                                        ; $7fbb: $16 $a9
	xor $27                                          ; $7fbd: $ee $27
	ld b, a                                          ; $7fbf: $47
	inc [hl]                                         ; $7fc0: $34
	xor $1c                                          ; $7fc1: $ee $1c
	ld c, d                                          ; $7fc3: $4a
	ld d, c                                          ; $7fc4: $51
	inc a                                            ; $7fc5: $3c
	and c                                            ; $7fc6: $a1
	ld b, [hl]                                       ; $7fc7: $46
	dec sp                                           ; $7fc8: $3b
	inc [hl]                                         ; $7fc9: $34
	ld d, $a8                                        ; $7fca: $16 $a8
	xor $27                                          ; $7fcc: $ee $27
	ld b, a                                          ; $7fce: $47
	inc [hl]                                         ; $7fcf: $34
	ld l, e                                          ; $7fd0: $6b
	inc a                                            ; $7fd1: $3c
	ldh a, [rAUD2LEN]                                ; $7fd2: $f0 $16
	and c                                            ; $7fd4: $a1
	ld d, $a9                                        ; $7fd5: $16 $a9
	xor $27                                          ; $7fd7: $ee $27
	ld b, a                                          ; $7fd9: $47
	inc [hl]                                         ; $7fda: $34
	ldh a, [rAUD2LEN]                                ; $7fdb: $f0 $16
	ld a, [hl-]                                      ; $7fdd: $3a
	ld b, d                                          ; $7fde: $42
	and c                                            ; $7fdf: $a1
	ld l, e                                          ; $7fe0: $6b
	inc a                                            ; $7fe1: $3c
	ldh a, [rAUD2LEN]                                ; $7fe2: $f0 $16
	and c                                            ; $7fe4: $a1
	cpl                                              ; $7fe5: $2f
	ld [hl-], a                                      ; $7fe6: $32
	add hl, sp                                       ; $7fe7: $39
	dec sp                                           ; $7fe8: $3b
	inc [hl]                                         ; $7fe9: $34
	db $eb                                           ; $7fea: $eb
	db $fc                                           ; $7feb: $fc
	xor b                                            ; $7fec: $a8
	ld l, e                                          ; $7fed: $6b
	ld b, h                                          ; $7fee: $44
	inc a                                            ; $7fef: $3c
	inc de                                           ; $7ff0: $13
	pop af                                           ; $7ff1: $f1
	ld [hl-], a                                      ; $7ff2: $32
	dec sp                                           ; $7ff3: $3b
	ccf                                              ; $7ff4: $3f
	ld c, [hl]                                       ; $7ff5: $4e
	db $eb                                           ; $7ff6: $eb
	sbc l                                            ; $7ff7: $9d
	and e                                            ; $7ff8: $a3
	xor $1f                                          ; $7ff9: $ee $1f
	dec [hl]                                         ; $7ffb: $35
	jr c, @+$3a                                      ; $7ffc: $38 $38

	ld b, l                                          ; $7ffe: $45
	and b                                            ; $7fff: $a0
