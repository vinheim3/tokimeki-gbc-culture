; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08f", ROMX[$4000], BANK[$8f]

	ld h, d                                          ; $4000: $62
	ld [hl], d                                       ; $4001: $72
	ccf                                              ; $4002: $3f
	jr c, jr_08f_4053                                ; $4003: $38 $4e

	ld h, e                                          ; $4005: $63
	xor b                                            ; $4006: $a8
	ld l, a                                          ; $4007: $6f
	ld b, d                                          ; $4008: $42

Call_08f_4009:
	adc d                                            ; $4009: $8a
	ld a, $58                                        ; $400a: $3e $58
	ld d, e                                          ; $400c: $53
	inc [hl]                                         ; $400d: $34
	ldh a, [rTAC]                                    ; $400e: $f0 $07
	inc a                                            ; $4010: $3c
	ld c, [hl]                                       ; $4011: $4e
	ld b, d                                          ; $4012: $42
	inc a                                            ; $4013: $3c
	ld a, $50                                        ; $4014: $3e $50
	and c                                            ; $4016: $a1
	cpl                                              ; $4017: $2f
	db $ed                                           ; $4018: $ed
	ld d, e                                          ; $4019: $53
	pop af                                           ; $401a: $f1
	rst SubAFromHL                                          ; $401b: $d7
	ld a, [hl-]                                      ; $401c: $3a
	ld d, b                                          ; $401d: $50
	inc [hl]                                         ; $401e: $34
	ld e, h                                          ; $401f: $5c
	dec sp                                           ; $4020: $3b
	ld c, c                                          ; $4021: $49
	ldh a, [rTAC]                                    ; $4022: $f0 $07
	inc a                                            ; $4024: $3c
	ld c, [hl]                                       ; $4025: $4e
	ld b, l                                          ; $4026: $45
	add hl, bc                                       ; $4027: $09
	ld [$a8f7], a                                    ; $4028: $ea $f7 $a8
	ld l, a                                          ; $402b: $6f
	ld b, d                                          ; $402c: $42
	adc d                                            ; $402d: $8a
	ld a, $58                                        ; $402e: $3e $58
	ld c, e                                          ; $4030: $4b
	xor h                                            ; $4031: $ac
	di                                               ; $4032: $f3
	set 6, d                                         ; $4033: $cb $f2
	dec d                                            ; $4035: $15
	ld h, d                                          ; $4036: $62
	db $f4                                           ; $4037: $f4
	ld e, b                                          ; $4038: $58
	ld e, [hl]                                       ; $4039: $5e
	ld c, [hl]                                       ; $403a: $4e
	ld b, d                                          ; $403b: $42
	ld c, h                                          ; $403c: $4c
	and b                                            ; $403d: $a0
	cpl                                              ; $403e: $2f
	ld b, b                                          ; $403f: $40
	ld b, d                                          ; $4040: $42
	ld h, h                                          ; $4041: $64
	ei                                               ; $4042: $fb
	jp nc, $538c                                     ; $4043: $d2 $8c $53

	db $ec                                           ; $4046: $ec
	push af                                          ; $4047: $f5
	ld b, c                                          ; $4048: $41
	db $ec                                           ; $4049: $ec
	ret c                                            ; $404a: $d8

	and c                                            ; $404b: $a1
	ld b, b                                          ; $404c: $40
	ld b, c                                          ; $404d: $41
	ld a, [hl-]                                      ; $404e: $3a
	ld d, h                                          ; $404f: $54
	ld c, c                                          ; $4050: $49
	ld b, [hl]                                       ; $4051: $46
	ld d, a                                          ; $4052: $57

jr_08f_4053:
	ld d, d                                          ; $4053: $52
	ld a, c                                          ; $4054: $79
	ld b, c                                          ; $4055: $41
	ld h, e                                          ; $4056: $63
	xor b                                            ; $4057: $a8
	ld e, h                                          ; $4058: $5c
	dec sp                                           ; $4059: $3b
	ld c, c                                          ; $405a: $49
	ld l, a                                          ; $405b: $6f
	ld b, d                                          ; $405c: $42
	adc d                                            ; $405d: $8a
	ld a, $58                                        ; $405e: $3e $58
	ld b, a                                          ; $4060: $47
	xor h                                            ; $4061: $ac
	ld [hl], d                                       ; $4062: $72
	ld c, c                                          ; $4063: $49
	ld c, l                                          ; $4064: $4d
	ccf                                              ; $4065: $3f
	jr c, jr_08f_40b6                                ; $4066: $38 $4e

	ld b, d                                          ; $4068: $42
	ld b, l                                          ; $4069: $45
	and b                                            ; $406a: $a0
	cpl                                              ; $406b: $2f
	ldh a, [rTAC]                                    ; $406c: $f0 $07
	inc a                                            ; $406e: $3c
	ld c, [hl]                                       ; $406f: $4e
	pop af                                           ; $4070: $f1
	dec bc                                           ; $4071: $0b
	ld a, [hl-]                                      ; $4072: $3a
	jr c, @+$47                                      ; $4073: $38 $45

	add hl, bc                                       ; $4075: $09
	call c, $eda8                                    ; $4076: $dc $a8 $ed
	ret nz                                           ; $4079: $c0

	inc [hl]                                         ; $407a: $34
	di                                               ; $407b: $f3
	ld a, b                                          ; $407c: $78
	ld c, e                                          ; $407d: $4b
	di                                               ; $407e: $f3
	ld a, b                                          ; $407f: $78
	ld c, h                                          ; $4080: $4c
	and b                                            ; $4081: $a0
	xor $1e                                          ; $4082: $ee $1e
	ldh a, [rOBP0]                                   ; $4084: $f0 $48
	ldh a, [$2c]                                     ; $4086: $f0 $2c
	inc [hl]                                         ; $4088: $34
	ld l, e                                          ; $4089: $6b
	inc a                                            ; $408a: $3c
	ldh a, [$5d]                                     ; $408b: $f0 $5d
	ld c, h                                          ; $408d: $4c
	and c                                            ; $408e: $a1
	cpl                                              ; $408f: $2f
	adc b                                            ; $4090: $88
	sub c                                            ; $4091: $91
	inc [hl]                                         ; $4092: $34
	ldh a, [rAUD4ENV]                                ; $4093: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4095: $f0 $23
	jr c, jr_08f_40d5                                ; $4097: $38 $3c

	dec sp                                           ; $4099: $3b
	ld d, h                                          ; $409a: $54
	ld a, $3f                                        ; $409b: $3e $3f
	ld c, [hl]                                       ; $409d: $4e
	ld c, h                                          ; $409e: $4c
	add hl, bc                                       ; $409f: $09
	ldh a, [$08]                                     ; $40a0: $f0 $08
	ld e, c                                          ; $40a2: $59
	ldh a, [$08]                                     ; $40a3: $f0 $08
	ldh a, [$08]                                     ; $40a5: $f0 $08
	ldh a, [$08]                                     ; $40a7: $f0 $08
	xor b                                            ; $40a9: $a8
	push af                                          ; $40aa: $f5
	add hl, hl                                       ; $40ab: $29
	db $f4                                           ; $40ac: $f4
	ld a, e                                          ; $40ad: $7b
	ld b, h                                          ; $40ae: $44
	ld h, e                                          ; $40af: $63
	and b                                            ; $40b0: $a0
	cpl                                              ; $40b1: $2f
	xor $1e                                          ; $40b2: $ee $1e
	ldh a, [rOBP0]                                   ; $40b4: $f0 $48

jr_08f_40b6:
	ldh a, [$2c]                                     ; $40b6: $f0 $2c
	ld b, a                                          ; $40b8: $47
	ldh a, [rHDMA5]                                  ; $40b9: $f0 $55
	ldh a, [rBCPS]                                   ; $40bb: $f0 $68
	db $ec                                           ; $40bd: $ec
	ret c                                            ; $40be: $d8

	inc a                                            ; $40bf: $3c
	add hl, bc                                       ; $40c0: $09
	ld l, a                                          ; $40c1: $6f
	ld b, a                                          ; $40c2: $47
	ld b, b                                          ; $40c3: $40
	ld b, c                                          ; $40c4: $41
	ld a, [hl-]                                      ; $40c5: $3a
	pop af                                           ; $40c6: $f1
	push af                                          ; $40c7: $f5
	ld h, d                                          ; $40c8: $62
	ld e, h                                          ; $40c9: $5c
	ld d, l                                          ; $40ca: $55
	inc de                                           ; $40cb: $13
	ld a, [hl-]                                      ; $40cc: $3a
	ld b, c                                          ; $40cd: $41
	ccf                                              ; $40ce: $3f
	inc [hl]                                         ; $40cf: $34
	ldh a, [c]                                       ; $40d0: $f2
	rra                                              ; $40d1: $1f
	ldh a, [$38]                                     ; $40d2: $f0 $38
	ld d, h                                          ; $40d4: $54

jr_08f_40d5:
	ld b, b                                          ; $40d5: $40
	ldh a, [rHDMA5]                                  ; $40d6: $f0 $55
	ldh a, [rBCPS]                                   ; $40d8: $f0 $68
	ld c, h                                          ; $40da: $4c
	and b                                            ; $40db: $a0
	cpl                                              ; $40dc: $2f
	xor $1f                                          ; $40dd: $ee $1f
	inc [hl]                                         ; $40df: $34
	ret                                              ; $40e0: $c9


	ld c, h                                          ; $40e1: $4c
	add hl, bc                                       ; $40e2: $09
	pop af                                           ; $40e3: $f1
	ld a, [de]                                       ; $40e4: $1a
	pop af                                           ; $40e5: $f1
	inc c                                            ; $40e6: $0c
	ldh a, [$5d]                                     ; $40e7: $f0 $5d
	ld b, l                                          ; $40e9: $45
	and b                                            ; $40ea: $a0
	ldh a, [rOBP0]                                   ; $40eb: $f0 $48
	ldh a, [$2c]                                     ; $40ed: $f0 $2c
	ldh a, [rLY]                                     ; $40ef: $f0 $44
	dec sp                                           ; $40f1: $3b
	ccf                                              ; $40f2: $3f
	xor h                                            ; $40f3: $ac
	ret                                              ; $40f4: $c9


	push af                                          ; $40f5: $f5
	ld [$5238], a                                    ; $40f6: $ea $38 $52
	ld a, c                                          ; $40f9: $79
	ld b, c                                          ; $40fa: $41
	ld d, h                                          ; $40fb: $54
	ld c, c                                          ; $40fc: $49
	and c                                            ; $40fd: $a1
	cpl                                              ; $40fe: $2f
	adc b                                            ; $40ff: $88
	sub c                                            ; $4100: $91
	dec [hl]                                         ; $4101: $35
	push af                                          ; $4102: $f5
	ld [$4539], a                                    ; $4103: $ea $39 $45
	ld c, h                                          ; $4106: $4c
	add hl, bc                                       ; $4107: $09
	ld l, a                                          ; $4108: $6f
	inc [hl]                                         ; $4109: $34
	ld d, h                                          ; $410a: $54
	ld c, l                                          ; $410b: $4d
	ld b, h                                          ; $410c: $44
	ld e, l                                          ; $410d: $5d
	ld c, e                                          ; $410e: $4b
	inc de                                           ; $410f: $13
	db $ed                                           ; $4110: $ed
	adc c                                            ; $4111: $89
	ld c, d                                          ; $4112: $4a
	ld e, h                                          ; $4113: $5c
	ld d, d                                          ; $4114: $52
	ld a, c                                          ; $4115: $79
	ld b, c                                          ; $4116: $41
	ld b, d                                          ; $4117: $42
	ld b, l                                          ; $4118: $45
	and b                                            ; $4119: $a0
	cpl                                              ; $411a: $2f
	ld b, b                                          ; $411b: $40
	add hl, sp                                       ; $411c: $39
	inc [hl]                                         ; $411d: $34
	db $ed                                           ; $411e: $ed
	ld e, [hl]                                       ; $411f: $5e
	add hl, bc                                       ; $4120: $09
	sbc $34                                          ; $4121: $de $34
	ld b, b                                          ; $4123: $40
	add hl, sp                                       ; $4124: $39
	ld [hl], a                                       ; $4125: $77
	dec sp                                           ; $4126: $3b
	ccf                                              ; $4127: $3f
	and c                                            ; $4128: $a1
	cpl                                              ; $4129: $2f
	ld c, d                                          ; $412a: $4a
	ld c, a                                          ; $412b: $4f
	inc [hl]                                         ; $412c: $34
	ldh a, [rAUD4ENV]                                ; $412d: $f0 $21
	ldh a, [rAUD4GO]                                 ; $412f: $f0 $23
	jr c, jr_08f_4178                                ; $4131: $38 $45

	add hl, bc                                       ; $4133: $09
	sub b                                            ; $4134: $90
	ld a, $41                                        ; $4135: $3e $41
	ld c, d                                          ; $4137: $4a
	jr c, jr_08f_4188                                ; $4138: $38 $4e

	ld b, d                                          ; $413a: $42
	ld c, e                                          ; $413b: $4b
	xor h                                            ; $413c: $ac
	ldh a, [c]                                       ; $413d: $f2
	rra                                              ; $413e: $1f
	ldh a, [$38]                                     ; $413f: $f0 $38
	ld b, h                                          ; $4141: $44
	ld e, l                                          ; $4142: $5d
	ld c, d                                          ; $4143: $4a
	ld d, c                                          ; $4144: $51
	ld h, e                                          ; $4145: $63
	and b                                            ; $4146: $a0
	cpl                                              ; $4147: $2f
	ld b, e                                          ; $4148: $43
	ld b, b                                          ; $4149: $40
	add hl, sp                                       ; $414a: $39
	ld b, h                                          ; $414b: $44
	ld c, h                                          ; $414c: $4c
	xor b                                            ; $414d: $a8
	sub [hl]                                         ; $414e: $96

jr_08f_414f:
	ld e, a                                          ; $414f: $5f
	add hl, sp                                       ; $4150: $39
	inc a                                            ; $4151: $3c
	and b                                            ; $4152: $a0
	ldh a, [rSCY]                                    ; $4153: $f0 $42
	ldh a, [c]                                       ; $4155: $f2
	ld l, h                                          ; $4156: $6c
	ld b, c                                          ; $4157: $41
	inc [hl]                                         ; $4158: $34
	ldh a, [$5c]                                     ; $4159: $f0 $5c
	ld d, l                                          ; $415b: $55
	db $ec                                           ; $415c: $ec
	dec bc                                           ; $415d: $0b
	and b                                            ; $415e: $a0
	cpl                                              ; $415f: $2f
	jp hl                                            ; $4160: $e9


	jp hl                                            ; $4161: $e9


	add hl, bc                                       ; $4162: $09
	ld l, a                                          ; $4163: $6f
	ld c, c                                          ; $4164: $49
	ld e, d                                          ; $4165: $5a
	ld h, c                                          ; $4166: $61
	ld d, b                                          ; $4167: $50
	ld d, e                                          ; $4168: $53
	inc de                                           ; $4169: $13
	adc d                                            ; $416a: $8a
	ld a, $38                                        ; $416b: $3e $38
	inc a                                            ; $416d: $3c
	ld a, $50                                        ; $416e: $3e $50
	and c                                            ; $4170: $a1
	cpl                                              ; $4171: $2f
	ld b, e                                          ; $4172: $43
	ld c, a                                          ; $4173: $4f
	inc [hl]                                         ; $4174: $34
	db $ec                                           ; $4175: $ec
	dec l                                            ; $4176: $2d
	xor h                                            ; $4177: $ac

jr_08f_4178:
	db $ed                                           ; $4178: $ed
	ld d, e                                          ; $4179: $53
	ld b, a                                          ; $417a: $47
	inc de                                           ; $417b: $13
	ldh a, [$ec]                                     ; $417c: $f0 $ec
	ld d, d                                          ; $417e: $52
	dec sp                                           ; $417f: $3b
	ccf                                              ; $4180: $3f
	ld c, [hl]                                       ; $4181: $4e
	db $ec                                           ; $4182: $ec
	ret c                                            ; $4183: $d8

	inc a                                            ; $4184: $3c
	and b                                            ; $4185: $a0
	ldh a, [$08]                                     ; $4186: $f0 $08

jr_08f_4188:
	ld e, c                                          ; $4188: $59
	ldh a, [$08]                                     ; $4189: $f0 $08
	ldh a, [$08]                                     ; $418b: $f0 $08
	ldh a, [$08]                                     ; $418d: $f0 $08
	ldh a, [$08]                                     ; $418f: $f0 $08
	xor b                                            ; $4191: $a8
	sub c                                            ; $4192: $91
	ldh a, [$59]                                     ; $4193: $f0 $59
	ld c, h                                          ; $4195: $4c
	and b                                            ; $4196: $a0
	cpl                                              ; $4197: $2f
	ld d, h                                          ; $4198: $54
	ld b, d                                          ; $4199: $42
	ldh a, [hDisp0_OBP0]                                     ; $419a: $f0 $86
	inc [hl]                                         ; $419c: $34
	ld [$0948], a                                    ; $419d: $ea $48 $09
	ld a, [hl-]                                      ; $41a0: $3a
	ld d, b                                          ; $41a1: $50
	xor h                                            ; $41a2: $ac
	ldh a, [$b7]                                     ; $41a3: $f0 $b7
	ldh a, [$8c]                                     ; $41a5: $f0 $8c
	ccf                                              ; $41a7: $3f
	ld [hl], b                                       ; $41a8: $70
	ld d, b                                          ; $41a9: $50
	ld b, c                                          ; $41aa: $41
	ld a, [hl-]                                      ; $41ab: $3a
	ld e, b                                          ; $41ac: $58
	jr c, jr_08f_414f                                ; $41ad: $38 $a0

	cpl                                              ; $41af: $2f
	ldh a, [hDisp0_OBP0]                                     ; $41b0: $f0 $86
	ld h, d                                          ; $41b2: $62
	ld [hl], d                                       ; $41b3: $72
	ccf                                              ; $41b4: $3f
	ld c, [hl]                                       ; $41b5: $4e
	ld c, c                                          ; $41b6: $49
	inc [hl]                                         ; $41b7: $34
	ldh a, [rVBK]                                    ; $41b8: $f0 $4f
	ld d, e                                          ; $41ba: $53
	ldh a, [hDisp1_OBP0]                                     ; $41bb: $f0 $93
	ldh a, [$be]                                     ; $41bd: $f0 $be
	ld b, l                                          ; $41bf: $45
	ld c, h                                          ; $41c0: $4c
	add hl, bc                                       ; $41c1: $09
	call c, Call_08f_4aa8                            ; $41c2: $dc $a8 $4a
	ld c, a                                          ; $41c5: $4f
	inc [hl]                                         ; $41c6: $34
	ldh a, [c]                                       ; $41c7: $f2
	cp h                                             ; $41c8: $bc

jr_08f_41c9:
	ld a, [$44f1]                                    ; $41c9: $fa $f1 $44
	ld h, e                                          ; $41cc: $63
	and b                                            ; $41cd: $a0
	ld d, h                                          ; $41ce: $54
	ld b, d                                          ; $41cf: $42
	ldh a, [hDisp0_OBP0]                                     ; $41d0: $f0 $86
	xor h                                            ; $41d2: $ac
	pop de                                           ; $41d3: $d1
	db $ed                                           ; $41d4: $ed
	ld c, c                                          ; $41d5: $49
	ld c, h                                          ; $41d6: $4c
	and b                                            ; $41d7: $a0
	cpl                                              ; $41d8: $2f
	adc l                                            ; $41d9: $8d
	pop af                                           ; $41da: $f1
	dec [hl]                                         ; $41db: $35
	ld b, c                                          ; $41dc: $41
	adc l                                            ; $41dd: $8d
	ld b, c                                          ; $41de: $41
	add hl, bc                                       ; $41df: $09
	ld b, b                                          ; $41e0: $40
	add hl, sp                                       ; $41e1: $39
	ld [hl], a                                       ; $41e2: $77
	ld e, [hl]                                       ; $41e3: $5e
	ld c, [hl]                                       ; $41e4: $4e
	ld b, d                                          ; $41e5: $42
	ld c, e                                          ; $41e6: $4b
	xor h                                            ; $41e7: $ac
	ld l, a                                          ; $41e8: $6f
	ld d, e                                          ; $41e9: $53
	adc d                                            ; $41ea: $8a
	ld a, $51                                        ; $41eb: $3e $51
	ldh a, [$cb]                                     ; $41ed: $f0 $cb
	ld c, [hl]                                       ; $41ef: $4e
	inc a                                            ; $41f0: $3c
	ld d, b                                          ; $41f1: $50
	ld c, h                                          ; $41f2: $4c
	xor b                                            ; $41f3: $a8
	ld b, [hl]                                       ; $41f4: $46
	ld b, [hl]                                       ; $41f5: $46
	inc [hl]                                         ; $41f6: $34
	ld l, a                                          ; $41f7: $6f
	dec sp                                           ; $41f8: $3b
	ccf                                              ; $41f9: $3f
	db $f4                                           ; $41fa: $f4
	ld l, e                                          ; $41fb: $6b
	ld c, b                                          ; $41fc: $48
	and b                                            ; $41fd: $a0
	cpl                                              ; $41fe: $2f
	ld b, [hl]                                       ; $41ff: $46
	dec sp                                           ; $4200: $3b
	inc [hl]                                         ; $4201: $34
	di                                               ; $4202: $f3
	ld a, h                                          ; $4203: $7c
	ld b, h                                          ; $4204: $44
	and d                                            ; $4205: $a2
	ld e, h                                          ; $4206: $5c
	ld d, [hl]                                       ; $4207: $56
	scf                                              ; $4208: $37
	inc de                                           ; $4209: $13
	ldh a, [c]                                       ; $420a: $f2
	sub d                                            ; $420b: $92
	inc a                                            ; $420c: $3c
	ld a, c                                          ; $420d: $79
	ld a, [hl-]                                      ; $420e: $3a
	jr c, jr_08f_425b                                ; $420f: $38 $4a

	ld b, l                                          ; $4211: $45
	and b                                            ; $4212: $a0
	cpl                                              ; $4213: $2f
	adc b                                            ; $4214: $88
	sub c                                            ; $4215: $91
	ld b, h                                          ; $4216: $44
	ld c, h                                          ; $4217: $4c
	add hl, bc                                       ; $4218: $09
	ld l, d                                          ; $4219: $6a
	ldh a, [$0d]                                     ; $421a: $f0 $0d
	db $eb                                           ; $421c: $eb
	ld h, b                                          ; $421d: $60
	ld a, $3f                                        ; $421e: $3e $3f
	inc de                                           ; $4220: $13
	ld d, l                                          ; $4221: $55
	ld b, h                                          ; $4222: $44
	ld e, b                                          ; $4223: $58
	ld d, b                                          ; $4224: $50
	ld a, [hl-]                                      ; $4225: $3a
	jr c, jr_08f_41c9                                ; $4226: $38 $a1

	ld b, b                                          ; $4228: $40
	ld c, l                                          ; $4229: $4d
	ld e, e                                          ; $422a: $5b
	ld d, [hl]                                       ; $422b: $56
	xor h                                            ; $422c: $ac
	db $ec                                           ; $422d: $ec
	push bc                                          ; $422e: $c5
	ld [$a0cd], a                                    ; $422f: $ea $cd $a0
	cpl                                              ; $4232: $2f
	ld b, e                                          ; $4233: $43
	db $ed                                           ; $4234: $ed
	ld d, e                                          ; $4235: $53
	inc [hl]                                         ; $4236: $34
	db $ec                                           ; $4237: $ec
	xor $42                                          ; $4238: $ee $42

Jump_08f_423a:
	ldh a, [c]                                       ; $423a: $f2
	ld h, h                                          ; $423b: $64
	ld d, e                                          ; $423c: $53
	inc de                                           ; $423d: $13
	ldh a, [$c9]                                     ; $423e: $f0 $c9
	jr c, jr_08f_4281                                ; $4240: $38 $3f

	ld c, [hl]                                       ; $4242: $4e
	ld b, l                                          ; $4243: $45
	dec [hl]                                         ; $4244: $35
	ldh a, [$e7]                                     ; $4245: $f0 $e7
	ld e, a                                          ; $4247: $5f

jr_08f_4248:
	add hl, sp                                       ; $4248: $39
	and b                                            ; $4249: $a0
	ld b, b                                          ; $424a: $40
	add hl, sp                                       ; $424b: $39
	xor b                                            ; $424c: $a8
	ld [$a0e7], a                                    ; $424d: $ea $e7 $a0
	pop de                                           ; $4250: $d1
	db $ed                                           ; $4251: $ed
	ld c, c                                          ; $4252: $49
	db $ec                                           ; $4253: $ec
	ret c                                            ; $4254: $d8

	xor b                                            ; $4255: $a8
	ld d, d                                          ; $4256: $52
	ld b, [hl]                                       ; $4257: $46
	xor h                                            ; $4258: $ac
	ld l, a                                          ; $4259: $6f
	ld b, a                                          ; $425a: $47

jr_08f_425b:
	ld c, e                                          ; $425b: $4b
	inc a                                            ; $425c: $3c
	ld a, [hl-]                                      ; $425d: $3a
	ld h, e                                          ; $425e: $63
	ld a, [hl-]                                      ; $425f: $3a
	jr c, jr_08f_42bf                                ; $4260: $38 $5d

	ld e, d                                          ; $4262: $5a
	and b                                            ; $4263: $a0
	cpl                                              ; $4264: $2f
	add sp, -$1f                                     ; $4265: $e8 $e1
	add hl, bc                                       ; $4267: $09
	ldh a, [$08]                                     ; $4268: $f0 $08
	ld e, c                                          ; $426a: $59
	ldh a, [$08]                                     ; $426b: $f0 $08
	ldh a, [$08]                                     ; $426d: $f0 $08
	ldh a, [$08]                                     ; $426f: $f0 $08
	inc [hl]                                         ; $4271: $34
	db $ec                                           ; $4272: $ec
	inc e                                            ; $4273: $1c
	xor b                                            ; $4274: $a8
	ld l, a                                          ; $4275: $6f
	ld b, d                                          ; $4276: $42
	sbc [hl]                                         ; $4277: $9e
	ld c, d                                          ; $4278: $4a
	ld c, e                                          ; $4279: $4b
	xor h                                            ; $427a: $ac
	dec a                                            ; $427b: $3d
	ld b, h                                          ; $427c: $44
	ld b, d                                          ; $427d: $42
	ldh a, [c]                                       ; $427e: $f2
	ld b, l                                          ; $427f: $45
	ld b, a                                          ; $4280: $47

jr_08f_4281:
	ld d, c                                          ; $4281: $51
	ldh a, [$cb]                                     ; $4282: $f0 $cb
	ld a, [hl-]                                      ; $4284: $3a
	jr c, jr_08f_42ea                                ; $4285: $38 $63

	and b                                            ; $4287: $a0
	cpl                                              ; $4288: $2f
	db $ed                                           ; $4289: $ed
	ld h, b                                          ; $428a: $60
	ld b, h                                          ; $428b: $44
	dec sp                                           ; $428c: $3b
	dec a                                            ; $428d: $3d
	ld c, h                                          ; $428e: $4c
	add hl, bc                                       ; $428f: $09
	db $ed                                           ; $4290: $ed
	ld h, b                                          ; $4291: $60
	xor c                                            ; $4292: $a9
	ld b, b                                          ; $4293: $40
	ld b, d                                          ; $4294: $42
	add d                                            ; $4295: $82
	pop af                                           ; $4296: $f1
	adc h                                            ; $4297: $8c
	ld c, e                                          ; $4298: $4b
	xor h                                            ; $4299: $ac
	ld l, a                                          ; $429a: $6f
	ld b, d                                          ; $429b: $42
	di                                               ; $429c: $f3
	ld b, e                                          ; $429d: $43

jr_08f_429e:
	ld b, a                                          ; $429e: $47
	ld b, h                                          ; $429f: $44
	ld e, l                                          ; $42a0: $5d
	pop af                                           ; $42a1: $f1
	sbc l                                            ; $42a2: $9d
	jr c, jr_08f_42df                                ; $42a3: $38 $3a

	ld e, b                                          ; $42a5: $58
	jr c, jr_08f_4248                                ; $42a6: $38 $a0

	cpl                                              ; $42a8: $2f
	add sp, $30                                      ; $42a9: $e8 $30
	add hl, bc                                       ; $42ab: $09
	ld e, d                                          ; $42ac: $5a
	add hl, sp                                       ; $42ad: $39
	jr c, jr_08f_42e9                                ; $42ae: $38 $39

	db $ed                                           ; $42b0: $ed
	add a                                            ; $42b1: $87
	inc a                                            ; $42b2: $3c
	ld a, $50                                        ; $42b3: $3e $50
	xor c                                            ; $42b5: $a9
	pop af                                           ; $42b6: $f1
	dec c                                            ; $42b7: $0d
	ldh a, [$79]                                     ; $42b8: $f0 $79
	ld a, $3f                                        ; $42ba: $3e $3f
	ld d, l                                          ; $42bc: $55
	ld b, h                                          ; $42bd: $44
	ld e, b                                          ; $42be: $58

jr_08f_42bf:
	ld c, [hl]                                       ; $42bf: $4e
	and c                                            ; $42c0: $a1
	ld b, [hl]                                       ; $42c1: $46
	ld c, l                                          ; $42c2: $4d
	ld c, e                                          ; $42c3: $4b
	ld l, e                                          ; $42c4: $6b
	ldh a, [$e7]                                     ; $42c5: $f0 $e7
	ld b, h                                          ; $42c7: $44
	dec sp                                           ; $42c8: $3b
	dec a                                            ; $42c9: $3d
	inc de                                           ; $42ca: $13
	inc a                                            ; $42cb: $3c
	ld a, $50                                        ; $42cc: $3e $50
	and c                                            ; $42ce: $a1
	cpl                                              ; $42cf: $2f
	jp hl                                            ; $42d0: $e9


	call nz, Call_08f_4009                           ; $42d1: $c4 $09 $40
	add hl, sp                                       ; $42d4: $39
	ld b, h                                          ; $42d5: $44
	dec sp                                           ; $42d6: $3b
	ldh [$a8], a                                     ; $42d7: $e0 $a8
	ld [hl], a                                       ; $42d9: $77
	jr c, @-$6a                                      ; $42da: $38 $94

	ld a, $3d                                        ; $42dc: $3e $3d
	ld h, e                                          ; $42de: $63

jr_08f_42df:
	and b                                            ; $42df: $a0
	cpl                                              ; $42e0: $2f
	add sp, $57                                      ; $42e1: $e8 $57
	add hl, bc                                       ; $42e3: $09
	ld b, b                                          ; $42e4: $40
	add hl, sp                                       ; $42e5: $39
	ld b, h                                          ; $42e6: $44
	dec sp                                           ; $42e7: $3b
	dec a                                            ; $42e8: $3d

jr_08f_42e9:
	inc a                                            ; $42e9: $3c

jr_08f_42ea:
	ld a, $50                                        ; $42ea: $3e $50
	and c                                            ; $42ec: $a1
	cpl                                              ; $42ed: $2f
	add sp, $28                                      ; $42ee: $e8 $28
	add hl, bc                                       ; $42f0: $09
	ldh a, [c]                                       ; $42f1: $f2
	rra                                              ; $42f2: $1f
	ldh a, [$38]                                     ; $42f3: $f0 $38
	ld d, e                                          ; $42f5: $53
	pop af                                           ; $42f6: $f1
	dec c                                            ; $42f7: $0d
	ldh a, [$79]                                     ; $42f8: $f0 $79
	ld a, [hl-]                                      ; $42fa: $3a
	ld e, b                                          ; $42fb: $58
	jr c, jr_08f_429e                                ; $42fc: $38 $a0

	cpl                                              ; $42fe: $2f
	jp hl                                            ; $42ff: $e9


	ld a, [hl-]                                      ; $4300: $3a
	and c                                            ; $4301: $a1
	db $ec                                           ; $4302: $ec
	dec b                                            ; $4303: $05
	ld b, d                                          ; $4304: $42
	xor c                                            ; $4305: $a9
	ldh a, [rAUD1LOW]                                ; $4306: $f0 $13
	ldh a, [$2d]                                     ; $4308: $f0 $2d
	ld c, h                                          ; $430a: $4c
	and b                                            ; $430b: $a0
	ld b, b                                          ; $430c: $40
	ld c, l                                          ; $430d: $4d
	ld e, e                                          ; $430e: $5b
	ld d, [hl]                                       ; $430f: $56
	xor h                                            ; $4310: $ac
	db $ec                                           ; $4311: $ec
	push bc                                          ; $4312: $c5
	inc [hl]                                         ; $4313: $34
	ld [$a0cd], a                                    ; $4314: $ea $cd $a0
	ld l, e                                          ; $4317: $6b
	ld h, d                                          ; $4318: $62
	ld [hl], d                                       ; $4319: $72
	ccf                                              ; $431a: $3f
	jr c, jr_08f_436b                                ; $431b: $38 $4e

	ld b, d                                          ; $431d: $42
	inc a                                            ; $431e: $3c
	ld a, $50                                        ; $431f: $3e $50
	and c                                            ; $4321: $a1
	cpl                                              ; $4322: $2f
	add sp, $38                                      ; $4323: $e8 $38
	and c                                            ; $4325: $a1
	call c, $eca8                                    ; $4326: $dc $a8 $ec
	sub $ec                                          ; $4329: $d6 $ec
	ret c                                            ; $432b: $d8

	and b                                            ; $432c: $a0
	cpl                                              ; $432d: $2f
	jp hl                                            ; $432e: $e9


	ld c, a                                          ; $432f: $4f
	ld c, b                                          ; $4330: $48
	add hl, bc                                       ; $4331: $09
	ld b, l                                          ; $4332: $45
	inc [hl]                                         ; $4333: $34
	ld b, l                                          ; $4334: $45
	ld d, l                                          ; $4335: $55
	ldh a, [$0c]                                     ; $4336: $f0 $0c
	ld d, h                                          ; $4338: $54
	ld e, [hl]                                       ; $4339: $5e
	ld a, [hl-]                                      ; $433a: $3a
	inc a                                            ; $433b: $3c
	dec sp                                           ; $433c: $3b
	dec a                                            ; $433d: $3d
	inc de                                           ; $433e: $13
	ld h, e                                          ; $433f: $63
	dec [hl]                                         ; $4340: $35
	ld c, a                                          ; $4341: $4f
	add hl, sp                                       ; $4342: $39
	ld l, l                                          ; $4343: $6d
	ldh a, [$0d]                                     ; $4344: $f0 $0d
	add d                                            ; $4346: $82
	dec sp                                           ; $4347: $3b
	ccf                                              ; $4348: $3f
	ld d, l                                          ; $4349: $55
	ld b, h                                          ; $434a: $44
	ld e, b                                          ; $434b: $58
	ld c, [hl]                                       ; $434c: $4e
	and c                                            ; $434d: $a1
	cpl                                              ; $434e: $2f
	ld b, e                                          ; $434f: $43
	ld b, [hl]                                       ; $4350: $46
	inc [hl]                                         ; $4351: $34
	jr c, jr_08f_4388                                ; $4352: $38 $34

	jr c, jr_08f_43c4                                ; $4354: $38 $6e

	xor b                                            ; $4356: $a8
	ld l, d                                          ; $4357: $6a
	ld l, b                                          ; $4358: $68
	ld b, d                                          ; $4359: $42
	db $ed                                           ; $435a: $ed
	ld d, e                                          ; $435b: $53
	ld c, e                                          ; $435c: $4b
	inc de                                           ; $435d: $13
	ld l, l                                          ; $435e: $6d
	ldh a, [c]                                       ; $435f: $f2
	db $d3                                           ; $4360: $d3
	ld c, c                                          ; $4361: $49
	db $ed                                           ; $4362: $ed
	ld c, c                                          ; $4363: $49
	ld b, h                                          ; $4364: $44
	ld a, [hl-]                                      ; $4365: $3a
	ld [hl], h                                       ; $4366: $74
	ld c, c                                          ; $4367: $49
	ld c, b                                          ; $4368: $48
	and b                                            ; $4369: $a0
	ld b, b                                          ; $436a: $40

jr_08f_436b:
	add hl, sp                                       ; $436b: $39
	xor l                                            ; $436c: $ad
	ld d, d                                          ; $436d: $52
	ld b, [hl]                                       ; $436e: $46
	jr c, jr_08f_43a9                                ; $436f: $38 $38

	ld h, e                                          ; $4371: $63
	and b                                            ; $4372: $a0
	cpl                                              ; $4373: $2f
	db $eb                                           ; $4374: $eb
	push bc                                          ; $4375: $c5
	inc [hl]                                         ; $4376: $34
	db $ed                                           ; $4377: $ed
	ld d, e                                          ; $4378: $53
	ld l, h                                          ; $4379: $6c
	dec a                                            ; $437a: $3d
	jr c, jr_08f_4386                                ; $437b: $38 $09

	xor $14                                          ; $437d: $ee $14
	inc [hl]                                         ; $437f: $34
	ld d, h                                          ; $4380: $54
	ld b, d                                          ; $4381: $42
	pop af                                           ; $4382: $f1
	rst SubAFromHL                                          ; $4383: $d7
	ldh a, [$0d]                                     ; $4384: $f0 $0d

jr_08f_4386:
	ld c, c                                          ; $4386: $49
	inc de                                           ; $4387: $13

jr_08f_4388:
	ld l, a                                          ; $4388: $6f
	ld h, d                                          ; $4389: $62
	di                                               ; $438a: $f3
	rla                                              ; $438b: $17
	ei                                               ; $438c: $fb
	and a                                            ; $438d: $a7
	ld a, $3a                                        ; $438e: $3e $3a
	jr c, jr_08f_43dc                                ; $4390: $38 $4a

	db $ec                                           ; $4392: $ec
	push af                                          ; $4393: $f5
	ld h, e                                          ; $4394: $63
	and b                                            ; $4395: $a0
	xor $14                                          ; $4396: $ee $14
	inc [hl]                                         ; $4398: $34
	ld d, h                                          ; $4399: $54
	ld b, d                                          ; $439a: $42
	ld hl, sp+$67                                    ; $439b: $f8 $67
	ldh a, [c]                                       ; $439d: $f2
	sub b                                            ; $439e: $90
	ldh a, [$7a]                                     ; $439f: $f0 $7a
	xor b                                            ; $43a1: $a8
	jr c, jr_08f_43dc                                ; $43a2: $38 $38

	ld b, c                                          ; $43a4: $41
	db $ec                                           ; $43a5: $ec
	ret c                                            ; $43a6: $d8

	and c                                            ; $43a7: $a1
	cpl                                              ; $43a8: $2f

jr_08f_43a9:
	ld e, b                                          ; $43a9: $58
	ld d, c                                          ; $43aa: $51
	ld d, e                                          ; $43ab: $53
	db $ed                                           ; $43ac: $ed
	ld d, e                                          ; $43ad: $53
	dec [hl]                                         ; $43ae: $35
	ld a, [hl]                                       ; $43af: $7e
	ld e, b                                          ; $43b0: $58
	ld d, e                                          ; $43b1: $53
	ldh a, [rTAC]                                    ; $43b2: $f0 $07
	inc a                                            ; $43b4: $3c
	ld c, [hl]                                       ; $43b5: $4e
	ld b, c                                          ; $43b6: $41
	ld b, h                                          ; $43b7: $44

jr_08f_43b8:
	add hl, bc                                       ; $43b8: $09
	ldh a, [$08]                                     ; $43b9: $f0 $08
	ld e, c                                          ; $43bb: $59
	ldh a, [$08]                                     ; $43bc: $f0 $08
	ldh a, [$08]                                     ; $43be: $f0 $08
	ldh a, [$08]                                     ; $43c0: $f0 $08
	ldh a, [$08]                                     ; $43c2: $f0 $08

jr_08f_43c4:
	xor b                                            ; $43c4: $a8
	sub c                                            ; $43c5: $91
	ldh a, [$59]                                     ; $43c6: $f0 $59
	db $ec                                           ; $43c8: $ec
	ret c                                            ; $43c9: $d8

	and b                                            ; $43ca: $a0
	cpl                                              ; $43cb: $2f
	dec a                                            ; $43cc: $3d
	ld b, h                                          ; $43cd: $44
	ld b, d                                          ; $43ce: $42
	db $ed                                           ; $43cf: $ed
	rst GetHLinHL                                          ; $43d0: $cf
	ld e, h                                          ; $43d1: $5c
	ld b, h                                          ; $43d2: $44
	ld b, l                                          ; $43d3: $45
	add hl, bc                                       ; $43d4: $09
	ld c, a                                          ; $43d5: $4f
	dec sp                                           ; $43d6: $3b
	ld c, c                                          ; $43d7: $49
	db $ed                                           ; $43d8: $ed
	ld e, a                                          ; $43d9: $5f
	ld h, d                                          ; $43da: $62
	inc de                                           ; $43db: $13

jr_08f_43dc:
	ldh a, [$63]                                     ; $43dc: $f0 $63
	pop af                                           ; $43de: $f1
	dec sp                                           ; $43df: $3b
	ld c, d                                          ; $43e0: $4a
	ld e, h                                          ; $43e1: $5c
	ld c, [hl]                                       ; $43e2: $4e
	ldh a, [$7b]                                     ; $43e3: $f0 $7b
	ld h, l                                          ; $43e5: $65
	add e                                            ; $43e6: $83
	ld h, d                                          ; $43e7: $62
	inc de                                           ; $43e8: $13
	di                                               ; $43e9: $f3

jr_08f_43ea:
	add [hl]                                         ; $43ea: $86
	dec sp                                           ; $43eb: $3b
	dec a                                            ; $43ec: $3d
	ld d, b                                          ; $43ed: $50
	and c                                            ; $43ee: $a1
	cpl                                              ; $43ef: $2f
	ld l, e                                          ; $43f0: $6b
	ld h, d                                          ; $43f1: $62
	pop af                                           ; $43f2: $f1
	and l                                            ; $43f3: $a5
	ld a, $3f                                        ; $43f4: $3e $3f
	ld c, [hl]                                       ; $43f6: $4e
	ld b, d                                          ; $43f7: $42
	inc a                                            ; $43f8: $3c
	inc [hl]                                         ; $43f9: $34
	ld h, h                                          ; $43fa: $64
	ld a, $5e                                        ; $43fb: $3e $5e
	ccf                                              ; $43fd: $3f
	ld b, l                                          ; $43fe: $45
	add hl, bc                                       ; $43ff: $09
	ldh a, [$08]                                     ; $4400: $f0 $08
	ld e, c                                          ; $4402: $59
	ldh a, [$08]                                     ; $4403: $f0 $08
	ldh a, [$08]                                     ; $4405: $f0 $08
	ldh a, [$08]                                     ; $4407: $f0 $08
	ldh a, [$08]                                     ; $4409: $f0 $08
	ldh a, [$08]                                     ; $440b: $f0 $08
	xor b                                            ; $440d: $a8
	db $ed                                           ; $440e: $ed
	ld e, l                                          ; $440f: $5d
	ld c, d                                          ; $4410: $4a
	ldh a, [$a4]                                     ; $4411: $f0 $a4
	ld e, [hl]                                       ; $4413: $5e
	ld a, [hl-]                                      ; $4414: $3a
	ld e, b                                          ; $4415: $58
	jr c, jr_08f_43b8                                ; $4416: $38 $a0

	ld l, a                                          ; $4418: $6f
	ld b, a                                          ; $4419: $47
	ld c, e                                          ; $441a: $4b
	inc [hl]                                         ; $441b: $34
	ld d, h                                          ; $441c: $54
	add hl, sp                                       ; $441d: $39
	jr c, jr_08f_4459                                ; $441e: $38 $39

	ldh a, [$3f]                                     ; $4420: $f0 $3f
	ld c, e                                          ; $4422: $4b
	inc de                                           ; $4423: $13
	ldh a, [rPCM12]                                  ; $4424: $f0 $76
	ldh a, [rTMA]                                    ; $4426: $f0 $06
	jr c, @+$54                                      ; $4428: $38 $52

	ld a, c                                          ; $442a: $79
	ld b, c                                          ; $442b: $41
	ld h, e                                          ; $442c: $63
	ld c, h                                          ; $442d: $4c
	and b                                            ; $442e: $a0
	cpl                                              ; $442f: $2f
	add sp, $5a                                      ; $4430: $e8 $5a
	add hl, bc                                       ; $4432: $09
	ld d, d                                          ; $4433: $52
	ld b, [hl]                                       ; $4434: $46
	xor h                                            ; $4435: $ac
	ld l, d                                          ; $4436: $6a
	ldh a, [$d3]                                     ; $4437: $f0 $d3
	ld c, e                                          ; $4439: $4b
	ldh a, [c]                                       ; $443a: $f2
	ld a, b                                          ; $443b: $78
	ld a, $3f                                        ; $443c: $3e $3f
	rst SubAFromDE                                          ; $443e: $df
	ld h, e                                          ; $443f: $63
	xor b                                            ; $4440: $a8
	ld a, a                                          ; $4441: $7f
	ld h, d                                          ; $4442: $62
	ldh a, [$9a]                                     ; $4443: $f0 $9a
	ld e, l                                          ; $4445: $5d
	ld a, [hl-]                                      ; $4446: $3a
	ld e, b                                          ; $4447: $58
	jr c, jr_08f_43ea                                ; $4448: $38 $a0

	cpl                                              ; $444a: $2f
	ld d, h                                          ; $444b: $54
	ld b, d                                          ; $444c: $42
	db $ed                                           ; $444d: $ed
	ld e, a                                          ; $444e: $5f
	ld d, e                                          ; $444f: $53
	ld h, e                                          ; $4450: $63
	inc a                                            ; $4451: $3c
	ld d, b                                          ; $4452: $50
	ld a, [hl-]                                      ; $4453: $3a
	jr c, jr_08f_4498                                ; $4454: $38 $42

	and c                                            ; $4456: $a1
	db $ed                                           ; $4457: $ed
	ld e, a                                          ; $4458: $5f

jr_08f_4459:
	xor c                                            ; $4459: $a9
	ldh a, [c]                                       ; $445a: $f2
	rra                                              ; $445b: $1f
	ldh a, [$38]                                     ; $445c: $f0 $38

jr_08f_445e:
	ld c, e                                          ; $445e: $4b
	db $ed                                           ; $445f: $ed
	ld e, a                                          ; $4460: $5f
	ld c, c                                          ; $4461: $49
	ld c, e                                          ; $4462: $4b
	ld l, e                                          ; $4463: $6b
	inc a                                            ; $4464: $3c
	xor h                                            ; $4465: $ac
	ldh a, [rTAC]                                    ; $4466: $f0 $07
	inc a                                            ; $4468: $3c
	dec sp                                           ; $4469: $3b
	ccf                                              ; $446a: $3f
	ld a, [hl-]                                      ; $446b: $3a
	jr c, jr_08f_445e                                ; $446c: $38 $f0

	add a                                            ; $446e: $87
	ld c, h                                          ; $446f: $4c
	and b                                            ; $4470: $a0
	cpl                                              ; $4471: $2f
	ld b, e                                          ; $4472: $43
	ld c, c                                          ; $4473: $49
	add d                                            ; $4474: $82
	add hl, sp                                       ; $4475: $39
	ld c, c                                          ; $4476: $49
	and c                                            ; $4477: $a1
	db $ed                                           ; $4478: $ed
	ld e, a                                          ; $4479: $5f
	ld c, c                                          ; $447a: $49
	jr c, jr_08f_44b6                                ; $447b: $38 $39

	ld b, d                                          ; $447d: $42
	ld c, e                                          ; $447e: $4b
	xor h                                            ; $447f: $ac
	ld l, a                                          ; $4480: $6f
	ld b, d                                          ; $4481: $42
	ld b, l                                          ; $4482: $45
	add hl, sp                                       ; $4483: $39
	ld b, a                                          ; $4484: $47
	adc d                                            ; $4485: $8a
	ld a, $55                                        ; $4486: $3e $55
	inc de                                           ; $4488: $13
	ld a, [hl-]                                      ; $4489: $3a
	ld e, l                                          ; $448a: $5d
	ld c, l                                          ; $448b: $4d
	ld a, e                                          ; $448c: $7b
	ld a, [hl-]                                      ; $448d: $3a
	ld d, b                                          ; $448e: $50
	ld a, [hl-]                                      ; $448f: $3a
	jr c, jr_08f_44d4                                ; $4490: $38 $42

	ld b, l                                          ; $4492: $45
	and b                                            ; $4493: $a0
	cpl                                              ; $4494: $2f
	add sp, $5b                                      ; $4495: $e8 $5b
	ld c, b                                          ; $4497: $48

jr_08f_4498:
	add hl, bc                                       ; $4498: $09
	ld b, b                                          ; $4499: $40
	ld c, l                                          ; $449a: $4d
	pop af                                           ; $449b: $f1
	ld c, e                                          ; $449c: $4b
	sbc [hl]                                         ; $449d: $9e
	ld b, d                                          ; $449e: $42
	inc de                                           ; $449f: $13
	ldh a, [c]                                       ; $44a0: $f2
	ld h, e                                          ; $44a1: $63
	pop af                                           ; $44a2: $f1
	jp Jump_08f_514a                                 ; $44a3: $c3 $4a $51


	ld h, e                                          ; $44a6: $63
	and b                                            ; $44a7: $a0
	ld d, h                                          ; $44a8: $54
	ld b, d                                          ; $44a9: $42
	db $eb                                           ; $44aa: $eb
	cp d                                             ; $44ab: $ba
	xor h                                            ; $44ac: $ac
	pop de                                           ; $44ad: $d1
	ld b, d                                          ; $44ae: $42
	ld c, a                                          ; $44af: $4f
	ld b, d                                          ; $44b0: $42
	ld c, h                                          ; $44b1: $4c
	and b                                            ; $44b2: $a0
	cpl                                              ; $44b3: $2f
	add sp, $5c                                      ; $44b4: $e8 $5c

jr_08f_44b6:
	add hl, bc                                       ; $44b6: $09
	ld l, a                                          ; $44b7: $6f
	ld b, d                                          ; $44b8: $42
	db $ed                                           ; $44b9: $ed
	call nz, $3c47                                   ; $44ba: $c4 $47 $3c
	ld a, [hl-]                                      ; $44bd: $3a
	add hl, sp                                       ; $44be: $39
	inc de                                           ; $44bf: $13
	ld a, [hl-]                                      ; $44c0: $3a
	ld b, c                                          ; $44c1: $41
	ccf                                              ; $44c2: $3f
	inc [hl]                                         ; $44c3: $34
	ldh a, [$e9]                                     ; $44c4: $f0 $e9
	sub c                                            ; $44c6: $91
	ld b, d                                          ; $44c7: $42
	ld c, a                                          ; $44c8: $4f
	ld b, d                                          ; $44c9: $42
	ld b, l                                          ; $44ca: $45
	and b                                            ; $44cb: $a0
	cpl                                              ; $44cc: $2f
	jp hl                                            ; $44cd: $e9


	ld e, b                                          ; $44ce: $58
	and c                                            ; $44cf: $a1
	db $ec                                           ; $44d0: $ec
	ld e, c                                          ; $44d1: $59
	ld a, [hl-]                                      ; $44d2: $3a
	ld b, d                                          ; $44d3: $42

jr_08f_44d4:
	xor c                                            ; $44d4: $a9
	ld l, a                                          ; $44d5: $6f
	ld c, e                                          ; $44d6: $4b
	inc [hl]                                         ; $44d7: $34
	adc b                                            ; $44d8: $88
	ldh a, [$2c]                                     ; $44d9: $f0 $2c
	ld b, a                                          ; $44db: $47
	ld a, $3c                                        ; $44dc: $3e $3c
	inc de                                           ; $44de: $13
	db $ed                                           ; $44df: $ed
	ld [hl], h                                       ; $44e0: $74
	ld a, [hl-]                                      ; $44e1: $3a
	jr c, jr_08f_4547                                ; $44e2: $38 $63

	and b                                            ; $44e4: $a0
	cpl                                              ; $44e5: $2f
	add sp, -$67                                     ; $44e6: $e8 $99
	add hl, bc                                       ; $44e8: $09
	ldh a, [c]                                       ; $44e9: $f2
	rra                                              ; $44ea: $1f
	ldh a, [$38]                                     ; $44eb: $f0 $38
	ld b, a                                          ; $44ed: $47
	ld c, e                                          ; $44ee: $4b
	xor h                                            ; $44ef: $ac
	adc d                                            ; $44f0: $8a
	ld h, d                                          ; $44f1: $62
	ld l, h                                          ; $44f2: $6c
	ld c, [hl]                                       ; $44f3: $4e
	ldh a, [rAUD3LEVEL]                              ; $44f4: $f0 $1c
	ld d, e                                          ; $44f6: $53
	ld a, [hl-]                                      ; $44f7: $3a
	jr c, jr_08f_453c                                ; $44f8: $38 $42

	ld c, h                                          ; $44fa: $4c
	and b                                            ; $44fb: $a0
	ld d, h                                          ; $44fc: $54
	ld b, d                                          ; $44fd: $42
	ldh a, [$38]                                     ; $44fe: $f0 $38
	ld b, d                                          ; $4500: $42
	ldh a, [$3f]                                     ; $4501: $f0 $3f
	xor h                                            ; $4503: $ac
	pop de                                           ; $4504: $d1
	ld c, d                                          ; $4505: $4a
	ld d, c                                          ; $4506: $51
	ld h, e                                          ; $4507: $63
	ld c, h                                          ; $4508: $4c
	and b                                            ; $4509: $a0
	cpl                                              ; $450a: $2f
	ldh a, [$3e]                                     ; $450b: $f0 $3e
	ldh a, [$0b]                                     ; $450d: $f0 $0b
	ld b, h                                          ; $450f: $44
	ld b, l                                          ; $4510: $45
	ld c, h                                          ; $4511: $4c
	add hl, bc                                       ; $4512: $09
	ldh a, [c]                                       ; $4513: $f2
	rra                                              ; $4514: $1f
	ldh a, [$38]                                     ; $4515: $f0 $38
	ld c, a                                          ; $4517: $4f
	ldh a, [rHDMA4]                                  ; $4518: $f0 $54
	ld a, $4b                                        ; $451a: $3e $4b
	inc de                                           ; $451c: $13
	adc d                                            ; $451d: $8a
	ld h, d                                          ; $451e: $62
	ldh a, [$63]                                     ; $451f: $f0 $63
	pop af                                           ; $4521: $f1
	dec sp                                           ; $4522: $3b
	ld c, d                                          ; $4523: $4a
	ld e, h                                          ; $4524: $5c
	ld c, [hl]                                       ; $4525: $4e
	ld b, l                                          ; $4526: $45
	add hl, sp                                       ; $4527: $39
	ld b, a                                          ; $4528: $47
	inc de                                           ; $4529: $13
	ld a, [hl-]                                      ; $452a: $3a
	dec sp                                           ; $452b: $3b
	dec a                                            ; $452c: $3d
	db $ec                                           ; $452d: $ec
	ld [de], a                                       ; $452e: $12
	and b                                            ; $452f: $a0
	cpl                                              ; $4530: $2f
	ld d, h                                          ; $4531: $54
	ld b, c                                          ; $4532: $41
	ld a, [hl-]                                      ; $4533: $3a
	ldh a, [$3f]                                     ; $4534: $f0 $3f
	ld d, e                                          ; $4536: $53
	jr c, jr_08f_4571                                ; $4537: $38 $38

	ld b, d                                          ; $4539: $42
	and c                                            ; $453a: $a1
	ldh a, [c]                                       ; $453b: $f2

jr_08f_453c:
	rra                                              ; $453c: $1f
	ldh a, [$38]                                     ; $453d: $f0 $38
	ld b, a                                          ; $453f: $47
	ld c, e                                          ; $4540: $4b
	inc [hl]                                         ; $4541: $34
	ld d, h                                          ; $4542: $54
	ld b, d                                          ; $4543: $42
	ld a, [hl]                                       ; $4544: $7e
	ld e, b                                          ; $4545: $58
	ld d, e                                          ; $4546: $53

jr_08f_4547:
	inc de                                           ; $4547: $13
	ldh a, [rTAC]                                    ; $4548: $f0 $07
	inc a                                            ; $454a: $3c
	ld d, a                                          ; $454b: $57
	ld d, d                                          ; $454c: $52
	ld a, c                                          ; $454d: $79
	ld b, c                                          ; $454e: $41
	ld b, d                                          ; $454f: $42
	ld c, h                                          ; $4550: $4c
	and b                                            ; $4551: $a0

jr_08f_4552:
	cpl                                              ; $4552: $2f
	halt                                             ; $4553: $76
	inc [hl]                                         ; $4554: $34
	ldh a, [$8e]                                     ; $4555: $f0 $8e
	pop af                                           ; $4557: $f1
	ld c, l                                          ; $4558: $4d
	ld h, l                                          ; $4559: $65
	ld a, [hl-]                                      ; $455a: $3a
	ld b, c                                          ; $455b: $41
	ld b, h                                          ; $455c: $44
	add hl, bc                                       ; $455d: $09
	ld b, b                                          ; $455e: $40
	ld b, c                                          ; $455f: $41
	ld a, [hl-]                                      ; $4560: $3a
	ld d, h                                          ; $4561: $54
	ld c, c                                          ; $4562: $49
	xor h                                            ; $4563: $ac
	ldh a, [$0c]                                     ; $4564: $f0 $0c
	jr c, jr_08f_45a7                                ; $4566: $38 $3f

	jr c, jr_08f_45bc                                ; $4568: $38 $52

	ld a, c                                          ; $456a: $79
	ld b, c                                          ; $456b: $41
	ld h, e                                          ; $456c: $63
	and b                                            ; $456d: $a0
	ld d, d                                          ; $456e: $52
	dec a                                            ; $456f: $3d
	ld d, h                                          ; $4570: $54

jr_08f_4571:
	ld d, h                                          ; $4571: $54
	ld b, a                                          ; $4572: $47
	inc de                                           ; $4573: $13
	ldh a, [$a7]                                     ; $4574: $f0 $a7
	ld c, l                                          ; $4576: $4d
	ccf                                              ; $4577: $3f
	ld a, b                                          ; $4578: $78
	ld c, [hl]                                       ; $4579: $4e
	ld a, [hl-]                                      ; $457a: $3a
	ld b, c                                          ; $457b: $41
	ccf                                              ; $457c: $3f
	xor h                                            ; $457d: $ac
	ld e, d                                          ; $457e: $5a
	add hl, sp                                       ; $457f: $39
	jr c, jr_08f_45bb                                ; $4580: $38 $39

jr_08f_4582:
	ld h, h                                          ; $4582: $64
	add b                                            ; $4583: $80
	ld c, a                                          ; $4584: $4f
	ld d, a                                          ; $4585: $57
	inc a                                            ; $4586: $3c
	ld a, $50                                        ; $4587: $3e $50
	and c                                            ; $4589: $a1
	di                                               ; $458a: $f3
	inc de                                           ; $458b: $13
	ld e, b                                          ; $458c: $58
	ld b, c                                          ; $458d: $41
	pop af                                           ; $458e: $f1

jr_08f_458f:
	ld e, b                                          ; $458f: $58
	inc a                                            ; $4590: $3c
	ld b, a                                          ; $4591: $47
	inc de                                           ; $4592: $13
	ldh a, [$dd]                                     ; $4593: $f0 $dd
	ldh a, [$9c]                                     ; $4595: $f0 $9c
	ld a, $3f                                        ; $4597: $3e $3f
	jr c, jr_08f_45e9                                ; $4599: $38 $4e

	ldh a, [hDisp0_OBP1]                                     ; $459b: $f0 $87
	ld c, h                                          ; $459d: $4c
	and b                                            ; $459e: $a0
	cpl                                              ; $459f: $2f
	add sp, -$66                                     ; $45a0: $e8 $9a
	add hl, bc                                       ; $45a2: $09
	call c, Call_08f_58a8                            ; $45a3: $dc $a8 $58
	ld b, [hl]                                       ; $45a6: $46

jr_08f_45a7:
	inc [hl]                                         ; $45a7: $34
	ldh a, [$0a]                                     ; $45a8: $f0 $0a
	ld d, l                                          ; $45aa: $55
	ldh a, [$bb]                                     ; $45ab: $f0 $bb
	ld [hl], c                                       ; $45ad: $71
	ld a, [hl-]                                      ; $45ae: $3a
	ld e, b                                          ; $45af: $58
	jr c, jr_08f_4552                                ; $45b0: $38 $a0

	cpl                                              ; $45b2: $2f
	ld b, e                                          ; $45b3: $43
	ld c, b                                          ; $45b4: $48
	dec sp                                           ; $45b5: $3b
	ccf                                              ; $45b6: $3f
	inc [hl]                                         ; $45b7: $34
	db $ed                                           ; $45b8: $ed
	ld d, e                                          ; $45b9: $53
	ld c, e                                          ; $45ba: $4b

jr_08f_45bb:
	and c                                            ; $45bb: $a1

jr_08f_45bc:
	ld l, a                                          ; $45bc: $6f
	ld b, d                                          ; $45bd: $42
	ld b, l                                          ; $45be: $45
	add hl, sp                                       ; $45bf: $39
	ld a, [hl-]                                      ; $45c0: $3a
	adc d                                            ; $45c1: $8a
	ldh a, [rAUD2ENV]                                ; $45c2: $f0 $17
	ld c, e                                          ; $45c4: $4b
	xor h                                            ; $45c5: $ac
	db $ec                                           ; $45c6: $ec
	ld c, e                                          ; $45c7: $4b
	ldh a, [c]                                       ; $45c8: $f2
	ld b, b                                          ; $45c9: $40
	di                                               ; $45ca: $f3
	sub $3a                                          ; $45cb: $d6 $3a
	jr c, jr_08f_4611                                ; $45cd: $38 $42

	ld b, l                                          ; $45cf: $45
	xor b                                            ; $45d0: $a8
	ldh a, [rTAC]                                    ; $45d1: $f0 $07
	inc a                                            ; $45d3: $3c
	dec sp                                           ; $45d4: $3b
	dec a                                            ; $45d5: $3d
	ld d, b                                          ; $45d6: $50
	inc [hl]                                         ; $45d7: $34
	ldh a, [$0a]                                     ; $45d8: $f0 $0a
	ld d, l                                          ; $45da: $55
	ldh a, [$bb]                                     ; $45db: $f0 $bb
	ld [hl], c                                       ; $45dd: $71
	ld a, [hl-]                                      ; $45de: $3a
	ld e, b                                          ; $45df: $58
	jr c, jr_08f_4582                                ; $45e0: $38 $a0

	ld b, b                                          ; $45e2: $40
	ld c, l                                          ; $45e3: $4d
	ld c, c                                          ; $45e4: $49
	xor $10                                          ; $45e5: $ee $10
	add hl, bc                                       ; $45e7: $09
	cpl                                              ; $45e8: $2f

jr_08f_45e9:
	ld b, e                                          ; $45e9: $43
	ld l, e                                          ; $45ea: $6b
	ld b, h                                          ; $45eb: $44
	jr c, jr_08f_458f                                ; $45ec: $38 $a1

	ldh a, [$ce]                                     ; $45ee: $f0 $ce
	ld h, e                                          ; $45f0: $63
	dec sp                                           ; $45f1: $3b
	dec a                                            ; $45f2: $3d
	ld d, b                                          ; $45f3: $50
	xor h                                            ; $45f4: $ac
	ld l, a                                          ; $45f5: $6f
	ld b, a                                          ; $45f6: $47
	ld [hl], d                                       ; $45f7: $72
	ld a, c                                          ; $45f8: $79
	ld a, [hl-]                                      ; $45f9: $3a
	ld e, b                                          ; $45fa: $58
	jr c, @-$56                                      ; $45fb: $38 $a8

	db $ec                                           ; $45fd: $ec
	ld a, c                                          ; $45fe: $79
	ld a, $3f                                        ; $45ff: $3e $3f
	ld e, b                                          ; $4601: $58
	ld a, $df                                        ; $4602: $3e $df
	inc a                                            ; $4604: $3c
	ld d, b                                          ; $4605: $50
	and b                                            ; $4606: $a0
	cpl                                              ; $4607: $2f
	ld b, e                                          ; $4608: $43
	ld h, e                                          ; $4609: $63
	inc [hl]                                         ; $460a: $34
	ld h, e                                          ; $460b: $63
	inc a                                            ; $460c: $3c
	dec sp                                           ; $460d: $3b
	dec a                                            ; $460e: $3d
	ld b, l                                          ; $460f: $45
	dec [hl]                                         ; $4610: $35

jr_08f_4611:
	rla                                              ; $4611: $17
	ld [hl-], a                                      ; $4612: $32
	db $ed                                           ; $4613: $ed
	ld d, e                                          ; $4614: $53
	inc [hl]                                         ; $4615: $34
	db $ed                                           ; $4616: $ed
	sbc [hl]                                         ; $4617: $9e
	ld l, c                                          ; $4618: $69
	ld h, d                                          ; $4619: $62
	inc de                                           ; $461a: $13
	di                                               ; $461b: $f3
	sbc c                                            ; $461c: $99
	ld d, c                                          ; $461d: $51
	add b                                            ; $461e: $80
	ld c, a                                          ; $461f: $4f
	ld d, a                                          ; $4620: $57
	ld a, [hl-]                                      ; $4621: $3a
	ld b, c                                          ; $4622: $41
	ld b, h                                          ; $4623: $44
	ld c, b                                          ; $4624: $48
	and e                                            ; $4625: $a3
	cpl                                              ; $4626: $2f
	ld [hl-], a                                      ; $4627: $32
	ld d, d                                          ; $4628: $52
	dec a                                            ; $4629: $3d
	di                                               ; $462a: $f3
	sbc c                                            ; $462b: $99
	ld d, c                                          ; $462c: $51
	add b                                            ; $462d: $80
	ld c, a                                          ; $462e: $4f
	ld d, a                                          ; $462f: $57
	inc de                                           ; $4630: $13
	ld a, [hl-]                                      ; $4631: $3a
	ld b, c                                          ; $4632: $41
	ld b, h                                          ; $4633: $44
	ld c, b                                          ; $4634: $48
	and e                                            ; $4635: $a3
	cpl                                              ; $4636: $2f
	add sp, $58                                      ; $4637: $e8 $58
	and d                                            ; $4639: $a2
	add a                                            ; $463a: $87

jr_08f_463b:
	ld e, h                                          ; $463b: $5c
	ld a, [hl-]                                      ; $463c: $3a
	pop af                                           ; $463d: $f1
	dec l                                            ; $463e: $2d
	ld h, d                                          ; $463f: $62
	inc de                                           ; $4640: $13
	sub h                                            ; $4641: $94
	ld e, b                                          ; $4642: $58
	ld a, [hl-]                                      ; $4643: $3a
	jr c, jr_08f_4690                                ; $4644: $38 $4a

	ldh a, [$a3]                                     ; $4646: $f0 $a3
	ld e, b                                          ; $4648: $58
	ld c, [hl]                                       ; $4649: $4e
	scf                                              ; $464a: $37
	inc de                                           ; $464b: $13
	ld d, h                                          ; $464c: $54
	ld d, h                                          ; $464d: $54
	ld c, e                                          ; $464e: $4b
	db $ec                                           ; $464f: $ec
	pop af                                           ; $4650: $f1
	ld c, d                                          ; $4651: $4a
	ld d, c                                          ; $4652: $51
	ld b, d                                          ; $4653: $42
	ld b, l                                          ; $4654: $45
	and d                                            ; $4655: $a2
	cpl                                              ; $4656: $2f
	ld [hl-], a                                      ; $4657: $32
	db $ed                                           ; $4658: $ed
	ld d, e                                          ; $4659: $53
	ld c, a                                          ; $465a: $4f
	ld c, h                                          ; $465b: $4c
	ld c, b                                          ; $465c: $48
	and e                                            ; $465d: $a3
	cpl                                              ; $465e: $2f
	jp hl                                            ; $465f: $e9


	call Call_08f_5409                               ; $4660: $cd $09 $54
	ld c, l                                          ; $4663: $4d
	ld a, [hl-]                                      ; $4664: $3a
	ld d, b                                          ; $4665: $50
	inc [hl]                                         ; $4666: $34
	db $ed                                           ; $4667: $ed
	and l                                            ; $4668: $a5
	inc de                                           ; $4669: $13
	ld c, d                                          ; $466a: $4a
	ld e, h                                          ; $466b: $5c
	call c, $eb35                                    ; $466c: $dc $35 $eb
	jp $2fa0                                         ; $466f: $c3 $a0 $2f


	ld b, e                                          ; $4672: $43
	ld l, e                                          ; $4673: $6b
	ld [hl], $86                                     ; $4674: $36 $86
	ld d, h                                          ; $4676: $54
	ld c, l                                          ; $4677: $4d
	and c                                            ; $4678: $a1
	ld l, a                                          ; $4679: $6f
	ld b, d                                          ; $467a: $42
	db $ed                                           ; $467b: $ed
	sbc [hl]                                         ; $467c: $9e
	ld l, c                                          ; $467d: $69
	ld b, l                                          ; $467e: $45
	xor b                                            ; $467f: $a8
	ld l, a                                          ; $4680: $6f
	ld b, d                                          ; $4681: $42
	dec a                                            ; $4682: $3d
	ld [hl], c                                       ; $4683: $71
	ld b, a                                          ; $4684: $47
	ldh a, [$dd]                                     ; $4685: $f0 $dd
	ldh a, [$9c]                                     ; $4687: $f0 $9c
	ld c, d                                          ; $4689: $4a
	ld e, h                                          ; $468a: $5c
	ld c, [hl]                                       ; $468b: $4e
	ld a, [hl-]                                      ; $468c: $3a
	ld b, c                                          ; $468d: $41
	ccf                                              ; $468e: $3f
	inc de                                           ; $468f: $13

jr_08f_4690:
	ldh a, [c]                                       ; $4690: $f2
	ld b, l                                          ; $4691: $45
	db $f4                                           ; $4692: $f4
	and h                                            ; $4693: $a4
	ld b, a                                          ; $4694: $47
	ld [hl], a                                       ; $4695: $77
	jr c, jr_08f_46d2                                ; $4696: $38 $3a

	ld e, b                                          ; $4698: $58
	jr c, jr_08f_463b                                ; $4699: $38 $a0

	ld b, b                                          ; $469b: $40
	ld b, d                                          ; $469c: $42
	adc b                                            ; $469d: $88
	xor h                                            ; $469e: $ac
	ld b, b                                          ; $469f: $40
	ld b, c                                          ; $46a0: $41
	ld a, [hl-]                                      ; $46a1: $3a
	ld b, a                                          ; $46a2: $47
	ldh a, [rAUD4ENV]                                ; $46a3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $46a5: $f0 $23
	ld d, l                                          ; $46a7: $55
	ccf                                              ; $46a8: $3f
	and c                                            ; $46a9: $a1
	cpl                                              ; $46aa: $2f
	db $ec                                           ; $46ab: $ec
	sub $3c                                          ; $46ac: $d6 $3c
	ld a, [hl-]                                      ; $46ae: $3a
	add hl, bc                                       ; $46af: $09
	ld b, b                                          ; $46b0: $40
	add hl, sp                                       ; $46b1: $39
	xor b                                            ; $46b2: $a8
	ld b, b                                          ; $46b3: $40
	ld c, l                                          ; $46b4: $4d
	ld a, [hl-]                                      ; $46b5: $3a
	ld d, b                                          ; $46b6: $50
	ldh a, [$d8]                                     ; $46b7: $f0 $d8
	ld c, c                                          ; $46b9: $49
	add b                                            ; $46ba: $80
	xor h                                            ; $46bb: $ac
	ld l, a                                          ; $46bc: $6f
	ld b, d                                          ; $46bd: $42
	di                                               ; $46be: $f3
	ld b, e                                          ; $46bf: $43
	ld b, a                                          ; $46c0: $47
	ldh a, [$fa]                                     ; $46c1: $f0 $fa
	ld b, c                                          ; $46c3: $41
	ld c, d                                          ; $46c4: $4a
	ld d, l                                          ; $46c5: $55
	ld b, h                                          ; $46c6: $44
	ld e, b                                          ; $46c7: $58

jr_08f_46c8:
	ld c, [hl]                                       ; $46c8: $4e
	and c                                            ; $46c9: $a1
	cpl                                              ; $46ca: $2f
	db $ed                                           ; $46cb: $ed
	ld h, b                                          ; $46cc: $60
	ld b, h                                          ; $46cd: $44
	ld b, l                                          ; $46ce: $45
	add hl, bc                                       ; $46cf: $09
	add d                                            ; $46d0: $82
	pop af                                           ; $46d1: $f1

jr_08f_46d2:
	adc h                                            ; $46d2: $8c
	ld b, d                                          ; $46d3: $42
	pop af                                           ; $46d4: $f1
	sbc l                                            ; $46d5: $9d
	jr c, jr_08f_46c8                                ; $46d6: $38 $f0

	jr c, jr_08f_473c                                ; $46d8: $38 $62

	inc de                                           ; $46da: $13
	db $ec                                           ; $46db: $ec
	dec b                                            ; $46dc: $05
	ldh a, [hDisp0_OBP1]                                     ; $46dd: $f0 $87
	ld c, h                                          ; $46df: $4c
	xor b                                            ; $46e0: $a8
	db $ed                                           ; $46e1: $ed
	ld h, b                                          ; $46e2: $60
	ld c, c                                          ; $46e3: $49
	jr c, jr_08f_471f                                ; $46e4: $38 $39

	add d                                            ; $46e6: $82
	pop af                                           ; $46e7: $f1
	adc h                                            ; $46e8: $8c
	ld c, e                                          ; $46e9: $4b
	xor h                                            ; $46ea: $ac
	ld l, a                                          ; $46eb: $6f
	ld b, d                                          ; $46ec: $42
	di                                               ; $46ed: $f3
	ld b, e                                          ; $46ee: $43
	ld b, h                                          ; $46ef: $44
	ld e, l                                          ; $46f0: $5d
	ld b, d                                          ; $46f1: $42
	ld c, a                                          ; $46f2: $4f
	ld b, d                                          ; $46f3: $42
	ld b, l                                          ; $46f4: $45
	and b                                            ; $46f5: $a0
	cpl                                              ; $46f6: $2f
	db $ed                                           ; $46f7: $ed
	ld e, [hl]                                       ; $46f8: $5e
	add hl, bc                                       ; $46f9: $09
	ld b, b                                          ; $46fa: $40
	add hl, sp                                       ; $46fb: $39
	xor b                                            ; $46fc: $a8
	ld b, b                                          ; $46fd: $40
	ld c, l                                          ; $46fe: $4d
	ld a, [hl-]                                      ; $46ff: $3a
	ld d, b                                          ; $4700: $50
	xor h                                            ; $4701: $ac
	ld c, a                                          ; $4702: $4f
	add hl, sp                                       ; $4703: $39
	or b                                             ; $4704: $b0
	and b                                            ; $4705: $a0
	ld b, b                                          ; $4706: $40
	ld c, l                                          ; $4707: $4d
	ld e, e                                          ; $4708: $5b
	ld d, [hl]                                       ; $4709: $56
	xor h                                            ; $470a: $ac
	ld [$a0cd], a                                    ; $470b: $ea $cd $a0
	cpl                                              ; $470e: $2f
	ld b, e                                          ; $470f: $43
	ld b, b                                          ; $4710: $40
	add hl, sp                                       ; $4711: $39
	ld b, h                                          ; $4712: $44
	ld c, h                                          ; $4713: $4c
	xor b                                            ; $4714: $a8
	db $eb                                           ; $4715: $eb
	ld d, d                                          ; $4716: $52
	and b                                            ; $4717: $a0
	cpl                                              ; $4718: $2f
	add sp, $29                                      ; $4719: $e8 $29
	add hl, bc                                       ; $471b: $09
	cpl                                              ; $471c: $2f
	add sp, $2a                                      ; $471d: $e8 $2a

jr_08f_471f:
	add hl, bc                                       ; $471f: $09
	ld d, h                                          ; $4720: $54
	ld b, c                                          ; $4721: $41
	ld a, [hl-]                                      ; $4722: $3a
	db $ed                                           ; $4723: $ed
	ld h, a                                          ; $4724: $67
	ld b, d                                          ; $4725: $42
	ldh a, [$b2]                                     ; $4726: $f0 $b2
	ldh a, [rKEY1]                                   ; $4728: $f0 $4d
	ld b, a                                          ; $472a: $47
	ld c, e                                          ; $472b: $4b
	inc de                                           ; $472c: $13
	db $ed                                           ; $472d: $ed
	ld [hl], h                                       ; $472e: $74
	ld a, [hl-]                                      ; $472f: $3a
	jr c, jr_08f_4795                                ; $4730: $38 $63

	and b                                            ; $4732: $a0
	cpl                                              ; $4733: $2f
	db $ec                                           ; $4734: $ec
	ld a, [de]                                       ; $4735: $1a
	inc [hl]                                         ; $4736: $34
	jr c, jr_08f_4771                                ; $4737: $38 $38

	ld b, c                                          ; $4739: $41
	db $ec                                           ; $473a: $ec
	ret c                                            ; $473b: $d8

jr_08f_473c:
	and c                                            ; $473c: $a1
	call c, $f0a8                                    ; $473d: $dc $a8 $f0
	inc d                                            ; $4740: $14
	ld b, a                                          ; $4741: $47
	ld l, l                                          ; $4742: $6d
	ldh a, [$0d]                                     ; $4743: $f0 $0d
	db $fc                                           ; $4745: $fc
	ld sp, $503a                                     ; $4746: $31 $3a $50
	ld c, h                                          ; $4749: $4c
	and b                                            ; $474a: $a0
	cpl                                              ; $474b: $2f
	db $ed                                           ; $474c: $ed
	ld d, e                                          ; $474d: $53
	dec sp                                           ; $474e: $3b
	ccf                                              ; $474f: $3f
	inc [hl]                                         ; $4750: $34
	ld h, h                                          ; $4751: $64
	dec sp                                           ; $4752: $3b
	ld c, c                                          ; $4753: $49
	ld a, [hl-]                                      ; $4754: $3a
	pop af                                           ; $4755: $f1
	dec [hl]                                         ; $4756: $35
	add hl, bc                                       ; $4757: $09
	ld l, a                                          ; $4758: $6f
	ld h, d                                          ; $4759: $62
	di                                               ; $475a: $f3
	sbc b                                            ; $475b: $98
	pop af                                           ; $475c: $f1
	jr nz, jr_08f_479d                               ; $475d: $20 $3e

	ccf                                              ; $475f: $3f
	xor h                                            ; $4760: $ac
	dec a                                            ; $4761: $3d
	ld b, h                                          ; $4762: $44
	ld c, d                                          ; $4763: $4a
	ld d, c                                          ; $4764: $51
	ldh a, [$be]                                     ; $4765: $f0 $be
	ld c, c                                          ; $4767: $49
	ld h, h                                          ; $4768: $64
	ld [hl], a                                       ; $4769: $77
	jr c, @-$5d                                      ; $476a: $38 $a1

	cpl                                              ; $476c: $2f
	halt                                             ; $476d: $76
	ld c, e                                          ; $476e: $4b
	inc [hl]                                         ; $476f: $34
	adc e                                            ; $4770: $8b

jr_08f_4771:
	ld e, h                                          ; $4771: $5c
	ld b, h                                          ; $4772: $44
	ld e, l                                          ; $4773: $5d
	ld e, d                                          ; $4774: $5a
	ld c, b                                          ; $4775: $48
	add hl, bc                                       ; $4776: $09
	ld b, b                                          ; $4777: $40
	add hl, sp                                       ; $4778: $39
	xor b                                            ; $4779: $a8
	ldh a, [c]                                       ; $477a: $f2
	rra                                              ; $477b: $1f
	ldh a, [$38]                                     ; $477c: $f0 $38
	ld a, [hl-]                                      ; $477e: $3a
	ld d, b                                          ; $477f: $50
	inc [hl]                                         ; $4780: $34
	ld b, b                                          ; $4781: $40
	add hl, sp                                       ; $4782: $39
	ld c, d                                          ; $4783: $4a
	ld a, $66                                        ; $4784: $3e $66
	add hl, sp                                       ; $4786: $39
	ld c, h                                          ; $4787: $4c
	and b                                            ; $4788: $a0
	ld l, a                                          ; $4789: $6f
	ld b, a                                          ; $478a: $47
	ldh a, [rSCY]                                    ; $478b: $f0 $42
	ld e, b                                          ; $478d: $58
	ld h, e                                          ; $478e: $63
	ld a, $38                                        ; $478f: $3e $38
	inc de                                           ; $4791: $13
	ldh a, [$6d]                                     ; $4792: $f0 $6d
	ld e, c                                          ; $4794: $59

jr_08f_4795:
	ldh a, [$27]                                     ; $4795: $f0 $27
	ld c, e                                          ; $4797: $4b
	ld b, [hl]                                       ; $4798: $46
	ld c, [hl]                                       ; $4799: $4e
	inc a                                            ; $479a: $3c
	ld a, $50                                        ; $479b: $3e $50

jr_08f_479d:
	and c                                            ; $479d: $a1
	cpl                                              ; $479e: $2f

jr_08f_479f:
	add sp, $55                                      ; $479f: $e8 $55
	and c                                            ; $47a1: $a1
	ret                                              ; $47a2: $c9


	xor h                                            ; $47a3: $ac
	ld l, a                                          ; $47a4: $6f
	ld b, a                                          ; $47a5: $47
	ld c, e                                          ; $47a6: $4b
	ldh a, [rPCM12]                                  ; $47a7: $f0 $76
	ldh a, [rTMA]                                    ; $47a9: $f0 $06
	ld h, e                                          ; $47ab: $63
	ld a, [hl-]                                      ; $47ac: $3a
	jr c, jr_08f_479f                                ; $47ad: $38 $f0

	add a                                            ; $47af: $87
	ld c, h                                          ; $47b0: $4c
	and b                                            ; $47b1: $a0
	cpl                                              ; $47b2: $2f
	ld b, e                                          ; $47b3: $43
	ld b, b                                          ; $47b4: $40
	add hl, sp                                       ; $47b5: $39
	ld c, b                                          ; $47b6: $48
	and b                                            ; $47b7: $a0
	ld c, b                                          ; $47b8: $48
	ld [hl+], a                                      ; $47b9: $22
	db $ec                                           ; $47ba: $ec
	reti                                             ; $47bb: $d9


	xor h                                            ; $47bc: $ac
	ldh a, [$d8]                                     ; $47bd: $f0 $d8
	ld c, c                                          ; $47bf: $49
	add b                                            ; $47c0: $80
	pop af                                           ; $47c1: $f1
	inc b                                            ; $47c2: $04
	dec sp                                           ; $47c3: $3b
	ccf                                              ; $47c4: $3f
	ldh a, [$a3]                                     ; $47c5: $f0 $a3
	ld e, b                                          ; $47c7: $58
	ld c, [hl]                                       ; $47c8: $4e
	and c                                            ; $47c9: $a1
	cpl                                              ; $47ca: $2f
	ld b, e                                          ; $47cb: $43
	db $eb                                           ; $47cc: $eb
	rst FarCall                                          ; $47cd: $f7
	xor c                                            ; $47ce: $a9
	pop af                                           ; $47cf: $f1
	ld d, $47                                        ; $47d0: $16 $47
	and b                                            ; $47d2: $a0
	pop af                                           ; $47d3: $f1
	inc b                                            ; $47d4: $04
	dec sp                                           ; $47d5: $3b
	ccf                                              ; $47d6: $3f
	ld d, l                                          ; $47d7: $55
	ld b, h                                          ; $47d8: $44
	ld e, b                                          ; $47d9: $58
	ld c, [hl]                                       ; $47da: $4e
	ld b, d                                          ; $47db: $42
	xor h                                            ; $47dc: $ac
	ld d, l                                          ; $47dd: $55
	ld b, h                                          ; $47de: $44
	ld e, b                                          ; $47df: $58
	ld d, b                                          ; $47e0: $50
	ld a, [hl-]                                      ; $47e1: $3a
	jr c, jr_08f_4826                                ; $47e2: $38 $42

	and c                                            ; $47e4: $a1
	cpl                                              ; $47e5: $2f
	ld b, e                                          ; $47e6: $43
	xor $2d                                          ; $47e7: $ee $2d
	xor $2d                                          ; $47e9: $ee $2d
	xor h                                            ; $47eb: $ac
	pop af                                           ; $47ec: $f1
	inc b                                            ; $47ed: $04
	ld d, a                                          ; $47ee: $57
	ld d, d                                          ; $47ef: $52
	ld d, c                                          ; $47f0: $51
	inc [hl]                                         ; $47f1: $34
	pop af                                           ; $47f2: $f1
	inc b                                            ; $47f3: $04
	ld d, a                                          ; $47f4: $57
	ld d, d                                          ; $47f5: $52
	ld d, c                                          ; $47f6: $51
	and b                                            ; $47f7: $a0
	ld d, h                                          ; $47f8: $54
	ld c, l                                          ; $47f9: $4d
	ld c, d                                          ; $47fa: $4a
	ld hl, sp+$3a                                    ; $47fb: $f8 $3a
	ldh a, [rSTAT]                                   ; $47fd: $f0 $41
	ld b, a                                          ; $47ff: $47
	xor h                                            ; $4800: $ac
	jr c, jr_08f_483b                                ; $4801: $38 $38

	ld h, h                                          ; $4803: $64
	di                                               ; $4804: $f3
	dec a                                            ; $4805: $3d
	ldh a, [c]                                       ; $4806: $f2
	or $53                                           ; $4807: $f6 $53
	sub h                                            ; $4809: $94
	ld a, b                                          ; $480a: $78
	dec a                                            ; $480b: $3d
	ld h, e                                          ; $480c: $63
	and b                                            ; $480d: $a0
	cpl                                              ; $480e: $2f
	ld [hl-], a                                      ; $480f: $32
	db $ed                                           ; $4810: $ed
	ld d, e                                          ; $4811: $53
	ccf                                              ; $4812: $3f
	xor h                                            ; $4813: $ac
	ld hl, sp+$3a                                    ; $4814: $f8 $3a
	ld [hl], a                                       ; $4816: $77
	jr c, jr_08f_4853                                ; $4817: $38 $3a

	ld b, c                                          ; $4819: $41
	ld b, h                                          ; $481a: $44
	ld a, [hl-]                                      ; $481b: $3a
	and e                                            ; $481c: $a3
	cpl                                              ; $481d: $2f
	ld [$4b82], a                                    ; $481e: $ea $82 $4b
	and c                                            ; $4821: $a1
	ret                                              ; $4822: $c9


	xor h                                            ; $4823: $ac
	ld l, a                                          ; $4824: $6f
	ld b, a                                          ; $4825: $47

jr_08f_4826:
	ld c, e                                          ; $4826: $4b
	ldh a, [rPCM12]                                  ; $4827: $f0 $76
	ldh a, [rTMA]                                    ; $4829: $f0 $06
	ld h, e                                          ; $482b: $63
	ld a, [hl-]                                      ; $482c: $3a
	jr c, @-$0e                                      ; $482d: $38 $f0

	add a                                            ; $482f: $87
	ld c, h                                          ; $4830: $4c
	xor b                                            ; $4831: $a8
	pop af                                           ; $4832: $f1
	ld l, a                                          ; $4833: $6f
	ld b, a                                          ; $4834: $47
	ld c, e                                          ; $4835: $4b
	ld l, e                                          ; $4836: $6b
	inc a                                            ; $4837: $3c
	ld a, [hl-]                                      ; $4838: $3a
	jr c, jr_08f_487d                                ; $4839: $38 $42

jr_08f_483b:
	and c                                            ; $483b: $a1
	cpl                                              ; $483c: $2f
	ld e, d                                          ; $483d: $5a
	add hl, sp                                       ; $483e: $39
	inc a                                            ; $483f: $3c
	ld a, [hl-]                                      ; $4840: $3a
	ld [hl], $ed                                     ; $4841: $36 $ed
	ld d, e                                          ; $4843: $53
	ccf                                              ; $4844: $3f
	add a                                            ; $4845: $87
	add h                                            ; $4846: $84
	ld b, h                                          ; $4847: $44
	inc a                                            ; $4848: $3c
	ld d, b                                          ; $4849: $50
	add hl, bc                                       ; $484a: $09
	call c, $40a8                                    ; $484b: $dc $a8 $40
	ld c, l                                          ; $484e: $4d
	ld a, [hl-]                                      ; $484f: $3a
	ld d, b                                          ; $4850: $50
	inc [hl]                                         ; $4851: $34
	db $ed                                           ; $4852: $ed

jr_08f_4853:
	xor a                                            ; $4853: $af
	db $ec                                           ; $4854: $ec
	dec bc                                           ; $4855: $0b
	and b                                            ; $4856: $a0
	ld d, h                                          ; $4857: $54
	add hl, sp                                       ; $4858: $39
	jr c, @+$3b                                      ; $4859: $38 $39

	ldh a, [$3d]                                     ; $485b: $f0 $3d
	ldh a, [$f1]                                     ; $485d: $f0 $f1
	ldh a, [$03]                                     ; $485f: $f0 $03
	ld l, c                                          ; $4861: $69
	ld a, [hl-]                                      ; $4862: $3a
	inc de                                           ; $4863: $13
	ldh a, [$6d]                                     ; $4864: $f0 $6d
	ld e, c                                          ; $4866: $59
	ldh a, [$27]                                     ; $4867: $f0 $27
	ld d, h                                          ; $4869: $54
	ld b, b                                          ; $486a: $40
	xor h                                            ; $486b: $ac
	ld l, a                                          ; $486c: $6f
	ld b, a                                          ; $486d: $47
	ldh a, [rSCY]                                    ; $486e: $f0 $42
	ld e, b                                          ; $4870: $58
	ld h, e                                          ; $4871: $63
	ld a, $38                                        ; $4872: $3e $38
	ld h, e                                          ; $4874: $63
	and b                                            ; $4875: $a0
	cpl                                              ; $4876: $2f
	ld d, h                                          ; $4877: $54
	ld b, d                                          ; $4878: $42
	db $ec                                           ; $4879: $ec
	cp $53                                           ; $487a: $fe $53
	ld a, [hl]                                       ; $487c: $7e

jr_08f_487d:
	jr c, jr_08f_48c4                                ; $487d: $38 $45

	ld c, h                                          ; $487f: $4c
	add hl, bc                                       ; $4880: $09
	call c, $eba8                                    ; $4881: $dc $a8 $eb
	ld [hl], h                                       ; $4884: $74
	db $ec                                           ; $4885: $ec
	ret c                                            ; $4886: $d8

	and b                                            ; $4887: $a0
	cpl                                              ; $4888: $2f
	add sp, $6b                                      ; $4889: $e8 $6b
	and c                                            ; $488b: $a1
	ld b, [hl]                                       ; $488c: $46
	ld b, c                                          ; $488d: $41
	ld a, [hl-]                                      ; $488e: $3a
	ld d, e                                          ; $488f: $53
	ld e, b                                          ; $4890: $58
	add b                                            ; $4891: $80
	ld a, [hl-]                                      ; $4892: $3a
	ldh a, [$a7]                                     ; $4893: $f0 $a7
	ldh a, [rAUD2HIGH]                               ; $4895: $f0 $19
	ld c, c                                          ; $4897: $49
	xor h                                            ; $4898: $ac
	xor $06                                          ; $4899: $ee $06
	ld b, a                                          ; $489b: $47
	ld a, $3a                                        ; $489c: $3e $3a
	jr c, jr_08f_48ea                                ; $489e: $38 $4a

	ldh a, [$a3]                                     ; $48a0: $f0 $a3
	ld e, b                                          ; $48a2: $58
	ld c, [hl]                                       ; $48a3: $4e
	and c                                            ; $48a4: $a1
	cpl                                              ; $48a5: $2f
	add sp, $41                                      ; $48a6: $e8 $41
	add hl, bc                                       ; $48a8: $09
	db $ed                                           ; $48a9: $ed
	ld a, a                                          ; $48aa: $7f
	ld b, [hl]                                       ; $48ab: $46
	ld d, a                                          ; $48ac: $57
	ld d, d                                          ; $48ad: $52
	ld a, c                                          ; $48ae: $79
	ld b, c                                          ; $48af: $41
	ld h, e                                          ; $48b0: $63
	and b                                            ; $48b1: $a0
	ldh a, [$08]                                     ; $48b2: $f0 $08
	ld e, c                                          ; $48b4: $59
	ldh a, [$08]                                     ; $48b5: $f0 $08
	ldh a, [$08]                                     ; $48b7: $f0 $08
	ldh a, [$08]                                     ; $48b9: $f0 $08
	ldh a, [$08]                                     ; $48bb: $f0 $08
	xor b                                            ; $48bd: $a8
	ld [hl], d                                       ; $48be: $72
	ld a, [hl-]                                      ; $48bf: $3a
	ld e, b                                          ; $48c0: $58
	jr c, jr_08f_48f7                                ; $48c1: $38 $34

	ld d, h                                          ; $48c3: $54

jr_08f_48c4:
	ld b, d                                          ; $48c4: $42
	ldh a, [rAUD1LEN]                                ; $48c5: $f0 $11
	ld a, l                                          ; $48c7: $7d
	ld h, l                                          ; $48c8: $65
	xor b                                            ; $48c9: $a8
	ret                                              ; $48ca: $c9


	ld a, $3d                                        ; $48cb: $3e $3d
	ld c, a                                          ; $48cd: $4f
	ld b, d                                          ; $48ce: $42
	ld c, d                                          ; $48cf: $4a
	ld a, $66                                        ; $48d0: $3e $66
	and b                                            ; $48d2: $a0
	cpl                                              ; $48d3: $2f
	add sp, -$4b                                     ; $48d4: $e8 $b5
	and c                                            ; $48d6: $a1
	ldh a, [$08]                                     ; $48d7: $f0 $08
	ld e, c                                          ; $48d9: $59
	ldh a, [$08]                                     ; $48da: $f0 $08
	ldh a, [$08]                                     ; $48dc: $f0 $08
	ldh a, [$08]                                     ; $48de: $f0 $08
	ldh a, [$08]                                     ; $48e0: $f0 $08
	xor b                                            ; $48e2: $a8
	ld l, a                                          ; $48e3: $6f
	ld b, d                                          ; $48e4: $42
	adc d                                            ; $48e5: $8a
	db $f4                                           ; $48e6: $f4
	ld l, b                                          ; $48e7: $68
	ld b, d                                          ; $48e8: $42
	sbc [hl]                                         ; $48e9: $9e

jr_08f_48ea:
	ld b, a                                          ; $48ea: $47
	ld c, e                                          ; $48eb: $4b
	xor h                                            ; $48ec: $ac
	ldh a, [$c6]                                     ; $48ed: $f0 $c6
	ldh a, [c]                                       ; $48ef: $f2
	xor d                                            ; $48f0: $aa
	ld d, c                                          ; $48f1: $51
	ld d, b                                          ; $48f2: $50
	inc [hl]                                         ; $48f3: $34
	ldh a, [$d8]                                     ; $48f4: $f0 $d8
	ld c, l                                          ; $48f6: $4d

jr_08f_48f7:
	ldh a, [rSCY]                                    ; $48f7: $f0 $42
	ld d, c                                          ; $48f9: $51
	ld b, d                                          ; $48fa: $42
	ld b, l                                          ; $48fb: $45
	and b                                            ; $48fc: $a0
	cpl                                              ; $48fd: $2f
	jp hl                                            ; $48fe: $e9


	ld bc, $f0a1                                     ; $48ff: $01 $a1 $f0
	ret c                                            ; $4902: $d8

	ld d, e                                          ; $4903: $53
	ldh a, [$be]                                     ; $4904: $f0 $be
	ld b, d                                          ; $4906: $42
	ld c, e                                          ; $4907: $4b
	xor h                                            ; $4908: $ac
	ld l, h                                          ; $4909: $6c
	dec sp                                           ; $490a: $3b
	ld c, c                                          ; $490b: $49
	ld c, a                                          ; $490c: $4f
	ld a, [hl-]                                      ; $490d: $3a
	jr c, jr_08f_495a                                ; $490e: $38 $4a

	ld d, c                                          ; $4910: $51
	ld h, e                                          ; $4911: $63
	ld b, l                                          ; $4912: $45
	and b                                            ; $4913: $a0
	cpl                                              ; $4914: $2f
	ld [$0907], a                                    ; $4915: $ea $07 $09
	ld b, l                                          ; $4918: $45
	ld d, l                                          ; $4919: $55
	dec sp                                           ; $491a: $3b
	ccf                                              ; $491b: $3f
	ld b, l                                          ; $491c: $45
	xor b                                            ; $491d: $a8
	adc e                                            ; $491e: $8b
	ld e, h                                          ; $491f: $5c
	ld a, [hl-]                                      ; $4920: $3a
	ld b, h                                          ; $4921: $44
	ld e, l                                          ; $4922: $5d
	inc [hl]                                         ; $4923: $34
	ld h, h                                          ; $4924: $64
	pop af                                           ; $4925: $f1
	inc b                                            ; $4926: $04
	ld d, a                                          ; $4927: $57
	ld a, [hl-]                                      ; $4928: $3a
	ld e, b                                          ; $4929: $58
	jr c, @-$5e                                      ; $492a: $38 $a0

	add hl, bc                                       ; $492c: $09
	ld b, b                                          ; $492d: $40
	ld c, l                                          ; $492e: $4d
	ld e, e                                          ; $492f: $5b
	ld d, [hl]                                       ; $4930: $56
	xor h                                            ; $4931: $ac
	ld [$a0cd], a                                    ; $4932: $ea $cd $a0
	cpl                                              ; $4935: $2f
	ld b, e                                          ; $4936: $43
	ld b, b                                          ; $4937: $40
	add hl, sp                                       ; $4938: $39
	ld b, h                                          ; $4939: $44
	ld c, h                                          ; $493a: $4c
	xor b                                            ; $493b: $a8
	db $eb                                           ; $493c: $eb
	ld d, d                                          ; $493d: $52
	and b                                            ; $493e: $a0
	ld a, [hl-]                                      ; $493f: $3a
	ld b, c                                          ; $4940: $41
	ccf                                              ; $4941: $3f
	ld d, h                                          ; $4942: $54
	ld c, c                                          ; $4943: $49
	xor b                                            ; $4944: $a8
	ld [$13e9], a                                    ; $4945: $ea $e9 $13
	ld a, [hl-]                                      ; $4948: $3a
	dec sp                                           ; $4949: $3b
	ccf                                              ; $494a: $3f
	ld [$63b4], a                                    ; $494b: $ea $b4 $63
	and b                                            ; $494e: $a0
	cpl                                              ; $494f: $2f
	db $ed                                           ; $4950: $ed
	ld d, e                                          ; $4951: $53
	ld [$0962], a                                    ; $4952: $ea $62 $09
	ldh a, [$08]                                     ; $4955: $f0 $08
	ld e, c                                          ; $4957: $59
	ldh a, [$08]                                     ; $4958: $f0 $08

jr_08f_495a:
	ldh a, [$08]                                     ; $495a: $f0 $08
	ldh a, [$08]                                     ; $495c: $f0 $08
	xor b                                            ; $495e: $a8
	db $ec                                           ; $495f: $ec
	inc e                                            ; $4960: $1c
	inc [hl]                                         ; $4961: $34
	ld d, h                                          ; $4962: $54
	ld b, d                                          ; $4963: $42
	ld l, a                                          ; $4964: $6f
	ld b, d                                          ; $4965: $42
	adc d                                            ; $4966: $8a
	db $f4                                           ; $4967: $f4
	ld l, b                                          ; $4968: $68
	ld h, d                                          ; $4969: $62
	inc de                                           ; $496a: $13
	ld c, a                                          ; $496b: $4f
	dec sp                                           ; $496c: $3b
	ccf                                              ; $496d: $3f
	ld d, c                                          ; $496e: $51
	ld c, l                                          ; $496f: $4d
	ld a, e                                          ; $4970: $7b
	db $ed                                           ; $4971: $ed
	rst FarCall                                          ; $4972: $f7
	ld b, l                                          ; $4973: $45
	and b                                            ; $4974: $a0
	cpl                                              ; $4975: $2f
	db $ed                                           ; $4976: $ed
	ld d, e                                          ; $4977: $53
	jp hl                                            ; $4978: $e9


	ld e, c                                          ; $4979: $59
	add hl, bc                                       ; $497a: $09
	ld [$a8ce], a                                    ; $497b: $ea $ce $a8
	ld d, h                                          ; $497e: $54
	ld b, c                                          ; $497f: $41
	ld a, [hl-]                                      ; $4980: $3a
	sbc d                                            ; $4981: $9a
	ld d, e                                          ; $4982: $53
	sub h                                            ; $4983: $94
	ld a, b                                          ; $4984: $78
	ccf                                              ; $4985: $3f
	ld c, a                                          ; $4986: $4f
	xor h                                            ; $4987: $ac
	ld l, e                                          ; $4988: $6b
	ld b, d                                          ; $4989: $42
	ldh a, [c]                                       ; $498a: $f2
	reti                                             ; $498b: $d9


	ld b, a                                          ; $498c: $47
	ld c, a                                          ; $498d: $4f
	ldh a, [$d9]                                     ; $498e: $f0 $d9
	ld h, c                                          ; $4990: $61
	ld d, d                                          ; $4991: $52
	ld a, c                                          ; $4992: $79
	ld b, c                                          ; $4993: $41
	ld h, e                                          ; $4994: $63
	and b                                            ; $4995: $a0
	cpl                                              ; $4996: $2f
	add sp, -$11                                     ; $4997: $e8 $ef
	add hl, bc                                       ; $4999: $09
	ldh a, [c]                                       ; $499a: $f2
	ld a, $f1                                        ; $499b: $3e $f1
	call $a845                                       ; $499d: $cd $45 $a8
	ld b, b                                          ; $49a0: $40
	ld c, l                                          ; $49a1: $4d
	ld e, e                                          ; $49a2: $5b
	ld d, [hl]                                       ; $49a3: $56
	xor h                                            ; $49a4: $ac
	ld l, e                                          ; $49a5: $6b
	ld c, c                                          ; $49a6: $49
	inc a                                            ; $49a7: $3c
	ld a, $3f                                        ; $49a8: $3e $3f
	ld d, l                                          ; $49aa: $55
	ld b, h                                          ; $49ab: $44
	ld e, b                                          ; $49ac: $58
	ld c, [hl]                                       ; $49ad: $4e
	and c                                            ; $49ae: $a1
	ld d, h                                          ; $49af: $54
	ld b, c                                          ; $49b0: $41
	ld a, [hl-]                                      ; $49b1: $3a
	ld d, h                                          ; $49b2: $54
	ld c, c                                          ; $49b3: $49
	ld h, d                                          ; $49b4: $62
	ld a, $3f                                        ; $49b5: $3e $3f
	jr c, @+$3f                                      ; $49b7: $38 $3d

	ld d, b                                          ; $49b9: $50
	xor h                                            ; $49ba: $ac
	di                                               ; $49bb: $f3
	cp $f5                                           ; $49bc: $fe $f5
	dec b                                            ; $49be: $05
	ld d, e                                          ; $49bf: $53
	add b                                            ; $49c0: $80
	jr c, jr_08f_4a02                                ; $49c1: $38 $3f

	inc de                                           ; $49c3: $13
	ld a, $52                                        ; $49c4: $3e $52
	jr c, jr_08f_4a1a                                ; $49c6: $38 $52

	ld d, c                                          ; $49c8: $51
	ld h, e                                          ; $49c9: $63
	and b                                            ; $49ca: $a0
	cpl                                              ; $49cb: $2f
	db $f4                                           ; $49cc: $f4
	add b                                            ; $49cd: $80
	ldh a, [$0d]                                     ; $49ce: $f0 $0d
	ld a, [hl-]                                      ; $49d0: $3a
	db $ed                                           ; $49d1: $ed
	add [hl]                                         ; $49d2: $86
	ld c, e                                          ; $49d3: $4b
	adc d                                            ; $49d4: $8a
	db $f4                                           ; $49d5: $f4
	sbc d                                            ; $49d6: $9a
	ld b, a                                          ; $49d7: $47
	jr c, jr_08f_4a12                                ; $49d8: $38 $38

	ld b, c                                          ; $49da: $41
	ld b, h                                          ; $49db: $44
	ld b, l                                          ; $49dc: $45
	add hl, bc                                       ; $49dd: $09
	rst JumpTable                                          ; $49de: $c7
	inc a                                            ; $49df: $3c
	ld a, $50                                        ; $49e0: $3e $50
	xor c                                            ; $49e2: $a9
	ld e, e                                          ; $49e3: $5b
	ld d, [hl]                                       ; $49e4: $56
	ld b, [hl]                                       ; $49e5: $46
	inc [hl]                                         ; $49e6: $34
	ld c, a                                          ; $49e7: $4f
	add hl, sp                                       ; $49e8: $39
	ldh a, [rHDMA4]                                  ; $49e9: $f0 $54
	ld a, $44                                        ; $49eb: $3e $44
	ld e, l                                          ; $49ed: $5d
	ld c, b                                          ; $49ee: $48
	and b                                            ; $49ef: $a0
	cpl                                              ; $49f0: $2f
	ld c, a                                          ; $49f1: $4f
	add hl, sp                                       ; $49f2: $39
	ldh a, [rHDMA4]                                  ; $49f3: $f0 $54
	ld a, $ed                                        ; $49f5: $3e $ed
	add [hl]                                         ; $49f7: $86
	ld a, $3d                                        ; $49f8: $3e $3d
	ld d, b                                          ; $49fa: $50
	and c                                            ; $49fb: $a1
	db $ed                                           ; $49fc: $ed
	sub [hl]                                         ; $49fd: $96
	ld a, [hl-]                                      ; $49fe: $3a
	ld h, h                                          ; $49ff: $64
	ldh a, [$f6]                                     ; $4a00: $f0 $f6

jr_08f_4a02:
	ldh a, [rAUDVOL]                                 ; $4a02: $f0 $24
	ld b, l                                          ; $4a04: $45
	and b                                            ; $4a05: $a0
	cpl                                              ; $4a06: $2f
	ld b, b                                          ; $4a07: $40
	add hl, sp                                       ; $4a08: $39
	ld b, h                                          ; $4a09: $44
	ld c, h                                          ; $4a0a: $4c
	dec [hl]                                         ; $4a0b: $35
	ld c, a                                          ; $4a0c: $4f
	add hl, sp                                       ; $4a0d: $39
	pop af                                           ; $4a0e: $f1
	jr nc, jr_08f_4a82                               ; $4a0f: $30 $71

	ld b, l                                          ; $4a11: $45

jr_08f_4a12:
	add hl, sp                                       ; $4a12: $39
	inc a                                            ; $4a13: $3c
	add hl, bc                                       ; $4a14: $09
	ld b, b                                          ; $4a15: $40
	add hl, sp                                       ; $4a16: $39
	ld a, $52                                        ; $4a17: $3e $52
	ld d, c                                          ; $4a19: $51

jr_08f_4a1a:
	ld h, e                                          ; $4a1a: $63
	and b                                            ; $4a1b: $a0
	ld e, d                                          ; $4a1c: $5a
	add hl, sp                                       ; $4a1d: $39
	xor c                                            ; $4a1e: $a9
	ldh a, [$0c]                                     ; $4a1f: $f0 $0c
	ld e, h                                          ; $4a21: $5c
	ld a, [$4d5e]                                    ; $4a22: $fa $5e $4d
	dec a                                            ; $4a25: $3d
	ld c, d                                          ; $4a26: $4a
	ld a, $66                                        ; $4a27: $3e $66
	add hl, sp                                       ; $4a29: $39
	and b                                            ; $4a2a: $a0
	cpl                                              ; $4a2b: $2f
	add sp, $56                                      ; $4a2c: $e8 $56
	add hl, bc                                       ; $4a2e: $09
	ldh a, [$08]                                     ; $4a2f: $f0 $08
	ld e, c                                          ; $4a31: $59
	ldh a, [$08]                                     ; $4a32: $f0 $08
	ldh a, [$08]                                     ; $4a34: $f0 $08
	ldh a, [$08]                                     ; $4a36: $f0 $08
	xor b                                            ; $4a38: $a8
	sub c                                            ; $4a39: $91
	ldh a, [$59]                                     ; $4a3a: $f0 $59
	ld c, h                                          ; $4a3c: $4c
	and b                                            ; $4a3d: $a0
	cpl                                              ; $4a3e: $2f
	db $ed                                           ; $4a3f: $ed
	ld e, [hl]                                       ; $4a40: $5e
	inc [hl]                                         ; $4a41: $34
	pop af                                           ; $4a42: $f1
	and $f3                                          ; $4a43: $e6 $f3
	pop de                                           ; $4a45: $d1
	inc a                                            ; $4a46: $3c
	ld d, b                                          ; $4a47: $50
	ld l, [hl]                                       ; $4a48: $6e
	ld d, a                                          ; $4a49: $57
	ldh a, [hDisp1_WX]                                     ; $4a4a: $f0 $96
	ld a, c                                          ; $4a4c: $79
	add hl, bc                                       ; $4a4d: $09
	ld l, a                                          ; $4a4e: $6f
	ld b, a                                          ; $4a4f: $47
	inc de                                           ; $4a50: $13
	ldh a, [$97]                                     ; $4a51: $f0 $97
	ld h, d                                          ; $4a53: $62
	inc a                                            ; $4a54: $3c
	inc a                                            ; $4a55: $3c
	ld a, c                                          ; $4a56: $79
	ld c, [hl]                                       ; $4a57: $4e
	add b                                            ; $4a58: $80
	ld c, a                                          ; $4a59: $4f
	ld d, a                                          ; $4a5a: $57
	and c                                            ; $4a5b: $a1
	cpl                                              ; $4a5c: $2f
	add sp, -$19                                     ; $4a5d: $e8 $e7
	add hl, bc                                       ; $4a5f: $09
	ld h, e                                          ; $4a60: $63
	ld d, a                                          ; $4a61: $57
	ld c, c                                          ; $4a62: $49
	ld c, b                                          ; $4a63: $48
	xor c                                            ; $4a64: $a9
	ld b, b                                          ; $4a65: $40
	add hl, sp                                       ; $4a66: $39
	inc [hl]                                         ; $4a67: $34
	ld h, e                                          ; $4a68: $63
	ld d, a                                          ; $4a69: $57
	ld c, c                                          ; $4a6a: $49
	ld a, [hl-]                                      ; $4a6b: $3a
	ld b, d                                          ; $4a6c: $42
	ld c, b                                          ; $4a6d: $48
	and b                                            ; $4a6e: $a0
	ldh a, [$d6]                                     ; $4a6f: $f0 $d6
	ld c, e                                          ; $4a71: $4b
	ld l, e                                          ; $4a72: $6b
	ld d, e                                          ; $4a73: $53
	jr c, jr_08f_4aae                                ; $4a74: $38 $38

	xor c                                            ; $4a76: $a9
	ldh a, [$b6]                                     ; $4a77: $f0 $b6
	ldh a, [$34]                                     ; $4a79: $f0 $34
	ld b, a                                          ; $4a7b: $47
	db $eb                                           ; $4a7c: $eb
	call z, $1362                                    ; $4a7d: $cc $62 $13
	pop af                                           ; $4a80: $f1
	ld c, d                                          ; $4a81: $4a

jr_08f_4a82:
	ld e, l                                          ; $4a82: $5d
	ldh a, [$9a]                                     ; $4a83: $f0 $9a
	ld e, l                                          ; $4a85: $5d
	ld c, [hl]                                       ; $4a86: $4e
	ld h, e                                          ; $4a87: $63
	ld b, l                                          ; $4a88: $45
	and b                                            ; $4a89: $a0
	cpl                                              ; $4a8a: $2f
	db $ed                                           ; $4a8b: $ed
	ld d, e                                          ; $4a8c: $53
	ld b, d                                          ; $4a8d: $42
	pop af                                           ; $4a8e: $f1
	xor e                                            ; $4a8f: $ab
	ld a, [hl-]                                      ; $4a90: $3a
	ld d, b                                          ; $4a91: $50
	ld a, [hl-]                                      ; $4a92: $3a
	ld b, c                                          ; $4a93: $41
	ld c, d                                          ; $4a94: $4a
	ld c, a                                          ; $4a95: $4f
	jr c, jr_08f_4ad0                                ; $4a96: $38 $38

	ld b, l                                          ; $4a98: $45
	add hl, bc                                       ; $4a99: $09
	call c, $5ba8                                    ; $4a9a: $dc $a8 $5b
	ld d, [hl]                                       ; $4a9d: $56
	ld b, [hl]                                       ; $4a9e: $46
	inc [hl]                                         ; $4a9f: $34
	ldh a, [$d6]                                     ; $4aa0: $f0 $d6
	ld c, e                                          ; $4aa2: $4b
	ld d, h                                          ; $4aa3: $54
	ld c, l                                          ; $4aa4: $4d
	ld b, a                                          ; $4aa5: $47
	ld d, c                                          ; $4aa6: $51
	ld c, [hl]                                       ; $4aa7: $4e

Call_08f_4aa8:
	ld h, e                                          ; $4aa8: $63
	and b                                            ; $4aa9: $a0
	cpl                                              ; $4aaa: $2f
	ld d, h                                          ; $4aab: $54
	ld d, h                                          ; $4aac: $54
	ld c, e                                          ; $4aad: $4b

jr_08f_4aae:
	db $f4                                           ; $4aae: $f4
	adc b                                            ; $4aaf: $88
	ld d, l                                          ; $4ab0: $55
	ldh a, [$a8]                                     ; $4ab1: $f0 $a8
	pop af                                           ; $4ab3: $f1
	xor e                                            ; $4ab4: $ab
	ld a, [hl-]                                      ; $4ab5: $3a
	ld b, c                                          ; $4ab6: $41
	ccf                                              ; $4ab7: $3f
	ld e, d                                          ; $4ab8: $5a
	add hl, sp                                       ; $4ab9: $39
	and c                                            ; $4aba: $a1
	ldh a, [$a8]                                     ; $4abb: $f0 $a8
	pop af                                           ; $4abd: $f1
	xor e                                            ; $4abe: $ab
	ld c, e                                          ; $4abf: $4b
	ldh a, [$64]                                     ; $4ac0: $f0 $64
	ld b, l                                          ; $4ac2: $45
	xor b                                            ; $4ac3: $a8
	pop af                                           ; $4ac4: $f1
	ld l, a                                          ; $4ac5: $6f
	ld b, a                                          ; $4ac6: $47
	ld c, e                                          ; $4ac7: $4b
	and c                                            ; $4ac8: $a1
	cpl                                              ; $4ac9: $2f
	ldh a, [$1f]                                     ; $4aca: $f0 $1f
	ldh a, [$c2]                                     ; $4acc: $f0 $c2
	ld [hl], e                                       ; $4ace: $73
	ld l, c                                          ; $4acf: $69

jr_08f_4ad0:
	ldh a, [$de]                                     ; $4ad0: $f0 $de
	add e                                            ; $4ad2: $83
	ldh a, [$c2]                                     ; $4ad3: $f0 $c2
	ld [hl], e                                       ; $4ad5: $73
	ldh a, [$f2]                                     ; $4ad6: $f0 $f2
	ld d, e                                          ; $4ad8: $53
	jr c, jr_08f_4b13                                ; $4ad9: $38 $38

	ld a, [hl-]                                      ; $4adb: $3a
	add hl, bc                                       ; $4adc: $09
	ld l, e                                          ; $4add: $6b
	xor c                                            ; $4ade: $a9
	ld d, h                                          ; $4adf: $54
	ld b, d                                          ; $4ae0: $42
	ld l, a                                          ; $4ae1: $6f
	ld b, a                                          ; $4ae2: $47
	pop af                                           ; $4ae3: $f1
	rst AddAOntoHL                                          ; $4ae4: $ef
	db $f4                                           ; $4ae5: $f4
	ld a, [de]                                       ; $4ae6: $1a
	ld d, c                                          ; $4ae7: $51
	ld c, [hl]                                       ; $4ae8: $4e
	add b                                            ; $4ae9: $80
	ld c, a                                          ; $4aea: $4f
	ld d, a                                          ; $4aeb: $57
	xor c                                            ; $4aec: $a9
	pop af                                           ; $4aed: $f1
	inc l                                            ; $4aee: $2c
	pop af                                           ; $4aef: $f1
	sbc [hl]                                         ; $4af0: $9e
	ldh a, [rAUD1HIGH]                               ; $4af1: $f0 $14
	ldh a, [$0a]                                     ; $4af3: $f0 $0a

jr_08f_4af5:
	jr c, jr_08f_4b5a                                ; $4af5: $38 $63

	ld b, l                                          ; $4af7: $45
	and b                                            ; $4af8: $a0
	cpl                                              ; $4af9: $2f
	ld [hl-], a                                      ; $4afa: $32
	ld e, [hl]                                       ; $4afb: $5e
	dec sp                                           ; $4afc: $3b
	xor l                                            ; $4afd: $ad
	ld b, h                                          ; $4afe: $44
	inc [hl]                                         ; $4aff: $34
	db $ed                                           ; $4b00: $ed
	ld b, e                                          ; $4b01: $43
	ld l, d                                          ; $4b02: $6a
	ld c, b                                          ; $4b03: $48
	and e                                            ; $4b04: $a3
	ld b, b                                          ; $4b05: $40
	ld c, l                                          ; $4b06: $4d
	ld e, e                                          ; $4b07: $5b
	ld d, [hl]                                       ; $4b08: $56
	xor h                                            ; $4b09: $ac
	ldh a, [rAUD2HIGH]                               ; $4b0a: $f0 $19
	ld b, a                                          ; $4b0c: $47
	sub [hl]                                         ; $4b0d: $96
	ld d, a                                          ; $4b0e: $57
	ld d, d                                          ; $4b0f: $52
	ld a, $66                                        ; $4b10: $3e $66
	add hl, sp                                       ; $4b12: $39

jr_08f_4b13:
	and b                                            ; $4b13: $a0
	cpl                                              ; $4b14: $2f
	ld b, e                                          ; $4b15: $43
	ld b, b                                          ; $4b16: $40
	add hl, sp                                       ; $4b17: $39
	ld b, h                                          ; $4b18: $44
	ld c, h                                          ; $4b19: $4c
	and b                                            ; $4b1a: $a0
	cpl                                              ; $4b1b: $2f
	jp hl                                            ; $4b1c: $e9


	cp e                                             ; $4b1d: $bb
	xor h                                            ; $4b1e: $ac
	ld [$6222], a                                    ; $4b1f: $ea $22 $62
	inc de                                           ; $4b22: $13
	db $eb                                           ; $4b23: $eb
	adc a                                            ; $4b24: $8f
	and e                                            ; $4b25: $a3
	cpl                                              ; $4b26: $2f
	db $ed                                           ; $4b27: $ed
	ld d, e                                          ; $4b28: $53
	jp hl                                            ; $4b29: $e9


	cp b                                             ; $4b2a: $b8
	add hl, bc                                       ; $4b2b: $09
	cpl                                              ; $4b2c: $2f
	ld b, e                                          ; $4b2d: $43
	db $ed                                           ; $4b2e: $ed
	ld d, e                                          ; $4b2f: $53
	inc [hl]                                         ; $4b30: $34
	ld [$1322], a                                    ; $4b31: $ea $22 $13
	ld [hl], d                                       ; $4b34: $72
	ld b, a                                          ; $4b35: $47
	db $eb                                           ; $4b36: $eb
	ld e, h                                          ; $4b37: $5c
	and c                                            ; $4b38: $a1
	ld c, e                                          ; $4b39: $4b
	xor c                                            ; $4b3a: $a9
	ld [$a922], a                                    ; $4b3b: $ea $22 $a9
	ldh a, [$64]                                     ; $4b3e: $f0 $64
	ld b, l                                          ; $4b40: $45
	and b                                            ; $4b41: $a0
	cpl                                              ; $4b42: $2f
	jp hl                                            ; $4b43: $e9


	rst GetHLinHL                                          ; $4b44: $cf
	add hl, bc                                       ; $4b45: $09
	ldh a, [$64]                                     ; $4b46: $f0 $64
	ld b, l                                          ; $4b48: $45
	xor b                                            ; $4b49: $a8
	ld a, $80                                        ; $4b4a: $3e $80
	ld d, h                                          ; $4b4c: $54
	jr c, @-$0e                                      ; $4b4d: $38 $f0

	xor e                                            ; $4b4f: $ab
	ld c, e                                          ; $4b50: $4b
	ldh a, [$64]                                     ; $4b51: $f0 $64
	jr c, jr_08f_4af5                                ; $4b53: $38 $a0

	cpl                                              ; $4b55: $2f
	ld b, e                                          ; $4b56: $43
	ld [$a8b6], a                                    ; $4b57: $ea $b6 $a8

jr_08f_4b5a:
	ld d, h                                          ; $4b5a: $54
	ld b, d                                          ; $4b5b: $42
	ld c, c                                          ; $4b5c: $49
	pop af                                           ; $4b5d: $f1
	dec [hl]                                         ; $4b5e: $35
	ld d, a                                          ; $4b5f: $57
	and b                                            ; $4b60: $a0
	ld b, b                                          ; $4b61: $40
	ld d, h                                          ; $4b62: $54
	ld d, d                                          ; $4b63: $52
	ld c, d                                          ; $4b64: $4a
	add d                                            ; $4b65: $82
	ld h, e                                          ; $4b66: $63
	ld c, l                                          ; $4b67: $4d
	dec a                                            ; $4b68: $3d
	ld d, b                                          ; $4b69: $50
	xor h                                            ; $4b6a: $ac
	db $eb                                           ; $4b6b: $eb
	inc [hl]                                         ; $4b6c: $34
	ld h, e                                          ; $4b6d: $63
	ld c, h                                          ; $4b6e: $4c
	and b                                            ; $4b6f: $a0
	cpl                                              ; $4b70: $2f
	jp hl                                            ; $4b71: $e9


	ret nc                                           ; $4b72: $d0

	add hl, bc                                       ; $4b73: $09
	sub c                                            ; $4b74: $91
	ldh a, [$59]                                     ; $4b75: $f0 $59
	ld b, l                                          ; $4b77: $45
	xor b                                            ; $4b78: $a8
	sub c                                            ; $4b79: $91
	dec a                                            ; $4b7a: $3d
	ld d, a                                          ; $4b7b: $57
	sbc [hl]                                         ; $4b7c: $9e
	db $ec                                           ; $4b7d: $ec
	ret c                                            ; $4b7e: $d8

	and b                                            ; $4b7f: $a0
	cpl                                              ; $4b80: $2f
	ld b, e                                          ; $4b81: $43
	rst JumpTable                                          ; $4b82: $c7
	ld b, h                                          ; $4b83: $44
	ld c, h                                          ; $4b84: $4c
	xor l                                            ; $4b85: $ad
	ret                                              ; $4b86: $c9


	inc [hl]                                         ; $4b87: $34
	db $eb                                           ; $4b88: $eb
	xor d                                            ; $4b89: $aa
	ld c, b                                          ; $4b8a: $48
	and b                                            ; $4b8b: $a0
	cpl                                              ; $4b8c: $2f
	add sp, $51                                      ; $4b8d: $e8 $51
	add hl, bc                                       ; $4b8f: $09
	ld e, d                                          ; $4b90: $5a
	ld d, h                                          ; $4b91: $54
	ld b, a                                          ; $4b92: $47
	ld h, a                                          ; $4b93: $67
	ld d, l                                          ; $4b94: $55
	ld b, d                                          ; $4b95: $42
	inc a                                            ; $4b96: $3c
	ld a, $50                                        ; $4b97: $3e $50
	and b                                            ; $4b99: $a0
	cpl                                              ; $4b9a: $2f
	add sp, $0d                                      ; $4b9b: $e8 $0d
	add hl, bc                                       ; $4b9d: $09
	cpl                                              ; $4b9e: $2f
	add sp, $2b                                      ; $4b9f: $e8 $2b
	add hl, bc                                       ; $4ba1: $09
	cpl                                              ; $4ba2: $2f
	add sp, $52                                      ; $4ba3: $e8 $52
	add hl, bc                                       ; $4ba5: $09
	cpl                                              ; $4ba6: $2f
	add sp, -$76                                     ; $4ba7: $e8 $8a
	add hl, bc                                       ; $4ba9: $09
	cpl                                              ; $4baa: $2f
	jp hl                                            ; $4bab: $e9


	cp c                                             ; $4bac: $b9
	add hl, bc                                       ; $4bad: $09
	db $ed                                           ; $4bae: $ed
	xor a                                            ; $4baf: $af
	db $ec                                           ; $4bb0: $ec
	dec bc                                           ; $4bb1: $0b
	xor b                                            ; $4bb2: $a8
	add b                                            ; $4bb3: $80
	ld e, h                                          ; $4bb4: $5c
	ld b, [hl]                                       ; $4bb5: $46
	dec sp                                           ; $4bb6: $3b
	ccf                                              ; $4bb7: $3f
	rst SubAFromDE                                          ; $4bb8: $df
	ld h, e                                          ; $4bb9: $63
	and b                                            ; $4bba: $a0
	ld h, h                                          ; $4bbb: $64
	inc [hl]                                         ; $4bbc: $34
	ldh a, [$ce]                                     ; $4bbd: $f0 $ce
	ld h, e                                          ; $4bbf: $63
	dec sp                                           ; $4bc0: $3b
	ldh [$a0], a                                     ; $4bc1: $e0 $a0
	cpl                                              ; $4bc3: $2f
	add sp, $63                                      ; $4bc4: $e8 $63
	add hl, bc                                       ; $4bc6: $09
	rst JumpTable                                          ; $4bc7: $c7
	ld c, h                                          ; $4bc8: $4c

jr_08f_4bc9:
	xor b                                            ; $4bc9: $a8
	db $ec                                           ; $4bca: $ec
	sub $4c                                          ; $4bcb: $d6 $4c
	and b                                            ; $4bcd: $a0
	cpl                                              ; $4bce: $2f
	jp hl                                            ; $4bcf: $e9


	ld h, b                                          ; $4bd0: $60
	and c                                            ; $4bd1: $a1
	ld b, b                                          ; $4bd2: $40
	inc [hl]                                         ; $4bd3: $34
	ld b, b                                          ; $4bd4: $40
	ld b, c                                          ; $4bd5: $41
	ld a, [hl-]                                      ; $4bd6: $3a
	pop af                                           ; $4bd7: $f1
	dec bc                                           ; $4bd8: $0b
	inc de                                           ; $4bd9: $13
	ld a, [hl-]                                      ; $4bda: $3a
	jr c, jr_08f_4bc9                                ; $4bdb: $38 $ec

	ret c                                            ; $4bdd: $d8

	and b                                            ; $4bde: $a0
	cpl                                              ; $4bdf: $2f
	ld b, [hl]                                       ; $4be0: $46
	ld b, c                                          ; $4be1: $41
	ld a, [hl-]                                      ; $4be2: $3a
	ld b, d                                          ; $4be3: $42
	db $eb                                           ; $4be4: $eb
	add b                                            ; $4be5: $80
	ld b, h                                          ; $4be6: $44
	ld b, l                                          ; $4be7: $45
	ld c, h                                          ; $4be8: $4c
	and c                                            ; $4be9: $a1
	ld b, b                                          ; $4bea: $40
	inc [hl]                                         ; $4beb: $34
	db $ec                                           ; $4bec: $ec
	inc e                                            ; $4bed: $1c
	xor b                                            ; $4bee: $a8
	db $eb                                           ; $4bef: $eb
	add b                                            ; $4bf0: $80
	ld b, l                                          ; $4bf1: $45
	ld c, h                                          ; $4bf2: $4c
	xor b                                            ; $4bf3: $a8
	ldh a, [$08]                                     ; $4bf4: $f0 $08
	ld e, c                                          ; $4bf6: $59
	ldh a, [$08]                                     ; $4bf7: $f0 $08
	ldh a, [$08]                                     ; $4bf9: $f0 $08
	ldh a, [$08]                                     ; $4bfb: $f0 $08
	ld c, b                                          ; $4bfd: $48
	and b                                            ; $4bfe: $a0
	db $ed                                           ; $4bff: $ed
	jr nz, jr_08f_4c55                               ; $4c00: $20 $53

	inc de                                           ; $4c02: $13
	ldh a, [c]                                       ; $4c03: $f2
	ld d, [hl]                                       ; $4c04: $56
	ld c, l                                          ; $4c05: $4d
	ld h, c                                          ; $4c06: $61
	ld d, [hl]                                       ; $4c07: $56
	dec sp                                           ; $4c08: $3b
	dec a                                            ; $4c09: $3d
	db $ec                                           ; $4c0a: $ec
	ret c                                            ; $4c0b: $d8

	and b                                            ; $4c0c: $a0
	cpl                                              ; $4c0d: $2f
	db $ed                                           ; $4c0e: $ed
	add hl, sp                                       ; $4c0f: $39
	dec [hl]                                         ; $4c10: $35
	ld h, h                                          ; $4c11: $64
	ld h, e                                          ; $4c12: $63
	ldh a, [rKEY1]                                   ; $4c13: $f0 $4d
	ld b, a                                          ; $4c15: $47
	ld l, e                                          ; $4c16: $6b
	ld c, d                                          ; $4c17: $4a
	ld c, a                                          ; $4c18: $4f
	ld d, c                                          ; $4c19: $51
	ld c, [hl]                                       ; $4c1a: $4e
	ld b, l                                          ; $4c1b: $45
	add hl, bc                                       ; $4c1c: $09
	ld d, d                                          ; $4c1d: $52
	ld b, [hl]                                       ; $4c1e: $46
	ldh a, [c]                                       ; $4c1f: $f2
	ld a, b                                          ; $4c20: $78
	ld a, $3f                                        ; $4c21: $3e $3f
	rst SubAFromDE                                          ; $4c23: $df
	ld h, e                                          ; $4c24: $63
	xor b                                            ; $4c25: $a8
	ld d, h                                          ; $4c26: $54
	ld b, d                                          ; $4c27: $42
	db $fc                                           ; $4c28: $fc
	ld sp, $4b4a                                     ; $4c29: $31 $4a $4b
	xor h                                            ; $4c2c: $ac
	ld l, a                                          ; $4c2d: $6f
	ld b, d                                          ; $4c2e: $42
	inc a                                            ; $4c2f: $3c
	ld b, c                                          ; $4c30: $41
	di                                               ; $4c31: $f3
	ld e, a                                          ; $4c32: $5f
	ld e, h                                          ; $4c33: $5c
	ld a, [hl-]                                      ; $4c34: $3a
	adc d                                            ; $4c35: $8a
	ld a, $58                                        ; $4c36: $3e $58
	ld c, e                                          ; $4c38: $4b
	inc de                                           ; $4c39: $13
	ldh a, [$5d]                                     ; $4c3a: $f0 $5d
	ld h, e                                          ; $4c3c: $63
	ld d, a                                          ; $4c3d: $57
	ld d, d                                          ; $4c3e: $52
	ld a, c                                          ; $4c3f: $79
	ld b, c                                          ; $4c40: $41
	ld c, a                                          ; $4c41: $4f
	ld b, d                                          ; $4c42: $42
	and b                                            ; $4c43: $a0
	cpl                                              ; $4c44: $2f
	ld b, b                                          ; $4c45: $40
	ld b, c                                          ; $4c46: $41
	ld a, [hl-]                                      ; $4c47: $3a
	ld b, d                                          ; $4c48: $42
	ld a, a                                          ; $4c49: $7f
	ld b, a                                          ; $4c4a: $47
	ld d, c                                          ; $4c4b: $51
	ld c, [hl]                                       ; $4c4c: $4e
	ld a, [hl-]                                      ; $4c4d: $3a
	ld b, l                                          ; $4c4e: $45
	add hl, bc                                       ; $4c4f: $09
	ld l, a                                          ; $4c50: $6f
	ld b, d                                          ; $4c51: $42
	inc a                                            ; $4c52: $3c
	ld b, c                                          ; $4c53: $41
	di                                               ; $4c54: $f3

jr_08f_4c55:
	ld e, a                                          ; $4c55: $5f
	ld e, h                                          ; $4c56: $5c
	ld a, [hl-]                                      ; $4c57: $3a

jr_08f_4c58:
	inc de                                           ; $4c58: $13
	adc d                                            ; $4c59: $8a
	ld a, $58                                        ; $4c5a: $3e $58
	ld d, e                                          ; $4c5c: $53
	ld c, b                                          ; $4c5d: $48
	dec [hl]                                         ; $4c5e: $35
	ldh a, [c]                                       ; $4c5f: $f2
	ld a, b                                          ; $4c60: $78
	ld a, c                                          ; $4c61: $79
	ld d, d                                          ; $4c62: $52
	ld a, c                                          ; $4c63: $79
	ld b, c                                          ; $4c64: $41
	ld h, e                                          ; $4c65: $63
	and b                                            ; $4c66: $a0
	cpl                                              ; $4c67: $2f
	ld d, c                                          ; $4c68: $51
	ld [hl], b                                       ; $4c69: $70
	jr c, jr_08f_4c58                                ; $4c6a: $38 $ec

	sub d                                            ; $4c6c: $92
	ld b, h                                          ; $4c6d: $44
	dec sp                                           ; $4c6e: $3b
	dec a                                            ; $4c6f: $3d
	ld c, a                                          ; $4c70: $4f
	ld b, c                                          ; $4c71: $41
	ld c, h                                          ; $4c72: $4c
	add hl, bc                                       ; $4c73: $09
	call c, $eda8                                    ; $4c74: $dc $a8 $ed
	xor a                                            ; $4c77: $af
	ld b, [hl]                                       ; $4c78: $46
	ld d, a                                          ; $4c79: $57
	ld d, d                                          ; $4c7a: $52
	ld a, c                                          ; $4c7b: $79
	ld b, c                                          ; $4c7c: $41
	ld h, e                                          ; $4c7d: $63
	ld c, h                                          ; $4c7e: $4c
	and b                                            ; $4c7f: $a0
	ld d, h                                          ; $4c80: $54
	ld b, c                                          ; $4c81: $41
	ld a, [hl-]                                      ; $4c82: $3a
	ld b, d                                          ; $4c83: $42
	xor h                                            ; $4c84: $ac
	db $ed                                           ; $4c85: $ed
	ld h, a                                          ; $4c86: $67
	ld b, d                                          ; $4c87: $42
	ld [hl], d                                       ; $4c88: $72
	ld c, [hl]                                       ; $4c89: $4e
	ld c, a                                          ; $4c8a: $4f
	ld b, d                                          ; $4c8b: $42
	ld b, l                                          ; $4c8c: $45
	xor b                                            ; $4c8d: $a8
	pop af                                           ; $4c8e: $f1
	ld a, [de]                                       ; $4c8f: $1a
	pop af                                           ; $4c90: $f1
	inc c                                            ; $4c91: $0c
	ld b, a                                          ; $4c92: $47
	sub [hl]                                         ; $4c93: $96
	ld d, b                                          ; $4c94: $50
	ld a, [hl-]                                      ; $4c95: $3a
	jr c, jr_08f_4cfb                                ; $4c96: $38 $63

	and b                                            ; $4c98: $a0
	cpl                                              ; $4c99: $2f
	ld e, e                                          ; $4c9a: $5b
	ld d, [hl]                                       ; $4c9b: $56
	inc [hl]                                         ; $4c9c: $34
	pop af                                           ; $4c9d: $f1
	jr nc, jr_08f_4d11                               ; $4c9e: $30 $71

	ld b, l                                          ; $4ca0: $45
	add hl, sp                                       ; $4ca1: $39
	add hl, bc                                       ; $4ca2: $09
	call c, Call_08f_6ea8                            ; $4ca3: $dc $a8 $6e
	ld [hl], c                                       ; $4ca6: $71
	ld d, d                                          ; $4ca7: $52
	ld a, $66                                        ; $4ca8: $3e $66
	add hl, sp                                       ; $4caa: $39
	and b                                            ; $4cab: $a0
	cpl                                              ; $4cac: $2f
	pop af                                           ; $4cad: $f1
	ld [hl], l                                       ; $4cae: $75
	jr c, jr_08f_4cf2                                ; $4caf: $38 $41

	ld c, d                                          ; $4cb1: $4a
	ld a, $66                                        ; $4cb2: $3e $66
	add hl, sp                                       ; $4cb4: $39
	add hl, bc                                       ; $4cb5: $09
	ld b, b                                          ; $4cb6: $40
	inc [hl]                                         ; $4cb7: $34
	ld b, b                                          ; $4cb8: $40
	ld b, c                                          ; $4cb9: $41
	ld a, [hl-]                                      ; $4cba: $3a
	pop af                                           ; $4cbb: $f1
	dec bc                                           ; $4cbc: $0b
	ld a, [hl-]                                      ; $4cbd: $3a
	jr c, jr_08f_4cd3                                ; $4cbe: $38 $13

	db $ec                                           ; $4cc0: $ec
	ret c                                            ; $4cc1: $d8

	dec [hl]                                         ; $4cc2: $35
	ret nc                                           ; $4cc3: $d0

	inc [hl]                                         ; $4cc4: $34
	sub [hl]                                         ; $4cc5: $96
	ld c, [hl]                                       ; $4cc6: $4e
	ld h, e                                          ; $4cc7: $63
	ld b, l                                          ; $4cc8: $45
	and b                                            ; $4cc9: $a0
	ld b, b                                          ; $4cca: $40
	ld b, c                                          ; $4ccb: $41
	ld a, [hl-]                                      ; $4ccc: $3a
	sbc d                                            ; $4ccd: $9a
	add d                                            ; $4cce: $82
	dec sp                                           ; $4ccf: $3b
	ccf                                              ; $4cd0: $3f
	ld c, a                                          ; $4cd1: $4f
	inc de                                           ; $4cd2: $13

jr_08f_4cd3:
	ldh a, [rAUD1LOW]                                ; $4cd3: $f0 $13
	ldh a, [$af]                                     ; $4cd5: $f0 $af
	ld c, d                                          ; $4cd7: $4a
	ld d, c                                          ; $4cd8: $51
	ld h, e                                          ; $4cd9: $63
	dec [hl]                                         ; $4cda: $35
	sub [hl]                                         ; $4cdb: $96
	ld d, a                                          ; $4cdc: $57
	ld d, d                                          ; $4cdd: $52
	ld a, c                                          ; $4cde: $79
	ld b, c                                          ; $4cdf: $41
	ld d, h                                          ; $4ce0: $54
	ld c, c                                          ; $4ce1: $49
	ld b, l                                          ; $4ce2: $45
	and b                                            ; $4ce3: $a0
	ld b, b                                          ; $4ce4: $40
	ld b, c                                          ; $4ce5: $41
	ld a, [hl-]                                      ; $4ce6: $3a
	sbc d                                            ; $4ce7: $9a
	add d                                            ; $4ce8: $82
	dec sp                                           ; $4ce9: $3b
	ccf                                              ; $4cea: $3f
	ld c, a                                          ; $4ceb: $4f
	inc de                                           ; $4cec: $13
	ldh a, [rAUD1LOW]                                ; $4ced: $f0 $13
	ldh a, [$af]                                     ; $4cef: $f0 $af
	ld b, l                                          ; $4cf1: $45

jr_08f_4cf2:
	dec [hl]                                         ; $4cf2: $35
	sub [hl]                                         ; $4cf3: $96
	ld d, b                                          ; $4cf4: $50
	ld a, [hl-]                                      ; $4cf5: $3a
	jr c, jr_08f_4d5b                                ; $4cf6: $38 $63

	and b                                            ; $4cf8: $a0
	cpl                                              ; $4cf9: $2f
	db $ed                                           ; $4cfa: $ed

jr_08f_4cfb:
	ld d, e                                          ; $4cfb: $53
	ld b, a                                          ; $4cfc: $47
	pop af                                           ; $4cfd: $f1
	dec h                                            ; $4cfe: $25
	ld a, c                                          ; $4cff: $79
	ld c, [hl]                                       ; $4d00: $4e
	ld b, l                                          ; $4d01: $45
	add hl, bc                                       ; $4d02: $09
	ld b, b                                          ; $4d03: $40
	ld c, l                                          ; $4d04: $4d
	ld e, e                                          ; $4d05: $5b
	ld d, [hl]                                       ; $4d06: $56
	inc [hl]                                         ; $4d07: $34
	pop af                                           ; $4d08: $f1
	jr nc, jr_08f_4d7c                               ; $4d09: $30 $71

	ld d, d                                          ; $4d0b: $52
	ld a, $66                                        ; $4d0c: $3e $66
	add hl, sp                                       ; $4d0e: $39
	and b                                            ; $4d0f: $a0
	ld d, d                                          ; $4d10: $52

jr_08f_4d11:
	dec a                                            ; $4d11: $3d
	inc [hl]                                         ; $4d12: $34
	ld l, a                                          ; $4d13: $6f
	ld h, d                                          ; $4d14: $62
	ldh a, [c]                                       ; $4d15: $f2
	ld bc, $7f39                                     ; $4d16: $01 $39 $7f
	xor c                                            ; $4d19: $a9
	pop af                                           ; $4d1a: $f1
	ld a, [de]                                       ; $4d1b: $1a
	pop af                                           ; $4d1c: $f1
	inc c                                            ; $4d1d: $0c
	ld b, a                                          ; $4d1e: $47
	sub [hl]                                         ; $4d1f: $96
	ld d, b                                          ; $4d20: $50
	ld a, [hl-]                                      ; $4d21: $3a
	jr c, jr_08f_4d87                                ; $4d22: $38 $63

	and b                                            ; $4d24: $a0
	cpl                                              ; $4d25: $2f
	ld b, e                                          ; $4d26: $43
	db $eb                                           ; $4d27: $eb
	inc [hl]                                         ; $4d28: $34
	xor h                                            ; $4d29: $ac
	ld b, [hl]                                       ; $4d2a: $46
	ld e, h                                          ; $4d2b: $5c
	ld d, b                                          ; $4d2c: $50
	ld [hl], c                                       ; $4d2d: $71
	ld c, [hl]                                       ; $4d2e: $4e
	inc a                                            ; $4d2f: $3c
	and b                                            ; $4d30: $a0
	db $ec                                           ; $4d31: $ec
	reti                                             ; $4d32: $d9


	xor h                                            ; $4d33: $ac
	ld d, h                                          ; $4d34: $54
	ld c, l                                          ; $4d35: $4d
	ld c, e                                          ; $4d36: $4b
	db $ed                                           ; $4d37: $ed
	ld h, a                                          ; $4d38: $67
	ld b, d                                          ; $4d39: $42
	ld [hl], d                                       ; $4d3a: $72
	ld c, [hl]                                       ; $4d3b: $4e
	ld c, a                                          ; $4d3c: $4f
	ld b, d                                          ; $4d3d: $42
	ld b, l                                          ; $4d3e: $45
	and b                                            ; $4d3f: $a0
	cpl                                              ; $4d40: $2f
	ld b, e                                          ; $4d41: $43
	ld l, e                                          ; $4d42: $6b
	ld h, d                                          ; $4d43: $62
	ld l, d                                          ; $4d44: $6a
	ld e, b                                          ; $4d45: $58
	ld d, b                                          ; $4d46: $50
	xor l                                            ; $4d47: $ad
	db $ec                                           ; $4d48: $ec
	reti                                             ; $4d49: $d9


	xor h                                            ; $4d4a: $ac
	pop af                                           ; $4d4b: $f1
	ld [hl], l                                       ; $4d4c: $75
	jr c, @+$43                                      ; $4d4d: $38 $41

	ld c, d                                          ; $4d4f: $4a
	ld a, $66                                        ; $4d50: $3e $66
	add hl, sp                                       ; $4d52: $39
	and b                                            ; $4d53: $a0
	ld b, b                                          ; $4d54: $40
	inc [hl]                                         ; $4d55: $34
	ld b, b                                          ; $4d56: $40
	ld b, c                                          ; $4d57: $41
	ld a, [hl-]                                      ; $4d58: $3a
	sbc d                                            ; $4d59: $9a
	xor h                                            ; $4d5a: $ac

jr_08f_4d5b:
	ld b, [hl]                                       ; $4d5b: $46
	ld c, [hl]                                       ; $4d5c: $4e
	ld h, e                                          ; $4d5d: $63
	ld e, l                                          ; $4d5e: $5d
	ld a, [hl-]                                      ; $4d5f: $3a
	jr c, @-$12                                      ; $4d60: $38 $ec

	ret c                                            ; $4d62: $d8

	and b                                            ; $4d63: $a0
	cpl                                              ; $4d64: $2f
	ld b, e                                          ; $4d65: $43
	ld b, h                                          ; $4d66: $44
	dec sp                                           ; $4d67: $3b
	dec a                                            ; $4d68: $3d
	ld d, b                                          ; $4d69: $50
	inc [hl]                                         ; $4d6a: $34
	db $ec                                           ; $4d6b: $ec
	ld b, h                                          ; $4d6c: $44
	and b                                            ; $4d6d: $a0
	ret nc                                           ; $4d6e: $d0

	and b                                            ; $4d6f: $a0
	xor $10                                          ; $4d70: $ee $10
	and b                                            ; $4d72: $a0
	cpl                                              ; $4d73: $2f
	ld b, e                                          ; $4d74: $43
	db $ed                                           ; $4d75: $ed
	ld d, e                                          ; $4d76: $53
	xor b                                            ; $4d77: $a8
	db $eb                                           ; $4d78: $eb
	rst FarCall                                          ; $4d79: $f7
	and c                                            ; $4d7a: $a1
	ld a, [hl-]                                      ; $4d7b: $3a

jr_08f_4d7c:
	inc [hl]                                         ; $4d7c: $34
	ld l, e                                          ; $4d7d: $6b
	ld c, d                                          ; $4d7e: $4a
	ld c, a                                          ; $4d7f: $4f
	ld a, [hl-]                                      ; $4d80: $3a
	jr c, jr_08f_4de6                                ; $4d81: $38 $63

	and b                                            ; $4d83: $a0
	cpl                                              ; $4d84: $2f
	ld b, e                                          ; $4d85: $43
	adc b                                            ; $4d86: $88

jr_08f_4d87:
	sub c                                            ; $4d87: $91
	ld c, e                                          ; $4d88: $4b
	xor h                                            ; $4d89: $ac
	pop af                                           ; $4d8a: $f1
	ld [hl], l                                       ; $4d8b: $75
	jr c, jr_08f_4dcf                                ; $4d8c: $38 $41

	ld c, d                                          ; $4d8e: $4a
	ld a, $66                                        ; $4d8f: $3e $66
	add hl, sp                                       ; $4d91: $39
	and b                                            ; $4d92: $a0
	ld d, h                                          ; $4d93: $54
	inc [hl]                                         ; $4d94: $34
	db $ed                                           ; $4d95: $ed
	ld h, a                                          ; $4d96: $67
	ld e, e                                          ; $4d97: $5b
	ld d, [hl]                                       ; $4d98: $56
	inc de                                           ; $4d99: $13
	ld b, [hl]                                       ; $4d9a: $46
	ld c, [hl]                                       ; $4d9b: $4e
	ld d, d                                          ; $4d9c: $52
	jr c, jr_08f_4ddd                                ; $4d9d: $38 $3e

	ld c, b                                          ; $4d9f: $48
	and b                                            ; $4da0: $a0
	cpl                                              ; $4da1: $2f
	ld h, $53                                        ; $4da2: $26 $53
	ld e, b                                          ; $4da4: $58
	ld d, e                                          ; $4da5: $53
	ld e, b                                          ; $4da6: $58
	dec sp                                           ; $4da7: $3b
	dec h                                            ; $4da8: $25
	add hl, bc                                       ; $4da9: $09
	ld e, h                                          ; $4daa: $5c
	ld d, [hl]                                       ; $4dab: $56
	ld e, c                                          ; $4dac: $59
	dec sp                                           ; $4dad: $3b
	and d                                            ; $4dae: $a2
	cpl                                              ; $4daf: $2f
	ld b, e                                          ; $4db0: $43
	ldh a, [rKEY1]                                   ; $4db1: $f0 $4d
	inc [hl]                                         ; $4db3: $34
	db $ec                                           ; $4db4: $ec
	ld de, $3d3e                                     ; $4db5: $11 $3e $3d
	ld [hl], h                                       ; $4db8: $74
	and b                                            ; $4db9: $a0
	ld l, a                                          ; $4dba: $6f
	inc [hl]                                         ; $4dbb: $34
	ld c, a                                          ; $4dbc: $4f
	add hl, sp                                       ; $4dbd: $39
	jr c, jr_08f_4e2e                                ; $4dbe: $38 $6e

	xor b                                            ; $4dc0: $a8
	ld d, h                                          ; $4dc1: $54
	ld d, h                                          ; $4dc2: $54
	inc a                                            ; $4dc3: $3c
	ld d, b                                          ; $4dc4: $50
	sub h                                            ; $4dc5: $94
	ld a, $3f                                        ; $4dc6: $3e $3f
	and b                                            ; $4dc8: $a0
	cpl                                              ; $4dc9: $2f
	ld b, e                                          ; $4dca: $43
	inc a                                            ; $4dcb: $3c
	inc [hl]                                         ; $4dcc: $34
	db $ed                                           ; $4dcd: $ed
	ld d, e                                          ; $4dce: $53

jr_08f_4dcf:
	ld c, b                                          ; $4dcf: $48
	and b                                            ; $4dd0: $a0
	cpl                                              ; $4dd1: $2f
	ld b, e                                          ; $4dd2: $43
	db $ec                                           ; $4dd3: $ec
	reti                                             ; $4dd4: $d9


	pop af                                           ; $4dd5: $f1
	ld [hl], l                                       ; $4dd6: $75
	inc a                                            ; $4dd7: $3c
	dec sp                                           ; $4dd8: $3b
	dec a                                            ; $4dd9: $3d
	ld b, c                                          ; $4dda: $41
	ld b, h                                          ; $4ddb: $44
	xor b                                            ; $4ddc: $a8

jr_08f_4ddd:
	db $ed                                           ; $4ddd: $ed
	ld d, e                                          ; $4dde: $53
	and b                                            ; $4ddf: $a0
	cpl                                              ; $4de0: $2f
	ld b, e                                          ; $4de1: $43
	ld b, b                                          ; $4de2: $40
	ld b, c                                          ; $4de3: $41
	ld a, [hl-]                                      ; $4de4: $3a
	ld b, a                                          ; $4de5: $47

jr_08f_4de6:
	inc de                                           ; $4de6: $13
	pop af                                           ; $4de7: $f1
	add c                                            ; $4de8: $81
	ld h, c                                          ; $4de9: $61
	pop af                                           ; $4dea: $f1
	adc c                                            ; $4deb: $89
	ld d, d                                          ; $4dec: $52
	ld a, [hl-]                                      ; $4ded: $3a
	ld d, l                                          ; $4dee: $55
	ccf                                              ; $4def: $3f
	ld c, a                                          ; $4df0: $4f
	xor b                                            ; $4df1: $a8
	ldh a, [$98]                                     ; $4df2: $f0 $98
	ld b, a                                          ; $4df4: $47
	db $ed                                           ; $4df5: $ed
	ld b, e                                          ; $4df6: $43
	db $ed                                           ; $4df7: $ed
	ld l, b                                          ; $4df8: $68
	ld a, [hl-]                                      ; $4df9: $3a
	ld c, a                                          ; $4dfa: $4f
	ld b, d                                          ; $4dfb: $42

jr_08f_4dfc:
	sbc l                                            ; $4dfc: $9d
	ld d, b                                          ; $4dfd: $50
	jr c, jr_08f_4e13                                ; $4dfe: $38 $13

	ld b, [hl]                                       ; $4e00: $46
	ld c, [hl]                                       ; $4e01: $4e
	ld b, c                                          ; $4e02: $41
	ld b, h                                          ; $4e03: $44
	inc a                                            ; $4e04: $3c
	ld d, b                                          ; $4e05: $50
	and b                                            ; $4e06: $a0
	ld b, b                                          ; $4e07: $40
	inc [hl]                                         ; $4e08: $34
	ld b, b                                          ; $4e09: $40
	ld c, l                                          ; $4e0a: $4d
	ld c, e                                          ; $4e0b: $4b
	ld b, b                                          ; $4e0c: $40
	add hl, sp                                       ; $4e0d: $39
	ld b, h                                          ; $4e0e: $44
	ld e, l                                          ; $4e0f: $5d
	ld e, d                                          ; $4e10: $5a
	xor l                                            ; $4e11: $ad
	ld d, h                                          ; $4e12: $54

jr_08f_4e13:
	ld b, d                                          ; $4e13: $42
	ldh a, [rAUD1HIGH]                               ; $4e14: $f0 $14
	ld b, a                                          ; $4e16: $47
	ld a, [hl-]                                      ; $4e17: $3a
	dec sp                                           ; $4e18: $3b
	ccf                                              ; $4e19: $3f
	xor l                                            ; $4e1a: $ad
	ld h, h                                          ; $4e1b: $64
	pop af                                           ; $4e1c: $f1
	jr nz, jr_08f_4e7c                               ; $4e1d: $20 $5d

	ld d, e                                          ; $4e1f: $53
	pop af                                           ; $4e20: $f1
	ld [hl], l                                       ; $4e21: $75
	jr c, jr_08f_4e5e                                ; $4e22: $38 $3a

	ld b, c                                          ; $4e24: $41
	ccf                                              ; $4e25: $3f
	ld c, b                                          ; $4e26: $48
	and b                                            ; $4e27: $a0
	cpl                                              ; $4e28: $2f
	ld b, e                                          ; $4e29: $43
	ld b, b                                          ; $4e2a: $40
	ld b, c                                          ; $4e2b: $41
	ld a, [hl-]                                      ; $4e2c: $3a
	ld d, h                                          ; $4e2d: $54

jr_08f_4e2e:
	ld c, c                                          ; $4e2e: $49
	ld a, [hl-]                                      ; $4e2f: $3a
	jr c, jr_08f_4e6d                                ; $4e30: $38 $3b

	ccf                                              ; $4e32: $3f
	xor h                                            ; $4e33: $ac
	ld c, d                                          ; $4e34: $4a
	ld c, a                                          ; $4e35: $4f
	inc [hl]                                         ; $4e36: $34
	ld e, b                                          ; $4e37: $58
	dec sp                                           ; $4e38: $3b
	ld e, h                                          ; $4e39: $5c
	ld b, d                                          ; $4e3a: $42
	db $ed                                           ; $4e3b: $ed
	ld d, e                                          ; $4e3c: $53
	xor b                                            ; $4e3d: $a8
	ld d, c                                          ; $4e3e: $51
	ld [hl], b                                       ; $4e3f: $70
	ld d, l                                          ; $4e40: $55
	ldh a, [$8a]                                     ; $4e41: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4e43: $f0 $52
	inc a                                            ; $4e45: $3c
	dec sp                                           ; $4e46: $3b
	dec a                                            ; $4e47: $3d
	ld b, l                                          ; $4e48: $45
	and b                                            ; $4e49: $a0
	ld e, [hl]                                       ; $4e4a: $5e
	dec sp                                           ; $4e4b: $3b
	inc [hl]                                         ; $4e4c: $34
	ldh a, [$8a]                                     ; $4e4d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4e4f: $f0 $52

Jump_08f_4e51:
	jr c, jr_08f_4dfc                                ; $4e51: $38 $a9

	ld b, b                                          ; $4e53: $40
	ld b, c                                          ; $4e54: $41
	ld a, [hl-]                                      ; $4e55: $3a
	sbc d                                            ; $4e56: $9a
	add d                                            ; $4e57: $82
	ld h, e                                          ; $4e58: $63
	ld c, l                                          ; $4e59: $4d
	dec a                                            ; $4e5a: $3d
	ld b, d                                          ; $4e5b: $42
	xor h                                            ; $4e5c: $ac
	ld l, e                                          ; $4e5d: $6b

jr_08f_4e5e:
	ldh a, [rAUD1HIGH]                               ; $4e5e: $f0 $14
	ldh a, [$fe]                                     ; $4e60: $f0 $fe
	ld d, a                                          ; $4e62: $57
	inc a                                            ; $4e63: $3c
	ld a, $50                                        ; $4e64: $3e $50
	ld c, b                                          ; $4e66: $48
	and b                                            ; $4e67: $a0
	cpl                                              ; $4e68: $2f
	ld b, e                                          ; $4e69: $43
	db $eb                                           ; $4e6a: $eb
	sbc [hl]                                         ; $4e6b: $9e
	ld c, h                                          ; $4e6c: $4c

jr_08f_4e6d:
	xor b                                            ; $4e6d: $a8
	adc d                                            ; $4e6e: $8a
	add h                                            ; $4e6f: $84
	ld c, c                                          ; $4e70: $49
	ld c, e                                          ; $4e71: $4b
	add d                                            ; $4e72: $82
	ld h, e                                          ; $4e73: $63
	ld c, l                                          ; $4e74: $4d
	ld c, [hl]                                       ; $4e75: $4e
	inc de                                           ; $4e76: $13
	ld b, h                                          ; $4e77: $44
	ld e, a                                          ; $4e78: $5f
	add hl, sp                                       ; $4e79: $39
	ld e, l                                          ; $4e7a: $5d
	ld e, d                                          ; $4e7b: $5a

jr_08f_4e7c:
	ld c, b                                          ; $4e7c: $48
	and b                                            ; $4e7d: $a0
	ld l, l                                          ; $4e7e: $6d
	add b                                            ; $4e7f: $80
	pop af                                           ; $4e80: $f1
	call z, $63f2                                    ; $4e81: $cc $f2 $63
	ld a, $3f                                        ; $4e84: $3e $3f
	ld c, a                                          ; $4e86: $4f
	jr c, jr_08f_4ec1                                ; $4e87: $38 $38

jr_08f_4e89:
	and c                                            ; $4e89: $a1
	cpl                                              ; $4e8a: $2f
	ld b, e                                          ; $4e8b: $43
	ld l, e                                          ; $4e8c: $6b
	and c                                            ; $4e8d: $a1
	ldh a, [c]                                       ; $4e8e: $f2
	rra                                              ; $4e8f: $1f
	ldh a, [$38]                                     ; $4e90: $f0 $38
	ld c, e                                          ; $4e92: $4b
	ldh a, [$8a]                                     ; $4e93: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4e95: $f0 $52
	jr c, jr_08f_4e89                                ; $4e97: $38 $f0

	rla                                              ; $4e99: $17
	ld c, c                                          ; $4e9a: $49
	xor h                                            ; $4e9b: $ac
	adc d                                            ; $4e9c: $8a
	ld a, $38                                        ; $4e9d: $3e $38
	ld c, b                                          ; $4e9f: $48
	and b                                            ; $4ea0: $a0
	db $ec                                           ; $4ea1: $ec
	reti                                             ; $4ea2: $d9


	pop af                                           ; $4ea3: $f1
	jr nc, jr_08f_4f17                               ; $4ea4: $30 $71

	ccf                                              ; $4ea6: $3f
	ld h, h                                          ; $4ea7: $64
	ld d, l                                          ; $4ea8: $55
	ld h, e                                          ; $4ea9: $63
	and b                                            ; $4eaa: $a0
	cpl                                              ; $4eab: $2f
	ld b, e                                          ; $4eac: $43
	ldh a, [$34]                                     ; $4ead: $f0 $34
	ld b, a                                          ; $4eaf: $47
	pop af                                           ; $4eb0: $f1
	jr nc, jr_08f_4f24                               ; $4eb1: $30 $71

	ld a, [hl-]                                      ; $4eb3: $3a
	ld d, l                                          ; $4eb4: $55
	ccf                                              ; $4eb5: $3f
	ld c, a                                          ; $4eb6: $4f
	inc de                                           ; $4eb7: $13
	jr c, jr_08f_4ef2                                ; $4eb8: $38 $38

	ld b, d                                          ; $4eba: $42
	ld b, a                                          ; $4ebb: $47
	ld c, b                                          ; $4ebc: $48
	and b                                            ; $4ebd: $a0
	ld l, d                                          ; $4ebe: $6a
	ld l, b                                          ; $4ebf: $68
	ld b, d                                          ; $4ec0: $42

jr_08f_4ec1:
	sbc d                                            ; $4ec1: $9a
	ld c, e                                          ; $4ec2: $4b
	xor h                                            ; $4ec3: $ac
	ldh a, [hDisp0_SCX]                                     ; $4ec4: $f0 $84
	add h                                            ; $4ec6: $84
	ld b, h                                          ; $4ec7: $44
	ld e, l                                          ; $4ec8: $5d
	ld b, d                                          ; $4ec9: $42
	inc de                                           ; $4eca: $13
	db $ed                                           ; $4ecb: $ed
	add h                                            ; $4ecc: $84
	ld b, a                                          ; $4ecd: $47
	ld a, $3f                                        ; $4ece: $3e $3f
	ld d, l                                          ; $4ed0: $55
	ld b, h                                          ; $4ed1: $44
	ld e, b                                          ; $4ed2: $58
	ld c, [hl]                                       ; $4ed3: $4e
	and c                                            ; $4ed4: $a1
	cpl                                              ; $4ed5: $2f
	ld b, e                                          ; $4ed6: $43
	db $ec                                           ; $4ed7: $ec
	dec l                                            ; $4ed8: $2d
	and b                                            ; $4ed9: $a0
	ld b, [hl]                                       ; $4eda: $46
	ld d, a                                          ; $4edb: $57
	ld d, e                                          ; $4edc: $53
	ld c, c                                          ; $4edd: $49
	add hl, sp                                       ; $4ede: $39
	xor b                                            ; $4edf: $a8
	db $ed                                           ; $4ee0: $ed
	and e                                            ; $4ee1: $a3
	ld d, c                                          ; $4ee2: $51
	ld c, [hl]                                       ; $4ee3: $4e
	ld h, e                                          ; $4ee4: $63
	and b                                            ; $4ee5: $a0
	cpl                                              ; $4ee6: $2f
	ld [hl-], a                                      ; $4ee7: $32
	ld [$34ab], a                                    ; $4ee8: $ea $ab $34
	db $ed                                           ; $4eeb: $ed
	ld d, e                                          ; $4eec: $53
	xor b                                            ; $4eed: $a8
	ld h, h                                          ; $4eee: $64
	pop af                                           ; $4eef: $f1
	jr nz, @+$5f                                     ; $4ef0: $20 $5d

jr_08f_4ef2:
	ld d, e                                          ; $4ef2: $53
	ldh a, [$64]                                     ; $4ef3: $f0 $64
	jr c, jr_08f_4f3b                                ; $4ef5: $38 $44

	dec sp                                           ; $4ef7: $3b
	dec a                                            ; $4ef8: $3d
	ld b, c                                          ; $4ef9: $41
	ld b, h                                          ; $4efa: $44
	xor b                                            ; $4efb: $a8
	ldh a, [$98]                                     ; $4efc: $f0 $98
	ld b, a                                          ; $4efe: $47
	ld c, d                                          ; $4eff: $4a
	ld c, a                                          ; $4f00: $4f
	ldh a, [c]                                       ; $4f01: $f2
	ld e, c                                          ; $4f02: $59
	di                                               ; $4f03: $f3
	sub h                                            ; $4f04: $94
	ld c, e                                          ; $4f05: $4b
	ld b, [hl]                                       ; $4f06: $46
	ld c, [hl]                                       ; $4f07: $4e
	ld a, [hl-]                                      ; $4f08: $3a
	and e                                            ; $4f09: $a3
	ldh a, [$80]                                     ; $4f0a: $f0 $80
	ldh a, [$c5]                                     ; $4f0c: $f0 $c5
	inc [hl]                                         ; $4f0e: $34
	ldh a, [$c9]                                     ; $4f0f: $f0 $c9
	jr c, @+$41                                      ; $4f11: $38 $3f

	ld c, [hl]                                       ; $4f13: $4e
	ld h, e                                          ; $4f14: $63
	ld c, h                                          ; $4f15: $4c
	xor b                                            ; $4f16: $a8

jr_08f_4f17:
	jp hl                                            ; $4f17: $e9


	ld b, h                                          ; $4f18: $44
	and b                                            ; $4f19: $a0
	ldh a, [c]                                       ; $4f1a: $f2
	cp h                                             ; $4f1b: $bc
	ld a, [$44f1]                                    ; $4f1c: $fa $f1 $44
	dec sp                                           ; $4f1f: $3b
	dec a                                            ; $4f20: $3d
	ld e, l                                          ; $4f21: $5d
	ld e, d                                          ; $4f22: $5a
	xor h                                            ; $4f23: $ac

jr_08f_4f24:
	di                                               ; $4f24: $f3
	ld h, l                                          ; $4f25: $65
	pop af                                           ; $4f26: $f1
	ld l, [hl]                                       ; $4f27: $6e
	ld c, e                                          ; $4f28: $4b
	db $ec                                           ; $4f29: $ec
	sub $44                                          ; $4f2a: $d6 $44
	dec sp                                           ; $4f2c: $3b
	dec a                                            ; $4f2d: $3d
	ld h, e                                          ; $4f2e: $63
	and b                                            ; $4f2f: $a0
	cpl                                              ; $4f30: $2f
	db $ed                                           ; $4f31: $ed
	ld d, e                                          ; $4f32: $53
	ld b, d                                          ; $4f33: $42
	ldh a, [$d2]                                     ; $4f34: $f0 $d2
	ld h, d                                          ; $4f36: $62
	ld [hl], d                                       ; $4f37: $72
	ccf                                              ; $4f38: $3f
	dec a                                            ; $4f39: $3d
	inc a                                            ; $4f3a: $3c

jr_08f_4f3b:
	ld d, b                                          ; $4f3b: $50
	ld c, b                                          ; $4f3c: $48
	add hl, bc                                       ; $4f3d: $09
	ld l, a                                          ; $4f3e: $6f
	ld h, d                                          ; $4f3f: $62
	sbc [hl]                                         ; $4f40: $9e
	ld b, a                                          ; $4f41: $47
	ld a, $3d                                        ; $4f42: $3e $3d
	ld d, b                                          ; $4f44: $50
	xor h                                            ; $4f45: $ac
	ld b, b                                          ; $4f46: $40
	ld c, l                                          ; $4f47: $4d
	ld c, a                                          ; $4f48: $4f
	sub c                                            ; $4f49: $91
	ldh a, [$59]                                     ; $4f4a: $f0 $59
	ld c, h                                          ; $4f4c: $4c
	xor b                                            ; $4f4d: $a8
	ldh a, [$08]                                     ; $4f4e: $f0 $08
	ld e, c                                          ; $4f50: $59
	ldh a, [$08]                                     ; $4f51: $f0 $08
	ldh a, [$08]                                     ; $4f53: $f0 $08
	ldh a, [$08]                                     ; $4f55: $f0 $08
	and b                                            ; $4f57: $a0
	cpl                                              ; $4f58: $2f
	jp hl                                            ; $4f59: $e9


	ret nz                                           ; $4f5a: $c0

	add hl, bc                                       ; $4f5b: $09
	ld b, b                                          ; $4f5c: $40
	ld c, l                                          ; $4f5d: $4d
	ld a, [hl-]                                      ; $4f5e: $3a
	ld d, b                                          ; $4f5f: $50
	xor h                                            ; $4f60: $ac
	ld l, a                                          ; $4f61: $6f
	ld d, e                                          ; $4f62: $53
	ldh a, [rAUD3LEVEL]                              ; $4f63: $f0 $1c
	ld h, d                                          ; $4f65: $62
	ldh a, [$f4]                                     ; $4f66: $f0 $f4
	ld d, d                                          ; $4f68: $52
	ld a, $3f                                        ; $4f69: $3e $3f
	inc de                                           ; $4f6b: $13
	ld b, [hl]                                       ; $4f6c: $46
	ldh a, [rSB]                                     ; $4f6d: $f0 $01
	ld d, d                                          ; $4f6f: $52
	ld a, $66                                        ; $4f70: $3e $66
	add hl, sp                                       ; $4f72: $39
	inc a                                            ; $4f73: $3c
	and c                                            ; $4f74: $a1
	cpl                                              ; $4f75: $2f
	add sp, -$6c                                     ; $4f76: $e8 $94
	add hl, bc                                       ; $4f78: $09
	ld d, d                                          ; $4f79: $52
	dec a                                            ; $4f7a: $3d
	inc [hl]                                         ; $4f7b: $34
	ld b, b                                          ; $4f7c: $40
	ld b, d                                          ; $4f7d: $42
	add hl, sp                                       ; $4f7e: $39
	ld h, c                                          ; $4f7f: $61
	xor h                                            ; $4f80: $ac
	ldh a, [rLCDC]                                   ; $4f81: $f0 $40
	dec sp                                           ; $4f83: $3b
	ccf                                              ; $4f84: $3f
	ld b, [hl]                                       ; $4f85: $46
	ldh a, [rSB]                                     ; $4f86: $f0 $01
	ccf                                              ; $4f88: $3f
	ld c, a                                          ; $4f89: $4f
	ret nc                                           ; $4f8a: $d0

	and b                                            ; $4f8b: $a0
	dec a                                            ; $4f8c: $3d
	inc [hl]                                         ; $4f8d: $34
	ld [$13e8], a                                    ; $4f8e: $ea $e8 $13
	db $eb                                           ; $4f91: $eb
	cp c                                             ; $4f92: $b9
	xor h                                            ; $4f93: $ac
	ldh a, [rHDMA4]                                  ; $4f94: $f0 $54
	ld a, $f0                                        ; $4f96: $3e $f0
	ld [hl], c                                       ; $4f98: $71
	inc a                                            ; $4f99: $3c
	dec sp                                           ; $4f9a: $3b
	dec a                                            ; $4f9b: $3d
	ld h, e                                          ; $4f9c: $63
	and b                                            ; $4f9d: $a0
	cpl                                              ; $4f9e: $2f
	db $ed                                           ; $4f9f: $ed
	ld e, [hl]                                       ; $4fa0: $5e
	ld a, a                                          ; $4fa1: $7f
	ldh a, [$9a]                                     ; $4fa2: $f0 $9a
	inc a                                            ; $4fa4: $3c
	ld a, [hl-]                                      ; $4fa5: $3a
	inc a                                            ; $4fa6: $3c
	dec sp                                           ; $4fa7: $3b
	dec a                                            ; $4fa8: $3d
	ld b, l                                          ; $4fa9: $45
	add hl, bc                                       ; $4faa: $09
	ld l, a                                          ; $4fab: $6f
	ld b, a                                          ; $4fac: $47
	inc de                                           ; $4fad: $13
	ld [hl], d                                       ; $4fae: $72
	ld c, c                                          ; $4faf: $49
	ld c, l                                          ; $4fb0: $4d
	ccf                                              ; $4fb1: $3f
	jr c, jr_08f_4ff1                                ; $4fb2: $38 $3d

	inc a                                            ; $4fb4: $3c
	ld d, b                                          ; $4fb5: $50
	inc a                                            ; $4fb6: $3c
	ld a, $50                                        ; $4fb7: $3e $50
	xor c                                            ; $4fb9: $a9
	ld b, b                                          ; $4fba: $40
	ld c, l                                          ; $4fbb: $4d
	ld a, [hl-]                                      ; $4fbc: $3a
	ld d, b                                          ; $4fbd: $50
	inc [hl]                                         ; $4fbe: $34
	ld b, b                                          ; $4fbf: $40
	ld c, l                                          ; $4fc0: $4d
	ld c, a                                          ; $4fc1: $4f
	sub c                                            ; $4fc2: $91
	ldh a, [$59]                                     ; $4fc3: $f0 $59
	ld c, h                                          ; $4fc5: $4c
	xor b                                            ; $4fc6: $a8
	ldh a, [$08]                                     ; $4fc7: $f0 $08
	ld e, c                                          ; $4fc9: $59
	ldh a, [$08]                                     ; $4fca: $f0 $08
	ldh a, [$08]                                     ; $4fcc: $f0 $08
	ldh a, [$08]                                     ; $4fce: $f0 $08
	and b                                            ; $4fd0: $a0
	cpl                                              ; $4fd1: $2f
	di                                               ; $4fd2: $f3
	ld [bc], a                                       ; $4fd3: $02
	pop af                                           ; $4fd4: $f1
	ld [$413a], a                                    ; $4fd5: $ea $3a $41
	db $ec                                           ; $4fd8: $ec
	ret c                                            ; $4fd9: $d8

	and c                                            ; $4fda: $a1
	add hl, sp                                       ; $4fdb: $39
	inc [hl]                                         ; $4fdc: $34
	ld [$a8ce], a                                    ; $4fdd: $ea $ce $a8
	ldh a, [c]                                       ; $4fe0: $f2
	rra                                              ; $4fe1: $1f
	ldh a, [$38]                                     ; $4fe2: $f0 $38
	ld b, a                                          ; $4fe4: $47
	add d                                            ; $4fe5: $82
	ld h, e                                          ; $4fe6: $63
	ld c, l                                          ; $4fe7: $4d
	dec a                                            ; $4fe8: $3d
	ld d, l                                          ; $4fe9: $55
	ld a, [hl-]                                      ; $4fea: $3a
	jr c, jr_08f_5050                                ; $4feb: $38 $63

	and b                                            ; $4fed: $a0
	cpl                                              ; $4fee: $2f
	pop af                                           ; $4fef: $f1
	add c                                            ; $4ff0: $81

jr_08f_4ff1:
	ld h, c                                          ; $4ff1: $61
	dec a                                            ; $4ff2: $3d
	ld d, b                                          ; $4ff3: $50
	pop af                                           ; $4ff4: $f1
	rst AddAOntoHL                                          ; $4ff5: $ef
	ld d, e                                          ; $4ff6: $53
	ld a, [hl-]                                      ; $4ff7: $3a
	jr c, jr_08f_5046                                ; $4ff8: $38 $4c

	add hl, bc                                       ; $4ffa: $09
	ld d, h                                          ; $4ffb: $54
	ld b, c                                          ; $4ffc: $41
	ld a, [hl-]                                      ; $4ffd: $3a
	ld d, h                                          ; $4ffe: $54
	ld c, c                                          ; $4fff: $49
	ld c, d                                          ; $5000: $4a
	xor h                                            ; $5001: $ac
	ld l, a                                          ; $5002: $6f
	ld h, d                                          ; $5003: $62
	ldh a, [rHDMA5]                                  ; $5004: $f0 $55
	dec sp                                           ; $5006: $3b
	dec a                                            ; $5007: $3d
	ld d, b                                          ; $5008: $50
	xor h                                            ; $5009: $ac
	db $ec                                           ; $500a: $ec
	xor b                                            ; $500b: $a8
	ld b, d                                          ; $500c: $42
	db $f4                                           ; $500d: $f4
	ld a, b                                          ; $500e: $78
	ldh a, [rHDMA5]                                  ; $500f: $f0 $55
	ld c, d                                          ; $5011: $4a
	ld d, c                                          ; $5012: $51
	ld h, e                                          ; $5013: $63
	ld c, h                                          ; $5014: $4c
	and b                                            ; $5015: $a0
	ret                                              ; $5016: $c9


	inc [hl]                                         ; $5017: $34
	ldh a, [$71]                                     ; $5018: $f0 $71
	call c, $f1a8                                    ; $501a: $dc $a8 $f1
	ld b, $f1                                        ; $501d: $06 $f1
	ld a, $3e                                        ; $501f: $3e $3e
	dec a                                            ; $5021: $3d
	jr c, @+$65                                      ; $5022: $38 $63

	and b                                            ; $5024: $a0
	cpl                                              ; $5025: $2f
	ld b, e                                          ; $5026: $43
	add a                                            ; $5027: $87
	ldh a, [$5b]                                     ; $5028: $f0 $5b
	ldh a, [$5e]                                     ; $502a: $f0 $5e
	ld b, h                                          ; $502c: $44
	ld b, l                                          ; $502d: $45
	xor b                                            ; $502e: $a8
	ld e, b                                          ; $502f: $58
	ld b, [hl]                                       ; $5030: $46
	inc [hl]                                         ; $5031: $34
	ldh a, [rLCDC]                                   ; $5032: $f0 $40
	ld e, a                                          ; $5034: $5f
	add hl, sp                                       ; $5035: $39
	and b                                            ; $5036: $a0
	ld e, b                                          ; $5037: $58
	inc [hl]                                         ; $5038: $34
	ld e, b                                          ; $5039: $58
	ld d, c                                          ; $503a: $51
	ld d, e                                          ; $503b: $53
	ld b, a                                          ; $503c: $47
	xor h                                            ; $503d: $ac
	db $eb                                           ; $503e: $eb
	db $d3                                           ; $503f: $d3
	ld c, c                                          ; $5040: $49
	add d                                            ; $5041: $82
	add hl, sp                                       ; $5042: $39
	ld b, h                                          ; $5043: $44
	ld e, l                                          ; $5044: $5d
	ld b, d                                          ; $5045: $42

jr_08f_5046:
	inc de                                           ; $5046: $13
	ld d, h                                          ; $5047: $54
	ld c, c                                          ; $5048: $49
	ld c, e                                          ; $5049: $4b
	ld b, [hl]                                       ; $504a: $46
	dec sp                                           ; $504b: $3b
	ldh [$a0], a                                     ; $504c: $e0 $a0
	cpl                                              ; $504e: $2f
	ld b, [hl]                                       ; $504f: $46

jr_08f_5050:
	ld e, c                                          ; $5050: $59
	dec sp                                           ; $5051: $3b
	inc [hl]                                         ; $5052: $34
	ld d, d                                          ; $5053: $52
	ld b, h                                          ; $5054: $44
	ld e, d                                          ; $5055: $5a
	ld e, h                                          ; $5056: $5c
	ld e, d                                          ; $5057: $5a
	ld e, h                                          ; $5058: $5c
	ld a, $3f                                        ; $5059: $3e $3f
	ld c, [hl]                                       ; $505b: $4e
	ld b, l                                          ; $505c: $45
	add hl, bc                                       ; $505d: $09
	ld a, [hl-]                                      ; $505e: $3a
	inc [hl]                                         ; $505f: $34
	pop de                                           ; $5060: $d1
	inc de                                           ; $5061: $13
	ld b, h                                          ; $5062: $44
	dec sp                                           ; $5063: $3b
	dec a                                            ; $5064: $3d
	db $ec                                           ; $5065: $ec
	ret c                                            ; $5066: $d8

	and b                                            ; $5067: $a0
	cpl                                              ; $5068: $2f
	add hl, sp                                       ; $5069: $39
	dec sp                                           ; $506a: $3b
	inc [hl]                                         ; $506b: $34
	db $ed                                           ; $506c: $ed
	ld l, a                                          ; $506d: $6f
	ld h, c                                          ; $506e: $61
	ldh a, [$5c]                                     ; $506f: $f0 $5c
	jr c, jr_08f_50bb                                ; $5071: $38 $48

	add hl, bc                                       ; $5073: $09
	ld l, h                                          ; $5074: $6c
	dec sp                                           ; $5075: $3b
	ld c, c                                          ; $5076: $49
	ld c, a                                          ; $5077: $4f
	ld a, [hl-]                                      ; $5078: $3a
	jr c, jr_08f_50b7                                ; $5079: $38 $3c

	ld d, b                                          ; $507b: $50
	xor h                                            ; $507c: $ac
	push af                                          ; $507d: $f5
	ld b, [hl]                                       ; $507e: $46
	inc a                                            ; $507f: $3c
	ld a, [hl-]                                      ; $5080: $3a
	jr c, jr_08f_50cd                                ; $5081: $38 $4a

	ld b, l                                          ; $5083: $45
	and b                                            ; $5084: $a0
	cpl                                              ; $5085: $2f
	ldh a, [rAUD3LEVEL]                              ; $5086: $f0 $1c
	ld d, e                                          ; $5088: $53
	inc [hl]                                         ; $5089: $34
	di                                               ; $508a: $f3
	ld b, l                                          ; $508b: $45
	dec sp                                           ; $508c: $3b
	ld h, c                                          ; $508d: $61
	ld d, [hl]                                       ; $508e: $56
	dec sp                                           ; $508f: $3b
	dec a                                            ; $5090: $3d
	add hl, bc                                       ; $5091: $09
	ldh a, [rHDMA4]                                  ; $5092: $f0 $54
	ld a, $ea                                        ; $5094: $3e $ea
	ld sp, hl                                        ; $5096: $f9
	and b                                            ; $5097: $a0
	ldh a, [c]                                       ; $5098: $f2
	db $e4                                           ; $5099: $e4
	ldh a, [rKEY1]                                   ; $509a: $f0 $4d
	ld d, c                                          ; $509c: $51
	ldh a, [$cb]                                     ; $509d: $f0 $cb
	ccf                                              ; $509f: $3f
	xor h                                            ; $50a0: $ac
	pop af                                           ; $50a1: $f1
	dec l                                            ; $50a2: $2d
	ld d, e                                          ; $50a3: $53
	ld a, [$4d9e]                                    ; $50a4: $fa $9e $4d
	ccf                                              ; $50a7: $3f
	inc de                                           ; $50a8: $13
	ld a, $52                                        ; $50a9: $3e $52
	jr c, jr_08f_50ed                                ; $50ab: $38 $40

	add hl, sp                                       ; $50ad: $39
	ld b, h                                          ; $50ae: $44
	ld h, e                                          ; $50af: $63
	and b                                            ; $50b0: $a0
	cpl                                              ; $50b1: $2f
	inc a                                            ; $50b2: $3c
	ld d, c                                          ; $50b3: $51
	ld c, l                                          ; $50b4: $4d
	dec a                                            ; $50b5: $3d
	pop af                                           ; $50b6: $f1

jr_08f_50b7:
	dec l                                            ; $50b7: $2d
	ld c, a                                          ; $50b8: $4f
	ldh a, [$0c]                                     ; $50b9: $f0 $0c

jr_08f_50bb:
	ld e, h                                          ; $50bb: $5c
	dec a                                            ; $50bc: $3d
	jr c, jr_08f_50f9                                ; $50bd: $38 $3a

	add hl, bc                                       ; $50bf: $09
	ldh a, [$08]                                     ; $50c0: $f0 $08
	ld e, c                                          ; $50c2: $59
	ldh a, [$08]                                     ; $50c3: $f0 $08

jr_08f_50c5:
	ldh a, [$08]                                     ; $50c5: $f0 $08
	ldh a, [$08]                                     ; $50c7: $f0 $08
	xor b                                            ; $50c9: $a8
	ld b, [hl]                                       ; $50ca: $46
	ld a, [hl-]                                      ; $50cb: $3a
	dec a                                            ; $50cc: $3d

jr_08f_50cd:
	ld b, a                                          ; $50cd: $47
	ld c, e                                          ; $50ce: $4b
	inc [hl]                                         ; $50cf: $34
	ld c, a                                          ; $50d0: $4f
	dec sp                                           ; $50d1: $3b
	dec a                                            ; $50d2: $3d
	jr c, jr_08f_50c5                                ; $50d3: $38 $f0

	inc de                                           ; $50d5: $13
	ld d, l                                          ; $50d6: $55
	ccf                                              ; $50d7: $3f
	ld b, l                                          ; $50d8: $45
	and b                                            ; $50d9: $a0
	cpl                                              ; $50da: $2f
	ldh a, [c]                                       ; $50db: $f2
	db $e4                                           ; $50dc: $e4
	ld a, e                                          ; $50dd: $7b
	ld a, [hl-]                                      ; $50de: $3a
	ld e, h                                          ; $50df: $5c
	ld d, [hl]                                       ; $50e0: $56
	jr c, jr_08f_511b                                ; $50e1: $38 $38

	ld e, e                                          ; $50e3: $5b
	ld d, [hl]                                       ; $50e4: $56
	ld b, c                                          ; $50e5: $41
	add hl, bc                                       ; $50e6: $09
	ld b, b                                          ; $50e7: $40
	ld c, l                                          ; $50e8: $4d
	pop af                                           ; $50e9: $f1
	ld c, e                                          ; $50ea: $4b
	sbc [hl]                                         ; $50eb: $9e
	ld b, a                                          ; $50ec: $47

jr_08f_50ed:
	xor h                                            ; $50ed: $ac
	ldh a, [rLCDC]                                   ; $50ee: $f0 $40
	ld d, b                                          ; $50f0: $50
	ld a, [hl-]                                      ; $50f1: $3a
	ld e, l                                          ; $50f2: $5d
	ld c, l                                          ; $50f3: $4d
	ld a, e                                          ; $50f4: $7b
	jr c, jr_08f_512f                                ; $50f5: $38 $38

	ld b, d                                          ; $50f7: $42
	ld b, l                                          ; $50f8: $45

jr_08f_50f9:
	and b                                            ; $50f9: $a0
	cpl                                              ; $50fa: $2f
	ld d, d                                          ; $50fb: $52
	ld b, h                                          ; $50fc: $44
	ld d, d                                          ; $50fd: $52
	ld b, h                                          ; $50fe: $44
	inc [hl]                                         ; $50ff: $34
	add a                                            ; $5100: $87
	ldh a, [$5b]                                     ; $5101: $f0 $5b
	ldh a, [$5e]                                     ; $5103: $f0 $5e
	db $ec                                           ; $5105: $ec
	ret c                                            ; $5106: $d8

jr_08f_5107:
	and c                                            ; $5107: $a1
	call c, Call_08f_4aa8                            ; $5108: $dc $a8 $4a
	ld c, a                                          ; $510b: $4f
	inc [hl]                                         ; $510c: $34
	ldh a, [rHDMA4]                                  ; $510d: $f0 $54
	ld a, $ac                                        ; $510f: $3e $ac
	ldh a, [c]                                       ; $5111: $f2
	db $e4                                           ; $5112: $e4
	ldh a, [rKEY1]                                   ; $5113: $f0 $4d
	ldh a, [$f3]                                     ; $5115: $f0 $f3
	ld c, l                                          ; $5117: $4d
	dec a                                            ; $5118: $3d
	ld h, e                                          ; $5119: $63
	and b                                            ; $511a: $a0

jr_08f_511b:
	pop de                                           ; $511b: $d1
	sub b                                            ; $511c: $90
	ld a, $71                                        ; $511d: $3e $71
	call c, $96a8                                    ; $511f: $dc $a8 $96
	ld d, a                                          ; $5122: $57
	ld d, d                                          ; $5123: $52
	ld a, $66                                        ; $5124: $3e $66
	add hl, sp                                       ; $5126: $39
	and b                                            ; $5127: $a0
	ld d, h                                          ; $5128: $54
	ld c, l                                          ; $5129: $4d
	inc [hl]                                         ; $512a: $34
	ret                                              ; $512b: $c9


	inc de                                           ; $512c: $13
	ld a, a                                          ; $512d: $7f
	ld b, a                                          ; $512e: $47

jr_08f_512f:
	jr c, jr_08f_516c                                ; $512f: $38 $3b

	dec a                                            ; $5131: $3d
	ld h, e                                          ; $5132: $63
	and b                                            ; $5133: $a0
	cpl                                              ; $5134: $2f
	ld e, b                                          ; $5135: $58
	ld d, c                                          ; $5136: $51
	ld d, e                                          ; $5137: $53
	db $ed                                           ; $5138: $ed
	ld d, e                                          ; $5139: $53
	inc [hl]                                         ; $513a: $34
	ld h, h                                          ; $513b: $64
	ldh a, [rAUD3LEVEL]                              ; $513c: $f0 $1c
	ld d, e                                          ; $513e: $53
	ldh a, [rAUD1ENV]                                ; $513f: $f0 $12
	jr c, jr_08f_514c                                ; $5141: $38 $09

	ld b, l                                          ; $5143: $45
	ld d, l                                          ; $5144: $55
	ldh a, [rTAC]                                    ; $5145: $f0 $07
	inc a                                            ; $5147: $3c
	ld d, b                                          ; $5148: $50
	ld a, [hl-]                                      ; $5149: $3a

Jump_08f_514a:
	jr c, jr_08f_51a9                                ; $514a: $38 $5d

jr_08f_514c:
	ld e, d                                          ; $514c: $5a
	xor h                                            ; $514d: $ac
	db $ed                                           ; $514e: $ed
	ld l, a                                          ; $514f: $6f
	ld h, c                                          ; $5150: $61
	jr c, jr_08f_518b                                ; $5151: $38 $38

	ld h, e                                          ; $5153: $63
	xor b                                            ; $5154: $a8
	ld c, a                                          ; $5155: $4f
	dec sp                                           ; $5156: $3b
	ld c, c                                          ; $5157: $49
	pop af                                           ; $5158: $f1
	db $d3                                           ; $5159: $d3
	ld [hl], c                                       ; $515a: $71
	ld a, [hl-]                                      ; $515b: $3a
	ld e, b                                          ; $515c: $58
	jr c, jr_08f_5107                                ; $515d: $38 $a8

	ldh a, [$08]                                     ; $515f: $f0 $08
	ld e, c                                          ; $5161: $59
	ldh a, [$08]                                     ; $5162: $f0 $08
	ldh a, [$08]                                     ; $5164: $f0 $08
	ldh a, [$08]                                     ; $5166: $f0 $08
	and b                                            ; $5168: $a0
	cpl                                              ; $5169: $2f
	db $eb                                           ; $516a: $eb
	add b                                            ; $516b: $80

jr_08f_516c:
	ld a, [hl-]                                      ; $516c: $3a
	ld b, d                                          ; $516d: $42
	ld b, a                                          ; $516e: $47
	and c                                            ; $516f: $a1
	ld l, a                                          ; $5170: $6f
	ld d, e                                          ; $5171: $53
	ldh a, [c]                                       ; $5172: $f2
	sbc a                                            ; $5173: $9f
	ld [hl], c                                       ; $5174: $71
	ccf                                              ; $5175: $3f
	jr c, jr_08f_51c6                                ; $5176: $38 $4e

	ld b, d                                          ; $5178: $42
	ld b, a                                          ; $5179: $47
	xor h                                            ; $517a: $ac
	db $eb                                           ; $517b: $eb
	add b                                            ; $517c: $80
	ld a, [hl-]                                      ; $517d: $3a
	pop af                                           ; $517e: $f1
	dec bc                                           ; $517f: $0b
	ld a, [hl-]                                      ; $5180: $3a
	jr c, jr_08f_51cd                                ; $5181: $38 $4a

	ld a, $66                                        ; $5183: $3e $66
	add hl, sp                                       ; $5185: $39
	xor b                                            ; $5186: $a8
	ld hl, sp+$26                                    ; $5187: $f8 $26
	ldh a, [c]                                       ; $5189: $f2
	ld [hl], e                                       ; $518a: $73

jr_08f_518b:
	ld a, [hl-]                                      ; $518b: $3a
	ld e, b                                          ; $518c: $58
	jr c, jr_08f_512f                                ; $518d: $38 $a0

	cpl                                              ; $518f: $2f
	pop de                                           ; $5190: $d1
	jr c, jr_08f_51cb                                ; $5191: $38 $38

	ld b, l                                          ; $5193: $45
	ld c, h                                          ; $5194: $4c
	add hl, bc                                       ; $5195: $09
	ld d, h                                          ; $5196: $54
	ld c, l                                          ; $5197: $4d
	ld a, [hl-]                                      ; $5198: $3a
	ld d, b                                          ; $5199: $50
	xor h                                            ; $519a: $ac
	ld d, d                                          ; $519b: $52
	dec a                                            ; $519c: $3d
	sub [hl]                                         ; $519d: $96
	dec sp                                           ; $519e: $3b
	ccf                                              ; $519f: $3f
	ld c, a                                          ; $51a0: $4f
	ret nc                                           ; $51a1: $d0

	and b                                            ; $51a2: $a0
	add h                                            ; $51a3: $84
	ld b, d                                          ; $51a4: $42
	db $ec                                           ; $51a5: $ec
	ld l, b                                          ; $51a6: $68
	xor h                                            ; $51a7: $ac
	db $eb                                           ; $51a8: $eb

jr_08f_51a9:
	or b                                             ; $51a9: $b0
	ld b, d                                          ; $51aa: $42
	ld c, h                                          ; $51ab: $4c
	ld c, b                                          ; $51ac: $48
	and b                                            ; $51ad: $a0
	cpl                                              ; $51ae: $2f
	db $ec                                           ; $51af: $ec
	jr nz, jr_08f_5230                               ; $51b0: $20 $7e

	jr c, jr_08f_51f5                                ; $51b2: $38 $41

	db $ec                                           ; $51b4: $ec
	ret c                                            ; $51b5: $d8

	inc a                                            ; $51b6: $3c
	add hl, bc                                       ; $51b7: $09
	call c, $f1a8                                    ; $51b8: $dc $a8 $f1
	add d                                            ; $51bb: $82
	inc a                                            ; $51bc: $3c
	ld b, a                                          ; $51bd: $47
	inc de                                           ; $51be: $13
	ld b, b                                          ; $51bf: $40
	add hl, sp                                       ; $51c0: $39
	jr c, jr_08f_51fc                                ; $51c1: $38 $39

	ldh a, [$28]                                     ; $51c3: $f0 $28
	ld c, a                                          ; $51c5: $4f

jr_08f_51c6:
	ld b, [hl]                                       ; $51c6: $46
	ld c, [hl]                                       ; $51c7: $4e
	ld h, e                                          ; $51c8: $63
	ld c, h                                          ; $51c9: $4c
	and b                                            ; $51ca: $a0

jr_08f_51cb:
	cpl                                              ; $51cb: $2f
	add hl, sp                                       ; $51cc: $39

jr_08f_51cd:
	dec sp                                           ; $51cd: $3b
	inc [hl]                                         ; $51ce: $34
	di                                               ; $51cf: $f3
	adc $3b                                          ; $51d0: $ce $3b
	ld h, c                                          ; $51d2: $61
	ld d, [hl]                                       ; $51d3: $56
	dec sp                                           ; $51d4: $3b
	dec a                                            ; $51d5: $3d
	add hl, bc                                       ; $51d6: $09
	pop af                                           ; $51d7: $f1
	ldh [c], a                                       ; $51d8: $e2
	ld e, l                                          ; $51d9: $5d
	db $ec                                           ; $51da: $ec
	dec bc                                           ; $51db: $0b
	and b                                            ; $51dc: $a0
	cpl                                              ; $51dd: $2f
	ldh a, [$5d]                                     ; $51de: $f0 $5d
	ld a, [hl-]                                      ; $51e0: $3a
	ldh a, [$78]                                     ; $51e1: $f0 $78
	ldh a, [$f4]                                     ; $51e3: $f0 $f4
	ld b, a                                          ; $51e5: $47
	ld a, [hl-]                                      ; $51e6: $3a
	dec sp                                           ; $51e7: $3b
	dec a                                            ; $51e8: $3d
	and c                                            ; $51e9: $a1
	ldh a, [rHDMA4]                                  ; $51ea: $f0 $54
	ld a, $4c                                        ; $51ec: $3e $4c
	xor b                                            ; $51ee: $a8
	ld c, d                                          ; $51ef: $4a
	ld c, a                                          ; $51f0: $4f
	inc [hl]                                         ; $51f1: $34
	sub b                                            ; $51f2: $90
	ld a, $71                                        ; $51f3: $3e $71

jr_08f_51f5:
	dec a                                            ; $51f5: $3d
	inc a                                            ; $51f6: $3c
	ld d, b                                          ; $51f7: $50
	inc de                                           ; $51f8: $13
	jr c, jr_08f_5233                                ; $51f9: $38 $38

	ld h, e                                          ; $51fb: $63

jr_08f_51fc:
	and b                                            ; $51fc: $a0
	xor $10                                          ; $51fd: $ee $10
	xor b                                            ; $51ff: $a8
	ldh a, [$d2]                                     ; $5200: $f0 $d2
	inc a                                            ; $5202: $3c
	ld d, b                                          ; $5203: $50
	pop af                                           ; $5204: $f1
	scf                                              ; $5205: $37
	ld d, e                                          ; $5206: $53
	sub h                                            ; $5207: $94
	ld c, [hl]                                       ; $5208: $4e
	ld [hl], a                                       ; $5209: $77
	jr c, jr_08f_5251                                ; $520a: $38 $45

	and b                                            ; $520c: $a0
	cpl                                              ; $520d: $2f
	add sp, $1b                                      ; $520e: $e8 $1b
	ld c, b                                          ; $5210: $48
	add hl, bc                                       ; $5211: $09
	xor $10                                          ; $5212: $ee $10
	xor b                                            ; $5214: $a8
	ld b, b                                          ; $5215: $40
	ld b, c                                          ; $5216: $41
	ld a, [hl-]                                      ; $5217: $3a
	ld d, h                                          ; $5218: $54
	ld c, c                                          ; $5219: $49
	ld c, e                                          ; $521a: $4b
	db $ed                                           ; $521b: $ed
	ld [hl], e                                       ; $521c: $73
	xor h                                            ; $521d: $ac
	ldh a, [rTAC]                                    ; $521e: $f0 $07
	inc a                                            ; $5220: $3c
	dec sp                                           ; $5221: $3b
	ccf                                              ; $5222: $3f
	jr c, jr_08f_5273                                ; $5223: $38 $4e

	ld h, e                                          ; $5225: $63
	and b                                            ; $5226: $a0
	cpl                                              ; $5227: $2f
	add sp, -$5f                                     ; $5228: $e8 $a1
	add hl, bc                                       ; $522a: $09
	xor $10                                          ; $522b: $ee $10
	xor b                                            ; $522d: $a8
	ld l, a                                          ; $522e: $6f
	ld h, d                                          ; $522f: $62

jr_08f_5230:
	pop af                                           ; $5230: $f1
	ld [hl-], a                                      ; $5231: $32
	ld d, b                                          ; $5232: $50

jr_08f_5233:
	ld a, c                                          ; $5233: $79
	ld c, [hl]                                       ; $5234: $4e
	add b                                            ; $5235: $80
	ld c, a                                          ; $5236: $4f
	ld d, a                                          ; $5237: $57
	and c                                            ; $5238: $a1
	cpl                                              ; $5239: $2f
	add sp, $36                                      ; $523a: $e8 $36
	ld c, b                                          ; $523c: $48
	add hl, bc                                       ; $523d: $09
	xor $10                                          ; $523e: $ee $10
	xor b                                            ; $5240: $a8
	ld c, a                                          ; $5241: $4f
	add hl, sp                                       ; $5242: $39
	ldh a, [$c7]                                     ; $5243: $f0 $c7
	jr c, jr_08f_52aa                                ; $5245: $38 $63

	ld c, b                                          ; $5247: $48
	and b                                            ; $5248: $a0
	cpl                                              ; $5249: $2f
	ld b, e                                          ; $524a: $43
	ld [$13c4], a                                    ; $524b: $ea $c4 $13
	db $eb                                           ; $524e: $eb
	and l                                            ; $524f: $a5
	dec sp                                           ; $5250: $3b

jr_08f_5251:
	ccf                                              ; $5251: $3f
	xor h                                            ; $5252: $ac
	add a                                            ; $5253: $87
	ldh a, [$5d]                                     ; $5254: $f0 $5d
	ld a, [hl-]                                      ; $5256: $3a
	ld b, c                                          ; $5257: $41
	db $ed                                           ; $5258: $ed
	ld b, e                                          ; $5259: $43
	and b                                            ; $525a: $a0
	xor $10                                          ; $525b: $ee $10
	dec [hl]                                         ; $525d: $35
	rla                                              ; $525e: $17
	ld l, a                                          ; $525f: $6f
	ld c, a                                          ; $5260: $4f
	ld [$13c4], a                                    ; $5261: $ea $c4 $13
	ldh a, [$ac]                                     ; $5264: $f0 $ac
	ccf                                              ; $5266: $3f
	jr c, jr_08f_52a6                                ; $5267: $38 $3d

	jr c, jr_08f_52ce                                ; $5269: $38 $63

	and b                                            ; $526b: $a0
	cpl                                              ; $526c: $2f
	db $eb                                           ; $526d: $eb
	db $f4                                           ; $526e: $f4
	ld [hl], d                                       ; $526f: $72
	dec a                                            ; $5270: $3d
	inc a                                            ; $5271: $3c
	dec sp                                           ; $5272: $3b

jr_08f_5273:
	dec a                                            ; $5273: $3d
	ld b, c                                          ; $5274: $41
	ld b, h                                          ; $5275: $44
	add hl, bc                                       ; $5276: $09
	xor $10                                          ; $5277: $ee $10
	xor b                                            ; $5279: $a8
	ldh a, [rTAC]                                    ; $527a: $f0 $07
	inc a                                            ; $527c: $3c
	dec sp                                           ; $527d: $3b
	dec a                                            ; $527e: $3d
	ld h, e                                          ; $527f: $63
	ld c, b                                          ; $5280: $48
	and b                                            ; $5281: $a0
	cpl                                              ; $5282: $2f
	ld e, [hl]                                       ; $5283: $5e
	dec sp                                           ; $5284: $3b
	dec [hl]                                         ; $5285: $35
	db $d3                                           ; $5286: $d3
	ld [hl], $71                                     ; $5287: $36 $71
	sbc h                                            ; $5289: $9c
	ld d, b                                          ; $528a: $50
	ld a, $38                                        ; $528b: $3e $38
	ld c, h                                          ; $528d: $4c
	add hl, bc                                       ; $528e: $09
	xor $10                                          ; $528f: $ee $10
	xor b                                            ; $5291: $a8
	ld l, a                                          ; $5292: $6f
	ld h, d                                          ; $5293: $62
	pop af                                           ; $5294: $f1
	ld [hl-], a                                      ; $5295: $32
	ld d, b                                          ; $5296: $50
	ld a, c                                          ; $5297: $79
	dec a                                            ; $5298: $3d
	jr c, @+$47                                      ; $5299: $38 $45

	add hl, sp                                       ; $529b: $39
	ld c, h                                          ; $529c: $4c
	and b                                            ; $529d: $a0
	cpl                                              ; $529e: $2f
	ld d, h                                          ; $529f: $54
	ld b, d                                          ; $52a0: $42
	push af                                          ; $52a1: $f5
	ld c, [hl]                                       ; $52a2: $4e
	ld [hl], c                                       ; $52a3: $71
	ldh a, [rTMA]                                    ; $52a4: $f0 $06

jr_08f_52a6:
	ld h, e                                          ; $52a6: $63
	ld a, c                                          ; $52a7: $79
	ld c, e                                          ; $52a8: $4b
	inc [hl]                                         ; $52a9: $34

jr_08f_52aa:
	ld d, c                                          ; $52aa: $51
	ld c, [hl]                                       ; $52ab: $4e
	inc a                                            ; $52ac: $3c
	ld d, b                                          ; $52ad: $50
	ld c, b                                          ; $52ae: $48
	add hl, bc                                       ; $52af: $09
	xor $10                                          ; $52b0: $ee $10
	xor b                                            ; $52b2: $a8
	ldh a, [rAUD1ENV]                                ; $52b3: $f0 $12
	ld d, l                                          ; $52b5: $55
	add b                                            ; $52b6: $80
	ld d, l                                          ; $52b7: $55
	ld h, e                                          ; $52b8: $63
	ld b, l                                          ; $52b9: $45
	and b                                            ; $52ba: $a0
	xor $14                                          ; $52bb: $ee $14
	inc [hl]                                         ; $52bd: $34
	db $ec                                           ; $52be: $ec
	dec e                                            ; $52bf: $1d
	ld h, d                                          ; $52c0: $62
	inc de                                           ; $52c1: $13
	ld l, [hl]                                       ; $52c2: $6e
	dec sp                                           ; $52c3: $3b
	ccf                                              ; $52c4: $3f
	jr c, @+$50                                      ; $52c5: $38 $4e

	db $ec                                           ; $52c7: $ec
	ld [de], a                                       ; $52c8: $12
	and b                                            ; $52c9: $a0
	cpl                                              ; $52ca: $2f
	ld [$acc9], a                                    ; $52cb: $ea $c9 $ac

jr_08f_52ce:
	db $ed                                           ; $52ce: $ed
	ld d, a                                          ; $52cf: $57
	db $ec                                           ; $52d0: $ec
	dec e                                            ; $52d1: $1d
	ld h, d                                          ; $52d2: $62
	inc de                                           ; $52d3: $13
	ld [$a33f], a                                    ; $52d4: $ea $3f $a3
	cpl                                              ; $52d7: $2f
	jp hl                                            ; $52d8: $e9


	ld sp, $ee09                                     ; $52d9: $31 $09 $ee
	inc d                                            ; $52dc: $14
	inc [hl]                                         ; $52dd: $34
	pop de                                           ; $52de: $d1
	ldh a, [$57]                                     ; $52df: $f0 $57
	ldh a, [$ae]                                     ; $52e1: $f0 $ae
	ld c, h                                          ; $52e3: $4c
	xor b                                            ; $52e4: $a8
	ld l, a                                          ; $52e5: $6f
	ld b, a                                          ; $52e6: $47
	ldh a, [rSCY]                                    ; $52e7: $f0 $42
	ld e, b                                          ; $52e9: $58
	ld h, e                                          ; $52ea: $63
	ld a, $38                                        ; $52eb: $3e $38
	ld h, e                                          ; $52ed: $63
	and b                                            ; $52ee: $a0
	ld l, a                                          ; $52ef: $6f
	ld b, d                                          ; $52f0: $42
	pop af                                           ; $52f1: $f1
	ld e, a                                          ; $52f2: $5f
	ld e, h                                          ; $52f3: $5c
	ldh a, [$d9]                                     ; $52f4: $f0 $d9
	ccf                                              ; $52f6: $3f
	ldh a, [c]                                       ; $52f7: $f2
	reti                                             ; $52f8: $d9


	ld b, a                                          ; $52f9: $47
	inc de                                           ; $52fa: $13
	ldh a, [c]                                       ; $52fb: $f2
	sbc $3b                                          ; $52fc: $de $3b
	dec a                                            ; $52fe: $3d
	ld d, a                                          ; $52ff: $57
	ld c, h                                          ; $5300: $4c
	and b                                            ; $5301: $a0
	cpl                                              ; $5302: $2f
	ld b, e                                          ; $5303: $43
	rst JumpTable                                          ; $5304: $c7
	ld b, h                                          ; $5305: $44
	ld c, h                                          ; $5306: $4c
	and b                                            ; $5307: $a0
	cpl                                              ; $5308: $2f
	add sp, -$26                                     ; $5309: $e8 $da
	add hl, bc                                       ; $530b: $09
	ld b, b                                          ; $530c: $40

jr_08f_530d:
	ld c, l                                          ; $530d: $4d
	ld e, e                                          ; $530e: $5b
	ld d, [hl]                                       ; $530f: $56
	xor h                                            ; $5310: $ac
	db $ec                                           ; $5311: $ec
	push bc                                          ; $5312: $c5
	inc [hl]                                         ; $5313: $34
	ld [$a0cd], a                                    ; $5314: $ea $cd $a0
	cpl                                              ; $5317: $2f
	ld b, e                                          ; $5318: $43
	ld b, b                                          ; $5319: $40
	add hl, sp                                       ; $531a: $39
	ld b, h                                          ; $531b: $44
	ld c, h                                          ; $531c: $4c
	xor b                                            ; $531d: $a8
	db $eb                                           ; $531e: $eb
	ld d, d                                          ; $531f: $52
	inc a                                            ; $5320: $3c
	and b                                            ; $5321: $a0
	ldh a, [rAUD2LOW]                                ; $5322: $f0 $18
	ldh a, [$dc]                                     ; $5324: $f0 $dc
	ld a, [hl-]                                      ; $5326: $3a
	ld b, c                                          ; $5327: $41
	ccf                                              ; $5328: $3f
	xor h                                            ; $5329: $ac
	ld e, d                                          ; $532a: $5a
	ld d, h                                          ; $532b: $54
	ld d, e                                          ; $532c: $53
	ldh a, [rAUD4ENV]                                ; $532d: $f0 $21
	ldh a, [rAUD4GO]                                 ; $532f: $f0 $23
	jr c, jr_08f_5375                                ; $5331: $38 $42

	inc a                                            ; $5333: $3c
	ld a, $50                                        ; $5334: $3e $50
	and c                                            ; $5336: $a1
	cpl                                              ; $5337: $2f
	db $ed                                           ; $5338: $ed
	ld d, e                                          ; $5339: $53
	ld c, c                                          ; $533a: $49
	xor $06                                          ; $533b: $ee $06
	ld b, h                                          ; $533d: $44
	inc a                                            ; $533e: $3c
	ld d, b                                          ; $533f: $50
	ld c, h                                          ; $5340: $4c
	add hl, bc                                       ; $5341: $09
	ldh a, [$08]                                     ; $5342: $f0 $08
	ld e, c                                          ; $5344: $59
	ldh a, [$08]                                     ; $5345: $f0 $08
	ldh a, [$08]                                     ; $5347: $f0 $08
	ldh a, [$08]                                     ; $5349: $f0 $08
	ldh a, [$08]                                     ; $534b: $f0 $08
	ldh a, [$08]                                     ; $534d: $f0 $08
	xor b                                            ; $534f: $a8
	sub c                                            ; $5350: $91
	ldh a, [$59]                                     ; $5351: $f0 $59
	ld c, h                                          ; $5353: $4c
	and b                                            ; $5354: $a0
	cpl                                              ; $5355: $2f
	ldh a, [rAUD2ENV]                                ; $5356: $f0 $17
	ld b, a                                          ; $5358: $47
	ld c, e                                          ; $5359: $4b
	ld h, e                                          ; $535a: $63
	inc a                                            ; $535b: $3c
	ld d, b                                          ; $535c: $50
	ld a, [hl-]                                      ; $535d: $3a
	jr c, jr_08f_53a5                                ; $535e: $38 $45

	add hl, bc                                       ; $5360: $09
	call c, $f0a8                                    ; $5361: $dc $a8 $f0
	rlca                                             ; $5364: $07
	inc a                                            ; $5365: $3c
	ld d, a                                          ; $5366: $57
	dec a                                            ; $5367: $3d
	ld d, l                                          ; $5368: $55
	ld c, a                                          ; $5369: $4f
	ld a, [hl-]                                      ; $536a: $3a
	jr c, jr_08f_53ca                                ; $536b: $38 $5d

	ld e, d                                          ; $536d: $5a
	and b                                            ; $536e: $a0
	cpl                                              ; $536f: $2f
	ld l, [hl]                                       ; $5370: $6e
	dec sp                                           ; $5371: $3b
	ccf                                              ; $5372: $3f
	ld l, h                                          ; $5373: $6c
	ld c, l                                          ; $5374: $4d

jr_08f_5375:
	ld a, e                                          ; $5375: $7b
	inc [hl]                                         ; $5376: $34
	ldh a, [rTAC]                                    ; $5377: $f0 $07
	inc a                                            ; $5379: $3c
	ld c, [hl]                                       ; $537a: $4e
	ld b, l                                          ; $537b: $45
	add hl, bc                                       ; $537c: $09
	ld b, b                                          ; $537d: $40
	ld b, d                                          ; $537e: $42
	add b                                            ; $537f: $80
	ld c, a                                          ; $5380: $4f
	ld d, a                                          ; $5381: $57
	ld c, e                                          ; $5382: $4b
	ld a, [hl-]                                      ; $5383: $3a
	jr c, jr_08f_53e9                                ; $5384: $38 $63

	and b                                            ; $5386: $a0
	ld l, l                                          ; $5387: $6d
	ldh a, [$65]                                     ; $5388: $f0 $65
	xor h                                            ; $538a: $ac
	jr c, jr_08f_530d                                ; $538b: $38 $80

	ld b, a                                          ; $538d: $47
	ld a, [hl-]                                      ; $538e: $3a
	ld c, l                                          ; $538f: $4d
	ld a, e                                          ; $5390: $7b
	xor h                                            ; $5391: $ac
	ldh a, [$ce]                                     ; $5392: $f0 $ce
	ld h, e                                          ; $5394: $63
	ld c, [hl]                                       ; $5395: $4e
	ld b, d                                          ; $5396: $42
	inc a                                            ; $5397: $3c
	ld a, $50                                        ; $5398: $3e $50
	and c                                            ; $539a: $a1
	cpl                                              ; $539b: $2f
	add sp, -$59                                     ; $539c: $e8 $a7
	add hl, bc                                       ; $539e: $09
	ld b, b                                          ; $539f: $40
	add hl, sp                                       ; $53a0: $39
	xor b                                            ; $53a1: $a8
	ld e, e                                          ; $53a2: $5b
	ld d, [hl]                                       ; $53a3: $56
	ld b, [hl]                                       ; $53a4: $46

jr_08f_53a5:
	ld d, d                                          ; $53a5: $52
	ld b, h                                          ; $53a6: $44
	ld d, d                                          ; $53a7: $52
	ld b, h                                          ; $53a8: $44
	ld a, [hl-]                                      ; $53a9: $3a
	ld b, d                                          ; $53aa: $42
	ld c, h                                          ; $53ab: $4c
	xor b                                            ; $53ac: $a8
	ldh a, [c]                                       ; $53ad: $f2
	cp h                                             ; $53ae: $bc
	ld a, [$44f1]                                    ; $53af: $fa $f1 $44
	ld h, e                                          ; $53b2: $63
	and b                                            ; $53b3: $a0
	cpl                                              ; $53b4: $2f
	ld [$094e], a                                    ; $53b5: $ea $4e $09
	ld b, b                                          ; $53b8: $40
	add hl, sp                                       ; $53b9: $39
	xor b                                            ; $53ba: $a8
	ld a, [hl-]                                      ; $53bb: $3a
	ld d, b                                          ; $53bc: $50
	ldh a, [$80]                                     ; $53bd: $f0 $80
	ldh a, [$c5]                                     ; $53bf: $f0 $c5
	ld b, l                                          ; $53c1: $45
	and b                                            ; $53c2: $a0
	cpl                                              ; $53c3: $2f
	ld e, b                                          ; $53c4: $58
	ld b, [hl]                                       ; $53c5: $46
	ld [hl], $76                                     ; $53c6: $36 $76
	ld c, a                                          ; $53c8: $4f
	db $ec                                           ; $53c9: $ec

jr_08f_53ca:
	dec b                                            ; $53ca: $05
	ld b, c                                          ; $53cb: $41
	ld b, h                                          ; $53cc: $44
	add hl, bc                                       ; $53cd: $09
	db $ec                                           ; $53ce: $ec
	dec b                                            ; $53cf: $05
	ld c, d                                          ; $53d0: $4a
	ld a, b                                          ; $53d1: $78
	dec a                                            ; $53d2: $3d
	ld b, d                                          ; $53d3: $42
	xor c                                            ; $53d4: $a9
	db $eb                                           ; $53d5: $eb
	ld a, d                                          ; $53d6: $7a
	jr c, jr_08f_543c                                ; $53d7: $38 $63

	and b                                            ; $53d9: $a0
	ld d, h                                          ; $53da: $54
	ld b, c                                          ; $53db: $41
	ld a, [hl-]                                      ; $53dc: $3a
	ld b, d                                          ; $53dd: $42
	xor h                                            ; $53de: $ac
	ld e, d                                          ; $53df: $5a
	ld d, h                                          ; $53e0: $54
	ld d, e                                          ; $53e1: $53
	ldh a, [rAUD4ENV]                                ; $53e2: $f0 $21
	ldh a, [rAUD4GO]                                 ; $53e4: $f0 $23
	jr c, jr_08f_542a                                ; $53e6: $38 $42

	inc a                                            ; $53e8: $3c

jr_08f_53e9:
	ld a, $50                                        ; $53e9: $3e $50
	and c                                            ; $53eb: $a1
	ld b, b                                          ; $53ec: $40
	add hl, sp                                       ; $53ed: $39
	jr c, jr_08f_5429                                ; $53ee: $38 $39

	sbc d                                            ; $53f0: $9a
	ld a, [hl-]                                      ; $53f1: $3a
	ld d, b                                          ; $53f2: $50
	xor h                                            ; $53f3: $ac
	di                                               ; $53f4: $f3
	ld a, c                                          ; $53f5: $79
	pop af                                           ; $53f6: $f1
	ld l, e                                          ; $53f7: $6b
	jr c, @+$57                                      ; $53f8: $38 $55

	ld h, e                                          ; $53fa: $63
	xor b                                            ; $53fb: $a8
	ldh a, [$08]                                     ; $53fc: $f0 $08
	ld e, c                                          ; $53fe: $59
	ldh a, [$08]                                     ; $53ff: $f0 $08
	ldh a, [$08]                                     ; $5401: $f0 $08
	ldh a, [$08]                                     ; $5403: $f0 $08
	and b                                            ; $5405: $a0
	cpl                                              ; $5406: $2f
	ld l, [hl]                                       ; $5407: $6e
	dec sp                                           ; $5408: $3b

Call_08f_5409:
	ldh a, [$36]                                     ; $5409: $f0 $36
	di                                               ; $540b: $f3
	cp $f5                                           ; $540c: $fe $f5
	dec b                                            ; $540e: $05
	adc d                                            ; $540f: $8a
	ld b, h                                          ; $5410: $44
	ld c, h                                          ; $5411: $4c
	add hl, bc                                       ; $5412: $09
	di                                               ; $5413: $f3
	cp $f5                                           ; $5414: $fe $f5
	dec b                                            ; $5416: $05
	adc d                                            ; $5417: $8a
	xor c                                            ; $5418: $a9
	adc d                                            ; $5419: $8a
	ld a, $38                                        ; $541a: $3e $38
	ld c, c                                          ; $541c: $49
	jr c, @+$3b                                      ; $541d: $38 $39

	add d                                            ; $541f: $82
	pop af                                           ; $5420: $f1
	adc h                                            ; $5421: $8c
	ld h, d                                          ; $5422: $62
	xor h                                            ; $5423: $ac
	ld b, b                                          ; $5424: $40
	ld b, c                                          ; $5425: $41
	ld a, [hl-]                                      ; $5426: $3a
	ld c, a                                          ; $5427: $4f
	ld b, d                                          ; $5428: $42

jr_08f_5429:
	ld b, a                                          ; $5429: $47

jr_08f_542a:
	inc de                                           ; $542a: $13
	pop af                                           ; $542b: $f1
	sbc l                                            ; $542c: $9d
	ld h, e                                          ; $542d: $63
	ld a, [hl-]                                      ; $542e: $3a
	jr c, @+$4c                                      ; $542f: $38 $4a

	ldh a, [$a3]                                     ; $5431: $f0 $a3
	ld e, b                                          ; $5433: $58
	ld c, [hl]                                       ; $5434: $4e
	and c                                            ; $5435: $a1
	cpl                                              ; $5436: $2f
	ldh a, [$ab]                                     ; $5437: $f0 $ab
	ld b, d                                          ; $5439: $42
	db $ed                                           ; $543a: $ed
	inc d                                            ; $543b: $14

jr_08f_543c:
	ld b, h                                          ; $543c: $44
	ld b, l                                          ; $543d: $45
	add hl, bc                                       ; $543e: $09
	ld b, b                                          ; $543f: $40
	add hl, sp                                       ; $5440: $39
	xor b                                            ; $5441: $a8
	ld l, a                                          ; $5442: $6f
	ld b, a                                          ; $5443: $47
	ld c, e                                          ; $5444: $4b
	ldh a, [rTAC]                                    ; $5445: $f0 $07
	inc a                                            ; $5447: $3c
	ld d, a                                          ; $5448: $57
	ld d, d                                          ; $5449: $52
	ld a, c                                          ; $544a: $79
	ld b, c                                          ; $544b: $41
	ld h, e                                          ; $544c: $63
	and b                                            ; $544d: $a0
	ld [$edd8], a                                    ; $544e: $ea $d8 $ed
	xor h                                            ; $5451: $ac
	ld c, h                                          ; $5452: $4c
	xor b                                            ; $5453: $a8
	ldh a, [c]                                       ; $5454: $f2
	ld a, [bc]                                       ; $5455: $0a
	ld d, e                                          ; $5456: $53
	ldh a, [$78]                                     ; $5457: $f0 $78
	ld e, e                                          ; $5459: $5b
	ld d, b                                          ; $545a: $50
	ld c, l                                          ; $545b: $4d
	ld d, d                                          ; $545c: $52
	ld a, c                                          ; $545d: $79
	ld b, c                                          ; $545e: $41
	ld h, e                                          ; $545f: $63
	and b                                            ; $5460: $a0
	cpl                                              ; $5461: $2f
	ldh a, [$3b]                                     ; $5462: $f0 $3b
	dec sp                                           ; $5464: $3b
	ccf                                              ; $5465: $3f
	ld [hl], b                                       ; $5466: $70
	ld [hl], c                                       ; $5467: $71
	ld b, c                                          ; $5468: $41
	ld c, h                                          ; $5469: $4c
	dec [hl]                                         ; $546a: $35
	db $ec                                           ; $546b: $ec
	rrca                                             ; $546c: $0f
	and c                                            ; $546d: $a1
	call c, Call_08f_6fa8                            ; $546e: $dc $a8 $6f
	ld c, e                                          ; $5471: $4b
	ldh a, [$34]                                     ; $5472: $f0 $34
	ld b, a                                          ; $5474: $47
	inc [hl]                                         ; $5475: $34
	inc a                                            ; $5476: $3c
	ld d, d                                          ; $5477: $52
	ld h, e                                          ; $5478: $63
	ld a, [hl-]                                      ; $5479: $3a
	jr c, jr_08f_54df                                ; $547a: $38 $63

	ld b, l                                          ; $547c: $45
	xor b                                            ; $547d: $a8
	or b                                             ; $547e: $b0
	and b                                            ; $547f: $a0
	cpl                                              ; $5480: $2f
	ldh a, [rAUD3LEVEL]                              ; $5481: $f0 $1c
	ld c, d                                          ; $5483: $4a
	ld c, a                                          ; $5484: $4f
	add b                                            ; $5485: $80
	ldh a, [$fe]                                     ; $5486: $f0 $fe
	dec sp                                           ; $5488: $3b
	ccf                                              ; $5489: $3f
	dec a                                            ; $548a: $3d
	ld d, b                                          ; $548b: $50
	and c                                            ; $548c: $a1
	db $ec                                           ; $548d: $ec
	dec h                                            ; $548e: $25
	xor h                                            ; $548f: $ac
	ld c, a                                          ; $5490: $4f
	add hl, sp                                       ; $5491: $39
	db $f4                                           ; $5492: $f4
	ld [$505e], sp                                   ; $5493: $08 $5e $50
	ld c, l                                          ; $5496: $4d
	ld d, d                                          ; $5497: $52
	ld a, c                                          ; $5498: $79
	ld b, c                                          ; $5499: $41
	ld b, d                                          ; $549a: $42
	xor b                                            ; $549b: $a8
	ldh a, [rHDMA5]                                  ; $549c: $f0 $55
	ldh a, [rBCPS]                                   ; $549e: $f0 $68
	ld e, b                                          ; $54a0: $58
	ld a, c                                          ; $54a1: $79
	ccf                                              ; $54a2: $3f
	db $eb                                           ; $54a3: $eb
	ld a, a                                          ; $54a4: $7f
	and b                                            ; $54a5: $a0
	cpl                                              ; $54a6: $2f
	ld b, b                                          ; $54a7: $40
	ld b, d                                          ; $54a8: $42
	add hl, sp                                       ; $54a9: $39
	ld h, c                                          ; $54aa: $61
	pop af                                           ; $54ab: $f1
	sbc e                                            ; $54ac: $9b
	ld c, l                                          ; $54ad: $4d
	ld c, [hl]                                       ; $54ae: $4e
	ld b, l                                          ; $54af: $45
	add hl, bc                                       ; $54b0: $09
	ld d, h                                          ; $54b1: $54
	ld b, c                                          ; $54b2: $41
	ld a, [hl-]                                      ; $54b3: $3a
	ld b, d                                          ; $54b4: $42
	ld b, a                                          ; $54b5: $47
	pop af                                           ; $54b6: $f1
	sbc e                                            ; $54b7: $9b
	ld c, l                                          ; $54b8: $4d
	dec a                                            ; $54b9: $3d
	ld d, b                                          ; $54ba: $50
	xor h                                            ; $54bb: $ac
	add h                                            ; $54bc: $84
	ldh a, [$2a]                                     ; $54bd: $f0 $2a
	ld h, h                                          ; $54bf: $64
	ld a, $52                                        ; $54c0: $3e $52
	jr c, jr_08f_5510                                ; $54c2: $38 $4c

	and b                                            ; $54c4: $a0
	db $ec                                           ; $54c5: $ec
	push bc                                          ; $54c6: $c5
	ldh a, [$bb]                                     ; $54c7: $f0 $bb
	ld d, d                                          ; $54c9: $52
	ld c, [hl]                                       ; $54ca: $4e
	ld h, e                                          ; $54cb: $63
	ld c, h                                          ; $54cc: $4c
	xor b                                            ; $54cd: $a8
	ld [$a0cd], a                                    ; $54ce: $ea $cd $a0
	cpl                                              ; $54d1: $2f
	ld b, e                                          ; $54d2: $43
	ld b, b                                          ; $54d3: $40
	add hl, sp                                       ; $54d4: $39
	ld b, h                                          ; $54d5: $44
	ld c, h                                          ; $54d6: $4c
	xor b                                            ; $54d7: $a8
	ldh a, [$0a]                                     ; $54d8: $f0 $0a
	ld d, l                                          ; $54da: $55
	sub [hl]                                         ; $54db: $96
	ld e, a                                          ; $54dc: $5f
	add hl, sp                                       ; $54dd: $39
	and b                                            ; $54de: $a0

jr_08f_54df:
	cpl                                              ; $54df: $2f
	ld b, e                                          ; $54e0: $43
	db $ed                                           ; $54e1: $ed
	ld d, e                                          ; $54e2: $53
	xor h                                            ; $54e3: $ac
	db $ec                                           ; $54e4: $ec
	xor $42                                          ; $54e5: $ee $42
	ldh a, [$e7]                                     ; $54e7: $f0 $e7
	ldh a, [c]                                       ; $54e9: $f2
	ld h, h                                          ; $54ea: $64
	ld d, e                                          ; $54eb: $53
	ld b, [hl]                                       ; $54ec: $46
	jr c, jr_08f_552e                                ; $54ed: $38 $3f

	ld c, [hl]                                       ; $54ef: $4e
	ld b, l                                          ; $54f0: $45
	xor b                                            ; $54f1: $a8
	ld d, h                                          ; $54f2: $54
	ld d, h                                          ; $54f3: $54
	ld b, a                                          ; $54f4: $47
	ldh a, [$e7]                                     ; $54f5: $f0 $e7
	ld e, a                                          ; $54f7: $5f
	add hl, sp                                       ; $54f8: $39
	and b                                            ; $54f9: $a0
	ld b, b                                          ; $54fa: $40
	add hl, sp                                       ; $54fb: $39
	inc [hl]                                         ; $54fc: $34
	ld b, l                                          ; $54fd: $45
	ld d, l                                          ; $54fe: $55
	dec sp                                           ; $54ff: $3b
	ccf                                              ; $5500: $3f
	ld b, l                                          ; $5501: $45
	and b                                            ; $5502: $a0
	cpl                                              ; $5503: $2f
	add sp, -$75                                     ; $5504: $e8 $8b
	and c                                            ; $5506: $a1
	call c, $1735                                    ; $5507: $dc $35 $17
	pop de                                           ; $550a: $d1
	inc de                                           ; $550b: $13
	db $ec                                           ; $550c: $ec
	cp c                                             ; $550d: $b9
	ld b, c                                          ; $550e: $41
	db $ec                                           ; $550f: $ec

jr_08f_5510:
	ret c                                            ; $5510: $d8

	and b                                            ; $5511: $a0
	cpl                                              ; $5512: $2f
	add sp, $2c                                      ; $5513: $e8 $2c
	and c                                            ; $5515: $a1
	xor $10                                          ; $5516: $ee $10
	ld b, b                                          ; $5518: $40
	add hl, sp                                       ; $5519: $39
	xor $10                                          ; $551a: $ee $10
	dec [hl]                                         ; $551c: $35
	rla                                              ; $551d: $17
	ld a, $66                                        ; $551e: $3e $66
	ld a, c                                          ; $5520: $79
	ld b, c                                          ; $5521: $41
	inc [hl]                                         ; $5522: $34
	ld b, [hl]                                       ; $5523: $46
	ld a, [hl-]                                      ; $5524: $3a
	dec a                                            ; $5525: $3d
	ld b, a                                          ; $5526: $47
	ld c, e                                          ; $5527: $4b
	inc de                                           ; $5528: $13
	ld [$42de], a                                    ; $5529: $ea $de $42
	ld c, h                                          ; $552c: $4c
	and b                                            ; $552d: $a0

jr_08f_552e:
	cpl                                              ; $552e: $2f
	add sp, $2d                                      ; $552f: $e8 $2d
	and c                                            ; $5531: $a1
	call c, $1735                                    ; $5532: $dc $35 $17
	ld d, d                                          ; $5535: $52
	ld b, [hl]                                       ; $5536: $46
	ld d, h                                          ; $5537: $54
	ld c, l                                          ; $5538: $4d
	ld d, l                                          ; $5539: $55
	ld d, b                                          ; $553a: $50
	jr c, jr_08f_5577                                ; $553b: $38 $3a

	ld d, b                                          ; $553d: $50
	xor h                                            ; $553e: $ac
	ldh a, [$3e]                                     ; $553f: $f0 $3e
	db $f4                                           ; $5541: $f4
	ld h, $4c                                        ; $5542: $26 $4c
	and b                                            ; $5544: $a0
	ld b, b                                          ; $5545: $40
	add hl, sp                                       ; $5546: $39
	xor c                                            ; $5547: $a9
	add b                                            ; $5548: $80
	ld d, d                                          ; $5549: $52
	ld d, b                                          ; $554a: $50
	ld a, [hl-]                                      ; $554b: $3a
	inc a                                            ; $554c: $3c
	dec sp                                           ; $554d: $3b
	dec a                                            ; $554e: $3d
	ld h, e                                          ; $554f: $63
	and b                                            ; $5550: $a0
	call c, $1735                                    ; $5551: $dc $35 $17
	ld l, a                                          ; $5554: $6f
	ld c, e                                          ; $5555: $4b
	inc [hl]                                         ; $5556: $34
	ld [$53c1], a                                    ; $5557: $ea $c1 $53
	inc de                                           ; $555a: $13
	db $ec                                           ; $555b: $ec
	cp c                                             ; $555c: $b9
	ld h, e                                          ; $555d: $63
	and b                                            ; $555e: $a0
	ld b, b                                          ; $555f: $40
	add hl, sp                                       ; $5560: $39
	inc a                                            ; $5561: $3c
	ld a, $50                                        ; $5562: $3e $50
	ld [hl], $17                                     ; $5564: $36 $17
	ld [$53c1], a                                    ; $5566: $ea $c1 $53
	inc de                                           ; $5569: $13
	db $ec                                           ; $556a: $ec
	cp c                                             ; $556b: $b9
	ld h, e                                          ; $556c: $63
	and b                                            ; $556d: $a0
	ld d, d                                          ; $556e: $52
	ld b, [hl]                                       ; $556f: $46
	inc [hl]                                         ; $5570: $34
	db $eb                                           ; $5571: $eb
	ld e, b                                          ; $5572: $58
	ld b, l                                          ; $5573: $45
	ld c, h                                          ; $5574: $4c
	and b                                            ; $5575: $a0
	db $eb                                           ; $5576: $eb

jr_08f_5577:
	ld d, e                                          ; $5577: $53
	ld c, c                                          ; $5578: $49
	add d                                            ; $5579: $82
	add hl, sp                                       ; $557a: $39
	ld b, d                                          ; $557b: $42
	ld c, e                                          ; $557c: $4b
	inc de                                           ; $557d: $13
	jr c, jr_08f_55b8                                ; $557e: $38 $38

	pop af                                           ; $5580: $f1
	sub b                                            ; $5581: $90
	ldh a, [$cb]                                     ; $5582: $f0 $cb
	ld c, c                                          ; $5584: $49
	ld a, $3f                                        ; $5585: $3e $3f
	ld c, a                                          ; $5587: $4f
	xor h                                            ; $5588: $ac
	db $eb                                           ; $5589: $eb
	ld e, b                                          ; $558a: $58
	ld c, h                                          ; $558b: $4c
	and b                                            ; $558c: $a0
	call c, $eca8                                    ; $558d: $dc $a8 $ec
	sub $4c                                          ; $5590: $d6 $4c
	and b                                            ; $5592: $a0
	db $ec                                           ; $5593: $ec
	push bc                                          ; $5594: $c5
	db $ec                                           ; $5595: $ec
	ccf                                              ; $5596: $3f
	ld c, h                                          ; $5597: $4c
	xor b                                            ; $5598: $a8
	ldh a, [$0a]                                     ; $5599: $f0 $0a
	ld d, l                                          ; $559b: $55
	ldh a, [rAUD2HIGH]                               ; $559c: $f0 $19
	ld b, a                                          ; $559e: $47
	sub [hl]                                         ; $559f: $96
	ld d, a                                          ; $55a0: $57
	ld d, d                                          ; $55a1: $52
	ld a, $66                                        ; $55a2: $3e $66
	add hl, sp                                       ; $55a4: $39
	and b                                            ; $55a5: $a0
	ld l, a                                          ; $55a6: $6f
	ld b, d                                          ; $55a7: $42
	ldh a, [c]                                       ; $55a8: $f2
	ld h, h                                          ; $55a9: $64
	ld c, e                                          ; $55aa: $4b
	ld e, d                                          ; $55ab: $5a
	ld h, c                                          ; $55ac: $61
	ld d, b                                          ; $55ad: $50
	inc a                                            ; $55ae: $3c
	ld a, $50                                        ; $55af: $3e $50
	and c                                            ; $55b1: $a1
	cpl                                              ; $55b2: $2f
	ld b, e                                          ; $55b3: $43
	ldh a, [$08]                                     ; $55b4: $f0 $08
	ld d, b                                          ; $55b6: $50
	inc [hl]                                         ; $55b7: $34

jr_08f_55b8:
	db $ed                                           ; $55b8: $ed
	ld d, e                                          ; $55b9: $53
	inc de                                           ; $55ba: $13
	db $ec                                           ; $55bb: $ec
	xor $ec                                          ; $55bc: $ee $ec
	xor $a0                                          ; $55be: $ee $a0
	cpl                                              ; $55c0: $2f
	add sp, -$74                                     ; $55c1: $e8 $8c
	and c                                            ; $55c3: $a1
	call c, $d1a8                                    ; $55c4: $dc $a8 $d1
	db $ec                                           ; $55c7: $ec
	cp c                                             ; $55c8: $b9
	ld h, e                                          ; $55c9: $63
	and b                                            ; $55ca: $a0
	cpl                                              ; $55cb: $2f
	add sp, $0e                                      ; $55cc: $e8 $0e
	and c                                            ; $55ce: $a1
	ld c, e                                          ; $55cf: $4b
	ld b, c                                          ; $55d0: $41
	scf                                              ; $55d1: $37
	rla                                              ; $55d2: $17
	ld a, $66                                        ; $55d3: $3e $66
	ld a, c                                          ; $55d5: $79
	ld b, c                                          ; $55d6: $41
	inc [hl]                                         ; $55d7: $34
	ldh a, [c]                                       ; $55d8: $f2
	rra                                              ; $55d9: $1f
	ldh a, [$38]                                     ; $55da: $f0 $38
	ld b, a                                          ; $55dc: $47
	ld c, e                                          ; $55dd: $4b
	inc de                                           ; $55de: $13
	ldh a, [$63]                                     ; $55df: $f0 $63
	pop af                                           ; $55e1: $f1
	dec sp                                           ; $55e2: $3b
	ld c, d                                          ; $55e3: $4a
	ld e, h                                          ; $55e4: $5c
	ld d, d                                          ; $55e5: $52
	ld a, c                                          ; $55e6: $79
	ld b, c                                          ; $55e7: $41
	ld b, d                                          ; $55e8: $42
	ld c, h                                          ; $55e9: $4c
	and b                                            ; $55ea: $a0
	cpl                                              ; $55eb: $2f
	add sp, $0f                                      ; $55ec: $e8 $0f
	and c                                            ; $55ee: $a1
	pop de                                           ; $55ef: $d1
	ld b, d                                          ; $55f0: $42
	ld c, a                                          ; $55f1: $4f
	ld b, d                                          ; $55f2: $42
	ld b, l                                          ; $55f3: $45
	and b                                            ; $55f4: $a0
	db $ed                                           ; $55f5: $ed
	ld e, [hl]                                       ; $55f6: $5e
	dec [hl]                                         ; $55f7: $35
	rla                                              ; $55f8: $17
	ld l, e                                          ; $55f9: $6b
	ld h, d                                          ; $55fa: $62
	ld l, a                                          ; $55fb: $6f
	ld d, e                                          ; $55fc: $53
	ldh a, [$66]                                     ; $55fd: $f0 $66
	ldh a, [$fe]                                     ; $55ff: $f0 $fe
	ld b, d                                          ; $5601: $42
	inc a                                            ; $5602: $3c
	xor h                                            ; $5603: $ac
	ld c, a                                          ; $5604: $4f
	dec sp                                           ; $5605: $3b
	ld c, c                                          ; $5606: $49
	ld b, l                                          ; $5607: $45
	ld d, l                                          ; $5608: $55
	ldh a, [$a4]                                     ; $5609: $f0 $a4
	ld e, [hl]                                       ; $560b: $5e
	ld a, [hl-]                                      ; $560c: $3a
	ld e, b                                          ; $560d: $58
	jr c, @-$5e                                      ; $560e: $38 $a0

	call c, $80a8                                    ; $5610: $dc $a8 $80
	ld d, d                                          ; $5613: $52
	ld d, b                                          ; $5614: $50
	ld a, [hl-]                                      ; $5615: $3a
	inc a                                            ; $5616: $3c
	dec sp                                           ; $5617: $3b
	ldh [$a0], a                                     ; $5618: $e0 $a0
	call c, $eca8                                    ; $561a: $dc $a8 $ec
	sub $3c                                          ; $561d: $d6 $3c
	ld a, $50                                        ; $561f: $3e $50
	and b                                            ; $5621: $a0
	db $eb                                           ; $5622: $eb
	ld d, e                                          ; $5623: $53
	ld c, c                                          ; $5624: $49
	add d                                            ; $5625: $82
	add hl, sp                                       ; $5626: $39
	pop af                                           ; $5627: $f1
	rst SubAFromHL                                          ; $5628: $d7
	inc de                                           ; $5629: $13
	ld c, d                                          ; $562a: $4a
	ld c, e                                          ; $562b: $4b
	inc [hl]                                         ; $562c: $34
	ldh a, [rAUD1LOW]                                ; $562d: $f0 $13
	inc a                                            ; $562f: $3c
	dec sp                                           ; $5630: $3b
	dec a                                            ; $5631: $3d
	ld e, l                                          ; $5632: $5d
	ld e, d                                          ; $5633: $5a
	and b                                            ; $5634: $a0
	call c, $eba8                                    ; $5635: $dc $a8 $eb
	ld e, b                                          ; $5638: $58
	inc a                                            ; $5639: $3c
	ld a, $50                                        ; $563a: $3e $50
	and b                                            ; $563c: $a0
	ld e, e                                          ; $563d: $5b
	ld d, [hl]                                       ; $563e: $56
	ld b, [hl]                                       ; $563f: $46
	inc de                                           ; $5640: $13
	ld [$63d3], a                                    ; $5641: $ea $d3 $63
	ld c, h                                          ; $5644: $4c
	and b                                            ; $5645: $a0
	sbc c                                            ; $5646: $99
	dec a                                            ; $5647: $3d
	ld a, c                                          ; $5648: $79
	ldh [$35], a                                     ; $5649: $e0 $35
	ld e, d                                          ; $564b: $5a
	add hl, sp                                       ; $564c: $39
	and c                                            ; $564d: $a1
	cpl                                              ; $564e: $2f
	add sp, -$1e                                     ; $564f: $e8 $e2
	add hl, bc                                       ; $5651: $09
	ldh a, [$08]                                     ; $5652: $f0 $08
	ld e, c                                          ; $5654: $59
	ldh a, [$08]                                     ; $5655: $f0 $08
	ldh a, [$08]                                     ; $5657: $f0 $08
	ldh a, [$08]                                     ; $5659: $f0 $08
	xor b                                            ; $565b: $a8
	ld c, d                                          ; $565c: $4a
	ld c, a                                          ; $565d: $4f
	inc [hl]                                         ; $565e: $34
	db $ec                                           ; $565f: $ec
	sbc [hl]                                         ; $5660: $9e
	ld a, [hl-]                                      ; $5661: $3a
	ld b, d                                          ; $5662: $42
	ld c, e                                          ; $5663: $4b
	xor h                                            ; $5664: $ac
	ldh a, [rPCM34]                                  ; $5665: $f0 $77
	ldh a, [$ac]                                     ; $5667: $f0 $ac
	ld b, h                                          ; $5669: $44
	ld e, l                                          ; $566a: $5d
	ld e, e                                          ; $566b: $5b
	ld d, [hl]                                       ; $566c: $56
	ld a, [hl-]                                      ; $566d: $3a
	ld d, l                                          ; $566e: $55
	ccf                                              ; $566f: $3f
	ld b, l                                          ; $5670: $45
	and b                                            ; $5671: $a0
	cpl                                              ; $5672: $2f
	jp hl                                            ; $5673: $e9


	cp d                                             ; $5674: $ba
	add hl, bc                                       ; $5675: $09
	ld c, a                                          ; $5676: $4f
	dec sp                                           ; $5677: $3b
	ld c, c                                          ; $5678: $49
	inc [hl]                                         ; $5679: $34
	ldh a, [$ab]                                     ; $567a: $f0 $ab
	ld c, c                                          ; $567c: $49
	ld a, $3f                                        ; $567d: $3e $3f
	inc de                                           ; $567f: $13
	add d                                            ; $5680: $82
	add hl, sp                                       ; $5681: $39
	ldh a, [$8c]                                     ; $5682: $f0 $8c
	ld e, h                                          ; $5684: $5c
	ldh a, [$7b]                                     ; $5685: $f0 $7b
	ldh a, [rP1]                                     ; $5687: $f0 $00
	ldh a, [$8e]                                     ; $5689: $f0 $8e
	ld d, e                                          ; $568b: $53
	inc de                                           ; $568c: $13
	ld b, [hl]                                       ; $568d: $46
	ld c, [hl]                                       ; $568e: $4e
	ld b, d                                          ; $568f: $42
	ld c, d                                          ; $5690: $4a
	ld c, e                                          ; $5691: $4b
	ld a, [hl-]                                      ; $5692: $3a
	ld d, l                                          ; $5693: $55
	ccf                                              ; $5694: $3f
	and c                                            ; $5695: $a1
	cpl                                              ; $5696: $2f
	ld c, c                                          ; $5697: $49
	ccf                                              ; $5698: $3f
	ld c, a                                          ; $5699: $4f
	ldh a, [rPCM12]                                  ; $569a: $f0 $76
	ldh a, [rTMA]                                    ; $569c: $f0 $06
	dec sp                                           ; $569e: $3b
	ccf                                              ; $569f: $3f
	ld c, [hl]                                       ; $56a0: $4e
	ld b, l                                          ; $56a1: $45
	add hl, bc                                       ; $56a2: $09
	ldh a, [$08]                                     ; $56a3: $f0 $08
	ld e, c                                          ; $56a5: $59
	ldh a, [$08]                                     ; $56a6: $f0 $08
	ldh a, [$08]                                     ; $56a8: $f0 $08
	ldh a, [$08]                                     ; $56aa: $f0 $08
	xor b                                            ; $56ac: $a8
	ld l, a                                          ; $56ad: $6f
	ld d, e                                          ; $56ae: $53
	ldh a, [$ac]                                     ; $56af: $f0 $ac
	ld c, [hl]                                       ; $56b1: $4e
	ld c, c                                          ; $56b2: $49
	xor h                                            ; $56b3: $ac
	ld e, d                                          ; $56b4: $5a
	ld b, c                                          ; $56b5: $41
	ld a, [hl-]                                      ; $56b6: $3a
	ldh a, [rPCM34]                                  ; $56b7: $f0 $77
	ldh a, [$ac]                                     ; $56b9: $f0 $ac
	ld c, a                                          ; $56bb: $4f
	ldh a, [$57]                                     ; $56bc: $f0 $57
	pop af                                           ; $56be: $f1
	ld e, $50                                        ; $56bf: $1e $50
	ld a, $55                                        ; $56c1: $3e $55
	inc de                                           ; $56c3: $13
	ld a, [hl-]                                      ; $56c4: $3a
	dec sp                                           ; $56c5: $3b
	ccf                                              ; $56c6: $3f
	ld a, $52                                        ; $56c7: $3e $52
	add hl, sp                                       ; $56c9: $39
	ld b, d                                          ; $56ca: $42
	ld b, l                                          ; $56cb: $45
	and b                                            ; $56cc: $a0
	cpl                                              ; $56cd: $2f
	ld b, e                                          ; $56ce: $43
	ld b, [hl]                                       ; $56cf: $46
	dec sp                                           ; $56d0: $3b
	xor h                                            ; $56d1: $ac
	db $ed                                           ; $56d2: $ed
	ld d, e                                          ; $56d3: $53
	ld c, c                                          ; $56d4: $49
	ldh a, [$cd]                                     ; $56d5: $f0 $cd
	ld e, e                                          ; $56d7: $5b
	ldh a, [rPCM34]                                  ; $56d8: $f0 $77
	ldh a, [$ac]                                     ; $56da: $f0 $ac
	and d                                            ; $56dc: $a2
	xor $14                                          ; $56dd: $ee $14
	ld l, [hl]                                       ; $56df: $6e
	ld b, h                                          ; $56e0: $44
	xor b                                            ; $56e1: $a8
	adc b                                            ; $56e2: $88
	sub c                                            ; $56e3: $91
	and b                                            ; $56e4: $a0
	cpl                                              ; $56e5: $2f
	ld c, d                                          ; $56e6: $4a
	ld c, a                                          ; $56e7: $4f
	inc [hl]                                         ; $56e8: $34
	db $ed                                           ; $56e9: $ed
	ld d, e                                          ; $56ea: $53
	ld b, d                                          ; $56eb: $42
	ldh a, [$38]                                     ; $56ec: $f0 $38
	ld d, e                                          ; $56ee: $53
	db $ed                                           ; $56ef: $ed
	ld c, c                                          ; $56f0: $49
	ld b, h                                          ; $56f1: $44
	ld c, h                                          ; $56f2: $4c
	add hl, bc                                       ; $56f3: $09
	add hl, sp                                       ; $56f4: $39
	ldh a, [rSCY]                                    ; $56f5: $f0 $42
	ldh a, [rSCY]                                    ; $56f7: $f0 $42
	ldh a, [rSCY]                                    ; $56f9: $f0 $42
	ldh a, [rSCY]                                    ; $56fb: $f0 $42
	xor l                                            ; $56fd: $ad
	db $ed                                           ; $56fe: $ed
	or [hl]                                          ; $56ff: $b6
	ld d, e                                          ; $5700: $53
	ldh a, [$f5]                                     ; $5701: $f0 $f5
	jr c, jr_08f_5757                                ; $5703: $38 $52

	ld d, c                                          ; $5705: $51
	ld c, a                                          ; $5706: $4f
	ld b, d                                          ; $5707: $42
	and b                                            ; $5708: $a0
	cpl                                              ; $5709: $2f
	db $ed                                           ; $570a: $ed
	ld a, e                                          ; $570b: $7b
	ld d, a                                          ; $570c: $57
	ld c, a                                          ; $570d: $4f
	ld b, d                                          ; $570e: $42
	ld a, [hl-]                                      ; $570f: $3a
	ld b, c                                          ; $5710: $41
	inc a                                            ; $5711: $3c
	ldh a, [$ac]                                     ; $5712: $f0 $ac
	ccf                                              ; $5714: $3f
	ld c, [hl]                                       ; $5715: $4e
	inc a                                            ; $5716: $3c
	ld d, b                                          ; $5717: $50
	add hl, bc                                       ; $5718: $09
	db $ed                                           ; $5719: $ed
	push de                                          ; $571a: $d5
	jr c, jr_08f_5757                                ; $571b: $38 $3a

	ld e, b                                          ; $571d: $58
	ld d, b                                          ; $571e: $50
	ld a, [hl-]                                      ; $571f: $3a
	jr c, jr_08f_576c                                ; $5720: $38 $4a

	xor b                                            ; $5722: $a8
	ld d, h                                          ; $5723: $54
	ld b, d                                          ; $5724: $42
	ld l, a                                          ; $5725: $6f
	ld d, e                                          ; $5726: $53
	ldh a, [$ac]                                     ; $5727: $f0 $ac
	dec a                                            ; $5729: $3d
	inc a                                            ; $572a: $3c
	ld d, b                                          ; $572b: $50
	xor h                                            ; $572c: $ac
	db $ed                                           ; $572d: $ed
	ld a, e                                          ; $572e: $7b
	dec sp                                           ; $572f: $3b
	dec a                                            ; $5730: $3d
	ld b, d                                          ; $5731: $42
	ld b, l                                          ; $5732: $45
	and b                                            ; $5733: $a0
	cpl                                              ; $5734: $2f
	ldh a, [$5a]                                     ; $5735: $f0 $5a
	ld e, [hl]                                       ; $5737: $5e
	inc [hl]                                         ; $5738: $34
	db $ed                                           ; $5739: $ed
	ld a, e                                          ; $573a: $7b
	dec sp                                           ; $573b: $3b
	ccf                                              ; $573c: $3f
	ld c, [hl]                                       ; $573d: $4e
	ld b, c                                          ; $573e: $41
	ld b, h                                          ; $573f: $44
	add hl, bc                                       ; $5740: $09
	ld [$42b1], a                                    ; $5741: $ea $b1 $42
	xor c                                            ; $5744: $a9
	ldh a, [$c7]                                     ; $5745: $f0 $c7
	ld c, l                                          ; $5747: $4d
	ccf                                              ; $5748: $3f
	ld c, [hl]                                       ; $5749: $4e
	ld h, e                                          ; $574a: $63
	ld c, h                                          ; $574b: $4c
	and b                                            ; $574c: $a0
	ld b, b                                          ; $574d: $40
	ld c, l                                          ; $574e: $4d
	ld e, e                                          ; $574f: $5b
	ld d, [hl]                                       ; $5750: $56
	xor h                                            ; $5751: $ac
	ld [$63d3], a                                    ; $5752: $ea $d3 $63
	ld c, h                                          ; $5755: $4c
	and b                                            ; $5756: $a0

jr_08f_5757:
	ldh a, [rAUD4POLY]                               ; $5757: $f0 $22
	ld h, l                                          ; $5759: $65
	add e                                            ; $575a: $83
	sub e                                            ; $575b: $93
	ldh a, [rP1]                                     ; $575c: $f0 $00

jr_08f_575e:
	ld e, c                                          ; $575e: $59
	ld h, l                                          ; $575f: $65
	ld h, d                                          ; $5760: $62
	inc de                                           ; $5761: $13
	ld hl, sp+$12                                    ; $5762: $f8 $12
	dec sp                                           ; $5764: $3b
	ccf                                              ; $5765: $3f
	db $eb                                           ; $5766: $eb
	sub b                                            ; $5767: $90
	inc de                                           ; $5768: $13
	inc a                                            ; $5769: $3c
	ld a, $50                                        ; $576a: $3e $50

jr_08f_576c:
	and c                                            ; $576c: $a1
	cpl                                              ; $576d: $2f
	ld b, e                                          ; $576e: $43
	ld b, l                                          ; $576f: $45
	inc [hl]                                         ; $5770: $34
	ld b, l                                          ; $5771: $45
	ld e, a                                          ; $5772: $5f
	ld d, h                                          ; $5773: $54
	ld b, c                                          ; $5774: $41
	ld c, d                                          ; $5775: $4a
	ld c, b                                          ; $5776: $48
	and b                                            ; $5777: $a0
	ld hl, sp+$12                                    ; $5778: $f8 $12
	ld d, a                                          ; $577a: $57
	pop af                                           ; $577b: $f1
	dec d                                            ; $577c: $15
	ld c, l                                          ; $577d: $4d
	ld b, d                                          ; $577e: $42
	ldh a, [rAUD1LOW]                                ; $577f: $f0 $13
	jr c, jr_08f_57c8                                ; $5781: $38 $45

	add hl, sp                                       ; $5783: $39
	ld b, a                                          ; $5784: $47
	inc de                                           ; $5785: $13
	ld h, h                                          ; $5786: $64
	ldh a, [$c8]                                     ; $5787: $f0 $c8
	jr c, @+$53                                      ; $5789: $38 $51

	ld c, [hl]                                       ; $578b: $4e
	ld h, e                                          ; $578c: $63
	ld c, h                                          ; $578d: $4c
	and b                                            ; $578e: $a0
	ret                                              ; $578f: $c9


	xor h                                            ; $5790: $ac
	ldh a, [$5d]                                     ; $5791: $f0 $5d
	ld a, [hl-]                                      ; $5793: $3a
	ld c, c                                          ; $5794: $49
	ld d, h                                          ; $5795: $54
	ld e, a                                          ; $5796: $5f
	di                                               ; $5797: $f3
	ld b, h                                          ; $5798: $44
	ld b, c                                          ; $5799: $41
	ld a, [hl-]                                      ; $579a: $3a
	jr c, jr_08f_57e7                                ; $579b: $38 $4a

	ld b, l                                          ; $579d: $45
	and b                                            ; $579e: $a0
	ret                                              ; $579f: $c9


	xor h                                            ; $57a0: $ac
	ld d, l                                          ; $57a1: $55
	ld d, c                                          ; $57a2: $51
	sbc l                                            ; $57a3: $9d
	dec sp                                           ; $57a4: $3b
	dec a                                            ; $57a5: $3d
	jr c, jr_08f_580b                                ; $57a6: $38 $63

	ld c, h                                          ; $57a8: $4c
	and b                                            ; $57a9: $a0
	ld c, a                                          ; $57aa: $4f
	dec sp                                           ; $57ab: $3b
	ld c, c                                          ; $57ac: $49
	inc [hl]                                         ; $57ad: $34
	pop af                                           ; $57ae: $f1
	call nc, $13f5                                   ; $57af: $d4 $f5 $13
	ld b, a                                          ; $57b2: $47
	inc de                                           ; $57b3: $13
	ld hl, sp+$12                                    ; $57b4: $f8 $12
	dec sp                                           ; $57b6: $3b
	ccf                                              ; $57b7: $3f
	ld d, l                                          ; $57b8: $55
	ld c, l                                          ; $57b9: $4d
	ld a, [hl-]                                      ; $57ba: $3a
	jr c, jr_08f_575e                                ; $57bb: $38 $a1

	cpl                                              ; $57bd: $2f
	ld b, e                                          ; $57be: $43
	ld b, [hl]                                       ; $57bf: $46
	ld [hl], h                                       ; $57c0: $74
	inc [hl]                                         ; $57c1: $34
	halt                                             ; $57c2: $76
	ld c, e                                          ; $57c3: $4b
	ld l, d                                          ; $57c4: $6a
	inc de                                           ; $57c5: $13
	or $9e                                           ; $57c6: $f6 $9e

jr_08f_57c8:
	or $20                                           ; $57c8: $f6 $20
	ld b, a                                          ; $57ca: $47
	pop af                                           ; $57cb: $f1
	and d                                            ; $57cc: $a2
	ld a, c                                          ; $57cd: $79
	ld b, h                                          ; $57ce: $44
	ld c, b                                          ; $57cf: $48
	and b                                            ; $57d0: $a0
	pop de                                           ; $57d1: $d1
	di                                               ; $57d2: $f3
	ld c, [hl]                                       ; $57d3: $4e
	ld l, [hl]                                       ; $57d4: $6e
	inc a                                            ; $57d5: $3c
	db $ec                                           ; $57d6: $ec
	ret c                                            ; $57d7: $d8

	and b                                            ; $57d8: $a0
	cpl                                              ; $57d9: $2f
	ld [$09d6], a                                    ; $57da: $ea $d6 $09
	cpl                                              ; $57dd: $2f
	ld b, e                                          ; $57de: $43
	db $ed                                           ; $57df: $ed
	ld [de], a                                       ; $57e0: $12
	db $ec                                           ; $57e1: $ec
	ld c, a                                          ; $57e2: $4f
	xor b                                            ; $57e3: $a8
	db $ed                                           ; $57e4: $ed
	ld c, c                                          ; $57e5: $49
	ld b, h                                          ; $57e6: $44

jr_08f_57e7:
	ld b, l                                          ; $57e7: $45
	and b                                            ; $57e8: $a0
	sub c                                            ; $57e9: $91
	ldh a, [$59]                                     ; $57ea: $f0 $59
	ld c, h                                          ; $57ec: $4c
	dec [hl]                                         ; $57ed: $35
	ld c, d                                          ; $57ee: $4a
	ld c, a                                          ; $57ef: $4f
	xor h                                            ; $57f0: $ac
	ld l, l                                          ; $57f1: $6d
	ldh a, [$a9]                                     ; $57f2: $f0 $a9
	ld h, h                                          ; $57f4: $64
	ldh a, [rBCPS]                                   ; $57f5: $f0 $68
	ld h, d                                          ; $57f7: $62
	add d                                            ; $57f8: $82
	dec sp                                           ; $57f9: $3b
	ccf                                              ; $57fa: $3f
	ld h, h                                          ; $57fb: $64
	ld d, l                                          ; $57fc: $55
	ld h, e                                          ; $57fd: $63
	and b                                            ; $57fe: $a0
	cpl                                              ; $57ff: $2f
	ld [$09d7], a                                    ; $5800: $ea $d7 $09
	cpl                                              ; $5803: $2f
	ld b, e                                          ; $5804: $43
	or h                                             ; $5805: $b4
	xor h                                            ; $5806: $ac
	ld [$344f], a                                    ; $5807: $ea $4f $34
	db $ec                                           ; $580a: $ec

jr_08f_580b:
	inc c                                            ; $580b: $0c
	and c                                            ; $580c: $a1
	call c, Call_08f_72a8                            ; $580d: $dc $a8 $72
	ccf                                              ; $5810: $3f
	jr c, jr_08f_5852                                ; $5811: $38 $3f

	rst SubAFromDE                                          ; $5813: $df
	ld h, e                                          ; $5814: $63
	and b                                            ; $5815: $a0
	cpl                                              ; $5816: $2f
	ld b, e                                          ; $5817: $43
	xor $2d                                          ; $5818: $ee $2d
	inc [hl]                                         ; $581a: $34
	db $ed                                           ; $581b: $ed
	ld d, e                                          ; $581c: $53
	ld b, a                                          ; $581d: $47
	rst SubAFromDE                                          ; $581e: $df
	ld b, l                                          ; $581f: $45
	and b                                            ; $5820: $a0
	ld b, b                                          ; $5821: $40
	add hl, sp                                       ; $5822: $39
	xor b                                            ; $5823: $a8
	ld b, [hl]                                       ; $5824: $46
	ld d, a                                          ; $5825: $57
	ld d, e                                          ; $5826: $53
	ld c, c                                          ; $5827: $49
	add hl, sp                                       ; $5828: $39
	and b                                            ; $5829: $a0
	cpl                                              ; $582a: $2f
	ld b, e                                          ; $582b: $43
	or h                                             ; $582c: $b4
	xor h                                            ; $582d: $ac
	ldh a, [c]                                       ; $582e: $f2
	inc [hl]                                         ; $582f: $34
	ldh a, [c]                                       ; $5830: $f2
	ld h, d                                          ; $5831: $62
	ldh a, [rSB]                                     ; $5832: $f0 $01
	ld c, d                                          ; $5834: $4a
	ld c, a                                          ; $5835: $4f
	db $ec                                           ; $5836: $ec
	inc c                                            ; $5837: $0c
	and c                                            ; $5838: $a1
	ld b, l                                          ; $5839: $45
	ld d, l                                          ; $583a: $55
	dec sp                                           ; $583b: $3b
	ccf                                              ; $583c: $3f
	ld b, l                                          ; $583d: $45
	and b                                            ; $583e: $a0
	cpl                                              ; $583f: $2f
	ld b, e                                          ; $5840: $43
	pop af                                           ; $5841: $f1
	inc b                                            ; $5842: $04
	ld c, l                                          ; $5843: $4d
	dec a                                            ; $5844: $3d
	ld d, b                                          ; $5845: $50
	db $ed                                           ; $5846: $ed
	ld d, e                                          ; $5847: $53
	ld b, a                                          ; $5848: $47
	inc de                                           ; $5849: $13
	rst SubAFromDE                                          ; $584a: $df
	ld c, h                                          ; $584b: $4c
	and b                                            ; $584c: $a0
	cpl                                              ; $584d: $2f
	ld b, e                                          ; $584e: $43
	xor $2d                                          ; $584f: $ee $2d
	inc [hl]                                         ; $5851: $34

jr_08f_5852:
	db $ed                                           ; $5852: $ed
	ld d, e                                          ; $5853: $53
	and b                                            ; $5854: $a0
	ld b, [hl]                                       ; $5855: $46
	ld d, a                                          ; $5856: $57
	ld d, e                                          ; $5857: $53
	ld c, c                                          ; $5858: $49
	add hl, sp                                       ; $5859: $39
	xor b                                            ; $585a: $a8
	ld h, h                                          ; $585b: $64
	di                                               ; $585c: $f3
	dec a                                            ; $585d: $3d
	ldh a, [c]                                       ; $585e: $f2
	or $47                                           ; $585f: $f6 $47
	ld a, [hl-]                                      ; $5861: $3a
	ld c, [hl]                                       ; $5862: $4e
	inc a                                            ; $5863: $3c
	ld a, $50                                        ; $5864: $3e $50
	and c                                            ; $5866: $a1
	cpl                                              ; $5867: $2f
	ld b, e                                          ; $5868: $43
	ld e, [hl]                                       ; $5869: $5e
	inc [hl]                                         ; $586a: $34
	ld a, [hl-]                                      ; $586b: $3a
	ld b, a                                          ; $586c: $47
	and c                                            ; $586d: $a1
	db $eb                                           ; $586e: $eb
	ld b, d                                          ; $586f: $42
	ld h, e                                          ; $5870: $63
	and b                                            ; $5871: $a0
	cpl                                              ; $5872: $2f
	ld b, e                                          ; $5873: $43
	ld [hl], b                                       ; $5874: $70
	ld [hl], c                                       ; $5875: $71
	ld b, c                                          ; $5876: $41
	ld c, b                                          ; $5877: $48
	inc [hl]                                         ; $5878: $34
	db $ed                                           ; $5879: $ed
	ld d, e                                          ; $587a: $53
	xor b                                            ; $587b: $a8
	ld l, e                                          ; $587c: $6b
	ld c, a                                          ; $587d: $4f
	pop af                                           ; $587e: $f1
	inc b                                            ; $587f: $04
	ld c, l                                          ; $5880: $4d
	ld a, [hl-]                                      ; $5881: $3a
	inc a                                            ; $5882: $3c
	dec sp                                           ; $5883: $3b
	dec a                                            ; $5884: $3d
	ld b, l                                          ; $5885: $45
	and b                                            ; $5886: $a0
	jr c, jr_08f_58c1                                ; $5887: $38 $38

	ld b, d                                          ; $5889: $42
	ld b, l                                          ; $588a: $45
	xor h                                            ; $588b: $ac
	ld a, a                                          ; $588c: $7f
	ld b, a                                          ; $588d: $47
	ld a, $3a                                        ; $588e: $3e $3a
	ld d, l                                          ; $5890: $55
	ccf                                              ; $5891: $3f
	ld c, a                                          ; $5892: $4f
	and b                                            ; $5893: $a0
	cpl                                              ; $5894: $2f
	ld b, e                                          ; $5895: $43
	ld l, d                                          ; $5896: $6a
	ldh a, [rAUD1HIGH]                               ; $5897: $f0 $14
	ld c, e                                          ; $5899: $4b
	xor h                                            ; $589a: $ac
	jp hl                                            ; $589b: $e9


	dec [hl]                                         ; $589c: $35
	xor b                                            ; $589d: $a8
	ld [$a038], a                                    ; $589e: $ea $38 $a0
	ld [$a8e7], a                                    ; $58a1: $ea $e7 $a8
	ld [$a0a9], a                                    ; $58a4: $ea $a9 $a0
	db $ec                                           ; $58a7: $ec

Call_08f_58a8:
	inc de                                           ; $58a8: $13
	db $ed                                           ; $58a9: $ed
	adc l                                            ; $58aa: $8d
	db $ec                                           ; $58ab: $ec
	ret c                                            ; $58ac: $d8

	and b                                            ; $58ad: $a0
	cpl                                              ; $58ae: $2f
	db $ed                                           ; $58af: $ed
	ld d, e                                          ; $58b0: $53
	ldh a, [$08]                                     ; $58b1: $f0 $08
	ld e, d                                          ; $58b3: $5a
	db $ec                                           ; $58b4: $ec
	ret c                                            ; $58b5: $d8

	ld b, l                                          ; $58b6: $45
	add hl, bc                                       ; $58b7: $09
	ldh a, [$08]                                     ; $58b8: $f0 $08
	ld e, c                                          ; $58ba: $59
	ldh a, [$08]                                     ; $58bb: $f0 $08
	ldh a, [$08]                                     ; $58bd: $f0 $08
	ldh a, [$08]                                     ; $58bf: $f0 $08

jr_08f_58c1:
	xor b                                            ; $58c1: $a8
	db $eb                                           ; $58c2: $eb
	ld [hl], h                                       ; $58c3: $74
	db $ec                                           ; $58c4: $ec
	ret c                                            ; $58c5: $d8

	and b                                            ; $58c6: $a0
	cpl                                              ; $58c7: $2f
	add sp, -$25                                     ; $58c8: $e8 $db
	add hl, bc                                       ; $58ca: $09
	ld b, b                                          ; $58cb: $40
	ld b, c                                          ; $58cc: $41
	ld a, [hl-]                                      ; $58cd: $3a
	pop af                                           ; $58ce: $f1
	sbc b                                            ; $58cf: $98

jr_08f_58d0:
	ldh a, [hDisp1_WY]                                     ; $58d0: $f0 $95
	ld a, [hl-]                                      ; $58d2: $3a
	ld c, a                                          ; $58d3: $4f
	ld b, d                                          ; $58d4: $42
	ld c, e                                          ; $58d5: $4b
	xor h                                            ; $58d6: $ac
	ld l, a                                          ; $58d7: $6f
	ld b, a                                          ; $58d8: $47
	ld c, e                                          ; $58d9: $4b
	ldh a, [rPCM12]                                  ; $58da: $f0 $76
	ldh a, [rTMA]                                    ; $58dc: $f0 $06
	jr c, jr_08f_5932                                ; $58de: $38 $52

	ld a, c                                          ; $58e0: $79
	ld b, c                                          ; $58e1: $41
	ld h, e                                          ; $58e2: $63
	and b                                            ; $58e3: $a0
	cpl                                              ; $58e4: $2f
	add sp, $2e                                      ; $58e5: $e8 $2e
	add hl, bc                                       ; $58e7: $09
	ld b, l                                          ; $58e8: $45
	ld d, l                                          ; $58e9: $55
	ldh a, [$2d]                                     ; $58ea: $f0 $2d
	dec sp                                           ; $58ec: $3b
	ccf                                              ; $58ed: $3f
	jr c, jr_08f_58d0                                ; $58ee: $38 $e0

	xor b                                            ; $58f0: $a8
	pop af                                           ; $58f1: $f1
	db $d3                                           ; $58f2: $d3
	ld [hl], c                                       ; $58f3: $71
	ccf                                              ; $58f4: $3f
	rst SubAFromDE                                          ; $58f5: $df
	ld h, e                                          ; $58f6: $63
	and b                                            ; $58f7: $a0
	ld e, b                                          ; $58f8: $58
	ld b, [hl]                                       ; $58f9: $46
	inc [hl]                                         ; $58fa: $34
	sub [hl]                                         ; $58fb: $96
	ld d, a                                          ; $58fc: $57
	ld d, d                                          ; $58fd: $52
	ld a, $66                                        ; $58fe: $3e $66
	add hl, sp                                       ; $5900: $39

jr_08f_5901:
	and b                                            ; $5901: $a0
	cpl                                              ; $5902: $2f
	ld b, e                                          ; $5903: $43
	ld b, b                                          ; $5904: $40
	add hl, sp                                       ; $5905: $39
	ld b, h                                          ; $5906: $44
	ld c, h                                          ; $5907: $4c
	xor b                                            ; $5908: $a8
	db $eb                                           ; $5909: $eb
	ld d, d                                          ; $590a: $52
	inc a                                            ; $590b: $3c
	and c                                            ; $590c: $a1
	ld h, c                                          ; $590d: $61
	ld d, [hl]                                       ; $590e: $56
	ld b, c                                          ; $590f: $41
	ld c, c                                          ; $5910: $49
	xor h                                            ; $5911: $ac
	pop af                                           ; $5912: $f1
	ld e, e                                          ; $5913: $5b
	ld c, l                                          ; $5914: $4d
	ld c, [hl]                                       ; $5915: $4e
	ld b, c                                          ; $5916: $41
	ld c, d                                          ; $5917: $4a
	ld a, $66                                        ; $5918: $3e $66
	add hl, sp                                       ; $591a: $39
	ld c, h                                          ; $591b: $4c
	and c                                            ; $591c: $a1
	cpl                                              ; $591d: $2f
	add sp, $39                                      ; $591e: $e8 $39
	add hl, bc                                       ; $5920: $09
	ld b, b                                          ; $5921: $40
	add hl, sp                                       ; $5922: $39
	xor b                                            ; $5923: $a8
	ld a, [hl-]                                      ; $5924: $3a
	ld d, b                                          ; $5925: $50
	jr c, @+$3a                                      ; $5926: $38 $38

	ld h, e                                          ; $5928: $63
	xor b                                            ; $5929: $a8
	pop af                                           ; $592a: $f1
	ld e, e                                          ; $592b: $5b
	ld d, a                                          ; $592c: $57
	ld d, d                                          ; $592d: $52
	ld a, $66                                        ; $592e: $3e $66
	add hl, sp                                       ; $5930: $39
	and b                                            ; $5931: $a0

jr_08f_5932:
	cpl                                              ; $5932: $2f
	db $eb                                           ; $5933: $eb
	sub e                                            ; $5934: $93
	xor h                                            ; $5935: $ac
	add sp, -$6e                                     ; $5936: $e8 $92
	xor b                                            ; $5938: $a8
	db $eb                                           ; $5939: $eb
	sub h                                            ; $593a: $94
	pop af                                           ; $593b: $f1
	ld e, e                                          ; $593c: $5b
	ld c, l                                          ; $593d: $4d
	ld a, [hl-]                                      ; $593e: $3a
	jr c, @+$43                                      ; $593f: $38 $41

	ld b, h                                          ; $5941: $44
	and e                                            ; $5942: $a3
	cpl                                              ; $5943: $2f
	ldh a, [c]                                       ; $5944: $f2
	ld d, e                                          ; $5945: $53
	ld b, d                                          ; $5946: $42
	ldh a, [$3e]                                     ; $5947: $f0 $3e
	ld c, e                                          ; $5949: $4b
	ret                                              ; $594a: $c9


	ld c, b                                          ; $594b: $48
	add hl, bc                                       ; $594c: $09
	ld b, b                                          ; $594d: $40
	add hl, sp                                       ; $594e: $39
	xor b                                            ; $594f: $a8
	pop af                                           ; $5950: $f1
	ldh [c], a                                       ; $5951: $e2
	ld e, l                                          ; $5952: $5d
	db $ec                                           ; $5953: $ec
	dec bc                                           ; $5954: $0b
	xor b                                            ; $5955: $a8
	sub h                                            ; $5956: $94
	ldh a, [hDisp1_WX]                                     ; $5957: $f0 $96
	ld a, $3f                                        ; $5959: $3e $3f
	ld d, b                                          ; $595b: $50
	dec sp                                           ; $595c: $3b
	ld a, $56                                        ; $595d: $3e $56
	jr c, jr_08f_5901                                ; $595f: $38 $a0

	cpl                                              ; $5961: $2f
	add sp, -$55                                     ; $5962: $e8 $ab
	add hl, bc                                       ; $5964: $09
	ld b, b                                          ; $5965: $40
	add hl, sp                                       ; $5966: $39
	xor b                                            ; $5967: $a8
	ld a, [hl-]                                      ; $5968: $3a
	ld d, b                                          ; $5969: $50
	inc [hl]                                         ; $596a: $34
	ldh a, [$c7]                                     ; $596b: $f0 $c7
	ld c, l                                          ; $596d: $4d
	ld a, [hl-]                                      ; $596e: $3a
	jr c, jr_08f_59b6                                ; $596f: $38 $45

	add hl, sp                                       ; $5971: $39
	ld b, a                                          ; $5972: $47
	inc de                                           ; $5973: $13
	add b                                            ; $5974: $80
	jr c, jr_08f_59b6                                ; $5975: $38 $3f

	ld d, l                                          ; $5977: $55
	ld c, [hl]                                       ; $5978: $4e
	ld d, h                                          ; $5979: $54
	ld c, c                                          ; $597a: $49
	ld c, h                                          ; $597b: $4c
	and b                                            ; $597c: $a0
	ld e, h                                          ; $597d: $5c
	ld d, [hl]                                       ; $597e: $56
	and b                                            ; $597f: $a0
	pop af                                           ; $5980: $f1
	ld [hl], $41                                     ; $5981: $36 $41
	ld e, e                                          ; $5983: $5b

jr_08f_5984:
	ld d, [hl]                                       ; $5984: $56
	dec sp                                           ; $5985: $3b
	dec a                                            ; $5986: $3d
	db $ec                                           ; $5987: $ec
	ret c                                            ; $5988: $d8

	xor b                                            ; $5989: $a8
	ldh a, [c]                                       ; $598a: $f2
	rra                                              ; $598b: $1f
	ldh a, [$38]                                     ; $598c: $f0 $38
	ld b, d                                          ; $598e: $42
	ld a, c                                          ; $598f: $79
	jr c, jr_08f_59d7                                ; $5990: $38 $45

	and b                                            ; $5992: $a0
	cpl                                              ; $5993: $2f
	db $ed                                           ; $5994: $ed
	add hl, sp                                       ; $5995: $39
	dec [hl]                                         ; $5996: $35
	db $ed                                           ; $5997: $ed
	adc b                                            ; $5998: $88
	halt                                             ; $5999: $76
	ld d, e                                          ; $599a: $53
	ldh a, [$5c]                                     ; $599b: $f0 $5c
	jr c, jr_08f_59a8                                ; $599d: $38 $09

	ld d, d                                          ; $599f: $52
	ld b, [hl]                                       ; $59a0: $46
	jr c, @+$3a                                      ; $59a1: $38 $38

	ld h, e                                          ; $59a3: $63
	xor b                                            ; $59a4: $a8
	ld l, d                                          ; $59a5: $6a
	ldh a, [$0d]                                     ; $59a6: $f0 $0d

jr_08f_59a8:
	inc a                                            ; $59a8: $3c
	ld d, b                                          ; $59a9: $50
	ld c, e                                          ; $59aa: $4b
	xor h                                            ; $59ab: $ac
	ld a, a                                          ; $59ac: $7f
	ld h, d                                          ; $59ad: $62
	ldh a, [$9a]                                     ; $59ae: $f0 $9a
	ld e, l                                          ; $59b0: $5d
	ccf                                              ; $59b1: $3f
	ld h, c                                          ; $59b2: $61
	ld h, [hl]                                       ; $59b3: $66
	add hl, sp                                       ; $59b4: $39
	ld b, h                                          ; $59b5: $44

jr_08f_59b6:
	jr c, @-$5e                                      ; $59b6: $38 $a0

	cpl                                              ; $59b8: $2f
	ld e, [hl]                                       ; $59b9: $5e
	dec sp                                           ; $59ba: $3b
	ld [hl], $76                                     ; $59bb: $36 $76
	inc [hl]                                         ; $59bd: $34
	ld l, e                                          ; $59be: $6b
	ld c, a                                          ; $59bf: $4f
	ld a, $3f                                        ; $59c0: $3e $3f
	jr c, jr_08f_59fe                                ; $59c2: $38 $3a

	jr c, jr_08f_5a08                                ; $59c4: $38 $42

	ld b, a                                          ; $59c6: $47
	add hl, bc                                       ; $59c7: $09
	add d                                            ; $59c8: $82
	jr c, jr_08f_5a2e                                ; $59c9: $38 $63

	ld e, l                                          ; $59cb: $5d
	ld c, e                                          ; $59cc: $4b
	inc de                                           ; $59cd: $13
	ld [hl], d                                       ; $59ce: $72
	ldh a, [rIE]                                     ; $59cf: $f0 $ff
	ld a, $38                                        ; $59d1: $3e $38
	ld h, e                                          ; $59d3: $63
	ld b, l                                          ; $59d4: $45
	and b                                            ; $59d5: $a0
	cpl                                              ; $59d6: $2f

jr_08f_59d7:
	add a                                            ; $59d7: $87
	ldh a, [$5b]                                     ; $59d8: $f0 $5b
	ldh a, [$5e]                                     ; $59da: $f0 $5e
	ld [hl], $f1                                     ; $59dc: $36 $f1
	ld a, [hl-]                                      ; $59de: $3a
	ld d, l                                          ; $59df: $55
	ld a, [hl-]                                      ; $59e0: $3a
	jr c, jr_08f_5984                                ; $59e1: $38 $a1

	ld [hl], d                                       ; $59e3: $72
	ccf                                              ; $59e4: $3f
	ld a, [hl-]                                      ; $59e5: $3a
	jr c, jr_08f_5a32                                ; $59e6: $38 $4a

	xor h                                            ; $59e8: $ac
	ldh a, [$0a]                                     ; $59e9: $f0 $0a
	ld d, l                                          ; $59eb: $55
	ldh a, [c]                                       ; $59ec: $f2
	rlca                                             ; $59ed: $07
	ld d, h                                          ; $59ee: $54
	ld a, $3a                                        ; $59ef: $3e $3a
	ld e, b                                          ; $59f1: $58
	jr c, jr_08f_5a39                                ; $59f2: $38 $45

	and b                                            ; $59f4: $a0
	ldh a, [$0a]                                     ; $59f5: $f0 $0a
	pop af                                           ; $59f7: $f1
	jr @+$53                                         ; $59f8: $18 $51

	ldh a, [$8c]                                     ; $59fa: $f0 $8c
	ld c, [hl]                                       ; $59fc: $4e
	ld h, e                                          ; $59fd: $63

jr_08f_59fe:
	ld b, l                                          ; $59fe: $45
	and b                                            ; $59ff: $a0
	cpl                                              ; $5a00: $2f
	ld b, e                                          ; $5a01: $43
	ld b, b                                          ; $5a02: $40
	add hl, sp                                       ; $5a03: $39
	ld a, $45                                        ; $5a04: $3e $45
	add hl, sp                                       ; $5a06: $39
	and b                                            ; $5a07: $a0

jr_08f_5a08:
	add e                                            ; $5a08: $83
	ldh a, [$2f]                                     ; $5a09: $f0 $2f
	ld e, c                                          ; $5a0b: $59
	sbc l                                            ; $5a0c: $9d
	ld d, b                                          ; $5a0d: $50
	jr c, jr_08f_5a23                                ; $5a0e: $38 $13

	ld c, d                                          ; $5a10: $4a
	ld e, h                                          ; $5a11: $5c
	ld c, [hl]                                       ; $5a12: $4e
	ld h, e                                          ; $5a13: $63
	ld b, l                                          ; $5a14: $45
	ld c, h                                          ; $5a15: $4c
	and c                                            ; $5a16: $a1
	cpl                                              ; $5a17: $2f
	ld a, e                                          ; $5a18: $7b
	dec sp                                           ; $5a19: $3b
	ld h, c                                          ; $5a1a: $61
	ld d, a                                          ; $5a1b: $57
	dec [hl]                                         ; $5a1c: $35
	halt                                             ; $5a1d: $76
	ld b, a                                          ; $5a1e: $47
	pop af                                           ; $5a1f: $f1
	dec h                                            ; $5a20: $25
	ld a, c                                          ; $5a21: $79
	ccf                                              ; $5a22: $3f

jr_08f_5a23:
	ld d, l                                          ; $5a23: $55
	ld c, l                                          ; $5a24: $4d
	add hl, bc                                       ; $5a25: $09
	ld b, b                                          ; $5a26: $40
	ld c, l                                          ; $5a27: $4d
	ld e, e                                          ; $5a28: $5b
	ld d, [hl]                                       ; $5a29: $56
	xor h                                            ; $5a2a: $ac
	ld [$47ef], a                                    ; $5a2b: $ea $ef $47

jr_08f_5a2e:
	ld h, a                                          ; $5a2e: $67
	ld d, l                                          ; $5a2f: $55
	ld h, e                                          ; $5a30: $63
	ld b, l                                          ; $5a31: $45

jr_08f_5a32:
	and b                                            ; $5a32: $a0
	cpl                                              ; $5a33: $2f
	pop af                                           ; $5a34: $f1
	daa                                              ; $5a35: $27
	ldh a, [rP1]                                     ; $5a36: $f0 $00
	ld a, [hl-]                                      ; $5a38: $3a

jr_08f_5a39:
	ld d, b                                          ; $5a39: $50
	ldh a, [$67]                                     ; $5a3a: $f0 $67
	ldh a, [$9f]                                     ; $5a3c: $f0 $9f
	ld b, [hl]                                       ; $5a3e: $46
	ld c, [hl]                                       ; $5a3f: $4e
	ld b, c                                          ; $5a40: $41
	ld b, h                                          ; $5a41: $44
	ld e, l                                          ; $5a42: $5d
	ld e, d                                          ; $5a43: $5a
	ld a, [hl-]                                      ; $5a44: $3a
	add hl, bc                                       ; $5a45: $09
	ld b, b                                          ; $5a46: $40
	add hl, sp                                       ; $5a47: $39
	xor b                                            ; $5a48: $a8
	ld [$4bf0], a                                    ; $5a49: $ea $f0 $4b
	ld b, [hl]                                       ; $5a4c: $46
	dec sp                                           ; $5a4d: $3b
	ld h, c                                          ; $5a4e: $61
	ld b, l                                          ; $5a4f: $45
	xor b                                            ; $5a50: $a8
	ld e, e                                          ; $5a51: $5b
	ld d, [hl]                                       ; $5a52: $56
	ld b, [hl]                                       ; $5a53: $46
	ld c, h                                          ; $5a54: $4c
	and b                                            ; $5a55: $a0
	cpl                                              ; $5a56: $2f
	ld c, c                                          ; $5a57: $49
	ld d, a                                          ; $5a58: $57
	ld b, [hl]                                       ; $5a59: $46
	ld e, [hl]                                       ; $5a5a: $5e
	sbc h                                            ; $5a5b: $9c
	pop af                                           ; $5a5c: $f1
	ld e, e                                          ; $5a5d: $5b
	ld c, l                                          ; $5a5e: $4d
	ld c, [hl]                                       ; $5a5f: $4e
	ld b, l                                          ; $5a60: $45
	add hl, bc                                       ; $5a61: $09
	ld a, [hl-]                                      ; $5a62: $3a
	ld d, b                                          ; $5a63: $50
	inc [hl]                                         ; $5a64: $34
	ld [$4cf1], a                                    ; $5a65: $ea $f1 $4c
	xor b                                            ; $5a68: $a8
	ldh a, [$9a]                                     ; $5a69: $f0 $9a
	ld e, h                                          ; $5a6b: $5c
	ldh a, [rTMA]                                    ; $5a6c: $f0 $06
	dec sp                                           ; $5a6e: $3b
	ccf                                              ; $5a6f: $3f
	rst SubAFromDE                                          ; $5a70: $df
	ld h, e                                          ; $5a71: $63
	and b                                            ; $5a72: $a0
	ld c, c                                          ; $5a73: $49
	ld d, h                                          ; $5a74: $54
	ld e, a                                          ; $5a75: $5f
	ld c, d                                          ; $5a76: $4a
	inc [hl]                                         ; $5a77: $34
	ld e, d                                          ; $5a78: $5a
	add hl, sp                                       ; $5a79: $39
	xor c                                            ; $5a7a: $a9
	ld d, h                                          ; $5a7b: $54
	ld b, d                                          ; $5a7c: $42
	ld [$a0e2], a                                    ; $5a7d: $ea $e2 $a0
	cpl                                              ; $5a80: $2f
	ld a, [hl]                                       ; $5a81: $7e

jr_08f_5a82:
	ld d, l                                          ; $5a82: $55
	ldh a, [rPCM12]                                  ; $5a83: $f0 $76
	ldh a, [rTMA]                                    ; $5a85: $f0 $06
	dec sp                                           ; $5a87: $3b
	ccf                                              ; $5a88: $3f
	ld c, [hl]                                       ; $5a89: $4e
	ld b, l                                          ; $5a8a: $45
	add hl, bc                                       ; $5a8b: $09
	ldh a, [$08]                                     ; $5a8c: $f0 $08
	ld e, c                                          ; $5a8e: $59
	ldh a, [$08]                                     ; $5a8f: $f0 $08
	ldh a, [$08]                                     ; $5a91: $f0 $08
	ldh a, [$08]                                     ; $5a93: $f0 $08
	xor b                                            ; $5a95: $a8
	ldh a, [$0c]                                     ; $5a96: $f0 $0c
	ld d, l                                          ; $5a98: $55
	ld d, d                                          ; $5a99: $52
	ld c, d                                          ; $5a9a: $4a
	ld c, a                                          ; $5a9b: $4f
	ld a, [hl-]                                      ; $5a9c: $3a
	inc a                                            ; $5a9d: $3c
	dec sp                                           ; $5a9e: $3b
	ldh [$a0], a                                     ; $5a9f: $e0 $a0
	cpl                                              ; $5aa1: $2f
	ld [$0964], a                                    ; $5aa2: $ea $64 $09
	ld l, a                                          ; $5aa5: $6f
	ld c, c                                          ; $5aa6: $49
	ld hl, sp+$31                                    ; $5aa7: $f8 $31
	ld d, a                                          ; $5aa9: $57
	ldh a, [rTMA]                                    ; $5aaa: $f0 $06
	add hl, sp                                       ; $5aac: $39
	inc de                                           ; $5aad: $13
	ldh a, [hDisp0_WX]                                     ; $5aae: $f0 $89
	pop af                                           ; $5ab0: $f1
	inc sp                                           ; $5ab1: $33
	ldh a, [$3d]                                     ; $5ab2: $f0 $3d
	ld a, [hl-]                                      ; $5ab4: $3a
	ld b, c                                          ; $5ab5: $41
	ccf                                              ; $5ab6: $3f
	inc [hl]                                         ; $5ab7: $34
	ld d, h                                          ; $5ab8: $54
	ld b, d                                          ; $5ab9: $42
	ldh a, [$f6]                                     ; $5aba: $f0 $f6
	ld b, a                                          ; $5abc: $47
	inc de                                           ; $5abd: $13
	di                                               ; $5abe: $f3
	sub a                                            ; $5abf: $97
	pop af                                           ; $5ac0: $f1
	ei                                               ; $5ac1: $fb
	ld a, $3a                                        ; $5ac2: $3e $3a
	jr c, jr_08f_5b08                                ; $5ac4: $38 $42

	inc a                                            ; $5ac6: $3c
	ld c, a                                          ; $5ac7: $4f
	ld c, h                                          ; $5ac8: $4c
	and b                                            ; $5ac9: $a0
	cpl                                              ; $5aca: $2f
	jp hl                                            ; $5acb: $e9


	inc bc                                           ; $5acc: $03
	add hl, bc                                       ; $5acd: $09
	ldh a, [$08]                                     ; $5ace: $f0 $08
	ld e, c                                          ; $5ad0: $59
	ldh a, [$08]                                     ; $5ad1: $f0 $08
	ldh a, [$08]                                     ; $5ad3: $f0 $08
	ldh a, [$08]                                     ; $5ad5: $f0 $08
	xor b                                            ; $5ad7: $a8
	ld c, a                                          ; $5ad8: $4f
	dec sp                                           ; $5ad9: $3b
	ld c, c                                          ; $5ada: $49
	pop af                                           ; $5adb: $f1
	db $d3                                           ; $5adc: $d3
	ld [hl], c                                       ; $5add: $71
	ld a, [hl-]                                      ; $5ade: $3a
	ld e, b                                          ; $5adf: $58
	jr c, jr_08f_5a82                                ; $5ae0: $38 $a0

	cpl                                              ; $5ae2: $2f
	ld b, e                                          ; $5ae3: $43
	ld b, [hl]                                       ; $5ae4: $46
	ld c, l                                          ; $5ae5: $4d
	inc [hl]                                         ; $5ae6: $34
	db $ed                                           ; $5ae7: $ed
	ld d, e                                          ; $5ae8: $53
	inc de                                           ; $5ae9: $13
	ld e, d                                          ; $5aea: $5a
	ld d, h                                          ; $5aeb: $54
	ld b, a                                          ; $5aec: $47
	ld h, a                                          ; $5aed: $67
	dec sp                                           ; $5aee: $3b
	dec a                                            ; $5aef: $3d
	ld b, d                                          ; $5af0: $42
	inc a                                            ; $5af1: $3c
	ld a, [hl-]                                      ; $5af2: $3a
	and c                                            ; $5af3: $a1
	ld b, [hl]                                       ; $5af4: $46
	inc [hl]                                         ; $5af5: $34
	pop af                                           ; $5af6: $f1
	adc $3a                                          ; $5af7: $ce $3a
	jr c, @-$56                                      ; $5af9: $38 $a8

	ld e, d                                          ; $5afb: $5a
	jr c, jr_08f_5b3d                                ; $5afc: $38 $3f

	and b                                            ; $5afe: $a0
	cpl                                              ; $5aff: $2f
	ld b, e                                          ; $5b00: $43
	ld e, [hl]                                       ; $5b01: $5e
	dec sp                                           ; $5b02: $3b
	and c                                            ; $5b03: $a1
	cpl                                              ; $5b04: $2f
	ld b, e                                          ; $5b05: $43
	pop af                                           ; $5b06: $f1
	ld a, [hl-]                                      ; $5b07: $3a

jr_08f_5b08:
	dec a                                            ; $5b08: $3d
	xor l                                            ; $5b09: $ad
	db $ed                                           ; $5b0a: $ed
	ld d, e                                          ; $5b0b: $53
	add a                                            ; $5b0c: $87
	ldh a, [$5b]                                     ; $5b0d: $f0 $5b
	ldh a, [$5e]                                     ; $5b0f: $f0 $5e
	and c                                            ; $5b11: $a1
	ld l, a                                          ; $5b12: $6f
	ld c, e                                          ; $5b13: $4b
	inc [hl]                                         ; $5b14: $34
	add a                                            ; $5b15: $87
	ldh a, [$5b]                                     ; $5b16: $f0 $5b
	ldh a, [$5e]                                     ; $5b18: $f0 $5e
	ld b, l                                          ; $5b1a: $45
	xor b                                            ; $5b1b: $a8
	ldh a, [c]                                       ; $5b1c: $f2
	rra                                              ; $5b1d: $1f
	ldh a, [$38]                                     ; $5b1e: $f0 $38
	ld c, e                                          ; $5b20: $4b
	and c                                            ; $5b21: $a1
	cpl                                              ; $5b22: $2f
	ld b, e                                          ; $5b23: $43
	halt                                             ; $5b24: $76
	ld c, a                                          ; $5b25: $4f
	inc [hl]                                         ; $5b26: $34
	add a                                            ; $5b27: $87
	ldh a, [$5b]                                     ; $5b28: $f0 $5b
	ldh a, [$5e]                                     ; $5b2a: $f0 $5e
	ld b, h                                          ; $5b2c: $44
	ld b, l                                          ; $5b2d: $45
	xor b                                            ; $5b2e: $a8
	ldh a, [$08]                                     ; $5b2f: $f0 $08
	ld d, b                                          ; $5b31: $50
	inc [hl]                                         ; $5b32: $34
	db $ed                                           ; $5b33: $ed
	ld d, e                                          ; $5b34: $53
	ldh a, [$0b]                                     ; $5b35: $f0 $0b
	ld h, d                                          ; $5b37: $62
	ldh a, [c]                                       ; $5b38: $f2
	ld hl, sp+$51                                    ; $5b39: $f8 $51
	ld b, l                                          ; $5b3b: $45
	xor h                                            ; $5b3c: $ac

jr_08f_5b3d:
	ldh a, [c]                                       ; $5b3d: $f2
	rlca                                             ; $5b3e: $07
	ld e, h                                          ; $5b3f: $5c
	ccf                                              ; $5b40: $3f
	and b                                            ; $5b41: $a0
	ld b, [hl]                                       ; $5b42: $46
	inc [hl]                                         ; $5b43: $34
	ld b, [hl]                                       ; $5b44: $46
	ld d, a                                          ; $5b45: $57
	ld d, e                                          ; $5b46: $53
	ld c, c                                          ; $5b47: $49
	add hl, sp                                       ; $5b48: $39
	and b                                            ; $5b49: $a0
	db $eb                                           ; $5b4a: $eb
	ccf                                              ; $5b4b: $3f
	ld c, h                                          ; $5b4c: $4c
	xor b                                            ; $5b4d: $a8
	ldh a, [$fe]                                     ; $5b4e: $f0 $fe
	add b                                            ; $5b50: $80
	inc a                                            ; $5b51: $3c
	dec sp                                           ; $5b52: $3b
	dec a                                            ; $5b53: $3d
	ld d, a                                          ; $5b54: $57
	ld a, $3f                                        ; $5b55: $3e $3f
	and b                                            ; $5b57: $a0
	cpl                                              ; $5b58: $2f
	ld b, e                                          ; $5b59: $43
	jr c, jr_08f_5b94                                ; $5b5a: $38 $38

	ld b, l                                          ; $5b5c: $45
	xor b                                            ; $5b5d: $a8
	ldh a, [$34]                                     ; $5b5e: $f0 $34
	ld b, a                                          ; $5b60: $47
	pop af                                           ; $5b61: $f1
	ld hl, sp-$0f                                    ; $5b62: $f8 $f1
	ld d, b                                          ; $5b64: $50
	ld c, a                                          ; $5b65: $4f
	ld a, [hl-]                                      ; $5b66: $3a
	inc a                                            ; $5b67: $3c
	dec sp                                           ; $5b68: $3b
	dec a                                            ; $5b69: $3d
	ld a, $a0                                        ; $5b6a: $3e $a0
	db $eb                                           ; $5b6c: $eb
	ld d, c                                          ; $5b6d: $51
	ld l, a                                          ; $5b6e: $6f
	ldh a, [rSTAT]                                   ; $5b6f: $f0 $41
	xor h                                            ; $5b71: $ac
	ldh a, [hDisp1_OBP1]                                     ; $5b72: $f0 $94
	ld [hl], c                                       ; $5b74: $71
	ccf                                              ; $5b75: $3f
	sub h                                            ; $5b76: $94
	ldh a, [rHDMA3]                                  ; $5b77: $f0 $53
	dec sp                                           ; $5b79: $3b
	dec a                                            ; $5b7a: $3d
	ld c, c                                          ; $5b7b: $49
	ld e, h                                          ; $5b7c: $5c
	ld c, a                                          ; $5b7d: $4f
	inc de                                           ; $5b7e: $13
	pop af                                           ; $5b7f: $f1
	add d                                            ; $5b80: $82
	inc a                                            ; $5b81: $3c
	ldh a, [$fe]                                     ; $5b82: $f0 $fe
	add b                                            ; $5b84: $80
	inc a                                            ; $5b85: $3c
	dec sp                                           ; $5b86: $3b
	dec a                                            ; $5b87: $3d
	ld b, d                                          ; $5b88: $42
	ld b, l                                          ; $5b89: $45
	ld c, h                                          ; $5b8a: $4c
	and b                                            ; $5b8b: $a0
	cpl                                              ; $5b8c: $2f
	ld b, e                                          ; $5b8d: $43
	ld b, [hl]                                       ; $5b8e: $46
	dec sp                                           ; $5b8f: $3b
	inc [hl]                                         ; $5b90: $34
	ld b, b                                          ; $5b91: $40
	add hl, sp                                       ; $5b92: $39
	ld b, b                                          ; $5b93: $40

jr_08f_5b94:
	add hl, sp                                       ; $5b94: $39
	xor b                                            ; $5b95: $a8
	pop af                                           ; $5b96: $f1
	add d                                            ; $5b97: $82
	inc a                                            ; $5b98: $3c
	inc [hl]                                         ; $5b99: $34
	db $eb                                           ; $5b9a: $eb
	xor a                                            ; $5b9b: $af
	ldh a, [rIF]                                     ; $5b9c: $f0 $0f
	ld e, c                                          ; $5b9e: $59
	ldh a, [$60]                                     ; $5b9f: $f0 $60
	ldh a, [$c4]                                     ; $5ba1: $f0 $c4
	ld b, d                                          ; $5ba3: $42
	inc de                                           ; $5ba4: $13
	ldh a, [rHDMA3]                                  ; $5ba5: $f0 $53
	ldh a, [$30]                                     ; $5ba7: $f0 $30
	ld b, h                                          ; $5ba9: $44
	dec sp                                           ; $5baa: $3b
	dec a                                            ; $5bab: $3d
	ld b, l                                          ; $5bac: $45
	ld c, h                                          ; $5bad: $4c
	and b                                            ; $5bae: $a0
	db $ec                                           ; $5baf: $ec
	db $f4                                           ; $5bb0: $f4
	ld c, b                                          ; $5bb1: $48
	xor h                                            ; $5bb2: $ac
	ld l, a                                          ; $5bb3: $6f
	ld c, a                                          ; $5bb4: $4f
	inc [hl]                                         ; $5bb5: $34
	ld b, l                                          ; $5bb6: $45
	ld d, l                                          ; $5bb7: $55
	ldh a, [$f4]                                     ; $5bb8: $f0 $f4
	ld e, [hl]                                       ; $5bba: $5e
	ccf                                              ; $5bbb: $3f
	ld c, [hl]                                       ; $5bbc: $4e
	ld h, e                                          ; $5bbd: $63
	xor b                                            ; $5bbe: $a8
	db $ed                                           ; $5bbf: $ed
	ld b, e                                          ; $5bc0: $43
	inc [hl]                                         ; $5bc1: $34
	add a                                            ; $5bc2: $87
	pop af                                           ; $5bc3: $f1
	inc d                                            ; $5bc4: $14
	ld a, [hl-]                                      ; $5bc5: $3a
	ld c, b                                          ; $5bc6: $48
	and b                                            ; $5bc7: $a0
	cpl                                              ; $5bc8: $2f
	ld b, e                                          ; $5bc9: $43
	ld b, [hl]                                       ; $5bca: $46
	dec sp                                           ; $5bcb: $3b
	inc [hl]                                         ; $5bcc: $34
	ld b, b                                          ; $5bcd: $40
	add hl, sp                                       ; $5bce: $39
	ld b, b                                          ; $5bcf: $40
	add hl, sp                                       ; $5bd0: $39
	xor b                                            ; $5bd1: $a8
	ld a, [hl]                                       ; $5bd2: $7e
	ld d, l                                          ; $5bd3: $55
	ldh a, [$f4]                                     ; $5bd4: $f0 $f4
	ld e, [hl]                                       ; $5bd6: $5e
	ccf                                              ; $5bd7: $3f
	ld c, [hl]                                       ; $5bd8: $4e
	ld c, h                                          ; $5bd9: $4c
	and b                                            ; $5bda: $a0
	pop af                                           ; $5bdb: $f1
	dec d                                            ; $5bdc: $15
	ld c, l                                          ; $5bdd: $4d
	ld d, b                                          ; $5bde: $50
	ld c, l                                          ; $5bdf: $4d
	ld c, [hl]                                       ; $5be0: $4e
	ld h, e                                          ; $5be1: $63
	ld e, l                                          ; $5be2: $5d
	ld d, e                                          ; $5be3: $53
	ld a, [hl-]                                      ; $5be4: $3a
	jr c, jr_08f_5c4a                                ; $5be5: $38 $63

	xor b                                            ; $5be7: $a8
	db $ed                                           ; $5be8: $ed
	ld b, e                                          ; $5be9: $43
	inc [hl]                                         ; $5bea: $34
	add a                                            ; $5beb: $87
	pop af                                           ; $5bec: $f1
	inc d                                            ; $5bed: $14
	ld a, [hl-]                                      ; $5bee: $3a
	ld c, b                                          ; $5bef: $48
	and b                                            ; $5bf0: $a0
	cpl                                              ; $5bf1: $2f
	ld b, e                                          ; $5bf2: $43
	add a                                            ; $5bf3: $87
	pop af                                           ; $5bf4: $f1
	inc d                                            ; $5bf5: $14
	ld a, [hl-]                                      ; $5bf6: $3a
	ld l, e                                          ; $5bf7: $6b
	and c                                            ; $5bf8: $a1
	ld l, a                                          ; $5bf9: $6f
	ld b, a                                          ; $5bfa: $47
	ld c, e                                          ; $5bfb: $4b
	ldh a, [rPCM12]                                  ; $5bfc: $f0 $76
	ldh a, [rTMA]                                    ; $5bfe: $f0 $06
	ld h, e                                          ; $5c00: $63
	ld a, [hl-]                                      ; $5c01: $3a
	jr c, jr_08f_5c40                                ; $5c02: $38 $3c

	ld d, b                                          ; $5c04: $50
	xor h                                            ; $5c05: $ac
	add d                                            ; $5c06: $82
	add hl, sp                                       ; $5c07: $39
	ld b, d                                          ; $5c08: $42
	ld l, [hl]                                       ; $5c09: $6e
	ld [hl], c                                       ; $5c0a: $71
	ccf                                              ; $5c0b: $3f
	ld h, h                                          ; $5c0c: $64
	ld d, l                                          ; $5c0d: $55
	ld h, e                                          ; $5c0e: $63
	and b                                            ; $5c0f: $a0
	cpl                                              ; $5c10: $2f
	ld b, e                                          ; $5c11: $43
	rst JumpTable                                          ; $5c12: $c7
	ld c, b                                          ; $5c13: $48
	and b                                            ; $5c14: $a0
	ld b, b                                          ; $5c15: $40
	ld c, l                                          ; $5c16: $4d
	ld e, e                                          ; $5c17: $5b
	ld d, [hl]                                       ; $5c18: $56
	xor h                                            ; $5c19: $ac
	ld d, c                                          ; $5c1a: $51
	ldh a, [$8c]                                     ; $5c1b: $f0 $8c
	ld d, a                                          ; $5c1d: $57
	ld d, d                                          ; $5c1e: $52
	ld a, $66                                        ; $5c1f: $3e $66
	add hl, sp                                       ; $5c21: $39
	and b                                            ; $5c22: $a0
	cpl                                              ; $5c23: $2f
	ld b, e                                          ; $5c24: $43
	ld b, b                                          ; $5c25: $40
	add hl, sp                                       ; $5c26: $39
	ld b, h                                          ; $5c27: $44
	ld c, h                                          ; $5c28: $4c
	dec [hl]                                         ; $5c29: $35
	rla                                              ; $5c2a: $17
	ld [hl-], a                                      ; $5c2b: $32
	db $ed                                           ; $5c2c: $ed
	ld d, e                                          ; $5c2d: $53
	xor h                                            ; $5c2e: $ac
	ld l, e                                          ; $5c2f: $6b
	ld d, e                                          ; $5c30: $53
	add d                                            ; $5c31: $82
	jr c, jr_08f_5c71                                ; $5c32: $38 $3d

	inc a                                            ; $5c34: $3c
	dec sp                                           ; $5c35: $3b
	dec a                                            ; $5c36: $3d
	ld b, c                                          ; $5c37: $41
	ld b, h                                          ; $5c38: $44
	ld e, a                                          ; $5c39: $5f
	add hl, sp                                       ; $5c3a: $39
	and e                                            ; $5c3b: $a3
	add hl, bc                                       ; $5c3c: $09
	ldh a, [$9a]                                     ; $5c3d: $f0 $9a
	ld e, h                                          ; $5c3f: $5c

jr_08f_5c40:
	ldh a, [rTMA]                                    ; $5c40: $f0 $06
	dec sp                                           ; $5c42: $3b
	ccf                                              ; $5c43: $3f
	ld d, l                                          ; $5c44: $55
	ld c, l                                          ; $5c45: $4d
	ccf                                              ; $5c46: $3f
	xor h                                            ; $5c47: $ac
	ld b, [hl]                                       ; $5c48: $46
	ld d, a                                          ; $5c49: $57

jr_08f_5c4a:
	ld d, e                                          ; $5c4a: $53
	ld c, c                                          ; $5c4b: $49
	add hl, sp                                       ; $5c4c: $39
	xor b                                            ; $5c4d: $a8
	ld [$a044], a                                    ; $5c4e: $ea $44 $a0
	cpl                                              ; $5c51: $2f
	ld b, e                                          ; $5c52: $43
	ld l, d                                          ; $5c53: $6a
	ldh a, [$0d]                                     ; $5c54: $f0 $0d
	ld c, e                                          ; $5c56: $4b
	inc [hl]                                         ; $5c57: $34
	halt                                             ; $5c58: $76
	inc a                                            ; $5c59: $3c
	ld d, b                                          ; $5c5a: $50
	inc de                                           ; $5c5b: $13
	ldh a, [$3b]                                     ; $5c5c: $f0 $3b
	dec sp                                           ; $5c5e: $3b
	ccf                                              ; $5c5f: $3f
	db $ec                                           ; $5c60: $ec
	ld a, [bc]                                       ; $5c61: $0a
	and c                                            ; $5c62: $a1
	ld b, l                                          ; $5c63: $45
	ld d, l                                          ; $5c64: $55
	dec sp                                           ; $5c65: $3b
	ccf                                              ; $5c66: $3f
	ld b, l                                          ; $5c67: $45
	dec [hl]                                         ; $5c68: $35
	inc h                                            ; $5c69: $24
	inc de                                           ; $5c6a: $13
	ldh a, [$a7]                                     ; $5c6b: $f0 $a7
	pop af                                           ; $5c6d: $f1
	dec de                                           ; $5c6e: $1b
	inc [hl]                                         ; $5c6f: $34
	sbc c                                            ; $5c70: $99

jr_08f_5c71:
	dec sp                                           ; $5c71: $3b
	ccf                                              ; $5c72: $3f
	ld c, [hl]                                       ; $5c73: $4e
	inc a                                            ; $5c74: $3c
	ld d, b                                          ; $5c75: $50
	and b                                            ; $5c76: $a0
	call c, $f0a8                                    ; $5c77: $dc $a8 $f0
	inc [hl]                                         ; $5c7a: $34
	ld b, a                                          ; $5c7b: $47
	inc [hl]                                         ; $5c7c: $34
	inc a                                            ; $5c7d: $3c
	ld d, d                                          ; $5c7e: $52
	ld h, e                                          ; $5c7f: $63
	ld a, [hl-]                                      ; $5c80: $3a
	ld d, l                                          ; $5c81: $55
	ccf                                              ; $5c82: $3f
	ld b, l                                          ; $5c83: $45
	and b                                            ; $5c84: $a0
	cpl                                              ; $5c85: $2f
	ld b, e                                          ; $5c86: $43
	ld e, e                                          ; $5c87: $5b
	ld d, [hl]                                       ; $5c88: $56
	ld b, [hl]                                       ; $5c89: $46
	inc [hl]                                         ; $5c8a: $34
	ld b, b                                          ; $5c8b: $40

jr_08f_5c8c:
	add hl, sp                                       ; $5c8c: $39
	ld d, c                                          ; $5c8d: $51
	ld c, [hl]                                       ; $5c8e: $4e
	ld b, l                                          ; $5c8f: $45
	and b                                            ; $5c90: $a0
	ld d, h                                          ; $5c91: $54
	ld b, d                                          ; $5c92: $42
	ldh a, [$30]                                     ; $5c93: $f0 $30
	ldh a, [$28]                                     ; $5c95: $f0 $28
	ld c, e                                          ; $5c97: $4b
	xor h                                            ; $5c98: $ac
	add b                                            ; $5c99: $80
	jr c, jr_08f_5c8c                                ; $5c9a: $38 $f0

	ld e, a                                          ; $5c9c: $5f
	ldh a, [$9b]                                     ; $5c9d: $f0 $9b
	ld c, a                                          ; $5c9f: $4f
	inc de                                           ; $5ca0: $13
	ld a, b                                          ; $5ca1: $78
	dec a                                            ; $5ca2: $3d
	ld b, c                                          ; $5ca3: $41
	ld e, e                                          ; $5ca4: $5b
	ld d, [hl]                                       ; $5ca5: $56
	ld a, [hl-]                                      ; $5ca6: $3a
	ld d, l                                          ; $5ca7: $55
	ccf                                              ; $5ca8: $3f
	and c                                            ; $5ca9: $a1
	cpl                                              ; $5caa: $2f
	ld b, e                                          ; $5cab: $43
	rst JumpTable                                          ; $5cac: $c7
	ld b, h                                          ; $5cad: $44
	ld c, h                                          ; $5cae: $4c
	dec [hl]                                         ; $5caf: $35
	rla                                              ; $5cb0: $17
	add sp, $50                                      ; $5cb1: $e8 $50
	inc de                                           ; $5cb3: $13
	add sp, -$7a                                     ; $5cb4: $e8 $86
	and e                                            ; $5cb6: $a3
	db $ed                                           ; $5cb7: $ed
	ld d, a                                          ; $5cb8: $57
	ld [$a8b7], a                                    ; $5cb9: $ea $b7 $a8
	ld d, d                                          ; $5cbc: $52
	dec a                                            ; $5cbd: $3d
	ldh a, [$3b]                                     ; $5cbe: $f0 $3b
	dec sp                                           ; $5cc0: $3b
	ccf                                              ; $5cc1: $3f
	db $eb                                           ; $5cc2: $eb
	sub b                                            ; $5cc3: $90
	inc a                                            ; $5cc4: $3c
	ld a, $50                                        ; $5cc5: $3e $50
	and c                                            ; $5cc7: $a1
	cpl                                              ; $5cc8: $2f
	ld b, e                                          ; $5cc9: $43
	db $ec                                           ; $5cca: $ec
	dec l                                            ; $5ccb: $2d
	xor b                                            ; $5ccc: $a8
	jp hl                                            ; $5ccd: $e9


	ld b, [hl]                                       ; $5cce: $46
	and b                                            ; $5ccf: $a0
	db $ed                                           ; $5cd0: $ed
	ld d, a                                          ; $5cd1: $57
	inc de                                           ; $5cd2: $13
	ld h, e                                          ; $5cd3: $63
	ld d, a                                          ; $5cd4: $57
	ld c, c                                          ; $5cd5: $49
	ld [$a8b7], a                                    ; $5cd6: $ea $b7 $a8
	ld d, d                                          ; $5cd9: $52
	dec a                                            ; $5cda: $3d
	ldh a, [$3b]                                     ; $5cdb: $f0 $3b
	dec sp                                           ; $5cdd: $3b
	ccf                                              ; $5cde: $3f
	db $eb                                           ; $5cdf: $eb
	sub b                                            ; $5ce0: $90
	inc a                                            ; $5ce1: $3c
	ld a, $50                                        ; $5ce2: $3e $50
	and c                                            ; $5ce4: $a1
	ld b, [hl]                                       ; $5ce5: $46
	ld d, d                                          ; $5ce6: $52
	ld d, a                                          ; $5ce7: $57
	inc de                                           ; $5ce8: $13
	sub b                                            ; $5ce9: $90
	ld a, $55                                        ; $5cea: $3e $55
	ld a, [hl-]                                      ; $5cec: $3a
	inc a                                            ; $5ced: $3c
	dec sp                                           ; $5cee: $3b
	ldh [$a8], a                                     ; $5cef: $e0 $a8
	ld d, h                                          ; $5cf1: $54
	ld b, d                                          ; $5cf2: $42
	ldh a, [$d6]                                     ; $5cf3: $f0 $d6
	ld c, e                                          ; $5cf5: $4b
	ld a, a                                          ; $5cf6: $7f
	ld h, d                                          ; $5cf7: $62
	ldh a, [$9a]                                     ; $5cf8: $f0 $9a
	ld e, l                                          ; $5cfa: $5d
	ccf                                              ; $5cfb: $3f
	ldh a, [$a3]                                     ; $5cfc: $f0 $a3
	ld e, b                                          ; $5cfe: $58
	ld c, [hl]                                       ; $5cff: $4e
	and c                                            ; $5d00: $a1
	cpl                                              ; $5d01: $2f
	ld b, e                                          ; $5d02: $43
	ld [hl], b                                       ; $5d03: $70
	ld [hl], c                                       ; $5d04: $71
	ld b, c                                          ; $5d05: $41
	ld c, h                                          ; $5d06: $4c
	xor b                                            ; $5d07: $a8
	ld e, e                                          ; $5d08: $5b
	ld d, [hl]                                       ; $5d09: $56
	ld b, [hl]                                       ; $5d0a: $46
	inc [hl]                                         ; $5d0b: $34
	ld d, d                                          ; $5d0c: $52
	dec a                                            ; $5d0d: $3d
	ld l, d                                          ; $5d0e: $6a
	ldh a, [$0d]                                     ; $5d0f: $f0 $0d
	inc de                                           ; $5d11: $13
	db $ec                                           ; $5d12: $ec
	inc l                                            ; $5d13: $2c
	ld b, l                                          ; $5d14: $45
	and b                                            ; $5d15: $a0
	db $ed                                           ; $5d16: $ed
	ld d, a                                          ; $5d17: $57
	ld [$a8b7], a                                    ; $5d18: $ea $b7 $a8
	ld d, d                                          ; $5d1b: $52
	dec a                                            ; $5d1c: $3d
	ldh a, [$3b]                                     ; $5d1d: $f0 $3b
	dec sp                                           ; $5d1f: $3b
	ccf                                              ; $5d20: $3f
	ld c, a                                          ; $5d21: $4f
	inc de                                           ; $5d22: $13
	ld [$a0e7], a                                    ; $5d23: $ea $e7 $a0
	cpl                                              ; $5d26: $2f
	ld b, e                                          ; $5d27: $43
	ld b, b                                          ; $5d28: $40
	ld c, l                                          ; $5d29: $4d
	ld e, e                                          ; $5d2a: $5b
	ld d, [hl]                                       ; $5d2b: $56
	xor h                                            ; $5d2c: $ac
	jp hl                                            ; $5d2d: $e9


	ld b, [hl]                                       ; $5d2e: $46
	and b                                            ; $5d2f: $a0
	db $ed                                           ; $5d30: $ed
	ld d, a                                          ; $5d31: $57
	xor h                                            ; $5d32: $ac
	ld h, e                                          ; $5d33: $63
	ld d, a                                          ; $5d34: $57
	ld c, c                                          ; $5d35: $49
	sub b                                            ; $5d36: $90
	ld a, $71                                        ; $5d37: $3e $71
	dec a                                            ; $5d39: $3d
	ld h, e                                          ; $5d3a: $63
	and b                                            ; $5d3b: $a0
	cpl                                              ; $5d3c: $2f
	ld b, e                                          ; $5d3d: $43
	ld b, b                                          ; $5d3e: $40
	add hl, sp                                       ; $5d3f: $39
	inc [hl]                                         ; $5d40: $34
	db $ec                                           ; $5d41: $ec
	cp c                                             ; $5d42: $b9
	xor b                                            ; $5d43: $a8
	ld b, [hl]                                       ; $5d44: $46
	dec sp                                           ; $5d45: $3b
	inc [hl]                                         ; $5d46: $34
	ld d, d                                          ; $5d47: $52
	dec a                                            ; $5d48: $3d
	ld l, d                                          ; $5d49: $6a
	ldh a, [$0d]                                     ; $5d4a: $f0 $0d
	inc de                                           ; $5d4c: $13
	jp hl                                            ; $5d4d: $e9


	or b                                             ; $5d4e: $b0
	and c                                            ; $5d4f: $a1
	ldh a, [$cc]                                     ; $5d50: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5d52: $f0 $88
	ld d, e                                          ; $5d54: $53
	ldh a, [$c9]                                     ; $5d55: $f0 $c9
	jr c, jr_08f_5d98                                ; $5d57: $38 $3f

	ld c, l                                          ; $5d59: $4d
	ld a, e                                          ; $5d5a: $7b
	xor h                                            ; $5d5b: $ac
	ld [$a8e7], a                                    ; $5d5c: $ea $e7 $a8
	ld [$f0f7], a                                    ; $5d5f: $ea $f7 $f0
	ld [$08f0], sp                                   ; $5d62: $08 $f0 $08
	and b                                            ; $5d65: $a0
	add b                                            ; $5d66: $80
	ld d, d                                          ; $5d67: $52
	ld d, b                                          ; $5d68: $50
	ld a, [hl-]                                      ; $5d69: $3a
	inc a                                            ; $5d6a: $3c
	dec sp                                           ; $5d6b: $3b
	dec a                                            ; $5d6c: $3d
	ld h, e                                          ; $5d6d: $63
	xor b                                            ; $5d6e: $a8
	add hl, bc                                       ; $5d6f: $09
	cpl                                              ; $5d70: $2f
	ld b, e                                          ; $5d71: $43
	rst JumpTable                                          ; $5d72: $c7
	xor l                                            ; $5d73: $ad
	ld b, [hl]                                       ; $5d74: $46
	dec sp                                           ; $5d75: $3b
	inc [hl]                                         ; $5d76: $34
	ld d, d                                          ; $5d77: $52
	dec a                                            ; $5d78: $3d
	ld l, d                                          ; $5d79: $6a
	ldh a, [$0d]                                     ; $5d7a: $f0 $0d
	inc de                                           ; $5d7c: $13
	jp hl                                            ; $5d7d: $e9


	or b                                             ; $5d7e: $b0
	and c                                            ; $5d7f: $a1
	ld h, e                                          ; $5d80: $63
	ld d, a                                          ; $5d81: $57
	ld c, c                                          ; $5d82: $49
	sub b                                            ; $5d83: $90
	ld a, $71                                        ; $5d84: $3e $71
	dec a                                            ; $5d86: $3d
	ld h, e                                          ; $5d87: $63
	and b                                            ; $5d88: $a0
	cpl                                              ; $5d89: $2f
	ld b, e                                          ; $5d8a: $43
	ld d, d                                          ; $5d8b: $52
	dec a                                            ; $5d8c: $3d
	ld l, d                                          ; $5d8d: $6a
	ldh a, [$0d]                                     ; $5d8e: $f0 $0d
	inc de                                           ; $5d90: $13
	jp hl                                            ; $5d91: $e9


	or b                                             ; $5d92: $b0
	and c                                            ; $5d93: $a1
	ld b, [hl]                                       ; $5d94: $46
	ld d, d                                          ; $5d95: $52
	ld d, a                                          ; $5d96: $57
	xor h                                            ; $5d97: $ac

jr_08f_5d98:
	sub b                                            ; $5d98: $90
	ld a, $55                                        ; $5d99: $3e $55
	ld a, [hl-]                                      ; $5d9b: $3a
	inc a                                            ; $5d9c: $3c
	dec sp                                           ; $5d9d: $3b
	dec a                                            ; $5d9e: $3d
	ld h, e                                          ; $5d9f: $63
	and b                                            ; $5da0: $a0
	cpl                                              ; $5da1: $2f
	ld b, e                                          ; $5da2: $43
	rst JumpTable                                          ; $5da3: $c7
	xor l                                            ; $5da4: $ad
	ld d, d                                          ; $5da5: $52
	dec a                                            ; $5da6: $3d
	ld l, d                                          ; $5da7: $6a
	ldh a, [$0d]                                     ; $5da8: $f0 $0d
	inc de                                           ; $5daa: $13
	jp hl                                            ; $5dab: $e9


	or b                                             ; $5dac: $b0
	and c                                            ; $5dad: $a1
	ld d, h                                          ; $5dae: $54
	ld b, d                                          ; $5daf: $42
	pop af                                           ; $5db0: $f1
	rst SubAFromHL                                          ; $5db1: $d7
	ldh a, [$0d]                                     ; $5db2: $f0 $0d
	ld c, d                                          ; $5db4: $4a

jr_08f_5db5:
	xor h                                            ; $5db5: $ac
	ldh a, [$d6]                                     ; $5db6: $f0 $d6
	ld h, d                                          ; $5db8: $62
	pop af                                           ; $5db9: $f1
	rst SubAFromBC                                          ; $5dba: $e7
	sbc c                                            ; $5dbb: $99
	ld d, c                                          ; $5dbc: $51
	ld c, [hl]                                       ; $5dbd: $4e
	ld a, [hl-]                                      ; $5dbe: $3a
	ld b, c                                          ; $5dbf: $41
	ccf                                              ; $5dc0: $3f
	xor h                                            ; $5dc1: $ac
	ldh a, [c]                                       ; $5dc2: $f2
	jr z, jr_08f_5db5                                ; $5dc3: $28 $f0

	rst GetHLinHL                                          ; $5dc5: $cf
	ld a, $38                                        ; $5dc6: $3e $38
	ld h, e                                          ; $5dc8: $63
	ld c, h                                          ; $5dc9: $4c
	and b                                            ; $5dca: $a0
	cpl                                              ; $5dcb: $2f
	ld b, e                                          ; $5dcc: $43
	rst JumpTable                                          ; $5dcd: $c7
	ld b, h                                          ; $5dce: $44
	ld c, h                                          ; $5dcf: $4c
	ld c, b                                          ; $5dd0: $48
	and b                                            ; $5dd1: $a0
	add b                                            ; $5dd2: $80
	ld d, d                                          ; $5dd3: $52
	ld d, b                                          ; $5dd4: $50
	ld a, [hl-]                                      ; $5dd5: $3a
	inc a                                            ; $5dd6: $3c
	dec sp                                           ; $5dd7: $3b
	dec a                                            ; $5dd8: $3d
	ld h, e                                          ; $5dd9: $63
	and b                                            ; $5dda: $a0
	cpl                                              ; $5ddb: $2f
	ld b, e                                          ; $5ddc: $43
	rst JumpTable                                          ; $5ddd: $c7
	xor l                                            ; $5dde: $ad
	db $eb                                           ; $5ddf: $eb
	ccf                                              ; $5de0: $3f
	and b                                            ; $5de1: $a0
	ld d, h                                          ; $5de2: $54
	ld b, c                                          ; $5de3: $41
	ld a, [hl-]                                      ; $5de4: $3a
	ldh a, [$28]                                     ; $5de5: $f0 $28
	xor h                                            ; $5de7: $ac
	ld a, b                                          ; $5de8: $78
	ld c, [hl]                                       ; $5de9: $4e
	ld b, c                                          ; $5dea: $41
	ld e, e                                          ; $5deb: $5b
	ld d, [hl]                                       ; $5dec: $56
	ld a, [hl-]                                      ; $5ded: $3a
	inc a                                            ; $5dee: $3c
	dec sp                                           ; $5def: $3b
	dec a                                            ; $5df0: $3d
	ld h, e                                          ; $5df1: $63
	and b                                            ; $5df2: $a0
	cpl                                              ; $5df3: $2f
	ld b, e                                          ; $5df4: $43
	xor $10                                          ; $5df5: $ee $10
	xor b                                            ; $5df7: $a8
	add sp, -$72                                     ; $5df8: $e8 $8e
	and e                                            ; $5dfa: $a3
	ld b, b                                          ; $5dfb: $40
	add hl, sp                                       ; $5dfc: $39
	ld b, b                                          ; $5dfd: $40
	add hl, sp                                       ; $5dfe: $39
	ld c, b                                          ; $5dff: $48
	and b                                            ; $5e00: $a0
	cpl                                              ; $5e01: $2f
	ld b, e                                          ; $5e02: $43
	db $eb                                           ; $5e03: $eb
	rst FarCall                                          ; $5e04: $f7
	and c                                            ; $5e05: $a1
	cpl                                              ; $5e06: $2f
	ld b, e                                          ; $5e07: $43
	ld b, [hl]                                       ; $5e08: $46
	ld d, a                                          ; $5e09: $57
	ld d, e                                          ; $5e0a: $53
	ld c, c                                          ; $5e0b: $49
	add hl, sp                                       ; $5e0c: $39
	xor b                                            ; $5e0d: $a8
	ldh a, [$29]                                     ; $5e0e: $f0 $29
	ld a, $38                                        ; $5e10: $3e $38
	ld b, l                                          ; $5e12: $45
	xor b                                            ; $5e13: $a8
	ld [hl-], a                                      ; $5e14: $32
	db $ed                                           ; $5e15: $ed
	ld d, e                                          ; $5e16: $53
	ld b, a                                          ; $5e17: $47
	db $eb                                           ; $5e18: $eb
	dec a                                            ; $5e19: $3d
	inc de                                           ; $5e1a: $13
	ld c, a                                          ; $5e1b: $4f
	ld d, b                                          ; $5e1c: $50
	ld e, [hl]                                       ; $5e1d: $5e
	ld c, [hl]                                       ; $5e1e: $4e
	ld a, [hl-]                                      ; $5e1f: $3a
	ld b, c                                          ; $5e20: $41
	ccf                                              ; $5e21: $3f
	xor h                                            ; $5e22: $ac
	halt                                             ; $5e23: $76
	ld c, e                                          ; $5e24: $4b
	pop af                                           ; $5e25: $f1
	and d                                            ; $5e26: $a2
	ld a, c                                          ; $5e27: $79
	pop af                                           ; $5e28: $f1
	ld b, d                                          ; $5e29: $42
	ld b, h                                          ; $5e2a: $44
	ld e, c                                          ; $5e2b: $59
	scf                                              ; $5e2c: $37
	inc sp                                           ; $5e2d: $33
	add hl, bc                                       ; $5e2e: $09
	ld b, b                                          ; $5e2f: $40
	ld c, l                                          ; $5e30: $4d
	ld e, e                                          ; $5e31: $5b
	ld d, [hl]                                       ; $5e32: $56
	ld c, b                                          ; $5e33: $48
	add hl, bc                                       ; $5e34: $09
	cpl                                              ; $5e35: $2f
	ld b, e                                          ; $5e36: $43
	ld b, [hl]                                       ; $5e37: $46
	dec sp                                           ; $5e38: $3b
	inc [hl]                                         ; $5e39: $34
	db $ed                                           ; $5e3a: $ed
	ld d, e                                          ; $5e3b: $53
	xor b                                            ; $5e3c: $a8
	jp hl                                            ; $5e3d: $e9


	ld d, c                                          ; $5e3e: $51
	and b                                            ; $5e3f: $a0
	cpl                                              ; $5e40: $2f
	ld [hl-], a                                      ; $5e41: $32
	db $eb                                           ; $5e42: $eb
	dec a                                            ; $5e43: $3d
	inc de                                           ; $5e44: $13
	ldh a, [rAUD2LEN]                                ; $5e45: $f0 $16
	ldh a, [$c0]                                     ; $5e47: $f0 $c0
	ld a, $3f                                        ; $5e49: $3e $3f
	ld h, h                                          ; $5e4b: $64
	db $ec                                           ; $5e4c: $ec
	ld l, $a3                                        ; $5e4d: $2e $a3
	ld d, $a8                                        ; $5e4f: $16 $a8
	ld b, b                                          ; $5e51: $40
	ld c, l                                          ; $5e52: $4d
	ld e, e                                          ; $5e53: $5b
	ld d, [hl]                                       ; $5e54: $56
	inc [hl]                                         ; $5e55: $34
	inc h                                            ; $5e56: $24
	ld e, b                                          ; $5e57: $58
	ld b, l                                          ; $5e58: $45
	ld a, [hl-]                                      ; $5e59: $3a
	ld d, b                                          ; $5e5a: $50
	and b                                            ; $5e5b: $a0
	ld d, $a8                                        ; $5e5c: $16 $a8
	ld [$5121], a                                    ; $5e5e: $ea $21 $51
	ld c, [hl]                                       ; $5e61: $4e
	ld h, e                                          ; $5e62: $63
	and b                                            ; $5e63: $a0
	ldh a, [rHDMA5]                                  ; $5e64: $f0 $55
	ldh a, [rBCPS]                                   ; $5e66: $f0 $68
	ld d, c                                          ; $5e68: $51
	ld c, [hl]                                       ; $5e69: $4e
	ld h, e                                          ; $5e6a: $63
	and b                                            ; $5e6b: $a0
	add hl, bc                                       ; $5e6c: $09
	xor $10                                          ; $5e6d: $ee $10
	and b                                            ; $5e6f: $a0
	cpl                                              ; $5e70: $2f
	ld b, e                                          ; $5e71: $43
	ld h, h                                          ; $5e72: $64
	ld e, c                                          ; $5e73: $59
	jr c, jr_08f_5eaa                                ; $5e74: $38 $34

	db $ed                                           ; $5e76: $ed
	ld d, c                                          ; $5e77: $51
	ld e, b                                          ; $5e78: $58
	ld e, c                                          ; $5e79: $59
	ld b, c                                          ; $5e7a: $41
	xor b                                            ; $5e7b: $a8
	sbc c                                            ; $5e7c: $99
	dec sp                                           ; $5e7d: $3b
	ccf                                              ; $5e7e: $3f
	ld d, l                                          ; $5e7f: $55
	ld c, l                                          ; $5e80: $4d
	ld e, c                                          ; $5e81: $59
	and b                                            ; $5e82: $a0
	cpl                                              ; $5e83: $2f
	ld b, e                                          ; $5e84: $43
	db $ec                                           ; $5e85: $ec
	reti                                             ; $5e86: $d9


	xor h                                            ; $5e87: $ac
	ld d, h                                          ; $5e88: $54
	ld b, d                                          ; $5e89: $42
	pop af                                           ; $5e8a: $f1
	ld de, $573a                                     ; $5e8b: $11 $3a $57
	ld e, e                                          ; $5e8e: $5b
	ld d, [hl]                                       ; $5e8f: $56
	xor h                                            ; $5e90: $ac
	ldh a, [$e1]                                     ; $5e91: $f0 $e1
	ldh a, [rSB]                                     ; $5e93: $f0 $01
	ld d, b                                          ; $5e95: $50
	ld c, l                                          ; $5e96: $4d
	ld c, [hl]                                       ; $5e97: $4e
	ld b, l                                          ; $5e98: $45
	ld a, [hl-]                                      ; $5e99: $3a
	ld [hl], h                                       ; $5e9a: $74
	and b                                            ; $5e9b: $a0
	cpl                                              ; $5e9c: $2f
	ld b, e                                          ; $5e9d: $43
	db $eb                                           ; $5e9e: $eb
	inc [hl]                                         ; $5e9f: $34
	xor h                                            ; $5ea0: $ac
	ldh a, [rSVBK]                                   ; $5ea1: $f0 $70
	ld b, a                                          ; $5ea3: $47
	db $ed                                           ; $5ea4: $ed
	ld e, b                                          ; $5ea5: $58
	and b                                            ; $5ea6: $a0
	cpl                                              ; $5ea7: $2f
	ld b, e                                          ; $5ea8: $43
	db $eb                                           ; $5ea9: $eb

jr_08f_5eaa:
	ld a, [$ac4b]                                    ; $5eaa: $fa $4b $ac
	ld c, c                                          ; $5ead: $49
	add hl, sp                                       ; $5eae: $39
	ld c, c                                          ; $5eaf: $49
	add hl, sp                                       ; $5eb0: $39
	ld a, b                                          ; $5eb1: $78
	ld a, [hl-]                                      ; $5eb2: $3a
	inc a                                            ; $5eb3: $3c
	dec sp                                           ; $5eb4: $3b
	dec a                                            ; $5eb5: $3d
	ld a, [hl-]                                      ; $5eb6: $3a
	and b                                            ; $5eb7: $a0
	cpl                                              ; $5eb8: $2f
	ld b, e                                          ; $5eb9: $43
	ld e, d                                          ; $5eba: $5a
	add hl, sp                                       ; $5ebb: $39
	ld a, $3d                                        ; $5ebc: $3e $3d
	ld b, c                                          ; $5ebe: $41
	ld b, h                                          ; $5ebf: $44
	ld e, a                                          ; $5ec0: $5f
	add hl, sp                                       ; $5ec1: $39
	xor c                                            ; $5ec2: $a9
	db $eb                                           ; $5ec3: $eb
	inc [hl]                                         ; $5ec4: $34
	xor h                                            ; $5ec5: $ac
	ldh a, [rSVBK]                                   ; $5ec6: $f0 $70
	ld b, a                                          ; $5ec8: $47
	db $ed                                           ; $5ec9: $ed
	ld e, b                                          ; $5eca: $58
	and b                                            ; $5ecb: $a0
	cpl                                              ; $5ecc: $2f
	ld b, e                                          ; $5ecd: $43
	db $eb                                           ; $5ece: $eb
	ld a, [$7034]                                    ; $5ecf: $fa $34 $70
	ld [hl], c                                       ; $5ed2: $71
	ld b, c                                          ; $5ed3: $41
	ld c, h                                          ; $5ed4: $4c
	xor b                                            ; $5ed5: $a8
	add sp, -$21                                     ; $5ed6: $e8 $df
	xor h                                            ; $5ed8: $ac
	jp hl                                            ; $5ed9: $e9


	xor [hl]                                         ; $5eda: $ae
	and b                                            ; $5edb: $a0
	db $ed                                           ; $5edc: $ed
	ld e, [hl]                                       ; $5edd: $5e
	xor b                                            ; $5ede: $a8
	ld l, a                                          ; $5edf: $6f
	ld c, a                                          ; $5ee0: $4f
	xor h                                            ; $5ee1: $ac
	ld l, d                                          ; $5ee2: $6a
	ld a, b                                          ; $5ee3: $78
	dec a                                            ; $5ee4: $3d
	ld c, c                                          ; $5ee5: $49
	ld d, h                                          ; $5ee6: $54
	ld e, a                                          ; $5ee7: $5f
	ld b, h                                          ; $5ee8: $44
	ld a, $48                                        ; $5ee9: $3e $48
	and b                                            ; $5eeb: $a0
	cpl                                              ; $5eec: $2f
	ld b, e                                          ; $5eed: $43
	db $ec                                           ; $5eee: $ec
	cp c                                             ; $5eef: $b9
	dec [hl]                                         ; $5ef0: $35
	rla                                              ; $5ef1: $17
	jp hl                                            ; $5ef2: $e9


	pop de                                           ; $5ef3: $d1
	inc de                                           ; $5ef4: $13
	jp hl                                            ; $5ef5: $e9


	jp nc, $f1a3                                     ; $5ef6: $d2 $a3 $f1

	ld d, d                                          ; $5ef9: $52
	sbc c                                            ; $5efa: $99
	dec sp                                           ; $5efb: $3b
	dec a                                            ; $5efc: $3d
	ld h, e                                          ; $5efd: $63
	ld b, l                                          ; $5efe: $45
	xor b                                            ; $5eff: $a8
	ld c, a                                          ; $5f00: $4f
	add hl, sp                                       ; $5f01: $39
	inc [hl]                                         ; $5f02: $34
	pop af                                           ; $5f03: $f1
	ld l, a                                          ; $5f04: $6f
	ld b, d                                          ; $5f05: $42
	ld c, c                                          ; $5f06: $49
	ld d, h                                          ; $5f07: $54
	ld b, a                                          ; $5f08: $47
	inc de                                           ; $5f09: $13
	db $ec                                           ; $5f0a: $ec
	rlca                                             ; $5f0b: $07
	ld c, c                                          ; $5f0c: $49
	ld [hl], a                                       ; $5f0d: $77
	dec sp                                           ; $5f0e: $3b
	dec a                                            ; $5f0f: $3d
	ld h, e                                          ; $5f10: $63
	ld b, l                                          ; $5f11: $45
	and b                                            ; $5f12: $a0
	cpl                                              ; $5f13: $2f
	ld b, e                                          ; $5f14: $43
	ld [hl], b                                       ; $5f15: $70
	ld [hl], c                                       ; $5f16: $71
	ld b, c                                          ; $5f17: $41
	xor b                                            ; $5f18: $a8
	ldh a, [$5c]                                     ; $5f19: $f0 $5c
	inc a                                            ; $5f1b: $3c
	dec sp                                           ; $5f1c: $3b
	dec a                                            ; $5f1d: $3d
	and b                                            ; $5f1e: $a0
	ldh a, [$c7]                                     ; $5f1f: $f0 $c7
	ld d, c                                          ; $5f21: $51
	ldh a, [$cb]                                     ; $5f22: $f0 $cb
	ld b, l                                          ; $5f24: $45
	xor b                                            ; $5f25: $a8
	ld c, a                                          ; $5f26: $4f
	add hl, sp                                       ; $5f27: $39
	inc [hl]                                         ; $5f28: $34
	pop af                                           ; $5f29: $f1
	ld l, a                                          ; $5f2a: $6f
	ld b, d                                          ; $5f2b: $42
	ld c, c                                          ; $5f2c: $49
	ld d, h                                          ; $5f2d: $54
	ld b, a                                          ; $5f2e: $47
	inc de                                           ; $5f2f: $13
	ld h, a                                          ; $5f30: $67
	ld d, l                                          ; $5f31: $55
	ld c, c                                          ; $5f32: $49
	ld d, h                                          ; $5f33: $54
	ld b, l                                          ; $5f34: $45
	and b                                            ; $5f35: $a0
	cpl                                              ; $5f36: $2f
	ld b, e                                          ; $5f37: $43
	ld [hl], b                                       ; $5f38: $70
	ld [hl], c                                       ; $5f39: $71
	ld b, c                                          ; $5f3a: $41
	ld b, l                                          ; $5f3b: $45
	xor b                                            ; $5f3c: $a8
	ld c, a                                          ; $5f3d: $4f
	add hl, sp                                       ; $5f3e: $39
	ldh a, [hDisp0_SCX]                                     ; $5f3f: $f0 $84
	ldh a, [$0d]                                     ; $5f41: $f0 $0d
	ld c, c                                          ; $5f43: $49
	ld a, $3a                                        ; $5f44: $3e $3a
	jr c, jr_08f_5f84                                ; $5f46: $38 $3c

	ld d, b                                          ; $5f48: $50
	and b                                            ; $5f49: $a0
	cpl                                              ; $5f4a: $2f
	ld b, e                                          ; $5f4b: $43
	sbc c                                            ; $5f4c: $99
	dec sp                                           ; $5f4d: $3b
	dec a                                            ; $5f4e: $3d
	and c                                            ; $5f4f: $a1
	db $ec                                           ; $5f50: $ec
	db $10                                           ; $5f51: $10
	xor h                                            ; $5f52: $ac
	ld l, d                                          ; $5f53: $6a
	ld a, b                                          ; $5f54: $78
	dec a                                            ; $5f55: $3d
	ld c, c                                          ; $5f56: $49
	ld d, h                                          ; $5f57: $54
	ld e, a                                          ; $5f58: $5f
	ld b, l                                          ; $5f59: $45
	and b                                            ; $5f5a: $a0
	cpl                                              ; $5f5b: $2f
	ld b, e                                          ; $5f5c: $43
	jp hl                                            ; $5f5d: $e9


	dec h                                            ; $5f5e: $25
	and b                                            ; $5f5f: $a0
	db $ed                                           ; $5f60: $ed
	ld e, [hl]                                       ; $5f61: $5e
	xor b                                            ; $5f62: $a8
	ld l, a                                          ; $5f63: $6f
	ld c, a                                          ; $5f64: $4f
	inc [hl]                                         ; $5f65: $34
	ld l, d                                          ; $5f66: $6a
	ld a, b                                          ; $5f67: $78
	dec a                                            ; $5f68: $3d
	ld c, c                                          ; $5f69: $49
	ld d, h                                          ; $5f6a: $54
	ld e, a                                          ; $5f6b: $5f
	ld b, l                                          ; $5f6c: $45
	and b                                            ; $5f6d: $a0
	db $ed                                           ; $5f6e: $ed
	ld e, [hl]                                       ; $5f6f: $5e
	xor b                                            ; $5f70: $a8
	ld e, b                                          ; $5f71: $58
	ld b, [hl]                                       ; $5f72: $46
	inc [hl]                                         ; $5f73: $34
	ldh a, [$0a]                                     ; $5f74: $f0 $0a
	ld d, l                                          ; $5f76: $55
	call $2fa0                                       ; $5f77: $cd $a0 $2f
	ld b, e                                          ; $5f7a: $43
	db $eb                                           ; $5f7b: $eb
	ld a, [$f034]                                    ; $5f7c: $fa $34 $f0
	rst JumpTable                                          ; $5f7f: $c7
	jr c, jr_08f_5fbc                                ; $5f80: $38 $3a

	xor b                                            ; $5f82: $a8
	db $eb                                           ; $5f83: $eb

jr_08f_5f84:
	rst FarCall                                          ; $5f84: $f7
	inc a                                            ; $5f85: $3c
	ld a, [hl-]                                      ; $5f86: $3a
	ld c, b                                          ; $5f87: $48
	and c                                            ; $5f88: $a1
	ld l, e                                          ; $5f89: $6b
	inc a                                            ; $5f8a: $3c
	xor h                                            ; $5f8b: $ac
	pop af                                           ; $5f8c: $f1
	cp d                                             ; $5f8d: $ba
	ld d, l                                          ; $5f8e: $55
	ld a, [hl-]                                      ; $5f8f: $3a
	dec sp                                           ; $5f90: $3b
	ccf                                              ; $5f91: $3f
	ld e, h                                          ; $5f92: $5c
	ld h, c                                          ; $5f93: $61
	ld d, [hl]                                       ; $5f94: $56
	dec sp                                           ; $5f95: $3b
	dec a                                            ; $5f96: $3d
	and b                                            ; $5f97: $a0
	cpl                                              ; $5f98: $2f
	ld b, e                                          ; $5f99: $43
	pop af                                           ; $5f9a: $f1
	sbc d                                            ; $5f9b: $9a
	dec sp                                           ; $5f9c: $3b
	ccf                                              ; $5f9d: $3f
	inc [hl]                                         ; $5f9e: $34
	pop af                                           ; $5f9f: $f1
	cp d                                             ; $5fa0: $ba
	ld d, l                                          ; $5fa1: $55
	ld a, [hl-]                                      ; $5fa2: $3a
	ld c, [hl]                                       ; $5fa3: $4e
	ldh a, [c]                                       ; $5fa4: $f2
	ld a, e                                          ; $5fa5: $7b
	ldh a, [c]                                       ; $5fa6: $f2
	ld a, h                                          ; $5fa7: $7c
	inc de                                           ; $5fa8: $13
	ld b, h                                          ; $5fa9: $44
	ld b, l                                          ; $5faa: $45
	ld c, h                                          ; $5fab: $4c
	and b                                            ; $5fac: $a0
	ld [$acab], a                                    ; $5fad: $ea $ab $ac
	pop af                                           ; $5fb0: $f1
	ld d, d                                          ; $5fb1: $52
	db $ed                                           ; $5fb2: $ed
	ld l, h                                          ; $5fb3: $6c
	ld c, h                                          ; $5fb4: $4c
	and b                                            ; $5fb5: $a0
	cpl                                              ; $5fb6: $2f
	ld b, e                                          ; $5fb7: $43
	ld b, b                                          ; $5fb8: $40
	add hl, sp                                       ; $5fb9: $39
	ld b, h                                          ; $5fba: $44
	ld c, h                                          ; $5fbb: $4c

jr_08f_5fbc:
	xor b                                            ; $5fbc: $a8
	ld d, c                                          ; $5fbd: $51
	ld [hl], b                                       ; $5fbe: $70
	ld d, l                                          ; $5fbf: $55
	db $ed                                           ; $5fc0: $ed
	ld l, h                                          ; $5fc1: $6c
	ld c, h                                          ; $5fc2: $4c
	and b                                            ; $5fc3: $a0
	ld [$acab], a                                    ; $5fc4: $ea $ab $ac
	ldh a, [c]                                       ; $5fc7: $f2
	rst FarCall                                          ; $5fc8: $f7
	ld a, $55                                        ; $5fc9: $3e $55
	ld a, [hl-]                                      ; $5fcb: $3a
	dec sp                                           ; $5fcc: $3b
	ccf                                              ; $5fcd: $3f
	ld e, h                                          ; $5fce: $5c
	dec a                                            ; $5fcf: $3d
	ld c, h                                          ; $5fd0: $4c
	and b                                            ; $5fd1: $a0
	cpl                                              ; $5fd2: $2f
	ld b, e                                          ; $5fd3: $43
	adc b                                            ; $5fd4: $88
	sub c                                            ; $5fd5: $91
	xor h                                            ; $5fd6: $ac
	pop af                                           ; $5fd7: $f1
	sub b                                            ; $5fd8: $90
	ld [hl], b                                       ; $5fd9: $70
	ld a, $6e                                        ; $5fda: $3e $6e
	ld d, c                                          ; $5fdc: $51
	ld d, l                                          ; $5fdd: $55
	ld a, [hl-]                                      ; $5fde: $3a
	dec sp                                           ; $5fdf: $3b
	dec a                                            ; $5fe0: $3d
	ld b, l                                          ; $5fe1: $45
	and b                                            ; $5fe2: $a0
	db $eb                                           ; $5fe3: $eb
	ld d, c                                          ; $5fe4: $51
	xor h                                            ; $5fe5: $ac
	db $ec                                           ; $5fe6: $ec
	ld sp, hl                                        ; $5fe7: $f9
	ld [$acbd], a                                    ; $5fe8: $ea $bd $ac
	ld [$a08d], a                                    ; $5feb: $ea $8d $a0
	cpl                                              ; $5fee: $2f
	ld b, e                                          ; $5fef: $43
	jp hl                                            ; $5ff0: $e9


	xor l                                            ; $5ff1: $ad
	xor b                                            ; $5ff2: $a8
	ld b, [hl]                                       ; $5ff3: $46
	ld d, a                                          ; $5ff4: $57
	ld d, e                                          ; $5ff5: $53
	ld c, c                                          ; $5ff6: $49
	add hl, sp                                       ; $5ff7: $39
	and b                                            ; $5ff8: $a0
	db $eb                                           ; $5ff9: $eb
	ld d, c                                          ; $5ffa: $51
	xor h                                            ; $5ffb: $ac
	db $ec                                           ; $5ffc: $ec
	ld sp, hl                                        ; $5ffd: $f9
	ld [$acbd], a                                    ; $5ffe: $ea $bd $ac
	ld [$a08e], a                                    ; $6001: $ea $8e $a0
	cpl                                              ; $6004: $2f
	ld b, e                                          ; $6005: $43
	ld b, b                                          ; $6006: $40
	ld c, l                                          ; $6007: $4d
	ld c, d                                          ; $6008: $4a
	ld c, a                                          ; $6009: $4f
	xor h                                            ; $600a: $ac
	jp hl                                            ; $600b: $e9


	xor l                                            ; $600c: $ad
	xor b                                            ; $600d: $a8
	ld b, [hl]                                       ; $600e: $46
	ld d, a                                          ; $600f: $57
	ld d, e                                          ; $6010: $53
	ld c, c                                          ; $6011: $49
	add hl, sp                                       ; $6012: $39
	and b                                            ; $6013: $a0
	db $eb                                           ; $6014: $eb
	ld d, c                                          ; $6015: $51
	xor h                                            ; $6016: $ac
	db $ec                                           ; $6017: $ec
	ld sp, hl                                        ; $6018: $f9
	ld [$acbd], a                                    ; $6019: $ea $bd $ac
	ld [$a08f], a                                    ; $601c: $ea $8f $a0
	cpl                                              ; $601f: $2f
	ld b, e                                          ; $6020: $43
	ldh a, [$fa]                                     ; $6021: $f0 $fa
	ld c, a                                          ; $6023: $4f
	add hl, sp                                       ; $6024: $39
	ld c, c                                          ; $6025: $49
	ld a, $3d                                        ; $6026: $3e $3d
	ld b, h                                          ; $6028: $44
	ld e, l                                          ; $6029: $5d
	xor h                                            ; $602a: $ac
	ldh a, [$29]                                     ; $602b: $f0 $29
	ld a, $38                                        ; $602d: $3e $38
	ld b, l                                          ; $602f: $45
	and b                                            ; $6030: $a0
	db $eb                                           ; $6031: $eb
	ld d, c                                          ; $6032: $51
	xor h                                            ; $6033: $ac
	db $ec                                           ; $6034: $ec
	ld sp, hl                                        ; $6035: $f9
	ld [$acb8], a                                    ; $6036: $ea $b8 $ac
	ld [$a08d], a                                    ; $6039: $ea $8d $a0
	db $eb                                           ; $603c: $eb
	ld d, c                                          ; $603d: $51
	xor h                                            ; $603e: $ac
	db $ec                                           ; $603f: $ec
	ld sp, hl                                        ; $6040: $f9
	ld [$acb8], a                                    ; $6041: $ea $b8 $ac
	ld [$a08e], a                                    ; $6044: $ea $8e $a0
	db $eb                                           ; $6047: $eb
	ld d, c                                          ; $6048: $51
	xor h                                            ; $6049: $ac
	db $ec                                           ; $604a: $ec
	ld sp, hl                                        ; $604b: $f9
	ld [$acb8], a                                    ; $604c: $ea $b8 $ac
	ld [$a08f], a                                    ; $604f: $ea $8f $a0
	ld [$acab], a                                    ; $6052: $ea $ab $ac
	pop af                                           ; $6055: $f1
	ld d, d                                          ; $6056: $52
	pop af                                           ; $6057: $f1
	or $38                                           ; $6058: $f6 $38
	ld c, h                                          ; $605a: $4c
	and b                                            ; $605b: $a0
	cpl                                              ; $605c: $2f
	ld b, e                                          ; $605d: $43
	adc b                                            ; $605e: $88
	sub c                                            ; $605f: $91
	inc [hl]                                         ; $6060: $34
	pop af                                           ; $6061: $f1
	or $38                                           ; $6062: $f6 $38
	ld c, h                                          ; $6064: $4c
	and b                                            ; $6065: $a0
	ld [hl], b                                       ; $6066: $70
	ld [hl], c                                       ; $6067: $71
	ld b, c                                          ; $6068: $41
	ld c, h                                          ; $6069: $4c
	xor b                                            ; $606a: $a8
	pop af                                           ; $606b: $f1
	inc de                                           ; $606c: $13
	ldh a, [c]                                       ; $606d: $f2
	ret nc                                           ; $606e: $d0

	ld d, e                                          ; $606f: $53
	inc [hl]                                         ; $6070: $34
	ld c, a                                          ; $6071: $4f
	ld e, a                                          ; $6072: $5f
	di                                               ; $6073: $f3
	sub b                                            ; $6074: $90
	ld l, h                                          ; $6075: $6c
	ld c, d                                          ; $6076: $4a
	ld c, b                                          ; $6077: $48
	and b                                            ; $6078: $a0
	cpl                                              ; $6079: $2f
	ld b, e                                          ; $607a: $43
	jr c, @+$70                                      ; $607b: $38 $6e

	xor h                                            ; $607d: $ac
	jp hl                                            ; $607e: $e9


	cp h                                             ; $607f: $bc
	xor h                                            ; $6080: $ac
	jp hl                                            ; $6081: $e9


	dec l                                            ; $6082: $2d
	and b                                            ; $6083: $a0
	cpl                                              ; $6084: $2f
	ld [hl-], a                                      ; $6085: $32
	db $eb                                           ; $6086: $eb
	ld a, [$3f3b]                                    ; $6087: $fa $3b $3f
	xor h                                            ; $608a: $ac
	ld b, b                                          ; $608b: $40
	ld b, c                                          ; $608c: $41
	ld a, [hl-]                                      ; $608d: $3a
	ld b, a                                          ; $608e: $47
	pop af                                           ; $608f: $f1
	ld b, $55                                        ; $6090: $06 $55
	ld b, a                                          ; $6092: $47
	push af                                          ; $6093: $f5

jr_08f_6094:
	ld a, l                                          ; $6094: $7d
	ld b, c                                          ; $6095: $41
	ld c, d                                          ; $6096: $4a
	dec a                                            ; $6097: $3d
	dec sp                                           ; $6098: $3b
	ld e, l                                          ; $6099: $5d
	xor c                                            ; $609a: $a9
	ldh a, [$a3]                                     ; $609b: $f0 $a3
	ldh a, [$0b]                                     ; $609d: $f0 $0b
	ld a, [hl-]                                      ; $609f: $3a
	add d                                            ; $60a0: $82
	jr c, jr_08f_6094                                ; $60a1: $38 $f1

	dec bc                                           ; $60a3: $0b
	and e                                            ; $60a4: $a3
	cpl                                              ; $60a5: $2f
	ld [hl-], a                                      ; $60a6: $32
	pop af                                           ; $60a7: $f1
	inc de                                           ; $60a8: $13
	ldh a, [c]                                       ; $60a9: $f2
	ret nc                                           ; $60aa: $d0

	ld d, e                                          ; $60ab: $53
	di                                               ; $60ac: $f3
	sub b                                            ; $60ad: $90
	ld b, c                                          ; $60ae: $41
	ld c, d                                          ; $60af: $4a
	ccf                                              ; $60b0: $3f
	ld c, a                                          ; $60b1: $4f
	inc de                                           ; $60b2: $13

jr_08f_60b3:
	ldh a, [$c7]                                     ; $60b3: $f0 $c7
	ld c, l                                          ; $60b5: $4d
	ld a, [hl-]                                      ; $60b6: $3a
	jr c, @-$67                                      ; $60b7: $38 $97

	xor b                                            ; $60b9: $a8
	ldh a, [$a3]                                     ; $60ba: $f0 $a3
	ldh a, [$0b]                                     ; $60bc: $f0 $0b
	ld a, [hl-]                                      ; $60be: $3a
	add d                                            ; $60bf: $82
	jr c, jr_08f_60b3                                ; $60c0: $38 $f1

	dec bc                                           ; $60c2: $0b
	and e                                            ; $60c3: $a3
	ld [hl], b                                       ; $60c4: $70
	ld [hl], c                                       ; $60c5: $71
	ld e, c                                          ; $60c6: $59
	ld b, c                                          ; $60c7: $41
	xor b                                            ; $60c8: $a8
	ldh a, [rBGP]                                    ; $60c9: $f0 $47
	ldh a, [$2a]                                     ; $60cb: $f0 $2a
	inc [hl]                                         ; $60cd: $34
	ld d, d                                          ; $60ce: $52
	ld h, c                                          ; $60cf: $61
	ld d, e                                          ; $60d0: $53
	ld e, [hl]                                       ; $60d1: $5e
	ld h, c                                          ; $60d2: $61
	ld d, [hl]                                       ; $60d3: $56
	dec sp                                           ; $60d4: $3b
	dec a                                            ; $60d5: $3d
	and b                                            ; $60d6: $a0
	ld [hl], b                                       ; $60d7: $70
	ld [hl], c                                       ; $60d8: $71
	ld e, c                                          ; $60d9: $59
	ld b, c                                          ; $60da: $41
	xor b                                            ; $60db: $a8
	ret                                              ; $60dc: $c9


	ldh a, [c]                                       ; $60dd: $f2
	ld l, c                                          ; $60de: $69
	push af                                          ; $60df: $f5

jr_08f_60e0:
	sbc $eb                                          ; $60e0: $de $eb
	ld d, [hl]                                       ; $60e2: $56
	and b                                            ; $60e3: $a0
	ld [hl], b                                       ; $60e4: $70
	ld [hl], c                                       ; $60e5: $71
	ld e, c                                          ; $60e6: $59
	ld b, c                                          ; $60e7: $41
	xor b                                            ; $60e8: $a8
	ld h, h                                          ; $60e9: $64
	ldh a, [$c8]                                     ; $60ea: $f0 $c8
	jr c, jr_08f_60e0                                ; $60ec: $38 $f2

	ld a, b                                          ; $60ee: $78
	ld a, $3f                                        ; $60ef: $3e $3f
	add l                                            ; $60f1: $85
	and b                                            ; $60f2: $a0
	add hl, bc                                       ; $60f3: $09
	ld c, h                                          ; $60f4: $4c
	add l                                            ; $60f5: $85
	ld c, h                                          ; $60f6: $4c
	add l                                            ; $60f7: $85
	inc [hl]                                         ; $60f8: $34
	db $eb                                           ; $60f9: $eb
	rst FarCall                                          ; $60fa: $f7
	xor c                                            ; $60fb: $a9
	ld d, h                                          ; $60fc: $54
	ld b, c                                          ; $60fd: $41
	ld a, [hl-]                                      ; $60fe: $3a
	ld c, c                                          ; $60ff: $49
	ld d, h                                          ; $6100: $54
	ld b, a                                          ; $6101: $47
	pop af                                           ; $6102: $f1
	ld bc, $4df0                                     ; $6103: $01 $f0 $4d
	sub h                                            ; $6106: $94
	ld a, $3f                                        ; $6107: $3e $3f
	and b                                            ; $6109: $a0
	cpl                                              ; $610a: $2f
	ld [hl-], a                                      ; $610b: $32
	ld l, e                                          ; $610c: $6b
	ld h, d                                          ; $610d: $62
	ldh a, [rAUDVOL]                                 ; $610e: $f0 $24
	db $ec                                           ; $6110: $ec
	ld d, $36                                        ; $6111: $16 $36
	inc sp                                           ; $6113: $33
	add hl, bc                                       ; $6114: $09
	cpl                                              ; $6115: $2f
	add sp, $0c                                      ; $6116: $e8 $0c
	add hl, bc                                       ; $6118: $09
	cpl                                              ; $6119: $2f
	add sp, $27                                      ; $611a: $e8 $27
	add hl, bc                                       ; $611c: $09
	cpl                                              ; $611d: $2f
	ld [hl-], a                                      ; $611e: $32
	pop af                                           ; $611f: $f1
	ld a, e                                          ; $6120: $7b
	ldh a, [hDisp1_WY]                                     ; $6121: $f0 $95
	ld c, e                                          ; $6123: $4b
	inc de                                           ; $6124: $13
	db $ed                                           ; $6125: $ed
	ld a, e                                          ; $6126: $7b
	ld b, d                                          ; $6127: $42
	ldh a, [$30]                                     ; $6128: $f0 $30
	ldh a, [$28]                                     ; $612a: $f0 $28
	ld b, a                                          ; $612c: $47
	ldh a, [$b2]                                     ; $612d: $f0 $b2
	ldh a, [rKEY1]                                   ; $612f: $f0 $4d
	ld b, a                                          ; $6131: $47
	ld h, a                                          ; $6132: $67
	ld d, l                                          ; $6133: $55
	ld d, h                                          ; $6134: $54
	ld c, c                                          ; $6135: $49
	xor b                                            ; $6136: $a8
	xor a                                            ; $6137: $af
	or l                                             ; $6138: $b5
	and e                                            ; $6139: $a3
	cpl                                              ; $613a: $2f
	ld [hl-], a                                      ; $613b: $32
	jp hl                                            ; $613c: $e9


	ld [hl], h                                       ; $613d: $74
	ld d, e                                          ; $613e: $53
	inc de                                           ; $613f: $13
	adc e                                            ; $6140: $8b
	ld e, h                                          ; $6141: $5c
	dec [hl]                                         ; $6142: $35
	ldh a, [rBCPD]                                   ; $6143: $f0 $69
	ldh a, [$03]                                     ; $6145: $f0 $03
	ldh a, [rBCPD]                                   ; $6147: $f0 $69
	ldh a, [$03]                                     ; $6149: $f0 $03
	pop af                                           ; $614b: $f1
	ld b, l                                          ; $614c: $45
	ld b, d                                          ; $614d: $42
	ldh a, [$8e]                                     ; $614e: $f0 $8e
	pop af                                           ; $6150: $f1
	ld c, l                                          ; $6151: $4d

jr_08f_6152:
	ld h, l                                          ; $6152: $65
	xor b                                            ; $6153: $a8
	xor a                                            ; $6154: $af
	or l                                             ; $6155: $b5
	and e                                            ; $6156: $a3
	cpl                                              ; $6157: $2f
	ld [hl-], a                                      ; $6158: $32
	ldh a, [c]                                       ; $6159: $f2
	and b                                            ; $615a: $a0
	di                                               ; $615b: $f3
	jr c, @+$4b                                      ; $615c: $38 $49

	inc a                                            ; $615e: $3c
	db $eb                                           ; $615f: $eb
	add e                                            ; $6160: $83
	ldh a, [$2c]                                     ; $6161: $f0 $2c
	ld b, d                                          ; $6163: $42
	inc de                                           ; $6164: $13
	ldh a, [$74]                                     ; $6165: $f0 $74
	ldh a, [$7a]                                     ; $6167: $f0 $7a
	ld d, e                                          ; $6169: $53
	adc e                                            ; $616a: $8b
	ld l, h                                          ; $616b: $6c
	xor b                                            ; $616c: $a8
	xor a                                            ; $616d: $af
	or l                                             ; $616e: $b5
	and e                                            ; $616f: $a3
	cpl                                              ; $6170: $2f
	db $ed                                           ; $6171: $ed
	ld l, [hl]                                       ; $6172: $6e
	inc [hl]                                         ; $6173: $34
	pop af                                           ; $6174: $f1
	sub d                                            ; $6175: $92
	ldh a, [$c6]                                     ; $6176: $f0 $c6
	pop af                                           ; $6178: $f1
	ld [hl], d                                       ; $6179: $72
	ld b, d                                          ; $617a: $42
	inc de                                           ; $617b: $13
	di                                               ; $617c: $f3
	ld de, $12f3                                     ; $617d: $11 $f3 $12
	db $ed                                           ; $6180: $ed
	halt                                             ; $6181: $76
	ld h, d                                          ; $6182: $62
	db $ed                                           ; $6183: $ed
	ld bc, $4e38                                     ; $6184: $01 $38 $4e
	xor b                                            ; $6187: $a8
	xor a                                            ; $6188: $af
	or l                                             ; $6189: $b5
	and e                                            ; $618a: $a3
	cpl                                              ; $618b: $2f
	db $ed                                           ; $618c: $ed
	ld l, [hl]                                       ; $618d: $6e
	ldh a, [rAUD1HIGH]                               ; $618e: $f0 $14
	ld b, d                                          ; $6190: $42
	ldh a, [c]                                       ; $6191: $f2
	dec sp                                           ; $6192: $3b
	ld c, e                                          ; $6193: $4b
	inc de                                           ; $6194: $13
	add e                                            ; $6195: $83
	db $ed                                           ; $6196: $ed
	sbc [hl]                                         ; $6197: $9e
	ldh a, [$6e]                                     ; $6198: $f0 $6e
	ld e, c                                          ; $619a: $59
	ldh a, [$32]                                     ; $619b: $f0 $32
	ld b, a                                          ; $619d: $47
	ldh a, [$2b]                                     ; $619e: $f0 $2b
	ldh a, [$7c]                                     ; $61a0: $f0 $7c
	ld [hl], l                                       ; $61a2: $75
	ld h, l                                          ; $61a3: $65
	ldh a, [$7e]                                     ; $61a4: $f0 $7e
	ld a, $3d                                        ; $61a6: $3e $3d
	jr c, jr_08f_6152                                ; $61a8: $38 $a8

	xor a                                            ; $61aa: $af
	or l                                             ; $61ab: $b5
	and e                                            ; $61ac: $a3
	cpl                                              ; $61ad: $2f
	db $ed                                           ; $61ae: $ed
	ld l, [hl]                                       ; $61af: $6e
	ld c, e                                          ; $61b0: $4b
	pop af                                           ; $61b1: $f1
	ret nc                                           ; $61b2: $d0

	ld e, c                                          ; $61b3: $59
	ldh a, [$50]                                     ; $61b4: $f0 $50
	ldh a, [$03]                                     ; $61b6: $f0 $03
	ld l, c                                          ; $61b8: $69
	ld e, h                                          ; $61b9: $5c
	ld b, d                                          ; $61ba: $42
	ld d, h                                          ; $61bb: $54
	ld d, e                                          ; $61bc: $53
	inc de                                           ; $61bd: $13
	db $ed                                           ; $61be: $ed
	ld a, e                                          ; $61bf: $7b
	dec sp                                           ; $61c0: $3b
	ccf                                              ; $61c1: $3f
	jr c, jr_08f_6212                                ; $61c2: $38 $4e

	ld d, b                                          ; $61c4: $50
	ld a, $38                                        ; $61c5: $3e $38
	xor b                                            ; $61c7: $a8
	xor a                                            ; $61c8: $af
	or l                                             ; $61c9: $b5
	and e                                            ; $61ca: $a3
	cpl                                              ; $61cb: $2f
	ld [hl-], a                                      ; $61cc: $32
	db $ec                                           ; $61cd: $ec
	xor c                                            ; $61ce: $a9
	sbc l                                            ; $61cf: $9d
	ld d, b                                          ; $61d0: $50
	jr c, jr_08f_621a                                ; $61d1: $38 $47

	ld c, e                                          ; $61d3: $4b
	inc de                                           ; $61d4: $13
	ld h, a                                          ; $61d5: $67
	ld e, h                                          ; $61d6: $5c
	dec a                                            ; $61d7: $3d
	jr c, jr_08f_6223                                ; $61d8: $38 $49

	ld [hl], a                                       ; $61da: $77
	dec sp                                           ; $61db: $3b
	ccf                                              ; $61dc: $3f
	jr c, jr_08f_622d                                ; $61dd: $38 $4e

	ld d, e                                          ; $61df: $53
	xor h                                            ; $61e0: $ac
	ld b, b                                          ; $61e1: $40
	ld c, l                                          ; $61e2: $4d
	ld c, d                                          ; $61e3: $4a
	ld c, a                                          ; $61e4: $4f
	inc a                                            ; $61e5: $3c
	ld a, [hl-]                                      ; $61e6: $3a
	ld d, a                                          ; $61e7: $57
	pop af                                           ; $61e8: $f1
	adc $3a                                          ; $61e9: $ce $3a
	jr c, jr_08f_623d                                ; $61eb: $38 $50

	ld a, $38                                        ; $61ed: $3e $38
	dec [hl]                                         ; $61ef: $35
	inc h                                            ; $61f0: $24
	inc de                                           ; $61f1: $13
	xor a                                            ; $61f2: $af
	or l                                             ; $61f3: $b5
	and e                                            ; $61f4: $a3
	cpl                                              ; $61f5: $2f
	ld [hl-], a                                      ; $61f6: $32
	ldh a, [c]                                       ; $61f7: $f2
	ld h, c                                          ; $61f8: $61
	ld d, e                                          ; $61f9: $53
	db $f4                                           ; $61fa: $f4
	ld [hl-], a                                      ; $61fb: $32
	rst FarCall                                          ; $61fc: $f7
	db $fc                                           ; $61fd: $fc
	ld e, h                                          ; $61fe: $5c
	ld c, d                                          ; $61ff: $4a
	inc de                                           ; $6200: $13
	ldh a, [c]                                       ; $6201: $f2
	dec l                                            ; $6202: $2d
	pop af                                           ; $6203: $f1
	dec h                                            ; $6204: $25
	di                                               ; $6205: $f3
	add d                                            ; $6206: $82
	pop af                                           ; $6207: $f1
	add a                                            ; $6208: $87
	ld b, d                                          ; $6209: $42
	dec a                                            ; $620a: $3d
	ld [hl], c                                       ; $620b: $71
	inc [hl]                                         ; $620c: $34

jr_08f_620d:
	db $ed                                           ; $620d: $ed
	jp Jump_08f_4e51                                 ; $620e: $c3 $51 $4e


	inc de                                           ; $6211: $13

jr_08f_6212:
	db $f4                                           ; $6212: $f4
	add l                                            ; $6213: $85
	ld d, e                                          ; $6214: $53
	add b                                            ; $6215: $80
	jr c, jr_08f_6257                                ; $6216: $38 $3f

	db $ec                                           ; $6218: $ec
	push de                                          ; $6219: $d5

jr_08f_621a:
	xor b                                            ; $621a: $a8
	xor a                                            ; $621b: $af
	or l                                             ; $621c: $b5
	and e                                            ; $621d: $a3
	cpl                                              ; $621e: $2f
	ld [hl-], a                                      ; $621f: $32
	pop af                                           ; $6220: $f1
	cpl                                              ; $6221: $2f
	db $ec                                           ; $6222: $ec

jr_08f_6223:
	add hl, hl                                       ; $6223: $29
	xor b                                            ; $6224: $a8
	xor a                                            ; $6225: $af
	or l                                             ; $6226: $b5
	and e                                            ; $6227: $a3
	cpl                                              ; $6228: $2f
	ld [hl-], a                                      ; $6229: $32
	db $eb                                           ; $622a: $eb
	ld e, e                                          ; $622b: $5b
	ld b, a                                          ; $622c: $47

jr_08f_622d:
	ld h, a                                          ; $622d: $67
	ld d, l                                          ; $622e: $55
	inc de                                           ; $622f: $13
	ld b, d                                          ; $6230: $42
	db $ec                                           ; $6231: $ec
	add hl, hl                                       ; $6232: $29
	xor b                                            ; $6233: $a8
	xor a                                            ; $6234: $af
	or l                                             ; $6235: $b5
	and e                                            ; $6236: $a3
	cpl                                              ; $6237: $2f
	ld [hl-], a                                      ; $6238: $32
	ldh a, [$35]                                     ; $6239: $f0 $35
	ldh a, [rSC]                                     ; $623b: $f0 $02

jr_08f_623d:
	ldh a, [$c3]                                     ; $623d: $f0 $c3
	ldh a, [$c2]                                     ; $623f: $f0 $c2
	db $ec                                           ; $6241: $ec
	add hl, hl                                       ; $6242: $29
	xor b                                            ; $6243: $a8
	xor a                                            ; $6244: $af
	or l                                             ; $6245: $b5
	and e                                            ; $6246: $a3
	cpl                                              ; $6247: $2f
	ld [hl-], a                                      ; $6248: $32
	db $ec                                           ; $6249: $ec
	pop af                                           ; $624a: $f1
	ld c, e                                          ; $624b: $4b
	inc [hl]                                         ; $624c: $34
	ld b, [hl]                                       ; $624d: $46
	ld d, d                                          ; $624e: $52
	ld d, a                                          ; $624f: $57
	inc de                                           ; $6250: $13
	adc e                                            ; $6251: $8b
	ld e, h                                          ; $6252: $5c
	db $ec                                           ; $6253: $ec
	ret c                                            ; $6254: $d8

	xor b                                            ; $6255: $a8
	xor a                                            ; $6256: $af

jr_08f_6257:
	or l                                             ; $6257: $b5
	and e                                            ; $6258: $a3
	cpl                                              ; $6259: $2f
	ld [hl-], a                                      ; $625a: $32
	db $eb                                           ; $625b: $eb
	inc hl                                           ; $625c: $23
	ld c, e                                          ; $625d: $4b
	xor h                                            ; $625e: $ac
	ld b, [hl]                                       ; $625f: $46
	ld d, d                                          ; $6260: $52
	ld d, a                                          ; $6261: $57
	jp hl                                            ; $6262: $e9


	jr nc, jr_08f_620d                               ; $6263: $30 $a8

	xor a                                            ; $6265: $af
	or l                                             ; $6266: $b5
	and e                                            ; $6267: $a3
	ldh a, [c]                                       ; $6268: $f2
	ld d, h                                          ; $6269: $54
	ld d, e                                          ; $626a: $53
	ldh a, [c]                                       ; $626b: $f2
	adc [hl]                                         ; $626c: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $626d: $f0 $81
	ld b, h                                          ; $626f: $44
	ld c, h                                          ; $6270: $4c
	xor b                                            ; $6271: $a8
	pop af                                           ; $6272: $f1
	add d                                            ; $6273: $82
	inc a                                            ; $6274: $3c
	db $ed                                           ; $6275: $ed
	sbc c                                            ; $6276: $99
	di                                               ; $6277: $f3
	ld sp, $4f47                                     ; $6278: $31 $47 $4f
	ld a, [$3b38]                                    ; $627b: $fa $38 $3b
	ccf                                              ; $627e: $3f
	dec a                                            ; $627f: $3d
	ld b, l                                          ; $6280: $45
	and b                                            ; $6281: $a0
	cpl                                              ; $6282: $2f
	ld b, e                                          ; $6283: $43
	jp hl                                            ; $6284: $e9


	inc [hl]                                         ; $6285: $34
	and b                                            ; $6286: $a0
	xor $1f                                          ; $6287: $ee $1f
	xor b                                            ; $6289: $a8
	ld h, a                                          ; $628a: $67
	ld d, h                                          ; $628b: $54
	ld h, a                                          ; $628c: $67
	ld d, h                                          ; $628d: $54
	and b                                            ; $628e: $a0
	ld l, e                                          ; $628f: $6b
	ld b, a                                          ; $6290: $47
	ld c, a                                          ; $6291: $4f
	ld a, [hl-]                                      ; $6292: $3a
	ld d, l                                          ; $6293: $55
	ccf                                              ; $6294: $3f
	xor h                                            ; $6295: $ac
	db $db                                           ; $6296: $db
	ld a, [hl-]                                      ; $6297: $3a
	jr c, jr_08f_62f7                                ; $6298: $38 $5d

	ld e, d                                          ; $629a: $5a
	xor b                                            ; $629b: $a8
	pop af                                           ; $629c: $f1
	db $ed                                           ; $629d: $ed
	pop af                                           ; $629e: $f1
	ld h, $4a                                        ; $629f: $26 $4a
	ld c, a                                          ; $62a1: $4f
	db $ec                                           ; $62a2: $ec
	inc c                                            ; $62a3: $0c
	and c                                            ; $62a4: $a1
	cpl                                              ; $62a5: $2f
	ld b, e                                          ; $62a6: $43
	db $ed                                           ; $62a7: $ed
	ld d, a                                          ; $62a8: $57
	xor h                                            ; $62a9: $ac
	ld [$cdca], a                                    ; $62aa: $ea $ca $cd
	and b                                            ; $62ad: $a0
	db $eb                                           ; $62ae: $eb
	inc [hl]                                         ; $62af: $34
	inc [hl]                                         ; $62b0: $34
	db $ec                                           ; $62b1: $ec
	rlca                                             ; $62b2: $07
	and b                                            ; $62b3: $a0
	cpl                                              ; $62b4: $2f
	ld b, e                                          ; $62b5: $43
	db $ed                                           ; $62b6: $ed
	ld d, a                                          ; $62b7: $57
	xor h                                            ; $62b8: $ac
	db $ec                                           ; $62b9: $ec
	ld c, [hl]                                       ; $62ba: $4e
	call $eca0                                       ; $62bb: $cd $a0 $ec
	ld a, [de]                                       ; $62be: $1a
	pop af                                           ; $62bf: $f1
	db $ed                                           ; $62c0: $ed
	pop af                                           ; $62c1: $f1
	ld h, $51                                        ; $62c2: $26 $51
	ld c, [hl]                                       ; $62c4: $4e
	ld b, d                                          ; $62c5: $42
	ld c, a                                          ; $62c6: $4f
	xor h                                            ; $62c7: $ac
	db $ec                                           ; $62c8: $ec
	ld a, [bc]                                       ; $62c9: $0a
	and b                                            ; $62ca: $a0
	cpl                                              ; $62cb: $2f
	add sp, $33                                      ; $62cc: $e8 $33
	add hl, bc                                       ; $62ce: $09
	ld b, b                                          ; $62cf: $40
	ld c, l                                          ; $62d0: $4d
	ld e, e                                          ; $62d1: $5b
	ld d, [hl]                                       ; $62d2: $56
	xor h                                            ; $62d3: $ac
	ld a, [hl-]                                      ; $62d4: $3a
	ld b, c                                          ; $62d5: $41
	inc a                                            ; $62d6: $3c
	ldh a, [$b7]                                     ; $62d7: $f0 $b7
	ldh a, [$8c]                                     ; $62d9: $f0 $8c
	ld b, a                                          ; $62db: $47
	call $2fa0                                       ; $62dc: $cd $a0 $2f
	add sp, $32                                      ; $62df: $e8 $32
	add hl, bc                                       ; $62e1: $09
	jp nc, $88ac                                     ; $62e2: $d2 $ac $88

	db $ec                                           ; $62e5: $ec
	ld c, c                                          ; $62e6: $49
	inc a                                            ; $62e7: $3c
	ld d, b                                          ; $62e8: $50
	ld c, b                                          ; $62e9: $48
	and b                                            ; $62ea: $a0
	cpl                                              ; $62eb: $2f
	jp hl                                            ; $62ec: $e9


	ld c, [hl]                                       ; $62ed: $4e
	add hl, bc                                       ; $62ee: $09
	ld c, d                                          ; $62ef: $4a
	ld c, a                                          ; $62f0: $4f
	inc [hl]                                         ; $62f1: $34
	ld b, b                                          ; $62f2: $40
	ld c, l                                          ; $62f3: $4d
	ld b, h                                          ; $62f4: $44
	ld e, l                                          ; $62f5: $5d
	ld b, h                                          ; $62f6: $44

jr_08f_62f7:
	ld c, h                                          ; $62f7: $4c
	and b                                            ; $62f8: $a0
	db $ec                                           ; $62f9: $ec
	inc de                                           ; $62fa: $13
	ldh a, [c]                                       ; $62fb: $f2
	db $10                                           ; $62fc: $10
	ld b, h                                          ; $62fd: $44
	ld c, h                                          ; $62fe: $4c
	xor b                                            ; $62ff: $a8
	db $eb                                           ; $6300: $eb
	adc c                                            ; $6301: $89
	inc de                                           ; $6302: $13
	ldh a, [hDisp1_LCDC]                                     ; $6303: $f0 $8f
	ld b, c                                          ; $6305: $41
	ld c, d                                          ; $6306: $4a
	jr c, jr_08f_635d                                ; $6307: $38 $54

	add hl, sp                                       ; $6309: $39
	ld b, l                                          ; $630a: $45
	and b                                            ; $630b: $a0
	cpl                                              ; $630c: $2f
	add sp, -$62                                     ; $630d: $e8 $9e
	add hl, bc                                       ; $630f: $09
	ld e, [hl]                                       ; $6310: $5e
	dec sp                                           ; $6311: $3b
	xor c                                            ; $6312: $a9
	sbc $94                                          ; $6313: $de $94
	ccf                                              ; $6315: $3f
	ld d, h                                          ; $6316: $54
	ld a, [hl-]                                      ; $6317: $3a
	jr c, jr_08f_6356                                ; $6318: $38 $3c

	ld a, [hl-]                                      ; $631a: $3a
	and b                                            ; $631b: $a0
	cpl                                              ; $631c: $2f
	add sp, $5f                                      ; $631d: $e8 $5f
	add hl, bc                                       ; $631f: $09
	ld b, b                                          ; $6320: $40
	ld b, c                                          ; $6321: $41
	ld a, [hl-]                                      ; $6322: $3a
	sbc d                                            ; $6323: $9a
	ld e, d                                          ; $6324: $5a
	add hl, sp                                       ; $6325: $39
	ld c, d                                          ; $6326: $4a
	ld c, a                                          ; $6327: $4f
	jr c, jr_08f_6362                                ; $6328: $38 $38

	ld b, l                                          ; $632a: $45
	and b                                            ; $632b: $a0
	cpl                                              ; $632c: $2f
	add sp, -$61                                     ; $632d: $e8 $9f
	add hl, bc                                       ; $632f: $09
	db $ec                                           ; $6330: $ec
	rla                                              ; $6331: $17
	xor b                                            ; $6332: $a8
	ld b, b                                          ; $6333: $40
	add hl, sp                                       ; $6334: $39
	ld a, $45                                        ; $6335: $3e $45
	add hl, sp                                       ; $6337: $39
	and b                                            ; $6338: $a0
	db $ec                                           ; $6339: $ec
	ld e, e                                          ; $633a: $5b
	ld b, h                                          ; $633b: $44
	ld c, h                                          ; $633c: $4c
	and b                                            ; $633d: $a0
	cpl                                              ; $633e: $2f
	db $ec                                           ; $633f: $ec
	push bc                                          ; $6340: $c5
	inc [hl]                                         ; $6341: $34
	db $ec                                           ; $6342: $ec
	rlca                                             ; $6343: $07
	add hl, bc                                       ; $6344: $09
	xor $1f                                          ; $6345: $ee $1f
	xor b                                            ; $6347: $a8
	ld e, e                                          ; $6348: $5b
	ld d, [hl]                                       ; $6349: $56
	ld b, [hl]                                       ; $634a: $46
	inc [hl]                                         ; $634b: $34
	ld e, d                                          ; $634c: $5a
	ld d, h                                          ; $634d: $54
	ld h, a                                          ; $634e: $67
	ld d, l                                          ; $634f: $55
	and c                                            ; $6350: $a1
	cpl                                              ; $6351: $2f
	sbc h                                            ; $6352: $9c
	ld e, c                                          ; $6353: $59
	dec sp                                           ; $6354: $3b
	ld c, c                                          ; $6355: $49

jr_08f_6356:
	ld [hl], d                                       ; $6356: $72
	ccf                                              ; $6357: $3f
	dec a                                            ; $6358: $3d
	jr c, @+$4e                                      ; $6359: $38 $4c

	add hl, bc                                       ; $635b: $09
	db $ec                                           ; $635c: $ec

jr_08f_635d:
	ld b, e                                          ; $635d: $43
	xor b                                            ; $635e: $a8
	ldh a, [c]                                       ; $635f: $f2
	ld d, h                                          ; $6360: $54
	ld c, e                                          ; $6361: $4b

jr_08f_6362:
	ld c, a                                          ; $6362: $4f
	add hl, sp                                       ; $6363: $39
	jr c, jr_08f_639e                                ; $6364: $38 $38

	ld b, l                                          ; $6366: $45
	and b                                            ; $6367: $a0
	cpl                                              ; $6368: $2f
	di                                               ; $6369: $f3
	adc $3b                                          ; $636a: $ce $3b
	ldh a, [$36]                                     ; $636c: $f0 $36
	ld d, b                                          ; $636e: $50
	jr c, jr_08f_63c4                                ; $636f: $38 $53

	add hl, sp                                       ; $6371: $39
	ld c, [hl]                                       ; $6372: $4e
	ld e, b                                          ; $6373: $58
	jr c, jr_08f_63c2                                ; $6374: $38 $4c

	add hl, bc                                       ; $6376: $09
	ld e, e                                          ; $6377: $5b
	ld d, [hl]                                       ; $6378: $56
	ld b, [hl]                                       ; $6379: $46
	xor h                                            ; $637a: $ac
	ldh a, [$34]                                     ; $637b: $f0 $34
	ld b, d                                          ; $637d: $42
	ld c, c                                          ; $637e: $49
	ld d, h                                          ; $637f: $54
	ld e, a                                          ; $6380: $5f
	call $5aa0                                       ; $6381: $cd $a0 $5a
	ld d, h                                          ; $6384: $54
	ld b, a                                          ; $6385: $47
	pop af                                           ; $6386: $f1
	ld c, $38                                        ; $6387: $0e $38
	ldh a, [$2c]                                     ; $6389: $f0 $2c
	ld b, a                                          ; $638b: $47

jr_08f_638c:
	inc de                                           ; $638c: $13
	db $ec                                           ; $638d: $ec
	rlca                                             ; $638e: $07
	and c                                            ; $638f: $a1
	cpl                                              ; $6390: $2f
	add sp, -$29                                     ; $6391: $e8 $d7
	add hl, bc                                       ; $6393: $09
	xor $1f                                          ; $6394: $ee $1f
	xor b                                            ; $6396: $a8
	pop af                                           ; $6397: $f1
	jr jr_08f_638c                                   ; $6398: $18 $f2

	sub c                                            ; $639a: $91
	ld c, d                                          ; $639b: $4a
	inc [hl]                                         ; $639c: $34
	ld h, a                                          ; $639d: $67

jr_08f_639e:
	ld d, h                                          ; $639e: $54
	add hl, sp                                       ; $639f: $39
	and b                                            ; $63a0: $a0
	cpl                                              ; $63a1: $2f
	add sp, -$28                                     ; $63a2: $e8 $d8
	add hl, bc                                       ; $63a4: $09
	cpl                                              ; $63a5: $2f
	add sp, -$27                                     ; $63a6: $e8 $d9
	add hl, bc                                       ; $63a8: $09
	db $ec                                           ; $63a9: $ec
	ld b, e                                          ; $63aa: $43
	xor b                                            ; $63ab: $a8
	db $eb                                           ; $63ac: $eb
	scf                                              ; $63ad: $37
	xor b                                            ; $63ae: $a8
	pop af                                           ; $63af: $f1
	jr nc, @+$73                                     ; $63b0: $30 $71

	ld b, l                                          ; $63b2: $45
	add hl, sp                                       ; $63b3: $39
	ld b, l                                          ; $63b4: $45
	ld b, b                                          ; $63b5: $40
	ld b, c                                          ; $63b6: $41
	ld a, [hl-]                                      ; $63b7: $3a
	ld c, c                                          ; $63b8: $49
	ld d, h                                          ; $63b9: $54
	and b                                            ; $63ba: $a0
	cpl                                              ; $63bb: $2f
	ld b, e                                          ; $63bc: $43
	rst JumpTable                                          ; $63bd: $c7
	xor c                                            ; $63be: $a9
	ld e, e                                          ; $63bf: $5b
	ld d, [hl]                                       ; $63c0: $56
	ld b, [hl]                                       ; $63c1: $46

jr_08f_63c2:
	inc [hl]                                         ; $63c2: $34
	pop af                                           ; $63c3: $f1

jr_08f_63c4:
	jr nc, jr_08f_6437                               ; $63c4: $30 $71

	ld b, l                                          ; $63c6: $45
	add hl, sp                                       ; $63c7: $39
	inc a                                            ; $63c8: $3c
	ld c, b                                          ; $63c9: $48
	and b                                            ; $63ca: $a0
	ld d, h                                          ; $63cb: $54
	ld b, d                                          ; $63cc: $42
	pop af                                           ; $63cd: $f1
	ld a, d                                          ; $63ce: $7a
	inc [hl]                                         ; $63cf: $34
	pop af                                           ; $63d0: $f1
	ld d, d                                          ; $63d1: $52
	ld a, l                                          ; $63d2: $7d
	ld a, l                                          ; $63d3: $7d
	ld c, h                                          ; $63d4: $4c
	and b                                            ; $63d5: $a0
	cpl                                              ; $63d6: $2f
	ldh a, [$5f]                                     ; $63d7: $f0 $5f
	ldh a, [$9b]                                     ; $63d9: $f0 $9b
	ld b, d                                          ; $63db: $42
	db $ed                                           ; $63dc: $ed
	ld a, e                                          ; $63dd: $7b
	ld b, d                                          ; $63de: $42
	ldh a, [$f8]                                     ; $63df: $f0 $f8
	ld b, h                                          ; $63e1: $44
	ld b, l                                          ; $63e2: $45
	ld c, h                                          ; $63e3: $4c
	add hl, bc                                       ; $63e4: $09
	ld l, [hl]                                       ; $63e5: $6e
	dec sp                                           ; $63e6: $3b
	ldh a, [$36]                                     ; $63e7: $f0 $36
	inc [hl]                                         ; $63e9: $34
	ldh a, [rTAC]                                    ; $63ea: $f0 $07
	inc a                                            ; $63ec: $3c
	ld c, [hl]                                       ; $63ed: $4e
	xor c                                            ; $63ee: $a9
	db $ec                                           ; $63ef: $ec
	ld a, c                                          ; $63f0: $79
	ld a, $3f                                        ; $63f1: $3e $3f
	ld c, [hl]                                       ; $63f3: $4e
	ld c, h                                          ; $63f4: $4c
	and b                                            ; $63f5: $a0
	cpl                                              ; $63f6: $2f
	ld b, b                                          ; $63f7: $40
	add hl, sp                                       ; $63f8: $39
	and c                                            ; $63f9: $a1
	db $eb                                           ; $63fa: $eb
	scf                                              ; $63fb: $37
	xor b                                            ; $63fc: $a8
	db $ed                                           ; $63fd: $ed
	ld a, e                                          ; $63fe: $7b
	ld b, a                                          ; $63ff: $47
	ldh a, [rLCDC]                                   ; $6400: $f0 $40
	ld d, a                                          ; $6402: $57
	ldh a, [$c7]                                     ; $6403: $f0 $c7
	ld c, l                                          ; $6405: $4d
	ccf                                              ; $6406: $3f
	ld c, [hl]                                       ; $6407: $4e
	ld b, l                                          ; $6408: $45
	and b                                            ; $6409: $a0
	cpl                                              ; $640a: $2f
	ld d, h                                          ; $640b: $54
	ld b, d                                          ; $640c: $42
	pop af                                           ; $640d: $f1
	ld l, [hl]                                       ; $640e: $6e
	ld c, a                                          ; $640f: $4f
	jr c, jr_08f_644a                                ; $6410: $38 $38

	ld c, c                                          ; $6412: $49
	ld [hl], a                                       ; $6413: $77
	add hl, sp                                       ; $6414: $39
	ld b, l                                          ; $6415: $45
	add hl, bc                                       ; $6416: $09
	xor $1f                                          ; $6417: $ee $1f
	inc [hl]                                         ; $6419: $34
	ld b, b                                          ; $641a: $40
	ld c, l                                          ; $641b: $4d
	ld c, a                                          ; $641c: $4f
	db $ec                                           ; $641d: $ec
	ld [$f0ac], sp                                   ; $641e: $08 $ac $f0
	ld e, a                                          ; $6421: $5f
	ldh a, [$9b]                                     ; $6422: $f0 $9b
	ld c, e                                          ; $6424: $4b
	ld d, h                                          ; $6425: $54
	ld b, d                                          ; $6426: $42
	pop af                                           ; $6427: $f1
	ld l, [hl]                                       ; $6428: $6e
	ld b, a                                          ; $6429: $47
	inc de                                           ; $642a: $13
	db $ed                                           ; $642b: $ed
	ld l, c                                          ; $642c: $69
	ld d, e                                          ; $642d: $53
	ld b, [hl]                                       ; $642e: $46
	ld c, [hl]                                       ; $642f: $4e
	ld b, c                                          ; $6430: $41
	ld b, h                                          ; $6431: $44
	and b                                            ; $6432: $a0
	db $ed                                           ; $6433: $ed
	ld a, e                                          ; $6434: $7b
	ld b, d                                          ; $6435: $42
	pop af                                           ; $6436: $f1

jr_08f_6437:
	ld a, d                                          ; $6437: $7a

jr_08f_6438:
	ld c, e                                          ; $6438: $4b
	pop af                                           ; $6439: $f1
	ld d, d                                          ; $643a: $52
	ldh a, [rAUD1ENV]                                ; $643b: $f0 $12
	ld d, l                                          ; $643d: $55
	ccf                                              ; $643e: $3f
	xor h                                            ; $643f: $ac
	pop de                                           ; $6440: $d1
	ld c, h                                          ; $6441: $4c
	ld c, b                                          ; $6442: $48
	and b                                            ; $6443: $a0
	cpl                                              ; $6444: $2f
	pop af                                           ; $6445: $f1
	ld c, $3b                                        ; $6446: $0e $3b
	ccf                                              ; $6448: $3f
	ld b, [hl]                                       ; $6449: $46

jr_08f_644a:
	ldh a, [rSB]                                     ; $644a: $f0 $01
	dec a                                            ; $644c: $3d
	jr c, jr_08f_64ac                                ; $644d: $38 $5d

	ld e, d                                          ; $644f: $5a
	inc [hl]                                         ; $6450: $34
	ldh a, [rAUD1ENV]                                ; $6451: $f0 $12
	jr c, @+$47                                      ; $6453: $38 $45

	ld c, h                                          ; $6455: $4c
	add hl, bc                                       ; $6456: $09
	ld l, [hl]                                       ; $6457: $6e
	dec sp                                           ; $6458: $3b
	ldh a, [$36]                                     ; $6459: $f0 $36
	inc [hl]                                         ; $645b: $34
	db $ec                                           ; $645c: $ec
	inc e                                            ; $645d: $1c
	and b                                            ; $645e: $a0
	cpl                                              ; $645f: $2f
	ld sp, hl                                        ; $6460: $f9
	call nc, $86f1                                   ; $6461: $d4 $f1 $86
	ld a, $3f                                        ; $6464: $3e $3f
	ld c, d                                          ; $6466: $4a
	ld c, a                                          ; $6467: $4f
	pop af                                           ; $6468: $f1
	ld c, $3b                                        ; $6469: $0e $3b
	dec a                                            ; $646b: $3d
	ld d, b                                          ; $646c: $50
	add hl, bc                                       ; $646d: $09
	ld b, b                                          ; $646e: $40
	ld d, h                                          ; $646f: $54
	ld d, d                                          ; $6470: $52
	ld c, d                                          ; $6471: $4a
	inc [hl]                                         ; $6472: $34
	ld a, $3a                                        ; $6473: $3e $3a
	jr c, jr_08f_64da                                ; $6475: $38 $63

	ld b, l                                          ; $6477: $45
	and b                                            ; $6478: $a0
	cpl                                              ; $6479: $2f
	ld c, c                                          ; $647a: $49
	ld d, a                                          ; $647b: $57
	ld b, [hl]                                       ; $647c: $46
	ld e, [hl]                                       ; $647d: $5e
	sbc h                                            ; $647e: $9c
	inc [hl]                                         ; $647f: $34
	ldh a, [c]                                       ; $6480: $f2
	add hl, de                                       ; $6481: $19
	ld [hl], c                                       ; $6482: $71
	ld c, [hl]                                       ; $6483: $4e
	ld a, $3c                                        ; $6484: $3e $3c
	ld a, [hl-]                                      ; $6486: $3a
	jr c, jr_08f_64d5                                ; $6487: $38 $4c

	add hl, bc                                       ; $6489: $09
	db $eb                                           ; $648a: $eb
	inc [hl]                                         ; $648b: $34
	ld b, l                                          ; $648c: $45
	ld c, h                                          ; $648d: $4c
	and b                                            ; $648e: $a0
	ld d, h                                          ; $648f: $54
	ld c, l                                          ; $6490: $4d
	db $ec                                           ; $6491: $ec
	xor d                                            ; $6492: $aa
	ld d, l                                          ; $6493: $55
	ld a, [hl-]                                      ; $6494: $3a
	jr c, jr_08f_6438                                ; $6495: $38 $a1

	cpl                                              ; $6497: $2f
	db $eb                                           ; $6498: $eb
	ld a, [$f047]                                    ; $6499: $fa $47 $f0
	halt                                             ; $649c: $76
	ldh a, [rTMA]                                    ; $649d: $f0 $06
	jr c, @+$42                                      ; $649f: $38 $40

	add hl, sp                                       ; $64a1: $39
	ld b, h                                          ; $64a2: $44
	ld c, h                                          ; $64a3: $4c
	add hl, bc                                       ; $64a4: $09
	ld l, [hl]                                       ; $64a5: $6e
	dec sp                                           ; $64a6: $3b
	ldh a, [$36]                                     ; $64a7: $f0 $36
	xor h                                            ; $64a9: $ac
	ld b, b                                          ; $64aa: $40
	add hl, sp                                       ; $64ab: $39

jr_08f_64ac:
	ld [hl], a                                       ; $64ac: $77
	add hl, sp                                       ; $64ad: $39
	ld c, d                                          ; $64ae: $4a
	ld a, $66                                        ; $64af: $3e $66
	add hl, sp                                       ; $64b1: $39
	and b                                            ; $64b2: $a0
	cpl                                              ; $64b3: $2f
	ld b, b                                          ; $64b4: $40
	add hl, sp                                       ; $64b5: $39
	ld [hl], $ed                                     ; $64b6: $36 $ed
	ld e, [hl]                                       ; $64b8: $5e
	add hl, bc                                       ; $64b9: $09
	ld d, d                                          ; $64ba: $52
	ld e, e                                          ; $64bb: $5b
	ld c, d                                          ; $64bc: $4a
	ld b, b                                          ; $64bd: $40
	add hl, sp                                       ; $64be: $39
	ld [hl], a                                       ; $64bf: $77
	dec sp                                           ; $64c0: $3b
	ccf                                              ; $64c1: $3f
	ld b, c                                          ; $64c2: $41
	ld b, d                                          ; $64c3: $42
	and c                                            ; $64c4: $a1
	cpl                                              ; $64c5: $2f
	ld b, b                                          ; $64c6: $40
	ld c, l                                          ; $64c7: $4d
	ldh a, [$08]                                     ; $64c8: $f0 $08
	ld e, d                                          ; $64ca: $5a
	ld c, d                                          ; $64cb: $4a
	ld c, a                                          ; $64cc: $4f
	inc [hl]                                         ; $64cd: $34
	ld a, [hl-]                                      ; $64ce: $3a
	jr c, jr_08f_651a                                ; $64cf: $38 $49

	ld [hl], a                                       ; $64d1: $77
	add hl, sp                                       ; $64d2: $39
	ld b, l                                          ; $64d3: $45
	add hl, bc                                       ; $64d4: $09

jr_08f_64d5:
	db $ec                                           ; $64d5: $ec
	ld d, $a8                                        ; $64d6: $16 $a8
	di                                               ; $64d8: $f3
	add e                                            ; $64d9: $83

jr_08f_64da:
	di                                               ; $64da: $f3
	ld sp, $4b47                                     ; $64db: $31 $47 $4b
	inc de                                           ; $64de: $13
	ld a, [$3b38]                                    ; $64df: $fa $38 $3b
	db $ec                                           ; $64e2: $ec
	add hl, de                                       ; $64e3: $19
	ld e, l                                          ; $64e4: $5d
	ld e, d                                          ; $64e5: $5a
	ld c, h                                          ; $64e6: $4c
	and b                                            ; $64e7: $a0
	ld c, h                                          ; $64e8: $4c
	add l                                            ; $64e9: $85
	ld c, h                                          ; $64ea: $4c
	add l                                            ; $64eb: $85
	xor h                                            ; $64ec: $ac
	ld e, d                                          ; $64ed: $5a
	ld c, l                                          ; $64ee: $4d
	ld d, e                                          ; $64ef: $53
	ldh a, [rPCM12]                                  ; $64f0: $f0 $76
	ldh a, [rTMA]                                    ; $64f2: $f0 $06
	add hl, sp                                       ; $64f4: $39
	inc a                                            ; $64f5: $3c
	ld a, [hl-]                                      ; $64f6: $3a
	and c                                            ; $64f7: $a1
	cpl                                              ; $64f8: $2f
	add sp, -$6b                                     ; $64f9: $e8 $95
	and c                                            ; $64fb: $a1
	ld d, h                                          ; $64fc: $54
	ld c, l                                          ; $64fd: $4d
	ld a, [hl]                                       ; $64fe: $7e
	jr c, jr_08f_654d                                ; $64ff: $38 $4c

	xor b                                            ; $6501: $a8
	ld h, e                                          ; $6502: $63
	ld d, a                                          ; $6503: $57
	ld c, c                                          ; $6504: $49
	db $ec                                           ; $6505: $ec
	sub l                                            ; $6506: $95
	jr c, jr_08f_6564                                ; $6507: $38 $5b

	ld d, [hl]                                       ; $6509: $56
	ld b, c                                          ; $650a: $41
	and b                                            ; $650b: $a0
	cpl                                              ; $650c: $2f
	add sp, -$56                                     ; $650d: $e8 $aa
	and c                                            ; $650f: $a1
	ld l, e                                          ; $6510: $6b
	ld b, b                                          ; $6511: $40
	ld c, l                                          ; $6512: $4d
	xor c                                            ; $6513: $a9
	ld b, h                                          ; $6514: $44
	ld e, b                                          ; $6515: $58
	ld b, h                                          ; $6516: $44
	ld e, b                                          ; $6517: $58
	ld e, c                                          ; $6518: $59
	dec sp                                           ; $6519: $3b

jr_08f_651a:
	and b                                            ; $651a: $a0
	cpl                                              ; $651b: $2f
	add sp, $62                                      ; $651c: $e8 $62
	and c                                            ; $651e: $a1
	db $eb                                           ; $651f: $eb
	adc c                                            ; $6520: $89
	pop af                                           ; $6521: $f1
	sbc b                                            ; $6522: $98
	ldh a, [hDisp1_WY]                                     ; $6523: $f0 $95
	push af                                          ; $6525: $f5
	ld [$1338], a                                    ; $6526: $ea $38 $13
	ld b, l                                          ; $6529: $45
	ld c, h                                          ; $652a: $4c
	and b                                            ; $652b: $a0
	jp hl                                            ; $652c: $e9


	ret z                                            ; $652d: $c8

	inc de                                           ; $652e: $13
	db $eb                                           ; $652f: $eb
	ld d, d                                          ; $6530: $52
	ld b, l                                          ; $6531: $45
	and b                                            ; $6532: $a0
	cpl                                              ; $6533: $2f
	ld b, e                                          ; $6534: $43
	ld b, b                                          ; $6535: $40
	add hl, sp                                       ; $6536: $39
	ld b, h                                          ; $6537: $44
	ld c, h                                          ; $6538: $4c
	xor b                                            ; $6539: $a8
	ld b, b                                          ; $653a: $40
	add hl, sp                                       ; $653b: $39
	db $ec                                           ; $653c: $ec
	inc c                                            ; $653d: $0c
	and b                                            ; $653e: $a0
	ldh a, [$5a]                                     ; $653f: $f0 $5a
	add l                                            ; $6541: $85
	inc [hl]                                         ; $6542: $34
	db $ec                                           ; $6543: $ec
	ld e, e                                          ; $6544: $5b
	ld a, [hl-]                                      ; $6545: $3a
	inc de                                           ; $6546: $13
	pop af                                           ; $6547: $f1
	xor c                                            ; $6548: $a9
	ld d, e                                          ; $6549: $53
	jr c, jr_08f_659a                                ; $654a: $38 $4e

	ld c, h                                          ; $654c: $4c

jr_08f_654d:
	and b                                            ; $654d: $a0
	cpl                                              ; $654e: $2f
	jp hl                                            ; $654f: $e9


	ld a, $09                                        ; $6550: $3e $09
	ld b, b                                          ; $6552: $40
	ld b, c                                          ; $6553: $41
	ld a, [hl-]                                      ; $6554: $3a
	ldh a, [$78]                                     ; $6555: $f0 $78
	ld e, e                                          ; $6557: $5b
	inc a                                            ; $6558: $3c
	ld a, [hl-]                                      ; $6559: $3a
	and b                                            ; $655a: $a0
	cpl                                              ; $655b: $2f
	add sp, -$20                                     ; $655c: $e8 $e0
	add hl, bc                                       ; $655e: $09
	ld l, e                                          ; $655f: $6b
	add d                                            ; $6560: $82
	dec sp                                           ; $6561: $3b
	ccf                                              ; $6562: $3f
	ld b, c                                          ; $6563: $41

jr_08f_6564:
	ld b, d                                          ; $6564: $42
	and c                                            ; $6565: $a1
	cpl                                              ; $6566: $2f
	jp hl                                            ; $6567: $e9


	or a                                             ; $6568: $b7
	add hl, bc                                       ; $6569: $09
	pop af                                           ; $656a: $f1
	xor c                                            ; $656b: $a9
	ld c, e                                          ; $656c: $4b
	ld l, e                                          ; $656d: $6b
	ld b, a                                          ; $656e: $47
	ld c, a                                          ; $656f: $4f
	inc de                                           ; $6570: $13
	ldh a, [$a4]                                     ; $6571: $f0 $a4
	ld e, [hl]                                       ; $6573: $5e
	ld a, [hl-]                                      ; $6574: $3a
	ld d, l                                          ; $6575: $55
	ccf                                              ; $6576: $3f
	jr c, jr_08f_65b1                                ; $6577: $38 $38

	inc a                                            ; $6579: $3c

jr_08f_657a:
	ld d, b                                          ; $657a: $50
	xor h                                            ; $657b: $ac
	jr c, jr_08f_65b6                                ; $657c: $38 $38

	ld a, [hl-]                                      ; $657e: $3a
	ld [hl], h                                       ; $657f: $74
	and b                                            ; $6580: $a0
	cpl                                              ; $6581: $2f
	ld b, b                                          ; $6582: $40
	ld c, l                                          ; $6583: $4d
	ld a, [hl-]                                      ; $6584: $3a
	ld d, a                                          ; $6585: $57
	ld b, d                                          ; $6586: $42
	db $ed                                           ; $6587: $ed
	ret c                                            ; $6588: $d8

	ld c, e                                          ; $6589: $4b
	ld b, [hl]                                       ; $658a: $46
	ld c, [hl]                                       ; $658b: $4e
	ld b, l                                          ; $658c: $45
	add hl, bc                                       ; $658d: $09
	ld [$a035], a                                    ; $658e: $ea $35 $a0
	cpl                                              ; $6591: $2f
	db $eb                                           ; $6592: $eb
	ld a, [$3c6b]                                    ; $6593: $fa $6b $3c
	ldh a, [$a4]                                     ; $6596: $f0 $a4
	ld e, [hl]                                       ; $6598: $5e
	ccf                                              ; $6599: $3f

jr_08f_659a:
	ld c, [hl]                                       ; $659a: $4e
	ld b, d                                          ; $659b: $42
	and c                                            ; $659c: $a1
	pop af                                           ; $659d: $f1
	ld l, [hl]                                       ; $659e: $6e
	ldh a, [$cf]                                     ; $659f: $f0 $cf
	inc [hl]                                         ; $65a1: $34
	ldh a, [$a4]                                     ; $65a2: $f0 $a4
	ld e, [hl]                                       ; $65a4: $5e
	ccf                                              ; $65a5: $3f
	ld c, [hl]                                       ; $65a6: $4e
	ld h, e                                          ; $65a7: $63
	ld b, l                                          ; $65a8: $45
	and b                                            ; $65a9: $a0
	cpl                                              ; $65aa: $2f
	ld b, b                                          ; $65ab: $40
	ld b, c                                          ; $65ac: $41
	ld a, [hl-]                                      ; $65ad: $3a
	sbc d                                            ; $65ae: $9a
	ld c, e                                          ; $65af: $4b
	ld a, [hl-]                                      ; $65b0: $3a

jr_08f_65b1:
	jr c, jr_08f_65f8                                ; $65b1: $38 $45

	add hl, bc                                       ; $65b3: $09
	ld b, b                                          ; $65b4: $40
	ld c, l                                          ; $65b5: $4d

jr_08f_65b6:
	ld e, e                                          ; $65b6: $5b
	ld d, [hl]                                       ; $65b7: $56
	inc [hl]                                         ; $65b8: $34
	pop af                                           ; $65b9: $f1
	xor c                                            ; $65ba: $a9
	ld c, a                                          ; $65bb: $4f
	db $ed                                           ; $65bc: $ed
	cp e                                             ; $65bd: $bb
	ld a, [hl-]                                      ; $65be: $3a
	and b                                            ; $65bf: $a0
	ld l, d                                          ; $65c0: $6a
	ld [hl], d                                       ; $65c1: $72
	ccf                                              ; $65c2: $3f
	ld e, h                                          ; $65c3: $5c
	dec a                                            ; $65c4: $3d
	ld a, l                                          ; $65c5: $7d
	ldh a, [$03]                                     ; $65c6: $f0 $03
	ldh a, [$35]                                     ; $65c8: $f0 $35
	ld b, d                                          ; $65ca: $42
	inc de                                           ; $65cb: $13
	db $ec                                           ; $65cc: $ec
	ldh a, [c]                                       ; $65cd: $f2
	inc [hl]                                         ; $65ce: $34
	pop af                                           ; $65cf: $f1
	ld d, d                                          ; $65d0: $52
	db $ec                                           ; $65d1: $ec
	cp c                                             ; $65d2: $b9
	ld c, c                                          ; $65d3: $49
	ld [hl], a                                       ; $65d4: $77
	ld h, e                                          ; $65d5: $63
	ld a, [hl-]                                      ; $65d6: $3a
	jr c, jr_08f_657a                                ; $65d7: $38 $a1

	cpl                                              ; $65d9: $2f
	ld a, l                                          ; $65da: $7d
	ldh a, [$03]                                     ; $65db: $f0 $03
	ldh a, [$35]                                     ; $65dd: $f0 $35
	dec sp                                           ; $65df: $3b
	ccf                                              ; $65e0: $3f
	pop af                                           ; $65e1: $f1
	sub $7e                                          ; $65e2: $d6 $7e
	jr c, jr_08f_662b                                ; $65e4: $38 $45

	ld c, h                                          ; $65e6: $4c
	add l                                            ; $65e7: $85
	add hl, bc                                       ; $65e8: $09
	db $ed                                           ; $65e9: $ed
	ld b, c                                          ; $65ea: $41
	inc [hl]                                         ; $65eb: $34
	db $ed                                           ; $65ec: $ed

jr_08f_65ed:
	ld b, c                                          ; $65ed: $41
	and b                                            ; $65ee: $a0
	cpl                                              ; $65ef: $2f
	add sp, $2f                                      ; $65f0: $e8 $2f
	add hl, bc                                       ; $65f2: $09
	ld l, a                                          ; $65f3: $6f
	db $ed                                           ; $65f4: $ed
	ld b, e                                          ; $65f5: $43
	inc de                                           ; $65f6: $13
	ld b, b                                          ; $65f7: $40

jr_08f_65f8:
	ld b, d                                          ; $65f8: $42
	sbc l                                            ; $65f9: $9d
	ld d, b                                          ; $65fa: $50
	jr c, jr_08f_65ed                                ; $65fb: $38 $f0

	dec l                                            ; $65fd: $2d
	dec sp                                           ; $65fe: $3b
	ccf                                              ; $65ff: $3f
	ld c, [hl]                                       ; $6600: $4e
	ld h, e                                          ; $6601: $63
	ld b, l                                          ; $6602: $45
	and b                                            ; $6603: $a0
	cpl                                              ; $6604: $2f
	add sp, -$6f                                     ; $6605: $e8 $91
	and c                                            ; $6607: $a1
	ld b, b                                          ; $6608: $40
	ld b, c                                          ; $6609: $41
	ld a, [hl-]                                      ; $660a: $3a
	inc [hl]                                         ; $660b: $34
	ld a, [$3c36]                                    ; $660c: $fa $36 $3c
	jr c, jr_08f_665a                                ; $660f: $38 $49

	ld d, h                                          ; $6611: $54
	ld d, d                                          ; $6612: $52
	ld c, d                                          ; $6613: $4a
	xor h                                            ; $6614: $ac
	ld [hl], d                                       ; $6615: $72
	ccf                                              ; $6616: $3f
	ld a, [hl-]                                      ; $6617: $3a
	jr c, jr_08f_665f                                ; $6618: $38 $45

	and b                                            ; $661a: $a0
	ldh a, [rOBP0]                                   ; $661b: $f0 $48
	ldh a, [$2c]                                     ; $661d: $f0 $2c
	ldh a, [rLY]                                     ; $661f: $f0 $44
	dec sp                                           ; $6621: $3b
	ccf                                              ; $6622: $3f
	xor h                                            ; $6623: $ac
	ld h, e                                          ; $6624: $63
	ld d, a                                          ; $6625: $57
	ld c, c                                          ; $6626: $49
	sub b                                            ; $6627: $90
	ld a, $38                                        ; $6628: $3e $38
	ld b, l                                          ; $662a: $45

jr_08f_662b:
	ld c, h                                          ; $662b: $4c
	and b                                            ; $662c: $a0
	cpl                                              ; $662d: $2f
	halt                                             ; $662e: $76
	ld c, a                                          ; $662f: $4f
	inc [hl]                                         ; $6630: $34
	ld b, b                                          ; $6631: $40
	add hl, sp                                       ; $6632: $39
	ld [hl], a                                       ; $6633: $77
	add hl, sp                                       ; $6634: $39
	ld b, l                                          ; $6635: $45
	add hl, bc                                       ; $6636: $09
	ld l, [hl]                                       ; $6637: $6e
	dec sp                                           ; $6638: $3b
	ldh a, [$36]                                     ; $6639: $f0 $36
	inc [hl]                                         ; $663b: $34
	ld b, b                                          ; $663c: $40
	add hl, sp                                       ; $663d: $39
	ld c, d                                          ; $663e: $4a
	ld a, $66                                        ; $663f: $3e $66
	add hl, sp                                       ; $6641: $39
	and b                                            ; $6642: $a0
	cpl                                              ; $6643: $2f
	db $ed                                           ; $6644: $ed
	sub d                                            ; $6645: $92
	ld a, [hl-]                                      ; $6646: $3a
	ld b, c                                          ; $6647: $41
	db $ec                                           ; $6648: $ec
	ret c                                            ; $6649: $d8

	and c                                            ; $664a: $a1
	ld e, [hl]                                       ; $664b: $5e
	add l                                            ; $664c: $85
	ld e, c                                          ; $664d: $59
	dec sp                                           ; $664e: $3b
	xor b                                            ; $664f: $a8
	ld d, d                                          ; $6650: $52
	ld e, e                                          ; $6651: $5b
	ld c, d                                          ; $6652: $4a
	inc de                                           ; $6653: $13
	ld b, b                                          ; $6654: $40
	ld b, c                                          ; $6655: $41
	ld a, [hl-]                                      ; $6656: $3a
	sbc d                                            ; $6657: $9a
	add d                                            ; $6658: $82
	dec sp                                           ; $6659: $3b

jr_08f_665a:
	ccf                                              ; $665a: $3f
	ld b, c                                          ; $665b: $41
	ld b, d                                          ; $665c: $42
	and b                                            ; $665d: $a0
	cpl                                              ; $665e: $2f

jr_08f_665f:
	db $eb                                           ; $665f: $eb
	ld a, [$3a49]                                    ; $6660: $fa $49 $3a
	ld d, b                                          ; $6663: $50
	ld e, d                                          ; $6664: $5a
	ld d, h                                          ; $6665: $54
	ld c, d                                          ; $6666: $4a
	ld c, a                                          ; $6667: $4f
	ld c, b                                          ; $6668: $48
	add hl, bc                                       ; $6669: $09
	ld l, e                                          ; $666a: $6b
	inc a                                            ; $666b: $3c
	inc [hl]                                         ; $666c: $34
	ldh a, [hDisp0_WX]                                     ; $666d: $f0 $89
	pop af                                           ; $666f: $f1
	daa                                              ; $6670: $27
	ld d, l                                          ; $6671: $55
	ld e, b                                          ; $6672: $58
	jr c, jr_08f_66af                                ; $6673: $38 $3a

	ld [hl], h                                       ; $6675: $74
	and b                                            ; $6676: $a0
	ldh a, [rOBP0]                                   ; $6677: $f0 $48
	ldh a, [$2c]                                     ; $6679: $f0 $2c
	ldh a, [rLY]                                     ; $667b: $f0 $44
	ld c, e                                          ; $667d: $4b
	ldh a, [c]                                       ; $667e: $f2
	cp l                                             ; $667f: $bd
	ld d, l                                          ; $6680: $55
	ccf                                              ; $6681: $3f
	xor h                                            ; $6682: $ac
	ld [hl], d                                       ; $6683: $72
	ld c, [hl]                                       ; $6684: $4e
	ldh a, [$28]                                     ; $6685: $f0 $28
	ld d, e                                          ; $6687: $53
	pop af                                           ; $6688: $f1
	sub d                                            ; $6689: $92
	jr c, @+$47                                      ; $668a: $38 $45

	ld c, h                                          ; $668c: $4c
	and b                                            ; $668d: $a0
	cpl                                              ; $668e: $2f
	db $ec                                           ; $668f: $ec
	jr nz, jr_08f_66ff                               ; $6690: $20 $6d

	ld l, b                                          ; $6692: $68
	jr c, jr_08f_66d4                                ; $6693: $38 $3f

	ld c, a                                          ; $6695: $4f
	ldh a, [c]                                       ; $6696: $f2
	ld a, [hl]                                       ; $6697: $7e
	ld e, h                                          ; $6698: $5c
	ld a, [hl-]                                      ; $6699: $3a
	jr c, jr_08f_66e8                                ; $669a: $38 $4c

	add hl, bc                                       ; $669c: $09
	ld b, b                                          ; $669d: $40
	add hl, sp                                       ; $669e: $39
	inc [hl]                                         ; $669f: $34
	ld b, b                                          ; $66a0: $40
	ld b, d                                          ; $66a1: $42
	ld c, c                                          ; $66a2: $49
	ld h, h                                          ; $66a3: $64
	ld d, a                                          ; $66a4: $57
	and b                                            ; $66a5: $a0
	cpl                                              ; $66a6: $2f
	ldh a, [$f3]                                     ; $66a7: $f0 $f3
	ld c, l                                          ; $66a9: $4d
	ld c, [hl]                                       ; $66aa: $4e
	ld b, h                                          ; $66ab: $44
	ld e, l                                          ; $66ac: $5d
	ld b, h                                          ; $66ad: $44
	ld b, l                                          ; $66ae: $45

jr_08f_66af:
	add hl, bc                                       ; $66af: $09
	ld h, h                                          ; $66b0: $64
	ld e, e                                          ; $66b1: $5b
	ld b, c                                          ; $66b2: $41
	ld d, l                                          ; $66b3: $55
	ld e, b                                          ; $66b4: $58
	ld e, c                                          ; $66b5: $59
	dec sp                                           ; $66b6: $3b
	and b                                            ; $66b7: $a0
	cpl                                              ; $66b8: $2f
	ret                                              ; $66b9: $c9


	pop af                                           ; $66ba: $f1
	sub d                                            ; $66bb: $92
	ld d, c                                          ; $66bc: $51
	ldh a, [$cb]                                     ; $66bd: $f0 $cb
	inc a                                            ; $66bf: $3c
	ld a, [hl-]                                      ; $66c0: $3a
	ld c, b                                          ; $66c1: $48
	add hl, bc                                       ; $66c2: $09
	db $eb                                           ; $66c3: $eb
	adc c                                            ; $66c4: $89
	xor h                                            ; $66c5: $ac
	ldh a, [$f3]                                     ; $66c6: $f0 $f3
	ld c, l                                          ; $66c8: $4d
	ccf                                              ; $66c9: $3f
	ld d, l                                          ; $66ca: $55
	ld c, [hl]                                       ; $66cb: $4e
	ld b, l                                          ; $66cc: $45
	ld c, h                                          ; $66cd: $4c
	and b                                            ; $66ce: $a0
	db $ec                                           ; $66cf: $ec
	ld a, [$7234]                                    ; $66d0: $fa $34 $72
	dec a                                            ; $66d3: $3d

jr_08f_66d4:
	ld [hl], d                                       ; $66d4: $72
	dec a                                            ; $66d5: $3d
	xor c                                            ; $66d6: $a9
	db $ec                                           ; $66d7: $ec
	xor d                                            ; $66d8: $aa
	inc a                                            ; $66d9: $3c
	dec sp                                           ; $66da: $3b
	dec a                                            ; $66db: $3d
	ld c, h                                          ; $66dc: $4c
	and b                                            ; $66dd: $a0
	cpl                                              ; $66de: $2f
	jp hl                                            ; $66df: $e9


	rrc c                                            ; $66e0: $cb $09
	cpl                                              ; $66e2: $2f
	jp hl                                            ; $66e3: $e9


	add hl, sp                                       ; $66e4: $39
	add hl, bc                                       ; $66e5: $09
	ld e, [hl]                                       ; $66e6: $5e
	add l                                            ; $66e7: $85

jr_08f_66e8:
	ld e, c                                          ; $66e8: $59
	dec sp                                           ; $66e9: $3b
	dec [hl]                                         ; $66ea: $35
	ldh a, [$3d]                                     ; $66eb: $f0 $3d
	ld h, l                                          ; $66ed: $65
	ldh a, [$de]                                     ; $66ee: $f0 $de
	ldh a, [rP1]                                     ; $66f0: $f0 $00
	ld e, c                                          ; $66f2: $59
	and b                                            ; $66f3: $a0
	cpl                                              ; $66f4: $2f
	jp hl                                            ; $66f5: $e9


	call z, Call_08f_4009                            ; $66f6: $cc $09 $40
	ld b, c                                          ; $66f9: $41
	ld a, [hl-]                                      ; $66fa: $3a
	inc [hl]                                         ; $66fb: $34
	ld a, [$3c36]                                    ; $66fc: $fa $36 $3c

jr_08f_66ff:
	jr c, jr_08f_674a                                ; $66ff: $38 $49

	ld d, h                                          ; $6701: $54
	ld d, d                                          ; $6702: $52
	ld c, d                                          ; $6703: $4a
	inc de                                           ; $6704: $13
	ld [hl], d                                       ; $6705: $72
	ccf                                              ; $6706: $3f
	ld a, [hl-]                                      ; $6707: $3a
	jr c, jr_08f_674f                                ; $6708: $38 $45

	and b                                            ; $670a: $a0
	cpl                                              ; $670b: $2f
	ld b, e                                          ; $670c: $43
	ld b, b                                          ; $670d: $40
	ld c, l                                          ; $670e: $4d
	ld e, e                                          ; $670f: $5b
	ld d, [hl]                                       ; $6710: $56
	inc [hl]                                         ; $6711: $34
	db $eb                                           ; $6712: $eb
	ld d, d                                          ; $6713: $52
	and b                                            ; $6714: $a0
	ld b, b                                          ; $6715: $40
	add hl, sp                                       ; $6716: $39
	ld a, $45                                        ; $6717: $3e $45
	add hl, sp                                       ; $6719: $39
	and b                                            ; $671a: $a0
	pop af                                           ; $671b: $f1
	jp c, $2cf0                                      ; $671c: $da $f0 $2c

	dec sp                                           ; $671f: $3b
	ccf                                              ; $6720: $3f
	xor h                                            ; $6721: $ac
	ld b, [hl]                                       ; $6722: $46
	ld d, d                                          ; $6723: $52
	ld d, a                                          ; $6724: $57
	ldh a, [rOBP0]                                   ; $6725: $f0 $48
	inc a                                            ; $6727: $3c
	ld a, [hl-]                                      ; $6728: $3a
	jr c, jr_08f_6767                                ; $6729: $38 $3c

	ld d, b                                          ; $672b: $50
	ld c, h                                          ; $672c: $4c
	and b                                            ; $672d: $a0
	cpl                                              ; $672e: $2f
	ld e, [hl]                                       ; $672f: $5e
	dec sp                                           ; $6730: $3b
	ld [hl], $f0                                     ; $6731: $36 $f0
	ld h, h                                          ; $6733: $64
	jr c, jr_08f_6770                                ; $6734: $38 $3a

	ld b, d                                          ; $6736: $42
	and c                                            ; $6737: $a1
	ld b, b                                          ; $6738: $40
	add hl, sp                                       ; $6739: $39
	db $ec                                           ; $673a: $ec
	ret c                                            ; $673b: $d8

	ld e, l                                          ; $673c: $5d
	ld e, d                                          ; $673d: $5a
	xor l                                            ; $673e: $ad
	adc e                                            ; $673f: $8b
	ld e, h                                          ; $6740: $5c
	ld c, d                                          ; $6741: $4a
	ld c, a                                          ; $6742: $4f
	ldh a, [rAUD1LOW]                                ; $6743: $f0 $13
	jr c, jr_08f_6783                                ; $6745: $38 $3c

	ld a, [hl-]                                      ; $6747: $3a
	ld c, b                                          ; $6748: $48
	and b                                            ; $6749: $a0

jr_08f_674a:
	cpl                                              ; $674a: $2f
	ldh a, [rOBP0]                                   ; $674b: $f0 $48
	inc a                                            ; $674d: $3c
	ld a, [hl-]                                      ; $674e: $3a

jr_08f_674f:
	jr c, jr_08f_6798                                ; $674f: $38 $47

	ldh a, [$ec]                                     ; $6751: $f0 $ec
	ld d, d                                          ; $6753: $52
	dec sp                                           ; $6754: $3b
	ccf                                              ; $6755: $3f
	ld c, [hl]                                       ; $6756: $4e
	ld b, l                                          ; $6757: $45
	add hl, bc                                       ; $6758: $09
	db $eb                                           ; $6759: $eb
	ld [hl], h                                       ; $675a: $74
	ld h, e                                          ; $675b: $63
	ld b, l                                          ; $675c: $45
	and b                                            ; $675d: $a0
	cpl                                              ; $675e: $2f
	ldh a, [rOBP0]                                   ; $675f: $f0 $48
	ld d, l                                          ; $6761: $55
	db $ec                                           ; $6762: $ec
	or $ed                                           ; $6763: $f6 $ed
	ld l, a                                          ; $6765: $6f
	ld h, c                                          ; $6766: $61

jr_08f_6767:
	ldh a, [$5c]                                     ; $6767: $f0 $5c
	jr c, @+$47                                      ; $6769: $38 $45

	add hl, bc                                       ; $676b: $09
	ld l, e                                          ; $676c: $6b
	ld a, a                                          ; $676d: $7f
	ld b, a                                          ; $676e: $47
	ld b, b                                          ; $676f: $40

jr_08f_6770:
	add hl, sp                                       ; $6770: $39
	ld [hl], a                                       ; $6771: $77
	dec sp                                           ; $6772: $3b
	dec a                                            ; $6773: $3d
	ld b, h                                          ; $6774: $44
	ld e, l                                          ; $6775: $5d
	and b                                            ; $6776: $a0
	db $ec                                           ; $6777: $ec
	ld e, e                                          ; $6778: $5b
	ld a, [hl-]                                      ; $6779: $3a
	ldh a, [hDisp0_OBP0]                                     ; $677a: $f0 $86
	ld b, h                                          ; $677c: $44
	ld c, h                                          ; $677d: $4c
	and b                                            ; $677e: $a0
	ld l, [hl]                                       ; $677f: $6e
	dec sp                                           ; $6780: $3b
	ldh a, [$36]                                     ; $6781: $f0 $36

jr_08f_6783:
	xor h                                            ; $6783: $ac
	ld b, b                                          ; $6784: $40
	add hl, sp                                       ; $6785: $39
	ld [hl], a                                       ; $6786: $77
	add hl, sp                                       ; $6787: $39
	dec sp                                           ; $6788: $3b
	ld a, $66                                        ; $6789: $3e $66
	ld e, c                                          ; $678b: $59
	and b                                            ; $678c: $a0
	db $ec                                           ; $678d: $ec
	ld b, e                                          ; $678e: $43
	xor b                                            ; $678f: $a8
	ld b, b                                          ; $6790: $40
	add hl, sp                                       ; $6791: $39
	ld [hl], a                                       ; $6792: $77
	ld h, e                                          ; $6793: $63
	ld a, [hl-]                                      ; $6794: $3a
	jr c, jr_08f_67d8                                ; $6795: $38 $41

	ld b, h                                          ; $6797: $44

jr_08f_6798:
	and b                                            ; $6798: $a0
	cpl                                              ; $6799: $2f
	ld [$a158], a                                    ; $679a: $ea $58 $a1
	ldh a, [rAUD4LEN]                                ; $679d: $f0 $20
	ld [hl], e                                       ; $679f: $73
	ldh a, [$2b]                                     ; $67a0: $f0 $2b
	ldh a, [$50]                                     ; $67a2: $f0 $50
	ld e, c                                          ; $67a4: $59
	xor b                                            ; $67a5: $a8
	ld c, d                                          ; $67a6: $4a
	ld c, a                                          ; $67a7: $4f
	inc [hl]                                         ; $67a8: $34
	ld l, [hl]                                       ; $67a9: $6e
	dec sp                                           ; $67aa: $3b
	ldh a, [$36]                                     ; $67ab: $f0 $36
	inc [hl]                                         ; $67ad: $34
	pop af                                           ; $67ae: $f1
	jr nc, jr_08f_6822                               ; $67af: $30 $71

	ld b, l                                          ; $67b1: $45
	add hl, sp                                       ; $67b2: $39
	and b                                            ; $67b3: $a0
	db $ec                                           ; $67b4: $ec
	ld e, e                                          ; $67b5: $5b
	xor h                                            ; $67b6: $ac
	ldh a, [$0a]                                     ; $67b7: $f0 $0a
	ld d, l                                          ; $67b9: $55
	ldh a, [$e7]                                     ; $67ba: $f0 $e7
	ld e, a                                          ; $67bc: $5f
	and b                                            ; $67bd: $a0
	pop af                                           ; $67be: $f1
	ld h, l                                          ; $67bf: $65
	dec sp                                           ; $67c0: $3b
	ccf                                              ; $67c1: $3f
	xor h                                            ; $67c2: $ac
	ld l, e                                          ; $67c3: $6b
	inc a                                            ; $67c4: $3c
	ldh a, [$d0]                                     ; $67c5: $f0 $d0
	ld [hl], a                                       ; $67c7: $77
	ldh a, [c]                                       ; $67c8: $f2
	or b                                             ; $67c9: $b0
	db $ec                                           ; $67ca: $ec
	ret c                                            ; $67cb: $d8

	and c                                            ; $67cc: $a1
	cpl                                              ; $67cd: $2f
	ld b, b                                          ; $67ce: $40
	add hl, sp                                       ; $67cf: $39
	ld b, h                                          ; $67d0: $44
	ld c, h                                          ; $67d1: $4c
	inc [hl]                                         ; $67d2: $34
	ld b, b                                          ; $67d3: $40
	add hl, sp                                       ; $67d4: $39
	ld [hl], a                                       ; $67d5: $77
	add hl, sp                                       ; $67d6: $39
	ld b, l                                          ; $67d7: $45

jr_08f_67d8:
	add hl, bc                                       ; $67d8: $09
	pop af                                           ; $67d9: $f1
	ld h, l                                          ; $67da: $65
	di                                               ; $67db: $f3
	ld l, e                                          ; $67dc: $6b
	jr c, jr_08f_6828                                ; $67dd: $38 $49

	inc a                                            ; $67df: $3c
	xor h                                            ; $67e0: $ac
	sub c                                            ; $67e1: $91
	ld d, a                                          ; $67e2: $57
	ld b, b                                          ; $67e3: $40
	add hl, sp                                       ; $67e4: $39
	ld b, h                                          ; $67e5: $44
	ld b, l                                          ; $67e6: $45
	ld c, h                                          ; $67e7: $4c
	and b                                            ; $67e8: $a0
	cpl                                              ; $67e9: $2f
	add sp, -$1f                                     ; $67ea: $e8 $e1
	add hl, bc                                       ; $67ec: $09
	ld b, b                                          ; $67ed: $40
	ld b, c                                          ; $67ee: $41
	ld a, [hl-]                                      ; $67ef: $3a
	ldh a, [$a4]                                     ; $67f0: $f0 $a4
	ld e, [hl]                                       ; $67f2: $5e
	ld a, $3c                                        ; $67f3: $3e $3c
	inc de                                           ; $67f5: $13
	sub h                                            ; $67f6: $94
	ld a, b                                          ; $67f7: $78
	ld a, [hl-]                                      ; $67f8: $3a
	jr c, @+$3c                                      ; $67f9: $38 $3a

	ld b, c                                          ; $67fb: $41
	ccf                                              ; $67fc: $3f
	xor h                                            ; $67fd: $ac
	db $eb                                           ; $67fe: $eb
	scf                                              ; $67ff: $37
	and b                                            ; $6800: $a0
	cpl                                              ; $6801: $2f
	add sp, $30                                      ; $6802: $e8 $30
	add hl, bc                                       ; $6804: $09
	ld e, [hl]                                       ; $6805: $5e
	dec sp                                           ; $6806: $3b
	xor c                                            ; $6807: $a9
	ret nz                                           ; $6808: $c0

	xor b                                            ; $6809: $a8
	db $ec                                           ; $680a: $ec
	ldh a, [$a0]                                     ; $680b: $f0 $a0
	ld b, [hl]                                       ; $680d: $46
	ld c, l                                          ; $680e: $4d
	inc [hl]                                         ; $680f: $34
	ld l, e                                          ; $6810: $6b
	ccf                                              ; $6811: $3f
	jr c, @+$3b                                      ; $6812: $38 $39

	pop af                                           ; $6814: $f1
	ld h, l                                          ; $6815: $65
	ldh a, [$e7]                                     ; $6816: $f0 $e7
	and c                                            ; $6818: $a1
	cpl                                              ; $6819: $2f
	jp hl                                            ; $681a: $e9


	call nz, $f209                                   ; $681b: $c4 $09 $f2
	sub a                                            ; $681e: $97
	ldh a, [$e7]                                     ; $681f: $f0 $e7
	dec sp                                           ; $6821: $3b

jr_08f_6822:
	ccf                                              ; $6822: $3f
	add d                                            ; $6823: $82
	xor $1f                                          ; $6824: $ee $1f
	ld b, h                                          ; $6826: $44
	and b                                            ; $6827: $a0

jr_08f_6828:
	cpl                                              ; $6828: $2f
	add sp, $57                                      ; $6829: $e8 $57
	add hl, bc                                       ; $682b: $09
	ld e, b                                          ; $682c: $58
	dec sp                                           ; $682d: $3b
	ld e, h                                          ; $682e: $5c
	inc [hl]                                         ; $682f: $34
	ldh a, [rAUD4GO]                                 ; $6830: $f0 $23
	ldh a, [c]                                       ; $6832: $f2
	rrca                                             ; $6833: $0f
	ldh a, [$e7]                                     ; $6834: $f0 $e7
	ld c, e                                          ; $6836: $4b
	inc de                                           ; $6837: $13
	ld b, [hl]                                       ; $6838: $46
	ld c, l                                          ; $6839: $4d
	db $ed                                           ; $683a: $ed
	ld b, e                                          ; $683b: $43
	jr c, @+$3d                                      ; $683c: $38 $3b

	ccf                                              ; $683e: $3f
	dec a                                            ; $683f: $3d
	ld b, l                                          ; $6840: $45
	and b                                            ; $6841: $a0
	cpl                                              ; $6842: $2f
	add sp, $28                                      ; $6843: $e8 $28
	add hl, bc                                       ; $6845: $09
	db $ec                                           ; $6846: $ec
	db $ed                                           ; $6847: $ed
	ld d, l                                          ; $6848: $55
	ld c, l                                          ; $6849: $4d
	ccf                                              ; $684a: $3f
	ld c, a                                          ; $684b: $4f
	jr c, jr_08f_6886                                ; $684c: $38 $38

	inc de                                           ; $684e: $13
	ld e, e                                          ; $684f: $5b
	ld d, [hl]                                       ; $6850: $56
	ld b, c                                          ; $6851: $41
	ld c, b                                          ; $6852: $48
	dec [hl]                                         ; $6853: $35
	jr c, jr_08f_68b3                                ; $6854: $38 $5d

	sbc h                                            ; $6856: $9c
	ldh a, [c]                                       ; $6857: $f2
	ld l, h                                          ; $6858: $6c
	and b                                            ; $6859: $a0
	cpl                                              ; $685a: $2f
	jp hl                                            ; $685b: $e9


	ld a, [hl-]                                      ; $685c: $3a
	and c                                            ; $685d: $a1
	ld l, e                                          ; $685e: $6b
	ld b, h                                          ; $685f: $44
	inc [hl]                                         ; $6860: $34
	db $ec                                           ; $6861: $ec
	dec b                                            ; $6862: $05
	ld b, c                                          ; $6863: $41
	ld b, h                                          ; $6864: $44
	and b                                            ; $6865: $a0
	ldh a, [rAUD2HIGH]                               ; $6866: $f0 $19
	ld b, a                                          ; $6868: $47
	sub [hl]                                         ; $6869: $96
	ld c, [hl]                                       ; $686a: $4e
	ld b, d                                          ; $686b: $42
	and c                                            ; $686c: $a1
	cpl                                              ; $686d: $2f
	ld b, e                                          ; $686e: $43
	db $ec                                           ; $686f: $ec
	dec l                                            ; $6870: $2d
	inc [hl]                                         ; $6871: $34
	ldh a, [$08]                                     ; $6872: $f0 $08
	ld d, b                                          ; $6874: $50
	db $ec                                           ; $6875: $ec
	ld b, h                                          ; $6876: $44
	and b                                            ; $6877: $a0
	ldh a, [$3f]                                     ; $6878: $f0 $3f
	ld d, e                                          ; $687a: $53
	adc $46                                          ; $687b: $ce $46
	ld c, [hl]                                       ; $687d: $4e
	ld c, h                                          ; $687e: $4c
	add l                                            ; $687f: $85
	and b                                            ; $6880: $a0
	cpl                                              ; $6881: $2f
	add sp, $38                                      ; $6882: $e8 $38
	and c                                            ; $6884: $a1
	ld d, d                                          ; $6885: $52

jr_08f_6886:
	ld b, [hl]                                       ; $6886: $46
	ld c, h                                          ; $6887: $4c
	and b                                            ; $6888: $a0
	cpl                                              ; $6889: $2f
	jp hl                                            ; $688a: $e9


	ld c, a                                          ; $688b: $4f
	ld c, b                                          ; $688c: $48
	add hl, bc                                       ; $688d: $09
	db $ec                                           ; $688e: $ec
	ld [hl], c                                       ; $688f: $71
	and b                                            ; $6890: $a0
	cpl                                              ; $6891: $2f
	ld d, h                                          ; $6892: $54
	ld b, d                                          ; $6893: $42
	ldh a, [$3f]                                     ; $6894: $f0 $3f
	inc [hl]                                         ; $6896: $34
	db $eb                                           ; $6897: $eb
	ld a, [$f047]                                    ; $6898: $fa $47 $f0
	halt                                             ; $689b: $76
	ccf                                              ; $689c: $3f
	ld c, [hl]                                       ; $689d: $4e
	ld c, h                                          ; $689e: $4c
	add hl, bc                                       ; $689f: $09
	ld b, b                                          ; $68a0: $40
	add hl, sp                                       ; $68a1: $39
	xor c                                            ; $68a2: $a9
	ld h, e                                          ; $68a3: $63
	dec a                                            ; $68a4: $3d
	ld a, $34                                        ; $68a5: $3e $34
	ld b, b                                          ; $68a7: $40
	ld b, c                                          ; $68a8: $41
	ld a, [hl-]                                      ; $68a9: $3a
	ld b, a                                          ; $68aa: $47
	ldh a, [$c2]                                     ; $68ab: $f0 $c2
	ldh a, [rAUD4LEN]                                ; $68ad: $f0 $20
	ld d, l                                          ; $68af: $55
	ld a, [hl-]                                      ; $68b0: $3a
	jr c, @+$47                                      ; $68b1: $38 $45

jr_08f_68b3:
	and b                                            ; $68b3: $a0
	ld d, h                                          ; $68b4: $54
	ld b, c                                          ; $68b5: $41
	ld a, [hl-]                                      ; $68b6: $3a
	ldh a, [$3f]                                     ; $68b7: $f0 $3f
	xor h                                            ; $68b9: $ac
	ld a, [hl]                                       ; $68ba: $7e
	ld d, l                                          ; $68bb: $55
	ldh a, [$bd]                                     ; $68bc: $f0 $bd
	ld e, l                                          ; $68be: $5d
	ld c, [hl]                                       ; $68bf: $4e
	ld c, h                                          ; $68c0: $4c
	and b                                            ; $68c1: $a0
	cpl                                              ; $68c2: $2f
	add sp, -$68                                     ; $68c3: $e8 $98
	add hl, bc                                       ; $68c5: $09
	ld l, [hl]                                       ; $68c6: $6e
	dec sp                                           ; $68c7: $3b
	ldh a, [$36]                                     ; $68c8: $f0 $36
	inc [hl]                                         ; $68ca: $34
	ld b, b                                          ; $68cb: $40
	add hl, sp                                       ; $68cc: $39
	ld b, h                                          ; $68cd: $44
	ld b, l                                          ; $68ce: $45
	ld c, h                                          ; $68cf: $4c
	and b                                            ; $68d0: $a0
	cpl                                              ; $68d1: $2f
	add sp, $54                                      ; $68d2: $e8 $54
	and c                                            ; $68d4: $a1
	ld d, d                                          ; $68d5: $52
	ld e, e                                          ; $68d6: $5b
	ld c, d                                          ; $68d7: $4a
	ld b, b                                          ; $68d8: $40
	add hl, sp                                       ; $68d9: $39
	ldh a, [$a4]                                     ; $68da: $f0 $a4
	ld e, [hl]                                       ; $68dc: $5e
	ccf                                              ; $68dd: $3f
	ld c, [hl]                                       ; $68de: $4e
	and c                                            ; $68df: $a1
	cpl                                              ; $68e0: $2f
	jp hl                                            ; $68e1: $e9


	push bc                                          ; $68e2: $c5
	add hl, bc                                       ; $68e3: $09
	ld l, a                                          ; $68e4: $6f
	ld b, a                                          ; $68e5: $47
	ld c, e                                          ; $68e6: $4b
	xor h                                            ; $68e7: $ac
	db $eb                                           ; $68e8: $eb
	adc c                                            ; $68e9: $89
	ldh a, [rAUD1LOW]                                ; $68ea: $f0 $13
	ldh a, [$63]                                     ; $68ec: $f0 $63
	ld b, h                                          ; $68ee: $44
	ld c, h                                          ; $68ef: $4c
	and b                                            ; $68f0: $a0
	ld d, h                                          ; $68f1: $54
	ld c, l                                          ; $68f2: $4d
	inc [hl]                                         ; $68f3: $34
	db $ed                                           ; $68f4: $ed
	sbc c                                            ; $68f5: $99
	di                                               ; $68f6: $f3
	ld sp, $1347                                     ; $68f7: $31 $47 $13
	ld a, [$3b38]                                    ; $68fa: $fa $38 $3b
	ccf                                              ; $68fd: $3f
	dec a                                            ; $68fe: $3d
	ld b, l                                          ; $68ff: $45
	ld c, h                                          ; $6900: $4c
	and b                                            ; $6901: $a0
	cpl                                              ; $6902: $2f
	ld b, b                                          ; $6903: $40
	add hl, sp                                       ; $6904: $39
	inc [hl]                                         ; $6905: $34
	ld b, h                                          ; $6906: $44
	inc a                                            ; $6907: $3c
	ld d, b                                          ; $6908: $50
	ldh a, [$a7]                                     ; $6909: $f0 $a7
	ld c, l                                          ; $690b: $4d
	ccf                                              ; $690c: $3f
	ld e, h                                          ; $690d: $5c
	dec a                                            ; $690e: $3d
	ld b, c                                          ; $690f: $41
	ld b, h                                          ; $6910: $44
	add hl, bc                                       ; $6911: $09
	ld d, d                                          ; $6912: $52
	ld e, e                                          ; $6913: $5b
	ldh a, [c]                                       ; $6914: $f2
	db $eb                                           ; $6915: $eb
	xor c                                            ; $6916: $a9
	ld b, b                                          ; $6917: $40
	add hl, sp                                       ; $6918: $39
	jr c, jr_08f_6954                                ; $6919: $38 $39

	db $ec                                           ; $691b: $ec
	or $7d                                           ; $691c: $f6 $7d
	ld a, l                                          ; $691e: $7d
	ld c, h                                          ; $691f: $4c
	and b                                            ; $6920: $a0
	cpl                                              ; $6921: $2f
	ld d, h                                          ; $6922: $54
	ld b, d                                          ; $6923: $42
	ldh a, [$3f]                                     ; $6924: $f0 $3f
	inc [hl]                                         ; $6926: $34
	ld e, d                                          ; $6927: $5a
	add hl, sp                                       ; $6928: $39
	ld [hl], a                                       ; $6929: $77
	add hl, sp                                       ; $692a: $39
	and c                                            ; $692b: $a1
	ld b, c                                          ; $692c: $41
	ld e, c                                          ; $692d: $59
	xor c                                            ; $692e: $a9
	ld a, [hl]                                       ; $692f: $7e
	ld d, l                                          ; $6930: $55
	ldh a, [rTAC]                                    ; $6931: $f0 $07
	inc a                                            ; $6933: $3c
	ld b, c                                          ; $6934: $41
	ld a, [hl-]                                      ; $6935: $3a
	jr c, @+$47                                      ; $6936: $38 $45

	and b                                            ; $6938: $a0
	cpl                                              ; $6939: $2f
	ld b, b                                          ; $693a: $40
	add hl, sp                                       ; $693b: $39
	ld b, h                                          ; $693c: $44
	dec sp                                           ; $693d: $3b
	dec a                                            ; $693e: $3d
	ld e, l                                          ; $693f: $5d
	and c                                            ; $6940: $a1
	pop af                                           ; $6941: $f1
	add d                                            ; $6942: $82
	inc a                                            ; $6943: $3c
	ld a, [$3b38]                                    ; $6944: $fa $38 $3b
	ccf                                              ; $6947: $3f
	dec a                                            ; $6948: $3d
	ld b, l                                          ; $6949: $45
	xor b                                            ; $694a: $a8
	ld [$42b1], a                                    ; $694b: $ea $b1 $42
	and c                                            ; $694e: $a1
	ld b, c                                          ; $694f: $41
	ld e, c                                          ; $6950: $59
	xor c                                            ; $6951: $a9
	ldh a, [rAUD4ENV]                                ; $6952: $f0 $21

jr_08f_6954:
	ldh a, [rAUD4GO]                                 ; $6954: $f0 $23
	jr c, jr_08f_699a                                ; $6956: $38 $42

	inc a                                            ; $6958: $3c
	ld a, [hl-]                                      ; $6959: $3a
	ld [hl], h                                       ; $695a: $74
	and c                                            ; $695b: $a1
	cpl                                              ; $695c: $2f
	adc e                                            ; $695d: $8b
	ld l, h                                          ; $695e: $6c
	ld b, a                                          ; $695f: $47
	ld c, a                                          ; $6960: $4f
	ld b, l                                          ; $6961: $45
	ld c, [hl]                                       ; $6962: $4e
	ld c, h                                          ; $6963: $4c
	add hl, bc                                       ; $6964: $09
	db $ec                                           ; $6965: $ec
	ldh a, [$a8]                                     ; $6966: $f0 $a8
	ld l, a                                          ; $6968: $6f
	ld c, e                                          ; $6969: $4b
	inc [hl]                                         ; $696a: $34
	xor $05                                          ; $696b: $ee $05
	dec sp                                           ; $696d: $3b
	ccf                                              ; $696e: $3f
	ldh a, [$78]                                     ; $696f: $f0 $78
	ld e, e                                          ; $6971: $5b
	and b                                            ; $6972: $a0
	cpl                                              ; $6973: $2f
	db $ed                                           ; $6974: $ed
	ld e, a                                          ; $6975: $5f
	ld d, e                                          ; $6976: $53
	ldh a, [rTAC]                                    ; $6977: $f0 $07
	inc a                                            ; $6979: $3c
	ld b, c                                          ; $697a: $41
	ld a, [hl-]                                      ; $697b: $3a
	jr c, @+$44                                      ; $697c: $38 $42

	and c                                            ; $697e: $a1
	db $ec                                           ; $697f: $ec
	ld [hl], c                                       ; $6980: $71
	dec sp                                           ; $6981: $3b
	xor b                                            ; $6982: $a8
	ldh a, [rTAC]                                    ; $6983: $f0 $07
	inc a                                            ; $6985: $3c
	ld b, c                                          ; $6986: $41
	ld a, [hl-]                                      ; $6987: $3a
	jr c, jr_08f_69ed                                ; $6988: $38 $63

	ld b, l                                          ; $698a: $45
	and b                                            ; $698b: $a0
	cpl                                              ; $698c: $2f
	db $eb                                           ; $698d: $eb
	ld d, h                                          ; $698e: $54
	ldh a, [$a5]                                     ; $698f: $f0 $a5
	ldh a, [c]                                       ; $6991: $f2
	ld a, [bc]                                       ; $6992: $0a
	ld b, h                                          ; $6993: $44
	ld b, l                                          ; $6994: $45
	add hl, bc                                       ; $6995: $09
	ld l, a                                          ; $6996: $6f
	ld b, a                                          ; $6997: $47
	ld c, e                                          ; $6998: $4b
	xor h                                            ; $6999: $ac

jr_08f_699a:
	ld a, [hl]                                       ; $699a: $7e
	ld d, l                                          ; $699b: $55
	ldh a, [rTAC]                                    ; $699c: $f0 $07
	inc a                                            ; $699e: $3c
	ld b, c                                          ; $699f: $41
	ld a, [hl-]                                      ; $69a0: $3a
	jr c, jr_08f_6a11                                ; $69a1: $38 $6e

	and b                                            ; $69a3: $a0
	ld d, h                                          ; $69a4: $54
	ld b, d                                          ; $69a5: $42
	add h                                            ; $69a6: $84
	ld b, d                                          ; $69a7: $42
	ldh a, [$3f]                                     ; $69a8: $f0 $3f
	xor h                                            ; $69aa: $ac
	ldh a, [$2d]                                     ; $69ab: $f0 $2d
	dec sp                                           ; $69ad: $3b
	ccf                                              ; $69ae: $3f
	ld c, [hl]                                       ; $69af: $4e
	ld b, l                                          ; $69b0: $45
	and b                                            ; $69b1: $a0
	cpl                                              ; $69b2: $2f
	ld a, [hl]                                       ; $69b3: $7e
	ld d, l                                          ; $69b4: $55
	ldh a, [$2d]                                     ; $69b5: $f0 $2d
	dec sp                                           ; $69b7: $3b
	ccf                                              ; $69b8: $3f
	ld c, [hl]                                       ; $69b9: $4e
	ld c, h                                          ; $69ba: $4c
	add hl, bc                                       ; $69bb: $09
	db $ed                                           ; $69bc: $ed
	sbc c                                            ; $69bd: $99
	di                                               ; $69be: $f3
	ld sp, $fa47                                     ; $69bf: $31 $47 $fa
	jr c, jr_08f_69ff                                ; $69c2: $38 $3b

	ccf                                              ; $69c4: $3f
	dec a                                            ; $69c5: $3d
	inc de                                           ; $69c6: $13
	inc a                                            ; $69c7: $3c
	ld d, b                                          ; $69c8: $50
	ld c, h                                          ; $69c9: $4c
	and b                                            ; $69ca: $a0
	cpl                                              ; $69cb: $2f
	db $eb                                           ; $69cc: $eb
	ld a, [$4f4a]                                    ; $69cd: $fa $4a $4f
	ldh a, [$2d]                                     ; $69d0: $f0 $2d

jr_08f_69d2:
	dec sp                                           ; $69d2: $3b
	ccf                                              ; $69d3: $3f
	ld c, [hl]                                       ; $69d4: $4e
	ld b, c                                          ; $69d5: $41
	ld b, h                                          ; $69d6: $44
	add hl, bc                                       ; $69d7: $09
	db $ec                                           ; $69d8: $ec
	ld [hl], c                                       ; $69d9: $71
	dec sp                                           ; $69da: $3b
	xor b                                            ; $69db: $a8
	ld b, b                                          ; $69dc: $40
	ld b, d                                          ; $69dd: $42
	sbc l                                            ; $69de: $9d
	ld d, b                                          ; $69df: $50
	jr c, jr_08f_69d2                                ; $69e0: $38 $f0

	dec l                                            ; $69e2: $2d
	dec sp                                           ; $69e3: $3b
	ccf                                              ; $69e4: $3f
	ld c, [hl]                                       ; $69e5: $4e
	ld b, l                                          ; $69e6: $45
	and b                                            ; $69e7: $a0
	cpl                                              ; $69e8: $2f
	pop af                                           ; $69e9: $f1
	adc d                                            ; $69ea: $8a
	ldh a, [$fb]                                     ; $69eb: $f0 $fb

jr_08f_69ed:
	ld a, [hl-]                                      ; $69ed: $3a
	add h                                            ; $69ee: $84
	ld b, d                                          ; $69ef: $42
	ldh a, [$3f]                                     ; $69f0: $f0 $3f
	ld b, h                                          ; $69f2: $44
	inc a                                            ; $69f3: $3c
	ld d, b                                          ; $69f4: $50
	ld c, h                                          ; $69f5: $4c
	add hl, bc                                       ; $69f6: $09
	ld d, d                                          ; $69f7: $52
	ld [hl], h                                       ; $69f8: $74
	inc [hl]                                         ; $69f9: $34
	ld b, b                                          ; $69fa: $40
	add hl, sp                                       ; $69fb: $39
	ld b, h                                          ; $69fc: $44
	ld e, l                                          ; $69fd: $5d
	ld e, d                                          ; $69fe: $5a

jr_08f_69ff:
	ld c, h                                          ; $69ff: $4c
	and b                                            ; $6a00: $a0
	db $eb                                           ; $6a01: $eb
	scf                                              ; $6a02: $37
	xor b                                            ; $6a03: $a8
	ld d, h                                          ; $6a04: $54
	ld c, l                                          ; $6a05: $4d
	sbc [hl]                                         ; $6a06: $9e
	ld b, a                                          ; $6a07: $47
	ld c, a                                          ; $6a08: $4f
	ld a, b                                          ; $6a09: $78
	dec a                                            ; $6a0a: $3d
	ld b, l                                          ; $6a0b: $45
	and b                                            ; $6a0c: $a0
	ld l, [hl]                                       ; $6a0d: $6e
	dec sp                                           ; $6a0e: $3b
	ldh a, [$36]                                     ; $6a0f: $f0 $36

jr_08f_6a11:
	inc [hl]                                         ; $6a11: $34
	pop af                                           ; $6a12: $f1
	jr nc, jr_08f_6a86                               ; $6a13: $30 $71

	ld b, l                                          ; $6a15: $45
	add hl, sp                                       ; $6a16: $39
	ld b, l                                          ; $6a17: $45
	and b                                            ; $6a18: $a0
	cpl                                              ; $6a19: $2f
	ld b, b                                          ; $6a1a: $40
	add hl, sp                                       ; $6a1b: $39
	ld b, h                                          ; $6a1c: $44
	ld c, h                                          ; $6a1d: $4c
	dec [hl]                                         ; $6a1e: $35
	pop af                                           ; $6a1f: $f1
	jr nc, jr_08f_6a93                               ; $6a20: $30 $71

	ld b, l                                          ; $6a22: $45
	add hl, sp                                       ; $6a23: $39
	inc a                                            ; $6a24: $3c
	add hl, bc                                       ; $6a25: $09
	db $ec                                           ; $6a26: $ec
	rla                                              ; $6a27: $17
	xor b                                            ; $6a28: $a8
	pop af                                           ; $6a29: $f1
	jr nc, jr_08f_6a9d                               ; $6a2a: $30 $71

	ld b, l                                          ; $6a2c: $45
	pop af                                           ; $6a2d: $f1
	jr nc, jr_08f_6aa1                               ; $6a2e: $30 $71

	ld b, l                                          ; $6a30: $45
	and b                                            ; $6a31: $a0
	cpl                                              ; $6a32: $2f
	jr c, jr_08f_6aa3                                ; $6a33: $38 $6e

	inc [hl]                                         ; $6a35: $34
	xor $05                                          ; $6a36: $ee $05
	ld b, h                                          ; $6a38: $44
	add hl, bc                                       ; $6a39: $09
	ld h, c                                          ; $6a3a: $61
	ld h, [hl]                                       ; $6a3b: $66
	ldh a, [$be]                                     ; $6a3c: $f0 $be
	inc a                                            ; $6a3e: $3c
	ld e, c                                          ; $6a3f: $59
	dec sp                                           ; $6a40: $3b
	xor b                                            ; $6a41: $a8
	ldh a, [rTAC]                                    ; $6a42: $f0 $07
	inc a                                            ; $6a44: $3c
	dec sp                                           ; $6a45: $3b
	dec a                                            ; $6a46: $3d
	ld h, e                                          ; $6a47: $63
	ld b, l                                          ; $6a48: $45
	and b                                            ; $6a49: $a0
	cpl                                              ; $6a4a: $2f
	adc e                                            ; $6a4b: $8b
	ld e, h                                          ; $6a4c: $5c
	ld b, a                                          ; $6a4d: $47
	ld a, $3f                                        ; $6a4e: $3e $3f
	jr c, jr_08f_6a8a                                ; $6a50: $38 $38

	ld b, l                                          ; $6a52: $45
	add hl, bc                                       ; $6a53: $09
	ld e, e                                          ; $6a54: $5b
	ld d, [hl]                                       ; $6a55: $56
	ld b, [hl]                                       ; $6a56: $46
	inc [hl]                                         ; $6a57: $34
	pop af                                           ; $6a58: $f1
	jr nc, jr_08f_6acc                               ; $6a59: $30 $71

	ld b, l                                          ; $6a5b: $45
	add hl, sp                                       ; $6a5c: $39
	ld b, l                                          ; $6a5d: $45
	and b                                            ; $6a5e: $a0
	db $ec                                           ; $6a5f: $ec
	pop af                                           ; $6a60: $f1
	ld c, e                                          ; $6a61: $4b
	inc [hl]                                         ; $6a62: $34
	ld c, a                                          ; $6a63: $4f
	add hl, sp                                       ; $6a64: $39
	jr c, jr_08f_6a9f                                ; $6a65: $38 $38

	ld b, l                                          ; $6a67: $45
	xor b                                            ; $6a68: $a8
	ld l, [hl]                                       ; $6a69: $6e
	dec sp                                           ; $6a6a: $3b
	ldh a, [$36]                                     ; $6a6b: $f0 $36
	inc [hl]                                         ; $6a6d: $34
	ld a, d                                          ; $6a6e: $7a
	ld c, [hl]                                       ; $6a6f: $4e
	and b                                            ; $6a70: $a0
	xor $1f                                          ; $6a71: $ee $1f
	inc [hl]                                         ; $6a73: $34
	ldh a, [$08]                                     ; $6a74: $f0 $08
	ld b, c                                          ; $6a76: $41
	ld b, d                                          ; $6a77: $42
	xor h                                            ; $6a78: $ac
	ret                                              ; $6a79: $c9


	ld b, d                                          ; $6a7a: $42
	db $ed                                           ; $6a7b: $ed
	adc c                                            ; $6a7c: $89
	ld b, h                                          ; $6a7d: $44
	ld b, l                                          ; $6a7e: $45
	ld c, h                                          ; $6a7f: $4c
	and b                                            ; $6a80: $a0
	cpl                                              ; $6a81: $2f
	ld [hl-], a                                      ; $6a82: $32
	ld e, [hl]                                       ; $6a83: $5e
	dec sp                                           ; $6a84: $3b
	inc [hl]                                         ; $6a85: $34

jr_08f_6a86:
	db $ed                                           ; $6a86: $ed
	adc c                                            ; $6a87: $89
	dec sp                                           ; $6a88: $3b
	ccf                                              ; $6a89: $3f

jr_08f_6a8a:
	ld c, b                                          ; $6a8a: $48
	inc sp                                           ; $6a8b: $33
	add hl, bc                                       ; $6a8c: $09

jr_08f_6a8d:
	ldh a, [$08]                                     ; $6a8d: $f0 $08
	ld d, b                                          ; $6a8f: $50
	xor h                                            ; $6a90: $ac
	ldh a, [$0a]                                     ; $6a91: $f0 $0a

jr_08f_6a93:
	ld d, l                                          ; $6a93: $55
	ld l, [hl]                                       ; $6a94: $6e
	dec sp                                           ; $6a95: $3b
	ld h, c                                          ; $6a96: $61
	ld d, [hl]                                       ; $6a97: $56
	ld h, h                                          ; $6a98: $64
	add hl, sp                                       ; $6a99: $39
	ld b, l                                          ; $6a9a: $45
	and b                                            ; $6a9b: $a0
	cpl                                              ; $6a9c: $2f

jr_08f_6a9d:
	ld b, e                                          ; $6a9d: $43
	ld l, e                                          ; $6a9e: $6b

jr_08f_6a9f:
	ld h, d                                          ; $6a9f: $62
	and c                                            ; $6aa0: $a1

jr_08f_6aa1:
	db $ec                                           ; $6aa1: $ec
	pop af                                           ; $6aa2: $f1

jr_08f_6aa3:
	ld b, a                                          ; $6aa3: $47
	ld a, b                                          ; $6aa4: $78
	ccf                                              ; $6aa5: $3f
	xor h                                            ; $6aa6: $ac
	ld l, [hl]                                       ; $6aa7: $6e
	ld c, [hl]                                       ; $6aa8: $4e
	ld d, h                                          ; $6aa9: $54
	ld c, c                                          ; $6aaa: $49
	dec sp                                           ; $6aab: $3b
	ccf                                              ; $6aac: $3f
	jr c, jr_08f_6aea                                ; $6aad: $38 $3b

	dec a                                            ; $6aaf: $3d
	ld d, b                                          ; $6ab0: $50
	xor h                                            ; $6ab1: $ac
	ld l, l                                          ; $6ab2: $6d
	add b                                            ; $6ab3: $80
	db $ec                                           ; $6ab4: $ec
	ret c                                            ; $6ab5: $d8

	and b                                            ; $6ab6: $a0
	cpl                                              ; $6ab7: $2f
	ld b, e                                          ; $6ab8: $43
	ld c, b                                          ; $6ab9: $48
	and c                                            ; $6aba: $a1
	ld e, [hl]                                       ; $6abb: $5e
	ld e, [hl]                                       ; $6abc: $5e
	dec sp                                           ; $6abd: $3b
	inc [hl]                                         ; $6abe: $34
	ld l, d                                          ; $6abf: $6a
	ld l, b                                          ; $6ac0: $68
	dec sp                                           ; $6ac1: $3b
	ccf                                              ; $6ac2: $3f
	xor h                                            ; $6ac3: $ac
	ldh a, [$35]                                     ; $6ac4: $f0 $35
	ld h, l                                          ; $6ac6: $65
	ldh a, [c]                                       ; $6ac7: $f2
	ld b, h                                          ; $6ac8: $44
	ldh a, [$a5]                                     ; $6ac9: $f0 $a5
	ld d, a                                          ; $6acb: $57

jr_08f_6acc:
	ld b, a                                          ; $6acc: $47
	ld a, b                                          ; $6acd: $78
	dec a                                            ; $6ace: $3d
	ld b, c                                          ; $6acf: $41
	db $ec                                           ; $6ad0: $ec
	ret c                                            ; $6ad1: $d8

	ld b, d                                          ; $6ad2: $42
	and c                                            ; $6ad3: $a1
	cpl                                              ; $6ad4: $2f
	ld b, e                                          ; $6ad5: $43
	ldh a, [$35]                                     ; $6ad6: $f0 $35
	ld h, l                                          ; $6ad8: $65
	ldh a, [c]                                       ; $6ad9: $f2
	ld b, h                                          ; $6ada: $44
	dec sp                                           ; $6adb: $3b
	ccf                                              ; $6adc: $3f
	xor h                                            ; $6add: $ac
	ldh a, [$79]                                     ; $6ade: $f0 $79
	ld l, b                                          ; $6ae0: $68
	inc a                                            ; $6ae1: $3c
	ld d, b                                          ; $6ae2: $50
	ld b, d                                          ; $6ae3: $42
	ldh a, [$60]                                     ; $6ae4: $f0 $60
	add e                                            ; $6ae6: $83
	ld l, c                                          ; $6ae7: $69
	ld b, d                                          ; $6ae8: $42
	and c                                            ; $6ae9: $a1

jr_08f_6aea:
	db $ec                                           ; $6aea: $ec
	db $f4                                           ; $6aeb: $f4
	inc [hl]                                         ; $6aec: $34
	ldh a, [$ec]                                     ; $6aed: $f0 $ec
	ld d, d                                          ; $6aef: $52
	dec sp                                           ; $6af0: $3b
	ccf                                              ; $6af1: $3f
	ld c, [hl]                                       ; $6af2: $4e
	inc de                                           ; $6af3: $13
	ld e, e                                          ; $6af4: $5b
	ld d, [hl]                                       ; $6af5: $56
	ld b, c                                          ; $6af6: $41
	dec [hl]                                         ; $6af7: $35
	ldh a, [$08]                                     ; $6af8: $f0 $08
	ld e, c                                          ; $6afa: $59
	ld d, b                                          ; $6afb: $50
	inc [hl]                                         ; $6afc: $34
	ldh a, [$0a]                                     ; $6afd: $f0 $0a
	ld d, l                                          ; $6aff: $55
	ldh a, [$0a]                                     ; $6b00: $f0 $0a
	ld d, l                                          ; $6b02: $55
	and b                                            ; $6b03: $a0
	cpl                                              ; $6b04: $2f
	ld b, e                                          ; $6b05: $43
	db $eb                                           ; $6b06: $eb
	ld a, [$3f3b]                                    ; $6b07: $fa $3b $3f
	xor h                                            ; $6b0a: $ac
	jr c, jr_08f_6a8d                                ; $6b0b: $38 $80

	ld c, a                                          ; $6b0d: $4f
	ldh a, [$35]                                     ; $6b0e: $f0 $35
	ld h, l                                          ; $6b10: $65
	ldh a, [c]                                       ; $6b11: $f2
	ld b, h                                          ; $6b12: $44
	ldh a, [$a5]                                     ; $6b13: $f0 $a5
	dec sp                                           ; $6b15: $3b
	ccf                                              ; $6b16: $3f
	ld c, [hl]                                       ; $6b17: $4e
	ld b, d                                          ; $6b18: $42
	and c                                            ; $6b19: $a1
	ld b, [hl]                                       ; $6b1a: $46
	dec sp                                           ; $6b1b: $3b
	dec a                                            ; $6b1c: $3d
	ld d, a                                          ; $6b1d: $57
	ld d, d                                          ; $6b1e: $52
	ld e, [hl]                                       ; $6b1f: $5e
	ld e, e                                          ; $6b20: $5b
	ld d, [hl]                                       ; $6b21: $56
	ld b, c                                          ; $6b22: $41
	xor b                                            ; $6b23: $a8
	ld e, e                                          ; $6b24: $5b
	ld d, [hl]                                       ; $6b25: $56
	inc [hl]                                         ; $6b26: $34
	ld d, h                                          ; $6b27: $54
	ld d, h                                          ; $6b28: $54
	ld c, c                                          ; $6b29: $49
	ld d, h                                          ; $6b2a: $54
	ld d, h                                          ; $6b2b: $54
	ld c, c                                          ; $6b2c: $49
	ld d, h                                          ; $6b2d: $54
	ld d, h                                          ; $6b2e: $54
	ld h, h                                          ; $6b2f: $64
	ldh a, [$c8]                                     ; $6b30: $f0 $c8
	jr c, @+$4e                                      ; $6b32: $38 $4c

	and b                                            ; $6b34: $a0
	ld b, [hl]                                       ; $6b35: $46
	pop af                                           ; $6b36: $f1
	dec [hl]                                         ; $6b37: $35
	ld b, c                                          ; $6b38: $41
	inc [hl]                                         ; $6b39: $34
	ldh a, [rIE]                                     ; $6b3a: $f0 $ff
	ld a, $3c                                        ; $6b3c: $3e $3c
	dec sp                                           ; $6b3e: $3b
	dec a                                            ; $6b3f: $3d
	xor b                                            ; $6b40: $a8
	ld l, a                                          ; $6b41: $6f
	inc [hl]                                         ; $6b42: $34
	pop af                                           ; $6b43: $f1
	rrca                                             ; $6b44: $0f
	db $f4                                           ; $6b45: $f4
	ret                                              ; $6b46: $c9


	ldh a, [$71]                                     ; $6b47: $f0 $71
	pop af                                           ; $6b49: $f1
	ld [hl], l                                       ; $6b4a: $75
	di                                               ; $6b4b: $f3
	jp z, Jump_08f_423a                              ; $6b4c: $ca $3a $42

	ld b, l                                          ; $6b4f: $45
	and b                                            ; $6b50: $a0
	cpl                                              ; $6b51: $2f
	ld b, e                                          ; $6b52: $43
	ld b, b                                          ; $6b53: $40
	dec sp                                           ; $6b54: $3b
	inc [hl]                                         ; $6b55: $34
	ld b, b                                          ; $6b56: $40
	ld b, c                                          ; $6b57: $41
	ld a, [hl-]                                      ; $6b58: $3a
	pop af                                           ; $6b59: $f1
	ld [$137f], a                                    ; $6b5a: $ea $7f $13
	ld b, [hl]                                       ; $6b5d: $46
	ld c, [hl]                                       ; $6b5e: $4e
	ld b, d                                          ; $6b5f: $42
	and c                                            ; $6b60: $a1
	ld c, d                                          ; $6b61: $4a
	ld c, a                                          ; $6b62: $4f
	inc [hl]                                         ; $6b63: $34
	ld d, h                                          ; $6b64: $54
	ld c, l                                          ; $6b65: $4d
	ld c, d                                          ; $6b66: $4a
	xor $2c                                          ; $6b67: $ee $2c
	ld c, a                                          ; $6b69: $4f
	inc de                                           ; $6b6a: $13
	pop af                                           ; $6b6b: $f1
	ld d, d                                          ; $6b6c: $52
	ld d, b                                          ; $6b6d: $50
	ld d, l                                          ; $6b6e: $55
	ld a, $66                                        ; $6b6f: $3e $66
	pop af                                           ; $6b71: $f1
	dec [hl]                                         ; $6b72: $35
	ld b, h                                          ; $6b73: $44
	ld c, h                                          ; $6b74: $4c
	and b                                            ; $6b75: $a0
	cpl                                              ; $6b76: $2f
	ld [hl-], a                                      ; $6b77: $32
	ld b, b                                          ; $6b78: $40
	ld b, d                                          ; $6b79: $42
	ld h, e                                          ; $6b7a: $63
	ld d, a                                          ; $6b7b: $57
	ld b, a                                          ; $6b7c: $47
	ld c, e                                          ; $6b7d: $4b
	xor h                                            ; $6b7e: $ac
	jp nc, $e1ed                                     ; $6b7f: $d2 $ed $e1

	ld d, e                                          ; $6b82: $53
	inc de                                           ; $6b83: $13
	ld a, [hl]                                       ; $6b84: $7e
	ld d, l                                          ; $6b85: $55
	ld a, [hl-]                                      ; $6b86: $3a
	jr c, jr_08f_6bce                                ; $6b87: $38 $45

	add hl, sp                                       ; $6b89: $39
	ld a, [hl-]                                      ; $6b8a: $3a
	ld c, b                                          ; $6b8b: $48
	inc sp                                           ; $6b8c: $33
	add hl, bc                                       ; $6b8d: $09
	cpl                                              ; $6b8e: $2f
	ld b, e                                          ; $6b8f: $43
	ld b, b                                          ; $6b90: $40
	add hl, sp                                       ; $6b91: $39
	ld b, h                                          ; $6b92: $44
	ld c, h                                          ; $6b93: $4c
	and b                                            ; $6b94: $a0
	cpl                                              ; $6b95: $2f
	add sp, $29                                      ; $6b96: $e8 $29
	add hl, bc                                       ; $6b98: $09
	cpl                                              ; $6b99: $2f
	add sp, $2a                                      ; $6b9a: $e8 $2a
	add hl, bc                                       ; $6b9c: $09
	ld l, a                                          ; $6b9d: $6f
	xor h                                            ; $6b9e: $ac
	ldh a, [$6d]                                     ; $6b9f: $f0 $6d
	ld e, c                                          ; $6ba1: $59
	ldh a, [$27]                                     ; $6ba2: $f0 $27
	pop af                                           ; $6ba4: $f1
	ld l, e                                          ; $6ba5: $6b
	ldh a, [$c0]                                     ; $6ba6: $f0 $c0
	ld a, [hl-]                                      ; $6ba8: $3a
	ld b, c                                          ; $6ba9: $41
	ld b, h                                          ; $6baa: $44
	and b                                            ; $6bab: $a0
	cpl                                              ; $6bac: $2f
	ret nz                                           ; $6bad: $c0

	dec [hl]                                         ; $6bae: $35
	ld d, c                                          ; $6baf: $51
	ld [hl], b                                       ; $6bb0: $70
	jr c, jr_08f_6bff                                ; $6bb1: $38 $4c

	add hl, bc                                       ; $6bb3: $09
	ldh a, [rAUD2ENV]                                ; $6bb4: $f0 $17
	ld b, a                                          ; $6bb6: $47
	ld a, $3f                                        ; $6bb7: $3e $3f
	ld c, e                                          ; $6bb9: $4b
	xor h                                            ; $6bba: $ac
	ldh a, [c]                                       ; $6bbb: $f2
	ld a, [$383e]                                    ; $6bbc: $fa $3e $38
	dec sp                                           ; $6bbf: $3b
	ld a, $66                                        ; $6bc0: $3e $66
	and b                                            ; $6bc2: $a0
	cpl                                              ; $6bc3: $2f
	ld b, b                                          ; $6bc4: $40
	ld b, c                                          ; $6bc5: $41
	ld a, [hl-]                                      ; $6bc6: $3a
	ld b, d                                          ; $6bc7: $42
	ldh a, [$67]                                     ; $6bc8: $f0 $67
	ldh a, [c]                                       ; $6bca: $f2
	dec h                                            ; $6bcb: $25
	ld b, a                                          ; $6bcc: $47
	ld a, [hl-]                                      ; $6bcd: $3a

jr_08f_6bce:
	ld d, b                                          ; $6bce: $50
	ld a, [hl-]                                      ; $6bcf: $3a
	jr c, jr_08f_6c17                                ; $6bd0: $38 $45

	add hl, bc                                       ; $6bd2: $09
	db $ec                                           ; $6bd3: $ec
	ld [hl], c                                       ; $6bd4: $71
	dec sp                                           ; $6bd5: $3b
	xor b                                            ; $6bd6: $a8
	sub h                                            ; $6bd7: $94
	ld a, b                                          ; $6bd8: $78
	ld a, [hl-]                                      ; $6bd9: $3a
	jr c, jr_08f_6c21                                ; $6bda: $38 $45

	ld d, a                                          ; $6bdc: $57
	jr c, jr_08f_6c17                                ; $6bdd: $38 $38

	ld b, l                                          ; $6bdf: $45
	and b                                            ; $6be0: $a0
	cpl                                              ; $6be1: $2f
	ldh a, [$6d]                                     ; $6be2: $f0 $6d
	ld e, c                                          ; $6be4: $59
	ldh a, [rAUD3LOW]                                ; $6be5: $f0 $1d
	ld e, c                                          ; $6be7: $59
	dec sp                                           ; $6be8: $3b
	ccf                                              ; $6be9: $3f
	ldh a, [$f8]                                     ; $6bea: $f0 $f8
	and c                                            ; $6bec: $a1
	rst JumpTable                                          ; $6bed: $c7
	ld a, [hl-]                                      ; $6bee: $3a
	ld b, d                                          ; $6bef: $42
	inc a                                            ; $6bf0: $3c
	ld a, [hl-]                                      ; $6bf1: $3a
	and c                                            ; $6bf2: $a1
	ld e, d                                          ; $6bf3: $5a
	ld b, c                                          ; $6bf4: $41
	ld a, [hl-]                                      ; $6bf5: $3a
	ldh a, [$6d]                                     ; $6bf6: $f0 $6d
	ld e, c                                          ; $6bf8: $59
	ldh a, [$27]                                     ; $6bf9: $f0 $27
	ld d, e                                          ; $6bfb: $53
	adc e                                            ; $6bfc: $8b
	ld e, h                                          ; $6bfd: $5c
	and c                                            ; $6bfe: $a1

jr_08f_6bff:
	cpl                                              ; $6bff: $2f
	ld [$3c71], a                                    ; $6c00: $ea $71 $3c
	ld a, [hl-]                                      ; $6c03: $3a
	ld [hl], h                                       ; $6c04: $74
	add hl, bc                                       ; $6c05: $09
	ld l, a                                          ; $6c06: $6f
	ld c, a                                          ; $6c07: $4f
	ld [hl], c                                       ; $6c08: $71
	ld h, c                                          ; $6c09: $61
	ld d, [hl]                                       ; $6c0a: $56
	pop af                                           ; $6c0b: $f1
	ld l, e                                          ; $6c0c: $6b
	ldh a, [$c0]                                     ; $6c0d: $f0 $c0
	ld b, l                                          ; $6c0f: $45
	and b                                            ; $6c10: $a0
	cpl                                              ; $6c11: $2f
	db $eb                                           ; $6c12: $eb
	jp nc, $3a3c                                     ; $6c13: $d2 $3c $3a

	ld [hl], h                                       ; $6c16: $74

jr_08f_6c17:
	add hl, bc                                       ; $6c17: $09
	ld d, h                                          ; $6c18: $54
	ld c, l                                          ; $6c19: $4d
	dec sp                                           ; $6c1a: $3b
	ccf                                              ; $6c1b: $3f
	inc [hl]                                         ; $6c1c: $34
	pop af                                           ; $6c1d: $f1
	sub $f1                                          ; $6c1e: $d6 $f1
	ld a, [hl-]                                      ; $6c20: $3a

jr_08f_6c21:
	ld d, l                                          ; $6c21: $55
	inc de                                           ; $6c22: $13
	ld a, [hl-]                                      ; $6c23: $3a
	ld b, c                                          ; $6c24: $41
	ld a, [hl-]                                      ; $6c25: $3a
	jr c, @-$5d                                      ; $6c26: $38 $a1

	cpl                                              ; $6c28: $2f
	ld [$3c82], a                                    ; $6c29: $ea $82 $3c
	ld a, [hl-]                                      ; $6c2c: $3a
	ld [hl], h                                       ; $6c2d: $74
	add hl, bc                                       ; $6c2e: $09
	ld l, a                                          ; $6c2f: $6f
	ld c, a                                          ; $6c30: $4f
	inc [hl]                                         ; $6c31: $34
	ld h, e                                          ; $6c32: $63
	ld d, a                                          ; $6c33: $57
	ld c, c                                          ; $6c34: $49
	inc de                                           ; $6c35: $13
	add hl, sp                                       ; $6c36: $39
	ld d, d                                          ; $6c37: $52
	jr c, jr_08f_6c75                                ; $6c38: $38 $3b

	ccf                                              ; $6c3a: $3f
	add d                                            ; $6c3b: $82
	add hl, sp                                       ; $6c3c: $39
	inc a                                            ; $6c3d: $3c
	inc de                                           ; $6c3e: $13
	db $ec                                           ; $6c3f: $ec
	sub $8b                                          ; $6c40: $d6 $8b
	ld e, h                                          ; $6c42: $5c
	ld b, l                                          ; $6c43: $45
	and b                                            ; $6c44: $a0
	ldh a, [$9d]                                     ; $6c45: $f0 $9d
	ldh a, [$f1]                                     ; $6c47: $f0 $f1
	ldh a, [$03]                                     ; $6c49: $f0 $03
	ldh a, [$6d]                                     ; $6c4b: $f0 $6d
	ld e, c                                          ; $6c4d: $59
	ldh a, [$27]                                     ; $6c4e: $f0 $27
	ld c, e                                          ; $6c50: $4b
	inc de                                           ; $6c51: $13
	jp nc, $3e34                                     ; $6c52: $d2 $34 $3e

	ld a, [hl-]                                      ; $6c55: $3a
	jr c, jr_08f_6c99                                ; $6c56: $38 $41

	ld b, h                                          ; $6c58: $44
	and b                                            ; $6c59: $a0
	cpl                                              ; $6c5a: $2f
	ld l, [hl]                                       ; $6c5b: $6e
	dec sp                                           ; $6c5c: $3b
	ccf                                              ; $6c5d: $3f
	ld l, h                                          ; $6c5e: $6c
	dec a                                            ; $6c5f: $3d
	ld d, b                                          ; $6c60: $50
	sub b                                            ; $6c61: $90
	ld a, $38                                        ; $6c62: $3e $38
	ld c, c                                          ; $6c64: $49
	ld [hl], a                                       ; $6c65: $77
	add hl, sp                                       ; $6c66: $39
	ld b, l                                          ; $6c67: $45
	add hl, bc                                       ; $6c68: $09
	ld b, b                                          ; $6c69: $40
	add hl, sp                                       ; $6c6a: $39
	ld b, h                                          ; $6c6b: $44
	ld c, c                                          ; $6c6c: $49
	ld [hl], a                                       ; $6c6d: $77
	add hl, sp                                       ; $6c6e: $39
	ld e, l                                          ; $6c6f: $5d
	ld e, d                                          ; $6c70: $5a
	xor h                                            ; $6c71: $ac
	ld [$4971], a                                    ; $6c72: $ea $71 $49

jr_08f_6c75:
	inc a                                            ; $6c75: $3c
	ld b, d                                          ; $6c76: $42
	inc de                                           ; $6c77: $13
	ldh a, [$38]                                     ; $6c78: $f0 $38
	ld d, e                                          ; $6c7a: $53
	jr c, jr_08f_6cb5                                ; $6c7b: $38 $38

	ld a, [hl-]                                      ; $6c7d: $3a
	ld [hl], h                                       ; $6c7e: $74
	and b                                            ; $6c7f: $a0
	cpl                                              ; $6c80: $2f
	ldh a, [$5d]                                     ; $6c81: $f0 $5d
	ld a, [hl-]                                      ; $6c83: $3a
	ld b, c                                          ; $6c84: $41
	db $ec                                           ; $6c85: $ec
	ret c                                            ; $6c86: $d8

	add hl, bc                                       ; $6c87: $09
	ld h, c                                          ; $6c88: $61
	ld h, [hl]                                       ; $6c89: $66
	ldh a, [$be]                                     ; $6c8a: $f0 $be
	inc a                                            ; $6c8c: $3c
	ld e, c                                          ; $6c8d: $59
	dec sp                                           ; $6c8e: $3b
	xor b                                            ; $6c8f: $a8
	ld e, d                                          ; $6c90: $5a
	ld d, h                                          ; $6c91: $54
	ld d, e                                          ; $6c92: $53
	ldh a, [$5d]                                     ; $6c93: $f0 $5d
	ld a, [hl-]                                      ; $6c95: $3a
	ld b, d                                          ; $6c96: $42
	ld b, l                                          ; $6c97: $45
	and b                                            ; $6c98: $a0

jr_08f_6c99:
	cpl                                              ; $6c99: $2f
	ldh a, [$de]                                     ; $6c9a: $f0 $de
	ldh a, [rWY]                                     ; $6c9c: $f0 $4a
	ldh a, [$c3]                                     ; $6c9e: $f0 $c3
	ldh a, [$6d]                                     ; $6ca0: $f0 $6d
	ld e, c                                          ; $6ca2: $59
	ldh a, [$27]                                     ; $6ca3: $f0 $27
	ld a, e                                          ; $6ca5: $7b
	dec sp                                           ; $6ca6: $3b
	inc a                                            ; $6ca7: $3c
	ld d, a                                          ; $6ca8: $57
	ld a, [hl-]                                      ; $6ca9: $3a
	ld b, d                                          ; $6caa: $42
	and c                                            ; $6cab: $a1
	ld b, b                                          ; $6cac: $40
	add hl, sp                                       ; $6cad: $39
	ld b, h                                          ; $6cae: $44
	ld c, h                                          ; $6caf: $4c
	xor b                                            ; $6cb0: $a8
	ld b, b                                          ; $6cb1: $40
	dec sp                                           ; $6cb2: $3b
	ld h, c                                          ; $6cb3: $61
	ld b, d                                          ; $6cb4: $42

jr_08f_6cb5:
	ldh a, [$38]                                     ; $6cb5: $f0 $38
	ld d, e                                          ; $6cb7: $53
	pop af                                           ; $6cb8: $f1
	sub d                                            ; $6cb9: $92
	jr c, @+$3e                                      ; $6cba: $38 $3c

	ld a, [hl-]                                      ; $6cbc: $3a
	and b                                            ; $6cbd: $a0
	ld b, [hl]                                       ; $6cbe: $46
	ld c, l                                          ; $6cbf: $4d
	inc [hl]                                         ; $6cc0: $34
	sub c                                            ; $6cc1: $91
	dec a                                            ; $6cc2: $3d
	dec sp                                           ; $6cc3: $3b
	ld h, c                                          ; $6cc4: $61
	ld d, [hl]                                       ; $6cc5: $56
	dec sp                                           ; $6cc6: $3b
	dec a                                            ; $6cc7: $3d
	xor b                                            ; $6cc8: $a8
	adc $f0                                          ; $6cc9: $ce $f0
	ld de, $657d                                     ; $6ccb: $11 $7d $65
	ld d, e                                          ; $6cce: $53
	inc de                                           ; $6ccf: $13
	sub h                                            ; $6cd0: $94
	ccf                                              ; $6cd1: $3f
	ld e, h                                          ; $6cd2: $5c
	dec a                                            ; $6cd3: $3d
	ld b, l                                          ; $6cd4: $45
	and b                                            ; $6cd5: $a0
	cpl                                              ; $6cd6: $2f
	ldh a, [$08]                                     ; $6cd7: $f0 $08
	ld d, b                                          ; $6cd9: $50
	inc [hl]                                         ; $6cda: $34
	ldh a, [$80]                                     ; $6cdb: $f0 $80
	ldh a, [$c5]                                     ; $6cdd: $f0 $c5
	inc [hl]                                         ; $6cdf: $34
	sub b                                            ; $6ce0: $90
	ld a, $38                                        ; $6ce1: $3e $38
	ld c, d                                          ; $6ce3: $4a
	ld a, $66                                        ; $6ce4: $3e $66
	add hl, sp                                       ; $6ce6: $39
	add hl, bc                                       ; $6ce7: $09
	xor $1f                                          ; $6ce8: $ee $1f
	xor b                                            ; $6cea: $a8
	ldh a, [rAUD3ENA]                                ; $6ceb: $f0 $1a
	ldh a, [rAUD3LOW]                                ; $6ced: $f0 $1d
	dec sp                                           ; $6cef: $3b
	ld h, c                                          ; $6cf0: $61
	ld d, [hl]                                       ; $6cf1: $56
	jr c, @+$42                                      ; $6cf2: $38 $40

	add hl, sp                                       ; $6cf4: $39
	and b                                            ; $6cf5: $a0
	cpl                                              ; $6cf6: $2f
	ldh a, [rTAC]                                    ; $6cf7: $f0 $07
	ld e, l                                          ; $6cf9: $5d
	ccf                                              ; $6cfa: $3f
	ld d, l                                          ; $6cfb: $55
	ld c, l                                          ; $6cfc: $4d
	ldh a, [c]                                       ; $6cfd: $f2
	db $eb                                           ; $6cfe: $eb
	add hl, bc                                       ; $6cff: $09
	ld c, a                                          ; $6d00: $4f

jr_08f_6d01:
	add hl, sp                                       ; $6d01: $39
	inc [hl]                                         ; $6d02: $34
	add h                                            ; $6d03: $84
	ld b, d                                          ; $6d04: $42
	ld a, e                                          ; $6d05: $7b
	dec sp                                           ; $6d06: $3b
	inc a                                            ; $6d07: $3c
	inc de                                           ; $6d08: $13
	ld b, [hl]                                       ; $6d09: $46
	ccf                                              ; $6d0a: $3f
	ld b, a                                          ; $6d0b: $47
	ld a, $3f                                        ; $6d0c: $3e $3f
	ld c, b                                          ; $6d0e: $48
	and b                                            ; $6d0f: $a0
	cpl                                              ; $6d10: $2f
	ld d, c                                          ; $6d11: $51
	ld [hl], b                                       ; $6d12: $70

jr_08f_6d13:
	jr c, jr_08f_6d01                                ; $6d13: $38 $ec

	ret c                                            ; $6d15: $d8

	inc a                                            ; $6d16: $3c
	add hl, bc                                       ; $6d17: $09
	ld l, a                                          ; $6d18: $6f
	dec sp                                           ; $6d19: $3b
	ccf                                              ; $6d1a: $3f
	inc [hl]                                         ; $6d1b: $34
	ldh a, [$6d]                                     ; $6d1c: $f0 $6d
	ld e, c                                          ; $6d1e: $59
	ldh a, [$27]                                     ; $6d1f: $f0 $27
	ld b, d                                          ; $6d21: $42
	inc de                                           ; $6d22: $13
	pop af                                           ; $6d23: $f1
	xor d                                            ; $6d24: $aa
	pop af                                           ; $6d25: $f1
	and e                                            ; $6d26: $a3
	ld c, h                                          ; $6d27: $4c
	and b                                            ; $6d28: $a0
	ld b, [hl]                                       ; $6d29: $46
	dec sp                                           ; $6d2a: $3b
	xor h                                            ; $6d2b: $ac
	pop af                                           ; $6d2c: $f1
	ld e, h                                          ; $6d2d: $5c
	ld a, $38                                        ; $6d2e: $3e $38
	db $f4                                           ; $6d30: $f4
	ld b, a                                          ; $6d31: $47
	ld a, l                                          ; $6d32: $7d
	ldh a, [$50]                                     ; $6d33: $f0 $50
	ldh a, [$03]                                     ; $6d35: $f0 $03
	pop af                                           ; $6d37: $f1
	ld d, h                                          ; $6d38: $54
	ld b, h                                          ; $6d39: $44
	and b                                            ; $6d3a: $a0
	cpl                                              ; $6d3b: $2f
	ld b, e                                          ; $6d3c: $43
	ld [$4271], a                                    ; $6d3d: $ea $71 $42
	inc de                                           ; $6d40: $13
	di                                               ; $6d41: $f3
	ld h, l                                          ; $6d42: $65
	ldh a, [c]                                       ; $6d43: $f2
	ld a, [bc]                                       ; $6d44: $0a
	inc a                                            ; $6d45: $3c
	xor b                                            ; $6d46: $a8
	db $dd                                           ; $6d47: $dd
	halt                                             ; $6d48: $76
	ld d, e                                          ; $6d49: $53
	pop af                                           ; $6d4a: $f1
	inc b                                            ; $6d4b: $04
	dec sp                                           ; $6d4c: $3b
	ccf                                              ; $6d4d: $3f
	ld b, [hl]                                       ; $6d4e: $46
	ldh a, [rSB]                                     ; $6d4f: $f0 $01
	ld b, l                                          ; $6d51: $45
	add hl, sp                                       ; $6d52: $39
	inc a                                            ; $6d53: $3c
	and c                                            ; $6d54: $a1
	ret                                              ; $6d55: $c9


	xor h                                            ; $6d56: $ac
	ldh a, [$bc]                                     ; $6d57: $f0 $bc
	ld b, a                                          ; $6d59: $47
	ld l, [hl]                                       ; $6d5a: $6e
	ld d, b                                          ; $6d5b: $50
	ld a, c                                          ; $6d5c: $79
	ccf                                              ; $6d5d: $3f
	and b                                            ; $6d5e: $a0
	cpl                                              ; $6d5f: $2f
	ld b, e                                          ; $6d60: $43
	ld b, [hl]                                       ; $6d61: $46
	ld b, [hl]                                       ; $6d62: $46
	inc [hl]                                         ; $6d63: $34
	jr c, jr_08f_6d9e                                ; $6d64: $38 $38

	ld b, l                                          ; $6d66: $45
	and b                                            ; $6d67: $a0
	cpl                                              ; $6d68: $2f
	ld [hl-], a                                      ; $6d69: $32
	add hl, sp                                       ; $6d6a: $39
	inc [hl]                                         ; $6d6b: $34
	add hl, sp                                       ; $6d6c: $39
	ld d, d                                          ; $6d6d: $52
	jr c, jr_08f_6d13                                ; $6d6e: $38 $a3

	ld e, d                                          ; $6d70: $5a
	add hl, sp                                       ; $6d71: $39
	xor c                                            ; $6d72: $a9
	ld h, e                                          ; $6d73: $63
	ld d, a                                          ; $6d74: $57
	ld c, c                                          ; $6d75: $49
	inc [hl]                                         ; $6d76: $34
	ld l, [hl]                                       ; $6d77: $6e
	ld c, [hl]                                       ; $6d78: $4e
	dec sp                                           ; $6d79: $3b
	ld a, $66                                        ; $6d7a: $3e $66
	ld e, c                                          ; $6d7c: $59
	and b                                            ; $6d7d: $a0
	cpl                                              ; $6d7e: $2f
	ld b, e                                          ; $6d7f: $43
	ld d, c                                          ; $6d80: $51
	inc [hl]                                         ; $6d81: $34
	ld d, c                                          ; $6d82: $51
	ld [hl], b                                       ; $6d83: $70
	jr c, jr_08f_6dd2                                ; $6d84: $38 $4c

	xor b                                            ; $6d86: $a8
	ld [hl-], a                                      ; $6d87: $32
	ld l, [hl]                                       ; $6d88: $6e
	ld d, b                                          ; $6d89: $50
	ld a, [hl-]                                      ; $6d8a: $3a
	ld d, l                                          ; $6d8b: $55
	ccf                                              ; $6d8c: $3f
	ld b, l                                          ; $6d8d: $45
	inc a                                            ; $6d8e: $3c
	dec sp                                           ; $6d8f: $3b
	dec a                                            ; $6d90: $3d
	and e                                            ; $6d91: $a3
	xor $2d                                          ; $6d92: $ee $2d
	xor b                                            ; $6d94: $a8
	ldh a, [$d6]                                     ; $6d95: $f0 $d6
	ld l, [hl]                                       ; $6d97: $6e
	dec sp                                           ; $6d98: $3b
	ccf                                              ; $6d99: $3f
	jr c, jr_08f_6dd4                                ; $6d9a: $38 $38

	ld b, l                                          ; $6d9c: $45
	and b                                            ; $6d9d: $a0

jr_08f_6d9e:
	cpl                                              ; $6d9e: $2f
	ld b, e                                          ; $6d9f: $43
	ldh a, [$d6]                                     ; $6da0: $f0 $d6
	dec sp                                           ; $6da2: $3b
	dec a                                            ; $6da3: $3d
	dec sp                                           ; $6da4: $3b
	ccf                                              ; $6da5: $3f
	xor h                                            ; $6da6: $ac
	ld c, a                                          ; $6da7: $4f
	add hl, sp                                       ; $6da8: $39
	ldh a, [$5d]                                     ; $6da9: $f0 $5d
	ld a, [hl-]                                      ; $6dab: $3a
	ld b, d                                          ; $6dac: $42
	ld a, $3c                                        ; $6dad: $3e $3c
	inc de                                           ; $6daf: $13
	ldh a, [$8d]                                     ; $6db0: $f0 $8d
	dec sp                                           ; $6db2: $3b
	ccf                                              ; $6db3: $3f
	ld a, [hl-]                                      ; $6db4: $3a
	jr c, jr_08f_6e12                                ; $6db5: $38 $5b

	ld d, [hl]                                       ; $6db7: $56
	ld b, c                                          ; $6db8: $41
	and b                                            ; $6db9: $a0
	ld d, d                                          ; $6dba: $52
	inc [hl]                                         ; $6dbb: $34
	ld b, b                                          ; $6dbc: $40
	add hl, sp                                       ; $6dbd: $39
	ld b, h                                          ; $6dbe: $44
	ld e, l                                          ; $6dbf: $5d
	ld e, d                                          ; $6dc0: $5a
	ld c, h                                          ; $6dc1: $4c
	xor b                                            ; $6dc2: $a8
	ld e, e                                          ; $6dc3: $5b
	ld d, [hl]                                       ; $6dc4: $56
	ld b, [hl]                                       ; $6dc5: $46
	xor h                                            ; $6dc6: $ac
	ldh a, [$34]                                     ; $6dc7: $f0 $34
	ld b, d                                          ; $6dc9: $42
	ldh a, [$6d]                                     ; $6dca: $f0 $6d
	ld e, c                                          ; $6dcc: $59
	ldh a, [$27]                                     ; $6dcd: $f0 $27
	ld b, a                                          ; $6dcf: $47
	ld a, $45                                        ; $6dd0: $3e $45

jr_08f_6dd2:
	add hl, sp                                       ; $6dd2: $39
	ld b, l                                          ; $6dd3: $45

jr_08f_6dd4:
	and b                                            ; $6dd4: $a0
	cpl                                              ; $6dd5: $2f
	ld b, e                                          ; $6dd6: $43
	ld [$a0c3], a                                    ; $6dd7: $ea $c3 $a0
	ld b, b                                          ; $6dda: $40
	ld b, d                                          ; $6ddb: $42
	sbc [hl]                                         ; $6ddc: $9e
	ld b, a                                          ; $6ddd: $47
	xor h                                            ; $6dde: $ac
	di                                               ; $6ddf: $f3
	ld a, [$504f]                                    ; $6de0: $fa $4f $50
	dec sp                                           ; $6de3: $3b
	ccf                                              ; $6de4: $3f
	ld d, l                                          ; $6de5: $55
	ld c, [hl]                                       ; $6de6: $4e
	inc a                                            ; $6de7: $3c
	ld d, b                                          ; $6de8: $50
	and b                                            ; $6de9: $a0
	cpl                                              ; $6dea: $2f
	ld b, e                                          ; $6deb: $43
	xor $2d                                          ; $6dec: $ee $2d
	xor $2d                                          ; $6dee: $ee $2d
	and b                                            ; $6df0: $a0
	ld h, h                                          ; $6df1: $64
	sbc c                                            ; $6df2: $99
	dec a                                            ; $6df3: $3d
	ld a, c                                          ; $6df4: $79
	and b                                            ; $6df5: $a0
	add hl, bc                                       ; $6df6: $09
	jp hl                                            ; $6df7: $e9


	ret z                                            ; $6df8: $c8

	inc de                                           ; $6df9: $13
	db $eb                                           ; $6dfa: $eb
	ld d, d                                          ; $6dfb: $52
	ld b, l                                          ; $6dfc: $45
	and b                                            ; $6dfd: $a0
	cpl                                              ; $6dfe: $2f
	ld b, e                                          ; $6dff: $43
	ld b, b                                          ; $6e00: $40
	add hl, sp                                       ; $6e01: $39
	ld b, h                                          ; $6e02: $44
	ld c, h                                          ; $6e03: $4c
	and b                                            ; $6e04: $a0
	ld l, [hl]                                       ; $6e05: $6e
	ld a, e                                          ; $6e06: $7b
	ld e, c                                          ; $6e07: $59
	dec sp                                           ; $6e08: $3b
	dec [hl]                                         ; $6e09: $35
	rla                                              ; $6e0a: $17
	ld [$13e9], a                                    ; $6e0b: $ea $e9 $13
	ld a, [hl-]                                      ; $6e0e: $3a
	dec sp                                           ; $6e0f: $3b
	ld h, c                                          ; $6e10: $61
	ld d, [hl]                                       ; $6e11: $56

jr_08f_6e12:
	dec sp                                           ; $6e12: $3b
	dec a                                            ; $6e13: $3d
	and b                                            ; $6e14: $a0
	cpl                                              ; $6e15: $2f
	db $eb                                           ; $6e16: $eb
	ld a, [$3b44]                                    ; $6e17: $fa $44 $3b
	dec a                                            ; $6e1a: $3d
	ld d, b                                          ; $6e1b: $50
	ld c, c                                          ; $6e1c: $49
	ld c, l                                          ; $6e1d: $4d
	ld c, [hl]                                       ; $6e1e: $4e
	dec sp                                           ; $6e1f: $3b
	ccf                                              ; $6e20: $3f
	add hl, bc                                       ; $6e21: $09
	ld b, b                                          ; $6e22: $40
	ld c, l                                          ; $6e23: $4d
	ld e, e                                          ; $6e24: $5b
	ld d, [hl]                                       ; $6e25: $56
	xor h                                            ; $6e26: $ac
	ld e, b                                          ; $6e27: $58
	ld d, l                                          ; $6e28: $55
	dec sp                                           ; $6e29: $3b
	ld c, c                                          ; $6e2a: $49
	ld l, [hl]                                       ; $6e2b: $6e
	dec sp                                           ; $6e2c: $3b
	ccf                                              ; $6e2d: $3f
	ld l, h                                          ; $6e2e: $6c
	ld b, l                                          ; $6e2f: $45
	add hl, sp                                       ; $6e30: $39
	and b                                            ; $6e31: $a0
	cpl                                              ; $6e32: $2f
	db $eb                                           ; $6e33: $eb
	ld a, [$4b47]                                    ; $6e34: $fa $47 $4b
	pop af                                           ; $6e37: $f1
	ld a, [de]                                       ; $6e38: $1a
	pop af                                           ; $6e39: $f1
	inc c                                            ; $6e3a: $0c
	ld c, c                                          ; $6e3b: $49
	ld c, l                                          ; $6e3c: $4d
	ld a, [hl-]                                      ; $6e3d: $3a
	jr c, jr_08f_6e8c                                ; $6e3e: $38 $4c

	add hl, bc                                       ; $6e40: $09
	db $ec                                           ; $6e41: $ec
	ld [hl], c                                       ; $6e42: $71
	dec sp                                           ; $6e43: $3b

jr_08f_6e44:
	xor b                                            ; $6e44: $a8
	ld c, d                                          ; $6e45: $4a
	ld c, a                                          ; $6e46: $4f
	inc [hl]                                         ; $6e47: $34
	ldh a, [$ce]                                     ; $6e48: $f0 $ce
	ld h, e                                          ; $6e4a: $63
	dec sp                                           ; $6e4b: $3b
	ccf                                              ; $6e4c: $3f
	ld c, [hl]                                       ; $6e4d: $4e
	ld b, l                                          ; $6e4e: $45
	ld c, h                                          ; $6e4f: $4c
	and b                                            ; $6e50: $a0
	cpl                                              ; $6e51: $2f
	ld c, c                                          ; $6e52: $49
	ld b, a                                          ; $6e53: $47
	inc a                                            ; $6e54: $3c
	ld d, l                                          ; $6e55: $55
	inc [hl]                                         ; $6e56: $34
	sub d                                            ; $6e57: $92
	adc [hl]                                         ; $6e58: $8e
	ld c, l                                          ; $6e59: $4d
	add hl, bc                                       ; $6e5a: $09
	ld e, h                                          ; $6e5b: $5c
	dec sp                                           ; $6e5c: $3b
	add b                                            ; $6e5d: $80
	ld e, c                                          ; $6e5e: $59
	xor b                                            ; $6e5f: $a8
	sub d                                            ; $6e60: $92
	adc [hl]                                         ; $6e61: $8e
	ld c, [hl]                                       ; $6e62: $4e
	ld a, $3c                                        ; $6e63: $3e $3c
	ld a, [hl-]                                      ; $6e65: $3a
	jr c, @+$3d                                      ; $6e66: $38 $3b

	ccf                                              ; $6e68: $3f
	ldh a, [$78]                                     ; $6e69: $f0 $78
	ld e, e                                          ; $6e6b: $5b
	and b                                            ; $6e6c: $a0
	db $ec                                           ; $6e6d: $ec
	rla                                              ; $6e6e: $17
	xor b                                            ; $6e6f: $a8
	ldh a, [rIF]                                     ; $6e70: $f0 $0f
	ld h, l                                          ; $6e72: $65
	ldh a, [$2b]                                     ; $6e73: $f0 $2b
	ldh a, [$3d]                                     ; $6e75: $f0 $3d
	ldh a, [hDisp0_WX]                                     ; $6e77: $f0 $89
	ld l, c                                          ; $6e79: $69
	ld b, l                                          ; $6e7a: $45
	and b                                            ; $6e7b: $a0
	cpl                                              ; $6e7c: $2f
	db $eb                                           ; $6e7d: $eb
	ld a, [$3ef0]                                    ; $6e7e: $fa $f0 $3e
	ldh a, [$0b]                                     ; $6e81: $f0 $0b
	ld b, h                                          ; $6e83: $44
	ld c, h                                          ; $6e84: $4c
	add hl, bc                                       ; $6e85: $09
	ld l, a                                          ; $6e86: $6f
	dec sp                                           ; $6e87: $3b
	ccf                                              ; $6e88: $3f
	inc [hl]                                         ; $6e89: $34
	ld d, c                                          ; $6e8a: $51
	ld [hl], b                                       ; $6e8b: $70

jr_08f_6e8c:
	ld d, c                                          ; $6e8c: $51
	ldh a, [$cb]                                     ; $6e8d: $f0 $cb
	ld c, [hl]                                       ; $6e8f: $4e
	ld h, e                                          ; $6e90: $63
	and b                                            ; $6e91: $a0
	cpl                                              ; $6e92: $2f
	ldh a, [c]                                       ; $6e93: $f2
	and [hl]                                         ; $6e94: $a6
	ldh a, [$59]                                     ; $6e95: $f0 $59
	ld b, h                                          ; $6e97: $44
	ld b, l                                          ; $6e98: $45
	ld c, h                                          ; $6e99: $4c
	add hl, bc                                       ; $6e9a: $09
	ldh a, [$31]                                     ; $6e9b: $f0 $31
	ldh a, [$7f]                                     ; $6e9d: $f0 $7f
	ld b, l                                          ; $6e9f: $45
	ldh a, [$31]                                     ; $6ea0: $f0 $31
	ldh a, [$7f]                                     ; $6ea2: $f0 $7f
	and b                                            ; $6ea4: $a0
	cpl                                              ; $6ea5: $2f
	halt                                             ; $6ea6: $76
	ld c, a                                          ; $6ea7: $4f

Call_08f_6ea8:
	sub d                                            ; $6ea8: $92
	adc [hl]                                         ; $6ea9: $8e
	ld e, a                                          ; $6eaa: $5f
	add hl, sp                                       ; $6eab: $39
	add hl, bc                                       ; $6eac: $09
	ld c, e                                          ; $6ead: $4b
	ld d, d                                          ; $6eae: $52
	dec sp                                           ; $6eaf: $3b
	ld h, c                                          ; $6eb0: $61
	ld d, [hl]                                       ; $6eb1: $56
	ld e, [hl]                                       ; $6eb2: $5e
	ld e, c                                          ; $6eb3: $59
	dec sp                                           ; $6eb4: $3b
	and b                                            ; $6eb5: $a0
	ld l, a                                          ; $6eb6: $6f
	ld b, d                                          ; $6eb7: $42
	pop af                                           ; $6eb8: $f1
	xor e                                            ; $6eb9: $ab
	inc [hl]                                         ; $6eba: $34
	ld e, d                                          ; $6ebb: $5a
	add hl, sp                                       ; $6ebc: $39
	and c                                            ; $6ebd: $a1
	cpl                                              ; $6ebe: $2f
	add sp, $56                                      ; $6ebf: $e8 $56
	add hl, bc                                       ; $6ec1: $09
	jr c, jr_08f_6e44                                ; $6ec2: $38 $80

	ld c, a                                          ; $6ec4: $4f
	ldh a, [rOCPS]                                   ; $6ec5: $f0 $6a
	dec sp                                           ; $6ec7: $3b
	ccf                                              ; $6ec8: $3f
	ld c, [hl]                                       ; $6ec9: $4e
	inc a                                            ; $6eca: $3c
	ld d, b                                          ; $6ecb: $50
	ld c, h                                          ; $6ecc: $4c
	and b                                            ; $6ecd: $a0
	cpl                                              ; $6ece: $2f
	db $ed                                           ; $6ecf: $ed
	ld e, [hl]                                       ; $6ed0: $5e
	inc [hl]                                         ; $6ed1: $34
	pop af                                           ; $6ed2: $f1
	and $f3                                          ; $6ed3: $e6 $f3
	pop de                                           ; $6ed5: $d1
	inc a                                            ; $6ed6: $3c
	ld d, b                                          ; $6ed7: $50
	ld l, [hl]                                       ; $6ed8: $6e
	ld d, a                                          ; $6ed9: $57
	ldh a, [hDisp1_WX]                                     ; $6eda: $f0 $96
	ld a, c                                          ; $6edc: $79
	add hl, bc                                       ; $6edd: $09
	ld e, [hl]                                       ; $6ede: $5e
	add l                                            ; $6edf: $85
	ld e, c                                          ; $6ee0: $59
	dec sp                                           ; $6ee1: $3b
	xor b                                            ; $6ee2: $a8
	ld d, d                                          ; $6ee3: $52
	ld e, e                                          ; $6ee4: $5b
	ld c, d                                          ; $6ee5: $4a
	add l                                            ; $6ee6: $85
	and c                                            ; $6ee7: $a1
	cpl                                              ; $6ee8: $2f
	add sp, -$19                                     ; $6ee9: $e8 $e7
	add hl, bc                                       ; $6eeb: $09
	ld b, b                                          ; $6eec: $40
	ld b, c                                          ; $6eed: $41
	ld a, [hl-]                                      ; $6eee: $3a
	ld c, a                                          ; $6eef: $4f
	ld b, c                                          ; $6ef0: $41
	inc a                                            ; $6ef1: $3c
	ld a, [hl-]                                      ; $6ef2: $3a
	ld [hl], h                                       ; $6ef3: $74
	and b                                            ; $6ef4: $a0
	ld c, h                                          ; $6ef5: $4c
	add l                                            ; $6ef6: $85
	ld c, h                                          ; $6ef7: $4c
	add l                                            ; $6ef8: $85
	xor h                                            ; $6ef9: $ac
	ld l, e                                          ; $6efa: $6b
	inc a                                            ; $6efb: $3c
	db $eb                                           ; $6efc: $eb
	call z, $13f0                                    ; $6efd: $cc $f0 $13
	jr c, @-$5d                                      ; $6f00: $38 $a1

	cpl                                              ; $6f02: $2f
	ld d, h                                          ; $6f03: $54
	ld b, d                                          ; $6f04: $42
	inc [hl]                                         ; $6f05: $34
	ldh a, [c]                                       ; $6f06: $f2
	ld c, d                                          ; $6f07: $4a
	di                                               ; $6f08: $f3
	sbc l                                            ; $6f09: $9d
	ldh a, [c]                                       ; $6f0a: $f2
	jp $f142                                         ; $6f0b: $c3 $42 $f1


	ld e, h                                          ; $6f0e: $5c
	ldh a, [$ed]                                     ; $6f0f: $f0 $ed
	ld c, e                                          ; $6f11: $4b
	and c                                            ; $6f12: $a1
	ret nc                                           ; $6f13: $d0

	xor b                                            ; $6f14: $a8
	ld l, a                                          ; $6f15: $6f
	ldh a, [$8e]                                     ; $6f16: $f0 $8e
	pop af                                           ; $6f18: $f1
	ld c, l                                          ; $6f19: $4d
	ld h, l                                          ; $6f1a: $65
	ld a, [hl-]                                      ; $6f1b: $3a
	ld b, d                                          ; $6f1c: $42
	and b                                            ; $6f1d: $a0
	cpl                                              ; $6f1e: $2f
	ld d, h                                          ; $6f1f: $54
	ld d, h                                          ; $6f20: $54
	ld c, e                                          ; $6f21: $4b
	db $f4                                           ; $6f22: $f4
	adc b                                            ; $6f23: $88
	ld d, l                                          ; $6f24: $55
	ldh a, [$a8]                                     ; $6f25: $f0 $a8
	pop af                                           ; $6f27: $f1
	xor e                                            ; $6f28: $ab
	ld a, [hl-]                                      ; $6f29: $3a
	ld b, c                                          ; $6f2a: $41
	ccf                                              ; $6f2b: $3f
	ld e, d                                          ; $6f2c: $5a
	add hl, sp                                       ; $6f2d: $39
	and c                                            ; $6f2e: $a1
	ld e, [hl]                                       ; $6f2f: $5e
	add l                                            ; $6f30: $85
	ld e, c                                          ; $6f31: $59
	dec sp                                           ; $6f32: $3b
	xor b                                            ; $6f33: $a8
	ldh a, [$a8]                                     ; $6f34: $f0 $a8
	pop af                                           ; $6f36: $f1
	xor e                                            ; $6f37: $ab
	ld [hl], h                                       ; $6f38: $74
	and c                                            ; $6f39: $a1
	cpl                                              ; $6f3a: $2f
	ld a, [hl-]                                      ; $6f3b: $3a
	ld b, c                                          ; $6f3c: $41
	ld c, d                                          ; $6f3d: $4a
	ld c, a                                          ; $6f3e: $4f
	jr c, jr_08f_6f79                                ; $6f3f: $38 $38

	ld b, l                                          ; $6f41: $45
	add hl, bc                                       ; $6f42: $09
	ld b, b                                          ; $6f43: $40
	add hl, sp                                       ; $6f44: $39
	jr c, jr_08f_6f80                                ; $6f45: $38 $39

	ld b, d                                          ; $6f47: $42
	ld c, a                                          ; $6f48: $4f
	xor h                                            ; $6f49: $ac
	pop af                                           ; $6f4a: $f1
	sbc $3b                                          ; $6f4b: $de $3b
	ld h, c                                          ; $6f4d: $61
	ld d, [hl]                                       ; $6f4e: $56
	add hl, sp                                       ; $6f4f: $39
	ld b, d                                          ; $6f50: $42
	ld b, l                                          ; $6f51: $45
	ld c, h                                          ; $6f52: $4c
	and b                                            ; $6f53: $a0
	ld e, b                                          ; $6f54: $58
	ld b, [hl]                                       ; $6f55: $46
	inc [hl]                                         ; $6f56: $34
	db $eb                                           ; $6f57: $eb
	ld d, d                                          ; $6f58: $52
	ld b, l                                          ; $6f59: $45
	and b                                            ; $6f5a: $a0
	cpl                                              ; $6f5b: $2f
	jp hl                                            ; $6f5c: $e9


	cp e                                             ; $6f5d: $bb
	xor h                                            ; $6f5e: $ac
	ld [$6222], a                                    ; $6f5f: $ea $22 $62
	inc de                                           ; $6f62: $13
	db $eb                                           ; $6f63: $eb
	adc a                                            ; $6f64: $8f
	and e                                            ; $6f65: $a3
	cpl                                              ; $6f66: $2f
	db $eb                                           ; $6f67: $eb
	ld a, [$b8e9]                                    ; $6f68: $fa $e9 $b8
	add hl, bc                                       ; $6f6b: $09
	cpl                                              ; $6f6c: $2f
	ld b, e                                          ; $6f6d: $43
	db $eb                                           ; $6f6e: $eb
	ld a, [$eaac]                                    ; $6f6f: $fa $ac $ea
	ld [hl+], a                                      ; $6f72: $22
	inc de                                           ; $6f73: $13
	ld [hl], d                                       ; $6f74: $72
	ld b, a                                          ; $6f75: $47
	db $eb                                           ; $6f76: $eb
	ld e, h                                          ; $6f77: $5c
	and c                                            ; $6f78: $a1

jr_08f_6f79:
	ld e, [hl]                                       ; $6f79: $5e
	add l                                            ; $6f7a: $85
	ld e, c                                          ; $6f7b: $59
	xor b                                            ; $6f7c: $a8
	ld b, h                                          ; $6f7d: $44
	dec sp                                           ; $6f7e: $3b
	ld e, b                                          ; $6f7f: $58

jr_08f_6f80:
	ld e, c                                          ; $6f80: $59
	dec sp                                           ; $6f81: $3b
	xor b                                            ; $6f82: $a8
	pop af                                           ; $6f83: $f1
	jr nc, jr_08f_6ff7                               ; $6f84: $30 $71

	ld b, l                                          ; $6f86: $45
	add hl, sp                                       ; $6f87: $39
	ld b, l                                          ; $6f88: $45
	and b                                            ; $6f89: $a0
	cpl                                              ; $6f8a: $2f
	ld b, e                                          ; $6f8b: $43
	jr c, jr_08f_6fc6                                ; $6f8c: $38 $38

	ld e, e                                          ; $6f8e: $5b
	ld d, [hl]                                       ; $6f8f: $56
	ld b, c                                          ; $6f90: $41
	inc a                                            ; $6f91: $3c
	xor b                                            ; $6f92: $a8
	call $e9a0                                       ; $6f93: $cd $a0 $e9
	pop hl                                           ; $6f96: $e1
	xor b                                            ; $6f97: $a8
	db $eb                                           ; $6f98: $eb
	adc c                                            ; $6f99: $89
	ld b, h                                          ; $6f9a: $44
	ld e, l                                          ; $6f9b: $5d
	ld b, l                                          ; $6f9c: $45
	and b                                            ; $6f9d: $a0
	cpl                                              ; $6f9e: $2f
	add sp, $51                                      ; $6f9f: $e8 $51
	add hl, bc                                       ; $6fa1: $09
	ld b, b                                          ; $6fa2: $40
	ld c, l                                          ; $6fa3: $4d
	ld e, e                                          ; $6fa4: $5b
	ld d, [hl]                                       ; $6fa5: $56
	inc [hl]                                         ; $6fa6: $34
	ld e, d                                          ; $6fa7: $5a

Call_08f_6fa8:
	ld d, h                                          ; $6fa8: $54
	ld b, a                                          ; $6fa9: $47
	ld h, a                                          ; $6faa: $67
	ld d, l                                          ; $6fab: $55
	and c                                            ; $6fac: $a1
	cpl                                              ; $6fad: $2f
	add sp, $0d                                      ; $6fae: $e8 $0d
	add hl, bc                                       ; $6fb0: $09
	cpl                                              ; $6fb1: $2f
	add sp, $2b                                      ; $6fb2: $e8 $2b
	add hl, bc                                       ; $6fb4: $09
	cpl                                              ; $6fb5: $2f
	add sp, $52                                      ; $6fb6: $e8 $52
	add hl, bc                                       ; $6fb8: $09
	cpl                                              ; $6fb9: $2f
	add sp, -$76                                     ; $6fba: $e8 $8a
	add hl, bc                                       ; $6fbc: $09
	cpl                                              ; $6fbd: $2f
	jp hl                                            ; $6fbe: $e9


	cp c                                             ; $6fbf: $b9
	add hl, bc                                       ; $6fc0: $09
	ld e, e                                          ; $6fc1: $5b
	ld d, [hl]                                       ; $6fc2: $56
	inc [hl]                                         ; $6fc3: $34
	db $ec                                           ; $6fc4: $ec
	dec a                                            ; $6fc5: $3d

jr_08f_6fc6:
	and b                                            ; $6fc6: $a0
	cp e                                             ; $6fc7: $bb
	ld c, h                                          ; $6fc8: $4c
	and b                                            ; $6fc9: $a0
	cpl                                              ; $6fca: $2f
	adc b                                            ; $6fcb: $88
	sub c                                            ; $6fcc: $91
	inc [hl]                                         ; $6fcd: $34
	ld b, b                                          ; $6fce: $40
	add hl, sp                                       ; $6fcf: $39
	ld [hl], a                                       ; $6fd0: $77
	add hl, sp                                       ; $6fd1: $39
	ld b, l                                          ; $6fd2: $45
	add hl, bc                                       ; $6fd3: $09
	ld l, [hl]                                       ; $6fd4: $6e
	dec sp                                           ; $6fd5: $3b
	ldh a, [$36]                                     ; $6fd6: $f0 $36
	inc [hl]                                         ; $6fd8: $34
	ld b, b                                          ; $6fd9: $40
	add hl, sp                                       ; $6fda: $39
	ld c, d                                          ; $6fdb: $4a
	ld a, $66                                        ; $6fdc: $3e $66
	add hl, sp                                       ; $6fde: $39
	xor b                                            ; $6fdf: $a8
	ld e, e                                          ; $6fe0: $5b
	ld d, [hl]                                       ; $6fe1: $56
	inc [hl]                                         ; $6fe2: $34
	ldh a, [$d6]                                     ; $6fe3: $f0 $d6
	ld c, e                                          ; $6fe5: $4b
	ld l, e                                          ; $6fe6: $6b
	ld b, a                                          ; $6fe7: $47
	ldh a, [rLCDC]                                   ; $6fe8: $f0 $40
	ld e, a                                          ; $6fea: $5f
	add hl, sp                                       ; $6feb: $39
	inc a                                            ; $6fec: $3c
	and b                                            ; $6fed: $a0
	cpl                                              ; $6fee: $2f
	ld b, [hl]                                       ; $6fef: $46
	ld b, c                                          ; $6ff0: $41
	ld a, [hl-]                                      ; $6ff1: $3a
	ld b, d                                          ; $6ff2: $42
	db $eb                                           ; $6ff3: $eb
	add b                                            ; $6ff4: $80
	ld b, h                                          ; $6ff5: $44
	ld b, l                                          ; $6ff6: $45

jr_08f_6ff7:
	add hl, bc                                       ; $6ff7: $09
	db $eb                                           ; $6ff8: $eb
	add b                                            ; $6ff9: $80
	ld b, d                                          ; $6ffa: $42
	db $ed                                           ; $6ffb: $ed
	add a                                            ; $6ffc: $87
	ld d, e                                          ; $6ffd: $53
	inc de                                           ; $6ffe: $13
	ldh a, [rTAC]                                    ; $6fff: $f0 $07
	inc a                                            ; $7001: $3c
	ld b, c                                          ; $7002: $41
	ld a, [hl-]                                      ; $7003: $3a
	jr c, jr_08f_7040                                ; $7004: $38 $3a

	ld [hl], h                                       ; $7006: $74
	ld c, b                                          ; $7007: $48
	and b                                            ; $7008: $a0
	cpl                                              ; $7009: $2f
	ld c, a                                          ; $700a: $4f
	add hl, sp                                       ; $700b: $39
	db $ed                                           ; $700c: $ed
	ld e, $5f                                        ; $700d: $1e $5f
	add hl, sp                                       ; $700f: $39
	ld b, l                                          ; $7010: $45
	add hl, bc                                       ; $7011: $09
	ldh a, [$34]                                     ; $7012: $f0 $34
	ld b, a                                          ; $7014: $47
	inc [hl]                                         ; $7015: $34
	jr c, jr_08f_7050                                ; $7016: $38 $38

	ld b, l                                          ; $7018: $45
	and b                                            ; $7019: $a0
	jp nc, $40f0                                     ; $701a: $d2 $f0 $40

	ld c, [hl]                                       ; $701d: $4e
	ld c, c                                          ; $701e: $49
	xor h                                            ; $701f: $ac
	ldh a, [c]                                       ; $7020: $f2
	ld a, [hl]                                       ; $7021: $7e
	ld e, h                                          ; $7022: $5c
	ld c, [hl]                                       ; $7023: $4e
	ld e, l                                          ; $7024: $5d
	ld e, d                                          ; $7025: $5a
	xor b                                            ; $7026: $a8
	ld l, [hl]                                       ; $7027: $6e
	dec sp                                           ; $7028: $3b
	ldh a, [$36]                                     ; $7029: $f0 $36
	sub b                                            ; $702b: $90
	ld a, $38                                        ; $702c: $3e $38
	ld b, l                                          ; $702e: $45
	ld c, h                                          ; $702f: $4c
	and b                                            ; $7030: $a0
	cpl                                              ; $7031: $2f
	db $ed                                           ; $7032: $ed
	ld l, a                                          ; $7033: $6f
	ld h, c                                          ; $7034: $61
	db $ec                                           ; $7035: $ec
	cp c                                             ; $7036: $b9
	ld c, h                                          ; $7037: $4c
	add hl, bc                                       ; $7038: $09
	xor $1f                                          ; $7039: $ee $1f
	xor b                                            ; $703b: $a8
	ld l, a                                          ; $703c: $6f
	ld c, a                                          ; $703d: $4f
	ld b, b                                          ; $703e: $40
	add hl, sp                                       ; $703f: $39

jr_08f_7040:
	ld [hl], a                                       ; $7040: $77
	add hl, sp                                       ; $7041: $39
	and b                                            ; $7042: $a0
	cpl                                              ; $7043: $2f
	ld h, c                                          ; $7044: $61
	dec sp                                           ; $7045: $3b
	ld c, c                                          ; $7046: $49
	ld c, a                                          ; $7047: $4f
	ld b, b                                          ; $7048: $40
	add hl, sp                                       ; $7049: $39
	ld [hl], a                                       ; $704a: $77
	ld h, e                                          ; $704b: $63
	ld a, [hl-]                                      ; $704c: $3a
	jr c, jr_08f_7058                                ; $704d: $38 $09

	ld e, [hl]                                       ; $704f: $5e

jr_08f_7050:
	add l                                            ; $7050: $85
	ld e, c                                          ; $7051: $59
	dec sp                                           ; $7052: $3b
	xor b                                            ; $7053: $a8
	db $d3                                           ; $7054: $d3
	and c                                            ; $7055: $a1
	cpl                                              ; $7056: $2f
	db $ec                                           ; $7057: $ec

jr_08f_7058:
	push bc                                          ; $7058: $c5
	ldh a, [c]                                       ; $7059: $f2
	ld a, [hl]                                       ; $705a: $7e
	ld e, h                                          ; $705b: $5c
	ccf                                              ; $705c: $3f
	ld e, h                                          ; $705d: $5c
	dec a                                            ; $705e: $3d
	ld b, l                                          ; $705f: $45
	ld c, h                                          ; $7060: $4c
	add hl, bc                                       ; $7061: $09

jr_08f_7062:
	db $eb                                           ; $7062: $eb
	adc c                                            ; $7063: $89
	xor h                                            ; $7064: $ac
	ld b, b                                          ; $7065: $40
	add hl, sp                                       ; $7066: $39
	ld [hl], a                                       ; $7067: $77
	add hl, sp                                       ; $7068: $39
	ld b, l                                          ; $7069: $45
	ld c, h                                          ; $706a: $4c
	and b                                            ; $706b: $a0
	ld e, b                                          ; $706c: $58
	inc [hl]                                         ; $706d: $34
	sub [hl]                                         ; $706e: $96
	ld e, a                                          ; $706f: $5f
	sub [hl]                                         ; $7070: $96
	ld e, a                                          ; $7071: $5f
	and b                                            ; $7072: $a0
	cpl                                              ; $7073: $2f
	db $ed                                           ; $7074: $ed
	ld b, c                                          ; $7075: $41
	inc [hl]                                         ; $7076: $34
	cp e                                             ; $7077: $bb
	ld c, h                                          ; $7078: $4c
	add hl, bc                                       ; $7079: $09
	ld c, a                                          ; $707a: $4f
	add hl, sp                                       ; $707b: $39
	ld l, l                                          ; $707c: $6d
	ldh a, [$d3]                                     ; $707d: $f0 $d3
	sbc l                                            ; $707f: $9d
	ld d, b                                          ; $7080: $50
	jr c, jr_08f_7096                                ; $7081: $38 $13

	sub [hl]                                         ; $7083: $96
	dec sp                                           ; $7084: $3b
	ccf                                              ; $7085: $3f
	ld c, a                                          ; $7086: $4f
	jr c, jr_08f_70c1                                ; $7087: $38 $38

	ld b, l                                          ; $7089: $45
	ld c, h                                          ; $708a: $4c
	and b                                            ; $708b: $a0
	cpl                                              ; $708c: $2f
	ld d, c                                          ; $708d: $51
	dec sp                                           ; $708e: $3b
	ldh a, [rSB]                                     ; $708f: $f0 $01
	ld e, c                                          ; $7091: $59
	pop af                                           ; $7092: $f1
	ld [hl], l                                       ; $7093: $75
	inc a                                            ; $7094: $3c
	dec sp                                           ; $7095: $3b

jr_08f_7096:
	dec a                                            ; $7096: $3d
	ld b, l                                          ; $7097: $45
	add hl, bc                                       ; $7098: $09
	ld e, [hl]                                       ; $7099: $5e
	add l                                            ; $709a: $85
	ld e, c                                          ; $709b: $59
	dec sp                                           ; $709c: $3b
	xor b                                            ; $709d: $a8
	ld d, d                                          ; $709e: $52
	ld e, e                                          ; $709f: $5b
	ld c, d                                          ; $70a0: $4a
	and c                                            ; $70a1: $a1
	cpl                                              ; $70a2: $2f
	ret                                              ; $70a3: $c9


	ldh a, [rKEY1]                                   ; $70a4: $f0 $4d
	ldh a, [rKEY1]                                   ; $70a6: $f0 $4d
	ld b, c                                          ; $70a8: $41
	ld a, [hl-]                                      ; $70a9: $3a
	inc a                                            ; $70aa: $3c
	dec sp                                           ; $70ab: $3b
	dec a                                            ; $70ac: $3d
	and c                                            ; $70ad: $a1
	db $eb                                           ; $70ae: $eb
	adc c                                            ; $70af: $89
	ld c, h                                          ; $70b0: $4c
	and b                                            ; $70b1: $a0
	db $ec                                           ; $70b2: $ec
	inc sp                                           ; $70b3: $33
	ld d, e                                          ; $70b4: $53
	inc de                                           ; $70b5: $13
	ldh a, [$2f]                                     ; $70b6: $f0 $2f
	ld [hl], l                                       ; $70b8: $75
	ld a, l                                          ; $70b9: $7d
	db $ec                                           ; $70ba: $ec
	ld b, [hl]                                       ; $70bb: $46
	ld [hl], a                                       ; $70bc: $77
	ld h, e                                          ; $70bd: $63
	ld a, [hl-]                                      ; $70be: $3a
	jr c, jr_08f_7062                                ; $70bf: $38 $a1

jr_08f_70c1:
	cpl                                              ; $70c1: $2f
	ld d, d                                          ; $70c2: $52
	dec a                                            ; $70c3: $3d
	ld [hl], d                                       ; $70c4: $72
	dec a                                            ; $70c5: $3d
	jr c, jr_08f_7114                                ; $70c6: $38 $4c

	add hl, bc                                       ; $70c8: $09
	ld e, e                                          ; $70c9: $5b
	ld d, [hl]                                       ; $70ca: $56
	inc [hl]                                         ; $70cb: $34
	ld c, a                                          ; $70cc: $4f
	add hl, sp                                       ; $70cd: $39
	ld l, l                                          ; $70ce: $6d
	ldh a, [$d3]                                     ; $70cf: $f0 $d3
	inc de                                           ; $70d1: $13
	db $ec                                           ; $70d2: $ec
	ld b, h                                          ; $70d3: $44
	and b                                            ; $70d4: $a0
	cpl                                              ; $70d5: $2f
	ld e, [hl]                                       ; $70d6: $5e
	dec sp                                           ; $70d7: $3b
	inc [hl]                                         ; $70d8: $34
	ldh a, [rAUD3LEVEL]                              ; $70d9: $f0 $1c
	ld h, d                                          ; $70db: $62
	add b                                            ; $70dc: $80
	ldh a, [$fe]                                     ; $70dd: $f0 $fe
	dec sp                                           ; $70df: $3b
	ccf                                              ; $70e0: $3f
	jr c, jr_08f_7120                                ; $70e1: $38 $3d

	inc a                                            ; $70e3: $3c
	ld d, b                                          ; $70e4: $50
	add hl, bc                                       ; $70e5: $09
	ld d, d                                          ; $70e6: $52
	ld e, e                                          ; $70e7: $5b
	ld c, d                                          ; $70e8: $4a
	xor c                                            ; $70e9: $a9
	ld l, e                                          ; $70ea: $6b
	ld b, d                                          ; $70eb: $42
	dec a                                            ; $70ec: $3d
	ld [hl], c                                       ; $70ed: $71
	ld b, a                                          ; $70ee: $47
	sub [hl]                                         ; $70ef: $96
	dec sp                                           ; $70f0: $3b
	dec a                                            ; $70f1: $3d
	ld b, d                                          ; $70f2: $42
	and c                                            ; $70f3: $a1
	cpl                                              ; $70f4: $2f
	ld [$09b3], a                                    ; $70f5: $ea $b3 $09
	xor $1f                                          ; $70f8: $ee $1f
	xor b                                            ; $70fa: $a8
	ld [$a0b3], a                                    ; $70fb: $ea $b3 $a0
	db $eb                                           ; $70fe: $eb
	adc c                                            ; $70ff: $89
	xor h                                            ; $7100: $ac
	pop af                                           ; $7101: $f1
	cp d                                             ; $7102: $ba
	ld d, l                                          ; $7103: $55
	ld a, [hl-]                                      ; $7104: $3a
	ld d, a                                          ; $7105: $57
	ld b, b                                          ; $7106: $40
	add hl, sp                                       ; $7107: $39
	and b                                            ; $7108: $a0
	jp hl                                            ; $7109: $e9


	ret nz                                           ; $710a: $c0

	and b                                            ; $710b: $a0
	cpl                                              ; $710c: $2f
	db $db                                           ; $710d: $db
	ld a, [hl-]                                      ; $710e: $3a
	inc a                                            ; $710f: $3c
	dec sp                                           ; $7110: $3b
	dec a                                            ; $7111: $3d
	ld l, h                                          ; $7112: $6c
	dec a                                            ; $7113: $3d

jr_08f_7114:
	jr c, jr_08f_715a                                ; $7114: $38 $44

	ld c, h                                          ; $7116: $4c
	add hl, bc                                       ; $7117: $09
	xor $1f                                          ; $7118: $ee $1f
	xor b                                            ; $711a: $a8
	db $eb                                           ; $711b: $eb
	adc c                                            ; $711c: $89
	ld c, h                                          ; $711d: $4c
	and b                                            ; $711e: $a0
	cpl                                              ; $711f: $2f

jr_08f_7120:
	jp hl                                            ; $7120: $e9


	ret nz                                           ; $7121: $c0

	add hl, bc                                       ; $7122: $09
	ld e, [hl]                                       ; $7123: $5e
	add l                                            ; $7124: $85
	ld e, c                                          ; $7125: $59
	dec sp                                           ; $7126: $3b
	xor b                                            ; $7127: $a8
	ld b, h                                          ; $7128: $44
	dec sp                                           ; $7129: $3b
	dec a                                            ; $712a: $3d
	ld d, b                                          ; $712b: $50
	inc [hl]                                         ; $712c: $34
	ldh a, [rLCDC]                                   ; $712d: $f0 $40
	ld d, b                                          ; $712f: $50
	ld a, [hl-]                                      ; $7130: $3a
	jr c, @+$4c                                      ; $7131: $38 $4a

	ld b, l                                          ; $7133: $45
	and b                                            ; $7134: $a0
	cpl                                              ; $7135: $2f
	jr c, jr_08f_7170                                ; $7136: $38 $38

	pop af                                           ; $7138: $f1
	db $eb                                           ; $7139: $eb
	ld [hl], c                                       ; $713a: $71
	ld b, h                                          ; $713b: $44
	dec sp                                           ; $713c: $3b
	dec a                                            ; $713d: $3d
	db $ec                                           ; $713e: $ec
	ret c                                            ; $713f: $d8

	inc a                                            ; $7140: $3c
	add hl, bc                                       ; $7141: $09
	ld d, d                                          ; $7142: $52
	ld [hl], h                                       ; $7143: $74
	inc [hl]                                         ; $7144: $34
	ld b, b                                          ; $7145: $40
	add hl, sp                                       ; $7146: $39
	ld b, h                                          ; $7147: $44
	ld e, l                                          ; $7148: $5d
	ld e, d                                          ; $7149: $5a
	ld c, h                                          ; $714a: $4c
	and b                                            ; $714b: $a0
	ld d, d                                          ; $714c: $52
	dec a                                            ; $714d: $3d
	ldh a, [rLCDC]                                   ; $714e: $f0 $40
	ld c, [hl]                                       ; $7150: $4e
	ld b, d                                          ; $7151: $42
	and c                                            ; $7152: $a1
	cpl                                              ; $7153: $2f
	ld l, [hl]                                       ; $7154: $6e
	ld [hl], c                                       ; $7155: $71
	ld b, l                                          ; $7156: $45
	add hl, sp                                       ; $7157: $39
	inc a                                            ; $7158: $3c
	and c                                            ; $7159: $a1

jr_08f_715a:
	pop af                                           ; $715a: $f1
	jr nc, jr_08f_71ce                               ; $715b: $30 $71

	ccf                                              ; $715d: $3f
	ldh a, [$34]                                     ; $715e: $f0 $34
	ld b, d                                          ; $7160: $42
	ld b, a                                          ; $7161: $47
	db $ec                                           ; $7162: $ec
	dec a                                            ; $7163: $3d
	and b                                            ; $7164: $a0
	cpl                                              ; $7165: $2f
	ld b, b                                          ; $7166: $40
	add hl, sp                                       ; $7167: $39
	dec [hl]                                         ; $7168: $35
	pop af                                           ; $7169: $f1
	ld a, [de]                                       ; $716a: $1a
	pop af                                           ; $716b: $f1
	inc c                                            ; $716c: $0c

jr_08f_716d:
	ldh a, [rLCDC]                                   ; $716d: $f0 $40
	ld c, [hl]                                       ; $716f: $4e

jr_08f_7170:
	add hl, bc                                       ; $7170: $09
	ld e, [hl]                                       ; $7171: $5e
	add l                                            ; $7172: $85
	ld e, c                                          ; $7173: $59
	dec sp                                           ; $7174: $3b
	xor b                                            ; $7175: $a8
	jp hl                                            ; $7176: $e9


	pop hl                                           ; $7177: $e1
	and b                                            ; $7178: $a0
	cpl                                              ; $7179: $2f
	db $eb                                           ; $717a: $eb
	ld a, [$f04b]                                    ; $717b: $fa $4b $f0
	ld h, h                                          ; $717e: $64
	jr c, jr_08f_716d                                ; $717f: $38 $ec

	ld [hl+], a                                      ; $7181: $22
	add hl, bc                                       ; $7182: $09
	ldh a, [$64]                                     ; $7183: $f0 $64
	jr c, jr_08f_71c2                                ; $7185: $38 $3b

	ccf                                              ; $7187: $3f
	add d                                            ; $7188: $82
	add hl, sp                                       ; $7189: $39
	inc a                                            ; $718a: $3c
	xor h                                            ; $718b: $ac
	db $db                                           ; $718c: $db
	ld a, [hl-]                                      ; $718d: $3a
	jr c, jr_08f_71cc                                ; $718e: $38 $3c

	ld d, b                                          ; $7190: $50
	ld e, b                                          ; $7191: $58
	ld c, b                                          ; $7192: $48
	and b                                            ; $7193: $a0
	ld d, h                                          ; $7194: $54
	ld c, l                                          ; $7195: $4d
	xor h                                            ; $7196: $ac
	ldh a, [rLCDC]                                   ; $7197: $f0 $40
	ld d, a                                          ; $7199: $57
	dec a                                            ; $719a: $3d
	inc a                                            ; $719b: $3c
	dec sp                                           ; $719c: $3b
	dec a                                            ; $719d: $3d
	ld b, c                                          ; $719e: $41
	ld b, h                                          ; $719f: $44
	and b                                            ; $71a0: $a0
	cpl                                              ; $71a1: $2f
	ld b, e                                          ; $71a2: $43
	ld e, e                                          ; $71a3: $5b
	ld d, [hl]                                       ; $71a4: $56
	ld b, [hl]                                       ; $71a5: $46
	ldh a, [rLCDC]                                   ; $71a6: $f0 $40
	ld e, a                                          ; $71a8: $5f
	add hl, sp                                       ; $71a9: $39
	and b                                            ; $71aa: $a0
	ld e, b                                          ; $71ab: $58
	ld b, [hl]                                       ; $71ac: $46
	inc [hl]                                         ; $71ad: $34
	ldh a, [$0a]                                     ; $71ae: $f0 $0a
	ld d, l                                          ; $71b0: $55
	db $ec                                           ; $71b1: $ec
	dec a                                            ; $71b2: $3d
	and b                                            ; $71b3: $a0
	ld c, a                                          ; $71b4: $4f
	add hl, sp                                       ; $71b5: $39
	inc [hl]                                         ; $71b6: $34
	db $ed                                           ; $71b7: $ed
	ld h, b                                          ; $71b8: $60
	dec sp                                           ; $71b9: $3b
	ccf                                              ; $71ba: $3f
	ldh a, [$78]                                     ; $71bb: $f0 $78

jr_08f_71bd:
	ld e, e                                          ; $71bd: $5b
	and b                                            ; $71be: $a0
	cpl                                              ; $71bf: $2f
	db $ed                                           ; $71c0: $ed
	ld b, c                                          ; $71c1: $41

jr_08f_71c2:
	db $ed                                           ; $71c2: $ed
	ld h, b                                          ; $71c3: $60
	add hl, bc                                       ; $71c4: $09
	ld c, h                                          ; $71c5: $4c
	add l                                            ; $71c6: $85
	ld c, h                                          ; $71c7: $4c
	add l                                            ; $71c8: $85
	xor b                                            ; $71c9: $a8
	ld c, a                                          ; $71ca: $4f
	inc [hl]                                         ; $71cb: $34

jr_08f_71cc:
	jr c, jr_08f_7209                                ; $71cc: $38 $3b

jr_08f_71ce:
	inc a                                            ; $71ce: $3c
	jr c, jr_08f_71bd                                ; $71cf: $38 $ec

	dec a                                            ; $71d1: $3d
	and b                                            ; $71d2: $a0
	cpl                                              ; $71d3: $2f
	db $ed                                           ; $71d4: $ed
	ld l, a                                          ; $71d5: $6f
	ld h, c                                          ; $71d6: $61
	ldh a, [$5c]                                     ; $71d7: $f0 $5c
	ld d, l                                          ; $71d9: $55
	ld a, [hl-]                                      ; $71da: $3a
	dec sp                                           ; $71db: $3b
	ld h, c                                          ; $71dc: $61
	ld d, [hl]                                       ; $71dd: $56
	dec sp                                           ; $71de: $3b
	dec a                                            ; $71df: $3d
	add hl, bc                                       ; $71e0: $09
	ld e, [hl]                                       ; $71e1: $5e
	add l                                            ; $71e2: $85
	ld e, c                                          ; $71e3: $59
	dec sp                                           ; $71e4: $3b
	xor b                                            ; $71e5: $a8
	ld c, a                                          ; $71e6: $4f
	dec sp                                           ; $71e7: $3b
	ld c, c                                          ; $71e8: $49
	ldh a, [rLCDC]                                   ; $71e9: $f0 $40
	ld d, a                                          ; $71eb: $57
	dec a                                            ; $71ec: $3d
	jr c, jr_08f_7231                                ; $71ed: $38 $42

	ld b, a                                          ; $71ef: $47
	ldh a, [c]                                       ; $71f0: $f2
	db $eb                                           ; $71f1: $eb
	and b                                            ; $71f2: $a0
	cpl                                              ; $71f3: $2f
	ret                                              ; $71f4: $c9


	ld d, c                                          ; $71f5: $51
	ld [hl], b                                       ; $71f6: $70
	jr c, jr_08f_7245                                ; $71f7: $38 $4c

	ld c, b                                          ; $71f9: $48
	add hl, bc                                       ; $71fa: $09
	ld d, h                                          ; $71fb: $54
	add hl, sp                                       ; $71fc: $39
	jr c, @+$3b                                      ; $71fd: $38 $39

	ld b, d                                          ; $71ff: $42
	ldh a, [$64]                                     ; $7200: $f0 $64
	jr c, jr_08f_723e                                ; $7202: $38 $3a

	ld b, d                                          ; $7204: $42
	and c                                            ; $7205: $a1
	ld l, e                                          ; $7206: $6b
	ldh a, [$d3]                                     ; $7207: $f0 $d3

jr_08f_7209:
	ldh a, [rLCDC]                                   ; $7209: $f0 $40
	dec sp                                           ; $720b: $3b
	ccf                                              ; $720c: $3f
	ld c, a                                          ; $720d: $4f
	db $ed                                           ; $720e: $ed
	ld h, b                                          ; $720f: $60
	and b                                            ; $7210: $a0
	cpl                                              ; $7211: $2f
	ld d, h                                          ; $7212: $54
	ld c, l                                          ; $7213: $4d
	ld a, e                                          ; $7214: $7b
	dec sp                                           ; $7215: $3b
	inc a                                            ; $7216: $3c
	ld d, a                                          ; $7217: $57
	ldh a, [rLCDC]                                   ; $7218: $f0 $40
	ld e, a                                          ; $721a: $5f
	add hl, sp                                       ; $721b: $39
	adc l                                            ; $721c: $8d
	add hl, bc                                       ; $721d: $09
	xor $1f                                          ; $721e: $ee $1f
	xor b                                            ; $7220: $a8
	ret nc                                           ; $7221: $d0

	and b                                            ; $7222: $a0
	cpl                                              ; $7223: $2f
	sub b                                            ; $7224: $90
	ld a, $38                                        ; $7225: $3e $38
	ld b, d                                          ; $7227: $42
	ld c, e                                          ; $7228: $4b
	db $eb                                           ; $7229: $eb
	ld a, [$5d44]                                    ; $722a: $fa $44 $5d
	ld b, h                                          ; $722d: $44
	ld b, l                                          ; $722e: $45
	add hl, bc                                       ; $722f: $09
	ld b, b                                          ; $7230: $40

jr_08f_7231:
	ld b, c                                          ; $7231: $41
	ld a, [hl-]                                      ; $7232: $3a
	ld h, e                                          ; $7233: $63
	ld e, l                                          ; $7234: $5d
	inc [hl]                                         ; $7235: $34
	ld a, [hl-]                                      ; $7236: $3a
	jr c, jr_08f_7294                                ; $7237: $38 $5b

	ld d, [hl]                                       ; $7239: $56
	ld b, c                                          ; $723a: $41
	and b                                            ; $723b: $a0
	cpl                                              ; $723c: $2f
	pop af                                           ; $723d: $f1

jr_08f_723e:
	ld [hl], l                                       ; $723e: $75
	ld d, l                                          ; $723f: $55
	ld a, [hl-]                                      ; $7240: $3a
	jr c, jr_08f_7285                                ; $7241: $38 $42

	and c                                            ; $7243: $a1
	db $ed                                           ; $7244: $ed

jr_08f_7245:
	ld e, [hl]                                       ; $7245: $5e
	xor b                                            ; $7246: $a8
	sub b                                            ; $7247: $90
	ld a, $38                                        ; $7248: $3e $38
	ld e, e                                          ; $724a: $5b
	ld d, [hl]                                       ; $724b: $56
	ld b, c                                          ; $724c: $41
	and b                                            ; $724d: $a0
	ld d, d                                          ; $724e: $52
	ld e, e                                          ; $724f: $5b
	ld c, d                                          ; $7250: $4a
	inc [hl]                                         ; $7251: $34
	ld d, c                                          ; $7252: $51
	ld [hl], b                                       ; $7253: $70
	ld d, c                                          ; $7254: $51
	ldh a, [$cb]                                     ; $7255: $f0 $cb
	and b                                            ; $7257: $a0
	db $ed                                           ; $7258: $ed
	ld h, c                                          ; $7259: $61
	ld c, d                                          ; $725a: $4a
	ld c, a                                          ; $725b: $4f
	inc [hl]                                         ; $725c: $34
	ldh a, [rLCDC]                                   ; $725d: $f0 $40
	ld d, a                                          ; $725f: $57
	dec a                                            ; $7260: $3d
	jr c, jr_08f_72af                                ; $7261: $38 $4c

	and b                                            ; $7263: $a0
	cpl                                              ; $7264: $2f
	ld a, $66                                        ; $7265: $3e $66
	ld a, c                                          ; $7267: $79

jr_08f_7268:
	ld b, c                                          ; $7268: $41
	ld c, e                                          ; $7269: $4b
	db $eb                                           ; $726a: $eb
	add b                                            ; $726b: $80
	ld b, h                                          ; $726c: $44
	ld c, h                                          ; $726d: $4c
	add hl, bc                                       ; $726e: $09
	ld e, [hl]                                       ; $726f: $5e
	add l                                            ; $7270: $85
	ld e, c                                          ; $7271: $59
	dec sp                                           ; $7272: $3b
	xor b                                            ; $7273: $a8
	ld d, d                                          ; $7274: $52
	ld e, e                                          ; $7275: $5b
	ld c, d                                          ; $7276: $4a
	ld b, b                                          ; $7277: $40
	add hl, sp                                       ; $7278: $39
	ld [hl], a                                       ; $7279: $77
	dec sp                                           ; $727a: $3b
	ccf                                              ; $727b: $3f
	ld b, c                                          ; $727c: $41
	ld b, d                                          ; $727d: $42
	and c                                            ; $727e: $a1
	cpl                                              ; $727f: $2f
	ld a, l                                          ; $7280: $7d
	ld h, l                                          ; $7281: $65
	ldh a, [c]                                       ; $7282: $f2
	adc l                                            ; $7283: $8d
	ld d, e                                          ; $7284: $53

jr_08f_7285:
	ld a, b                                          ; $7285: $78
	dec a                                            ; $7286: $3d
	ldh a, [rBGP]                                    ; $7287: $f0 $47
	inc [hl]                                         ; $7289: $34
	ldh a, [rKEY1]                                   ; $728a: $f0 $4d

jr_08f_728c:
	ldh a, [rKEY1]                                   ; $728c: $f0 $4d
	dec sp                                           ; $728e: $3b
	ld h, c                                          ; $728f: $61
	ld d, [hl]                                       ; $7290: $56
	dec sp                                           ; $7291: $3b
	dec a                                            ; $7292: $3d
	add hl, bc                                       ; $7293: $09

jr_08f_7294:
	ld l, a                                          ; $7294: $6f
	ld c, a                                          ; $7295: $4f
	ld l, a                                          ; $7296: $6f
	ld c, a                                          ; $7297: $4f
	xor b                                            ; $7298: $a8
	ld c, h                                          ; $7299: $4c
	inc [hl]                                         ; $729a: $34
	ld c, a                                          ; $729b: $4f
	dec sp                                           ; $729c: $3b
	inc a                                            ; $729d: $3c
	jr c, jr_08f_728c                                ; $729e: $38 $ec

	dec a                                            ; $72a0: $3d
	and b                                            ; $72a1: $a0
	db $ed                                           ; $72a2: $ed
	add hl, de                                       ; $72a3: $19
	dec sp                                           ; $72a4: $3b
	ccf                                              ; $72a5: $3f
	ld c, a                                          ; $72a6: $4f
	inc [hl]                                         ; $72a7: $34

Call_08f_72a8:
	db $ed                                           ; $72a8: $ed
	ld h, b                                          ; $72a9: $60
	and b                                            ; $72aa: $a0
	cpl                                              ; $72ab: $2f
	ld c, a                                          ; $72ac: $4f
	add hl, sp                                       ; $72ad: $39
	ld l, l                                          ; $72ae: $6d

jr_08f_72af:
	ldh a, [$d3]                                     ; $72af: $f0 $d3
	db $ec                                           ; $72b1: $ec
	dec a                                            ; $72b2: $3d
	add hl, bc                                       ; $72b3: $09
	xor $1f                                          ; $72b4: $ee $1f
	xor b                                            ; $72b6: $a8
	ldh a, [rLCDC]                                   ; $72b7: $f0 $40
	ld e, a                                          ; $72b9: $5f
	ldh a, [rLCDC]                                   ; $72ba: $f0 $40
	ld e, a                                          ; $72bc: $5f
	and b                                            ; $72bd: $a0
	cpl                                              ; $72be: $2f
	ld b, b                                          ; $72bf: $40
	ld b, c                                          ; $72c0: $41
	ld a, [hl-]                                      ; $72c1: $3a
	ld b, a                                          ; $72c2: $47
	ld d, c                                          ; $72c3: $51
	ld [hl], b                                       ; $72c4: $70
	jr c, jr_08f_7268                                ; $72c5: $38 $a1

	ld d, c                                          ; $72c7: $51
	dec sp                                           ; $72c8: $3b
	ld [hl], b                                       ; $72c9: $70
	jr c, jr_08f_7311                                ; $72ca: $38 $45

	xor b                                            ; $72cc: $a8
	ldh a, [rTAC]                                    ; $72cd: $f0 $07
	inc a                                            ; $72cf: $3c
	ld b, c                                          ; $72d0: $41
	ld a, [hl-]                                      ; $72d1: $3a
	jr c, jr_08f_730e                                ; $72d2: $38 $3a

	ld b, c                                          ; $72d4: $41
	ccf                                              ; $72d5: $3f
	xor h                                            ; $72d6: $ac
	db $eb                                           ; $72d7: $eb
	scf                                              ; $72d8: $37
	and b                                            ; $72d9: $a0
	cpl                                              ; $72da: $2f

jr_08f_72db:
	ldh a, [c]                                       ; $72db: $f2
	ld a, [hl]                                       ; $72dc: $7e
	ld e, h                                          ; $72dd: $5c
	ccf                                              ; $72de: $3f
	ld d, h                                          ; $72df: $54
	ld a, [hl-]                                      ; $72e0: $3a
	jr c, jr_08f_7325                                ; $72e1: $38 $42

	and c                                            ; $72e3: $a1
	db $ed                                           ; $72e4: $ed
	ld e, [hl]                                       ; $72e5: $5e
	xor b                                            ; $72e6: $a8
	ldh a, [$08]                                     ; $72e7: $f0 $08
	ld d, b                                          ; $72e9: $50
	ld c, a                                          ; $72ea: $4f
	dec sp                                           ; $72eb: $3b
	inc a                                            ; $72ec: $3c

jr_08f_72ed:
	jr c, jr_08f_72db                                ; $72ed: $38 $ec

	dec a                                            ; $72ef: $3d
	and b                                            ; $72f0: $a0
	db $ed                                           ; $72f1: $ed
	ld h, a                                          ; $72f2: $67
	ldh a, [rSTAT]                                   ; $72f3: $f0 $41
	ld c, c                                          ; $72f5: $49
	xor $06                                          ; $72f6: $ee $06
	ld c, d                                          ; $72f8: $4a
	xor h                                            ; $72f9: $ac
	db $eb                                           ; $72fa: $eb
	ld l, d                                          ; $72fb: $6a
	ld a, [hl-]                                      ; $72fc: $3a
	jr c, jr_08f_7341                                ; $72fd: $38 $42

	and c                                            ; $72ff: $a1
	cpl                                              ; $7300: $2f
	add sp, $36                                      ; $7301: $e8 $36
	ld c, b                                          ; $7303: $48
	add hl, bc                                       ; $7304: $09
	ld [hl], d                                       ; $7305: $72
	ld c, [hl]                                       ; $7306: $4e
	sbc [hl]                                         ; $7307: $9e
	ld b, a                                          ; $7308: $47
	xor h                                            ; $7309: $ac
	add d                                            ; $730a: $82
	dec sp                                           ; $730b: $3b
	ccf                                              ; $730c: $3f
	ld c, a                                          ; $730d: $4f

jr_08f_730e:
	ld d, b                                          ; $730e: $50
	jr c, @+$3f                                      ; $730f: $38 $3d

jr_08f_7311:
	inc a                                            ; $7311: $3c
	dec sp                                           ; $7312: $3b
	dec a                                            ; $7313: $3d
	ld a, [hl-]                                      ; $7314: $3a
	and b                                            ; $7315: $a0
	cpl                                              ; $7316: $2f
	ld b, b                                          ; $7317: $40
	ld b, c                                          ; $7318: $41
	ld a, [hl-]                                      ; $7319: $3a
	ld b, d                                          ; $731a: $42
	ld a, a                                          ; $731b: $7f
	ld b, a                                          ; $731c: $47
	ld a, $3a                                        ; $731d: $3e $3a
	jr c, jr_08f_7355                                ; $731f: $38 $34

	ld a, a                                          ; $7321: $7f
	ld b, a                                          ; $7322: $47
	ld a, $3a                                        ; $7323: $3e $3a

jr_08f_7325:
	jr c, jr_08f_7330                                ; $7325: $38 $09

	ld e, [hl]                                       ; $7327: $5e
	add l                                            ; $7328: $85
	ld e, c                                          ; $7329: $59
	dec sp                                           ; $732a: $3b
	xor b                                            ; $732b: $a8
	pop af                                           ; $732c: $f1
	db $fc                                           ; $732d: $fc
	ldh a, [rOCPS]                                   ; $732e: $f0 $6a

jr_08f_7330:
	ld a, a                                          ; $7330: $7f
	ld b, a                                          ; $7331: $47
	ld d, c                                          ; $7332: $51
	ld c, [hl]                                       ; $7333: $4e
	ld b, l                                          ; $7334: $45
	and b                                            ; $7335: $a0
	cpl                                              ; $7336: $2f
	db $ed                                           ; $7337: $ed
	ld b, e                                          ; $7338: $43
	ld [hl], d                                       ; $7339: $72
	dec a                                            ; $733a: $3d
	inc a                                            ; $733b: $3c
	dec sp                                           ; $733c: $3b
	dec a                                            ; $733d: $3d
	ld b, c                                          ; $733e: $41
	ld b, h                                          ; $733f: $44
	ld c, a                                          ; $7340: $4f

jr_08f_7341:
	ld b, c                                          ; $7341: $41
	add hl, bc                                       ; $7342: $09
	ld l, e                                          ; $7343: $6b
	ld b, h                                          ; $7344: $44
	inc a                                            ; $7345: $3c
	inc [hl]                                         ; $7346: $34
	db $ed                                           ; $7347: $ed
	ld h, a                                          ; $7348: $67
	ld l, h                                          ; $7349: $6c
	dec a                                            ; $734a: $3d
	jr c, jr_08f_72ed                                ; $734b: $38 $a0

	ld [$13c4], a                                    ; $734d: $ea $c4 $13
	db $eb                                           ; $7350: $eb
	and l                                            ; $7351: $a5
	dec sp                                           ; $7352: $3b
	ccf                                              ; $7353: $3f
	xor h                                            ; $7354: $ac

jr_08f_7355:
	add a                                            ; $7355: $87
	ldh a, [$5d]                                     ; $7356: $f0 $5d
	ld a, [hl-]                                      ; $7358: $3a
	ld b, c                                          ; $7359: $41
	db $ec                                           ; $735a: $ec
	ret c                                            ; $735b: $d8

	and c                                            ; $735c: $a1
	cpl                                              ; $735d: $2f
	add sp, $11                                      ; $735e: $e8 $11
	add hl, bc                                       ; $7360: $09
	ld l, [hl]                                       ; $7361: $6e
	dec sp                                           ; $7362: $3b
	ldh a, [$36]                                     ; $7363: $f0 $36
	inc [hl]                                         ; $7365: $34
	ret nz                                           ; $7366: $c0

	and b                                            ; $7367: $a0
	cpl                                              ; $7368: $2f
	add sp, -$17                                     ; $7369: $e8 $e9
	ld c, b                                          ; $736b: $48
	add hl, bc                                       ; $736c: $09
	pop af                                           ; $736d: $f1
	db $fc                                           ; $736e: $fc
	ldh a, [rOCPS]                                   ; $736f: $f0 $6a
	jr c, jr_08f_73ad                                ; $7371: $38 $3a

	jr c, jr_08f_73ba                                ; $7373: $38 $45

	and b                                            ; $7375: $a0
	cpl                                              ; $7376: $2f
	add sp, -$65                                     ; $7377: $e8 $9b
	add hl, bc                                       ; $7379: $09
	ld e, [hl]                                       ; $737a: $5e
	dec sp                                           ; $737b: $3b
	xor c                                            ; $737c: $a9
	db $ed                                           ; $737d: $ed
	rla                                              ; $737e: $17
	dec sp                                           ; $737f: $3b
	ccf                                              ; $7380: $3f
	ld l, e                                          ; $7381: $6b
	and c                                            ; $7382: $a1
	db $ec                                           ; $7383: $ec
	dec e                                            ; $7384: $1d
	ld l, [hl]                                       ; $7385: $6e
	dec sp                                           ; $7386: $3b
	ccf                                              ; $7387: $3f
	ld c, [hl]                                       ; $7388: $4e
	ld b, l                                          ; $7389: $45
	xor b                                            ; $738a: $a8
	ld [hl], d                                       ; $738b: $72
	ld b, a                                          ; $738c: $47
	ld h, a                                          ; $738d: $67
	ld d, h                                          ; $738e: $54
	add hl, sp                                       ; $738f: $39
	and b                                            ; $7390: $a0
	cpl                                              ; $7391: $2f
	ld [$acc9], a                                    ; $7392: $ea $c9 $ac
	db $ed                                           ; $7395: $ed
	ld d, a                                          ; $7396: $57
	db $ec                                           ; $7397: $ec
	dec e                                            ; $7398: $1d
	ld h, d                                          ; $7399: $62
	inc de                                           ; $739a: $13
	ld [$a33f], a                                    ; $739b: $ea $3f $a3
	cpl                                              ; $739e: $2f
	jp hl                                            ; $739f: $e9


	ld sp, $6f09                                     ; $73a0: $31 $09 $6f
	ld d, h                                          ; $73a3: $54
	ld c, l                                          ; $73a4: $4d
	add a                                            ; $73a5: $87
	adc e                                            ; $73a6: $8b
	ld e, h                                          ; $73a7: $5c
	ld a, [hl-]                                      ; $73a8: $3a
	ld b, c                                          ; $73a9: $41
	ld b, h                                          ; $73aa: $44
	and b                                            ; $73ab: $a0
	db $ed                                           ; $73ac: $ed

jr_08f_73ad:
	ld h, c                                          ; $73ad: $61
	ld [hl], d                                       ; $73ae: $72
	ccf                                              ; $73af: $3f
	ld c, a                                          ; $73b0: $4f
	inc de                                           ; $73b1: $13
	db $ec                                           ; $73b2: $ec
	ld e, e                                          ; $73b3: $5b
	ld c, b                                          ; $73b4: $48
	and b                                            ; $73b5: $a0
	cpl                                              ; $73b6: $2f
	ld b, e                                          ; $73b7: $43
	ldh a, [$66]                                     ; $73b8: $f0 $66

jr_08f_73ba:
	ld b, c                                          ; $73ba: $41
	ld c, d                                          ; $73bb: $4a
	ld c, a                                          ; $73bc: $4f
	ld d, b                                          ; $73bd: $50
	ld e, [hl]                                       ; $73be: $5e
	dec a                                            ; $73bf: $3d
	ld l, h                                          ; $73c0: $6c
	dec a                                            ; $73c1: $3d
	jr c, jr_08f_740e                                ; $73c2: $38 $4a

	inc de                                           ; $73c4: $13
	db $eb                                           ; $73c5: $eb
	ld e, a                                          ; $73c6: $5f
	and b                                            ; $73c7: $a0
	cpl                                              ; $73c8: $2f
	add sp, -$26                                     ; $73c9: $e8 $da
	add hl, bc                                       ; $73cb: $09
	db $ec                                           ; $73cc: $ec
	dec e                                            ; $73cd: $1d
	ld l, [hl]                                       ; $73ce: $6e
	dec sp                                           ; $73cf: $3b
	ccf                                              ; $73d0: $3f
	ld c, [hl]                                       ; $73d1: $4e
	ld b, l                                          ; $73d2: $45
	xor b                                            ; $73d3: $a8
	ldh a, [$08]                                     ; $73d4: $f0 $08
	ld d, b                                          ; $73d6: $50
	inc [hl]                                         ; $73d7: $34
	ld [hl], d                                       ; $73d8: $72
	ld b, a                                          ; $73d9: $47
	ld h, a                                          ; $73da: $67
	ld d, h                                          ; $73db: $54
	add hl, sp                                       ; $73dc: $39
	and b                                            ; $73dd: $a0
	cpl                                              ; $73de: $2f
	ld b, e                                          ; $73df: $43
	ld b, [hl]                                       ; $73e0: $46
	dec sp                                           ; $73e1: $3b
	xor h                                            ; $73e2: $ac
	db $eb                                           ; $73e3: $eb
	ld a, [$3b99]                                    ; $73e4: $fa $99 $3b
	ccf                                              ; $73e7: $3f
	and b                                            ; $73e8: $a0
	db $ed                                           ; $73e9: $ed
	ld h, c                                          ; $73ea: $61
	ld [hl], d                                       ; $73eb: $72
	ccf                                              ; $73ec: $3f
	ld c, a                                          ; $73ed: $4f
	xor h                                            ; $73ee: $ac
	db $ec                                           ; $73ef: $ec
	ld e, e                                          ; $73f0: $5b
	ld c, h                                          ; $73f1: $4c
	add l                                            ; $73f2: $85
	and b                                            ; $73f3: $a0
	cpl                                              ; $73f4: $2f
	ld b, e                                          ; $73f5: $43
	jp hl                                            ; $73f6: $e9


	or a                                             ; $73f7: $b7
	and b                                            ; $73f8: $a0
	ld l, a                                          ; $73f9: $6f
	inc [hl]                                         ; $73fa: $34
	db $ed                                           ; $73fb: $ed
	ld h, c                                          ; $73fc: $61
	ld c, a                                          ; $73fd: $4f
	inc de                                           ; $73fe: $13
	ld d, h                                          ; $73ff: $54
	ld b, d                                          ; $7400: $42
	db $ec                                           ; $7401: $ec
	dec e                                            ; $7402: $1d
	ld [hl], d                                       ; $7403: $72
	ccf                                              ; $7404: $3f
	ld c, [hl]                                       ; $7405: $4e
	ld e, l                                          ; $7406: $5d
	ld e, d                                          ; $7407: $5a
	xor l                                            ; $7408: $ad
	ld l, d                                          ; $7409: $6a
	ld l, b                                          ; $740a: $68
	ld d, e                                          ; $740b: $53
	db $ed                                           ; $740c: $ed
	ld [hl], d                                       ; $740d: $72

jr_08f_740e:
	inc [hl]                                         ; $740e: $34
	db $ed                                           ; $740f: $ed
	ld c, c                                          ; $7410: $49
	and b                                            ; $7411: $a0
	cpl                                              ; $7412: $2f
	ld b, e                                          ; $7413: $43
	db $ec                                           ; $7414: $ec
	db $d3                                           ; $7415: $d3
	and c                                            ; $7416: $a1
	db $ed                                           ; $7417: $ed
	ld b, e                                          ; $7418: $43
	inc [hl]                                         ; $7419: $34
	db $ec                                           ; $741a: $ec
	ld hl, sp-$10                                    ; $741b: $f8 $f0
	ret z                                            ; $741d: $c8

	jr c, jr_08f_7473                                ; $741e: $38 $53

	inc de                                           ; $7420: $13
	di                                               ; $7421: $f3
	and a                                            ; $7422: $a7
	dec sp                                           ; $7423: $3b
	dec a                                            ; $7424: $3d
	dec sp                                           ; $7425: $3b
	ccf                                              ; $7426: $3f
	jr c, jr_08f_7462                                ; $7427: $38 $39

	inc a                                            ; $7429: $3c
	ld [hl], h                                       ; $742a: $74
	xor h                                            ; $742b: $ac
	ld c, c                                          ; $742c: $49
	ld b, a                                          ; $742d: $47
	inc a                                            ; $742e: $3c
	ld d, l                                          ; $742f: $55
	inc [hl]                                         ; $7430: $34
	db $d3                                           ; $7431: $d3
	and b                                            ; $7432: $a0
	cpl                                              ; $7433: $2f
	ld b, e                                          ; $7434: $43
	ldh a, [$c8]                                     ; $7435: $f0 $c8
	jr c, jr_08f_7474                                ; $7437: $38 $3b

	ccf                                              ; $7439: $3f
	and c                                            ; $743a: $a1
	sbc h                                            ; $743b: $9c
	dec sp                                           ; $743c: $3b
	ld c, c                                          ; $743d: $49
	sbc [hl]                                         ; $743e: $9e
	inc a                                            ; $743f: $3c
	ld d, b                                          ; $7440: $50
	xor h                                            ; $7441: $ac
	adc e                                            ; $7442: $8b
	ld e, h                                          ; $7443: $5c
	ld a, [hl-]                                      ; $7444: $3a
	add h                                            ; $7445: $84
	ld c, c                                          ; $7446: $49
	inc de                                           ; $7447: $13
	ld [hl], d                                       ; $7448: $72
	dec a                                            ; $7449: $3d
	inc a                                            ; $744a: $3c
	dec sp                                           ; $744b: $3b
	dec a                                            ; $744c: $3d
	ld b, c                                          ; $744d: $41
	ld b, h                                          ; $744e: $44
	and b                                            ; $744f: $a0
	cpl                                              ; $7450: $2f
	ld b, e                                          ; $7451: $43
	ld e, [hl]                                       ; $7452: $5e
	dec sp                                           ; $7453: $3b
	xor c                                            ; $7454: $a9
	ld b, l                                          ; $7455: $45
	ld d, l                                          ; $7456: $55
	ldh a, [$0c]                                     ; $7457: $f0 $0c
	ld d, h                                          ; $7459: $54
	ld e, [hl]                                       ; $745a: $5e
	ld a, [hl-]                                      ; $745b: $3a
	inc a                                            ; $745c: $3c
	dec sp                                           ; $745d: $3b
	dec a                                            ; $745e: $3d
	xor b                                            ; $745f: $a8
	ld c, a                                          ; $7460: $4f
	add hl, sp                                       ; $7461: $39

jr_08f_7462:
	ld l, l                                          ; $7462: $6d
	ldh a, [$0d]                                     ; $7463: $f0 $0d
	add d                                            ; $7465: $82
	dec sp                                           ; $7466: $3b
	ccf                                              ; $7467: $3f
	ld b, l                                          ; $7468: $45
	and b                                            ; $7469: $a0
	ldh a, [$08]                                     ; $746a: $f0 $08
	inc [hl]                                         ; $746c: $34
	ldh a, [$08]                                     ; $746d: $f0 $08
	ld d, b                                          ; $746f: $50
	inc [hl]                                         ; $7470: $34
	pop af                                           ; $7471: $f1
	ld e, b                                          ; $7472: $58

jr_08f_7473:
	inc a                                            ; $7473: $3c

jr_08f_7474:
	ld b, a                                          ; $7474: $47
	inc de                                           ; $7475: $13
	ld [hl], d                                       ; $7476: $72
	ld b, l                                          ; $7477: $45
	add hl, sp                                       ; $7478: $39
	ld b, l                                          ; $7479: $45

jr_08f_747a:
	dec [hl]                                         ; $747a: $35
	ld c, a                                          ; $747b: $4f
	add hl, sp                                       ; $747c: $39
	ldh a, [$ce]                                     ; $747d: $f0 $ce
	ld h, e                                          ; $747f: $63
	dec sp                                           ; $7480: $3b
	ld h, c                                          ; $7481: $61
	ld d, [hl]                                       ; $7482: $56
	add hl, sp                                       ; $7483: $39
	ld b, l                                          ; $7484: $45
	and b                                            ; $7485: $a0
	cpl                                              ; $7486: $2f
	ld b, e                                          ; $7487: $43
	pop af                                           ; $7488: $f1
	ld e, b                                          ; $7489: $58
	inc a                                            ; $748a: $3c
	ld b, a                                          ; $748b: $47
	ld c, h                                          ; $748c: $4c
	add l                                            ; $748d: $85
	xor l                                            ; $748e: $ad
	ld [hl-], a                                      ; $748f: $32
	ld l, e                                          ; $7490: $6b
	ccf                                              ; $7491: $3f
	add d                                            ; $7492: $82
	dec sp                                           ; $7493: $3b
	dec a                                            ; $7494: $3d
	ld b, c                                          ; $7495: $41
	ld b, h                                          ; $7496: $44
	ld e, a                                          ; $7497: $5f
	add hl, sp                                       ; $7498: $39
	and e                                            ; $7499: $a3
	ld l, e                                          ; $749a: $6b
	inc a                                            ; $749b: $3c
	xor h                                            ; $749c: $ac
	di                                               ; $749d: $f3
	ld sp, hl                                        ; $749e: $f9
	ld d, e                                          ; $749f: $53
	ldh a, [$79]                                     ; $74a0: $f0 $79
	ld e, l                                          ; $74a2: $5d
	ld h, c                                          ; $74a3: $61
	ld d, [hl]                                       ; $74a4: $56
	dec sp                                           ; $74a5: $3b
	dec a                                            ; $74a6: $3d
	ldh a, [$78]                                     ; $74a7: $f0 $78
	ld e, e                                          ; $74a9: $5b
	xor b                                            ; $74aa: $a8
	ld d, d                                          ; $74ab: $52
	inc [hl]                                         ; $74ac: $34
	jr c, @+$3a                                      ; $74ad: $38 $38

	inc a                                            ; $74af: $3c
	and b                                            ; $74b0: $a0
	ld a, a                                          ; $74b1: $7f
	ld d, e                                          ; $74b2: $53
	pop af                                           ; $74b3: $f1
	dec hl                                           ; $74b4: $2b
	ld d, d                                          ; $74b5: $52
	ld a, [hl-]                                      ; $74b6: $3a
	jr c, jr_08f_7516                                ; $74b7: $38 $5d

	ld e, d                                          ; $74b9: $5a
	xor h                                            ; $74ba: $ac
	sub [hl]                                         ; $74bb: $96
	ld d, a                                          ; $74bc: $57
	ld d, d                                          ; $74bd: $52
	ld a, $66                                        ; $74be: $3e $66
	and b                                            ; $74c0: $a0
	cpl                                              ; $74c1: $2f
	ld b, e                                          ; $74c2: $43
	ld b, b                                          ; $74c3: $40
	add hl, sp                                       ; $74c4: $39
	ld b, h                                          ; $74c5: $44
	ld c, h                                          ; $74c6: $4c
	xor b                                            ; $74c7: $a8
	db $eb                                           ; $74c8: $eb
	ld d, d                                          ; $74c9: $52
	inc a                                            ; $74ca: $3c
	and c                                            ; $74cb: $a1
	ldh a, [rAUD2LOW]                                ; $74cc: $f0 $18
	ldh a, [$dc]                                     ; $74ce: $f0 $dc
	dec sp                                           ; $74d0: $3b
	ccf                                              ; $74d1: $3f
	inc [hl]                                         ; $74d2: $34
	ldh a, [rAUD4ENV]                                ; $74d3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $74d5: $f0 $23
	jr c, jr_08f_747a                                ; $74d7: $38 $a1

	cpl                                              ; $74d9: $2f
	halt                                             ; $74da: $76
	ld c, e                                          ; $74db: $4b
	ld h, e                                          ; $74dc: $63
	ld d, a                                          ; $74dd: $57
	ld c, c                                          ; $74de: $49
	adc e                                            ; $74df: $8b
	ld e, h                                          ; $74e0: $5c
	ld b, h                                          ; $74e1: $44
	ld a, [hl-]                                      ; $74e2: $3a
	ld c, b                                          ; $74e3: $48
	add hl, bc                                       ; $74e4: $09
	db $ec                                           ; $74e5: $ec
	ldh a, [$a8]                                     ; $74e6: $f0 $a8
	ld a, [hl]                                       ; $74e8: $7e
	ld d, l                                          ; $74e9: $55
	ldh a, [rTAC]                                    ; $74ea: $f0 $07
	inc a                                            ; $74ec: $3c
	ld b, c                                          ; $74ed: $41
	ld a, [hl-]                                      ; $74ee: $3a
	jr c, jr_08f_752b                                ; $74ef: $38 $3a

	ld [hl], h                                       ; $74f1: $74
	and b                                            ; $74f2: $a0
	cpl                                              ; $74f3: $2f
	db $ec                                           ; $74f4: $ec
	ld e, d                                          ; $74f5: $5a
	ld d, l                                          ; $74f6: $55
	ld a, [hl-]                                      ; $74f7: $3a
	jr c, jr_08f_7503                                ; $74f8: $38 $09

	ld e, e                                          ; $74fa: $5b
	ld d, [hl]                                       ; $74fb: $56
	ld b, [hl]                                       ; $74fc: $46
	inc [hl]                                         ; $74fd: $34
	ld a, [hl-]                                      ; $74fe: $3a
	ld b, c                                          ; $74ff: $41
	ld c, d                                          ; $7500: $4a
	ld a, b                                          ; $7501: $78
	dec a                                            ; $7502: $3d

jr_08f_7503:
	ld b, d                                          ; $7503: $42
	and c                                            ; $7504: $a1
	cpl                                              ; $7505: $2f
	db $eb                                           ; $7506: $eb
	ld a, [$5a4b]                                    ; $7507: $fa $4b $5a
	add hl, sp                                       ; $750a: $39
	ld a, [hl-]                                      ; $750b: $3a
	ld b, d                                          ; $750c: $42
	and c                                            ; $750d: $a1
	ld l, a                                          ; $750e: $6f
	ld c, e                                          ; $750f: $4b
	jp nc, $8b13                                     ; $7510: $d2 $13 $8b

	ld e, h                                          ; $7513: $5c
	db $ec                                           ; $7514: $ec
	ret c                                            ; $7515: $d8

jr_08f_7516:
	ld a, [hl-]                                      ; $7516: $3a
	and b                                            ; $7517: $a0
	ld l, d                                          ; $7518: $6a
	ld e, d                                          ; $7519: $5a
	add hl, sp                                       ; $751a: $39
	ld a, [hl-]                                      ; $751b: $3a
	dec sp                                           ; $751c: $3b
	ccf                                              ; $751d: $3f
	ld c, [hl]                                       ; $751e: $4e
	ld b, d                                          ; $751f: $42
	and c                                            ; $7520: $a1
	cpl                                              ; $7521: $2f
	ld [hl-], a                                      ; $7522: $32
	pop af                                           ; $7523: $f1
	dec c                                            ; $7524: $0d
	ldh a, [$79]                                     ; $7525: $f0 $79
	ld d, c                                          ; $7527: $51
	ld c, [hl]                                       ; $7528: $4e
	inc sp                                           ; $7529: $33
	add hl, bc                                       ; $752a: $09

jr_08f_752b:
	db $ec                                           ; $752b: $ec
	ldh a, [$a8]                                     ; $752c: $f0 $a8
	ret nz                                           ; $752e: $c0

	and b                                            ; $752f: $a0
	cpl                                              ; $7530: $2f
	ld [$094e], a                                    ; $7531: $ea $4e $09
	ld h, c                                          ; $7534: $61
	ld h, [hl]                                       ; $7535: $66

jr_08f_7536:
	ldh a, [$be]                                     ; $7536: $f0 $be
	inc a                                            ; $7538: $3c
	ld e, c                                          ; $7539: $59
	dec sp                                           ; $753a: $3b
	xor b                                            ; $753b: $a8
	ld e, e                                          ; $753c: $5b
	ld d, [hl]                                       ; $753d: $56
	inc [hl]                                         ; $753e: $34
	jr c, jr_08f_7579                                ; $753f: $38 $38

	ld b, l                                          ; $7541: $45
	and b                                            ; $7542: $a0
	cpl                                              ; $7543: $2f
	halt                                             ; $7544: $76
	ld c, a                                          ; $7545: $4f
	ldh a, [rTAC]                                    ; $7546: $f0 $07
	inc a                                            ; $7548: $3c
	ld b, c                                          ; $7549: $41
	ld a, [hl-]                                      ; $754a: $3a
	jr c, jr_08f_7592                                ; $754b: $38 $45

	add hl, bc                                       ; $754d: $09
	db $ed                                           ; $754e: $ed
	rlca                                             ; $754f: $07
	ld c, d                                          ; $7550: $4a
	ld c, a                                          ; $7551: $4f
	ld [hl], d                                       ; $7552: $72
	dec a                                            ; $7553: $3d
	ldh a, [$08]                                     ; $7554: $f0 $08
	add hl, sp                                       ; $7556: $39
	ld d, e                                          ; $7557: $53
	inc de                                           ; $7558: $13
	jr c, jr_08f_7593                                ; $7559: $38 $38

	ld b, c                                          ; $755b: $41
	db $ec                                           ; $755c: $ec
	ret c                                            ; $755d: $d8

	and c                                            ; $755e: $a1
	ld [$34d8], a                                    ; $755f: $ea $d8 $34
	ldh a, [rAUD4ENV]                                ; $7562: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7564: $f0 $23
	jr c, @-$5d                                      ; $7566: $38 $a1

	ld b, [hl]                                       ; $7568: $46
	ld b, c                                          ; $7569: $41
	ld a, [hl-]                                      ; $756a: $3a
	sbc d                                            ; $756b: $9a
	ld a, $3f                                        ; $756c: $3e $3f
	xor h                                            ; $756e: $ac
	pop af                                           ; $756f: $f1
	ld a, [hl-]                                      ; $7570: $3a
	ld d, l                                          ; $7571: $55
	ld a, [hl-]                                      ; $7572: $3a
	jr c, jr_08f_75b7                                ; $7573: $38 $42

	and c                                            ; $7575: $a1
	cpl                                              ; $7576: $2f
	add sp, $16                                      ; $7577: $e8 $16

jr_08f_7579:
	add hl, bc                                       ; $7579: $09
	db $ec                                           ; $757a: $ec
	ldh a, [$a8]                                     ; $757b: $f0 $a8
	ld b, b                                          ; $757d: $40
	ld b, c                                          ; $757e: $41
	ld a, [hl-]                                      ; $757f: $3a
	ld c, a                                          ; $7580: $4f
	ld b, c                                          ; $7581: $41
	ld a, [hl-]                                      ; $7582: $3a
	ld b, c                                          ; $7583: $41
	ld b, h                                          ; $7584: $44
	and b                                            ; $7585: $a0
	cpl                                              ; $7586: $2f
	ld [$0963], a                                    ; $7587: $ea $63 $09
	ld e, [hl]                                       ; $758a: $5e
	add l                                            ; $758b: $85
	ld e, c                                          ; $758c: $59
	dec sp                                           ; $758d: $3b
	xor b                                            ; $758e: $a8
	pop af                                           ; $758f: $f1
	ld a, [hl]                                       ; $7590: $7e
	ld d, l                                          ; $7591: $55

jr_08f_7592:
	ld e, b                                          ; $7592: $58

jr_08f_7593:
	ld e, c                                          ; $7593: $59
	jr c, jr_08f_7536                                ; $7594: $38 $a0

	cpl                                              ; $7596: $2f
	add sp, -$5e                                     ; $7597: $e8 $a2
	add hl, bc                                       ; $7599: $09
	ld l, [hl]                                       ; $759a: $6e
	dec sp                                           ; $759b: $3b
	ldh a, [$36]                                     ; $759c: $f0 $36
	ret nz                                           ; $759e: $c0

	and b                                            ; $759f: $a0
	ld b, [hl]                                       ; $75a0: $46
	dec sp                                           ; $75a1: $3b
	xor h                                            ; $75a2: $ac
	ld c, a                                          ; $75a3: $4f
	add hl, sp                                       ; $75a4: $39
	ld [$a05d], a                                    ; $75a5: $ea $5d $a0
	cpl                                              ; $75a8: $2f
	ld b, e                                          ; $75a9: $43
	ld b, [hl]                                       ; $75aa: $46
	dec sp                                           ; $75ab: $3b
	inc [hl]                                         ; $75ac: $34
	adc b                                            ; $75ad: $88
	sub c                                            ; $75ae: $91
	ld b, h                                          ; $75af: $44
	xor b                                            ; $75b0: $a8
	ldh a, [$0a]                                     ; $75b1: $f0 $0a
	ld d, l                                          ; $75b3: $55
	sub [hl]                                         ; $75b4: $96
	ld e, a                                          ; $75b5: $5f
	add hl, sp                                       ; $75b6: $39

jr_08f_75b7:
	and b                                            ; $75b7: $a0
	ld b, [hl]                                       ; $75b8: $46
	ld b, b                                          ; $75b9: $40
	ld d, h                                          ; $75ba: $54
	ld d, e                                          ; $75bb: $53
	ldh a, [$c9]                                     ; $75bc: $f0 $c9
	jr c, jr_08f_75ff                                ; $75be: $38 $3f

	ld c, [hl]                                       ; $75c0: $4e
	xor b                                            ; $75c1: $a8
	ldh a, [$0a]                                     ; $75c2: $f0 $0a
	ld d, l                                          ; $75c4: $55
	ldh a, [$0a]                                     ; $75c5: $f0 $0a
	ld d, l                                          ; $75c7: $55
	and b                                            ; $75c8: $a0
	cpl                                              ; $75c9: $2f
	add sp, -$75                                     ; $75ca: $e8 $8b
	and c                                            ; $75cc: $a1
	ld c, a                                          ; $75cd: $4f
	add hl, sp                                       ; $75ce: $39
	inc [hl]                                         ; $75cf: $34
	db $ed                                           ; $75d0: $ed
	ld h, b                                          ; $75d1: $60
	xor b                                            ; $75d2: $a8
	cp e                                             ; $75d3: $bb
	ld c, h                                          ; $75d4: $4c
	and b                                            ; $75d5: $a0
	cpl                                              ; $75d6: $2f
	add sp, $2c                                      ; $75d7: $e8 $2c
	and c                                            ; $75d9: $a1
	ld d, d                                          ; $75da: $52
	ld e, e                                          ; $75db: $5b
	ld e, c                                          ; $75dc: $59
	dec sp                                           ; $75dd: $3b
	xor c                                            ; $75de: $a9
	pop af                                           ; $75df: $f1
	ld d, d                                          ; $75e0: $52
	db $ec                                           ; $75e1: $ec
	cp c                                             ; $75e2: $b9
	ld e, e                                          ; $75e3: $5b
	ld d, [hl]                                       ; $75e4: $56
	ld b, c                                          ; $75e5: $41
	and b                                            ; $75e6: $a0
	cpl                                              ; $75e7: $2f
	add sp, $2d                                      ; $75e8: $e8 $2d
	and c                                            ; $75ea: $a1
	pop af                                           ; $75eb: $f1
	ld d, d                                          ; $75ec: $52
	db $ec                                           ; $75ed: $ec
	cp c                                             ; $75ee: $b9
	ld c, c                                          ; $75ef: $49
	ld [hl], a                                       ; $75f0: $77
	add hl, sp                                       ; $75f1: $39
	inc de                                           ; $75f2: $13
	ld e, l                                          ; $75f3: $5d
	ld e, d                                          ; $75f4: $5a
	ld a, [hl-]                                      ; $75f5: $3a
	and b                                            ; $75f6: $a0
	db $ed                                           ; $75f7: $ed
	ld e, [hl]                                       ; $75f8: $5e
	inc [hl]                                         ; $75f9: $34
	ld a, [hl]                                       ; $75fa: $7e
	ld d, l                                          ; $75fb: $55
	ld a, [hl-]                                      ; $75fc: $3a
	inc a                                            ; $75fd: $3c
	dec sp                                           ; $75fe: $3b

jr_08f_75ff:
	dec a                                            ; $75ff: $3d
	ld b, l                                          ; $7600: $45
	dec [hl]                                         ; $7601: $35
	rla                                              ; $7602: $17
	db $eb                                           ; $7603: $eb
	add e                                            ; $7604: $83
	ldh a, [$74]                                     ; $7605: $f0 $74
	ldh a, [$7a]                                     ; $7607: $f0 $7a
	ld b, d                                          ; $7609: $42
	ldh a, [$38]                                     ; $760a: $f0 $38
	ld d, e                                          ; $760c: $53
	inc de                                           ; $760d: $13
	db $eb                                           ; $760e: $eb
	adc [hl]                                         ; $760f: $8e
	and b                                            ; $7610: $a0
	ld l, [hl]                                       ; $7611: $6e
	dec sp                                           ; $7612: $3b
	ldh a, [$36]                                     ; $7613: $f0 $36
	inc [hl]                                         ; $7615: $34
	ld b, b                                          ; $7616: $40
	add hl, sp                                       ; $7617: $39
	ld c, d                                          ; $7618: $4a
	ld a, $66                                        ; $7619: $3e $66
	add hl, sp                                       ; $761b: $39
	dec [hl]                                         ; $761c: $35
	rla                                              ; $761d: $17
	db $ed                                           ; $761e: $ed
	ld a, b                                          ; $761f: $78
	ld a, [hl-]                                      ; $7620: $3a
	db $eb                                           ; $7621: $eb
	add e                                            ; $7622: $83
	ld b, d                                          ; $7623: $42
	ld d, e                                          ; $7624: $53
	inc de                                           ; $7625: $13
	jr c, jr_08f_7660                                ; $7626: $38 $38

	ld b, l                                          ; $7628: $45
	ld c, h                                          ; $7629: $4c
	and b                                            ; $762a: $a0
	ld a, [hl]                                       ; $762b: $7e
	ld d, l                                          ; $762c: $55
	ld a, [hl-]                                      ; $762d: $3a
	inc a                                            ; $762e: $3c
	dec sp                                           ; $762f: $3b
	dec a                                            ; $7630: $3d
	ld c, c                                          ; $7631: $49
	ld [hl], a                                       ; $7632: $77
	add hl, sp                                       ; $7633: $39
	inc de                                           ; $7634: $13
	ld a, [hl-]                                      ; $7635: $3a
	ld [hl], h                                       ; $7636: $74
	and b                                            ; $7637: $a0
	ld l, a                                          ; $7638: $6f
	ldh a, [rSTAT]                                   ; $7639: $f0 $41
	ld b, d                                          ; $763b: $42
	ldh a, [$e7]                                     ; $763c: $f0 $e7
	ldh a, [c]                                       ; $763e: $f2
	ld h, h                                          ; $763f: $64
	ld c, e                                          ; $7640: $4b
	xor h                                            ; $7641: $ac
	ld e, d                                          ; $7642: $5a
	ld d, h                                          ; $7643: $54
	inc a                                            ; $7644: $3c
	ld a, [hl-]                                      ; $7645: $3a
	ld c, b                                          ; $7646: $48
	and b                                            ; $7647: $a0
	cpl                                              ; $7648: $2f
	ld b, e                                          ; $7649: $43
	ldh a, [$08]                                     ; $764a: $f0 $08
	ld d, b                                          ; $764c: $50
	inc [hl]                                         ; $764d: $34
	db $eb                                           ; $764e: $eb
	ld a, [$ec13]                                    ; $764f: $fa $13 $ec
	xor $ec                                          ; $7652: $ee $ec
	xor $a0                                          ; $7654: $ee $a0
	cpl                                              ; $7656: $2f
	add sp, -$74                                     ; $7657: $e8 $8c
	and c                                            ; $7659: $a1
	ld c, a                                          ; $765a: $4f
	add hl, sp                                       ; $765b: $39
	inc [hl]                                         ; $765c: $34
	pop af                                           ; $765d: $f1
	ld d, d                                          ; $765e: $52
	db $ec                                           ; $765f: $ec

jr_08f_7660:
	cp c                                             ; $7660: $b9
	xor b                                            ; $7661: $a8
	ldh a, [c]                                       ; $7662: $f2
	ld a, d                                          ; $7663: $7a
	ld b, c                                          ; $7664: $41
	ld c, d                                          ; $7665: $4a
	ld c, a                                          ; $7666: $4f
	jr c, jr_08f_76a1                                ; $7667: $38 $38

	dec sp                                           ; $7669: $3b
	ccf                                              ; $766a: $3f
	ldh a, [$78]                                     ; $766b: $f0 $78
	ld e, e                                          ; $766d: $5b
	and b                                            ; $766e: $a0
	cpl                                              ; $766f: $2f
	add sp, $0e                                      ; $7670: $e8 $0e
	and c                                            ; $7672: $a1
	ld d, d                                          ; $7673: $52
	ld e, e                                          ; $7674: $5b
	ld e, c                                          ; $7675: $59
	dec sp                                           ; $7676: $3b
	xor b                                            ; $7677: $a8
	pop af                                           ; $7678: $f1
	ld d, d                                          ; $7679: $52
	db $ec                                           ; $767a: $ec
	cp c                                             ; $767b: $b9
	db $ec                                           ; $767c: $ec
	ret c                                            ; $767d: $d8

	and b                                            ; $767e: $a0
	cpl                                              ; $767f: $2f
	add sp, $0f                                      ; $7680: $e8 $0f
	and c                                            ; $7682: $a1
	ld b, b                                          ; $7683: $40
	add hl, sp                                       ; $7684: $39
	xor c                                            ; $7685: $a9
	db $ec                                           ; $7686: $ec
	cp c                                             ; $7687: $b9
	ld c, c                                          ; $7688: $49
	ld [hl], a                                       ; $7689: $77
	add hl, sp                                       ; $768a: $39
	ld e, l                                          ; $768b: $5d
	ld e, d                                          ; $768c: $5a
	ld a, [hl-]                                      ; $768d: $3a
	ld [hl], h                                       ; $768e: $74
	and b                                            ; $768f: $a0
	ld e, [hl]                                       ; $7690: $5e
	add l                                            ; $7691: $85
	ld e, c                                          ; $7692: $59
	dec sp                                           ; $7693: $3b
	xor b                                            ; $7694: $a8
	ld b, [hl]                                       ; $7695: $46
	ld b, c                                          ; $7696: $41
	ld a, [hl-]                                      ; $7697: $3a
	ld b, d                                          ; $7698: $42
	db $eb                                           ; $7699: $eb
	scf                                              ; $769a: $37
	xor b                                            ; $769b: $a8
	ld c, a                                          ; $769c: $4f
	dec sp                                           ; $769d: $3b
	ld c, c                                          ; $769e: $49
	db $ed                                           ; $769f: $ed
	ld a, e                                          ; $76a0: $7b

jr_08f_76a1:
	dec sp                                           ; $76a1: $3b
	ccf                                              ; $76a2: $3f
	ld b, c                                          ; $76a3: $41
	ld b, d                                          ; $76a4: $42
	inc de                                           ; $76a5: $13
	pop af                                           ; $76a6: $f1
	ld h, [hl]                                       ; $76a7: $66
	ld e, h                                          ; $76a8: $5c
	ld b, a                                          ; $76a9: $47
	call $eda0                                       ; $76aa: $cd $a0 $ed
	ld b, c                                          ; $76ad: $41
	xor b                                            ; $76ae: $a8
	ld c, a                                          ; $76af: $4f
	add hl, sp                                       ; $76b0: $39
	inc [hl]                                         ; $76b1: $34
	ld b, h                                          ; $76b2: $44
	ld e, b                                          ; $76b3: $58
	ld b, h                                          ; $76b4: $44
	ld e, b                                          ; $76b5: $58
	dec sp                                           ; $76b6: $3b
	ccf                                              ; $76b7: $3f
	ldh a, [$78]                                     ; $76b8: $f0 $78
	ld e, e                                          ; $76ba: $5b
	and b                                            ; $76bb: $a0
	ld c, a                                          ; $76bc: $4f
	dec sp                                           ; $76bd: $3b
	ld c, c                                          ; $76be: $49
	db $ed                                           ; $76bf: $ed
	ld a, e                                          ; $76c0: $7b
	dec sp                                           ; $76c1: $3b
	ccf                                              ; $76c2: $3f
	ld c, [hl]                                       ; $76c3: $4e
	inc de                                           ; $76c4: $13
	ldh a, [$99]                                     ; $76c5: $f0 $99
	sub b                                            ; $76c7: $90
	ld b, d                                          ; $76c8: $42
	ldh a, [$38]                                     ; $76c9: $f0 $38
	ld d, e                                          ; $76cb: $53
	jr c, @+$3a                                      ; $76cc: $38 $38

	ld a, [hl-]                                      ; $76ce: $3a
	and b                                            ; $76cf: $a0
	ld b, b                                          ; $76d0: $40
	ld b, c                                          ; $76d1: $41
	ld a, [hl-]                                      ; $76d2: $3a
	ld b, a                                          ; $76d3: $47
	db $ec                                           ; $76d4: $ec
	cp c                                             ; $76d5: $b9
	and c                                            ; $76d6: $a1
	ld b, b                                          ; $76d7: $40
	ld b, c                                          ; $76d8: $41
	ld a, [hl-]                                      ; $76d9: $3a
	ld b, a                                          ; $76da: $47
	inc [hl]                                         ; $76db: $34
	db $db                                           ; $76dc: $db
	ld a, [hl-]                                      ; $76dd: $3a
	jr c, jr_08f_7729                                ; $76de: $38 $49

	ld c, a                                          ; $76e0: $4f
	inc de                                           ; $76e1: $13
	ld [hl], a                                       ; $76e2: $77
	ld h, e                                          ; $76e3: $63
	ld a, [hl-]                                      ; $76e4: $3a
	jr c, @+$5f                                      ; $76e5: $38 $5d

	ld e, d                                          ; $76e7: $5a
	ld c, b                                          ; $76e8: $48
	and b                                            ; $76e9: $a0
	ld l, a                                          ; $76ea: $6f
	ld c, a                                          ; $76eb: $4f
	ld b, b                                          ; $76ec: $40
	ld b, c                                          ; $76ed: $41
	ld a, [hl-]                                      ; $76ee: $3a
	ld c, a                                          ; $76ef: $4f
	ld b, c                                          ; $76f0: $41
	inc a                                            ; $76f1: $3c
	ld a, [hl-]                                      ; $76f2: $3a
	ld [hl], h                                       ; $76f3: $74
	and b                                            ; $76f4: $a0
	ld e, h                                          ; $76f5: $5c
	ld d, [hl]                                       ; $76f6: $56
	ld e, c                                          ; $76f7: $59
	dec sp                                           ; $76f8: $3b
	and b                                            ; $76f9: $a0
	cpl                                              ; $76fa: $2f
	ld b, e                                          ; $76fb: $43
	ld h, h                                          ; $76fc: $64
	ld b, [hl]                                       ; $76fd: $46
	dec sp                                           ; $76fe: $3b
	xor b                                            ; $76ff: $a8
	ldh a, [rKEY1]                                   ; $7700: $f0 $4d
	inc [hl]                                         ; $7702: $34
	db $ec                                           ; $7703: $ec
	ld de, $3d3e                                     ; $7704: $11 $3e $3d
	ld [hl], h                                       ; $7707: $74
	and b                                            ; $7708: $a0
	ld e, h                                          ; $7709: $5c
	ld d, [hl]                                       ; $770a: $56
	ld e, c                                          ; $770b: $59
	dec sp                                           ; $770c: $3b
	xor b                                            ; $770d: $a8
	ld l, c                                          ; $770e: $69
	ld e, c                                          ; $770f: $59
	ldh a, [$60]                                     ; $7710: $f0 $60
	ldh a, [$27]                                     ; $7712: $f0 $27
	ldh a, [$57]                                     ; $7714: $f0 $57
	ldh a, [$ae]                                     ; $7716: $f0 $ae
	ldh a, [c]                                       ; $7718: $f2
	db $eb                                           ; $7719: $eb
	and b                                            ; $771a: $a0
	cpl                                              ; $771b: $2f
	ld b, e                                          ; $771c: $43
	add hl, sp                                       ; $771d: $39
	ld h, e                                          ; $771e: $63
	inc [hl]                                         ; $771f: $34
	ld d, c                                          ; $7720: $51
	ld [hl], b                                       ; $7721: $70
	jr c, @+$3c                                      ; $7722: $38 $3a

	ld d, h                                          ; $7724: $54
	ld d, a                                          ; $7725: $57
	ld d, [hl]                                       ; $7726: $56
	and b                                            ; $7727: $a0
	ld c, a                                          ; $7728: $4f

jr_08f_7729:
	add hl, sp                                       ; $7729: $39
	inc [hl]                                         ; $772a: $34
	db $ed                                           ; $772b: $ed
	ld h, b                                          ; $772c: $60
	and b                                            ; $772d: $a0
	cpl                                              ; $772e: $2f
	ld b, e                                          ; $772f: $43
	ld d, h                                          ; $7730: $54
	ld d, a                                          ; $7731: $57
	ld d, [hl]                                       ; $7732: $56
	inc [hl]                                         ; $7733: $34
	db $ec                                           ; $7734: $ec
	db $eb                                           ; $7735: $eb
	inc de                                           ; $7736: $13
	ld b, b                                          ; $7737: $40
	dec sp                                           ; $7738: $3b
	ld c, c                                          ; $7739: $49
	ld a, $3f                                        ; $773a: $3e $3f
	ld h, h                                          ; $773c: $64
	ld d, h                                          ; $773d: $54
	add hl, sp                                       ; $773e: $39
	and b                                            ; $773f: $a0
	ld a, [hl-]                                      ; $7740: $3a
	ld b, a                                          ; $7741: $47
	inc [hl]                                         ; $7742: $34
	xor $08                                          ; $7743: $ee $08
	ld c, d                                          ; $7745: $4a
	inc de                                           ; $7746: $13
	ld a, $50                                        ; $7747: $3e $50
	ld e, l                                          ; $7749: $5d
	ccf                                              ; $774a: $3f
	ld b, c                                          ; $774b: $41
	ld b, d                                          ; $774c: $42
	and c                                            ; $774d: $a1
	cpl                                              ; $774e: $2f
	ld b, e                                          ; $774f: $43
	ld l, e                                          ; $7750: $6b
	inc a                                            ; $7751: $3c
	xor h                                            ; $7752: $ac
	ld d, c                                          ; $7753: $51
	ld [hl], b                                       ; $7754: $70
	jr c, jr_08f_7791                                ; $7755: $38 $3a

	ld c, c                                          ; $7757: $49
	ld [hl], a                                       ; $7758: $77
	dec sp                                           ; $7759: $3b
	ccf                                              ; $775a: $3f
	ld c, b                                          ; $775b: $48
	and b                                            ; $775c: $a0
	ldh a, [$08]                                     ; $775d: $f0 $08
	ld d, b                                          ; $775f: $50
	inc [hl]                                         ; $7760: $34
	xor $06                                          ; $7761: $ee $06
	ld b, a                                          ; $7763: $47
	xor b                                            ; $7764: $a8
	ldh a, [$d9]                                     ; $7765: $f0 $d9
	dec sp                                           ; $7767: $3b
	ccf                                              ; $7768: $3f
	inc [hl]                                         ; $7769: $34
	ldh a, [$d9]                                     ; $776a: $f0 $d9
	dec sp                                           ; $776c: $3b
	ccf                                              ; $776d: $3f
	and b                                            ; $776e: $a0
	cpl                                              ; $776f: $2f
	ld b, e                                          ; $7770: $43
	ld c, e                                          ; $7771: $4b
	inc [hl]                                         ; $7772: $34
	xor $2d                                          ; $7773: $ee $2d
	and b                                            ; $7775: $a0
	ld d, h                                          ; $7776: $54
	ld b, d                                          ; $7777: $42
	ldh a, [rPCM34]                                  ; $7778: $f0 $77
	ldh a, [$ac]                                     ; $777a: $f0 $ac
	ld e, d                                          ; $777c: $5a
	add hl, sp                                       ; $777d: $39
	inc a                                            ; $777e: $3c
	ld a, [hl-]                                      ; $777f: $3a
	and c                                            ; $7780: $a1
	cpl                                              ; $7781: $2f
	ldh a, [$5f]                                     ; $7782: $f0 $5f
	pop af                                           ; $7784: $f1
	ld e, h                                          ; $7785: $5c
	db $ed                                           ; $7786: $ed
	ld a, e                                          ; $7787: $7b
	ld b, d                                          ; $7788: $42
	ldh a, [rPCM34]                                  ; $7789: $f0 $77
	ldh a, [$ac]                                     ; $778b: $f0 $ac
	ld b, h                                          ; $778d: $44
	ld c, h                                          ; $778e: $4c
	add hl, bc                                       ; $778f: $09
	ld l, [hl]                                       ; $7790: $6e

jr_08f_7791:
	dec sp                                           ; $7791: $3b
	ldh a, [$36]                                     ; $7792: $f0 $36
	inc [hl]                                         ; $7794: $34
	ldh a, [rTAC]                                    ; $7795: $f0 $07
	inc a                                            ; $7797: $3c
	ld c, [hl]                                       ; $7798: $4e
	xor c                                            ; $7799: $a9
	pop af                                           ; $779a: $f1
	ld d, d                                          ; $779b: $52
	ldh a, [$29]                                     ; $779c: $f0 $29
	ld a, $38                                        ; $779e: $3e $38
	and b                                            ; $77a0: $a0
	cpl                                              ; $77a1: $2f
	jp hl                                            ; $77a2: $e9


	dec sp                                           ; $77a3: $3b
	add hl, bc                                       ; $77a4: $09
	ld e, [hl]                                       ; $77a5: $5e
	add l                                            ; $77a6: $85
	ld e, c                                          ; $77a7: $59
	dec sp                                           ; $77a8: $3b
	xor c                                            ; $77a9: $a9
	ldh a, [$5f]                                     ; $77aa: $f0 $5f
	pop af                                           ; $77ac: $f1
	ld e, h                                          ; $77ad: $5c
	ld b, d                                          ; $77ae: $42
	ldh a, [rPCM34]                                  ; $77af: $f0 $77
	ldh a, [$ac]                                     ; $77b1: $f0 $ac
	ld a, [hl-]                                      ; $77b3: $3a
	ld b, d                                          ; $77b4: $42
	ld b, a                                          ; $77b5: $47
	ld c, b                                          ; $77b6: $48
	and b                                            ; $77b7: $a0
	cpl                                              ; $77b8: $2f
	jp hl                                            ; $77b9: $e9


	cp d                                             ; $77ba: $ba
	add hl, bc                                       ; $77bb: $09
	ld e, [hl]                                       ; $77bc: $5e
	xor c                                            ; $77bd: $a9
	ld b, b                                          ; $77be: $40
	ld c, l                                          ; $77bf: $4d
	ld b, h                                          ; $77c0: $44
	ld e, l                                          ; $77c1: $5d
	ld c, b                                          ; $77c2: $48
	and c                                            ; $77c3: $a1
	ld l, a                                          ; $77c4: $6f
	xor h                                            ; $77c5: $ac
	add hl, sp                                       ; $77c6: $39
	ld d, d                                          ; $77c7: $52
	ld d, l                                          ; $77c8: $55
	ldh a, [hDisp1_SCY]                                     ; $77c9: $f0 $90
	ldh a, [rSB]                                     ; $77cb: $f0 $01
	ld a, [hl-]                                      ; $77cd: $3a
	jr c, jr_08f_7811                                ; $77ce: $38 $41

	ld b, h                                          ; $77d0: $44
	and b                                            ; $77d1: $a0
	cpl                                              ; $77d2: $2f
	jp hl                                            ; $77d3: $e9


	ld e, d                                          ; $77d4: $5a
	add hl, bc                                       ; $77d5: $09
	db $ed                                           ; $77d6: $ed
	ld b, c                                          ; $77d7: $41
	xor c                                            ; $77d8: $a9
	ld e, e                                          ; $77d9: $5b
	ld d, [hl]                                       ; $77da: $56
	ld b, [hl]                                       ; $77db: $46
	inc [hl]                                         ; $77dc: $34
	db $ec                                           ; $77dd: $ec
	db $ed                                           ; $77de: $ed
	ld b, l                                          ; $77df: $45
	and b                                            ; $77e0: $a0
	cpl                                              ; $77e1: $2f
	db $eb                                           ; $77e2: $eb
	sub e                                            ; $77e3: $93
	xor h                                            ; $77e4: $ac
	add sp, -$6e                                     ; $77e5: $e8 $92
	xor b                                            ; $77e7: $a8
	db $eb                                           ; $77e8: $eb
	sub h                                            ; $77e9: $94
	ldh a, [hDisp1_SCY]                                     ; $77ea: $f0 $90
	ldh a, [rSB]                                     ; $77ec: $f0 $01
	ld a, [hl-]                                      ; $77ee: $3a
	jr c, jr_08f_7832                                ; $77ef: $38 $41

	ld b, h                                          ; $77f1: $44
	and e                                            ; $77f2: $a3
	cpl                                              ; $77f3: $2f
	halt                                             ; $77f4: $76
	ld c, a                                          ; $77f5: $4f
	ld a, [hl-]                                      ; $77f6: $3a
	ld b, c                                          ; $77f7: $41
	ld b, h                                          ; $77f8: $44
	ld c, b                                          ; $77f9: $48
	add hl, bc                                       ; $77fa: $09
	ld e, e                                          ; $77fb: $5b
	ld d, [hl]                                       ; $77fc: $56
	ld b, [hl]                                       ; $77fd: $46
	inc [hl]                                         ; $77fe: $34
	ld l, e                                          ; $77ff: $6b
	ld c, d                                          ; $7800: $4a
	inc de                                           ; $7801: $13
	db $ec                                           ; $7802: $ec
	db $fc                                           ; $7803: $fc
	ld b, a                                          ; $7804: $47
	ld a, b                                          ; $7805: $78
	dec a                                            ; $7806: $3d
	ld b, d                                          ; $7807: $42
	ld b, l                                          ; $7808: $45
	and b                                            ; $7809: $a0
	cpl                                              ; $780a: $2f
	pop af                                           ; $780b: $f1
	nop                                              ; $780c: $00
	ld e, [hl]                                       ; $780d: $5e
	ld d, b                                          ; $780e: $50
	ld c, l                                          ; $780f: $4d
	ld c, [hl]                                       ; $7810: $4e

jr_08f_7811:
	inc a                                            ; $7811: $3c
	ld a, [hl-]                                      ; $7812: $3a
	ld c, b                                          ; $7813: $48
	and c                                            ; $7814: $a1
	ld l, e                                          ; $7815: $6b
	ld b, h                                          ; $7816: $44
	inc [hl]                                         ; $7817: $34
	add hl, sp                                       ; $7818: $39
	ld d, d                                          ; $7819: $52
	ld d, l                                          ; $781a: $55
	ld a, [hl-]                                      ; $781b: $3a
	jr c, jr_08f_785f                                ; $781c: $38 $41

	ld b, h                                          ; $781e: $44
	and b                                            ; $781f: $a0
	ld b, b                                          ; $7820: $40
	ld c, l                                          ; $7821: $4d
	ld e, e                                          ; $7822: $5b
	ld d, [hl]                                       ; $7823: $56
	xor h                                            ; $7824: $ac
	ld [$4cd3], a                                    ; $7825: $ea $d3 $4c
	and b                                            ; $7828: $a0
	ld e, e                                          ; $7829: $5b
	ld d, [hl]                                       ; $782a: $56
	ld e, e                                          ; $782b: $5b
	ld d, [hl]                                       ; $782c: $56
	ld e, c                                          ; $782d: $59
	ld b, c                                          ; $782e: $41
	xor b                                            ; $782f: $a8
	ld e, d                                          ; $7830: $5a
	add hl, sp                                       ; $7831: $39

jr_08f_7832:
	ld d, h                                          ; $7832: $54
	ld b, d                                          ; $7833: $42
	ldh a, [rPCM34]                                  ; $7834: $f0 $77
	ldh a, [$ac]                                     ; $7836: $f0 $ac
	and c                                            ; $7838: $a1
	cpl                                              ; $7839: $2f
	ld b, e                                          ; $783a: $43
	db $eb                                           ; $783b: $eb
	ld a, [$f1ac]                                    ; $783c: $fa $ac $f1
	ld de, $65f0                                     ; $783f: $11 $f0 $65
	ld h, d                                          ; $7842: $62
	pop af                                           ; $7843: $f1
	cp h                                             ; $7844: $bc
	jr c, @+$3f                                      ; $7845: $38 $3d

	ld d, d                                          ; $7847: $52
	ld d, d                                          ; $7848: $52
	inc de                                           ; $7849: $13
	ldh a, [c]                                       ; $784a: $f2
	ld l, c                                          ; $784b: $69
	ccf                                              ; $784c: $3f
	ld c, [hl]                                       ; $784d: $4e
	ld b, l                                          ; $784e: $45
	and b                                            ; $784f: $a0
	cpl                                              ; $7850: $2f
	add sp, $5d                                      ; $7851: $e8 $5d
	add hl, bc                                       ; $7853: $09
	ld e, h                                          ; $7854: $5c
	ld d, [hl]                                       ; $7855: $56
	dec sp                                           ; $7856: $3b
	xor b                                            ; $7857: $a8
	ldh a, [rKEY1]                                   ; $7858: $f0 $4d
	inc [hl]                                         ; $785a: $34
	db $ec                                           ; $785b: $ec
	ld de, $3d3e                                     ; $785c: $11 $3e $3d

jr_08f_785f:
	ld [hl], h                                       ; $785f: $74
	xor b                                            ; $7860: $a8
	ld b, [hl]                                       ; $7861: $46
	dec sp                                           ; $7862: $3b
	inc [hl]                                         ; $7863: $34
	db $ec                                           ; $7864: $ec
	ld d, c                                          ; $7865: $51
	ld b, [hl]                                       ; $7866: $46
	ld d, a                                          ; $7867: $57
	ld d, e                                          ; $7868: $53
	ld c, c                                          ; $7869: $49
	add hl, sp                                       ; $786a: $39
	and b                                            ; $786b: $a0
	cpl                                              ; $786c: $2f
	add sp, $5e                                      ; $786d: $e8 $5e
	and d                                            ; $786f: $a2
	ld b, [hl]                                       ; $7870: $46
	dec sp                                           ; $7871: $3b
	scf                                              ; $7872: $37
	inc de                                           ; $7873: $13
	dec sp                                           ; $7874: $3b
	dec a                                            ; $7875: $3d
	ld d, l                                          ; $7876: $55
	inc [hl]                                         ; $7877: $34
	ld c, a                                          ; $7878: $4f
	add hl, sp                                       ; $7879: $39
	xor b                                            ; $787a: $a8
	add hl, sp                                       ; $787b: $39
	inc a                                            ; $787c: $3c
	add b                                            ; $787d: $80
	ld b, a                                          ; $787e: $47
	ldh a, [c]                                       ; $787f: $f2
	ld l, c                                          ; $7880: $69
	ld c, l                                          ; $7881: $4d
	ld l, [hl]                                       ; $7882: $6e
	ld a, $3a                                        ; $7883: $3e $3a
	jr c, @-$5e                                      ; $7885: $38 $a0

	cpl                                              ; $7887: $2f
	add sp, $13                                      ; $7888: $e8 $13
	add hl, bc                                       ; $788a: $09
	xor $10                                          ; $788b: $ee $10
	and b                                            ; $788d: $a0
	cpl                                              ; $788e: $2f
	ld [hl-], a                                      ; $788f: $32
	ld e, h                                          ; $7890: $5c
	dec sp                                           ; $7891: $3b
	ld c, c                                          ; $7892: $49
	pop af                                           ; $7893: $f1
	ld sp, $4f68                                     ; $7894: $31 $68 $4f
	xor h                                            ; $7897: $ac
	di                                               ; $7898: $f3
	ld sp, hl                                        ; $7899: $f9
	ldh a, [$c7]                                     ; $789a: $f0 $c7
	ld d, l                                          ; $789c: $55
	ld d, d                                          ; $789d: $52
	ld c, d                                          ; $789e: $4a
	ldh a, [c]                                       ; $789f: $f2
	rlca                                             ; $78a0: $07
	ld e, h                                          ; $78a1: $5c
	db $ec                                           ; $78a2: $ec
	add hl, de                                       ; $78a3: $19
	ld a, [hl-]                                      ; $78a4: $3a
	ld c, b                                          ; $78a5: $48
	inc sp                                           ; $78a6: $33
	add hl, bc                                       ; $78a7: $09
	ld d, c                                          ; $78a8: $51
	ld [hl], b                                       ; $78a9: $70
	jr c, jr_08f_78e0                                ; $78aa: $38 $34

	di                                               ; $78ac: $f3
	ld c, [hl]                                       ; $78ad: $4e
	ld l, [hl]                                       ; $78ae: $6e
	inc a                                            ; $78af: $3c
	ld c, h                                          ; $78b0: $4c
	add l                                            ; $78b1: $85
	and b                                            ; $78b2: $a0
	cpl                                              ; $78b3: $2f
	ld b, e                                          ; $78b4: $43
	or h                                             ; $78b5: $b4
	xor h                                            ; $78b6: $ac
	ld [$344f], a                                    ; $78b7: $ea $4f $34
	db $ec                                           ; $78ba: $ec
	inc c                                            ; $78bb: $0c
	and c                                            ; $78bc: $a1
	xor $1f                                          ; $78bd: $ee $1f
	xor b                                            ; $78bf: $a8
	cp d                                             ; $78c0: $ba
	and b                                            ; $78c1: $a0
	cpl                                              ; $78c2: $2f
	ld b, e                                          ; $78c3: $43
	xor $2d                                          ; $78c4: $ee $2d
	inc [hl]                                         ; $78c6: $34
	db $eb                                           ; $78c7: $eb
	ld a, [$1347]                                    ; $78c8: $fa $47 $13
	rst SubAFromDE                                          ; $78cb: $df
	ld b, l                                          ; $78cc: $45
	and b                                            ; $78cd: $a0
	add hl, sp                                       ; $78ce: $39
	ld c, l                                          ; $78cf: $4d
	ld a, $38                                        ; $78d0: $3e $38
	xor b                                            ; $78d2: $a8
	ld e, e                                          ; $78d3: $5b
	ld d, [hl]                                       ; $78d4: $56
	ld l, a                                          ; $78d5: $6f
	ld c, a                                          ; $78d6: $4f
	xor h                                            ; $78d7: $ac
	pop af                                           ; $78d8: $f1
	ret nc                                           ; $78d9: $d0

	ld e, c                                          ; $78da: $59
	pop af                                           ; $78db: $f1
	ret nc                                           ; $78dc: $d0

	ld e, c                                          ; $78dd: $59
	pop af                                           ; $78de: $f1
	inc b                                            ; $78df: $04

jr_08f_78e0:
	dec sp                                           ; $78e0: $3b
	ccf                                              ; $78e1: $3f
	rst SubAFromDE                                          ; $78e2: $df
	ld c, h                                          ; $78e3: $4c
	and b                                            ; $78e4: $a0
	cpl                                              ; $78e5: $2f
	ld b, e                                          ; $78e6: $43
	or h                                             ; $78e7: $b4
	xor h                                            ; $78e8: $ac
	ldh a, [c]                                       ; $78e9: $f2
	inc [hl]                                         ; $78ea: $34
	ldh a, [c]                                       ; $78eb: $f2
	ld h, d                                          ; $78ec: $62
	ldh a, [rSB]                                     ; $78ed: $f0 $01
	ld c, d                                          ; $78ef: $4a
	ld c, a                                          ; $78f0: $4f
	db $ec                                           ; $78f1: $ec
	inc c                                            ; $78f2: $0c
	and c                                            ; $78f3: $a1
	pop de                                           ; $78f4: $d1
	jr c, jr_08f_792f                                ; $78f5: $38 $38

	ldh a, [$2c]                                     ; $78f7: $f0 $2c
	ld d, e                                          ; $78f9: $53
	xor h                                            ; $78fa: $ac
	pop af                                           ; $78fb: $f1
	inc b                                            ; $78fc: $04
	ld c, l                                          ; $78fd: $4d
	ld a, [hl-]                                      ; $78fe: $3a
	jr c, jr_08f_7942                                ; $78ff: $38 $41

	ld b, h                                          ; $7901: $44
	ld b, l                                          ; $7902: $45
	ld c, h                                          ; $7903: $4c
	and b                                            ; $7904: $a0
	cpl                                              ; $7905: $2f
	ld b, e                                          ; $7906: $43
	pop af                                           ; $7907: $f1
	inc b                                            ; $7908: $04
	ld c, l                                          ; $7909: $4d
	dec a                                            ; $790a: $3d
	ld d, b                                          ; $790b: $50
	xor h                                            ; $790c: $ac
	db $eb                                           ; $790d: $eb
	ld a, [$df47]                                    ; $790e: $fa $47 $df
	ld b, l                                          ; $7911: $45
	and b                                            ; $7912: $a0
	cpl                                              ; $7913: $2f
	ld b, e                                          ; $7914: $43
	xor $2d                                          ; $7915: $ee $2d
	inc [hl]                                         ; $7917: $34
	db $eb                                           ; $7918: $eb
	ld a, [$46a0]                                    ; $7919: $fa $a0 $46
	ld d, a                                          ; $791c: $57
	ld d, e                                          ; $791d: $53
	ld c, c                                          ; $791e: $49
	add hl, sp                                       ; $791f: $39
	xor b                                            ; $7920: $a8
	ld l, a                                          ; $7921: $6f
	ld c, a                                          ; $7922: $4f
	ld l, e                                          ; $7923: $6b
	inc a                                            ; $7924: $3c
	ld l, [hl]                                       ; $7925: $6e
	ld e, a                                          ; $7926: $5f
	add hl, sp                                       ; $7927: $39
	inc a                                            ; $7928: $3c
	ld a, [hl-]                                      ; $7929: $3a
	and b                                            ; $792a: $a0
	cpl                                              ; $792b: $2f
	ld b, e                                          ; $792c: $43
	ld [hl], b                                       ; $792d: $70
	ld [hl], c                                       ; $792e: $71

jr_08f_792f:
	ld b, c                                          ; $792f: $41
	ld c, b                                          ; $7930: $48
	inc [hl]                                         ; $7931: $34
	db $eb                                           ; $7932: $eb
	ld a, [$6ba8]                                    ; $7933: $fa $a8 $6b
	ld c, a                                          ; $7936: $4f
	pop af                                           ; $7937: $f1
	inc b                                            ; $7938: $04
	ld c, l                                          ; $7939: $4d
	ld a, [hl-]                                      ; $793a: $3a
	inc a                                            ; $793b: $3c
	dec sp                                           ; $793c: $3b
	dec a                                            ; $793d: $3d
	ld b, l                                          ; $793e: $45
	and b                                            ; $793f: $a0
	ldh a, [$3d]                                     ; $7940: $f0 $3d

jr_08f_7942:
	ldh a, [rAUD3ENA]                                ; $7942: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $7944: $f0 $1a
	xor h                                            ; $7946: $ac
	pop af                                           ; $7947: $f1
	inc b                                            ; $7948: $04
	ld c, l                                          ; $7949: $4d
	ld b, b                                          ; $794a: $40
	add hl, sp                                       ; $794b: $39
	ld c, d                                          ; $794c: $4a
	pop af                                           ; $794d: $f1
	inc b                                            ; $794e: $04
	ld c, l                                          ; $794f: $4d
	ld a, [hl-]                                      ; $7950: $3a
	jr c, jr_08f_7994                                ; $7951: $38 $41

	ld b, h                                          ; $7953: $44
	ld b, l                                          ; $7954: $45
	ld c, h                                          ; $7955: $4c
	add l                                            ; $7956: $85
	and b                                            ; $7957: $a0
	cpl                                              ; $7958: $2f
	ld b, e                                          ; $7959: $43
	ld l, d                                          ; $795a: $6a
	ldh a, [rAUD1HIGH]                               ; $795b: $f0 $14
	ld c, e                                          ; $795d: $4b
	xor h                                            ; $795e: $ac
	jp hl                                            ; $795f: $e9


	dec [hl]                                         ; $7960: $35
	xor b                                            ; $7961: $a8
	ld [$a038], a                                    ; $7962: $ea $38 $a0
	xor $1f                                          ; $7965: $ee $1f
	xor b                                            ; $7967: $a8
	ld h, a                                          ; $7968: $67
	ld d, h                                          ; $7969: $54
	ld h, a                                          ; $796a: $67
	ld d, h                                          ; $796b: $54
	and b                                            ; $796c: $a0
	db $ec                                           ; $796d: $ec
	ld e, e                                          ; $796e: $5b
	ld b, h                                          ; $796f: $44
	dec sp                                           ; $7970: $3b
	dec a                                            ; $7971: $3d
	ld c, h                                          ; $7972: $4c
	and b                                            ; $7973: $a0
	cpl                                              ; $7974: $2f
	add sp, $2e                                      ; $7975: $e8 $2e
	add hl, bc                                       ; $7977: $09
	ld b, [hl]                                       ; $7978: $46
	dec sp                                           ; $7979: $3b
	inc [hl]                                         ; $797a: $34
	ld l, a                                          ; $797b: $6f
	ld c, a                                          ; $797c: $4f
	ldh a, [$2d]                                     ; $797d: $f0 $2d
	dec sp                                           ; $797f: $3b
	ccf                                              ; $7980: $3f
	ld c, [hl]                                       ; $7981: $4e
	xor b                                            ; $7982: $a8
	pop af                                           ; $7983: $f1
	add h                                            ; $7984: $84
	ld e, b                                          ; $7985: $58
	ld b, c                                          ; $7986: $41
	dec sp                                           ; $7987: $3b
	ccf                                              ; $7988: $3f
	add d                                            ; $7989: $82
	add hl, sp                                       ; $798a: $39
	add h                                            ; $798b: $84
	ld b, a                                          ; $798c: $47
	xor h                                            ; $798d: $ac
	ldh a, [$0c]                                     ; $798e: $f0 $0c
	db $ec                                           ; $7990: $ec
	ld l, $a0                                        ; $7991: $2e $a0
	cpl                                              ; $7993: $2f

jr_08f_7994:
	add sp, -$25                                     ; $7994: $e8 $db
	add hl, bc                                       ; $7996: $09
	ld e, [hl]                                       ; $7997: $5e
	add l                                            ; $7998: $85
	ld e, c                                          ; $7999: $59
	dec sp                                           ; $799a: $3b
	xor b                                            ; $799b: $a8
	db $ec                                           ; $799c: $ec
	xor $42                                          ; $799d: $ee $42
	ldh a, [$38]                                     ; $799f: $f0 $38
	ld d, e                                          ; $79a1: $53
	jr c, jr_08f_79dc                                ; $79a2: $38 $38

	ld b, l                                          ; $79a4: $45
	and b                                            ; $79a5: $a0
	cpl                                              ; $79a6: $2f
	jp hl                                            ; $79a7: $e9


	or a                                             ; $79a8: $b7
	add hl, bc                                       ; $79a9: $09
	ld l, [hl]                                       ; $79aa: $6e
	dec sp                                           ; $79ab: $3b
	ldh a, [$36]                                     ; $79ac: $f0 $36
	inc [hl]                                         ; $79ae: $34
	ld b, b                                          ; $79af: $40
	add hl, sp                                       ; $79b0: $39
	ld [hl], a                                       ; $79b1: $77
	add hl, sp                                       ; $79b2: $39
	ld b, l                                          ; $79b3: $45
	ld c, h                                          ; $79b4: $4c
	and b                                            ; $79b5: $a0
	ld b, b                                          ; $79b6: $40
	ld c, l                                          ; $79b7: $4d
	ld e, e                                          ; $79b8: $5b
	ld d, [hl]                                       ; $79b9: $56
	xor h                                            ; $79ba: $ac
	db $eb                                           ; $79bb: $eb
	ld d, d                                          ; $79bc: $52
	ld b, l                                          ; $79bd: $45
	and b                                            ; $79be: $a0
	cpl                                              ; $79bf: $2f
	ld b, e                                          ; $79c0: $43
	ld b, b                                          ; $79c1: $40
	add hl, sp                                       ; $79c2: $39
	ld b, h                                          ; $79c3: $44
	ld c, h                                          ; $79c4: $4c
	xor b                                            ; $79c5: $a8
	sub [hl]                                         ; $79c6: $96
	ld e, a                                          ; $79c7: $5f
	add hl, sp                                       ; $79c8: $39
	and b                                            ; $79c9: $a0
	ld l, a                                          ; $79ca: $6f
	xor h                                            ; $79cb: $ac
	add hl, sp                                       ; $79cc: $39
	ld d, d                                          ; $79cd: $52
	ld d, l                                          ; $79ce: $55
	pop af                                           ; $79cf: $f1
	ld e, e                                          ; $79d0: $5b
	ld c, l                                          ; $79d1: $4d
	ld a, [hl-]                                      ; $79d2: $3a
	jr c, jr_08f_7a16                                ; $79d3: $38 $41

	ld b, h                                          ; $79d5: $44
	and b                                            ; $79d6: $a0
	db $ed                                           ; $79d7: $ed
	ld b, c                                          ; $79d8: $41
	xor c                                            ; $79d9: $a9
	ld e, e                                          ; $79da: $5b
	ld d, [hl]                                       ; $79db: $56

jr_08f_79dc:
	inc [hl]                                         ; $79dc: $34
	ldh a, [$0a]                                     ; $79dd: $f0 $0a
	ld d, l                                          ; $79df: $55
	db $ec                                           ; $79e0: $ec
	db $ed                                           ; $79e1: $ed
	ld b, l                                          ; $79e2: $45
	and b                                            ; $79e3: $a0
	cpl                                              ; $79e4: $2f
	xor $06                                          ; $79e5: $ee $06
	ld b, a                                          ; $79e7: $47
	xor $19                                          ; $79e8: $ee $19
	ld a, $45                                        ; $79ea: $3e $45
	add hl, sp                                       ; $79ec: $39
	ld b, l                                          ; $79ed: $45
	add hl, bc                                       ; $79ee: $09
	ld l, e                                          ; $79ef: $6b
	ld b, h                                          ; $79f0: $44
	inc [hl]                                         ; $79f1: $34
	jp nc, $3913                                     ; $79f2: $d2 $13 $39

	ld d, d                                          ; $79f5: $52
	ld d, l                                          ; $79f6: $55
	ld a, [hl-]                                      ; $79f7: $3a
	jr c, jr_08f_7a3b                                ; $79f8: $38 $41

	ld b, h                                          ; $79fa: $44
	ld c, b                                          ; $79fb: $48
	and b                                            ; $79fc: $a0
	cpl                                              ; $79fd: $2f
	ldh a, [c]                                       ; $79fe: $f2
	ld d, e                                          ; $79ff: $53
	ld b, d                                          ; $7a00: $42
	ldh a, [$3e]                                     ; $7a01: $f0 $3e
	ld a, [hl-]                                      ; $7a03: $3a
	ld b, c                                          ; $7a04: $41
	ccf                                              ; $7a05: $3f
	inc [hl]                                         ; $7a06: $34
	sbc h                                            ; $7a07: $9c
	ld c, [hl]                                       ; $7a08: $4e
	jr c, jr_08f_7a50                                ; $7a09: $38 $45

	ld c, h                                          ; $7a0b: $4c
	add hl, bc                                       ; $7a0c: $09
	xor $1f                                          ; $7a0d: $ee $1f
	inc [hl]                                         ; $7a0f: $34
	ld b, b                                          ; $7a10: $40
	add hl, sp                                       ; $7a11: $39
	ld [hl], a                                       ; $7a12: $77
	add hl, sp                                       ; $7a13: $39
	and b                                            ; $7a14: $a0
	db $eb                                           ; $7a15: $eb

jr_08f_7a16:
	sub l                                            ; $7a16: $95
	ld e, h                                          ; $7a17: $5c
	ccf                                              ; $7a18: $3f
	ld c, [hl]                                       ; $7a19: $4e
	ld b, l                                          ; $7a1a: $45
	and b                                            ; $7a1b: $a0
	cpl                                              ; $7a1c: $2f
	pop af                                           ; $7a1d: $f1
	ld [hl], $41                                     ; $7a1e: $36 $41
	ld b, h                                          ; $7a20: $44
	ld d, b                                          ; $7a21: $50
	add a                                            ; $7a22: $87
	ldh a, [$5d]                                     ; $7a23: $f0 $5d
	ld b, h                                          ; $7a25: $44
	ld c, h                                          ; $7a26: $4c
	add hl, bc                                       ; $7a27: $09
	db $ec                                           ; $7a28: $ec
	rst AddAOntoHL                                          ; $7a29: $ef
	ld l, h                                          ; $7a2a: $6c
	dec a                                            ; $7a2b: $3d
	jr c, jr_08f_7a68                                ; $7a2c: $38 $3a

	ld b, d                                          ; $7a2e: $42
	ld c, e                                          ; $7a2f: $4b
	inc de                                           ; $7a30: $13
	db $ed                                           ; $7a31: $ed
	cp e                                             ; $7a32: $bb
	inc a                                            ; $7a33: $3c
	ld d, b                                          ; $7a34: $50
	inc [hl]                                         ; $7a35: $34
	ldh a, [rP1]                                     ; $7a36: $f0 $00
	ld h, l                                          ; $7a38: $65
	sub e                                            ; $7a39: $93
	ld b, d                                          ; $7a3a: $42

jr_08f_7a3b:
	ldh a, [$f0]                                     ; $7a3b: $f0 $f0
	ld b, a                                          ; $7a3d: $47
	sub h                                            ; $7a3e: $94
	ccf                                              ; $7a3f: $3f
	ld c, [hl]                                       ; $7a40: $4e
	ld c, h                                          ; $7a41: $4c
	and b                                            ; $7a42: $a0
	cpl                                              ; $7a43: $2f
	add a                                            ; $7a44: $87
	ldh a, [$5b]                                     ; $7a45: $f0 $5b
	ldh a, [$5e]                                     ; $7a47: $f0 $5e
	ld b, h                                          ; $7a49: $44
	ld b, l                                          ; $7a4a: $45
	dec [hl]                                         ; $7a4b: $35
	pop af                                           ; $7a4c: $f1
	ld e, e                                          ; $7a4d: $5b

jr_08f_7a4e:
	ld e, a                                          ; $7a4e: $5f
	add hl, sp                                       ; $7a4f: $39

jr_08f_7a50:
	add hl, bc                                       ; $7a50: $09
	pop af                                           ; $7a51: $f1
	ld a, [de]                                       ; $7a52: $1a
	pop af                                           ; $7a53: $f1
	inc c                                            ; $7a54: $0c
	ld a, l                                          ; $7a55: $7d
	pop af                                           ; $7a56: $f1
	db $e3                                           ; $7a57: $e3
	ld b, l                                          ; $7a58: $45
	xor b                                            ; $7a59: $a8
	db $ec                                           ; $7a5a: $ec
	rst AddAOntoHL                                          ; $7a5b: $ef
	ld l, h                                          ; $7a5c: $6c
	dec a                                            ; $7a5d: $3d
	jr c, jr_08f_7aa7                                ; $7a5e: $38 $47

	inc de                                           ; $7a60: $13
	ld a, [hl-]                                      ; $7a61: $3a
	ld d, a                                          ; $7a62: $57
	dec a                                            ; $7a63: $3d
	ld d, l                                          ; $7a64: $55
	ld a, [hl-]                                      ; $7a65: $3a
	jr c, jr_08f_7aa4                                ; $7a66: $38 $3c

jr_08f_7a68:
	ld d, b                                          ; $7a68: $50
	ld c, h                                          ; $7a69: $4c
	and b                                            ; $7a6a: $a0
	cpl                                              ; $7a6b: $2f
	adc b                                            ; $7a6c: $88
	sub c                                            ; $7a6d: $91
	ld b, h                                          ; $7a6e: $44
	dec [hl]                                         ; $7a6f: $35
	db $eb                                           ; $7a70: $eb
	ld e, c                                          ; $7a71: $59
	inc a                                            ; $7a72: $3c
	add hl, bc                                       ; $7a73: $09

jr_08f_7a74:
	ldh a, [rP1]                                     ; $7a74: $f0 $00
	ld h, l                                          ; $7a76: $65
	sub e                                            ; $7a77: $93
	ld b, d                                          ; $7a78: $42
	ldh a, [$f0]                                     ; $7a79: $f0 $f0
	ld d, e                                          ; $7a7b: $53
	db $ed                                           ; $7a7c: $ed
	ld [hl], d                                       ; $7a7d: $72
	and b                                            ; $7a7e: $a0
	cpl                                              ; $7a7f: $2f
	ld b, e                                          ; $7a80: $43
	db $eb                                           ; $7a81: $eb
	sub l                                            ; $7a82: $95
	xor h                                            ; $7a83: $ac
	sbc l                                            ; $7a84: $9d
	ld a, $66                                        ; $7a85: $3e $66
	sbc l                                            ; $7a87: $9d
	ld a, $66                                        ; $7a88: $3e $66
	ld b, h                                          ; $7a8a: $44
	ld c, h                                          ; $7a8b: $4c
	xor b                                            ; $7a8c: $a8
	db $eb                                           ; $7a8d: $eb
	ld a, [$7f34]                                    ; $7a8e: $fa $34 $7f
	ld h, d                                          ; $7a91: $62
	ldh a, [$9a]                                     ; $7a92: $f0 $9a
	ld e, l                                          ; $7a94: $5d
	ld c, b                                          ; $7a95: $48
	and b                                            ; $7a96: $a0
	ld e, h                                          ; $7a97: $5c
	ld d, [hl]                                       ; $7a98: $56
	dec sp                                           ; $7a99: $3b
	and b                                            ; $7a9a: $a0
	cpl                                              ; $7a9b: $2f
	ld b, e                                          ; $7a9c: $43
	ld b, [hl]                                       ; $7a9d: $46
	dec sp                                           ; $7a9e: $3b
	inc [hl]                                         ; $7a9f: $34
	add d                                            ; $7aa0: $82
	dec sp                                           ; $7aa1: $3b
	dec a                                            ; $7aa2: $3d
	ld b, b                                          ; $7aa3: $40

jr_08f_7aa4:
	ld a, e                                          ; $7aa4: $7b
	inc a                                            ; $7aa5: $3c
	ld d, b                                          ; $7aa6: $50

jr_08f_7aa7:
	and b                                            ; $7aa7: $a0
	add b                                            ; $7aa8: $80
	ld [hl], c                                       ; $7aa9: $71
	dec a                                            ; $7aaa: $3d
	ld e, c                                          ; $7aab: $59
	jr c, jr_08f_7a4e                                ; $7aac: $38 $a0

	cpl                                              ; $7aae: $2f
	ld b, e                                          ; $7aaf: $43
	ldh a, [$08]                                     ; $7ab0: $f0 $08
	ld d, b                                          ; $7ab2: $50
	xor h                                            ; $7ab3: $ac
	ldh a, [c]                                       ; $7ab4: $f2
	rlca                                             ; $7ab5: $07
	ld e, h                                          ; $7ab6: $5c
	ldh a, [$3e]                                     ; $7ab7: $f0 $3e
	ld d, e                                          ; $7ab9: $53
	dec sp                                           ; $7aba: $3b
	ccf                                              ; $7abb: $3f
	and b                                            ; $7abc: $a0
	ld b, [hl]                                       ; $7abd: $46
	ld d, a                                          ; $7abe: $57
	ld d, e                                          ; $7abf: $53
	ld c, c                                          ; $7ac0: $49
	add hl, sp                                       ; $7ac1: $39
	and b                                            ; $7ac2: $a0
	ldh a, [$d8]                                     ; $7ac3: $f0 $d8
	dec sp                                           ; $7ac5: $3b
	ld e, d                                          ; $7ac6: $5a
	ldh a, [c]                                       ; $7ac7: $f2
	ld a, l                                          ; $7ac8: $7d
	ld e, c                                          ; $7ac9: $59
	jr c, jr_08f_7a74                                ; $7aca: $38 $a8

	ld c, a                                          ; $7acc: $4f
	add hl, sp                                       ; $7acd: $39
	inc [hl]                                         ; $7ace: $34
	db $ed                                           ; $7acf: $ed
	dec l                                            ; $7ad0: $2d
	ld d, d                                          ; $7ad1: $52
	ld c, d                                          ; $7ad2: $4a
	inc de                                           ; $7ad3: $13
	sbc l                                            ; $7ad4: $9d
	ld a, $66                                        ; $7ad5: $3e $66
	sbc l                                            ; $7ad7: $9d
	ld a, $66                                        ; $7ad8: $3e $66
	and b                                            ; $7ada: $a0
	cpl                                              ; $7adb: $2f
	ld b, e                                          ; $7adc: $43
	ld e, [hl]                                       ; $7add: $5e
	dec sp                                           ; $7ade: $3b
	xor c                                            ; $7adf: $a9
	db $ed                                           ; $7ae0: $ed
	dec l                                            ; $7ae1: $2d
	ld c, b                                          ; $7ae2: $48
	and c                                            ; $7ae3: $a1
	db $eb                                           ; $7ae4: $eb
	scf                                              ; $7ae5: $37
	xor b                                            ; $7ae6: $a8
	ld d, h                                          ; $7ae7: $54
	ld c, l                                          ; $7ae8: $4d
	ld e, e                                          ; $7ae9: $5b
	ld d, [hl]                                       ; $7aea: $56
	inc [hl]                                         ; $7aeb: $34
	di                                               ; $7aec: $f3
	cp h                                             ; $7aed: $bc
	ld d, l                                          ; $7aee: $55
	ld d, d                                          ; $7aef: $52
	ld c, d                                          ; $7af0: $4a
	inc de                                           ; $7af1: $13
	ld e, d                                          ; $7af2: $5a
	ld d, h                                          ; $7af3: $54
	ld b, a                                          ; $7af4: $47
	ld c, a                                          ; $7af5: $4f
	ld h, a                                          ; $7af6: $67
	ld e, l                                          ; $7af7: $5d
	ld a, [hl-]                                      ; $7af8: $3a
	jr c, jr_08f_7b40                                ; $7af9: $38 $45

	and b                                            ; $7afb: $a0
	cpl                                              ; $7afc: $2f
	ld b, e                                          ; $7afd: $43
	ld d, h                                          ; $7afe: $54
	ld b, d                                          ; $7aff: $42
	add e                                            ; $7b00: $83
	ldh a, [$c2]                                     ; $7b01: $f0 $c2
	ld e, c                                          ; $7b03: $59
	ld l, c                                          ; $7b04: $69
	ldh a, [$30]                                     ; $7b05: $f0 $30
	ld b, a                                          ; $7b07: $47
	ld c, e                                          ; $7b08: $4b
	inc de                                           ; $7b09: $13
	di                                               ; $7b0a: $f3
	cp h                                             ; $7b0b: $bc
	ld hl, sp-$25                                    ; $7b0c: $f8 $db
	pop af                                           ; $7b0e: $f1
	ld l, b                                          ; $7b0f: $68
	ld d, e                                          ; $7b10: $53
	ld b, [hl]                                       ; $7b11: $46
	ld c, [hl]                                       ; $7b12: $4e
	ld b, l                                          ; $7b13: $45
	and b                                            ; $7b14: $a0
	db $ed                                           ; $7b15: $ed
	ld b, c                                          ; $7b16: $41
	xor c                                            ; $7b17: $a9
	ld e, e                                          ; $7b18: $5b
	ld d, [hl]                                       ; $7b19: $56
	ld b, [hl]                                       ; $7b1a: $46
	inc [hl]                                         ; $7b1b: $34
	db $eb                                           ; $7b1c: $eb
	adc c                                            ; $7b1d: $89
	inc de                                           ; $7b1e: $13
	ld h, a                                          ; $7b1f: $67
	dec sp                                           ; $7b20: $3b
	ccf                                              ; $7b21: $3f
	ld d, l                                          ; $7b22: $55
	ld b, c                                          ; $7b23: $41
	ld c, h                                          ; $7b24: $4c
	and b                                            ; $7b25: $a0
	cpl                                              ; $7b26: $2f
	ld b, e                                          ; $7b27: $43
	ld b, [hl]                                       ; $7b28: $46
	dec sp                                           ; $7b29: $3b
	inc [hl]                                         ; $7b2a: $34
	db $eb                                           ; $7b2b: $eb
	ld a, [$4ba8]                                    ; $7b2c: $fa $a8 $4b

jr_08f_7b2f:
	inc [hl]                                         ; $7b2f: $34
	pop af                                           ; $7b30: $f1
	jr jr_08f_7b6b                                   ; $7b31: $18 $38

	ld c, b                                          ; $7b33: $48
	and b                                            ; $7b34: $a0
	ld b, b                                          ; $7b35: $40
	ld c, l                                          ; $7b36: $4d
	ld e, e                                          ; $7b37: $5b
	ld d, [hl]                                       ; $7b38: $56
	xor h                                            ; $7b39: $ac
	pop af                                           ; $7b3a: $f1
	jr jr_08f_7b2f                                   ; $7b3b: $18 $f2

	sub c                                            ; $7b3d: $91
	ld c, d                                          ; $7b3e: $4a

jr_08f_7b3f:
	pop af                                           ; $7b3f: $f1

jr_08f_7b40:
	ld e, e                                          ; $7b40: $5b
	ld e, a                                          ; $7b41: $5f
	add hl, sp                                       ; $7b42: $39
	ld b, l                                          ; $7b43: $45
	and b                                            ; $7b44: $a0
	ld c, h                                          ; $7b45: $4c
	add l                                            ; $7b46: $85
	inc [hl]                                         ; $7b47: $34
	ld e, d                                          ; $7b48: $5a
	ld b, d                                          ; $7b49: $42
	sbc l                                            ; $7b4a: $9d
	ld d, b                                          ; $7b4b: $50
	jr c, jr_08f_7b3f                                ; $7b4c: $38 $f1

	ld e, e                                          ; $7b4e: $5b
	ld c, l                                          ; $7b4f: $4d
	ld c, [hl]                                       ; $7b50: $4e
	and c                                            ; $7b51: $a1
	cpl                                              ; $7b52: $2f
	add sp, $64                                      ; $7b53: $e8 $64
	add hl, bc                                       ; $7b55: $09
	db $ec                                           ; $7b56: $ec
	rla                                              ; $7b57: $17
	xor b                                            ; $7b58: $a8
	ld e, e                                          ; $7b59: $5b
	ld d, [hl]                                       ; $7b5a: $56
	ld b, [hl]                                       ; $7b5b: $46
	ld e, b                                          ; $7b5c: $58
	inc [hl]                                         ; $7b5d: $34
	db $ec                                           ; $7b5e: $ec
	db $ed                                           ; $7b5f: $ed
	ld b, l                                          ; $7b60: $45
	and b                                            ; $7b61: $a0
	cpl                                              ; $7b62: $2f
	db $eb                                           ; $7b63: $eb
	sub e                                            ; $7b64: $93
	xor h                                            ; $7b65: $ac
	add sp, -$6e                                     ; $7b66: $e8 $92
	xor b                                            ; $7b68: $a8
	db $eb                                           ; $7b69: $eb
	sub h                                            ; $7b6a: $94

jr_08f_7b6b:
	pop af                                           ; $7b6b: $f1
	ld e, e                                          ; $7b6c: $5b
	ld c, l                                          ; $7b6d: $4d
	ld a, [hl-]                                      ; $7b6e: $3a
	jr c, jr_08f_7bb2                                ; $7b6f: $38 $41

	ld b, h                                          ; $7b71: $44
	and e                                            ; $7b72: $a3
	cpl                                              ; $7b73: $2f
	pop af                                           ; $7b74: $f1
	daa                                              ; $7b75: $27
	ldh a, [rP1]                                     ; $7b76: $f0 $00
	ld a, [hl-]                                      ; $7b78: $3a
	ld d, b                                          ; $7b79: $50
	ldh a, [$67]                                     ; $7b7a: $f0 $67
	ldh a, [$9f]                                     ; $7b7c: $f0 $9f
	ld b, [hl]                                       ; $7b7e: $46
	ld c, [hl]                                       ; $7b7f: $4e
	ld b, c                                          ; $7b80: $41
	ld b, h                                          ; $7b81: $44
	ld e, l                                          ; $7b82: $5d
	ld e, d                                          ; $7b83: $5a
	ld a, [hl-]                                      ; $7b84: $3a
	add hl, bc                                       ; $7b85: $09
	ld a, [hl-]                                      ; $7b86: $3a
	ld b, c                                          ; $7b87: $41
	ld b, h                                          ; $7b88: $44
	xor b                                            ; $7b89: $a8
	ldh a, [$3e]                                     ; $7b8a: $f0 $3e
	ldh a, [$0b]                                     ; $7b8c: $f0 $0b
	ld b, h                                          ; $7b8e: $44
	ld c, c                                          ; $7b8f: $49
	ld [hl], a                                       ; $7b90: $77
	dec sp                                           ; $7b91: $3b
	dec a                                            ; $7b92: $3d
	ld b, d                                          ; $7b93: $42
	ld b, a                                          ; $7b94: $47
	ld c, b                                          ; $7b95: $48
	and b                                            ; $7b96: $a0
	cpl                                              ; $7b97: $2f
	ld c, c                                          ; $7b98: $49
	ld d, a                                          ; $7b99: $57
	ld b, [hl]                                       ; $7b9a: $46
	ld e, [hl]                                       ; $7b9b: $5e
	sbc h                                            ; $7b9c: $9c
	pop af                                           ; $7b9d: $f1
	ld e, e                                          ; $7b9e: $5b
	ld c, l                                          ; $7b9f: $4d
	ld c, [hl]                                       ; $7ba0: $4e
	ld b, l                                          ; $7ba1: $45
	add hl, bc                                       ; $7ba2: $09
	ld b, h                                          ; $7ba3: $44
	dec sp                                           ; $7ba4: $3b
	dec a                                            ; $7ba5: $3d
	ld d, b                                          ; $7ba6: $50
	xor h                                            ; $7ba7: $ac
	xor $06                                          ; $7ba8: $ee $06
	ld b, a                                          ; $7baa: $47
	xor $19                                          ; $7bab: $ee $19
	db $ec                                           ; $7bad: $ec
	inc c                                            ; $7bae: $0c
	and c                                            ; $7baf: $a1
	db $eb                                           ; $7bb0: $eb
	add [hl]                                         ; $7bb1: $86

jr_08f_7bb2:
	xor b                                            ; $7bb2: $a8
	ld d, h                                          ; $7bb3: $54
	ld b, d                                          ; $7bb4: $42
	ld [$5ae2], a                                    ; $7bb5: $ea $e2 $5a
	add hl, sp                                       ; $7bb8: $39
	and c                                            ; $7bb9: $a1
	cpl                                              ; $7bba: $2f
	ldh a, [$5f]                                     ; $7bbb: $f0 $5f
	pop af                                           ; $7bbd: $f1
	ld e, h                                          ; $7bbe: $5c
	pop af                                           ; $7bbf: $f1
	dec b                                            ; $7bc0: $05
	ldh a, [rWY]                                     ; $7bc1: $f0 $4a
	ldh a, [$03]                                     ; $7bc3: $f0 $03
	db $ec                                           ; $7bc5: $ec
	ret c                                            ; $7bc6: $d8

	inc a                                            ; $7bc7: $3c
	add hl, bc                                       ; $7bc8: $09
	ld l, [hl]                                       ; $7bc9: $6e
	dec sp                                           ; $7bca: $3b
	ldh a, [$36]                                     ; $7bcb: $f0 $36
	inc [hl]                                         ; $7bcd: $34
	ldh a, [rTAC]                                    ; $7bce: $f0 $07
	inc a                                            ; $7bd0: $3c
	dec sp                                           ; $7bd1: $3b
	ld h, c                                          ; $7bd2: $61
	ld d, [hl]                                       ; $7bd3: $56
	add hl, sp                                       ; $7bd4: $39
	and c                                            ; $7bd5: $a1
	cpl                                              ; $7bd6: $2f
	db $ed                                           ; $7bd7: $ed
	ld e, [hl]                                       ; $7bd8: $5e
	ldh a, [rPCM12]                                  ; $7bd9: $f0 $76
	ldh a, [rTMA]                                    ; $7bdb: $f0 $06
	ld h, e                                          ; $7bdd: $63
	ld a, [hl-]                                      ; $7bde: $3a
	jr c, jr_08f_7bea                                ; $7bdf: $38 $09

	ld e, [hl]                                       ; $7be1: $5e
	ld e, c                                          ; $7be2: $59
	dec sp                                           ; $7be3: $3b
	xor h                                            ; $7be4: $ac
	ldh a, [$5f]                                     ; $7be5: $f0 $5f
	pop af                                           ; $7be7: $f1
	ld e, h                                          ; $7be8: $5c
	ld b, d                                          ; $7be9: $42

jr_08f_7bea:
	ldh a, [hDisp0_WX]                                     ; $7bea: $f0 $89
	pop af                                           ; $7bec: $f1
	inc sp                                           ; $7bed: $33
	ldh a, [$3d]                                     ; $7bee: $f0 $3d
	ld a, [hl-]                                      ; $7bf0: $3a
	ld b, d                                          ; $7bf1: $42
	ld b, a                                          ; $7bf2: $47
	ld c, b                                          ; $7bf3: $48
	and b                                            ; $7bf4: $a0
	cpl                                              ; $7bf5: $2f
	ldh a, [rPCM12]                                  ; $7bf6: $f0 $76
	ldh a, [rTMA]                                    ; $7bf8: $f0 $06
	dec sp                                           ; $7bfa: $3b
	ccf                                              ; $7bfb: $3f
	ld c, [hl]                                       ; $7bfc: $4e
	ld b, l                                          ; $7bfd: $45
	add hl, bc                                       ; $7bfe: $09
	ld b, b                                          ; $7bff: $40
	add hl, sp                                       ; $7c00: $39
	xor b                                            ; $7c01: $a8
	ld b, b                                          ; $7c02: $40
	ld c, l                                          ; $7c03: $4d
	ld b, h                                          ; $7c04: $44
	ld e, l                                          ; $7c05: $5d
	inc a                                            ; $7c06: $3c
	ld [hl], h                                       ; $7c07: $74
	ld c, b                                          ; $7c08: $48
	and b                                            ; $7c09: $a0
	add hl, bc                                       ; $7c0a: $09
	db $ed                                           ; $7c0b: $ed
	ld d, a                                          ; $7c0c: $57
	xor h                                            ; $7c0d: $ac
	ldh a, [$9a]                                     ; $7c0e: $f0 $9a
	ld e, h                                          ; $7c10: $5c
	ldh a, [rTMA]                                    ; $7c11: $f0 $06
	dec sp                                           ; $7c13: $3b
	ccf                                              ; $7c14: $3f
	ld d, l                                          ; $7c15: $55
	ld c, l                                          ; $7c16: $4d
	ccf                                              ; $7c17: $3f
	inc [hl]                                         ; $7c18: $34
	ld b, [hl]                                       ; $7c19: $46
	ld d, a                                          ; $7c1a: $57
	ld d, e                                          ; $7c1b: $53
	ld c, c                                          ; $7c1c: $49
	add hl, sp                                       ; $7c1d: $39
	and b                                            ; $7c1e: $a0

jr_08f_7c1f:
	cpl                                              ; $7c1f: $2f
	ld b, e                                          ; $7c20: $43
	ld l, d                                          ; $7c21: $6a
	ldh a, [$0d]                                     ; $7c22: $f0 $0d
	ld c, e                                          ; $7c24: $4b
	inc [hl]                                         ; $7c25: $34
	halt                                             ; $7c26: $76
	inc a                                            ; $7c27: $3c
	ld d, b                                          ; $7c28: $50
	inc de                                           ; $7c29: $13
	ldh a, [$3b]                                     ; $7c2a: $f0 $3b
	dec sp                                           ; $7c2c: $3b
	ccf                                              ; $7c2d: $3f
	db $ec                                           ; $7c2e: $ec
	ld a, [bc]                                       ; $7c2f: $0a
	and c                                            ; $7c30: $a1
	db $ed                                           ; $7c31: $ed
	ld d, l                                          ; $7c32: $55
	ld c, h                                          ; $7c33: $4c
	xor b                                            ; $7c34: $a8
	sbc c                                            ; $7c35: $99
	dec sp                                           ; $7c36: $3b
	ccf                                              ; $7c37: $3f
	ld c, [hl]                                       ; $7c38: $4e
	inc a                                            ; $7c39: $3c
	ld d, b                                          ; $7c3a: $50
	ld c, h                                          ; $7c3b: $4c
	xor b                                            ; $7c3c: $a8
	pop af                                           ; $7c3d: $f1
	ld a, [de]                                       ; $7c3e: $1a
	pop af                                           ; $7c3f: $f1
	inc c                                            ; $7c40: $0c
	inc [hl]                                         ; $7c41: $34
	ldh a, [$a7]                                     ; $7c42: $f0 $a7
	pop af                                           ; $7c44: $f1
	dec de                                           ; $7c45: $1b
	ld a, $3f                                        ; $7c46: $3e $3f
	ld b, l                                          ; $7c48: $45
	and b                                            ; $7c49: $a0
	call c, $d034                                    ; $7c4a: $dc $34 $d0
	xor b                                            ; $7c4d: $a8
	ld d, d                                          ; $7c4e: $52
	dec a                                            ; $7c4f: $3d
	inc [hl]                                         ; $7c50: $34
	ld e, d                                          ; $7c51: $5a
	dec sp                                           ; $7c52: $3b
	inc a                                            ; $7c53: $3c
	ld h, a                                          ; $7c54: $67
	ld d, h                                          ; $7c55: $54
	add hl, sp                                       ; $7c56: $39
	ld c, h                                          ; $7c57: $4c
	and b                                            ; $7c58: $a0
	cpl                                              ; $7c59: $2f
	ld b, e                                          ; $7c5a: $43
	ld e, e                                          ; $7c5b: $5b
	ld d, [hl]                                       ; $7c5c: $56
	ld b, [hl]                                       ; $7c5d: $46
	inc [hl]                                         ; $7c5e: $34
	ld b, b                                          ; $7c5f: $40
	add hl, sp                                       ; $7c60: $39
	ld d, c                                          ; $7c61: $51
	ld c, [hl]                                       ; $7c62: $4e
	ld b, l                                          ; $7c63: $45
	and b                                            ; $7c64: $a0
	db $ec                                           ; $7c65: $ec
	rst AddAOntoHL                                          ; $7c66: $ef
	ld c, a                                          ; $7c67: $4f
	inc [hl]                                         ; $7c68: $34
	ld a, b                                          ; $7c69: $78
	dec a                                            ; $7c6a: $3d
	ld c, c                                          ; $7c6b: $49
	ld d, h                                          ; $7c6c: $54
	ld e, a                                          ; $7c6d: $5f
	ld b, a                                          ; $7c6e: $47
	inc de                                           ; $7c6f: $13
	ld a, b                                          ; $7c70: $78
	ccf                                              ; $7c71: $3f
	ld c, a                                          ; $7c72: $4f
	inc [hl]                                         ; $7c73: $34
	db $db                                           ; $7c74: $db
	ld a, [hl-]                                      ; $7c75: $3a
	jr c, jr_08f_7cc1                                ; $7c76: $38 $49

	inc de                                           ; $7c78: $13
	ld [hl], a                                       ; $7c79: $77
	ld h, e                                          ; $7c7a: $63
	ld a, [hl-]                                      ; $7c7b: $3a
	jr c, jr_08f_7c1f                                ; $7c7c: $38 $a1

	cpl                                              ; $7c7e: $2f
	ld b, e                                          ; $7c7f: $43
	rst JumpTable                                          ; $7c80: $c7
	ld b, h                                          ; $7c81: $44
	ld c, h                                          ; $7c82: $4c
	dec [hl]                                         ; $7c83: $35
	rla                                              ; $7c84: $17
	add sp, $50                                      ; $7c85: $e8 $50
	inc de                                           ; $7c87: $13
	add sp, -$7a                                     ; $7c88: $e8 $86
	and e                                            ; $7c8a: $a3
	db $ed                                           ; $7c8b: $ed
	ld d, a                                          ; $7c8c: $57
	db $ed                                           ; $7c8d: $ed
	ld h, b                                          ; $7c8e: $60
	ld b, h                                          ; $7c8f: $44
	dec sp                                           ; $7c90: $3b
	dec a                                            ; $7c91: $3d
	ld c, h                                          ; $7c92: $4c
	xor b                                            ; $7c93: $a8
	ld d, d                                          ; $7c94: $52
	dec a                                            ; $7c95: $3d
	ld e, d                                          ; $7c96: $5a
	ld d, h                                          ; $7c97: $54
	inc a                                            ; $7c98: $3c
	ld b, a                                          ; $7c99: $47
	ldh a, [$3b]                                     ; $7c9a: $f0 $3b
	dec sp                                           ; $7c9c: $3b
	ccf                                              ; $7c9d: $3f
	ld c, h                                          ; $7c9e: $4c
	and b                                            ; $7c9f: $a0
	cpl                                              ; $7ca0: $2f
	ld b, e                                          ; $7ca1: $43
	ld [$a8c3], a                                    ; $7ca2: $ea $c3 $a8
	ld d, d                                          ; $7ca5: $52
	dec a                                            ; $7ca6: $3d
	ld l, d                                          ; $7ca7: $6a
	ldh a, [$0d]                                     ; $7ca8: $f0 $0d
	inc [hl]                                         ; $7caa: $34
	db $ec                                           ; $7cab: $ec
	inc l                                            ; $7cac: $2c
	ld b, l                                          ; $7cad: $45
	and b                                            ; $7cae: $a0
	db $ed                                           ; $7caf: $ed
	ld d, a                                          ; $7cb0: $57
	db $eb                                           ; $7cb1: $eb
	ld h, e                                          ; $7cb2: $63
	ld c, h                                          ; $7cb3: $4c
	xor b                                            ; $7cb4: $a8
	ld d, d                                          ; $7cb5: $52
	dec a                                            ; $7cb6: $3d
	ld e, d                                          ; $7cb7: $5a
	ld d, h                                          ; $7cb8: $54
	inc a                                            ; $7cb9: $3c
	ld b, a                                          ; $7cba: $47
	ldh a, [$3b]                                     ; $7cbb: $f0 $3b
	dec sp                                           ; $7cbd: $3b
	ccf                                              ; $7cbe: $3f
	ld c, h                                          ; $7cbf: $4c
	and b                                            ; $7cc0: $a0

jr_08f_7cc1:
	ld l, d                                          ; $7cc1: $6a
	ldh a, [$0d]                                     ; $7cc2: $f0 $0d
	ld c, e                                          ; $7cc4: $4b
	inc [hl]                                         ; $7cc5: $34
	ld l, d                                          ; $7cc6: $6a
	ld l, b                                          ; $7cc7: $68
	ld l, h                                          ; $7cc8: $6c
	dec a                                            ; $7cc9: $3d
	jr c, jr_08f_7cdf                                ; $7cca: $38 $13

	db $ec                                           ; $7ccc: $ec
	ret c                                            ; $7ccd: $d8

	ld c, c                                          ; $7cce: $49
	ld d, h                                          ; $7ccf: $54
	ld b, a                                          ; $7cd0: $47
	ldh a, [$3b]                                     ; $7cd1: $f0 $3b
	dec sp                                           ; $7cd3: $3b
	ccf                                              ; $7cd4: $3f
	ld c, h                                          ; $7cd5: $4c
	and b                                            ; $7cd6: $a0
	db $ed                                           ; $7cd7: $ed
	ld d, a                                          ; $7cd8: $57
	inc de                                           ; $7cd9: $13
	pop af                                           ; $7cda: $f1
	ld d, d                                          ; $7cdb: $52
	db $eb                                           ; $7cdc: $eb
	ld h, e                                          ; $7cdd: $63
	ld c, h                                          ; $7cde: $4c

jr_08f_7cdf:
	xor b                                            ; $7cdf: $a8
	ld d, d                                          ; $7ce0: $52
	dec a                                            ; $7ce1: $3d

jr_08f_7ce2:
	ld e, d                                          ; $7ce2: $5a
	ld d, h                                          ; $7ce3: $54
	inc a                                            ; $7ce4: $3c
	ldh a, [$3b]                                     ; $7ce5: $f0 $3b
	dec sp                                           ; $7ce7: $3b
	ccf                                              ; $7ce8: $3f
	ld c, h                                          ; $7ce9: $4c
	and b                                            ; $7cea: $a0
	cpl                                              ; $7ceb: $2f
	ld b, e                                          ; $7cec: $43
	ld d, d                                          ; $7ced: $52
	dec a                                            ; $7cee: $3d
	ld l, d                                          ; $7cef: $6a
	ldh a, [$0d]                                     ; $7cf0: $f0 $0d
	xor h                                            ; $7cf2: $ac
	db $ec                                           ; $7cf3: $ec
	inc l                                            ; $7cf4: $2c
	ld b, l                                          ; $7cf5: $45
	and b                                            ; $7cf6: $a0
	db $ed                                           ; $7cf7: $ed
	ld d, a                                          ; $7cf8: $57
	db $eb                                           ; $7cf9: $eb
	ld h, e                                          ; $7cfa: $63
	ld c, h                                          ; $7cfb: $4c
	xor b                                            ; $7cfc: $a8
	ld d, d                                          ; $7cfd: $52
	dec a                                            ; $7cfe: $3d
	ld e, d                                          ; $7cff: $5a
	ld d, h                                          ; $7d00: $54
	inc a                                            ; $7d01: $3c
	ldh a, [$3b]                                     ; $7d02: $f0 $3b
	dec sp                                           ; $7d04: $3b
	ccf                                              ; $7d05: $3f
	ld c, h                                          ; $7d06: $4c
	and b                                            ; $7d07: $a0
	pop af                                           ; $7d08: $f1
	ld d, d                                          ; $7d09: $52
	db $db                                           ; $7d0a: $db
	ld a, [hl-]                                      ; $7d0b: $3a
	inc a                                            ; $7d0c: $3c
	dec sp                                           ; $7d0d: $3b
	dec a                                            ; $7d0e: $3d
	ld c, h                                          ; $7d0f: $4c
	and b                                            ; $7d10: $a0
	cpl                                              ; $7d11: $2f
	ld b, e                                          ; $7d12: $43
	rst JumpTable                                          ; $7d13: $c7
	ld c, b                                          ; $7d14: $48
	and b                                            ; $7d15: $a0
	db $ed                                           ; $7d16: $ed
	ld d, a                                          ; $7d17: $57
	inc de                                           ; $7d18: $13
	pop af                                           ; $7d19: $f1
	ld d, d                                          ; $7d1a: $52
	db $eb                                           ; $7d1b: $eb
	ld h, e                                          ; $7d1c: $63
	ld c, h                                          ; $7d1d: $4c
	xor b                                            ; $7d1e: $a8
	ld d, d                                          ; $7d1f: $52
	dec a                                            ; $7d20: $3d
	ld l, d                                          ; $7d21: $6a
	ldh a, [$0d]                                     ; $7d22: $f0 $0d
	ldh a, [$3b]                                     ; $7d24: $f0 $3b
	dec sp                                           ; $7d26: $3b
	ccf                                              ; $7d27: $3f
	ld c, h                                          ; $7d28: $4c
	and b                                            ; $7d29: $a0
	db $ed                                           ; $7d2a: $ed
	ld d, a                                          ; $7d2b: $57
	db $eb                                           ; $7d2c: $eb
	ld h, e                                          ; $7d2d: $63
	ld c, h                                          ; $7d2e: $4c
	and b                                            ; $7d2f: $a0
	cpl                                              ; $7d30: $2f
	ld b, e                                          ; $7d31: $43
	ld b, b                                          ; $7d32: $40
	add hl, sp                                       ; $7d33: $39
	inc [hl]                                         ; $7d34: $34
	db $ec                                           ; $7d35: $ec
	cp c                                             ; $7d36: $b9
	and b                                            ; $7d37: $a0
	db $db                                           ; $7d38: $db
	ld a, [hl-]                                      ; $7d39: $3a
	inc a                                            ; $7d3a: $3c
	dec sp                                           ; $7d3b: $3b
	dec a                                            ; $7d3c: $3d
	ld c, h                                          ; $7d3d: $4c
	xor b                                            ; $7d3e: $a8
	db $eb                                           ; $7d3f: $eb
	jr c, jr_08f_7ce2                                ; $7d40: $38 $a0

	ldh a, [$34]                                     ; $7d42: $f0 $34
	ld b, c                                          ; $7d44: $41
	ld c, c                                          ; $7d45: $49
	ld d, h                                          ; $7d46: $54
	xor h                                            ; $7d47: $ac
	ld h, a                                          ; $7d48: $67
	ld e, l                                          ; $7d49: $5d
	ld a, e                                          ; $7d4a: $7b
	ld b, l                                          ; $7d4b: $45
	inc a                                            ; $7d4c: $3c
	dec sp                                           ; $7d4d: $3b
	dec a                                            ; $7d4e: $3d
	and b                                            ; $7d4f: $a0
	cpl                                              ; $7d50: $2f
	ld b, e                                          ; $7d51: $43
	xor $10                                          ; $7d52: $ee $10
	xor b                                            ; $7d54: $a8
	add sp, -$72                                     ; $7d55: $e8 $8e
	and e                                            ; $7d57: $a3
	ld b, [hl]                                       ; $7d58: $46
	dec sp                                           ; $7d59: $3b
	inc [hl]                                         ; $7d5a: $34
	ld b, b                                          ; $7d5b: $40
	add hl, sp                                       ; $7d5c: $39
	ld b, h                                          ; $7d5d: $44
	and b                                            ; $7d5e: $a0
	cpl                                              ; $7d5f: $2f
	ld b, e                                          ; $7d60: $43
	db $eb                                           ; $7d61: $eb
	rst FarCall                                          ; $7d62: $f7
	and c                                            ; $7d63: $a1
	cpl                                              ; $7d64: $2f
	ld b, e                                          ; $7d65: $43
	ld b, [hl]                                       ; $7d66: $46
	ld d, a                                          ; $7d67: $57
	ld d, e                                          ; $7d68: $53
	ld c, c                                          ; $7d69: $49
	add hl, sp                                       ; $7d6a: $39
	xor b                                            ; $7d6b: $a8
	ldh a, [$29]                                     ; $7d6c: $f0 $29
	ld a, $38                                        ; $7d6e: $3e $38
	ld b, l                                          ; $7d70: $45
	xor b                                            ; $7d71: $a8
	ld [hl-], a                                      ; $7d72: $32
	db $eb                                           ; $7d73: $eb
	ld a, [$eb47]                                    ; $7d74: $fa $47 $eb
	dec a                                            ; $7d77: $3d
	inc de                                           ; $7d78: $13
	ld c, a                                          ; $7d79: $4f
	ld d, b                                          ; $7d7a: $50
	ld e, [hl]                                       ; $7d7b: $5e
	ld c, [hl]                                       ; $7d7c: $4e
	ld a, [hl-]                                      ; $7d7d: $3a
	ld b, c                                          ; $7d7e: $41
	ccf                                              ; $7d7f: $3f
	xor h                                            ; $7d80: $ac
	halt                                             ; $7d81: $76
	ld c, e                                          ; $7d82: $4b
	pop af                                           ; $7d83: $f1
	and d                                            ; $7d84: $a2
	ld a, c                                          ; $7d85: $79
	pop af                                           ; $7d86: $f1
	ld b, d                                          ; $7d87: $42
	ld b, h                                          ; $7d88: $44
	ld e, c                                          ; $7d89: $59
	scf                                              ; $7d8a: $37
	inc sp                                           ; $7d8b: $33
	add hl, bc                                       ; $7d8c: $09
	cpl                                              ; $7d8d: $2f
	ld b, e                                          ; $7d8e: $43
	ld b, [hl]                                       ; $7d8f: $46
	dec sp                                           ; $7d90: $3b
	inc [hl]                                         ; $7d91: $34
	db $eb                                           ; $7d92: $eb
	ld a, [$e9a8]                                    ; $7d93: $fa $a8 $e9
	ld d, c                                          ; $7d96: $51
	and b                                            ; $7d97: $a0
	cpl                                              ; $7d98: $2f
	ld [hl-], a                                      ; $7d99: $32
	db $eb                                           ; $7d9a: $eb
	dec a                                            ; $7d9b: $3d
	ldh a, [rAUD2LEN]                                ; $7d9c: $f0 $16
	ldh a, [$c0]                                     ; $7d9e: $f0 $c0
	inc de                                           ; $7da0: $13
	ld a, $3f                                        ; $7da1: $3e $3f
	ld h, h                                          ; $7da3: $64
	db $ec                                           ; $7da4: $ec
	ld l, $a3                                        ; $7da5: $2e $a3
	ld d, $a8                                        ; $7da7: $16 $a8
	ld e, e                                          ; $7da9: $5b
	ld d, [hl]                                       ; $7daa: $56
	ld b, [hl]                                       ; $7dab: $46
	xor h                                            ; $7dac: $ac
	ld e, d                                          ; $7dad: $5a
	dec sp                                           ; $7dae: $3b
	inc a                                            ; $7daf: $3c
	ld b, l                                          ; $7db0: $45
	dec sp                                           ; $7db1: $3b
	ccf                                              ; $7db2: $3f
	ld a, d                                          ; $7db3: $7a
	ld e, a                                          ; $7db4: $5f
	add hl, sp                                       ; $7db5: $39
	ld b, l                                          ; $7db6: $45
	and b                                            ; $7db7: $a0
	ld e, e                                          ; $7db8: $5b
	ld d, [hl]                                       ; $7db9: $56
	ld b, [hl]                                       ; $7dba: $46
	inc [hl]                                         ; $7dbb: $34
	ld a, d                                          ; $7dbc: $7a
	ld e, a                                          ; $7dbd: $5f
	add hl, sp                                       ; $7dbe: $39
	xor b                                            ; $7dbf: $a8
	ld d, $a0                                        ; $7dc0: $16 $a0
	ld b, b                                          ; $7dc2: $40
	ld c, l                                          ; $7dc3: $4d
	ld e, e                                          ; $7dc4: $5b
	ld d, [hl]                                       ; $7dc5: $56
	and b                                            ; $7dc6: $a0
	add hl, bc                                       ; $7dc7: $09
	xor $10                                          ; $7dc8: $ee $10
	and b                                            ; $7dca: $a0
	cpl                                              ; $7dcb: $2f
	ld b, e                                          ; $7dcc: $43
	ld h, h                                          ; $7dcd: $64
	ld e, c                                          ; $7dce: $59
	jr c, jr_08f_7e05                                ; $7dcf: $38 $34

	xor $27                                          ; $7dd1: $ee $27
	ld h, c                                          ; $7dd3: $61
	ld d, [hl]                                       ; $7dd4: $56
	ld e, c                                          ; $7dd5: $59
	ld b, c                                          ; $7dd6: $41
	xor b                                            ; $7dd7: $a8
	sbc c                                            ; $7dd8: $99
	dec sp                                           ; $7dd9: $3b
	ccf                                              ; $7dda: $3f
	ld d, l                                          ; $7ddb: $55
	ld c, l                                          ; $7ddc: $4d
	ld e, c                                          ; $7ddd: $59
	and b                                            ; $7dde: $a0
	cpl                                              ; $7ddf: $2f
	ld b, e                                          ; $7de0: $43
	db $ec                                           ; $7de1: $ec
	reti                                             ; $7de2: $d9


	xor h                                            ; $7de3: $ac
	ld d, h                                          ; $7de4: $54
	ld b, d                                          ; $7de5: $42
	pop af                                           ; $7de6: $f1
	ld de, $573a                                     ; $7de7: $11 $3a $57
	ld e, e                                          ; $7dea: $5b
	ld d, [hl]                                       ; $7deb: $56
	xor h                                            ; $7dec: $ac
	ldh a, [$e1]                                     ; $7ded: $f0 $e1
	ldh a, [rSB]                                     ; $7def: $f0 $01
	ld d, b                                          ; $7df1: $50
	ld c, l                                          ; $7df2: $4d
	ld c, [hl]                                       ; $7df3: $4e
	ld b, l                                          ; $7df4: $45
	ld a, [hl-]                                      ; $7df5: $3a
	ld [hl], h                                       ; $7df6: $74
	and b                                            ; $7df7: $a0
	cpl                                              ; $7df8: $2f
	ld b, e                                          ; $7df9: $43
	db $eb                                           ; $7dfa: $eb
	inc [hl]                                         ; $7dfb: $34
	xor h                                            ; $7dfc: $ac
	ldh a, [rSVBK]                                   ; $7dfd: $f0 $70
	ld b, a                                          ; $7dff: $47
	db $ed                                           ; $7e00: $ed
	ld e, b                                          ; $7e01: $58
	and b                                            ; $7e02: $a0
	cpl                                              ; $7e03: $2f
	ld b, e                                          ; $7e04: $43

jr_08f_7e05:
	db $eb                                           ; $7e05: $eb
	db $fc                                           ; $7e06: $fc
	ld c, e                                          ; $7e07: $4b
	xor h                                            ; $7e08: $ac
	ld c, c                                          ; $7e09: $49
	add hl, sp                                       ; $7e0a: $39
	ld c, c                                          ; $7e0b: $49
	add hl, sp                                       ; $7e0c: $39
	ld a, b                                          ; $7e0d: $78
	ld a, [hl-]                                      ; $7e0e: $3a
	inc a                                            ; $7e0f: $3c
	dec sp                                           ; $7e10: $3b
	dec a                                            ; $7e11: $3d
	ld a, [hl-]                                      ; $7e12: $3a
	and b                                            ; $7e13: $a0
	cpl                                              ; $7e14: $2f
	ld b, e                                          ; $7e15: $43
	ld e, d                                          ; $7e16: $5a
	add hl, sp                                       ; $7e17: $39
	ld a, $3d                                        ; $7e18: $3e $3d
	ld b, c                                          ; $7e1a: $41
	ld b, h                                          ; $7e1b: $44
	ld e, a                                          ; $7e1c: $5f
	add hl, sp                                       ; $7e1d: $39
	xor c                                            ; $7e1e: $a9
	db $eb                                           ; $7e1f: $eb
	inc [hl]                                         ; $7e20: $34
	xor h                                            ; $7e21: $ac
	ldh a, [rSVBK]                                   ; $7e22: $f0 $70
	ld b, a                                          ; $7e24: $47
	db $ed                                           ; $7e25: $ed
	ld e, b                                          ; $7e26: $58
	and b                                            ; $7e27: $a0
	cpl                                              ; $7e28: $2f
	ld b, e                                          ; $7e29: $43
	db $eb                                           ; $7e2a: $eb
	db $fc                                           ; $7e2b: $fc
	inc [hl]                                         ; $7e2c: $34
	ld [hl], b                                       ; $7e2d: $70
	ld [hl], c                                       ; $7e2e: $71
	ld b, c                                          ; $7e2f: $41
	ld c, h                                          ; $7e30: $4c
	xor b                                            ; $7e31: $a8
	add sp, -$21                                     ; $7e32: $e8 $df
	xor h                                            ; $7e34: $ac
	jp hl                                            ; $7e35: $e9


	xor [hl]                                         ; $7e36: $ae
	and b                                            ; $7e37: $a0
	ldh a, [$b5]                                     ; $7e38: $f0 $b5
	inc [hl]                                         ; $7e3a: $34
	xor $27                                          ; $7e3b: $ee $27
	ld c, a                                          ; $7e3d: $4f
	xor h                                            ; $7e3e: $ac
	ld l, d                                          ; $7e3f: $6a
	ld a, b                                          ; $7e40: $78
	dec a                                            ; $7e41: $3d
	ld c, c                                          ; $7e42: $49
	ld d, h                                          ; $7e43: $54
	ld e, a                                          ; $7e44: $5f
	ld c, d                                          ; $7e45: $4a
	ld d, c                                          ; $7e46: $51
	and b                                            ; $7e47: $a0
	cpl                                              ; $7e48: $2f
	ld b, e                                          ; $7e49: $43
	sbc $70                                          ; $7e4a: $de $70
	ld [hl], c                                       ; $7e4c: $71
	ld b, c                                          ; $7e4d: $41
	ld c, h                                          ; $7e4e: $4c
	dec [hl]                                         ; $7e4f: $35
	rla                                              ; $7e50: $17
	jp hl                                            ; $7e51: $e9


	pop de                                           ; $7e52: $d1
	inc de                                           ; $7e53: $13
	jp hl                                            ; $7e54: $e9


	jp nc, $a397                                     ; $7e55: $d2 $97 $a3

	ret                                              ; $7e58: $c9


	inc de                                           ; $7e59: $13
	ld a, a                                          ; $7e5a: $7f
	ld h, d                                          ; $7e5b: $62
	ldh a, [$5c]                                     ; $7e5c: $f0 $5c
	ld d, l                                          ; $7e5e: $55
	ld a, $61                                        ; $7e5f: $3e $61
	ld d, [hl]                                       ; $7e61: $56
	ld h, h                                          ; $7e62: $64
	and b                                            ; $7e63: $a0
	cpl                                              ; $7e64: $2f
	ld b, e                                          ; $7e65: $43
	sbc $34                                          ; $7e66: $de $34
	ld [hl], b                                       ; $7e68: $70
	ld [hl], c                                       ; $7e69: $71
	ld b, c                                          ; $7e6a: $41
	ld c, h                                          ; $7e6b: $4c
	and b                                            ; $7e6c: $a0
	db $ed                                           ; $7e6d: $ed
	ret z                                            ; $7e6e: $c8

	ld [hl], e                                       ; $7e6f: $73
	xor b                                            ; $7e70: $a8
	ldh a, [$c7]                                     ; $7e71: $f0 $c7
	jr c, jr_08f_7eba                                ; $7e73: $38 $45

	ldh a, [c]                                       ; $7e75: $f2
	ld a, l                                          ; $7e76: $7d
	xor b                                            ; $7e77: $a8
	ld c, a                                          ; $7e78: $4f
	add hl, sp                                       ; $7e79: $39
	db $eb                                           ; $7e7a: $eb
	jr c, jr_08f_7ec2                                ; $7e7b: $38 $45

	and b                                            ; $7e7d: $a0
	cpl                                              ; $7e7e: $2f
	ld b, e                                          ; $7e7f: $43
	ld [hl], b                                       ; $7e80: $70
	ld [hl], c                                       ; $7e81: $71
	ld b, c                                          ; $7e82: $41
	ld b, l                                          ; $7e83: $45
	inc [hl]                                         ; $7e84: $34
	db $eb                                           ; $7e85: $eb
	db $fc                                           ; $7e86: $fc
	xor b                                            ; $7e87: $a8
	ld c, a                                          ; $7e88: $4f
	add hl, sp                                       ; $7e89: $39
	ldh a, [hDisp0_SCX]                                     ; $7e8a: $f0 $84
	ldh a, [$0d]                                     ; $7e8c: $f0 $0d
	ld c, c                                          ; $7e8e: $49
	ld a, $3a                                        ; $7e8f: $3e $3a
	jr c, jr_08f_7ecf                                ; $7e91: $38 $3c

	ld d, b                                          ; $7e93: $50
	and b                                            ; $7e94: $a0
	cpl                                              ; $7e95: $2f
	ld b, e                                          ; $7e96: $43
	sbc c                                            ; $7e97: $99
	dec sp                                           ; $7e98: $3b
	dec a                                            ; $7e99: $3d
	and c                                            ; $7e9a: $a1
	add hl, sp                                       ; $7e9b: $39
	xor $1f                                          ; $7e9c: $ee $1f
	xor b                                            ; $7e9e: $a8
	xor $27                                          ; $7e9f: $ee $27
	ld c, a                                          ; $7ea1: $4f
	xor h                                            ; $7ea2: $ac
	ld l, d                                          ; $7ea3: $6a
	ld a, b                                          ; $7ea4: $78
	dec a                                            ; $7ea5: $3d
	ld c, c                                          ; $7ea6: $49
	ld d, h                                          ; $7ea7: $54
	ld e, a                                          ; $7ea8: $5f
	ld c, d                                          ; $7ea9: $4a
	ld d, c                                          ; $7eaa: $51
	and b                                            ; $7eab: $a0
	cpl                                              ; $7eac: $2f
	ld b, e                                          ; $7ead: $43
	jp hl                                            ; $7eae: $e9


	dec h                                            ; $7eaf: $25
	ld b, l                                          ; $7eb0: $45
	and b                                            ; $7eb1: $a0
	xor $27                                          ; $7eb2: $ee $27
	ld c, a                                          ; $7eb4: $4f
	xor h                                            ; $7eb5: $ac
	ld l, d                                          ; $7eb6: $6a
	ld a, b                                          ; $7eb7: $78
	dec a                                            ; $7eb8: $3d
	ld c, c                                          ; $7eb9: $49

jr_08f_7eba:
	ld d, h                                          ; $7eba: $54
	ld e, a                                          ; $7ebb: $5f
	ld b, h                                          ; $7ebc: $44
	ld b, l                                          ; $7ebd: $45
	and b                                            ; $7ebe: $a0
	cpl                                              ; $7ebf: $2f
	ld b, e                                          ; $7ec0: $43
	jp hl                                            ; $7ec1: $e9


jr_08f_7ec2:
	dec h                                            ; $7ec2: $25
	and b                                            ; $7ec3: $a0
	xor $27                                          ; $7ec4: $ee $27
	ld c, a                                          ; $7ec6: $4f
	xor h                                            ; $7ec7: $ac
	ld l, d                                          ; $7ec8: $6a
	ld a, b                                          ; $7ec9: $78
	dec a                                            ; $7eca: $3d
	ld c, c                                          ; $7ecb: $49
	ld d, h                                          ; $7ecc: $54
	ld c, d                                          ; $7ecd: $4a
	ld d, c                                          ; $7ece: $51

jr_08f_7ecf:
	and b                                            ; $7ecf: $a0
	cpl                                              ; $7ed0: $2f
	ld b, e                                          ; $7ed1: $43
	db $eb                                           ; $7ed2: $eb
	db $fc                                           ; $7ed3: $fc
	inc [hl]                                         ; $7ed4: $34
	ldh a, [$c7]                                     ; $7ed5: $f0 $c7
	jr c, jr_08f_7f13                                ; $7ed7: $38 $3a

	xor l                                            ; $7ed9: $ad
	ld e, d                                          ; $7eda: $5a
	add hl, sp                                       ; $7edb: $39
	ld a, $3d                                        ; $7edc: $3e $3d
	ld b, c                                          ; $7ede: $41
	ld b, h                                          ; $7edf: $44
	ld e, a                                          ; $7ee0: $5f
	add hl, sp                                       ; $7ee1: $39
	and c                                            ; $7ee2: $a1
	ld [$acab], a                                    ; $7ee3: $ea $ab $ac
	db $f4                                           ; $7ee6: $f4
	ld hl, sp+$3c                                    ; $7ee7: $f8 $3c
	ld d, l                                          ; $7ee9: $55
	ccf                                              ; $7eea: $3f
	inc [hl]                                         ; $7eeb: $34
	ld c, a                                          ; $7eec: $4f
	add hl, sp                                       ; $7eed: $39
	pop af                                           ; $7eee: $f1
	sbc d                                            ; $7eef: $9a
	ld c, d                                          ; $7ef0: $4a
	ld d, c                                          ; $7ef1: $51
	ld c, h                                          ; $7ef2: $4c
	and b                                            ; $7ef3: $a0
	cpl                                              ; $7ef4: $2f
	ld b, e                                          ; $7ef5: $43
	pop af                                           ; $7ef6: $f1
	cp d                                             ; $7ef7: $ba
	ld d, l                                          ; $7ef8: $55
	ld a, [hl-]                                      ; $7ef9: $3a
	ld c, [hl]                                       ; $7efa: $4e
	ldh a, [c]                                       ; $7efb: $f2
	ld a, e                                          ; $7efc: $7b
	ldh a, [c]                                       ; $7efd: $f2
	ld a, h                                          ; $7efe: $7c
	ld b, h                                          ; $7eff: $44
	ld c, h                                          ; $7f00: $4c
	and b                                            ; $7f01: $a0
	ld [$acab], a                                    ; $7f02: $ea $ab $ac
	db $ed                                           ; $7f05: $ed
	ld d, a                                          ; $7f06: $57
	db $ed                                           ; $7f07: $ed
	ld l, h                                          ; $7f08: $6c
	ld c, d                                          ; $7f09: $4a
	ld d, c                                          ; $7f0a: $51
	ld c, h                                          ; $7f0b: $4c
	and b                                            ; $7f0c: $a0
	cpl                                              ; $7f0d: $2f
	ld b, e                                          ; $7f0e: $43
	adc b                                            ; $7f0f: $88
	sub c                                            ; $7f10: $91
	inc [hl]                                         ; $7f11: $34
	db $ed                                           ; $7f12: $ed

jr_08f_7f13:
	ld l, h                                          ; $7f13: $6c
	ld c, h                                          ; $7f14: $4c
	and b                                            ; $7f15: $a0
	xor $27                                          ; $7f16: $ee $27
	inc [hl]                                         ; $7f18: $34
	di                                               ; $7f19: $f3
	ld b, a                                          ; $7f1a: $47
	dec sp                                           ; $7f1b: $3b
	ccf                                              ; $7f1c: $3f
	add a                                            ; $7f1d: $87
	adc e                                            ; $7f1e: $8b
	ld e, h                                          ; $7f1f: $5c
	xor h                                            ; $7f20: $ac
	db $ed                                           ; $7f21: $ed
	ld b, e                                          ; $7f22: $43
	db $ec                                           ; $7f23: $ec
	dec de                                           ; $7f24: $1b
	ld c, a                                          ; $7f25: $4f
	ld b, d                                          ; $7f26: $42
	ld d, e                                          ; $7f27: $53
	inc de                                           ; $7f28: $13
	jr c, @+$3d                                      ; $7f29: $38 $3b

	ldh a, [$36]                                     ; $7f2b: $f0 $36
	jr c, @+$48                                      ; $7f2d: $38 $46

	ld c, [hl]                                       ; $7f2f: $4e
	ld b, c                                          ; $7f30: $41
	ld b, h                                          ; $7f31: $44
	ld c, a                                          ; $7f32: $4f
	ld b, c                                          ; $7f33: $41
	and b                                            ; $7f34: $a0
	cpl                                              ; $7f35: $2f
	ld b, e                                          ; $7f36: $43
	ld b, b                                          ; $7f37: $40
	add hl, sp                                       ; $7f38: $39
	ld b, h                                          ; $7f39: $44
	ld c, h                                          ; $7f3a: $4c
	and b                                            ; $7f3b: $a0
	db $eb                                           ; $7f3c: $eb
	ld d, c                                          ; $7f3d: $51
	xor h                                            ; $7f3e: $ac
	db $ec                                           ; $7f3f: $ec
	ld c, l                                          ; $7f40: $4d
	ld [$acb8], a                                    ; $7f41: $ea $b8 $ac
	db $ec                                           ; $7f44: $ec
	reti                                             ; $7f45: $d9


	xor h                                            ; $7f46: $ac
	ldh a, [$fa]                                     ; $7f47: $f0 $fa
	ld [hl], c                                       ; $7f49: $71
	ld d, d                                          ; $7f4a: $52
	ld a, c                                          ; $7f4b: $79
	ld b, c                                          ; $7f4c: $41
	ld c, d                                          ; $7f4d: $4a
	ld a, $3d                                        ; $7f4e: $3e $3d
	ld c, b                                          ; $7f50: $48
	and b                                            ; $7f51: $a0
	cpl                                              ; $7f52: $2f
	ld b, e                                          ; $7f53: $43
	ldh a, [$fa]                                     ; $7f54: $f0 $fa
	ld c, a                                          ; $7f56: $4f
	add hl, sp                                       ; $7f57: $39
	ld c, c                                          ; $7f58: $49
	inc de                                           ; $7f59: $13
	ld a, $3f                                        ; $7f5a: $3e $3f
	ld d, l                                          ; $7f5c: $55
	ld c, l                                          ; $7f5d: $4d
	dec a                                            ; $7f5e: $3d
	ld b, h                                          ; $7f5f: $44
	ld e, l                                          ; $7f60: $5d
	ld c, d                                          ; $7f61: $4a
	inc [hl]                                         ; $7f62: $34
	ldh a, [$29]                                     ; $7f63: $f0 $29
	ld a, $38                                        ; $7f65: $3e $38
	ld b, l                                          ; $7f67: $45
	xor b                                            ; $7f68: $a8
	ld b, [hl]                                       ; $7f69: $46
	ld d, a                                          ; $7f6a: $57
	ld d, e                                          ; $7f6b: $53
	ld c, c                                          ; $7f6c: $49
	add hl, sp                                       ; $7f6d: $39
	and b                                            ; $7f6e: $a0
	db $eb                                           ; $7f6f: $eb
	ld d, c                                          ; $7f70: $51
	xor h                                            ; $7f71: $ac
	db $ec                                           ; $7f72: $ec
	ld c, l                                          ; $7f73: $4d
	ld [$acb8], a                                    ; $7f74: $ea $b8 $ac
	db $ec                                           ; $7f77: $ec
	reti                                             ; $7f78: $d9


	inc [hl]                                         ; $7f79: $34
	pop af                                           ; $7f7a: $f1
	ld a, [$383e]                                    ; $7f7b: $fa $3e $38
	ld c, h                                          ; $7f7e: $4c
	and b                                            ; $7f7f: $a0
	cpl                                              ; $7f80: $2f
	ld b, e                                          ; $7f81: $43
	jp hl                                            ; $7f82: $e9


	xor l                                            ; $7f83: $ad
	xor b                                            ; $7f84: $a8
	ld b, [hl]                                       ; $7f85: $46
	ld d, a                                          ; $7f86: $57
	ld d, e                                          ; $7f87: $53
	ld c, c                                          ; $7f88: $49
	add hl, sp                                       ; $7f89: $39
	and b                                            ; $7f8a: $a0
	ld [$acab], a                                    ; $7f8b: $ea $ab $ac
	db $ed                                           ; $7f8e: $ed
	ld d, a                                          ; $7f8f: $57
	pop af                                           ; $7f90: $f1
	or $38                                           ; $7f91: $f6 $38
	ld c, d                                          ; $7f93: $4a
	ld d, c                                          ; $7f94: $51
	ld c, h                                          ; $7f95: $4c
	and b                                            ; $7f96: $a0
	cpl                                              ; $7f97: $2f
	ld b, e                                          ; $7f98: $43
	adc b                                            ; $7f99: $88
	sub c                                            ; $7f9a: $91
	inc [hl]                                         ; $7f9b: $34
	pop af                                           ; $7f9c: $f1
	or $38                                           ; $7f9d: $f6 $38
	ld c, h                                          ; $7f9f: $4c
	and b                                            ; $7fa0: $a0
	db $eb                                           ; $7fa1: $eb
	ccf                                              ; $7fa2: $3f
	xor b                                            ; $7fa3: $a8
	db $eb                                           ; $7fa4: $eb
	pop af                                           ; $7fa5: $f1
	ld b, a                                          ; $7fa6: $47
	xor h                                            ; $7fa7: $ac
	di                                               ; $7fa8: $f3
	dec h                                            ; $7fa9: $25
	ld d, d                                          ; $7faa: $52
	dec sp                                           ; $7fab: $3b
	ld h, c                                          ; $7fac: $61
	ld d, [hl]                                       ; $7fad: $56
	dec sp                                           ; $7fae: $3b
	ccf                                              ; $7faf: $3f
	ld c, b                                          ; $7fb0: $48
	and b                                            ; $7fb1: $a0
	ld [hl], b                                       ; $7fb2: $70
	ld [hl], c                                       ; $7fb3: $71
	ld b, c                                          ; $7fb4: $41
	ld c, h                                          ; $7fb5: $4c
	xor b                                            ; $7fb6: $a8
	db $eb                                           ; $7fb7: $eb
	pop af                                           ; $7fb8: $f1
	ld d, e                                          ; $7fb9: $53
	xor h                                            ; $7fba: $ac
	ld e, b                                          ; $7fbb: $58
	dec sp                                           ; $7fbc: $3b
	ld e, h                                          ; $7fbd: $5c
	ld d, d                                          ; $7fbe: $52
	ld c, d                                          ; $7fbf: $4a
	inc [hl]                                         ; $7fc0: $34
	add hl, sp                                       ; $7fc1: $39
	ld c, [hl]                                       ; $7fc2: $4e
	ld e, b                                          ; $7fc3: $58
	ld d, l                                          ; $7fc4: $55
	ccf                                              ; $7fc5: $3f
	and b                                            ; $7fc6: $a0
	ld [hl], b                                       ; $7fc7: $70
	ld [hl], c                                       ; $7fc8: $71
	ld b, c                                          ; $7fc9: $41
	ld c, h                                          ; $7fca: $4c
	xor b                                            ; $7fcb: $a8
	db $eb                                           ; $7fcc: $eb
	pop af                                           ; $7fcd: $f1
	ld d, e                                          ; $7fce: $53
	ldh a, [$7d]                                     ; $7fcf: $f0 $7d
	inc a                                            ; $7fd1: $3c
	ld d, b                                          ; $7fd2: $50
	xor h                                            ; $7fd3: $ac
	add hl, sp                                       ; $7fd4: $39
	ld c, [hl]                                       ; $7fd5: $4e
	ld e, b                                          ; $7fd6: $58
	ld d, l                                          ; $7fd7: $55
	ccf                                              ; $7fd8: $3f
	and b                                            ; $7fd9: $a0
	db $eb                                           ; $7fda: $eb
	ccf                                              ; $7fdb: $3f
	xor b                                            ; $7fdc: $a8
	ldh a, [$c7]                                     ; $7fdd: $f0 $c7
	ld c, l                                          ; $7fdf: $4d
	ld h, c                                          ; $7fe0: $61
	ld d, [hl]                                       ; $7fe1: $56
	dec sp                                           ; $7fe2: $3b
	dec a                                            ; $7fe3: $3d
	and b                                            ; $7fe4: $a0
	cpl                                              ; $7fe5: $2f
	ld b, e                                          ; $7fe6: $43
	jr c, @+$70                                      ; $7fe7: $38 $6e

	xor h                                            ; $7fe9: $ac
	jp hl                                            ; $7fea: $e9


	cp h                                             ; $7feb: $bc
	xor h                                            ; $7fec: $ac
	jp hl                                            ; $7fed: $e9


	dec l                                            ; $7fee: $2d
	and b                                            ; $7fef: $a0
	add hl, bc                                       ; $7ff0: $09
	db $eb                                           ; $7ff1: $eb
	ld a, e                                          ; $7ff2: $7b
	ld c, d                                          ; $7ff3: $4a
	xor h                                            ; $7ff4: $ac
	ld h, h                                          ; $7ff5: $64
	ldh a, [rAUDVOL]                                 ; $7ff6: $f0 $24
	ld d, c                                          ; $7ff8: $51
	ld c, [hl]                                       ; $7ff9: $4e
	db $ec                                           ; $7ffa: $ec
	or $ac                                           ; $7ffb: $f6 $ac
	xor $27                                          ; $7ffd: $ee $27
	ld c, a                                          ; $7fff: $4f
