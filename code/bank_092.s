; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $092", ROMX[$4000], BANK[$92]

	ld b, h                                          ; $4000: $44
	ld c, h                                          ; $4001: $4c
	xor b                                            ; $4002: $a8
	ld c, d                                          ; $4003: $4a
	ld c, a                                          ; $4004: $4f
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4005: $f0 $81
	pop af                                           ; $4007: $f1
	xor l                                            ; $4008: $ad
	pop af                                           ; $4009: $f1
	ld b, d                                          ; $400a: $42
	ld b, h                                          ; $400b: $44
	inc a                                            ; $400c: $3c
	ld d, b                                          ; $400d: $50
	and b                                            ; $400e: $a0
	ldh a, [$35]                                     ; $400f: $f0 $35
	ld [hl], e                                       ; $4011: $73
	ldh a, [rAUD1LEN]                                ; $4012: $f0 $11
	db $ec                                           ; $4014: $ec
	cp c                                             ; $4015: $b9
	ld c, d                                          ; $4016: $4a
	ld d, c                                          ; $4017: $51
	ld b, l                                          ; $4018: $45
	and b                                            ; $4019: $a0
	ld b, [hl]                                       ; $401a: $46
	ld d, d                                          ; $401b: $52
	ld d, a                                          ; $401c: $57
	xor h                                            ; $401d: $ac
	ldh a, [rBGP]                                    ; $401e: $f0 $47
	ldh a, [$2a]                                     ; $4020: $f0 $2a
	ld c, e                                          ; $4022: $4b
	ld a, [hl-]                                      ; $4023: $3a
	jr c, jr_092_4070                                ; $4024: $38 $4a

	ld d, c                                          ; $4026: $51
	ld e, l                                          ; $4027: $5d
	ld e, d                                          ; $4028: $5a
	ld c, b                                          ; $4029: $48
	and b                                            ; $402a: $a0
	cpl                                              ; $402b: $2f
	ld b, e                                          ; $402c: $43
	jp hl                                            ; $402d: $e9


	xor a                                            ; $402e: $af
	xor b                                            ; $402f: $a8
	add sp, $4f                                      ; $4030: $e8 $4f
	xor b                                            ; $4032: $a8
	ld [$a0c6], a                                    ; $4033: $ea $c6 $a0
	xor $2d                                          ; $4036: $ee $2d
	inc [hl]                                         ; $4038: $34
	ld b, b                                          ; $4039: $40
	add hl, sp                                       ; $403a: $39
	ld a, $52                                        ; $403b: $3e $52
	ld d, c                                          ; $403d: $51
	and b                                            ; $403e: $a0
	db $ed                                           ; $403f: $ed
	ld c, c                                          ; $4040: $49

jr_092_4041:
	ld c, d                                          ; $4041: $4a
	ld d, c                                          ; $4042: $51
	ld c, h                                          ; $4043: $4c
	xor b                                            ; $4044: $a8
	ld d, d                                          ; $4045: $52
	ld c, [hl]                                       ; $4046: $4e
	ld c, d                                          ; $4047: $4a
	inc [hl]                                         ; $4048: $34
	ldh a, [c]                                       ; $4049: $f2

jr_092_404a:
	ld b, l                                          ; $404a: $45
	ld b, d                                          ; $404b: $42
	db $f4                                           ; $404c: $f4
	ld [hl], b                                       ; $404d: $70
	ldh a, [c]                                       ; $404e: $f2
	and l                                            ; $404f: $a5
	ld b, d                                          ; $4050: $42
	inc de                                           ; $4051: $13
	ldh a, [$f1]                                     ; $4052: $f0 $f1
	ld h, l                                          ; $4054: $65
	add e                                            ; $4055: $83
	ld h, d                                          ; $4056: $62
	ld [hl], d                                       ; $4057: $72
	ccf                                              ; $4058: $3f
	jr c, jr_092_40a9                                ; $4059: $38 $4e

	ld l, h                                          ; $405b: $6c
	dec a                                            ; $405c: $3d
	db $38, $a0                                      ; $405d: $38 $a0
	cpl                                              ; $405f: $2f
	ld b, e                                          ; $4060: $43
	rst JumpTable                                          ; $4061: $c7
	xor b                                            ; $4062: $a8
	ld a, a                                          ; $4063: $7f
	ld b, a                                          ; $4064: $47
	sub [hl]                                         ; $4065: $96
	dec sp                                           ; $4066: $3b
	ccf                                              ; $4067: $3f
	ld c, a                                          ; $4068: $4f
	ld d, b                                          ; $4069: $50
	ld e, [hl]                                       ; $406a: $5e
	ccf                                              ; $406b: $3f
	xor h                                            ; $406c: $ac
	db $eb                                           ; $406d: $eb
	ld e, a                                          ; $406e: $5f
	and b                                            ; $406f: $a0

jr_092_4070:
	cpl                                              ; $4070: $2f
	ld b, e                                          ; $4071: $43
	ld b, b                                          ; $4072: $40
	add hl, sp                                       ; $4073: $39
	ld b, h                                          ; $4074: $44
	ld c, h                                          ; $4075: $4c
	xor b                                            ; $4076: $a8
	or h                                             ; $4077: $b4
	inc [hl]                                         ; $4078: $34
	ld h, h                                          ; $4079: $64
	pop af                                           ; $407a: $f1
	ld d, a                                          ; $407b: $57
	jr c, @-$6c                                      ; $407c: $38 $92

	adc [hl]                                         ; $407e: $8e
	ld e, a                                          ; $407f: $5f
	add hl, sp                                       ; $4080: $39
	ld c, h                                          ; $4081: $4c
	and b                                            ; $4082: $a0
	ld b, l                                          ; $4083: $45
	ld e, a                                          ; $4084: $5f
	ld a, $3c                                        ; $4085: $3e $3c
	dec sp                                           ; $4087: $3b
	dec a                                            ; $4088: $3d
	ld d, b                                          ; $4089: $50
	xor h                                            ; $408a: $ac
	ldh a, [rSCX]                                    ; $408b: $f0 $43
	ldh a, [$b8]                                     ; $408d: $f0 $b8
	adc a                                            ; $408f: $8f
	ld b, d                                          ; $4090: $42
	ldh a, [$38]                                     ; $4091: $f0 $38
	ld b, a                                          ; $4093: $47
	ld c, a                                          ; $4094: $4f
	xor h                                            ; $4095: $ac
	ldh a, [$d2]                                     ; $4096: $f0 $d2
	ld h, d                                          ; $4098: $62
	sub h                                            ; $4099: $94
	ld a, $3f                                        ; $409a: $3e $3f
	ld d, l                                          ; $409c: $55
	ld b, h                                          ; $409d: $44
	ld e, b                                          ; $409e: $58
	jr c, jr_092_4041                                ; $409f: $38 $a0

	ld b, [hl]                                       ; $40a1: $46
	dec sp                                           ; $40a2: $3b
	xor h                                            ; $40a3: $ac
	db $ec                                           ; $40a4: $ec
	push bc                                          ; $40a5: $c5
	db $eb                                           ; $40a6: $eb
	ld [hl], d                                       ; $40a7: $72
	ld c, b                                          ; $40a8: $48

jr_092_40a9:
	and b                                            ; $40a9: $a0
	cpl                                              ; $40aa: $2f
	ld b, e                                          ; $40ab: $43
	ld b, b                                          ; $40ac: $40
	add hl, sp                                       ; $40ad: $39
	ld b, h                                          ; $40ae: $44
	ld c, h                                          ; $40af: $4c
	xor b                                            ; $40b0: $a8
	or h                                             ; $40b1: $b4
	xor h                                            ; $40b2: $ac
	ld h, h                                          ; $40b3: $64
	pop af                                           ; $40b4: $f1
	ld d, a                                          ; $40b5: $57
	jr c, jr_092_404a                                ; $40b6: $38 $92

	adc [hl]                                         ; $40b8: $8e
	ld e, a                                          ; $40b9: $5f
	add hl, sp                                       ; $40ba: $39
	ld c, h                                          ; $40bb: $4c
	and b                                            ; $40bc: $a0
	xor $2d                                          ; $40bd: $ee $2d
	xor b                                            ; $40bf: $a8
	ldh a, [rSCX]                                    ; $40c0: $f0 $43
	ldh a, [$b8]                                     ; $40c2: $f0 $b8
	adc a                                            ; $40c4: $8f
	ld b, d                                          ; $40c5: $42
	ldh a, [$38]                                     ; $40c6: $f0 $38
	ld b, a                                          ; $40c8: $47
	ld c, a                                          ; $40c9: $4f
	xor h                                            ; $40ca: $ac
	jp hl                                            ; $40cb: $e9


	ld c, $a0                                        ; $40cc: $0e $a0
	jp z, $f0ac                                      ; $40ce: $ca $ac $f0

	ld b, e                                          ; $40d1: $43
	ldh a, [$b8]                                     ; $40d2: $f0 $b8
	adc a                                            ; $40d4: $8f
	ld b, d                                          ; $40d5: $42
	ldh a, [$38]                                     ; $40d6: $f0 $38
	ld b, a                                          ; $40d8: $47
	ld c, a                                          ; $40d9: $4f
	xor h                                            ; $40da: $ac
	jp hl                                            ; $40db: $e9


	ld c, $a0                                        ; $40dc: $0e $a0
	xor $2d                                          ; $40de: $ee $2d
	inc [hl]                                         ; $40e0: $34
	or [hl]                                          ; $40e1: $b6
	and b                                            ; $40e2: $a0
	xor $2d                                          ; $40e3: $ee $2d
	xor b                                            ; $40e5: $a8
	ld c, d                                          ; $40e6: $4a
	ld c, e                                          ; $40e7: $4b
	inc [hl]                                         ; $40e8: $34
	db $eb                                           ; $40e9: $eb
	ld e, d                                          ; $40ea: $5a
	and b                                            ; $40eb: $a0
	cpl                                              ; $40ec: $2f
	ld b, e                                          ; $40ed: $43
	ld b, [hl]                                       ; $40ee: $46
	ld c, l                                          ; $40ef: $4d
	xor h                                            ; $40f0: $ac
	db $ec                                           ; $40f1: $ec
	rst SubAFromDE                                          ; $40f2: $df
	ld d, e                                          ; $40f3: $53
	jr c, jr_092_4130                                ; $40f4: $38 $3a

	jr c, @-$56                                      ; $40f6: $38 $a8

	ld [$1343], a                                    ; $40f8: $ea $43 $13
	jp hl                                            ; $40fb: $e9


	cp l                                             ; $40fc: $bd
	ld c, b                                          ; $40fd: $48
	and b                                            ; $40fe: $a0
	cpl                                              ; $40ff: $2f
	ld b, e                                          ; $4100: $43
	ld b, [hl]                                       ; $4101: $46
	dec sp                                           ; $4102: $3b
	inc [hl]                                         ; $4103: $34
	db $ec                                           ; $4104: $ec
	rst SubAFromDE                                          ; $4105: $df
	xor b                                            ; $4106: $a8
	add a                                            ; $4107: $87
	ldh a, [$5b]                                     ; $4108: $f0 $5b
	ldh a, [$5e]                                     ; $410a: $f0 $5e
	and c                                            ; $410c: $a1
	add hl, sp                                       ; $410d: $39
	inc [hl]                                         ; $410e: $34
	xor $1f                                          ; $410f: $ee $1f
	ld c, b                                          ; $4111: $48
	and b                                            ; $4112: $a0
	cpl                                              ; $4113: $2f
	ld b, e                                          ; $4114: $43
	db $ec                                           ; $4115: $ec
	cp c                                             ; $4116: $b9
	inc [hl]                                         ; $4117: $34
	ld a, a                                          ; $4118: $7f
	ld d, e                                          ; $4119: $53
	add b                                            ; $411a: $80
	jr c, jr_092_415c                                ; $411b: $38 $3f

	and b                                            ; $411d: $a0
	ld d, c                                          ; $411e: $51
	inc [hl]                                         ; $411f: $34
	ld d, c                                          ; $4120: $51
	jr c, jr_092_4175                                ; $4121: $38 $52

	ld a, c                                          ; $4123: $79
	ld b, c                                          ; $4124: $41
	xor b                                            ; $4125: $a8
	db $ed                                           ; $4126: $ed
	ld hl, sp+$34                                    ; $4127: $f8 $34
	db $eb                                           ; $4129: $eb
	ld a, d                                          ; $412a: $7a
	jr c, jr_092_4181                                ; $412b: $38 $54

	ld c, c                                          ; $412d: $49
	ld d, e                                          ; $412e: $53
	inc de                                           ; $412f: $13

jr_092_4130:
	ldh a, [c]                                       ; $4130: $f2
	rlca                                             ; $4131: $07
	ld e, h                                          ; $4132: $5c
	dec a                                            ; $4133: $3d
	ld b, d                                          ; $4134: $42
	ld c, d                                          ; $4135: $4a
	ld c, b                                          ; $4136: $48
	and b                                            ; $4137: $a0
	cpl                                              ; $4138: $2f
	ld b, e                                          ; $4139: $43
	add a                                            ; $413a: $87
	ldh a, [$5b]                                     ; $413b: $f0 $5b
	ldh a, [$5e]                                     ; $413d: $f0 $5e
	xor c                                            ; $413f: $a9
	ld a, a                                          ; $4140: $7f
	pop af                                           ; $4141: $f1
	ld a, [de]                                       ; $4142: $1a
	ld d, c                                          ; $4143: $51
	ld c, [hl]                                       ; $4144: $4e
	ldh a, [$08]                                     ; $4145: $f0 $08
	ld e, d                                          ; $4147: $5a
	inc [hl]                                         ; $4148: $34
	db $ec                                           ; $4149: $ec
	ld de, $eb13                                     ; $414a: $11 $13 $eb
	ld d, [hl]                                       ; $414d: $56
	ld l, h                                          ; $414e: $6c
	dec a                                            ; $414f: $3d
	jr c, jr_092_4196                                ; $4150: $38 $44

	ld c, h                                          ; $4152: $4c
	and b                                            ; $4153: $a0
	xor $2d                                          ; $4154: $ee $2d
	inc [hl]                                         ; $4156: $34
	db $eb                                           ; $4157: $eb

Call_092_4158:
	ld l, b                                          ; $4158: $68
	xor b                                            ; $4159: $a8
	xor $05                                          ; $415a: $ee $05

jr_092_415c:
	ld c, d                                          ; $415c: $4a
	ld d, c                                          ; $415d: $51
	ld c, h                                          ; $415e: $4c
	inc [hl]                                         ; $415f: $34
	ld d, h                                          ; $4160: $54
	ld b, c                                          ; $4161: $41
	ld a, [hl-]                                      ; $4162: $3a
	sbc d                                            ; $4163: $9a
	ld c, d                                          ; $4164: $4a
	inc de                                           ; $4165: $13
	ld a, a                                          ; $4166: $7f
	ld h, d                                          ; $4167: $62
	ldh a, [rHDMA5]                                  ; $4168: $f0 $55
	dec sp                                           ; $416a: $3b
	ccf                                              ; $416b: $3f
	dec a                                            ; $416c: $3d
	ld d, b                                          ; $416d: $50
	ld c, b                                          ; $416e: $48
	and b                                            ; $416f: $a0
	cpl                                              ; $4170: $2f
	ld b, e                                          ; $4171: $43
	ld d, h                                          ; $4172: $54
	ld c, l                                          ; $4173: $4d
	inc a                                            ; $4174: $3c

jr_092_4175:
	ld d, b                                          ; $4175: $50
	xor h                                            ; $4176: $ac
	db $ed                                           ; $4177: $ed
	ld l, d                                          ; $4178: $6a
	add a                                            ; $4179: $87
	ldh a, [rHDMA3]                                  ; $417a: $f0 $53
	ld d, e                                          ; $417c: $53
	ld b, [hl]                                       ; $417d: $46
	ld c, [hl]                                       ; $417e: $4e
	ld b, c                                          ; $417f: $41
	ld c, d                                          ; $4180: $4a

jr_092_4181:
	ld a, $66                                        ; $4181: $3e $66
	add hl, sp                                       ; $4183: $39
	xor c                                            ; $4184: $a9
	ret                                              ; $4185: $c9


	db $ed                                           ; $4186: $ed
	ld h, h                                          ; $4187: $64
	ld b, h                                          ; $4188: $44
	ld a, [hl-]                                      ; $4189: $3a
	ld [hl], h                                       ; $418a: $74
	and b                                            ; $418b: $a0
	db $ed                                           ; $418c: $ed
	ld h, h                                          ; $418d: $64
	inc a                                            ; $418e: $3c
	ld e, l                                          ; $418f: $5d
	ccf                                              ; $4190: $3f
	xor h                                            ; $4191: $ac
	ld d, c                                          ; $4192: $51
	jr c, jr_092_41e7                                ; $4193: $38 $52

	ld a, c                                          ; $4195: $79

jr_092_4196:
	ld b, c                                          ; $4196: $41
	xor b                                            ; $4197: $a8
	ld c, d                                          ; $4198: $4a
	ld c, a                                          ; $4199: $4f
	inc [hl]                                         ; $419a: $34
	ld c, a                                          ; $419b: $4f
	add hl, sp                                       ; $419c: $39
	inc [hl]                                         ; $419d: $34
	ld d, c                                          ; $419e: $51
	dec sp                                           ; $419f: $3b
	inc a                                            ; $41a0: $3c
	ld d, a                                          ; $41a1: $57
	inc de                                           ; $41a2: $13
	pop af                                           ; $41a3: $f1
	rra                                              ; $41a4: $1f
	ld a, a                                          ; $41a5: $7f
	ld c, d                                          ; $41a6: $4a
	ld d, c                                          ; $41a7: $51
	inc a                                            ; $41a8: $3c
	ld d, b                                          ; $41a9: $50
	ld c, b                                          ; $41aa: $48
	and b                                            ; $41ab: $a0
	cpl                                              ; $41ac: $2f
	ld b, e                                          ; $41ad: $43
	ld b, b                                          ; $41ae: $40
	ld c, l                                          ; $41af: $4d
	ld a, [hl-]                                      ; $41b0: $3a
	ld d, b                                          ; $41b1: $50
	inc [hl]                                         ; $41b2: $34
	db $ed                                           ; $41b3: $ed
	sbc l                                            ; $41b4: $9d
	ldh a, [$df]                                     ; $41b5: $f0 $df
	ld d, d                                          ; $41b7: $52
	ld c, d                                          ; $41b8: $4a
	xor h                                            ; $41b9: $ac
	xor $06                                          ; $41ba: $ee $06
	ld b, a                                          ; $41bc: $47
	ld h, a                                          ; $41bd: $67
	ld d, l                                          ; $41be: $55
	ld b, l                                          ; $41bf: $45
	and b                                            ; $41c0: $a0
	db $eb                                           ; $41c1: $eb
	ld l, b                                          ; $41c2: $68
	xor b                                            ; $41c3: $a8
	pop af                                           ; $41c4: $f1
	or c                                             ; $41c5: $b1
	ldh a, [c]                                       ; $41c6: $f2
	ld [hl], l                                       ; $41c7: $75
	ld d, e                                          ; $41c8: $53
	inc a                                            ; $41c9: $3c
	inc a                                            ; $41ca: $3c
	ld d, a                                          ; $41cb: $57
	ld d, d                                          ; $41cc: $52
	ld d, c                                          ; $41cd: $51
	inc a                                            ; $41ce: $3c
	ld d, b                                          ; $41cf: $50
	xor l                                            ; $41d0: $ad
	jp z, $a048                                      ; $41d1: $ca $48 $a0

	cpl                                              ; $41d4: $2f
	ld b, e                                          ; $41d5: $43
	pop af                                           ; $41d6: $f1
	or c                                             ; $41d7: $b1
	ldh a, [c]                                       ; $41d8: $f2
	ld [hl], l                                       ; $41d9: $75
	ld a, [hl-]                                      ; $41da: $3a
	ld b, c                                          ; $41db: $41
	inc a                                            ; $41dc: $3c
	ld e, e                                          ; $41dd: $5b
	ld d, [hl]                                       ; $41de: $56
	inc de                                           ; $41df: $13
	ld a, [hl-]                                      ; $41e0: $3a
	jr c, @+$44                                      ; $41e1: $38 $42

	ld b, a                                          ; $41e3: $47
	ld c, b                                          ; $41e4: $48
	and b                                            ; $41e5: $a0
	cpl                                              ; $41e6: $2f

jr_092_41e7:
	ld b, e                                          ; $41e7: $43
	ld d, h                                          ; $41e8: $54
	ld d, h                                          ; $41e9: $54
	ld c, d                                          ; $41ea: $4a
	inc [hl]                                         ; $41eb: $34
	ret                                              ; $41ec: $c9


	inc de                                           ; $41ed: $13
	ldh a, [hDisp1_LCDC]                                     ; $41ee: $f0 $8f
	ld b, c                                          ; $41f0: $41
	ld c, d                                          ; $41f1: $4a
	jr c, jr_092_4249                                ; $41f2: $38 $55

	ld c, c                                          ; $41f4: $49
	jr c, jr_092_422f                                ; $41f5: $38 $38

	ld b, l                                          ; $41f7: $45
	and b                                            ; $41f8: $a0
	jp hl                                            ; $41f9: $e9


	inc d                                            ; $41fa: $14
	xor b                                            ; $41fb: $a8
	ld c, d                                          ; $41fc: $4a
	ld c, a                                          ; $41fd: $4f
	inc [hl]                                         ; $41fe: $34
	db $ed                                           ; $41ff: $ed
	ld l, d                                          ; $4200: $6a
	add a                                            ; $4201: $87
	ldh a, [rHDMA3]                                  ; $4202: $f0 $53
	ld d, e                                          ; $4204: $53
	ldh a, [$bb]                                     ; $4205: $f0 $bb
	ld d, d                                          ; $4207: $52
	dec sp                                           ; $4208: $3b
	ccf                                              ; $4209: $3f
	inc de                                           ; $420a: $13
	ld a, $52                                        ; $420b: $3e $52
	add hl, sp                                       ; $420d: $39
	ld b, d                                          ; $420e: $42
	ld c, d                                          ; $420f: $4a
	ld c, b                                          ; $4210: $48
	and b                                            ; $4211: $a0
	cpl                                              ; $4212: $2f
	ld b, e                                          ; $4213: $43
	db $ec                                           ; $4214: $ec
	rst SubAFromDE                                          ; $4215: $df
	xor h                                            ; $4216: $ac
	ldh a, [rSCX]                                    ; $4217: $f0 $43
	ldh a, [$b8]                                     ; $4219: $f0 $b8
	adc a                                            ; $421b: $8f
	ld a, [hl-]                                      ; $421c: $3a
	ld b, c                                          ; $421d: $41
	ld b, h                                          ; $421e: $44

jr_092_421f:
	xor l                                            ; $421f: $ad
	ld b, b                                          ; $4220: $40
	ld b, c                                          ; $4221: $41
	ld a, [hl-]                                      ; $4222: $3a
	pop af                                           ; $4223: $f1
	ld de, $65f0                                     ; $4224: $11 $f0 $65
	ld c, d                                          ; $4227: $4a
	add a                                            ; $4228: $87
	ldh a, [$5b]                                     ; $4229: $f0 $5b
	ldh a, [$5e]                                     ; $422b: $f0 $5e
	xor c                                            ; $422d: $a9
	db $ed                                           ; $422e: $ed

jr_092_422f:
	ld h, h                                          ; $422f: $64
	ld b, h                                          ; $4230: $44
	ld a, [hl-]                                      ; $4231: $3a
	ld [hl], h                                       ; $4232: $74
	ld c, b                                          ; $4233: $48
	and b                                            ; $4234: $a0
	cpl                                              ; $4235: $2f
	ld b, e                                          ; $4236: $43
	ret                                              ; $4237: $c9


	inc [hl]                                         ; $4238: $34
	db $ed                                           ; $4239: $ed
	ld h, h                                          ; $423a: $64
	ld b, h                                          ; $423b: $44
	inc a                                            ; $423c: $3c
	ld d, b                                          ; $423d: $50
	xor h                                            ; $423e: $ac
	xor $06                                          ; $423f: $ee $06
	ld b, a                                          ; $4241: $47
	db $ed                                           ; $4242: $ed
	rra                                              ; $4243: $1f
	ld b, a                                          ; $4244: $47
	ld h, a                                          ; $4245: $67
	ld d, h                                          ; $4246: $54
	add hl, sp                                       ; $4247: $39
	and b                                            ; $4248: $a0

jr_092_4249:
	ret                                              ; $4249: $c9


	ld b, h                                          ; $424a: $44
	ld e, l                                          ; $424b: $5d
	xor h                                            ; $424c: $ac
	db $eb                                           ; $424d: $eb
	sub c                                            ; $424e: $91
	inc de                                           ; $424f: $13
	ld e, h                                          ; $4250: $5c
	dec a                                            ; $4251: $3d
	ld b, c                                          ; $4252: $41
	ld c, d                                          ; $4253: $4a
	ld d, c                                          ; $4254: $51
	and b                                            ; $4255: $a0
	cpl                                              ; $4256: $2f
	ld b, e                                          ; $4257: $43
	ld h, e                                          ; $4258: $63
	ldh a, [rAUD1SWEEP]                              ; $4259: $f0 $10
	ld h, e                                          ; $425b: $63
	ldh a, [rAUD1SWEEP]                              ; $425c: $f0 $10
	xor h                                            ; $425e: $ac
	ld [$a01f], a                                    ; $425f: $ea $1f $a0
	db $eb                                           ; $4262: $eb
	ld l, b                                          ; $4263: $68
	xor b                                            ; $4264: $a8
	jp hl                                            ; $4265: $e9


	add b                                            ; $4266: $80
	xor l                                            ; $4267: $ad
	jp z, $a048                                      ; $4268: $ca $48 $a0

	cpl                                              ; $426b: $2f
	ld b, e                                          ; $426c: $43
	add a                                            ; $426d: $87
	ldh a, [$5b]                                     ; $426e: $f0 $5b
	ldh a, [$5e]                                     ; $4270: $f0 $5e
	inc a                                            ; $4272: $3c
	ld a, [hl-]                                      ; $4273: $3a
	ld [hl], h                                       ; $4274: $74
	ld c, b                                          ; $4275: $48
	and b                                            ; $4276: $a0
	ret                                              ; $4277: $c9


	ld b, h                                          ; $4278: $44
	ld e, l                                          ; $4279: $5d
	xor h                                            ; $427a: $ac
	db $eb                                           ; $427b: $eb
	sub c                                            ; $427c: $91
	ld e, h                                          ; $427d: $5c
	ld d, d                                          ; $427e: $52
	ld a, $3d                                        ; $427f: $3e $3d
	and b                                            ; $4281: $a0
	jr c, jr_092_42e2                                ; $4282: $38 $5e

	inc [hl]                                         ; $4284: $34
	ld b, b                                          ; $4285: $40
	add hl, sp                                       ; $4286: $39
	jr c, jr_092_42c2                                ; $4287: $38 $39

	pop af                                           ; $4289: $f1
	dec bc                                           ; $428a: $0b
	ld c, d                                          ; $428b: $4a
	ld c, e                                          ; $428c: $4b
	inc de                                           ; $428d: $13
	ld a, [hl-]                                      ; $428e: $3a
	jr c, jr_092_42d3                                ; $428f: $38 $42

	ld c, d                                          ; $4291: $4a
	ld d, c                                          ; $4292: $51
	ld e, l                                          ; $4293: $5d
	ld e, d                                          ; $4294: $5a
	ld c, b                                          ; $4295: $48
	and b                                            ; $4296: $a0
	xor $2d                                          ; $4297: $ee $2d
	inc [hl]                                         ; $4299: $34
	db $eb                                           ; $429a: $eb
	ld l, b                                          ; $429b: $68
	xor b                                            ; $429c: $a8
	jr c, jr_092_421f                                ; $429d: $38 $80

	ld c, a                                          ; $429f: $4f
	ld b, d                                          ; $42a0: $42
	ld d, h                                          ; $42a1: $54
	ld c, c                                          ; $42a2: $49
	ld c, d                                          ; $42a3: $4a
	ld d, c                                          ; $42a4: $51
	inc a                                            ; $42a5: $3c
	ld d, b                                          ; $42a6: $50
	and b                                            ; $42a7: $a0
	db $eb                                           ; $42a8: $eb
	ld l, b                                          ; $42a9: $68
	xor b                                            ; $42aa: $a8
	ld c, a                                          ; $42ab: $4f
	add hl, sp                                       ; $42ac: $39
	pop af                                           ; $42ad: $f1
	ld l, c                                          ; $42ae: $69
	ld a, a                                          ; $42af: $7f
	ld c, d                                          ; $42b0: $4a
	ld d, c                                          ; $42b1: $51
	inc a                                            ; $42b2: $3c
	ld d, b                                          ; $42b3: $50
	xor l                                            ; $42b4: $ad
	jp z, $a048                                      ; $42b5: $ca $48 $a0

	cpl                                              ; $42b8: $2f
	ld b, e                                          ; $42b9: $43
	db $eb                                           ; $42ba: $eb
	rst FarCall                                          ; $42bb: $f7
	xor c                                            ; $42bc: $a9
	db $ec                                           ; $42bd: $ec
	rst SubAFromDE                                          ; $42be: $df
	and b                                            ; $42bf: $a0
	ret                                              ; $42c0: $c9


	inc [hl]                                         ; $42c1: $34

jr_092_42c2:
	ld [hl], c                                       ; $42c2: $71
	ld d, d                                          ; $42c3: $52
	jr c, @+$55                                      ; $42c4: $38 $53

	inc de                                           ; $42c6: $13
	ld d, c                                          ; $42c7: $51
	ld c, [hl]                                       ; $42c8: $4e
	ld b, d                                          ; $42c9: $42
	ld c, d                                          ; $42ca: $4a
	inc [hl]                                         ; $42cb: $34
	db $ed                                           ; $42cc: $ed
	rra                                              ; $42cd: $1f
	ld b, a                                          ; $42ce: $47
	ld c, b                                          ; $42cf: $48
	and b                                            ; $42d0: $a0
	cpl                                              ; $42d1: $2f
	ld b, e                                          ; $42d2: $43

jr_092_42d3:
	add a                                            ; $42d3: $87
	ldh a, [$5b]                                     ; $42d4: $f0 $5b
	ldh a, [$5e]                                     ; $42d6: $f0 $5e
	xor c                                            ; $42d8: $a9
	pop af                                           ; $42d9: $f1
	pop af                                           ; $42da: $f1
	dec sp                                           ; $42db: $3b
	ccf                                              ; $42dc: $3f
	db $ec                                           ; $42dd: $ec
	rlca                                             ; $42de: $07
	and c                                            ; $42df: $a1
	cpl                                              ; $42e0: $2f
	ld b, e                                          ; $42e1: $43

jr_092_42e2:
	add a                                            ; $42e2: $87
	ldh a, [$5b]                                     ; $42e3: $f0 $5b
	ldh a, [$5e]                                     ; $42e5: $f0 $5e
	inc a                                            ; $42e7: $3c
	ld a, [hl-]                                      ; $42e8: $3a
	ld [hl], h                                       ; $42e9: $74
	and b                                            ; $42ea: $a0
	cpl                                              ; $42eb: $2f
	ld b, e                                          ; $42ec: $43
	ld b, [hl]                                       ; $42ed: $46
	dec sp                                           ; $42ee: $3b
	inc [hl]                                         ; $42ef: $34
	db $ec                                           ; $42f0: $ec
	rst SubAFromDE                                          ; $42f1: $df
	xor b                                            ; $42f2: $a8
	add sp, $4f                                      ; $42f3: $e8 $4f
	xor b                                            ; $42f5: $a8
	jp hl                                            ; $42f6: $e9


	call nc, $b6a0                                   ; $42f7: $d4 $a0 $b6
	xor l                                            ; $42fa: $ad
	db $ec                                           ; $42fb: $ec
	add hl, bc                                       ; $42fc: $09
	ld c, d                                          ; $42fd: $4a
	ld d, c                                          ; $42fe: $51
	inc a                                            ; $42ff: $3c
	ld d, b                                          ; $4300: $50
	and b                                            ; $4301: $a0
	cpl                                              ; $4302: $2f
	ld b, e                                          ; $4303: $43
	ld b, [hl]                                       ; $4304: $46
	dec sp                                           ; $4305: $3b
	inc [hl]                                         ; $4306: $34
	db $ec                                           ; $4307: $ec
	rst SubAFromDE                                          ; $4308: $df
	xor b                                            ; $4309: $a8
	add sp, -$71                                     ; $430a: $e8 $8f
	and c                                            ; $430c: $a1
	ld e, [hl]                                       ; $430d: $5e
	dec sp                                           ; $430e: $3b
	inc [hl]                                         ; $430f: $34
	ld c, d                                          ; $4310: $4a
	ld c, a                                          ; $4311: $4f
	xor l                                            ; $4312: $ad
	ld l, a                                          ; $4313: $6f
	inc [hl]                                         ; $4314: $34
	ld b, [hl]                                       ; $4315: $46
	ld d, d                                          ; $4316: $52
	ld d, a                                          ; $4317: $57
	ldh a, [$8a]                                     ; $4318: $f0 $8a
	ldh a, [rHDMA2]                                  ; $431a: $f0 $52
	ld d, l                                          ; $431c: $55
	ld a, [hl-]                                      ; $431d: $3a
	jr c, jr_092_435e                                ; $431e: $38 $3e

	ld c, b                                          ; $4320: $48
	and b                                            ; $4321: $a0
	cpl                                              ; $4322: $2f
	ld b, e                                          ; $4323: $43
	add a                                            ; $4324: $87
	ldh a, [$5b]                                     ; $4325: $f0 $5b
	ldh a, [$5e]                                     ; $4327: $f0 $5e
	inc [hl]                                         ; $4329: $34
	add a                                            ; $432a: $87
	ldh a, [$5b]                                     ; $432b: $f0 $5b
	ldh a, [$5e]                                     ; $432d: $f0 $5e
	xor b                                            ; $432f: $a8
	ret                                              ; $4330: $c9


	ldh a, [rOBP0]                                   ; $4331: $f0 $48
	inc a                                            ; $4333: $3c
	ld a, [hl-]                                      ; $4334: $3a
	jr c, jr_092_4381                                ; $4335: $38 $4a

	ld b, l                                          ; $4337: $45
	ld c, b                                          ; $4338: $48
	and b                                            ; $4339: $a0
	cpl                                              ; $433a: $2f
	ld b, e                                          ; $433b: $43
	ld [$a84a], a                                    ; $433c: $ea $4a $a8
	ld e, d                                          ; $433f: $5a
	add hl, sp                                       ; $4340: $39
	and c                                            ; $4341: $a1
	ld d, h                                          ; $4342: $54
	ld c, l                                          ; $4343: $4d
	ld d, e                                          ; $4344: $53
	ld l, a                                          ; $4345: $6f
	ld c, d                                          ; $4346: $4a
	ld d, c                                          ; $4347: $51
	inc a                                            ; $4348: $3c
	ld c, b                                          ; $4349: $48
	xor c                                            ; $434a: $a9
	pop af                                           ; $434b: $f1
	ld a, [hl]                                       ; $434c: $7e
	ld l, h                                          ; $434d: $6c
	dec a                                            ; $434e: $3d
	jr c, jr_092_4399                                ; $434f: $38 $48

	and b                                            ; $4351: $a0
	cpl                                              ; $4352: $2f
	ld b, e                                          ; $4353: $43
	ld c, h                                          ; $4354: $4c
	inc [hl]                                         ; $4355: $34
	ldh a, [$8a]                                     ; $4356: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4358: $f0 $52
	ld d, l                                          ; $435a: $55
	ldh a, [$bd]                                     ; $435b: $f0 $bd
	ld e, l                                          ; $435d: $5d

jr_092_435e:
	dec a                                            ; $435e: $3d
	inc de                                           ; $435f: $13
	ld c, d                                          ; $4360: $4a
	ld a, $66                                        ; $4361: $3e $66
	add hl, sp                                       ; $4363: $39
	and c                                            ; $4364: $a1
	db $ec                                           ; $4365: $ec
	reti                                             ; $4366: $d9


	xor h                                            ; $4367: $ac
	pop af                                           ; $4368: $f1
	rra                                              ; $4369: $1f
	ld d, e                                          ; $436a: $53
	ldh a, [$5c]                                     ; $436b: $f0 $5c
	jr c, @+$3e                                      ; $436d: $38 $3c

	ld d, b                                          ; $436f: $50
	ld c, b                                          ; $4370: $48
	and b                                            ; $4371: $a0
	cpl                                              ; $4372: $2f
	ld b, e                                          ; $4373: $43
	ld [hl], b                                       ; $4374: $70
	inc [hl]                                         ; $4375: $34
	ld [hl], b                                       ; $4376: $70
	ld [hl], c                                       ; $4377: $71
	ld b, c                                          ; $4378: $41
	ld c, h                                          ; $4379: $4c
	xor h                                            ; $437a: $ac
	ldh a, [$a3]                                     ; $437b: $f0 $a3
	ldh a, [$0b]                                     ; $437d: $f0 $0b
	ld c, d                                          ; $437f: $4a
	ld c, b                                          ; $4380: $48

jr_092_4381:
	and b                                            ; $4381: $a0
	ld e, [hl]                                       ; $4382: $5e
	dec sp                                           ; $4383: $3b
	inc [hl]                                         ; $4384: $34
	ld c, d                                          ; $4385: $4a
	ld c, a                                          ; $4386: $4f
	xor l                                            ; $4387: $ad
	or [hl]                                          ; $4388: $b6
	ld c, b                                          ; $4389: $48
	inc [hl]                                         ; $438a: $34
	ld [$a0b6], a                                    ; $438b: $ea $b6 $a0
	cpl                                              ; $438e: $2f
	ld b, e                                          ; $438f: $43
	ldh a, [$8a]                                     ; $4390: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4392: $f0 $52
	ld d, l                                          ; $4394: $55
	ldh a, [$bd]                                     ; $4395: $f0 $bd
	ld e, l                                          ; $4397: $5d
	dec a                                            ; $4398: $3d

jr_092_4399:
	ld c, d                                          ; $4399: $4a
	ld a, $66                                        ; $439a: $3e $66
	add hl, sp                                       ; $439c: $39
	and c                                            ; $439d: $a1
	db $eb                                           ; $439e: $eb
	ld e, b                                          ; $439f: $58
	ld c, d                                          ; $43a0: $4a
	ld d, c                                          ; $43a1: $51
	inc a                                            ; $43a2: $3c
	ld c, b                                          ; $43a3: $48
	and b                                            ; $43a4: $a0
	xor $2d                                          ; $43a5: $ee $2d
	inc [hl]                                         ; $43a7: $34
	or [hl]                                          ; $43a8: $b6

jr_092_43a9:
	xor b                                            ; $43a9: $a8
	ld [$a0b6], a                                    ; $43aa: $ea $b6 $a0
	ldh a, [$3e]                                     ; $43ad: $f0 $3e
	ldh a, [$0b]                                     ; $43af: $f0 $0b
	ld c, d                                          ; $43b1: $4a
	ld d, c                                          ; $43b2: $51
	ld c, h                                          ; $43b3: $4c
	xor b                                            ; $43b4: $a8
	ld c, d                                          ; $43b5: $4a
	ld c, a                                          ; $43b6: $4f
	inc [hl]                                         ; $43b7: $34
	ld d, h                                          ; $43b8: $54
	ld b, c                                          ; $43b9: $41
	ld a, [hl-]                                      ; $43ba: $3a
	ld b, a                                          ; $43bb: $47
	inc de                                           ; $43bc: $13
	ldh a, [$8a]                                     ; $43bd: $f0 $8a
	ldh a, [rHDMA2]                                  ; $43bf: $f0 $52
	ld d, l                                          ; $43c1: $55
	ld a, [hl-]                                      ; $43c2: $3a
	jr c, jr_092_440f                                ; $43c3: $38 $4a

	ld d, c                                          ; $43c5: $51
	ld b, l                                          ; $43c6: $45
	and b                                            ; $43c7: $a0
	cpl                                              ; $43c8: $2f
	ld b, e                                          ; $43c9: $43
	jr c, jr_092_443a                                ; $43ca: $38 $6e

	jr c, jr_092_443c                                ; $43cc: $38 $6e

	xor h                                            ; $43ce: $ac
	halt                                             ; $43cf: $76
	ld b, d                                          ; $43d0: $42
	ldh a, [$3f]                                     ; $43d1: $f0 $3f
	ld c, e                                          ; $43d3: $4b
	pop af                                           ; $43d4: $f1
	ld a, [hl]                                       ; $43d5: $7e
	ld h, d                                          ; $43d6: $62
	add b                                            ; $43d7: $80
	ld e, l                                          ; $43d8: $5d
	ld a, [hl-]                                      ; $43d9: $3a
	jr c, jr_092_4418                                ; $43da: $38 $3c

	ld d, b                                          ; $43dc: $50
	ld c, b                                          ; $43dd: $48
	and b                                            ; $43de: $a0
	ld l, a                                          ; $43df: $6f
	ld b, d                                          ; $43e0: $42
	ldh a, [$d2]                                     ; $43e1: $f0 $d2
	dec sp                                           ; $43e3: $3b
	ccf                                              ; $43e4: $3f
	xor h                                            ; $43e5: $ac
	ld d, h                                          ; $43e6: $54
	ld b, c                                          ; $43e7: $41
	ld a, [hl-]                                      ; $43e8: $3a
	ldh a, [$78]                                     ; $43e9: $f0 $78
	ld e, e                                          ; $43eb: $5b
	ld a, [hl-]                                      ; $43ec: $3a
	ld b, c                                          ; $43ed: $41
	ld c, d                                          ; $43ee: $4a
	ld d, c                                          ; $43ef: $51
	ld c, h                                          ; $43f0: $4c
	ld c, b                                          ; $43f1: $48
	and b                                            ; $43f2: $a0
	cpl                                              ; $43f3: $2f
	ld b, e                                          ; $43f4: $43
	ld b, [hl]                                       ; $43f5: $46
	dec sp                                           ; $43f6: $3b
	inc [hl]                                         ; $43f7: $34
	db $ec                                           ; $43f8: $ec
	rst SubAFromDE                                          ; $43f9: $df
	xor b                                            ; $43fa: $a8
	ldh a, [rPCM12]                                  ; $43fb: $f0 $76
	ldh a, [$d2]                                     ; $43fd: $f0 $d2
	ldh a, [$3f]                                     ; $43ff: $f0 $3f
	ld c, e                                          ; $4401: $4b
	ld e, d                                          ; $4402: $5a
	add hl, sp                                       ; $4403: $39
	and c                                            ; $4404: $a1
	cpl                                              ; $4405: $2f
	ld b, e                                          ; $4406: $43
	ld b, b                                          ; $4407: $40
	ld b, c                                          ; $4408: $41
	ld a, [hl-]                                      ; $4409: $3a
	ld b, a                                          ; $440a: $47
	ld b, b                                          ; $440b: $40
	ld b, b                                          ; $440c: $40
	ld d, l                                          ; $440d: $55
	ld e, b                                          ; $440e: $58

jr_092_440f:
	ld c, c                                          ; $440f: $49
	xor h                                            ; $4410: $ac
	ld h, a                                          ; $4411: $67
	inc a                                            ; $4412: $3c
	ld a, [hl-]                                      ; $4413: $3a
	ld d, l                                          ; $4414: $55
	ccf                                              ; $4415: $3f
	ld c, a                                          ; $4416: $4f
	ld c, b                                          ; $4417: $48

jr_092_4418:
	and b                                            ; $4418: $a0
	cpl                                              ; $4419: $2f
	ld b, e                                          ; $441a: $43
	ld b, [hl]                                       ; $441b: $46
	dec sp                                           ; $441c: $3b
	inc [hl]                                         ; $441d: $34
	db $ec                                           ; $441e: $ec
	rst SubAFromDE                                          ; $441f: $df
	xor b                                            ; $4420: $a8
	jp hl                                            ; $4421: $e9


	or h                                             ; $4422: $b4
	and b                                            ; $4423: $a0
	ld b, [hl]                                       ; $4424: $46
	dec sp                                           ; $4425: $3b
	xor l                                            ; $4426: $ad
	jr c, jr_092_43a9                                ; $4427: $38 $80

	ld c, a                                          ; $4429: $4f
	inc [hl]                                         ; $442a: $34
	ld d, h                                          ; $442b: $54
	ld b, c                                          ; $442c: $41
	ld a, [hl-]                                      ; $442d: $3a
	ld d, h                                          ; $442e: $54
	ld c, c                                          ; $442f: $49
	inc de                                           ; $4430: $13
	ld a, $3f                                        ; $4431: $3e $3f
	ld c, [hl]                                       ; $4433: $4e
	ld b, c                                          ; $4434: $41
	ld c, d                                          ; $4435: $4a
	ld d, c                                          ; $4436: $51
	inc a                                            ; $4437: $3c
	ld c, b                                          ; $4438: $48
	and c                                            ; $4439: $a1

jr_092_443a:
	cpl                                              ; $443a: $2f
	ld b, e                                          ; $443b: $43

jr_092_443c:
	ld e, [hl]                                       ; $443c: $5e
	dec sp                                           ; $443d: $3b
	inc [hl]                                         ; $443e: $34
	ld [$1356], a                                    ; $443f: $ea $56 $13
	ld b, d                                          ; $4442: $42
	sbc d                                            ; $4443: $9a
	ld [hl], $6a                                     ; $4444: $36 $6a
	ld l, b                                          ; $4446: $68
	ld b, h                                          ; $4447: $44
	ld e, l                                          ; $4448: $5d
	inc [hl]                                         ; $4449: $34
	ldh a, [$b6]                                     ; $444a: $f0 $b6
	ldh a, [$34]                                     ; $444c: $f0 $34
	ld b, h                                          ; $444e: $44
	ld b, l                                          ; $444f: $45
	and b                                            ; $4450: $a0
	ld b, b                                          ; $4451: $40
	ld c, l                                          ; $4452: $4d
	ld a, [hl-]                                      ; $4453: $3a
	ld d, b                                          ; $4454: $50
	xor l                                            ; $4455: $ad
	ld h, h                                          ; $4456: $64
	db $ed                                           ; $4457: $ed
	sub c                                            ; $4458: $91
	ld a, $3f                                        ; $4459: $3e $3f
	inc [hl]                                         ; $445b: $34
	db $eb                                           ; $445c: $eb
	ccf                                              ; $445d: $3f
	and b                                            ; $445e: $a0
	ld b, [hl]                                       ; $445f: $46
	dec sp                                           ; $4460: $3b
	inc [hl]                                         ; $4461: $34
	ld l, [hl]                                       ; $4462: $6e
	ld b, h                                          ; $4463: $44
	xor l                                            ; $4464: $ad
	db $eb                                           ; $4465: $eb
	ld c, a                                          ; $4466: $4f
	ld c, b                                          ; $4467: $48
	and b                                            ; $4468: $a0
	cpl                                              ; $4469: $2f
	ld b, e                                          ; $446a: $43
	add sp, -$13                                     ; $446b: $e8 $ed
	xor b                                            ; $446d: $a8
	db $eb                                           ; $446e: $eb
	add h                                            ; $446f: $84
	inc [hl]                                         ; $4470: $34
	db $eb                                           ; $4471: $eb
	xor c                                            ; $4472: $a9
	ld c, b                                          ; $4473: $48
	and b                                            ; $4474: $a0
	ld h, h                                          ; $4475: $64
	db $ed                                           ; $4476: $ed
	sub c                                            ; $4477: $91
	ld a, $3f                                        ; $4478: $3e $3f
	xor h                                            ; $447a: $ac
	db $eb                                           ; $447b: $eb
	ccf                                              ; $447c: $3f
	and b                                            ; $447d: $a0
	ld b, [hl]                                       ; $447e: $46
	dec sp                                           ; $447f: $3b
	inc [hl]                                         ; $4480: $34
	ld l, [hl]                                       ; $4481: $6e
	ld b, h                                          ; $4482: $44
	xor l                                            ; $4483: $ad
	ld h, h                                          ; $4484: $64
	db $ed                                           ; $4485: $ed
	sub c                                            ; $4486: $91
	ld a, $3f                                        ; $4487: $3e $3f
	inc [hl]                                         ; $4489: $34
	db $eb                                           ; $448a: $eb
	ccf                                              ; $448b: $3f
	and b                                            ; $448c: $a0
	xor $10                                          ; $448d: $ee $10
	xor b                                            ; $448f: $a8
	db $eb                                           ; $4490: $eb
	ld e, d                                          ; $4491: $5a
	and b                                            ; $4492: $a0
	cpl                                              ; $4493: $2f
	ld b, e                                          ; $4494: $43
	jp hl                                            ; $4495: $e9


	ld b, e                                          ; $4496: $43
	xor b                                            ; $4497: $a8
	db $ec                                           ; $4498: $ec
	rst SubAFromDE                                          ; $4499: $df
	db $eb                                           ; $449a: $eb
	and d                                            ; $449b: $a2
	inc de                                           ; $449c: $13
	ld [$a051], a                                    ; $449d: $ea $51 $a0
	cpl                                              ; $44a0: $2f
	ld b, e                                          ; $44a1: $43
	db $ec                                           ; $44a2: $ec
	cp c                                             ; $44a3: $b9
	xor b                                            ; $44a4: $a8
	add sp, -$6d                                     ; $44a5: $e8 $93
	and b                                            ; $44a7: $a0
	xor $1e                                          ; $44a8: $ee $1e
	inc [hl]                                         ; $44aa: $34
	ld e, d                                          ; $44ab: $5a
	ld b, c                                          ; $44ac: $41
	ld a, [hl-]                                      ; $44ad: $3a
	ldh a, [$3f]                                     ; $44ae: $f0 $3f
	ld h, d                                          ; $44b0: $62
	inc de                                           ; $44b1: $13
	ldh a, [$bd]                                     ; $44b2: $f0 $bd
	jr c, jr_092_44f3                                ; $44b4: $38 $3d

	ld b, d                                          ; $44b6: $42
	ld c, d                                          ; $44b7: $4a
	ld d, c                                          ; $44b8: $51
	inc a                                            ; $44b9: $3c
	and c                                            ; $44ba: $a1
	cpl                                              ; $44bb: $2f
	ld b, e                                          ; $44bc: $43
	ld e, [hl]                                       ; $44bd: $5e
	dec sp                                           ; $44be: $3b
	ld c, c                                          ; $44bf: $49
	ld c, h                                          ; $44c0: $4c
	inc [hl]                                         ; $44c1: $34
	ld d, h                                          ; $44c2: $54
	ld c, l                                          ; $44c3: $4d
	ld b, h                                          ; $44c4: $44
	ld b, l                                          ; $44c5: $45
	and b                                            ; $44c6: $a0
	db $eb                                           ; $44c7: $eb
	ld d, h                                          ; $44c8: $54
	ldh a, [$3f]                                     ; $44c9: $f0 $3f
	ld c, d                                          ; $44cb: $4a
	ld d, c                                          ; $44cc: $51
	ld c, h                                          ; $44cd: $4c
	xor b                                            ; $44ce: $a8
	ld l, a                                          ; $44cf: $6f
	ld b, a                                          ; $44d0: $47
	ld c, a                                          ; $44d1: $4f
	inc [hl]                                         ; $44d2: $34
	ld b, l                                          ; $44d3: $45
	ld e, b                                          ; $44d4: $58
	ld d, e                                          ; $44d5: $53
	ldh a, [rTAC]                                    ; $44d6: $f0 $07
	inc a                                            ; $44d8: $3c
	ld d, a                                          ; $44d9: $57
	ld d, d                                          ; $44da: $52
	ld d, c                                          ; $44db: $51
	and b                                            ; $44dc: $a0
	cpl                                              ; $44dd: $2f
	ld b, e                                          ; $44de: $43
	ld b, [hl]                                       ; $44df: $46
	ld d, a                                          ; $44e0: $57
	ld d, e                                          ; $44e1: $53
	ld c, c                                          ; $44e2: $49
	add hl, sp                                       ; $44e3: $39
	xor h                                            ; $44e4: $ac
	ld h, h                                          ; $44e5: $64
	db $ed                                           ; $44e6: $ed
	sbc d                                            ; $44e7: $9a
	ld c, d                                          ; $44e8: $4a
	ld c, a                                          ; $44e9: $4f
	inc [hl]                                         ; $44ea: $34
	ldh a, [$29]                                     ; $44eb: $f0 $29
	ld a, $38                                        ; $44ed: $3e $38
	ld b, l                                          ; $44ef: $45
	and b                                            ; $44f0: $a0
	cpl                                              ; $44f1: $2f
	ld b, e                                          ; $44f2: $43

jr_092_44f3:
	ld e, [hl]                                       ; $44f3: $5e
	add l                                            ; $44f4: $85
	xor b                                            ; $44f5: $a8
	jp hl                                            ; $44f6: $e9


	or e                                             ; $44f7: $b3
	and c                                            ; $44f8: $a1
	db $eb                                           ; $44f9: $eb
	ccf                                              ; $44fa: $3f
	xor b                                            ; $44fb: $a8
	ld c, a                                          ; $44fc: $4f
	add hl, sp                                       ; $44fd: $39
	inc [hl]                                         ; $44fe: $34
	db $ed                                           ; $44ff: $ed
	ld l, d                                          ; $4500: $6a
	add a                                            ; $4501: $87
	ldh a, [rHDMA3]                                  ; $4502: $f0 $53
	ld d, e                                          ; $4504: $53
	inc de                                           ; $4505: $13
	ldh a, [$bb]                                     ; $4506: $f0 $bb
	ld d, d                                          ; $4508: $52
	dec sp                                           ; $4509: $3b
	ld h, c                                          ; $450a: $61
	ld d, [hl]                                       ; $450b: $56
	xor $1f                                          ; $450c: $ee $1f
	ld c, d                                          ; $450e: $4a
	ld d, c                                          ; $450f: $51
	ld c, b                                          ; $4510: $48
	and b                                            ; $4511: $a0
	cpl                                              ; $4512: $2f
	ld b, e                                          ; $4513: $43
	or h                                             ; $4514: $b4
	xor h                                            ; $4515: $ac
	pop af                                           ; $4516: $f1
	ld d, $38                                        ; $4517: $16 $38
	ld c, d                                          ; $4519: $4a
	ldh a, [$e8]                                     ; $451a: $f0 $e8
	ld d, b                                          ; $451c: $50
	ld a, [hl-]                                      ; $451d: $3a
	ld d, l                                          ; $451e: $55
	ld h, c                                          ; $451f: $61
	ld d, [hl]                                       ; $4520: $56
	ld c, b                                          ; $4521: $48
	and b                                            ; $4522: $a0
	ld [$ac9c], a                                    ; $4523: $ea $9c $ac

jr_092_4526:
	ldh a, [c]                                       ; $4526: $f2
	and h                                            ; $4527: $a4
	ldh a, [c]                                       ; $4528: $f2
	ld b, $34                                        ; $4529: $06 $34
	ld [hl], d                                       ; $452b: $72
	ld b, a                                          ; $452c: $47
	ld a, b                                          ; $452d: $78
	ccf                                              ; $452e: $3f
	ld d, l                                          ; $452f: $55
	ld b, h                                          ; $4530: $44
	ld e, b                                          ; $4531: $58
	jr c, jr_092_4580                                ; $4532: $38 $4c

	and b                                            ; $4534: $a0
	ld l, a                                          ; $4535: $6f
	inc [hl]                                         ; $4536: $34
	db $ec                                           ; $4537: $ec
	push bc                                          ; $4538: $c5
	inc de                                           ; $4539: $13
	db $eb                                           ; $453a: $eb
	ld [hl], d                                       ; $453b: $72
	ld c, b                                          ; $453c: $48
	and b                                            ; $453d: $a0
	ld l, a                                          ; $453e: $6f
	inc [hl]                                         ; $453f: $34
	ldh a, [rSCX]                                    ; $4540: $f0 $43

Call_092_4542:
	ldh a, [$b8]                                     ; $4542: $f0 $b8
	adc a                                            ; $4544: $8f
	ld b, a                                          ; $4545: $47
	inc de                                           ; $4546: $13
	sub [hl]                                         ; $4547: $96
	dec sp                                           ; $4548: $3b
	ccf                                              ; $4549: $3f
	jr c, jr_092_459a                                ; $454a: $38 $4e

	ld b, c                                          ; $454c: $41
	ld c, d                                          ; $454d: $4a
	ld d, c                                          ; $454e: $51
	xor b                                            ; $454f: $a8
	ld l, d                                          ; $4550: $6a
	inc a                                            ; $4551: $3c
	ld d, b                                          ; $4552: $50
	db $ed                                           ; $4553: $ed
	ld l, d                                          ; $4554: $6a
	add a                                            ; $4555: $87
	ldh a, [rHDMA3]                                  ; $4556: $f0 $53
	ld a, [hl-]                                      ; $4558: $3a
	ld b, d                                          ; $4559: $42
	ld c, d                                          ; $455a: $4a
	ld c, b                                          ; $455b: $48
	and b                                            ; $455c: $a0
	cpl                                              ; $455d: $2f
	ld b, e                                          ; $455e: $43
	ld b, b                                          ; $455f: $40
	ld c, l                                          ; $4560: $4d
	ld a, [hl-]                                      ; $4561: $3a
	ld b, d                                          ; $4562: $42
	ld b, a                                          ; $4563: $47
	xor h                                            ; $4564: $ac
	ld h, e                                          ; $4565: $63
	ldh a, [rAUD1SWEEP]                              ; $4566: $f0 $10
	ld h, e                                          ; $4568: $63
	ldh a, [rAUD1SWEEP]                              ; $4569: $f0 $10
	ld [$a81f], a                                    ; $456b: $ea $1f $a8
	pop af                                           ; $456e: $f1
	xor l                                            ; $456f: $ad
	pop af                                           ; $4570: $f1
	and l                                            ; $4571: $a5
	inc [hl]                                         ; $4572: $34
	cp d                                             ; $4573: $ba
	and b                                            ; $4574: $a0
	xor $2d                                          ; $4575: $ee $2d
	xor b                                            ; $4577: $a8
	ldh a, [c]                                       ; $4578: $f2
	and h                                            ; $4579: $a4
	ldh a, [c]                                       ; $457a: $f2
	ld b, $34                                        ; $457b: $06 $34
	ld [hl], d                                       ; $457d: $72
	ld b, a                                          ; $457e: $47
	ld a, b                                          ; $457f: $78

jr_092_4580:
	ccf                                              ; $4580: $3f
	ld d, l                                          ; $4581: $55
	ld b, h                                          ; $4582: $44
	ld e, b                                          ; $4583: $58
	jr c, jr_092_4526                                ; $4584: $38 $a0

	ldh a, [$3f]                                     ; $4586: $f0 $3f
	ldh a, [$7a]                                     ; $4588: $f0 $7a
	dec sp                                           ; $458a: $3b
	ccf                                              ; $458b: $3f
	inc [hl]                                         ; $458c: $34
	add h                                            ; $458d: $84
	ld b, d                                          ; $458e: $42
	ldh a, [rVBK]                                    ; $458f: $f0 $4f
	ld h, d                                          ; $4591: $62
	inc de                                           ; $4592: $13
	di                                               ; $4593: $f3
	sbc c                                            ; $4594: $99
	ld a, $44                                        ; $4595: $3e $44
	ld d, c                                          ; $4597: $51
	ldh a, [$b3]                                     ; $4598: $f0 $b3

jr_092_459a:
	ld b, d                                          ; $459a: $42
	ld b, l                                          ; $459b: $45
	add hl, sp                                       ; $459c: $39
	ld c, d                                          ; $459d: $4a
	ld d, c                                          ; $459e: $51
	ld c, h                                          ; $459f: $4c
	and b                                            ; $45a0: $a0
	cpl                                              ; $45a1: $2f
	ld b, e                                          ; $45a2: $43
	ld b, b                                          ; $45a3: $40
	add hl, sp                                       ; $45a4: $39
	ld b, h                                          ; $45a5: $44
	ld c, h                                          ; $45a6: $4c
	xor l                                            ; $45a7: $ad
	ld d, h                                          ; $45a8: $54
	ld b, d                                          ; $45a9: $42
	ldh a, [$3f]                                     ; $45aa: $f0 $3f
	ld a, [hl-]                                      ; $45ac: $3a
	ld b, c                                          ; $45ad: $41
	inc a                                            ; $45ae: $3c
	ld e, d                                          ; $45af: $5a
	add hl, sp                                       ; $45b0: $39
	and c                                            ; $45b1: $a1
	ldh a, [$7f]                                     ; $45b2: $f0 $7f
	ldh a, [$9c]                                     ; $45b4: $f0 $9c
	ld d, l                                          ; $45b6: $55
	ccf                                              ; $45b7: $3f
	inc [hl]                                         ; $45b8: $34
	ldh a, [$4e]                                     ; $45b9: $f0 $4e

jr_092_45bb:
	ld a, $55                                        ; $45bb: $3e $55
	ccf                                              ; $45bd: $3f
	xor l                                            ; $45be: $ad
	ld l, a                                          ; $45bf: $6f
	ld c, e                                          ; $45c0: $4b
	inc [hl]                                         ; $45c1: $34
	adc e                                            ; $45c2: $8b
	ld e, h                                          ; $45c3: $5c
	ld a, [hl-]                                      ; $45c4: $3a
	ldh a, [$3f]                                     ; $45c5: $f0 $3f
	ld c, d                                          ; $45c7: $4a
	ld d, c                                          ; $45c8: $51
	and b                                            ; $45c9: $a0
	cpl                                              ; $45ca: $2f
	ld b, e                                          ; $45cb: $43
	ld b, [hl]                                       ; $45cc: $46
	ld d, a                                          ; $45cd: $57
	ld d, e                                          ; $45ce: $53
	ld c, c                                          ; $45cf: $49
	add hl, sp                                       ; $45d0: $39
	xor b                                            ; $45d1: $a8
	halt                                             ; $45d2: $76
	ld b, d                                          ; $45d3: $42
	ldh a, [$bd]                                     ; $45d4: $f0 $bd
	jr c, jr_092_4615                                ; $45d6: $38 $3d

	ldh a, [$3f]                                     ; $45d8: $f0 $3f
	ld a, [hl-]                                      ; $45da: $3a
	ld b, c                                          ; $45db: $41
	ld b, h                                          ; $45dc: $44
	and b                                            ; $45dd: $a0
	db $eb                                           ; $45de: $eb
	ccf                                              ; $45df: $3f
	xor b                                            ; $45e0: $a8
	ld c, a                                          ; $45e1: $4f
	add hl, sp                                       ; $45e2: $39
	inc [hl]                                         ; $45e3: $34
	db $ed                                           ; $45e4: $ed
	ld l, d                                          ; $45e5: $6a
	add a                                            ; $45e6: $87
	ldh a, [rHDMA3]                                  ; $45e7: $f0 $53
	ld d, e                                          ; $45e9: $53
	inc de                                           ; $45ea: $13
	ldh a, [$bb]                                     ; $45eb: $f0 $bb
	ld d, d                                          ; $45ed: $52
	dec sp                                           ; $45ee: $3b
	ld h, c                                          ; $45ef: $61
	ld d, [hl]                                       ; $45f0: $56
	add hl, sp                                       ; $45f1: $39
	ld b, d                                          ; $45f2: $42
	ld c, b                                          ; $45f3: $48
	and b                                            ; $45f4: $a0
	ld b, l                                          ; $45f5: $45
	ld e, a                                          ; $45f6: $5f
	ld a, $3c                                        ; $45f7: $3e $3c
	dec sp                                           ; $45f9: $3b
	dec a                                            ; $45fa: $3d
	ld d, b                                          ; $45fb: $50
	xor h                                            ; $45fc: $ac
	ld [hl], d                                       ; $45fd: $72
	ld b, a                                          ; $45fe: $47
	ld a, b                                          ; $45ff: $78
	ccf                                              ; $4600: $3f
	ld d, l                                          ; $4601: $55
	ld b, h                                          ; $4602: $44
	ld e, b                                          ; $4603: $58
	jr c, jr_092_4652                                ; $4604: $38 $4c

	and b                                            ; $4606: $a0
	xor $2d                                          ; $4607: $ee $2d
	xor b                                            ; $4609: $a8
	ld b, l                                          ; $460a: $45
	ld e, a                                          ; $460b: $5f
	ld a, $3c                                        ; $460c: $3e $3c
	dec sp                                           ; $460e: $3b
	dec a                                            ; $460f: $3d
	ld d, b                                          ; $4610: $50
	xor h                                            ; $4611: $ac
	ld [hl], d                                       ; $4612: $72
	ld b, a                                          ; $4613: $47
	ld a, b                                          ; $4614: $78

jr_092_4615:
	ccf                                              ; $4615: $3f
	ld d, l                                          ; $4616: $55
	ld b, h                                          ; $4617: $44
	ld e, b                                          ; $4618: $58
	jr c, jr_092_45bb                                ; $4619: $38 $a0

	cpl                                              ; $461b: $2f
	ld b, e                                          ; $461c: $43
	ld b, b                                          ; $461d: $40
	add hl, sp                                       ; $461e: $39
	ld b, h                                          ; $461f: $44
	ld c, h                                          ; $4620: $4c
	ld c, b                                          ; $4621: $48
	and b                                            ; $4622: $a0
	db $eb                                           ; $4623: $eb
	ccf                                              ; $4624: $3f
	xor b                                            ; $4625: $a8
	ld c, a                                          ; $4626: $4f
	add hl, sp                                       ; $4627: $39
	inc [hl]                                         ; $4628: $34
	db $ed                                           ; $4629: $ed
	ld l, d                                          ; $462a: $6a
	add a                                            ; $462b: $87
	ldh a, [rHDMA3]                                  ; $462c: $f0 $53
	ld d, e                                          ; $462e: $53
	inc de                                           ; $462f: $13
	ldh a, [$bb]                                     ; $4630: $f0 $bb
	ld d, d                                          ; $4632: $52
	dec sp                                           ; $4633: $3b
	ld h, c                                          ; $4634: $61

Call_092_4635:
	ld d, [hl]                                       ; $4635: $56
	add hl, sp                                       ; $4636: $39
	inc a                                            ; $4637: $3c
	ld d, b                                          ; $4638: $50
	ld c, b                                          ; $4639: $48
	and b                                            ; $463a: $a0
	xor $2d                                          ; $463b: $ee $2d
	xor b                                            ; $463d: $a8
	jp z, $eb34                                      ; $463e: $ca $34 $eb

	ld e, d                                          ; $4641: $5a
	and b                                            ; $4642: $a0
	cpl                                              ; $4643: $2f
	ld b, e                                          ; $4644: $43
	ld b, [hl]                                       ; $4645: $46
	dec sp                                           ; $4646: $3b
	inc [hl]                                         ; $4647: $34
	db $ec                                           ; $4648: $ec
	rst SubAFromDE                                          ; $4649: $df
	xor b                                            ; $464a: $a8
	db $ec                                           ; $464b: $ec
	db $10                                           ; $464c: $10
	ldh a, [$ea]                                     ; $464d: $f0 $ea
	ld b, h                                          ; $464f: $44
	dec sp                                           ; $4650: $3b
	dec a                                            ; $4651: $3d

jr_092_4652:
	ld b, c                                          ; $4652: $41
	ld b, h                                          ; $4653: $44
	and b                                            ; $4654: $a0
	ld d, c                                          ; $4655: $51
	jr c, @+$54                                      ; $4656: $38 $52

	ld a, c                                          ; $4658: $79
	ld b, c                                          ; $4659: $41
	xor b                                            ; $465a: $a8
	ld l, a                                          ; $465b: $6f
	ld c, e                                          ; $465c: $4b
	inc [hl]                                         ; $465d: $34
	ret                                              ; $465e: $c9


	pop af                                           ; $465f: $f1
	ld d, $f0                                        ; $4660: $16 $f0
	bit 2, d                                         ; $4662: $cb $52
	ld d, c                                          ; $4664: $51
	ld b, d                                          ; $4665: $42
	ld c, d                                          ; $4666: $4a
	ld c, b                                          ; $4667: $48
	and b                                            ; $4668: $a0
	cpl                                              ; $4669: $2f
	ld b, e                                          ; $466a: $43
	ld b, b                                          ; $466b: $40
	add hl, sp                                       ; $466c: $39
	xor l                                            ; $466d: $ad
	ld l, e                                          ; $466e: $6b
	ld a, $47                                        ; $466f: $3e $47
	ld a, b                                          ; $4671: $78
	dec a                                            ; $4672: $3d
	ld b, c                                          ; $4673: $41
	ld b, h                                          ; $4674: $44
	ld e, a                                          ; $4675: $5f
	add hl, sp                                       ; $4676: $39
	and b                                            ; $4677: $a0
	cpl                                              ; $4678: $2f
	ld b, e                                          ; $4679: $43
	ld b, [hl]                                       ; $467a: $46
	dec sp                                           ; $467b: $3b
	inc [hl]                                         ; $467c: $34
	db $ec                                           ; $467d: $ec
	rst SubAFromDE                                          ; $467e: $df
	xor b                                            ; $467f: $a8
	ldh a, [rSCX]                                    ; $4680: $f0 $43
	ldh a, [$b8]                                     ; $4682: $f0 $b8
	adc a                                            ; $4684: $8f
	ld b, d                                          ; $4685: $42
	ldh a, [$38]                                     ; $4686: $f0 $38
	ld c, e                                          ; $4688: $4b
	xor h                                            ; $4689: $ac
	add a                                            ; $468a: $87
	ldh a, [$5b]                                     ; $468b: $f0 $5b
	ldh a, [$5e]                                     ; $468d: $f0 $5e
	ld a, [hl-]                                      ; $468f: $3a
	ld b, d                                          ; $4690: $42
	and c                                            ; $4691: $a1
	ret                                              ; $4692: $c9


	ld b, h                                          ; $4693: $44
	ld e, l                                          ; $4694: $5d
	xor h                                            ; $4695: $ac
	db $eb                                           ; $4696: $eb
	sub c                                            ; $4697: $91
	inc de                                           ; $4698: $13
	ld e, h                                          ; $4699: $5c
	ld h, c                                          ; $469a: $61
	ld d, [hl]                                       ; $469b: $56
	jr c, @+$54                                      ; $469c: $38 $52

	ld a, $3d                                        ; $469e: $3e $3d
	and b                                            ; $46a0: $a0
	cpl                                              ; $46a1: $2f
	ld b, e                                          ; $46a2: $43
	ld b, [hl]                                       ; $46a3: $46
	dec sp                                           ; $46a4: $3b
	inc [hl]                                         ; $46a5: $34
	db $ec                                           ; $46a6: $ec
	rst SubAFromDE                                          ; $46a7: $df

jr_092_46a8:
	xor b                                            ; $46a8: $a8
	ld [$a81f], a                                    ; $46a9: $ea $1f $a8
	db $eb                                           ; $46ac: $eb

Call_092_46ad:
	ld d, b                                          ; $46ad: $50
	and c                                            ; $46ae: $a1
	ld b, [hl]                                       ; $46af: $46
	ld d, d                                          ; $46b0: $52
	ld d, a                                          ; $46b1: $57
	pop af                                           ; $46b2: $f1
	ld h, [hl]                                       ; $46b3: $66
	inc a                                            ; $46b4: $3c
	ld a, [hl-]                                      ; $46b5: $3a
	jr c, jr_092_46a8                                ; $46b6: $38 $f0

	db $ed                                           ; $46b8: $ed
	inc de                                           ; $46b9: $13
	ld c, d                                          ; $46ba: $4a
	ld d, c                                          ; $46bb: $51
	ld e, l                                          ; $46bc: $5d
	ld e, d                                          ; $46bd: $5a
	inc [hl]                                         ; $46be: $34
	ld l, a                                          ; $46bf: $6f
	ld c, e                                          ; $46c0: $4b
	inc [hl]                                         ; $46c1: $34
	adc e                                            ; $46c2: $8b
	ld e, h                                          ; $46c3: $5c
	ld c, d                                          ; $46c4: $4a
	ld d, c                                          ; $46c5: $51
	ld c, b                                          ; $46c6: $48
	and b                                            ; $46c7: $a0
	cpl                                              ; $46c8: $2f
	ld b, e                                          ; $46c9: $43
	ld a, a                                          ; $46ca: $7f
	ld b, a                                          ; $46cb: $47
	sub [hl]                                         ; $46cc: $96
	dec sp                                           ; $46cd: $3b
	ccf                                              ; $46ce: $3f
	ld d, l                                          ; $46cf: $55
	ld c, l                                          ; $46d0: $4d
	dec a                                            ; $46d1: $3d
	xor c                                            ; $46d2: $a9
	ldh a, [$31]                                     ; $46d3: $f0 $31
	ld c, e                                          ; $46d5: $4b
	xor h                                            ; $46d6: $ac
	ld d, h                                          ; $46d7: $54
	ld c, l                                          ; $46d8: $4d
	db $eb                                           ; $46d9: $eb
	ld l, a                                          ; $46da: $6f
	ld a, [hl-]                                      ; $46db: $3a
	ld b, c                                          ; $46dc: $41
	ld b, h                                          ; $46dd: $44
	and b                                            ; $46de: $a0
	db $eb                                           ; $46df: $eb
	ld l, a                                          ; $46e0: $6f
	inc de                                           ; $46e1: $13
	ld b, h                                          ; $46e2: $44
	dec sp                                           ; $46e3: $3b
	dec a                                            ; $46e4: $3d
	ld b, c                                          ; $46e5: $41
	ld c, d                                          ; $46e6: $4a
	ld d, c                                          ; $46e7: $51
	inc a                                            ; $46e8: $3c
	ld c, b                                          ; $46e9: $48
	and b                                            ; $46ea: $a0
	cpl                                              ; $46eb: $2f
	ld b, e                                          ; $46ec: $43
	pop af                                           ; $46ed: $f1
	ld h, [hl]                                       ; $46ee: $66
	jr c, jr_092_472e                                ; $46ef: $38 $3d

	ld d, h                                          ; $46f1: $54
	ld c, c                                          ; $46f2: $49
	ldh a, [rAUD1LOW]                                ; $46f3: $f0 $13
	jr c, jr_092_470a                                ; $46f5: $38 $13

	ld b, d                                          ; $46f7: $42
	ld c, e                                          ; $46f8: $4b
	inc [hl]                                         ; $46f9: $34
	sub c                                            ; $46fa: $91
	ldh a, [$59]                                     ; $46fb: $f0 $59
	ld b, h                                          ; $46fd: $44
	ld c, h                                          ; $46fe: $4c
	and b                                            ; $46ff: $a0
	cpl                                              ; $4700: $2f
	ld b, e                                          ; $4701: $43
	db $eb                                           ; $4702: $eb
	ld bc, $ec13                                     ; $4703: $01 $13 $ec
	rst SubAFromDE                                          ; $4706: $df
	xor h                                            ; $4707: $ac
	ldh a, [rSCX]                                    ; $4708: $f0 $43

jr_092_470a:
	ldh a, [$b8]                                     ; $470a: $f0 $b8
	adc a                                            ; $470c: $8f
	ld b, h                                          ; $470d: $44
	dec sp                                           ; $470e: $3b
	dec a                                            ; $470f: $3d
	ld b, c                                          ; $4710: $41
	ld b, h                                          ; $4711: $44
	ld c, b                                          ; $4712: $48
	and b                                            ; $4713: $a0
	ld b, [hl]                                       ; $4714: $46
	ld d, d                                          ; $4715: $52
	ld d, a                                          ; $4716: $57
	ldh a, [$0c]                                     ; $4717: $f0 $0c
	jr c, jr_092_4758                                ; $4719: $38 $3d

	ld d, h                                          ; $471b: $54
	ld c, c                                          ; $471c: $49
	ld d, e                                          ; $471d: $53
	ld a, [hl-]                                      ; $471e: $3a
	jr c, jr_092_4734                                ; $471f: $38 $13

	ldh a, [$ed]                                     ; $4721: $f0 $ed
	ld a, [hl-]                                      ; $4723: $3a
	ld b, c                                          ; $4724: $41
	ld [$48ae], a                                    ; $4725: $ea $ae $48
	and b                                            ; $4728: $a0
	cpl                                              ; $4729: $2f
	ld b, e                                          ; $472a: $43
	ldh a, [$31]                                     ; $472b: $f0 $31
	ld c, e                                          ; $472d: $4b

jr_092_472e:
	inc [hl]                                         ; $472e: $34
	db $eb                                           ; $472f: $eb
	ld l, a                                          ; $4730: $6f
	inc de                                           ; $4731: $13
	ld a, [hl-]                                      ; $4732: $3a
	ld b, c                                          ; $4733: $41

jr_092_4734:
	ld b, h                                          ; $4734: $44
	xor b                                            ; $4735: $a8
	db $ec                                           ; $4736: $ec
	rst SubAFromDE                                          ; $4737: $df
	ld c, e                                          ; $4738: $4b
	inc [hl]                                         ; $4739: $34
	ldh a, [$6d]                                     ; $473a: $f0 $6d
	ld e, c                                          ; $473c: $59
	ldh a, [$27]                                     ; $473d: $f0 $27
	ld a, [hl-]                                      ; $473f: $3a
	ld b, c                                          ; $4740: $41
	ccf                                              ; $4741: $3f
	inc de                                           ; $4742: $13
	ld b, [hl]                                       ; $4743: $46
	ld d, d                                          ; $4744: $52
	ld d, a                                          ; $4745: $57
	ld a, $3a                                        ; $4746: $3e $3a
	jr c, jr_092_4794                                ; $4748: $38 $4a

	ld a, $66                                        ; $474a: $3e $66
	add hl, sp                                       ; $474c: $39
	and c                                            ; $474d: $a1
	xor $2d                                          ; $474e: $ee $2d
	xor b                                            ; $4750: $a8
	ld b, [hl]                                       ; $4751: $46
	dec sp                                           ; $4752: $3b
	inc [hl]                                         ; $4753: $34
	ld c, d                                          ; $4754: $4a
	ld c, a                                          ; $4755: $4f
	ld c, b                                          ; $4756: $48
	xor h                                            ; $4757: $ac

jr_092_4758:
	ld b, l                                          ; $4758: $45
	inc a                                            ; $4759: $3c
	dec sp                                           ; $475a: $3b
	dec a                                            ; $475b: $3d
	ld c, c                                          ; $475c: $49
	ld [hl], a                                       ; $475d: $77
	jr c, jr_092_47b2                                ; $475e: $38 $52

	ld d, c                                          ; $4760: $51
	ld b, l                                          ; $4761: $45
	and b                                            ; $4762: $a0
	cpl                                              ; $4763: $2f
	ld b, e                                          ; $4764: $43

Jump_092_4765:
	ld b, [hl]                                       ; $4765: $46
	ld d, a                                          ; $4766: $57
	ld d, e                                          ; $4767: $53
	ld c, c                                          ; $4768: $49
	add hl, sp                                       ; $4769: $39
	xor b                                            ; $476a: $a8
	ld a, a                                          ; $476b: $7f
	ld h, d                                          ; $476c: $62
	pop af                                           ; $476d: $f1
	sbc l                                            ; $476e: $9d
	dec sp                                           ; $476f: $3b
	ccf                                              ; $4770: $3f
	ld d, l                                          ; $4771: $55
	ld c, l                                          ; $4772: $4d
	ccf                                              ; $4773: $3f
	xor h                                            ; $4774: $ac
	ldh a, [$29]                                     ; $4775: $f0 $29
	ld a, $38                                        ; $4777: $3e $38
	ld b, l                                          ; $4779: $45
	and b                                            ; $477a: $a0
	ldh a, [rSCX]                                    ; $477b: $f0 $43
	ldh a, [$b8]                                     ; $477d: $f0 $b8
	adc a                                            ; $477f: $8f
	ld h, d                                          ; $4780: $62
	db $eb                                           ; $4781: $eb
	sub c                                            ; $4782: $91
	xor h                                            ; $4783: $ac
	ld a, b                                          ; $4784: $78
	ld h, c                                          ; $4785: $61
	ld d, [hl]                                       ; $4786: $56
	dec sp                                           ; $4787: $3b
	dec a                                            ; $4788: $3d
	ld b, d                                          ; $4789: $42
	ld c, d                                          ; $478a: $4a
	ld c, b                                          ; $478b: $48
	and b                                            ; $478c: $a0
	cpl                                              ; $478d: $2f
	ld b, e                                          ; $478e: $43
	ld b, [hl]                                       ; $478f: $46
	dec sp                                           ; $4790: $3b
	inc [hl]                                         ; $4791: $34
	db $ec                                           ; $4792: $ec
	rst SubAFromDE                                          ; $4793: $df

jr_092_4794:
	xor b                                            ; $4794: $a8
	jp hl                                            ; $4795: $e9


	ld c, h                                          ; $4796: $4c
	xor b                                            ; $4797: $a8
	db $eb                                           ; $4798: $eb
	ld d, b                                          ; $4799: $50
	and c                                            ; $479a: $a1
	cpl                                              ; $479b: $2f
	ld b, e                                          ; $479c: $43
	ldh a, [$31]                                     ; $479d: $f0 $31
	ld c, e                                          ; $479f: $4b
	inc [hl]                                         ; $47a0: $34
	db $eb                                           ; $47a1: $eb
	ld l, a                                          ; $47a2: $6f
	inc de                                           ; $47a3: $13
	ld a, [hl-]                                      ; $47a4: $3a
	ld b, c                                          ; $47a5: $41
	ld b, h                                          ; $47a6: $44
	xor b                                            ; $47a7: $a8
	db $ec                                           ; $47a8: $ec
	rst SubAFromDE                                          ; $47a9: $df
	ld c, e                                          ; $47aa: $4b
	inc [hl]                                         ; $47ab: $34
	ldh a, [$6d]                                     ; $47ac: $f0 $6d
	ld e, c                                          ; $47ae: $59
	ldh a, [$27]                                     ; $47af: $f0 $27
	ld a, [hl-]                                      ; $47b1: $3a

jr_092_47b2:
	ld b, c                                          ; $47b2: $41
	ccf                                              ; $47b3: $3f
	inc de                                           ; $47b4: $13
	ld b, [hl]                                       ; $47b5: $46
	ld d, d                                          ; $47b6: $52
	ld d, a                                          ; $47b7: $57
	ld a, $3a                                        ; $47b8: $3e $3a
	jr c, jr_092_480b                                ; $47ba: $38 $4f

	ld b, c                                          ; $47bc: $41
	ld c, h                                          ; $47bd: $4c
	and b                                            ; $47be: $a0
	ldh a, [rSCX]                                    ; $47bf: $f0 $43
	ldh a, [$b8]                                     ; $47c1: $f0 $b8
	adc a                                            ; $47c3: $8f
	ld h, d                                          ; $47c4: $62
	db $eb                                           ; $47c5: $eb
	sub c                                            ; $47c6: $91
	xor h                                            ; $47c7: $ac
	ld a, b                                          ; $47c8: $78
	ccf                                              ; $47c9: $3f
	db $ec                                           ; $47ca: $ec
	push de                                          ; $47cb: $d5
	ld b, d                                          ; $47cc: $42
	ld c, d                                          ; $47cd: $4a
	ld c, b                                          ; $47ce: $48
	and b                                            ; $47cf: $a0
	jp z, $f0ac                                      ; $47d0: $ca $ac $f0

	add sp, $57                                      ; $47d3: $e8 $57
	ld d, d                                          ; $47d5: $52
	ld d, c                                          ; $47d6: $51
	ld b, d                                          ; $47d7: $42
	ld c, d                                          ; $47d8: $4a
	xor h                                            ; $47d9: $ac
	db $eb                                           ; $47da: $eb
	ld e, d                                          ; $47db: $5a
	and b                                            ; $47dc: $a0
	cpl                                              ; $47dd: $2f
	ld b, e                                          ; $47de: $43
	ld b, [hl]                                       ; $47df: $46
	dec sp                                           ; $47e0: $3b
	inc [hl]                                         ; $47e1: $34
	db $ec                                           ; $47e2: $ec
	rst SubAFromDE                                          ; $47e3: $df
	xor b                                            ; $47e4: $a8
	jp hl                                            ; $47e5: $e9


	ld c, h                                          ; $47e6: $4c
	xor b                                            ; $47e7: $a8
	ld [$a132], a                                    ; $47e8: $ea $32 $a1
	ld [$1337], a                                    ; $47eb: $ea $37 $13
	ld a, [hl-]                                      ; $47ee: $3a
	ld b, d                                          ; $47ef: $42
	ld c, d                                          ; $47f0: $4a
	inc [hl]                                         ; $47f1: $34
	ld [hl], a                                       ; $47f2: $77
	ld h, e                                          ; $47f3: $63
	sbc h                                            ; $47f4: $9c
	ldh a, [$0c]                                     ; $47f5: $f0 $0c
	ld e, h                                          ; $47f7: $5c
	sub [hl]                                         ; $47f8: $96
	dec sp                                           ; $47f9: $3b
	ccf                                              ; $47fa: $3f
	inc de                                           ; $47fb: $13
	ld [$a0b4], a                                    ; $47fc: $ea $b4 $a0
	cpl                                              ; $47ff: $2f
	ld b, e                                          ; $4800: $43
	ld b, b                                          ; $4801: $40
	ld b, c                                          ; $4802: $41
	ld a, [hl-]                                      ; $4803: $3a
	ld b, a                                          ; $4804: $47
	xor h                                            ; $4805: $ac
	ldh a, [$66]                                     ; $4806: $f0 $66
	ld b, c                                          ; $4808: $41
	ld c, d                                          ; $4809: $4a
	ld d, l                                          ; $480a: $55

jr_092_480b:
	ld c, l                                          ; $480b: $4d
	ccf                                              ; $480c: $3f
	ldh a, [$29]                                     ; $480d: $f0 $29
	ld a, $38                                        ; $480f: $3e $38
	ld b, l                                          ; $4811: $45
	and b                                            ; $4812: $a0
	ld d, c                                          ; $4813: $51
	ld [hl], b                                       ; $4814: $70
	ld d, l                                          ; $4815: $55
	ldh a, [$57]                                     ; $4816: $f0 $57
	ldh a, [$ae]                                     ; $4818: $f0 $ae
	ld c, d                                          ; $481a: $4a
	ld a, $3d                                        ; $481b: $3e $3d
	ld b, l                                          ; $481d: $45
	xor b                                            ; $481e: $a8
	ld c, a                                          ; $481f: $4f
	add hl, sp                                       ; $4820: $39
	inc [hl]                                         ; $4821: $34
	db $ed                                           ; $4822: $ed
	ld h, l                                          ; $4823: $65
	ld a, $52                                        ; $4824: $3e $52
	ld a, $3d                                        ; $4826: $3e $3d
	and b                                            ; $4828: $a0
	cpl                                              ; $4829: $2f
	ld b, e                                          ; $482a: $43
	ld b, [hl]                                       ; $482b: $46
	ld d, a                                          ; $482c: $57
	ld d, e                                          ; $482d: $53
	ld c, c                                          ; $482e: $49
	add hl, sp                                       ; $482f: $39
	xor b                                            ; $4830: $a8
	ld [$3457], a                                    ; $4831: $ea $57 $34
	ldh a, [$29]                                     ; $4834: $f0 $29
	ld a, $38                                        ; $4836: $3e $38
	ld b, l                                          ; $4838: $45
	and b                                            ; $4839: $a0
	ld d, c                                          ; $483a: $51
	ld [hl], b                                       ; $483b: $70
	ld d, l                                          ; $483c: $55
	db $ec                                           ; $483d: $ec
	cp c                                             ; $483e: $b9
	ld c, d                                          ; $483f: $4a
	ld d, c                                          ; $4840: $51
	xor b                                            ; $4841: $a8
	ld l, a                                          ; $4842: $6f
	inc [hl]                                         ; $4843: $34
	ld d, h                                          ; $4844: $54
	add hl, sp                                       ; $4845: $39
	jr c, jr_092_4881                                ; $4846: $38 $39

	ldh a, [$ed]                                     ; $4848: $f0 $ed
	add a                                            ; $484a: $87
	adc e                                            ; $484b: $8b
	ld e, h                                          ; $484c: $5c
	ld a, [hl-]                                      ; $484d: $3a
	ld b, d                                          ; $484e: $42
	ld c, d                                          ; $484f: $4a
	ld c, b                                          ; $4850: $48
	and b                                            ; $4851: $a0
	cpl                                              ; $4852: $2f
	ld b, e                                          ; $4853: $43
	adc b                                            ; $4854: $88
	sub c                                            ; $4855: $91
	xor c                                            ; $4856: $a9
	db $ec                                           ; $4857: $ec
	cp c                                             ; $4858: $b9
	inc [hl]                                         ; $4859: $34
	ld [$a057], a                                    ; $485a: $ea $57 $a0
	ldh a, [$5d]                                     ; $485d: $f0 $5d
	ld a, [hl-]                                      ; $485f: $3a
	ldh a, [$ed]                                     ; $4860: $f0 $ed
	ld b, h                                          ; $4862: $44
	dec sp                                           ; $4863: $3b
	dec a                                            ; $4864: $3d
	ld b, d                                          ; $4865: $42
	ld c, d                                          ; $4866: $4a
	xor h                                            ; $4867: $ac
	ld [hl], a                                       ; $4868: $77
	ld h, e                                          ; $4869: $63
	sbc h                                            ; $486a: $9c
	ldh a, [c]                                       ; $486b: $f2
	ld bc, $3f3b                                     ; $486c: $01 $3b $3f
	ld [$48b4], a                                    ; $486f: $ea $b4 $48
	and b                                            ; $4872: $a0
	cpl                                              ; $4873: $2f
	ld b, e                                          ; $4874: $43
	add hl, sp                                       ; $4875: $39
	ld e, l                                          ; $4876: $5d
	dec a                                            ; $4877: $3d
	xor c                                            ; $4878: $a9
	db $ec                                           ; $4879: $ec
	cp c                                             ; $487a: $b9
	xor h                                            ; $487b: $ac
	add sp, -$7e                                     ; $487c: $e8 $82
	and b                                            ; $487e: $a0
	db $eb                                           ; $487f: $eb
	ld c, a                                          ; $4880: $4f

jr_092_4881:
	ld e, l                                          ; $4881: $5d
	ld e, d                                          ; $4882: $5a
	ld c, b                                          ; $4883: $48
	xor h                                            ; $4884: $ac
	ldh a, [rBGP]                                    ; $4885: $f0 $47
	ldh a, [$2a]                                     ; $4887: $f0 $2a
	ld d, e                                          ; $4889: $53
	ld [$34ac], a                                    ; $488a: $ea $ac $34
	ldh a, [c]                                       ; $488d: $f2
	and h                                            ; $488e: $a4
	ldh a, [c]                                       ; $488f: $f2
	ld b, $13                                        ; $4890: $06 $13
	ld [hl], d                                       ; $4892: $72
	ccf                                              ; $4893: $3f
	jr c, jr_092_48d1                                ; $4894: $38 $3b

	ccf                                              ; $4896: $3f
	ld d, l                                          ; $4897: $55
	ld b, h                                          ; $4898: $44
	ld e, b                                          ; $4899: $58
	jr c, jr_092_48e8                                ; $489a: $38 $4c

	and b                                            ; $489c: $a0
	xor $2d                                          ; $489d: $ee $2d
	xor l                                            ; $489f: $ad
	add sp, -$48                                     ; $48a0: $e8 $b8
	xor l                                            ; $48a2: $ad
	db $eb                                           ; $48a3: $eb
	ccf                                              ; $48a4: $3f
	and b                                            ; $48a5: $a0
	cpl                                              ; $48a6: $2f
	ld b, e                                          ; $48a7: $43
	ld e, e                                          ; $48a8: $5b
	ld d, [hl]                                       ; $48a9: $56
	ld b, [hl]                                       ; $48aa: $46
	pop af                                           ; $48ab: $f1
	xor l                                            ; $48ac: $ad
	pop af                                           ; $48ad: $f1
	and l                                            ; $48ae: $a5
	ld d, e                                          ; $48af: $53
	inc de                                           ; $48b0: $13
	add hl, sp                                       ; $48b1: $39
	ld d, d                                          ; $48b2: $52
	ld d, l                                          ; $48b3: $55
	jr c, jr_092_490b                                ; $48b4: $38 $55

	ld d, h                                          ; $48b6: $54
	ld c, c                                          ; $48b7: $49
	ld h, d                                          ; $48b8: $62
	inc de                                           ; $48b9: $13
	ldh a, [c]                                       ; $48ba: $f2
	or a                                             ; $48bb: $b7
	dec sp                                           ; $48bc: $3b
	ccf                                              ; $48bd: $3f
	ld c, [hl]                                       ; $48be: $4e
	ld b, l                                          ; $48bf: $45
	and b                                            ; $48c0: $a0
	ld d, h                                          ; $48c1: $54
	add hl, sp                                       ; $48c2: $39
	jr c, jr_092_48fe                                ; $48c3: $38 $39

	ldh a, [$78]                                     ; $48c5: $f0 $78
	ld e, e                                          ; $48c7: $5b
	ld b, d                                          ; $48c8: $42
	ldh a, [$ed]                                     ; $48c9: $f0 $ed
	ld c, e                                          ; $48cb: $4b
	inc de                                           ; $48cc: $13
	ld b, [hl]                                       ; $48cd: $46
	ld d, d                                          ; $48ce: $52
	ld d, a                                          ; $48cf: $57
	pop af                                           ; $48d0: $f1

jr_092_48d1:
	ld h, [hl]                                       ; $48d1: $66
	inc a                                            ; $48d2: $3c
	ld a, [hl-]                                      ; $48d3: $3a
	jr c, jr_092_4918                                ; $48d4: $38 $42

	ld c, d                                          ; $48d6: $4a
	ld c, b                                          ; $48d7: $48
	and b                                            ; $48d8: $a0
	cpl                                              ; $48d9: $2f
	ld b, e                                          ; $48da: $43
	ld d, h                                          ; $48db: $54
	ld b, c                                          ; $48dc: $41
	ld a, [hl-]                                      ; $48dd: $3a
	db $eb                                           ; $48de: $eb
	ld d, l                                          ; $48df: $55
	ldh a, [$ed]                                     ; $48e0: $f0 $ed
	xor h                                            ; $48e2: $ac
	ld b, b                                          ; $48e3: $40
	add hl, sp                                       ; $48e4: $39
	ld b, b                                          ; $48e5: $40
	add hl, sp                                       ; $48e6: $39
	pop af                                           ; $48e7: $f1

jr_092_48e8:
	ld h, [hl]                                       ; $48e8: $66
	inc a                                            ; $48e9: $3c
	ld a, [hl-]                                      ; $48ea: $3a
	jr c, jr_092_4932                                ; $48eb: $38 $45

	ld c, h                                          ; $48ed: $4c
	and b                                            ; $48ee: $a0
	ld b, [hl]                                       ; $48ef: $46
	dec sp                                           ; $48f0: $3b
	inc [hl]                                         ; $48f1: $34
	ld c, d                                          ; $48f2: $4a
	ld c, a                                          ; $48f3: $4f
	ld c, b                                          ; $48f4: $48
	xor h                                            ; $48f5: $ac
	cp e                                             ; $48f6: $bb
	ld c, c                                          ; $48f7: $49
	ld [hl], a                                       ; $48f8: $77
	jr c, jr_092_494d                                ; $48f9: $38 $52

	ld d, c                                          ; $48fb: $51
	ld b, l                                          ; $48fc: $45
	and b                                            ; $48fd: $a0

jr_092_48fe:
	db $eb                                           ; $48fe: $eb
	ld c, a                                          ; $48ff: $4f
	ld e, l                                          ; $4900: $5d
	ld e, d                                          ; $4901: $5a
	ld c, b                                          ; $4902: $48
	xor h                                            ; $4903: $ac
	ld b, l                                          ; $4904: $45
	ld e, a                                          ; $4905: $5f
	ld a, $3c                                        ; $4906: $3e $3c
	dec sp                                           ; $4908: $3b
	dec a                                            ; $4909: $3d
	ld d, b                                          ; $490a: $50

jr_092_490b:
	xor h                                            ; $490b: $ac
	ld [hl], d                                       ; $490c: $72
	ccf                                              ; $490d: $3f
	jr c, jr_092_494b                                ; $490e: $38 $3b

	ccf                                              ; $4910: $3f
	ld d, l                                          ; $4911: $55
	ld b, h                                          ; $4912: $44
	ld e, b                                          ; $4913: $58
	jr c, jr_092_4962                                ; $4914: $38 $4c

	and b                                            ; $4916: $a0
	ld d, h                                          ; $4917: $54

jr_092_4918:
	add hl, sp                                       ; $4918: $39
	jr c, jr_092_4954                                ; $4919: $38 $39

	ldh a, [$78]                                     ; $491b: $f0 $78
	ld e, e                                          ; $491d: $5b
	ld b, d                                          ; $491e: $42
	ldh a, [$ed]                                     ; $491f: $f0 $ed
	ld c, e                                          ; $4921: $4b
	inc de                                           ; $4922: $13
	ld b, [hl]                                       ; $4923: $46
	ld d, d                                          ; $4924: $52
	ld d, a                                          ; $4925: $57
	ldh a, [$0c]                                     ; $4926: $f0 $0c
	inc a                                            ; $4928: $3c
	ld a, [hl-]                                      ; $4929: $3a
	jr c, jr_092_496e                                ; $492a: $38 $42

	ld c, d                                          ; $492c: $4a
	ld c, b                                          ; $492d: $48
	and b                                            ; $492e: $a0
	cpl                                              ; $492f: $2f
	ld b, e                                          ; $4930: $43
	ld d, h                                          ; $4931: $54

jr_092_4932:
	ld b, c                                          ; $4932: $41
	ld a, [hl-]                                      ; $4933: $3a
	db $eb                                           ; $4934: $eb
	ld d, l                                          ; $4935: $55
	ldh a, [$ed]                                     ; $4936: $f0 $ed
	xor h                                            ; $4938: $ac
	ld b, b                                          ; $4939: $40
	add hl, sp                                       ; $493a: $39
	ld b, b                                          ; $493b: $40
	add hl, sp                                       ; $493c: $39
	ldh a, [$0c]                                     ; $493d: $f0 $0c
	inc a                                            ; $493f: $3c
	ld a, [hl-]                                      ; $4940: $3a
	jr c, jr_092_4988                                ; $4941: $38 $45

	ld c, h                                          ; $4943: $4c
	and b                                            ; $4944: $a0
	jp hl                                            ; $4945: $e9


	inc d                                            ; $4946: $14
	xor b                                            ; $4947: $a8
	jp z, $eb34                                      ; $4948: $ca $34 $eb

jr_092_494b:
	ld e, d                                          ; $494b: $5a
	and b                                            ; $494c: $a0

jr_092_494d:
	xor $2d                                          ; $494d: $ee $2d
	xor l                                            ; $494f: $ad
	add sp, -$48                                     ; $4950: $e8 $b8
	inc de                                           ; $4952: $13
	db $eb                                           ; $4953: $eb

jr_092_4954:
	push af                                          ; $4954: $f5

Jump_092_4955:
	ld c, d                                          ; $4955: $4a
	and b                                            ; $4956: $a0
	ld e, [hl]                                       ; $4957: $5e
	ld e, c                                          ; $4958: $59
	ld c, c                                          ; $4959: $49
	ld c, b                                          ; $495a: $48
	and b                                            ; $495b: $a0
	cpl                                              ; $495c: $2f
	ld b, e                                          ; $495d: $43
	ld b, [hl]                                       ; $495e: $46
	dec sp                                           ; $495f: $3b
	inc [hl]                                         ; $4960: $34
	db $ec                                           ; $4961: $ec

jr_092_4962:
	rst SubAFromDE                                          ; $4962: $df
	xor b                                            ; $4963: $a8
	ld [$a01f], a                                    ; $4964: $ea $1f $a0
	cpl                                              ; $4967: $2f
	ld b, e                                          ; $4968: $43
	ld l, e                                          ; $4969: $6b
	ld c, a                                          ; $496a: $4f
	inc [hl]                                         ; $496b: $34
	db $ec                                           ; $496c: $ec
	dec hl                                           ; $496d: $2b

jr_092_496e:
	ld b, b                                          ; $496e: $40
	ld b, b                                          ; $496f: $40
	ld d, l                                          ; $4970: $55
	ld e, b                                          ; $4971: $58
	ld c, c                                          ; $4972: $49
	inc de                                           ; $4973: $13
	ld h, a                                          ; $4974: $67
	inc a                                            ; $4975: $3c
	ld a, [hl-]                                      ; $4976: $3a
	ld d, l                                          ; $4977: $55
	ccf                                              ; $4978: $3f
	ld c, a                                          ; $4979: $4f
	jr c, jr_092_49b4                                ; $497a: $38 $38

	ld b, d                                          ; $497c: $42
	ld b, a                                          ; $497d: $47
	ld c, b                                          ; $497e: $48
	and b                                            ; $497f: $a0
	cpl                                              ; $4980: $2f
	ld b, e                                          ; $4981: $43
	db $ec                                           ; $4982: $ec
	ld b, a                                          ; $4983: $47
	db $ec                                           ; $4984: $ec
	ld hl, $ec13                                     ; $4985: $21 $13 $ec

jr_092_4988:
	rst SubAFromDE                                          ; $4988: $df
	db $ec                                           ; $4989: $ec
	inc hl                                           ; $498a: $23
	xor b                                            ; $498b: $a8
	pop af                                           ; $498c: $f1
	ld h, [hl]                                       ; $498d: $66
	ld e, h                                          ; $498e: $5c
	ld b, a                                          ; $498f: $47
	ld a, b                                          ; $4990: $78
	ccf                                              ; $4991: $3f
	dec a                                            ; $4992: $3d
	ld l, h                                          ; $4993: $6c
	dec a                                            ; $4994: $3d
	jr c, @-$5e                                      ; $4995: $38 $a0

	ld l, a                                          ; $4997: $6f
	inc [hl]                                         ; $4998: $34
	ldh a, [rSCX]                                    ; $4999: $f0 $43
	ldh a, [$b8]                                     ; $499b: $f0 $b8
	adc a                                            ; $499d: $8f
	ld h, d                                          ; $499e: $62
	inc de                                           ; $499f: $13
	db $eb                                           ; $49a0: $eb
	sub c                                            ; $49a1: $91
	ld a, b                                          ; $49a2: $78
	ld h, c                                          ; $49a3: $61
	ld d, [hl]                                       ; $49a4: $56
	dec sp                                           ; $49a5: $3b
	dec a                                            ; $49a6: $3d
	ld b, d                                          ; $49a7: $42
	ld c, d                                          ; $49a8: $4a
	ld c, b                                          ; $49a9: $48
	and b                                            ; $49aa: $a0
	cpl                                              ; $49ab: $2f
	ld b, e                                          ; $49ac: $43
	ld b, [hl]                                       ; $49ad: $46
	ld c, l                                          ; $49ae: $4d
	inc [hl]                                         ; $49af: $34
	ldh a, [rSCX]                                    ; $49b0: $f0 $43
	ldh a, [$b8]                                     ; $49b2: $f0 $b8

jr_092_49b4:
	adc a                                            ; $49b4: $8f
	dec sp                                           ; $49b5: $3b
	ccf                                              ; $49b6: $3f
	xor h                                            ; $49b7: $ac
	ld d, h                                          ; $49b8: $54
	ld d, h                                          ; $49b9: $54
	ld c, d                                          ; $49ba: $4a
	inc [hl]                                         ; $49bb: $34
	db $ed                                           ; $49bc: $ed
	ld l, d                                          ; $49bd: $6a
	add a                                            ; $49be: $87
	ldh a, [rHDMA3]                                  ; $49bf: $f0 $53
	ld c, d                                          ; $49c1: $4a
	ld a, $66                                        ; $49c2: $3e $66
	add hl, sp                                       ; $49c4: $39
	and c                                            ; $49c5: $a1
	ld d, h                                          ; $49c6: $54
	ld c, l                                          ; $49c7: $4d
	inc a                                            ; $49c8: $3c
	ld d, b                                          ; $49c9: $50
	inc [hl]                                         ; $49ca: $34
	ld b, b                                          ; $49cb: $40
	ld b, d                                          ; $49cc: $42
	ldh a, [$5f]                                     ; $49cd: $f0 $5f
	ldh a, [$ce]                                     ; $49cf: $f0 $ce
	ld b, d                                          ; $49d1: $42
	inc de                                           ; $49d2: $13
	di                                               ; $49d3: $f3
	ld l, d                                          ; $49d4: $6a
	ld h, c                                          ; $49d5: $61
	ldh a, [rTMA]                                    ; $49d6: $f0 $06
	ld h, e                                          ; $49d8: $63
	ld a, c                                          ; $49d9: $79
	ld d, e                                          ; $49da: $53
	ld b, [hl]                                       ; $49db: $46
	ld c, [hl]                                       ; $49dc: $4e
	ld b, c                                          ; $49dd: $41
	ld c, d                                          ; $49de: $4a
	ld d, c                                          ; $49df: $51
	and b                                            ; $49e0: $a0
	cpl                                              ; $49e1: $2f
	ld b, e                                          ; $49e2: $43
	ret nz                                           ; $49e3: $c0

	xor b                                            ; $49e4: $a8
	ld e, e                                          ; $49e5: $5b
	ld d, [hl]                                       ; $49e6: $56
	ld b, [hl]                                       ; $49e7: $46
	inc [hl]                                         ; $49e8: $34
	cp d                                             ; $49e9: $ba
	and b                                            ; $49ea: $a0
	ld d, h                                          ; $49eb: $54
	ld c, l                                          ; $49ec: $4d
	inc a                                            ; $49ed: $3c
	ld d, b                                          ; $49ee: $50
	inc [hl]                                         ; $49ef: $34
	db $ed                                           ; $49f0: $ed
	ld l, d                                          ; $49f1: $6a
	add a                                            ; $49f2: $87
	ldh a, [rHDMA3]                                  ; $49f3: $f0 $53
	ld b, d                                          ; $49f5: $42
	inc de                                           ; $49f6: $13
	ldh a, [$5f]                                     ; $49f7: $f0 $5f
	ldh a, [$ce]                                     ; $49f9: $f0 $ce
	di                                               ; $49fb: $f3
	ld l, d                                          ; $49fc: $6a
	ld h, c                                          ; $49fd: $61
	ldh a, [rTMA]                                    ; $49fe: $f0 $06
	ld h, e                                          ; $4a00: $63
	ld a, c                                          ; $4a01: $79
	ld d, e                                          ; $4a02: $53
	inc de                                           ; $4a03: $13
	ld b, [hl]                                       ; $4a04: $46
	ld c, [hl]                                       ; $4a05: $4e
	ld b, c                                          ; $4a06: $41
	ld c, d                                          ; $4a07: $4a
	ld d, c                                          ; $4a08: $51
	and b                                            ; $4a09: $a0
	xor $2d                                          ; $4a0a: $ee $2d
	xor l                                            ; $4a0c: $ad
	add sp, -$48                                     ; $4a0d: $e8 $b8
	xor h                                            ; $4a0f: $ac
	db $eb                                           ; $4a10: $eb
	ccf                                              ; $4a11: $3f
	and b                                            ; $4a12: $a0
	cpl                                              ; $4a13: $2f
	ld b, e                                          ; $4a14: $43
	db $ec                                           ; $4a15: $ec
	xor $54                                          ; $4a16: $ee $54
	ld b, b                                          ; $4a18: $40
	xor h                                            ; $4a19: $ac
	pop af                                           ; $4a1a: $f1
	ld e, a                                          ; $4a1b: $5f
	ld e, h                                          ; $4a1c: $5c
	pop af                                           ; $4a1d: $f1
	jr nc, jr_092_4a91                               ; $4a1e: $30 $71

	ld h, c                                          ; $4a20: $61
	ld d, [hl]                                       ; $4a21: $56
	dec sp                                           ; $4a22: $3b
	ccf                                              ; $4a23: $3f
	xor h                                            ; $4a24: $ac
	ld [hl], b                                       ; $4a25: $70
	ld [hl], c                                       ; $4a26: $71
	ld b, c                                          ; $4a27: $41
	ld c, h                                          ; $4a28: $4c
	and b                                            ; $4a29: $a0
	add hl, bc                                       ; $4a2a: $09
	cpl                                              ; $4a2b: $2f
	ld b, e                                          ; $4a2c: $43
	ld e, b                                          ; $4a2d: $58
	ccf                                              ; $4a2e: $3f
	xor h                                            ; $4a2f: $ac
	xor $1d                                          ; $4a30: $ee $1d
	ld c, a                                          ; $4a32: $4f
	ld a, $3d                                        ; $4a33: $3e $3d
	ld d, h                                          ; $4a35: $54
	ld c, c                                          ; $4a36: $49
	ld b, h                                          ; $4a37: $44
	ld a, $ac                                        ; $4a38: $3e $ac
	ldh a, [rSCX]                                    ; $4a3a: $f0 $43
	ldh a, [$b8]                                     ; $4a3c: $f0 $b8
	adc a                                            ; $4a3e: $8f
	ldh a, [$5a]                                     ; $4a3f: $f0 $5a
	ld h, a                                          ; $4a41: $67
	ld d, l                                          ; $4a42: $55
	inc a                                            ; $4a43: $3c
	and b                                            ; $4a44: $a0
	ld b, [hl]                                       ; $4a45: $46
	dec sp                                           ; $4a46: $3b
	inc [hl]                                         ; $4a47: $34
	ld a, b                                          ; $4a48: $78
	ccf                                              ; $4a49: $3f
	ld d, l                                          ; $4a4a: $55
	ld c, l                                          ; $4a4b: $4d
	dec a                                            ; $4a4c: $3d
	ld b, c                                          ; $4a4d: $41
	ld c, d                                          ; $4a4e: $4a
	inc de                                           ; $4a4f: $13
	ld d, c                                          ; $4a50: $51
	ld c, h                                          ; $4a51: $4c
	dec [hl]                                         ; $4a52: $35
	ldh a, [$29]                                     ; $4a53: $f0 $29
	ld a, $38                                        ; $4a55: $3e $38
	ld c, d                                          ; $4a57: $4a
	ld d, c                                          ; $4a58: $51
	ld c, b                                          ; $4a59: $48
	and b                                            ; $4a5a: $a0
	cpl                                              ; $4a5b: $2f
	ld b, e                                          ; $4a5c: $43
	db $eb                                           ; $4a5d: $eb
	ld [hl-], a                                      ; $4a5e: $32
	inc de                                           ; $4a5f: $13
	db $eb                                           ; $4a60: $eb
	or [hl]                                          ; $4a61: $b6
	db $ec                                           ; $4a62: $ec
	ld [hl+], a                                      ; $4a63: $22
	and b                                            ; $4a64: $a0
	ld [$acac], a                                    ; $4a65: $ea $ac $ac
	db $ec                                           ; $4a68: $ec
	ld c, $72                                        ; $4a69: $0e $72
	ccf                                              ; $4a6b: $3f
	ld h, a                                          ; $4a6c: $67
	dec sp                                           ; $4a6d: $3b
	ccf                                              ; $4a6e: $3f
	inc de                                           ; $4a6f: $13
	ld d, l                                          ; $4a70: $55
	ld b, h                                          ; $4a71: $44
	ld e, b                                          ; $4a72: $58
	jr c, jr_092_4ac1                                ; $4a73: $38 $4c

	and b                                            ; $4a75: $a0
	cpl                                              ; $4a76: $2f
	ld b, e                                          ; $4a77: $43
	jp hl                                            ; $4a78: $e9


	rst SubAFromDE                                          ; $4a79: $df
	and b                                            ; $4a7a: $a0
	ld e, d                                          ; $4a7b: $5a
	add hl, sp                                       ; $4a7c: $39
	ld c, d                                          ; $4a7d: $4a
	ld a, $3d                                        ; $4a7e: $3e $3d
	and c                                            ; $4a80: $a1
	cpl                                              ; $4a81: $2f
	ld b, e                                          ; $4a82: $43
	jp hl                                            ; $4a83: $e9


	add e                                            ; $4a84: $83
	xor b                                            ; $4a85: $a8
	sbc $a0                                          ; $4a86: $de $a0
	db $ec                                           ; $4a88: $ec
	cp c                                             ; $4a89: $b9
	xor b                                            ; $4a8a: $a8
	ld a, a                                          ; $4a8b: $7f
	ld b, a                                          ; $4a8c: $47
	sub [hl]                                         ; $4a8d: $96
	dec sp                                           ; $4a8e: $3b
	ccf                                              ; $4a8f: $3f
	ld c, a                                          ; $4a90: $4f

jr_092_4a91:
	ld d, b                                          ; $4a91: $50
	ld e, [hl]                                       ; $4a92: $5e
	dec a                                            ; $4a93: $3d
	ld l, h                                          ; $4a94: $6c
	dec a                                            ; $4a95: $3d
	jr c, jr_092_4ae2                                ; $4a96: $38 $4a

	ld c, b                                          ; $4a98: $48
	and b                                            ; $4a99: $a0
	cpl                                              ; $4a9a: $2f
	ld b, e                                          ; $4a9b: $43
	db $ed                                           ; $4a9c: $ed
	ld b, l                                          ; $4a9d: $45
	xor h                                            ; $4a9e: $ac
	jp hl                                            ; $4a9f: $e9


	inc l                                            ; $4aa0: $2c
	and b                                            ; $4aa1: $a0
	cp [hl]                                          ; $4aa2: $be
	xor l                                            ; $4aa3: $ad
	ld c, a                                          ; $4aa4: $4f
	add hl, sp                                       ; $4aa5: $39
	ld a, d                                          ; $4aa6: $7a
	ld c, [hl]                                       ; $4aa7: $4e
	ld b, c                                          ; $4aa8: $41
	ld c, d                                          ; $4aa9: $4a
	ld d, c                                          ; $4aaa: $51
	ld c, h                                          ; $4aab: $4c
	ld c, b                                          ; $4aac: $48
	and b                                            ; $4aad: $a0
	cpl                                              ; $4aae: $2f
	ld b, e                                          ; $4aaf: $43
	ld [$ac05], a                                    ; $4ab0: $ea $05 $ac
	add sp, -$3e                                     ; $4ab3: $e8 $c2
	and b                                            ; $4ab5: $a0
	or [hl]                                          ; $4ab6: $b6
	xor l                                            ; $4ab7: $ad
	jp hl                                            ; $4ab8: $e9


	add h                                            ; $4ab9: $84
	xor h                                            ; $4aba: $ac
	add sp, -$80                                     ; $4abb: $e8 $80
	and b                                            ; $4abd: $a0
	ld b, [hl]                                       ; $4abe: $46
	dec sp                                           ; $4abf: $3b
	xor h                                            ; $4ac0: $ac

jr_092_4ac1:
	ld a, b                                          ; $4ac1: $78
	ccf                                              ; $4ac2: $3f
	ld d, l                                          ; $4ac3: $55
	ld c, l                                          ; $4ac4: $4d
	dec a                                            ; $4ac5: $3d
	ld b, c                                          ; $4ac6: $41
	ld c, d                                          ; $4ac7: $4a
	ld d, c                                          ; $4ac8: $51
	ld c, h                                          ; $4ac9: $4c
	and b                                            ; $4aca: $a0
	xor $2d                                          ; $4acb: $ee $2d
	inc [hl]                                         ; $4acd: $34
	ld b, b                                          ; $4ace: $40
	add hl, sp                                       ; $4acf: $39
	ld c, d                                          ; $4ad0: $4a
	ld d, c                                          ; $4ad1: $51
	xor b                                            ; $4ad2: $a8
	db $ec                                           ; $4ad3: $ec
	ld c, $72                                        ; $4ad4: $0e $72
	ccf                                              ; $4ad6: $3f
	jr c, jr_092_4b14                                ; $4ad7: $38 $3b

	ccf                                              ; $4ad9: $3f
	inc de                                           ; $4ada: $13
	ld d, l                                          ; $4adb: $55
	ld b, h                                          ; $4adc: $44
	ld e, b                                          ; $4add: $58
	jr c, jr_092_4b2c                                ; $4ade: $38 $4c

	and b                                            ; $4ae0: $a0
	cpl                                              ; $4ae1: $2f

jr_092_4ae2:
	ld b, e                                          ; $4ae2: $43
	db $ec                                           ; $4ae3: $ec
	add hl, sp                                       ; $4ae4: $39
	db $ed                                           ; $4ae5: $ed
	ld h, l                                          ; $4ae6: $65
	ld a, $3d                                        ; $4ae7: $3e $3d
	xor b                                            ; $4ae9: $a8
	ldh a, [rVBK]                                    ; $4aea: $f0 $4f
	ld d, e                                          ; $4aec: $53
	ldh a, [c]                                       ; $4aed: $f2
	di                                               ; $4aee: $f3
	ld h, e                                          ; $4aef: $63
	ld c, l                                          ; $4af0: $4d
	ld c, [hl]                                       ; $4af1: $4e
	ld a, a                                          ; $4af2: $7f
	ldh a, [rTAC]                                    ; $4af3: $f0 $07
	ld b, h                                          ; $4af5: $44
	ld b, l                                          ; $4af6: $45
	and b                                            ; $4af7: $a0
	db $ec                                           ; $4af8: $ec
	cp c                                             ; $4af9: $b9
	xor l                                            ; $4afa: $ad
	ld b, [hl]                                       ; $4afb: $46
	ld d, d                                          ; $4afc: $52
	ld d, a                                          ; $4afd: $57
	ldh a, [$67]                                     ; $4afe: $f0 $67
	ldh a, [$9f]                                     ; $4b00: $f0 $9f
	ld d, e                                          ; $4b02: $53
	ldh a, [rAUD1LOW]                                ; $4b03: $f0 $13
	inc a                                            ; $4b05: $3c
	dec sp                                           ; $4b06: $3b
	dec a                                            ; $4b07: $3d
	ld b, d                                          ; $4b08: $42
	ld c, d                                          ; $4b09: $4a
	ld c, b                                          ; $4b0a: $48
	and b                                            ; $4b0b: $a0
	ld h, e                                          ; $4b0c: $63
	ldh a, [rAUD1SWEEP]                              ; $4b0d: $f0 $10
	ld h, e                                          ; $4b0f: $63
	ldh a, [rAUD1SWEEP]                              ; $4b10: $f0 $10
	ld [hl], d                                       ; $4b12: $72
	ld b, a                                          ; $4b13: $47

jr_092_4b14:
	ld a, b                                          ; $4b14: $78
	ccf                                              ; $4b15: $3f
	inc de                                           ; $4b16: $13
	ld d, l                                          ; $4b17: $55
	ld c, l                                          ; $4b18: $4d
	ccf                                              ; $4b19: $3f
	inc [hl]                                         ; $4b1a: $34
	add sp, -$80                                     ; $4b1b: $e8 $80
	and b                                            ; $4b1d: $a0
	ld b, [hl]                                       ; $4b1e: $46
	dec sp                                           ; $4b1f: $3b
	xor h                                            ; $4b20: $ac
	db $eb                                           ; $4b21: $eb
	ld h, h                                          ; $4b22: $64
	and b                                            ; $4b23: $a0
	ld e, d                                          ; $4b24: $5a
	add hl, sp                                       ; $4b25: $39
	ld c, d                                          ; $4b26: $4a
	ld a, $3d                                        ; $4b27: $3e $3d
	inc a                                            ; $4b29: $3c
	and c                                            ; $4b2a: $a1
	cp [hl]                                          ; $4b2b: $be

jr_092_4b2c:
	xor b                                            ; $4b2c: $a8
	ld b, b                                          ; $4b2d: $40
	ld c, l                                          ; $4b2e: $4d
	ld c, e                                          ; $4b2f: $4b
	db $ec                                           ; $4b30: $ec
	cp c                                             ; $4b31: $b9
	ld c, d                                          ; $4b32: $4a
	ld d, c                                          ; $4b33: $51
	and b                                            ; $4b34: $a0
	ld a, b                                          ; $4b35: $78
	ccf                                              ; $4b36: $3f
	ld d, l                                          ; $4b37: $55
	ld c, l                                          ; $4b38: $4d
	ccf                                              ; $4b39: $3f
	xor h                                            ; $4b3a: $ac
	add sp, -$80                                     ; $4b3b: $e8 $80
	and b                                            ; $4b3d: $a0
	cpl                                              ; $4b3e: $2f
	ld b, e                                          ; $4b3f: $43
	db $ec                                           ; $4b40: $ec
	rst SubAFromDE                                          ; $4b41: $df
	db $eb                                           ; $4b42: $eb
	inc sp                                           ; $4b43: $33
	xor b                                            ; $4b44: $a8
	db $eb                                           ; $4b45: $eb
	inc [hl]                                         ; $4b46: $34
	xor h                                            ; $4b47: $ac
	xor $08                                          ; $4b48: $ee $08
	ld c, d                                          ; $4b4a: $4a
	sbc e                                            ; $4b4b: $9b
	ld c, d                                          ; $4b4c: $4a
	ld c, a                                          ; $4b4d: $4f
	ld [hl], d                                       ; $4b4e: $72
	ld c, [hl]                                       ; $4b4f: $4e
	inc a                                            ; $4b50: $3c
	and b                                            ; $4b51: $a0
	cpl                                              ; $4b52: $2f
	ld b, e                                          ; $4b53: $43
	ld l, e                                          ; $4b54: $6b
	inc a                                            ; $4b55: $3c
	inc [hl]                                         ; $4b56: $34
	sbc e                                            ; $4b57: $9b
	ld b, d                                          ; $4b58: $42
	ldh a, [rVBK]                                    ; $4b59: $f0 $4f
	ld d, e                                          ; $4b5b: $53
	inc de                                           ; $4b5c: $13
	jp hl                                            ; $4b5d: $e9


	reti                                             ; $4b5e: $d9


	and b                                            ; $4b5f: $a0
	ld b, [hl]                                       ; $4b60: $46
	dec sp                                           ; $4b61: $3b
	xor h                                            ; $4b62: $ac
	ld a, b                                          ; $4b63: $78
	ccf                                              ; $4b64: $3f
	ld d, l                                          ; $4b65: $55
	ld c, l                                          ; $4b66: $4d
	dec a                                            ; $4b67: $3d
	ld b, c                                          ; $4b68: $41
	ld c, d                                          ; $4b69: $4a
	ld d, c                                          ; $4b6a: $51
	ld c, h                                          ; $4b6b: $4c
	xor b                                            ; $4b6c: $a8
	ldh a, [$29]                                     ; $4b6d: $f0 $29
	ld a, $38                                        ; $4b6f: $3e $38
	ld c, d                                          ; $4b71: $4a
	ld d, c                                          ; $4b72: $51
	ld c, b                                          ; $4b73: $48
	and b                                            ; $4b74: $a0
	cpl                                              ; $4b75: $2f
	ld b, e                                          ; $4b76: $43
	db $eb                                           ; $4b77: $eb
	ld [hl-], a                                      ; $4b78: $32
	inc de                                           ; $4b79: $13
	db $eb                                           ; $4b7a: $eb
	and h                                            ; $4b7b: $a4
	db $ec                                           ; $4b7c: $ec
	ld [hl+], a                                      ; $4b7d: $22
	and b                                            ; $4b7e: $a0
	db $ec                                           ; $4b7f: $ec
	cp c                                             ; $4b80: $b9
	xor b                                            ; $4b81: $a8
	ld a, a                                          ; $4b82: $7f
	ld b, a                                          ; $4b83: $47
	sub [hl]                                         ; $4b84: $96
	dec sp                                           ; $4b85: $3b
	ccf                                              ; $4b86: $3f
	inc de                                           ; $4b87: $13
	ld c, a                                          ; $4b88: $4f
	ld d, b                                          ; $4b89: $50
	ld e, [hl]                                       ; $4b8a: $5e
	dec a                                            ; $4b8b: $3d
	ld l, h                                          ; $4b8c: $6c
	dec a                                            ; $4b8d: $3d
	jr c, @+$4c                                      ; $4b8e: $38 $4a

	ld c, b                                          ; $4b90: $48
	and b                                            ; $4b91: $a0
	cpl                                              ; $4b92: $2f
	ld b, e                                          ; $4b93: $43
	db $ec                                           ; $4b94: $ec
	add hl, sp                                       ; $4b95: $39
	ldh a, [$78]                                     ; $4b96: $f0 $78
	ldh a, [rVBK]                                    ; $4b98: $f0 $4f
	ld a, $3d                                        ; $4b9a: $3e $3d
	ld b, l                                          ; $4b9c: $45
	xor b                                            ; $4b9d: $a8
	halt                                             ; $4b9e: $76
	dec sp                                           ; $4b9f: $3b
	ccf                                              ; $4ba0: $3f
	inc [hl]                                         ; $4ba1: $34
	ldh a, [$fe]                                     ; $4ba2: $f0 $fe
	ld b, c                                          ; $4ba4: $41
	ld c, a                                          ; $4ba5: $4f
	add hl, sp                                       ; $4ba6: $39
	ld b, h                                          ; $4ba7: $44
	inc a                                            ; $4ba8: $3c
	ld d, b                                          ; $4ba9: $50
	and b                                            ; $4baa: $a0
	ld b, [hl]                                       ; $4bab: $46
	dec sp                                           ; $4bac: $3b
	inc [hl]                                         ; $4bad: $34
	ld c, a                                          ; $4bae: $4f
	ld b, c                                          ; $4baf: $41
	ld c, a                                          ; $4bb0: $4f
	add hl, sp                                       ; $4bb1: $39
	ld c, d                                          ; $4bb2: $4a
	ld d, c                                          ; $4bb3: $51
	ld c, h                                          ; $4bb4: $4c
	xor b                                            ; $4bb5: $a8
	ldh a, [$2a]                                     ; $4bb6: $f0 $2a
	ldh a, [$f5]                                     ; $4bb8: $f0 $f5
	ld e, [hl]                                       ; $4bba: $5e
	ld c, [hl]                                       ; $4bbb: $4e
	add h                                            ; $4bbc: $84
	pop af                                           ; $4bbd: $f1
	sub d                                            ; $4bbe: $92
	jr c, jr_092_4c0b                                ; $4bbf: $38 $4a

	ld d, c                                          ; $4bc1: $51
	ld b, l                                          ; $4bc2: $45
	ld c, h                                          ; $4bc3: $4c
	and b                                            ; $4bc4: $a0
	cpl                                              ; $4bc5: $2f
	ld b, e                                          ; $4bc6: $43
	rst JumpTable                                          ; $4bc7: $c7
	ld b, h                                          ; $4bc8: $44
	ld c, h                                          ; $4bc9: $4c
	xor b                                            ; $4bca: $a8
	jp hl                                            ; $4bcb: $e9


	inc l                                            ; $4bcc: $2c
	xor b                                            ; $4bcd: $a8
	ld [hl-], a                                      ; $4bce: $32
	ldh a, [rSCX]                                    ; $4bcf: $f0 $43
	push af                                          ; $4bd1: $f5
	dec a                                            ; $4bd2: $3d
	dec sp                                           ; $4bd3: $3b
	ccf                                              ; $4bd4: $3f
	ld b, b                                          ; $4bd5: $40
	add hl, sp                                       ; $4bd6: $39
	ldh a, [$fa]                                     ; $4bd7: $f0 $fa
	ldh a, [$be]                                     ; $4bd9: $f0 $be
	ld b, d                                          ; $4bdb: $42
	inc a                                            ; $4bdc: $3c
	ld c, b                                          ; $4bdd: $48
	inc sp                                           ; $4bde: $33
	add hl, bc                                       ; $4bdf: $09
	cpl                                              ; $4be0: $2f
	ld b, e                                          ; $4be1: $43
	db $ec                                           ; $4be2: $ec
	rst SubAFromDE                                          ; $4be3: $df
	db $eb                                           ; $4be4: $eb
	inc sp                                           ; $4be5: $33
	xor b                                            ; $4be6: $a8
	db $eb                                           ; $4be7: $eb
	inc [hl]                                         ; $4be8: $34
	xor h                                            ; $4be9: $ac
	xor $08                                          ; $4bea: $ee $08
	ld c, d                                          ; $4bec: $4a
	ldh a, [$a5]                                     ; $4bed: $f0 $a5
	ldh a, [rSCX]                                    ; $4bef: $f0 $43
	ld c, d                                          ; $4bf1: $4a
	ld c, a                                          ; $4bf2: $4f
	ld [hl], d                                       ; $4bf3: $72
	ld c, [hl]                                       ; $4bf4: $4e
	inc a                                            ; $4bf5: $3c
	and b                                            ; $4bf6: $a0
	cpl                                              ; $4bf7: $2f
	ld b, e                                          ; $4bf8: $43
	ld l, e                                          ; $4bf9: $6b
	inc a                                            ; $4bfa: $3c
	inc [hl]                                         ; $4bfb: $34
	ldh a, [$a5]                                     ; $4bfc: $f0 $a5
	ldh a, [rSCX]                                    ; $4bfe: $f0 $43
	ld b, d                                          ; $4c00: $42
	ldh a, [rVBK]                                    ; $4c01: $f0 $4f
	ld d, e                                          ; $4c03: $53
	inc de                                           ; $4c04: $13
	jp hl                                            ; $4c05: $e9


	reti                                             ; $4c06: $d9


	and b                                            ; $4c07: $a0
	cpl                                              ; $4c08: $2f
	ld b, e                                          ; $4c09: $43
	ld h, h                                          ; $4c0a: $64

jr_092_4c0b:
	dec sp                                           ; $4c0b: $3b
	inc [hl]                                         ; $4c0c: $34
	db $ec                                           ; $4c0d: $ec
	db $10                                           ; $4c0e: $10
	xor h                                            ; $4c0f: $ac
	db $ec                                           ; $4c10: $ec
	rst SubAFromDE                                          ; $4c11: $df
	ld b, d                                          ; $4c12: $42
	inc de                                           ; $4c13: $13
	db $ed                                           ; $4c14: $ed
	ld l, d                                          ; $4c15: $6a
	ld d, e                                          ; $4c16: $53
	ldh a, [$bb]                                     ; $4c17: $f0 $bb
	ld d, d                                          ; $4c19: $52
	ld c, [hl]                                       ; $4c1a: $4e
	sub a                                            ; $4c1b: $97
	and b                                            ; $4c1c: $a0
	cpl                                              ; $4c1d: $2f
	ld b, e                                          ; $4c1e: $43
	jp hl                                            ; $4c1f: $e9


	ld de, $2fa0                                     ; $4c20: $11 $a0 $2f
	ld b, e                                          ; $4c23: $43
	ld b, [hl]                                       ; $4c24: $46
	dec sp                                           ; $4c25: $3b
	inc [hl]                                         ; $4c26: $34
	db $ec                                           ; $4c27: $ec
	rst SubAFromDE                                          ; $4c28: $df
	and b                                            ; $4c29: $a0
	ld b, [hl]                                       ; $4c2a: $46
	dec sp                                           ; $4c2b: $3b
	inc [hl]                                         ; $4c2c: $34
	ld a, b                                          ; $4c2d: $78
	ccf                                              ; $4c2e: $3f
	ld d, l                                          ; $4c2f: $55
	ld c, l                                          ; $4c30: $4d
	dec a                                            ; $4c31: $3d
	ld b, c                                          ; $4c32: $41
	ld c, d                                          ; $4c33: $4a
	inc de                                           ; $4c34: $13
	ld d, c                                          ; $4c35: $51
	ld c, h                                          ; $4c36: $4c
	dec [hl]                                         ; $4c37: $35
	ldh a, [$29]                                     ; $4c38: $f0 $29
	ld a, $38                                        ; $4c3a: $3e $38
	ld c, d                                          ; $4c3c: $4a
	ld d, c                                          ; $4c3d: $51
	xor l                                            ; $4c3e: $ad
	db $ed                                           ; $4c3f: $ed
	ld l, d                                          ; $4c40: $6a
	ld e, d                                          ; $4c41: $5a
	add hl, sp                                       ; $4c42: $39
	ld c, d                                          ; $4c43: $4a
	ld a, $3d                                        ; $4c44: $3e $3d
	inc a                                            ; $4c46: $3c
	and c                                            ; $4c47: $a1
	cpl                                              ; $4c48: $2f
	ld b, e                                          ; $4c49: $43
	ld e, b                                          ; $4c4a: $58
	ld d, c                                          ; $4c4b: $51
	ld d, e                                          ; $4c4c: $53
	ld c, e                                          ; $4c4d: $4b
	inc [hl]                                         ; $4c4e: $34
	db $ec                                           ; $4c4f: $ec
	rst SubAFromDE                                          ; $4c50: $df
	xor b                                            ; $4c51: $a8
	ld [$4470], a                                    ; $4c52: $ea $70 $44
	dec sp                                           ; $4c55: $3b
	dec a                                            ; $4c56: $3d
	ld b, l                                          ; $4c57: $45
	and b                                            ; $4c58: $a0
	ldh a, [$31]                                     ; $4c59: $f0 $31
	ld c, e                                          ; $4c5b: $4b
	ld c, b                                          ; $4c5c: $48
	xor h                                            ; $4c5d: $ac
	ld d, c                                          ; $4c5e: $51
	ld [hl], b                                       ; $4c5f: $70
	ld d, l                                          ; $4c60: $55
	ldh a, [c]                                       ; $4c61: $f2
	dec e                                            ; $4c62: $1d
	adc [hl]                                         ; $4c63: $8e
	ld a, $61                                        ; $4c64: $3e $61
	ld d, [hl]                                       ; $4c66: $56
	dec sp                                           ; $4c67: $3b
	ccf                                              ; $4c68: $3f
	xor h                                            ; $4c69: $ac
	ld l, e                                          ; $4c6a: $6b
	ld c, a                                          ; $4c6b: $4f
	ldh a, [$f4]                                     ; $4c6c: $f0 $f4
	ld e, [hl]                                       ; $4c6e: $5e
	ccf                                              ; $4c6f: $3f
	ld a, [hl-]                                      ; $4c70: $3a
	jr c, jr_092_4cb4                                ; $4c71: $38 $41

	ld c, d                                          ; $4c73: $4a
	ld d, c                                          ; $4c74: $51
	and b                                            ; $4c75: $a0
	cpl                                              ; $4c76: $2f
	ld b, e                                          ; $4c77: $43
	ldh a, [$5a]                                     ; $4c78: $f0 $5a
	add l                                            ; $4c7a: $85
	inc [hl]                                         ; $4c7b: $34
	ld c, c                                          ; $4c7c: $49
	ccf                                              ; $4c7d: $3f
	ld c, a                                          ; $4c7e: $4f
	ld b, b                                          ; $4c7f: $40
	add hl, sp                                       ; $4c80: $39
	ld b, a                                          ; $4c81: $47
	ld c, e                                          ; $4c82: $4b
	inc de                                           ; $4c83: $13
	ld [hl], d                                       ; $4c84: $72
	ld e, [hl]                                       ; $4c85: $5e
	ld a, [hl-]                                      ; $4c86: $3a
	inc a                                            ; $4c87: $3c
	dec sp                                           ; $4c88: $3b
	dec a                                            ; $4c89: $3d
	ld b, l                                          ; $4c8a: $45
	and b                                            ; $4c8b: $a0
	rst JumpTable                                          ; $4c8c: $c7
	ld c, d                                          ; $4c8d: $4a
	ld d, c                                          ; $4c8e: $51
	inc a                                            ; $4c8f: $3c
	xor c                                            ; $4c90: $a9
	ldh a, [rHDMA5]                                  ; $4c91: $f0 $55
	pop af                                           ; $4c93: $f1
	add b                                            ; $4c94: $80
	ld a, $3a                                        ; $4c95: $3e $3a
	inc a                                            ; $4c97: $3c
	dec sp                                           ; $4c98: $3b
	dec a                                            ; $4c99: $3d
	ld l, h                                          ; $4c9a: $6c
	dec a                                            ; $4c9b: $3d
	jr c, jr_092_4ce8                                ; $4c9c: $38 $4a

	inc de                                           ; $4c9e: $13
	db $ec                                           ; $4c9f: $ec
	cp c                                             ; $4ca0: $b9
	ld c, b                                          ; $4ca1: $48
	and b                                            ; $4ca2: $a0
	cpl                                              ; $4ca3: $2f
	ld b, e                                          ; $4ca4: $43
	jp hl                                            ; $4ca5: $e9


	di                                               ; $4ca6: $f3
	xor h                                            ; $4ca7: $ac
	jp hl                                            ; $4ca8: $e9


Call_092_4ca9:
	ld l, l                                          ; $4ca9: $6d
	xor b                                            ; $4caa: $a8
	db $ec                                           ; $4cab: $ec
	push bc                                          ; $4cac: $c5
	ld a, d                                          ; $4cad: $7a
	ld c, [hl]                                       ; $4cae: $4e
	ld c, h                                          ; $4caf: $4c
	and b                                            ; $4cb0: $a0
	ld b, [hl]                                       ; $4cb1: $46
	dec sp                                           ; $4cb2: $3b
	inc [hl]                                         ; $4cb3: $34

jr_092_4cb4:
	ld a, b                                          ; $4cb4: $78
	ccf                                              ; $4cb5: $3f
	ld d, l                                          ; $4cb6: $55
	ld c, l                                          ; $4cb7: $4d
	dec a                                            ; $4cb8: $3d
	ld b, c                                          ; $4cb9: $41
	ld c, d                                          ; $4cba: $4a
	inc de                                           ; $4cbb: $13
	ld d, c                                          ; $4cbc: $51
	ld c, h                                          ; $4cbd: $4c
	dec [hl]                                         ; $4cbe: $35
	db $ed                                           ; $4cbf: $ed
	ld l, d                                          ; $4cc0: $6a
	ld e, d                                          ; $4cc1: $5a
	add hl, sp                                       ; $4cc2: $39
	ld c, d                                          ; $4cc3: $4a
	ld a, $3d                                        ; $4cc4: $3e $3d
	and c                                            ; $4cc6: $a1
	ld b, [hl]                                       ; $4cc7: $46
	inc [hl]                                         ; $4cc8: $34
	ld b, [hl]                                       ; $4cc9: $46
	ld d, a                                          ; $4cca: $57
	ld d, e                                          ; $4ccb: $53
	ld c, c                                          ; $4ccc: $49
	add hl, sp                                       ; $4ccd: $39
	inc de                                           ; $4cce: $13
	ld [hl], b                                       ; $4ccf: $70
	ldh a, [rAUD1SWEEP]                              ; $4cd0: $f0 $10
	jr c, jr_092_4d26                                ; $4cd2: $38 $52

	ld d, c                                          ; $4cd4: $51
	xor b                                            ; $4cd5: $a8
	adc b                                            ; $4cd6: $88
	sub c                                            ; $4cd7: $91
	ld c, e                                          ; $4cd8: $4b
	inc [hl]                                         ; $4cd9: $34
	ldh a, [c]                                       ; $4cda: $f2
	dec e                                            ; $4cdb: $1d
	adc [hl]                                         ; $4cdc: $8e
	ld a, $3f                                        ; $4cdd: $3e $3f
	ldh a, [c]                                       ; $4cdf: $f2
	ld [de], a                                       ; $4ce0: $12
	ld c, l                                          ; $4ce1: $4d
	ld h, c                                          ; $4ce2: $61
	ld d, [hl]                                       ; $4ce3: $56
	add hl, sp                                       ; $4ce4: $39
	inc de                                           ; $4ce5: $13
	ld c, c                                          ; $4ce6: $49
	ld d, h                                          ; $4ce7: $54

jr_092_4ce8:
	ld e, a                                          ; $4ce8: $5f
	ld b, h                                          ; $4ce9: $44
	dec sp                                           ; $4cea: $3b
	dec a                                            ; $4ceb: $3d
	ld b, c                                          ; $4cec: $41
	ld c, d                                          ; $4ced: $4a
	ld d, c                                          ; $4cee: $51
	ld b, l                                          ; $4cef: $45
	and b                                            ; $4cf0: $a0
	cpl                                              ; $4cf1: $2f
	ld b, e                                          ; $4cf2: $43
	db $ec                                           ; $4cf3: $ec
	cp c                                             ; $4cf4: $b9
	ld c, h                                          ; $4cf5: $4c
	xor h                                            ; $4cf6: $ac
	ldh a, [c]                                       ; $4cf7: $f2
	ld [de], a                                       ; $4cf8: $12
	ld c, l                                          ; $4cf9: $4d
	ld a, [hl-]                                      ; $4cfa: $3a
	ld d, l                                          ; $4cfb: $55
	ccf                                              ; $4cfc: $3f
	and b                                            ; $4cfd: $a0
	xor $2d                                          ; $4cfe: $ee $2d
	xor b                                            ; $4d00: $a8
	ldh a, [rHDMA4]                                  ; $4d01: $f0 $54
	ld a, $44                                        ; $4d03: $3e $44
	ld e, l                                          ; $4d05: $5d
	pop af                                           ; $4d06: $f1
	ld de, $65f0                                     ; $4d07: $11 $f0 $65
	ld d, e                                          ; $4d0a: $53
	inc de                                           ; $4d0b: $13
	ldh a, [$9c]                                     ; $4d0c: $f0 $9c
	ld d, l                                          ; $4d0e: $55

jr_092_4d0f:
	ld a, [hl-]                                      ; $4d0f: $3a
	dec sp                                           ; $4d10: $3b
	dec a                                            ; $4d11: $3d
	ld l, h                                          ; $4d12: $6c
	dec a                                            ; $4d13: $3d
	jr c, jr_092_4d60                                ; $4d14: $38 $4a

	ld d, c                                          ; $4d16: $51
	and b                                            ; $4d17: $a0
	adc b                                            ; $4d18: $88
	sub c                                            ; $4d19: $91
	ld c, d                                          ; $4d1a: $4a
	ld d, c                                          ; $4d1b: $51
	inc a                                            ; $4d1c: $3c
	xor c                                            ; $4d1d: $a9
	db $ec                                           ; $4d1e: $ec
	cp c                                             ; $4d1f: $b9
	xor b                                            ; $4d20: $a8
	ld d, h                                          ; $4d21: $54
	ld c, l                                          ; $4d22: $4d
	ld c, d                                          ; $4d23: $4a
	pop af                                           ; $4d24: $f1
	cp c                                             ; $4d25: $b9

jr_092_4d26:
	ldh a, [rVBK]                                    ; $4d26: $f0 $4f
	ld a, $52                                        ; $4d28: $3e $52
	ld a, $3d                                        ; $4d2a: $3e $3d
	and b                                            ; $4d2c: $a0
	cpl                                              ; $4d2d: $2f
	ld b, e                                          ; $4d2e: $43
	db $ed                                           ; $4d2f: $ed
	ld d, $34                                        ; $4d30: $16 $34
	db $ec                                           ; $4d32: $ec
	rst SubAFromDE                                          ; $4d33: $df
	ld d, e                                          ; $4d34: $53
	inc de                                           ; $4d35: $13
	jr c, @+$3c                                      ; $4d36: $38 $3a

	jr c, jr_092_4d6f                                ; $4d38: $38 $35

jr_092_4d3a:
	add sp, -$0e                                     ; $4d3a: $e8 $f2
	and b                                            ; $4d3c: $a0
	add hl, bc                                       ; $4d3d: $09
	ld d, d                                          ; $4d3e: $52
	ld [hl], h                                       ; $4d3f: $74
	inc [hl]                                         ; $4d40: $34
	ldh a, [$57]                                     ; $4d41: $f0 $57
	ldh a, [$ae]                                     ; $4d43: $f0 $ae
	xor b                                            ; $4d45: $a8
	adc $9b                                          ; $4d46: $ce $9b
	ld d, e                                          ; $4d48: $53
	db $eb                                           ; $4d49: $eb
	ld l, e                                          ; $4d4a: $6b
	ld h, e                                          ; $4d4b: $63
	and b                                            ; $4d4c: $a0
	sbc e                                            ; $4d4d: $9b
	ld a, [hl-]                                      ; $4d4e: $3a
	ld b, c                                          ; $4d4f: $41
	ccf                                              ; $4d50: $3f
	db $eb                                           ; $4d51: $eb
	ld d, e                                          ; $4d52: $53
	ld c, a                                          ; $4d53: $4f
	ld b, d                                          ; $4d54: $42
	inc de                                           ; $4d55: $13
	ldh a, [$fa]                                     ; $4d56: $f0 $fa
	ld l, h                                          ; $4d58: $6c
	dec a                                            ; $4d59: $3d
	ld d, l                                          ; $4d5a: $55
	ld c, e                                          ; $4d5b: $4b
	ld a, [hl-]                                      ; $4d5c: $3a
	jr c, jr_092_4dbc                                ; $4d5d: $38 $5d

	ld e, d                                          ; $4d5f: $5a

jr_092_4d60:
	ld c, b                                          ; $4d60: $48
	xor h                                            ; $4d61: $ac
	ld b, b                                          ; $4d62: $40
	ld d, h                                          ; $4d63: $54
	ld b, d                                          ; $4d64: $42
	db $ed                                           ; $4d65: $ed
	add l                                            ; $4d66: $85
	ld h, d                                          ; $4d67: $62
	pop af                                           ; $4d68: $f1
	ld a, h                                          ; $4d69: $7c
	ld a, $3a                                        ; $4d6a: $3e $3a
	ld e, b                                          ; $4d6c: $58
	jr c, jr_092_4d0f                                ; $4d6d: $38 $a0

jr_092_4d6f:
	cpl                                              ; $4d6f: $2f
	ld b, e                                          ; $4d70: $43
	ldh a, [$b0]                                     ; $4d71: $f0 $b0
	dec sp                                           ; $4d73: $3b
	ccf                                              ; $4d74: $3f
	ld c, [hl]                                       ; $4d75: $4e
	ld b, d                                          ; $4d76: $42
	ld b, h                                          ; $4d77: $44
	inc a                                            ; $4d78: $3c
	ld d, b                                          ; $4d79: $50
	xor h                                            ; $4d7a: $ac
	ldh a, [$34]                                     ; $4d7b: $f0 $34
	ld b, a                                          ; $4d7d: $47
	db $ec                                           ; $4d7e: $ec
	ld [$a048], sp                                   ; $4d7f: $08 $48 $a0
	ldh a, [$79]                                     ; $4d82: $f0 $79
	ld l, b                                          ; $4d84: $68
	inc [hl]                                         ; $4d85: $34
	db $ed                                           ; $4d86: $ed
	ld [hl], a                                       ; $4d87: $77
	ld h, d                                          ; $4d88: $62
	inc de                                           ; $4d89: $13
	db $ec                                           ; $4d8a: $ec
	ld b, b                                          ; $4d8b: $40
	rst SubAFromDE                                          ; $4d8c: $df
	ld h, e                                          ; $4d8d: $63
	xor b                                            ; $4d8e: $a8
	sub b                                            ; $4d8f: $90
	ld a, $6c                                        ; $4d90: $3e $6c
	ld b, a                                          ; $4d92: $47
	sbc c                                            ; $4d93: $99
	dec sp                                           ; $4d94: $3b
	ccf                                              ; $4d95: $3f
	ld a, [hl-]                                      ; $4d96: $3a
	ld e, b                                          ; $4d97: $58
	jr c, jr_092_4d3a                                ; $4d98: $38 $a0

	cpl                                              ; $4d9a: $2f
	ld b, e                                          ; $4d9b: $43
	db $ec                                           ; $4d9c: $ec
	ldh [rHDMA3], a                                  ; $4d9d: $e0 $53
	xor h                                            ; $4d9f: $ac
	sbc e                                            ; $4da0: $9b
	ld h, d                                          ; $4da1: $62
	ldh a, [$fa]                                     ; $4da2: $f0 $fa
	ldh a, [$be]                                     ; $4da4: $f0 $be
	ld a, [hl-]                                      ; $4da6: $3a
	ld b, c                                          ; $4da7: $41
	ccf                                              ; $4da8: $3f
	ld c, b                                          ; $4da9: $48
	and b                                            ; $4daa: $a0
	ld d, h                                          ; $4dab: $54
	ld d, h                                          ; $4dac: $54
	ld b, a                                          ; $4dad: $47
	ld c, e                                          ; $4dae: $4b
	inc [hl]                                         ; $4daf: $34
	db $eb                                           ; $4db0: $eb
	ld d, l                                          ; $4db1: $55
	ld c, a                                          ; $4db2: $4f
	ld b, d                                          ; $4db3: $42
	inc de                                           ; $4db4: $13
	ld a, $3c                                        ; $4db5: $3e $3c
	db $ec                                           ; $4db7: $ec
	dec bc                                           ; $4db8: $0b
	and b                                            ; $4db9: $a0
	cpl                                              ; $4dba: $2f
	ld b, e                                          ; $4dbb: $43

jr_092_4dbc:
	ld b, [hl]                                       ; $4dbc: $46
	dec sp                                           ; $4dbd: $3b
	inc [hl]                                         ; $4dbe: $34
	db $ec                                           ; $4dbf: $ec
	ldh [$a8], a                                     ; $4dc0: $e0 $a8
	db $eb                                           ; $4dc2: $eb
	ld d, l                                          ; $4dc3: $55
	ld c, c                                          ; $4dc4: $49
	ld c, e                                          ; $4dc5: $4b
	inc [hl]                                         ; $4dc6: $34
	ldh a, [rHDMA5]                                  ; $4dc7: $f0 $55
	ldh a, [rBCPS]                                   ; $4dc9: $f0 $68
	ld b, h                                          ; $4dcb: $44
	ld a, [hl-]                                      ; $4dcc: $3a
	and b                                            ; $4dcd: $a0
	sbc e                                            ; $4dce: $9b
	ld a, [hl-]                                      ; $4dcf: $3a
	ld b, c                                          ; $4dd0: $41
	ccf                                              ; $4dd1: $3f
	ld c, a                                          ; $4dd2: $4f
	ld b, d                                          ; $4dd3: $42
	xor h                                            ; $4dd4: $ac
	ldh a, [$c9]                                     ; $4dd5: $f0 $c9
	pop af                                           ; $4dd7: $f1
	ld c, h                                          ; $4dd8: $4c
	pop af                                           ; $4dd9: $f1
	inc bc                                           ; $4dda: $03
	ld c, d                                          ; $4ddb: $4a
	inc [hl]                                         ; $4ddc: $34
	db $ec                                           ; $4ddd: $ec
	adc c                                            ; $4dde: $89
	ld c, d                                          ; $4ddf: $4a
	xor h                                            ; $4de0: $ac
	db $eb                                           ; $4de1: $eb
	ld d, l                                          ; $4de2: $55
	ld h, e                                          ; $4de3: $63

jr_092_4de4:
	ld b, l                                          ; $4de4: $45
	and b                                            ; $4de5: $a0
	cpl                                              ; $4de6: $2f
	ld b, e                                          ; $4de7: $43
	sbc e                                            ; $4de8: $9b
	ld h, d                                          ; $4de9: $62
	sub b                                            ; $4dea: $90
	ld a, $71                                        ; $4deb: $3e $71
	ld c, [hl]                                       ; $4ded: $4e
	add h                                            ; $4dee: $84
	ld c, e                                          ; $4def: $4b
	xor h                                            ; $4df0: $ac
	ldh a, [rVBK]                                    ; $4df1: $f0 $4f
	ld d, e                                          ; $4df3: $53
	ldh a, [c]                                       ; $4df4: $f2
	or c                                             ; $4df5: $b1
	inc a                                            ; $4df6: $3c
	ld a, [hl-]                                      ; $4df7: $3a
	di                                               ; $4df8: $f3
	adc c                                            ; $4df9: $89
	push af                                          ; $4dfa: $f5
	ld a, [hl+]                                      ; $4dfb: $2a
	ld a, [hl-]                                      ; $4dfc: $3a
	ld b, c                                          ; $4dfd: $41
	ld b, h                                          ; $4dfe: $44
	ld b, l                                          ; $4dff: $45
	and b                                            ; $4e00: $a0
	ld l, a                                          ; $4e01: $6f
	ld d, e                                          ; $4e02: $53
	xor h                                            ; $4e03: $ac
	ldh a, [$f6]                                     ; $4e04: $f0 $f6
	pop af                                           ; $4e06: $f1
	inc [hl]                                         ; $4e07: $34
	ld h, d                                          ; $4e08: $62
	ldh a, [$0b]                                     ; $4e09: $f0 $0b
	ld b, a                                          ; $4e0b: $47
	ld a, $3d                                        ; $4e0c: $3e $3d
	ld c, c                                          ; $4e0e: $49
	ld e, h                                          ; $4e0f: $5c
	xor h                                            ; $4e10: $ac
	sbc e                                            ; $4e11: $9b
	ld a, [hl-]                                      ; $4e12: $3a
	ld b, c                                          ; $4e13: $41
	ccf                                              ; $4e14: $3f
	ld c, a                                          ; $4e15: $4f
	ld b, d                                          ; $4e16: $42
	inc [hl]                                         ; $4e17: $34
	ld d, h                                          ; $4e18: $54
	ld b, d                                          ; $4e19: $42
	ldh a, [$f6]                                     ; $4e1a: $f0 $f6
	inc a                                            ; $4e1c: $3c
	ld d, b                                          ; $4e1d: $50
	inc de                                           ; $4e1e: $13
	ldh a, [c]                                       ; $4e1f: $f2
	adc d                                            ; $4e20: $8a
	ld a, $f2                                        ; $4e21: $3e $f2
	ld l, [hl]                                       ; $4e23: $6e
	dec sp                                           ; $4e24: $3b
	ccf                                              ; $4e25: $3f
	rst SubAFromDE                                          ; $4e26: $df
	ld h, e                                          ; $4e27: $63
	and b                                            ; $4e28: $a0
	cpl                                              ; $4e29: $2f
	ld b, e                                          ; $4e2a: $43
	db $ec                                           ; $4e2b: $ec
	ldh [$a8], a                                     ; $4e2c: $e0 $a8
	ld l, l                                          ; $4e2e: $6d
	ldh a, [$0d]                                     ; $4e2f: $f0 $0d
	ld c, d                                          ; $4e31: $4a
	jr c, jr_092_4e6c                                ; $4e32: $38 $38

	inc a                                            ; $4e34: $3c
	ld d, b                                          ; $4e35: $50
	xor h                                            ; $4e36: $ac
	ld d, h                                          ; $4e37: $54
	ld b, d                                          ; $4e38: $42
	db $ed                                           ; $4e39: $ed
	add l                                            ; $4e3a: $85
	ldh a, [$fa]                                     ; $4e3b: $f0 $fa
	ld b, c                                          ; $4e3d: $41
	ld c, d                                          ; $4e3e: $4a
	ld l, h                                          ; $4e3f: $6c
	ld a, [hl-]                                      ; $4e40: $3a
	jr c, jr_092_4de4                                ; $4e41: $38 $a1

	cpl                                              ; $4e43: $2f
	ld b, e                                          ; $4e44: $43
	ld [$130f], a                                    ; $4e45: $ea $0f $13
	ld [$a836], a                                    ; $4e48: $ea $36 $a8
	ld c, d                                          ; $4e4b: $4a
	ld c, a                                          ; $4e4c: $4f
	inc [hl]                                         ; $4e4d: $34
	sub b                                            ; $4e4e: $90
	ld a, $6c                                        ; $4e4f: $3e $6c
	dec sp                                           ; $4e51: $3b
	ccf                                              ; $4e52: $3f
	ld a, [hl-]                                      ; $4e53: $3a
	ld b, c                                          ; $4e54: $41
	ld b, h                                          ; $4e55: $44
	and c                                            ; $4e56: $a1
	cpl                                              ; $4e57: $2f
	ld b, e                                          ; $4e58: $43
	db $eb                                           ; $4e59: $eb
	ld d, l                                          ; $4e5a: $55
	ldh a, [rSCX]                                    ; $4e5b: $f0 $43
	db $f4                                           ; $4e5d: $f4
	ret                                              ; $4e5e: $c9


	xor c                                            ; $4e5f: $a9
	ld b, [hl]                                       ; $4e60: $46
	dec sp                                           ; $4e61: $3b
	inc [hl]                                         ; $4e62: $34
	sbc e                                            ; $4e63: $9b
	ld b, d                                          ; $4e64: $42
	ld d, h                                          ; $4e65: $54
	ld c, c                                          ; $4e66: $49
	ld c, h                                          ; $4e67: $4c
	xor b                                            ; $4e68: $a8
	ld b, b                                          ; $4e69: $40
	add hl, sp                                       ; $4e6a: $39
	ld b, h                                          ; $4e6b: $44

jr_092_4e6c:
	ld b, l                                          ; $4e6c: $45
	and b                                            ; $4e6d: $a0
	sbc e                                            ; $4e6e: $9b
	ld a, [hl-]                                      ; $4e6f: $3a
	ld b, c                                          ; $4e70: $41
	ccf                                              ; $4e71: $3f
	ld c, a                                          ; $4e72: $4f
	ld b, d                                          ; $4e73: $42
	ld h, d                                          ; $4e74: $62
	inc de                                           ; $4e75: $13
	pop af                                           ; $4e76: $f1
	ld l, $55                                        ; $4e77: $2e $55
	add h                                            ; $4e79: $84
	ld b, d                                          ; $4e7a: $42
	ld a, a                                          ; $4e7b: $7f
	ld d, e                                          ; $4e7c: $53
	ldh a, [$2d]                                     ; $4e7d: $f0 $2d
	ld c, l                                          ; $4e7f: $4d
	ld a, [hl-]                                      ; $4e80: $3a
	jr c, jr_092_4ee6                                ; $4e81: $38 $63

	xor b                                            ; $4e83: $a8
	pop af                                           ; $4e84: $f1
	sub $64                                          ; $4e85: $d6 $64
	inc a                                            ; $4e87: $3c
	ld a, $38                                        ; $4e88: $3e $38
	ld b, c                                          ; $4e8a: $41
	db $ec                                           ; $4e8b: $ec
	ret c                                            ; $4e8c: $d8

	and c                                            ; $4e8d: $a1
	cpl                                              ; $4e8e: $2f
	ld b, e                                          ; $4e8f: $43
	ld [$ac0f], a                                    ; $4e90: $ea $0f $ac
	ld [$a036], a                                    ; $4e93: $ea $36 $a0
	cpl                                              ; $4e96: $2f
	ld b, e                                          ; $4e97: $43
	db $eb                                           ; $4e98: $eb
	ld d, l                                          ; $4e99: $55
	inc a                                            ; $4e9a: $3c
	ld e, d                                          ; $4e9b: $5a
	add hl, sp                                       ; $4e9c: $39
	inc a                                            ; $4e9d: $3c
	xor h                                            ; $4e9e: $ac
	ld d, h                                          ; $4e9f: $54
	ld b, d                                          ; $4ea0: $42
	db $ed                                           ; $4ea1: $ed

jr_092_4ea2:
	add l                                            ; $4ea2: $85
	ld h, d                                          ; $4ea3: $62
	ldh a, [$fa]                                     ; $4ea4: $f0 $fa
	ld b, c                                          ; $4ea6: $41
	ld c, d                                          ; $4ea7: $4a
	inc a                                            ; $4ea8: $3c
	ld d, b                                          ; $4ea9: $50
	inc de                                           ; $4eaa: $13
	add d                                            ; $4eab: $82
	dec sp                                           ; $4eac: $3b
	ccf                                              ; $4ead: $3f
	ld d, l                                          ; $4eae: $55
	ld c, l                                          ; $4eaf: $4d
	ld b, l                                          ; $4eb0: $45
	and b                                            ; $4eb1: $a0
	ret nc                                           ; $4eb2: $d0

	xor b                                            ; $4eb3: $a8
	ld b, b                                          ; $4eb4: $40
	ld b, d                                          ; $4eb5: $42
	inc [hl]                                         ; $4eb6: $34
	di                                               ; $4eb7: $f3
	cp b                                             ; $4eb8: $b8
	ldh a, [$fc]                                     ; $4eb9: $f0 $fc
	db $eb                                           ; $4ebb: $eb
	ld [de], a                                       ; $4ebc: $12
	xor b                                            ; $4ebd: $a8
	ldh a, [$79]                                     ; $4ebe: $f0 $79
	ld l, b                                          ; $4ec0: $68
	ld h, d                                          ; $4ec1: $62
	sub b                                            ; $4ec2: $90
	ld a, $6c                                        ; $4ec3: $3e $6c
	ld b, a                                          ; $4ec5: $47
	ld c, h                                          ; $4ec6: $4c
	and b                                            ; $4ec7: $a0
	ld d, d                                          ; $4ec8: $52
	ld [hl], h                                       ; $4ec9: $74
	inc [hl]                                         ; $4eca: $34
	ldh a, [$57]                                     ; $4ecb: $f0 $57
	ldh a, [$ae]                                     ; $4ecd: $f0 $ae
	xor b                                            ; $4ecf: $a8
	adc $f0                                          ; $4ed0: $ce $f0
	and l                                            ; $4ed2: $a5
	ldh a, [rSCX]                                    ; $4ed3: $f0 $43
	ld d, e                                          ; $4ed5: $53
	db $eb                                           ; $4ed6: $eb
	ld l, e                                          ; $4ed7: $6b
	ld h, e                                          ; $4ed8: $63
	and b                                            ; $4ed9: $a0
	ldh a, [$a5]                                     ; $4eda: $f0 $a5
	ldh a, [rSCX]                                    ; $4edc: $f0 $43
	ld a, [hl-]                                      ; $4ede: $3a
	ld b, c                                          ; $4edf: $41
	ccf                                              ; $4ee0: $3f
	inc de                                           ; $4ee1: $13
	db $eb                                           ; $4ee2: $eb
	ld d, e                                          ; $4ee3: $53
	ld c, a                                          ; $4ee4: $4f
	ld b, d                                          ; $4ee5: $42

jr_092_4ee6:
	inc de                                           ; $4ee6: $13
	ldh a, [$fa]                                     ; $4ee7: $f0 $fa
	ld l, h                                          ; $4ee9: $6c
	dec a                                            ; $4eea: $3d
	ld d, l                                          ; $4eeb: $55
	ld c, e                                          ; $4eec: $4b
	ld a, [hl-]                                      ; $4eed: $3a
	jr c, jr_092_4f4d                                ; $4eee: $38 $5d

	ld e, d                                          ; $4ef0: $5a
	ld c, b                                          ; $4ef1: $48
	xor h                                            ; $4ef2: $ac
	ld b, b                                          ; $4ef3: $40
	ld d, h                                          ; $4ef4: $54
	ld b, d                                          ; $4ef5: $42
	ldh a, [rSCX]                                    ; $4ef6: $f0 $43
	ldh a, [rAUDTERM]                                ; $4ef8: $f0 $25
	ld h, d                                          ; $4efa: $62
	pop af                                           ; $4efb: $f1
	ld a, h                                          ; $4efc: $7c
	ld a, $3a                                        ; $4efd: $3e $3a
	ld e, b                                          ; $4eff: $58
	jr c, jr_092_4ea2                                ; $4f00: $38 $a0

	cpl                                              ; $4f02: $2f
	ld b, e                                          ; $4f03: $43
	db $ec                                           ; $4f04: $ec
	ldh [rHDMA3], a                                  ; $4f05: $e0 $53
	xor h                                            ; $4f07: $ac
	ldh a, [$a5]                                     ; $4f08: $f0 $a5
	ldh a, [rSCX]                                    ; $4f0a: $f0 $43
	ld h, d                                          ; $4f0c: $62
	ldh a, [$fa]                                     ; $4f0d: $f0 $fa
	ldh a, [$be]                                     ; $4f0f: $f0 $be
	ld a, [hl-]                                      ; $4f11: $3a
	ld b, c                                          ; $4f12: $41
	ccf                                              ; $4f13: $3f
	ld c, b                                          ; $4f14: $48
	and b                                            ; $4f15: $a0
	db $eb                                           ; $4f16: $eb
	ld d, l                                          ; $4f17: $55
	db $ed                                           ; $4f18: $ed
	ld [hl], l                                       ; $4f19: $75
	ld d, e                                          ; $4f1a: $53
	inc de                                           ; $4f1b: $13
	ldh a, [c]                                       ; $4f1c: $f2
	dec a                                            ; $4f1d: $3d
	ld b, c                                          ; $4f1e: $41
	ld c, d                                          ; $4f1f: $4a
	ld c, [hl]                                       ; $4f20: $4e
	ld h, e                                          ; $4f21: $63
	ld c, h                                          ; $4f22: $4c
	and b                                            ; $4f23: $a0
	cpl                                              ; $4f24: $2f
	ld b, e                                          ; $4f25: $43
	ld b, [hl]                                       ; $4f26: $46
	dec sp                                           ; $4f27: $3b
	inc [hl]                                         ; $4f28: $34
	db $ec                                           ; $4f29: $ec
	ldh [$a8], a                                     ; $4f2a: $e0 $a8
	db $eb                                           ; $4f2c: $eb
	ld d, l                                          ; $4f2d: $55
	db $ed                                           ; $4f2e: $ed
	ld [hl], l                                       ; $4f2f: $75
	ld c, c                                          ; $4f30: $49
	ld c, e                                          ; $4f31: $4b
	xor h                                            ; $4f32: $ac
	ldh a, [rHDMA5]                                  ; $4f33: $f0 $55
	ldh a, [rBCPS]                                   ; $4f35: $f0 $68
	ld b, h                                          ; $4f37: $44
	ld a, [hl-]                                      ; $4f38: $3a
	and b                                            ; $4f39: $a0
	ld c, c                                          ; $4f3a: $49
	ld d, h                                          ; $4f3b: $54
	ld e, a                                          ; $4f3c: $5f
	ld c, d                                          ; $4f3d: $4a
	xor h                                            ; $4f3e: $ac
	ld l, e                                          ; $4f3f: $6b
	ld a, [hl-]                                      ; $4f40: $3a
	ld b, d                                          ; $4f41: $42
	ld d, h                                          ; $4f42: $54
	ld b, d                                          ; $4f43: $42
	db $ed                                           ; $4f44: $ed
	ld [hl], l                                       ; $4f45: $75
	ld c, e                                          ; $4f46: $4b
	and c                                            ; $4f47: $a1
	cpl                                              ; $4f48: $2f
	ld b, e                                          ; $4f49: $43
	halt                                             ; $4f4a: $76
	ldh a, [rSTAT]                                   ; $4f4b: $f0 $41

jr_092_4f4d:
	ld d, e                                          ; $4f4d: $53
	push af                                          ; $4f4e: $f5
	ld [hl], $3b                                     ; $4f4f: $36 $3b
	dec a                                            ; $4f51: $3d
	xor h                                            ; $4f52: $ac
	ldh a, [$a5]                                     ; $4f53: $f0 $a5
	ldh a, [rSCX]                                    ; $4f55: $f0 $43
	ld b, h                                          ; $4f57: $44
	ld b, l                                          ; $4f58: $45
	and b                                            ; $4f59: $a0
	ldh a, [$a5]                                     ; $4f5a: $f0 $a5
	ldh a, [rSCX]                                    ; $4f5c: $f0 $43
	xor c                                            ; $4f5e: $a9
	ldh a, [c]                                       ; $4f5f: $f2
	ld bc, $7963                                     ; $4f60: $01 $63 $79
	ccf                                              ; $4f63: $3f
	ld d, l                                          ; $4f64: $55
	ld c, l                                          ; $4f65: $4d
	ld c, [hl]                                       ; $4f66: $4e
	ld h, e                                          ; $4f67: $63
	xor b                                            ; $4f68: $a8
	pop af                                           ; $4f69: $f1
	add hl, de                                       ; $4f6a: $19
	adc c                                            ; $4f6b: $89
	ldh a, [rTIMA]                                   ; $4f6c: $f0 $05
	ld e, e                                          ; $4f6e: $5b
	ld d, [hl]                                       ; $4f6f: $56
	ld b, [hl]                                       ; $4f70: $46
	ld c, [hl]                                       ; $4f71: $4e
	ld d, d                                          ; $4f72: $52
	jr c, jr_092_4fb3                                ; $4f73: $38 $3e

	ld c, b                                          ; $4f75: $48
	and b                                            ; $4f76: $a0
	cpl                                              ; $4f77: $2f
	ld b, e                                          ; $4f78: $43
	db $eb                                           ; $4f79: $eb
	ld d, l                                          ; $4f7a: $55
	inc a                                            ; $4f7b: $3c
	ld e, d                                          ; $4f7c: $5a
	add hl, sp                                       ; $4f7d: $39
	inc a                                            ; $4f7e: $3c
	xor h                                            ; $4f7f: $ac
	ld d, h                                          ; $4f80: $54
	ld b, d                                          ; $4f81: $42
	ldh a, [rSCX]                                    ; $4f82: $f0 $43
	ldh a, [rAUDTERM]                                ; $4f84: $f0 $25
	ld h, d                                          ; $4f86: $62
	ldh a, [$fa]                                     ; $4f87: $f0 $fa
	ld b, c                                          ; $4f89: $41
	ld c, d                                          ; $4f8a: $4a
	ld d, l                                          ; $4f8b: $55
	ld c, l                                          ; $4f8c: $4d
	ld b, l                                          ; $4f8d: $45
	and b                                            ; $4f8e: $a0
	cpl                                              ; $4f8f: $2f
	ld b, e                                          ; $4f90: $43
	db $eb                                           ; $4f91: $eb
	ld d, l                                          ; $4f92: $55
	ldh a, [rSCX]                                    ; $4f93: $f0 $43
	db $f4                                           ; $4f95: $f4
	ret                                              ; $4f96: $c9


	xor c                                            ; $4f97: $a9
	ld b, [hl]                                       ; $4f98: $46
	dec sp                                           ; $4f99: $3b
	inc [hl]                                         ; $4f9a: $34
	ldh a, [$a5]                                     ; $4f9b: $f0 $a5
	ldh a, [rSCX]                                    ; $4f9d: $f0 $43
	ld b, d                                          ; $4f9f: $42
	ld d, h                                          ; $4fa0: $54
	ld c, c                                          ; $4fa1: $49
	ld c, h                                          ; $4fa2: $4c
	dec [hl]                                         ; $4fa3: $35
	ld b, b                                          ; $4fa4: $40
	add hl, sp                                       ; $4fa5: $39
	ld b, h                                          ; $4fa6: $44
	ld b, l                                          ; $4fa7: $45
	and b                                            ; $4fa8: $a0
	ldh a, [$a5]                                     ; $4fa9: $f0 $a5
	ldh a, [rSCX]                                    ; $4fab: $f0 $43
	ld a, [hl-]                                      ; $4fad: $3a
	ld b, c                                          ; $4fae: $41
	ccf                                              ; $4faf: $3f
	ld c, a                                          ; $4fb0: $4f
	ld b, d                                          ; $4fb1: $42
	ld h, d                                          ; $4fb2: $62

jr_092_4fb3:
	inc de                                           ; $4fb3: $13
	pop af                                           ; $4fb4: $f1
	ld l, $55                                        ; $4fb5: $2e $55
	add h                                            ; $4fb7: $84
	ld b, d                                          ; $4fb8: $42
	ld a, a                                          ; $4fb9: $7f
	ld d, e                                          ; $4fba: $53
	ldh a, [$2d]                                     ; $4fbb: $f0 $2d
	ld c, l                                          ; $4fbd: $4d
	ld a, [hl-]                                      ; $4fbe: $3a
	jr c, jr_092_5024                                ; $4fbf: $38 $63

	xor b                                            ; $4fc1: $a8
	pop af                                           ; $4fc2: $f1
	sub $64                                          ; $4fc3: $d6 $64
	inc a                                            ; $4fc5: $3c
	ld a, $38                                        ; $4fc6: $3e $38
	ld b, c                                          ; $4fc8: $41
	db $ec                                           ; $4fc9: $ec
	ret c                                            ; $4fca: $d8

	and c                                            ; $4fcb: $a1
	cpl                                              ; $4fcc: $2f
	ld b, e                                          ; $4fcd: $43
	ld [$130f], a                                    ; $4fce: $ea $0f $13
	ld [$a036], a                                    ; $4fd1: $ea $36 $a0
	cpl                                              ; $4fd4: $2f
	ld b, e                                          ; $4fd5: $43
	db $eb                                           ; $4fd6: $eb
	ld d, l                                          ; $4fd7: $55
	inc a                                            ; $4fd8: $3c
	ld e, d                                          ; $4fd9: $5a
	add hl, sp                                       ; $4fda: $39
	inc a                                            ; $4fdb: $3c
	xor h                                            ; $4fdc: $ac
	ld d, h                                          ; $4fdd: $54
	ld b, d                                          ; $4fde: $42
	ldh a, [rSCX]                                    ; $4fdf: $f0 $43
	ldh a, [rAUDTERM]                                ; $4fe1: $f0 $25
	ld h, d                                          ; $4fe3: $62
	ldh a, [$fa]                                     ; $4fe4: $f0 $fa
	ld b, c                                          ; $4fe6: $41
	ld c, d                                          ; $4fe7: $4a
	inc a                                            ; $4fe8: $3c
	ld d, b                                          ; $4fe9: $50
	inc de                                           ; $4fea: $13
	add d                                            ; $4feb: $82
	dec sp                                           ; $4fec: $3b
	ccf                                              ; $4fed: $3f
	ld d, l                                          ; $4fee: $55
	ld c, l                                          ; $4fef: $4d
	ld b, l                                          ; $4ff0: $45
	and b                                            ; $4ff1: $a0
	cpl                                              ; $4ff2: $2f
	ld b, e                                          ; $4ff3: $43
	ldh a, [$d8]                                     ; $4ff4: $f0 $d8
	inc [hl]                                         ; $4ff6: $34
	db $ec                                           ; $4ff7: $ec
	ldh [$a8], a                                     ; $4ff8: $e0 $a8
	pop af                                           ; $4ffa: $f1
	sub $4a                                          ; $4ffb: $d6 $4a
	ld c, a                                          ; $4ffd: $4f
	di                                               ; $4ffe: $f3
	ld l, d                                          ; $4fff: $6a
	dec sp                                           ; $5000: $3b
	dec a                                            ; $5001: $3d
	ld b, d                                          ; $5002: $42
	and c                                            ; $5003: $a1
	ld [$a8ce], a                                    ; $5004: $ea $ce $a8
	add h                                            ; $5007: $84
	ld d, e                                          ; $5008: $53
	db $ec                                           ; $5009: $ec
	add hl, bc                                       ; $500a: $09
	db $ed                                           ; $500b: $ed
	ld h, l                                          ; $500c: $65
	ld a, $3f                                        ; $500d: $3e $3f
	jr c, jr_092_505f                                ; $500f: $38 $4e

	inc de                                           ; $5011: $13
	ldh a, [rSCY]                                    ; $5012: $f0 $42
	ld d, a                                          ; $5014: $57
	ld h, d                                          ; $5015: $62
	ld a, $3f                                        ; $5016: $3e $3f
	ld b, [hl]                                       ; $5018: $46
	ldh a, [rSB]                                     ; $5019: $f0 $01
	dec a                                            ; $501b: $3d
	ld b, d                                          ; $501c: $42
	ld b, a                                          ; $501d: $47
	ld c, b                                          ; $501e: $48
	and b                                            ; $501f: $a0
	cpl                                              ; $5020: $2f
	ld b, e                                          ; $5021: $43
	db $ed                                           ; $5022: $ed
	ld b, e                                          ; $5023: $43

jr_092_5024:
	inc [hl]                                         ; $5024: $34

jr_092_5025:
	db $ec                                           ; $5025: $ec
	ldh [$3c], a                                     ; $5026: $e0 $3c
	ld d, b                                          ; $5028: $50
	inc de                                           ; $5029: $13
	ldh a, [$a4]                                     ; $502a: $f0 $a4
	ld e, [hl]                                       ; $502c: $5e
	ld c, a                                          ; $502d: $4f
	add b                                            ; $502e: $80
	inc a                                            ; $502f: $3c
	ld a, [hl-]                                      ; $5030: $3a
	jr c, jr_092_5025                                ; $5031: $38 $f2

	ld d, a                                          ; $5033: $57
	db $f4                                           ; $5034: $f4
	ld [hl], $53                                     ; $5035: $36 $53
	inc de                                           ; $5037: $13
	sub h                                            ; $5038: $94
	dec a                                            ; $5039: $3d
	ld c, a                                          ; $503a: $4f
	ld b, c                                          ; $503b: $41
	ld b, h                                          ; $503c: $44
	inc a                                            ; $503d: $3c
	ld d, b                                          ; $503e: $50
	and b                                            ; $503f: $a0
	ld l, a                                          ; $5040: $6f
	ld h, d                                          ; $5041: $62
	push af                                          ; $5042: $f5
	ld a, [hl]                                       ; $5043: $7e
	push af                                          ; $5044: $f5
	ld a, a                                          ; $5045: $7f
	ld a, $e0                                        ; $5046: $3e $e0
	xor b                                            ; $5048: $a8
	ldh a, [c]                                       ; $5049: $f2
	ld a, b                                          ; $504a: $78
	ld a, c                                          ; $504b: $79
	ld a, [hl-]                                      ; $504c: $3a
	jr c, jr_092_50b2                                ; $504d: $38 $63

	and b                                            ; $504f: $a0
	cpl                                              ; $5050: $2f
	ld b, e                                          ; $5051: $43
	jr c, jr_092_50c2                                ; $5052: $38 $6e

	inc [hl]                                         ; $5054: $34
	ret                                              ; $5055: $c9


	xor h                                            ; $5056: $ac
	ld b, b                                          ; $5057: $40
	ld b, c                                          ; $5058: $41
	ld a, [hl-]                                      ; $5059: $3a
	add b                                            ; $505a: $80
	ld c, a                                          ; $505b: $4f
	ld d, a                                          ; $505c: $57
	ld c, e                                          ; $505d: $4b
	ld c, b                                          ; $505e: $48

jr_092_505f:
	and b                                            ; $505f: $a0
	ld a, [hl-]                                      ; $5060: $3a
	adc l                                            ; $5061: $8d
	ld b, [hl]                                       ; $5062: $46
	ld a, [hl-]                                      ; $5063: $3a
	dec a                                            ; $5064: $3d
	ld c, e                                          ; $5065: $4b
	xor h                                            ; $5066: $ac
	ld d, h                                          ; $5067: $54
	ld b, c                                          ; $5068: $41
	ld a, [hl-]                                      ; $5069: $3a
	ldh a, [$28]                                     ; $506a: $f0 $28
	ld b, a                                          ; $506c: $47
	jr c, jr_092_50bd                                ; $506d: $38 $4e

	ld b, d                                          ; $506f: $42
	and c                                            ; $5070: $a1
	cpl                                              ; $5071: $2f
	ld b, e                                          ; $5072: $43
	ld b, [hl]                                       ; $5073: $46
	dec sp                                           ; $5074: $3b
	inc [hl]                                         ; $5075: $34
	db $ec                                           ; $5076: $ec
	ldh [$a8], a                                     ; $5077: $e0 $a8
	db $ed                                           ; $5079: $ed
	sbc a                                            ; $507a: $9f
	dec sp                                           ; $507b: $3b
	ccf                                              ; $507c: $3f
	inc [hl]                                         ; $507d: $34
	halt                                             ; $507e: $76
	xor h                                            ; $507f: $ac
	ldh a, [rSCX]                                    ; $5080: $f0 $43
	ldh a, [$b8]                                     ; $5082: $f0 $b8
	adc a                                            ; $5084: $8f
	ld b, h                                          ; $5085: $44
	inc a                                            ; $5086: $3c
	ld d, b                                          ; $5087: $50
	ld c, b                                          ; $5088: $48
	and b                                            ; $5089: $a0
	ld c, c                                          ; $508a: $49
	inc [hl]                                         ; $508b: $34
	add d                                            ; $508c: $82
	add hl, sp                                       ; $508d: $39
	ld d, h                                          ; $508e: $54
	ld c, c                                          ; $508f: $49
	ld c, e                                          ; $5090: $4b
	xor l                                            ; $5091: $ad
	ld d, h                                          ; $5092: $54
	ld b, d                                          ; $5093: $42
	db $eb                                           ; $5094: $eb
	ld d, l                                          ; $5095: $55
	ldh a, [rSCX]                                    ; $5096: $f0 $43
	db $f4                                           ; $5098: $f4
	ret                                              ; $5099: $c9


	ld c, a                                          ; $509a: $4f
	xor h                                            ; $509b: $ac
	ld b, [hl]                                       ; $509c: $46
	ld a, [hl-]                                      ; $509d: $3a
	dec a                                            ; $509e: $3d
	ld d, e                                          ; $509f: $53
	db $ec                                           ; $50a0: $ec
	ei                                               ; $50a1: $fb
	ld b, d                                          ; $50a2: $42
	ld c, h                                          ; $50a3: $4c
	and c                                            ; $50a4: $a1
	db $eb                                           ; $50a5: $eb
	ld d, l                                          ; $50a6: $55
	ld h, e                                          ; $50a7: $63
	ld c, h                                          ; $50a8: $4c
	and b                                            ; $50a9: $a0
	cpl                                              ; $50aa: $2f
	ld b, e                                          ; $50ab: $43

jr_092_50ac:
	db $ec                                           ; $50ac: $ec
	ldh [$ac], a                                     ; $50ad: $e0 $ac
	jr c, jr_092_510d                                ; $50af: $38 $5c

	ld a, [hl-]                                      ; $50b1: $3a

jr_092_50b2:
	ld d, a                                          ; $50b2: $57
	ld b, b                                          ; $50b3: $40
	ld c, l                                          ; $50b4: $4d
	ld c, e                                          ; $50b5: $4b
	ld a, [hl-]                                      ; $50b6: $3a
	jr c, jr_092_5103                                ; $50b7: $38 $4a

	ld a, $66                                        ; $50b9: $3e $66
	add hl, sp                                       ; $50bb: $39
	and b                                            ; $50bc: $a0

jr_092_50bd:
	db $eb                                           ; $50bd: $eb
	ld d, l                                          ; $50be: $55
	ld c, a                                          ; $50bf: $4f
	ld b, d                                          ; $50c0: $42
	ld h, d                                          ; $50c1: $62

jr_092_50c2:
	xor h                                            ; $50c2: $ac
	db $eb                                           ; $50c3: $eb
	ld d, l                                          ; $50c4: $55
	ld c, c                                          ; $50c5: $49
	add d                                            ; $50c6: $82
	dec sp                                           ; $50c7: $3b
	ccf                                              ; $50c8: $3f
	inc de                                           ; $50c9: $13
	ld l, e                                          ; $50ca: $6b
	ld d, e                                          ; $50cb: $53
	ldh a, [$5c]                                     ; $50cc: $f0 $5c
	jr c, jr_092_5112                                ; $50ce: $38 $42

	and c                                            ; $50d0: $a1
	ld b, b                                          ; $50d1: $40
	ld c, l                                          ; $50d2: $4d
	ld c, e                                          ; $50d3: $4b
	xor h                                            ; $50d4: $ac
	db $eb                                           ; $50d5: $eb
	di                                               ; $50d6: $f3
	di                                               ; $50d7: $f3
	cp b                                             ; $50d8: $b8
	ldh a, [$fc]                                     ; $50d9: $f0 $fc
	ld c, h                                          ; $50db: $4c
	xor c                                            ; $50dc: $a9
	jr c, jr_092_5117                                ; $50dd: $38 $38

	ld h, e                                          ; $50df: $63
	inc [hl]                                         ; $50e0: $34
	db $eb                                           ; $50e1: $eb
	ld [de], a                                       ; $50e2: $12
	and b                                            ; $50e3: $a0
	cpl                                              ; $50e4: $2f
	ld b, e                                          ; $50e5: $43

jr_092_50e6:
	ld b, b                                          ; $50e6: $40
	ld b, c                                          ; $50e7: $41
	ld a, [hl-]                                      ; $50e8: $3a
	di                                               ; $50e9: $f3
	cp b                                             ; $50ea: $b8
	ldh a, [$fc]                                     ; $50eb: $f0 $fc
	ld a, [hl-]                                      ; $50ed: $3a
	ld b, c                                          ; $50ee: $41
	ccf                                              ; $50ef: $3f
	ld c, b                                          ; $50f0: $48
	and b                                            ; $50f1: $a0
	add d                                            ; $50f2: $82

jr_092_50f3:
	jr c, jr_092_50e6                                ; $50f3: $38 $f1

	dec bc                                           ; $50f5: $0b
	xor $2d                                          ; $50f6: $ee $2d
	jr c, jr_092_515d                                ; $50f8: $38 $63

	xor b                                            ; $50fa: $a8
	ldh a, [$79]                                     ; $50fb: $f0 $79
	ld l, b                                          ; $50fd: $68
	ld h, d                                          ; $50fe: $62
	sub b                                            ; $50ff: $90
	ld a, $6c                                        ; $5100: $3e $6c
	ld b, a                                          ; $5102: $47

jr_092_5103:
	inc de                                           ; $5103: $13
	sbc c                                            ; $5104: $99
	dec sp                                           ; $5105: $3b
	ccf                                              ; $5106: $3f
	jr c, jr_092_5143                                ; $5107: $38 $3a

	ld e, b                                          ; $5109: $58
	jr c, jr_092_50ac                                ; $510a: $38 $a0

	db $eb                                           ; $510c: $eb

jr_092_510d:
	and c                                            ; $510d: $a1
	and b                                            ; $510e: $a0
	cpl                                              ; $510f: $2f
	ld b, e                                          ; $5110: $43
	ld b, [hl]                                       ; $5111: $46

jr_092_5112:
	dec sp                                           ; $5112: $3b
	inc [hl]                                         ; $5113: $34
	db $ec                                           ; $5114: $ec
	ldh [$a8], a                                     ; $5115: $e0 $a8

jr_092_5117:
	db $eb                                           ; $5117: $eb
	ld d, b                                          ; $5118: $50
	and c                                            ; $5119: $a1
	pop af                                           ; $511a: $f1
	ld [hl], a                                       ; $511b: $77
	db $f4                                           ; $511c: $f4
	sbc d                                            ; $511d: $9a
	ld c, e                                          ; $511e: $4b
	inc de                                           ; $511f: $13
	add b                                            ; $5120: $80
	ld d, d                                          ; $5121: $52
	ld d, b                                          ; $5122: $50
	ld a, [hl-]                                      ; $5123: $3a
	inc a                                            ; $5124: $3c
	dec sp                                           ; $5125: $3b
	dec a                                            ; $5126: $3d
	ld e, l                                          ; $5127: $5d
	ld e, d                                          ; $5128: $5a
	xor h                                            ; $5129: $ac
	ld l, a                                          ; $512a: $6f
	ld b, d                                          ; $512b: $42
	ldh a, [$a8]                                     ; $512c: $f0 $a8
	pop af                                           ; $512e: $f1
	dec c                                            ; $512f: $0d
	ld b, d                                          ; $5130: $42
	db $ed                                           ; $5131: $ed
	ld [hl], l                                       ; $5132: $75
	ld h, d                                          ; $5133: $62
	inc de                                           ; $5134: $13
	ldh a, [$a4]                                     ; $5135: $f0 $a4
	ld e, [hl]                                       ; $5137: $5e
	ld e, b                                          ; $5138: $58
	ld a, c                                          ; $5139: $79
	ccf                                              ; $513a: $3f
	rst SubAFromDE                                          ; $513b: $df
	ld h, e                                          ; $513c: $63
	and b                                            ; $513d: $a0
	cpl                                              ; $513e: $2f
	ld b, e                                          ; $513f: $43
	db $ec                                           ; $5140: $ec
	ldh [rHDMA3], a                                  ; $5141: $e0 $53

jr_092_5143:
	ld c, b                                          ; $5143: $48
	xor c                                            ; $5144: $a9
	ld l, e                                          ; $5145: $6b
	ld b, d                                          ; $5146: $42
	ldh a, [$a8]                                     ; $5147: $f0 $a8
	pop af                                           ; $5149: $f1
	dec c                                            ; $514a: $0d
	and c                                            ; $514b: $a1
	ld b, b                                          ; $514c: $40
	ld b, d                                          ; $514d: $42
	ldh a, [rBGP]                                    ; $514e: $f0 $47
	ld d, e                                          ; $5150: $53
	ld a, b                                          ; $5151: $78
	ld c, l                                          ; $5152: $4d

Call_092_5153:
	ld a, e                                          ; $5153: $7b
	xor h                                            ; $5154: $ac
	jr c, jr_092_50f3                                ; $5155: $38 $9c

	ld c, l                                          ; $5157: $4d
	ldh a, [rTAC]                                    ; $5158: $f0 $07
	inc a                                            ; $515a: $3c
	ld c, [hl]                                       ; $515b: $4e
	ld h, e                                          ; $515c: $63

jr_092_515d:
	ld b, l                                          ; $515d: $45
	xor b                                            ; $515e: $a8
	ld [$a021], a                                    ; $515f: $ea $21 $a0
	cpl                                              ; $5162: $2f
	ld b, e                                          ; $5163: $43
	ld b, b                                          ; $5164: $40
	ld b, d                                          ; $5165: $42
	ldh a, [rBGP]                                    ; $5166: $f0 $47
	dec sp                                           ; $5168: $3b
	ccf                                              ; $5169: $3f
	xor h                                            ; $516a: $ac
	jr c, @+$3d                                      ; $516b: $38 $3b

	dec a                                            ; $516d: $3d
	jr c, jr_092_51b8                                ; $516e: $38 $48

	and c                                            ; $5170: $a1
	ld b, [hl]                                       ; $5171: $46
	ld b, c                                          ; $5172: $41
	ld a, [hl-]                                      ; $5173: $3a
	ld h, c                                          ; $5174: $61
	dec sp                                           ; $5175: $3b
	pop af                                           ; $5176: $f1
	rla                                              ; $5177: $17
	ld e, l                                          ; $5178: $5d
	ld a, [hl-]                                      ; $5179: $3a
	ld c, c                                          ; $517a: $49
	ld d, h                                          ; $517b: $54
	ld e, a                                          ; $517c: $5f
	ld c, d                                          ; $517d: $4a
	inc de                                           ; $517e: $13
	ldh a, [$a8]                                     ; $517f: $f0 $a8
	pop af                                           ; $5181: $f1
	dec c                                            ; $5182: $0d
	ld a, $3f                                        ; $5183: $3e $3f
	ld c, a                                          ; $5185: $4f
	inc [hl]                                         ; $5186: $34
	db $eb                                           ; $5187: $eb
	ld d, e                                          ; $5188: $53
	ld h, e                                          ; $5189: $63
	ld c, h                                          ; $518a: $4c
	and b                                            ; $518b: $a0
	cpl                                              ; $518c: $2f
	ld b, e                                          ; $518d: $43
	ld e, [hl]                                       ; $518e: $5e
	dec sp                                           ; $518f: $3b
	ld [hl], $6b                                     ; $5190: $36 $6b
	ld b, d                                          ; $5192: $42
	ld d, h                                          ; $5193: $54
	ld c, c                                          ; $5194: $49
	and c                                            ; $5195: $a1
	ld l, a                                          ; $5196: $6f
	ld d, e                                          ; $5197: $53
	inc [hl]                                         ; $5198: $34
	ldh a, [$a8]                                     ; $5199: $f0 $a8
	pop af                                           ; $519b: $f1
	dec c                                            ; $519c: $0d
	ld d, c                                          ; $519d: $51
	ld c, [hl]                                       ; $519e: $4e
	ld c, c                                          ; $519f: $49
	ld e, h                                          ; $51a0: $5c
	ld c, e                                          ; $51a1: $4b
	xor h                                            ; $51a2: $ac
	ldh a, [rOBP1]                                   ; $51a3: $f0 $49
	db $ed                                           ; $51a5: $ed
	rlca                                             ; $51a6: $07
	ldh a, [$d3]                                     ; $51a7: $f0 $d3
	ldh a, [c]                                       ; $51a9: $f2
	ld c, $62                                        ; $51aa: $0e $62
	inc de                                           ; $51ac: $13
	ldh a, [$7e]                                     ; $51ad: $f0 $7e
	ldh a, [$7c]                                     ; $51af: $f0 $7c
	ld [hl], e                                       ; $51b1: $73
	sub e                                            ; $51b2: $93
	ld a, $3f                                        ; $51b3: $3e $3f
	ld c, b                                          ; $51b5: $48
	and b                                            ; $51b6: $a0
	cpl                                              ; $51b7: $2f

jr_092_51b8:
	ld b, e                                          ; $51b8: $43
	xor $1e                                          ; $51b9: $ee $1e
	xor l                                            ; $51bb: $ad
	halt                                             ; $51bc: $76
	ld b, d                                          ; $51bd: $42
	db $ed                                           ; $51be: $ed
	ld l, d                                          ; $51bf: $6a
	ld b, d                                          ; $51c0: $42
	db $ed                                           ; $51c1: $ed
	ld [hl], a                                       ; $51c2: $77
	ld c, e                                          ; $51c3: $4b
	ld c, b                                          ; $51c4: $48
	and c                                            ; $51c5: $a1
	ld b, [hl]                                       ; $51c6: $46
	dec sp                                           ; $51c7: $3b
	inc [hl]                                         ; $51c8: $34
	ld b, b                                          ; $51c9: $40
	ld b, d                                          ; $51ca: $42
	dec a                                            ; $51cb: $3d
	ld [hl], c                                       ; $51cc: $71
	ld b, a                                          ; $51cd: $47
	ld c, e                                          ; $51ce: $4b
	xor h                                            ; $51cf: $ac
	ldh a, [$67]                                     ; $51d0: $f0 $67
	ldh a, [rOBP0]                                   ; $51d2: $f0 $48
	ld c, d                                          ; $51d4: $4a
	db $ed                                           ; $51d5: $ed
	rlca                                             ; $51d6: $07
	ld b, d                                          ; $51d7: $42
	pop af                                           ; $51d8: $f1
	inc de                                           ; $51d9: $13
	db $f4                                           ; $51da: $f4
	jp z, $f053                                      ; $51db: $ca $53 $f0

	jp Jump_092_4765                                 ; $51de: $c3 $65 $47


	inc de                                           ; $51e1: $13
	ld a, [hl-]                                      ; $51e2: $3a
	ld c, [hl]                                       ; $51e3: $4e
	ldh a, [$c6]                                     ; $51e4: $f0 $c6
	ldh a, [c]                                       ; $51e6: $f2
	xor d                                            ; $51e7: $aa
	ld h, d                                          ; $51e8: $62
	ldh a, [$a5]                                     ; $51e9: $f0 $a5
	ld d, b                                          ; $51eb: $50
	ld a, [hl-]                                      ; $51ec: $3a
	ld e, h                                          ; $51ed: $5c
	ld d, [hl]                                       ; $51ee: $56
	ld c, b                                          ; $51ef: $48
	and b                                            ; $51f0: $a0
	cpl                                              ; $51f1: $2f
	ld b, e                                          ; $51f2: $43
	db $ed                                           ; $51f3: $ed
	ld c, [hl]                                       ; $51f4: $4e
	and b                                            ; $51f5: $a0
	ld b, b                                          ; $51f6: $40
	add hl, sp                                       ; $51f7: $39
	ld c, c                                          ; $51f8: $49
	ldh a, [$ec]                                     ; $51f9: $f0 $ec
	ld d, d                                          ; $51fb: $52
	dec sp                                           ; $51fc: $3b
	dec a                                            ; $51fd: $3d
	ld d, b                                          ; $51fe: $50
	xor h                                            ; $51ff: $ac
	ld d, c                                          ; $5200: $51
	sbc l                                            ; $5201: $9d
	xor $17                                          ; $5202: $ee $17
	ld b, l                                          ; $5204: $45
	and b                                            ; $5205: $a0
	cpl                                              ; $5206: $2f
	ld b, e                                          ; $5207: $43
	xor $1e                                          ; $5208: $ee $1e
	xor l                                            ; $520a: $ad
	db $ed                                           ; $520b: $ed
	ld l, d                                          ; $520c: $6a
	ld b, d                                          ; $520d: $42
	db $ed                                           ; $520e: $ed
	ld [hl], a                                       ; $520f: $77
	ld h, d                                          ; $5210: $62
	ld c, b                                          ; $5211: $48
	and b                                            ; $5212: $a0
	cpl                                              ; $5213: $2f
	ld b, e                                          ; $5214: $43
	ld b, [hl]                                       ; $5215: $46
	dec sp                                           ; $5216: $3b
	inc [hl]                                         ; $5217: $34
	db $ec                                           ; $5218: $ec
	ldh [$a8], a                                     ; $5219: $e0 $a8
	ld [$a81f], a                                    ; $521b: $ea $1f $a8
	ld [$a132], a                                    ; $521e: $ea $32 $a1
	ld a, [hl-]                                      ; $5221: $3a
	ld b, c                                          ; $5222: $41
	inc a                                            ; $5223: $3c
	inc [hl]                                         ; $5224: $34
	db $eb                                           ; $5225: $eb
	ld d, l                                          ; $5226: $55
	ld d, h                                          ; $5227: $54
	ld c, c                                          ; $5228: $49
	inc de                                           ; $5229: $13
	add d                                            ; $522a: $82
	dec sp                                           ; $522b: $3b
	ccf                                              ; $522c: $3f
	ldh [$a0], a                                     ; $522d: $e0 $a0
	cpl                                              ; $522f: $2f
	ld b, e                                          ; $5230: $43
	db $eb                                           ; $5231: $eb
	ld d, l                                          ; $5232: $55
	ld c, c                                          ; $5233: $49
	ld c, e                                          ; $5234: $4b
	xor h                                            ; $5235: $ac
	db $eb                                           ; $5236: $eb
	and e                                            ; $5237: $a3
	and b                                            ; $5238: $a0
	ld b, b                                          ; $5239: $40
	ld b, c                                          ; $523a: $41
	ld a, [hl-]                                      ; $523b: $3a
	ldh a, [$ea]                                     ; $523c: $f0 $ea
	ld d, e                                          ; $523e: $53
	ld b, [hl]                                       ; $523f: $46
	dec sp                                           ; $5240: $3b
	dec a                                            ; $5241: $3d
	ld d, b                                          ; $5242: $50
	xor h                                            ; $5243: $ac
	ldh a, [$aa]                                     ; $5244: $f0 $aa
	adc c                                            ; $5246: $89
	adc a                                            ; $5247: $8f
	ld b, a                                          ; $5248: $47
	inc [hl]                                         ; $5249: $34
	ld l, a                                          ; $524a: $6f
	ld b, d                                          ; $524b: $42
	xor $17                                          ; $524c: $ee $17
	ld b, d                                          ; $524e: $42
	inc de                                           ; $524f: $13
	pop af                                           ; $5250: $f1
	ld d, e                                          ; $5251: $53
	ldh a, [c]                                       ; $5252: $f2
	ld b, [hl]                                       ; $5253: $46
	ld c, d                                          ; $5254: $4a
	ld c, a                                          ; $5255: $4f
	ld [hl], d                                       ; $5256: $72
	ld b, a                                          ; $5257: $47
	ld a, b                                          ; $5258: $78
	ld a, [hl-]                                      ; $5259: $3a
	ld e, b                                          ; $525a: $58
	jr c, @+$47                                      ; $525b: $38 $45

	and b                                            ; $525d: $a0
	cpl                                              ; $525e: $2f
	ld b, e                                          ; $525f: $43
	db $eb                                           ; $5260: $eb
	xor l                                            ; $5261: $ad
	dec sp                                           ; $5262: $3b
	ccf                                              ; $5263: $3f
	and c                                            ; $5264: $a1
	cpl                                              ; $5265: $2f
	ld b, e                                          ; $5266: $43
	db $ec                                           ; $5267: $ec
	ldh [$3f], a                                     ; $5268: $e0 $3f
	xor h                                            ; $526a: $ac
	ldh a, [$aa]                                     ; $526b: $f0 $aa
	adc c                                            ; $526d: $89
	adc a                                            ; $526e: $8f
	ld b, h                                          ; $526f: $44
	dec sp                                           ; $5270: $3b
	dec a                                            ; $5271: $3d
	ld b, c                                          ; $5272: $41
	ld b, h                                          ; $5273: $44
	and b                                            ; $5274: $a0
	ld l, d                                          ; $5275: $6a
	ld d, d                                          ; $5276: $52
	ld c, d                                          ; $5277: $4a
	ld [$42b1], a                                    ; $5278: $ea $b1 $42
	xor c                                            ; $527b: $a9

jr_092_527c:
	ld l, a                                          ; $527c: $6f
	ld c, a                                          ; $527d: $4f
	pop af                                           ; $527e: $f1
	add c                                            ; $527f: $81
	ld h, c                                          ; $5280: $61
	dec a                                            ; $5281: $3d
	ld c, a                                          ; $5282: $4f
	ld b, d                                          ; $5283: $42
	ld c, h                                          ; $5284: $4c
	ld c, b                                          ; $5285: $48
	and b                                            ; $5286: $a0
	cpl                                              ; $5287: $2f
	ld b, e                                          ; $5288: $43
	ld b, b                                          ; $5289: $40
	inc [hl]                                         ; $528a: $34
	ld b, b                                          ; $528b: $40
	ld c, l                                          ; $528c: $4d
	ld c, d                                          ; $528d: $4a
	xor h                                            ; $528e: $ac
	db $eb                                           ; $528f: $eb
	xor l                                            ; $5290: $ad
	dec sp                                           ; $5291: $3b
	ccf                                              ; $5292: $3f
	and c                                            ; $5293: $a1
	db $ed                                           ; $5294: $ed
	ld l, d                                          ; $5295: $6a
	ld a, [hl-]                                      ; $5296: $3a
	ld b, c                                          ; $5297: $41
	inc a                                            ; $5298: $3c
	ld c, d                                          ; $5299: $4a
	inc de                                           ; $529a: $13
	ldh a, [c]                                       ; $529b: $f2
	adc [hl]                                         ; $529c: $8e
	pop af                                           ; $529d: $f1
	cp [hl]                                          ; $529e: $be
	ld a, $3f                                        ; $529f: $3e $3f
	jr c, jr_092_52f1                                ; $52a1: $38 $4e

	ld b, l                                          ; $52a3: $45
	add hl, sp                                       ; $52a4: $39
	ld a, [hl-]                                      ; $52a5: $3a
	add h                                            ; $52a6: $84
	ld b, a                                          ; $52a7: $47
	ld c, e                                          ; $52a8: $4b
	inc de                                           ; $52a9: $13
	ld [hl], a                                       ; $52aa: $77
	jr c, jr_092_52fc                                ; $52ab: $38 $4f

	add b                                            ; $52ad: $80
	inc a                                            ; $52ae: $3c
	ld a, [hl-]                                      ; $52af: $3a
	jr c, jr_092_5301                                ; $52b0: $38 $4f

	ld b, d                                          ; $52b2: $42
	ld b, l                                          ; $52b3: $45
	and b                                            ; $52b4: $a0
	cpl                                              ; $52b5: $2f
	ld b, e                                          ; $52b6: $43
	db $ec                                           ; $52b7: $ec
	ldh [$ac], a                                     ; $52b8: $e0 $ac
	ld b, e                                          ; $52ba: $43
	jp hl                                            ; $52bb: $e9


	sub b                                            ; $52bc: $90
	ldh a, [$eb]                                     ; $52bd: $f0 $eb
	ld d, e                                          ; $52bf: $53
	inc de                                           ; $52c0: $13
	xor $04                                          ; $52c1: $ee $04
	ld a, $3d                                        ; $52c3: $3e $3d
	ld b, l                                          ; $52c5: $45
	and b                                            ; $52c6: $a0
	pop af                                           ; $52c7: $f1
	or d                                             ; $52c8: $b2
	pop af                                           ; $52c9: $f1
	ld c, b                                          ; $52ca: $48
	ld l, h                                          ; $52cb: $6c
	dec a                                            ; $52cc: $3d
	jr c, jr_092_527c                                ; $52cd: $38 $ad

	ld c, d                                          ; $52cf: $4a
	inc [hl]                                         ; $52d0: $34
	ld e, d                                          ; $52d1: $5a
	ld b, d                                          ; $52d2: $42
	ld b, l                                          ; $52d3: $45
	add hl, sp                                       ; $52d4: $39
	ld a, [hl-]                                      ; $52d5: $3a
	ldh a, [rAUD3LOW]                                ; $52d6: $f0 $1d
	sbc b                                            ; $52d8: $98
	ld h, l                                          ; $52d9: $65
	ld a, [hl-]                                      ; $52da: $3a
	ld b, d                                          ; $52db: $42
	and c                                            ; $52dc: $a1
	cpl                                              ; $52dd: $2f
	ld b, e                                          ; $52de: $43
	ldh a, [$6d]                                     ; $52df: $f0 $6d

jr_092_52e1:
	ld e, c                                          ; $52e1: $59
	ldh a, [$27]                                     ; $52e2: $f0 $27
	ld h, d                                          ; $52e4: $62
	add c                                            ; $52e5: $81
	ld [hl], l                                       ; $52e6: $75
	ld a, l                                          ; $52e7: $7d
	ld a, $3f                                        ; $52e8: $3e $3f
	inc de                                           ; $52ea: $13
	ld b, b                                          ; $52eb: $40
	ld b, d                                          ; $52ec: $42
	add h                                            ; $52ed: $84
	ld b, d                                          ; $52ee: $42
	ldh a, [rHDMA1]                                  ; $52ef: $f0 $51

jr_092_52f1:
	add b                                            ; $52f1: $80
	inc de                                           ; $52f2: $13
	ld [$6218], a                                    ; $52f3: $ea $18 $62
	inc de                                           ; $52f6: $13
	pop af                                           ; $52f7: $f1
	rst JumpTable                                          ; $52f8: $c7
	ldh a, [hDisp0_WY]                                     ; $52f9: $f0 $88
	ld d, c                                          ; $52fb: $51

jr_092_52fc:
	ld c, [hl]                                       ; $52fc: $4e
	ldh a, [rAUD3LOW]                                ; $52fd: $f0 $1d
	sbc b                                            ; $52ff: $98
	ld h, l                                          ; $5300: $65

jr_092_5301:
	ld b, h                                          ; $5301: $44
	ld b, l                                          ; $5302: $45
	and b                                            ; $5303: $a0
	db $ed                                           ; $5304: $ed
	sbc a                                            ; $5305: $9f
	xor h                                            ; $5306: $ac
	ldh a, [c]                                       ; $5307: $f2
	dec hl                                           ; $5308: $2b
	pop af                                           ; $5309: $f1
	ei                                               ; $530a: $fb
	pop af                                           ; $530b: $f1
	inc bc                                           ; $530c: $03
	ldh a, [$fc]                                     ; $530d: $f0 $fc
	ldh a, [c]                                       ; $530f: $f2
	nop                                              ; $5310: $00
	pop af                                           ; $5311: $f1
	ld [hl], d                                       ; $5312: $72
	ldh a, [$7f]                                     ; $5313: $f0 $7f
	ld h, d                                          ; $5315: $62
	pop af                                           ; $5316: $f1
	rst JumpTable                                          ; $5317: $c7
	ldh a, [hDisp0_WY]                                     ; $5318: $f0 $88
	ld d, c                                          ; $531a: $51
	ld c, [hl]                                       ; $531b: $4e
	inc de                                           ; $531c: $13
	ldh a, [rAUD3LOW]                                ; $531d: $f0 $1d
	sbc b                                            ; $531f: $98
	ld h, l                                          ; $5320: $65
	ld b, a                                          ; $5321: $47
	ld a, $3a                                        ; $5322: $3e $3a
	inc a                                            ; $5324: $3c
	dec sp                                           ; $5325: $3b
	dec a                                            ; $5326: $3d
	ld b, d                                          ; $5327: $42
	inc a                                            ; $5328: $3c
	ld a, $50                                        ; $5329: $3e $50
	and b                                            ; $532b: $a0
	cpl                                              ; $532c: $2f
	ld b, e                                          ; $532d: $43
	xor $10                                          ; $532e: $ee $10
	and b                                            ; $5330: $a0
	ld d, d                                          ; $5331: $52
	inc [hl]                                         ; $5332: $34
	jr c, jr_092_536d                                ; $5333: $38 $38

	ld h, e                                          ; $5335: $63
	xor b                                            ; $5336: $a8
	ldh a, [rOBP0]                                   ; $5337: $f0 $48
	inc a                                            ; $5339: $3c
	ld a, $3f                                        ; $533a: $3e $3f
	ld l, h                                          ; $533c: $6c
	ld a, [hl-]                                      ; $533d: $3a
	ld e, b                                          ; $533e: $58
	jr c, jr_092_52e1                                ; $533f: $38 $a0

	pop af                                           ; $5341: $f1
	or d                                             ; $5342: $b2
	pop af                                           ; $5343: $f1
	ld c, b                                          ; $5344: $48
	ld l, h                                          ; $5345: $6c
	dec a                                            ; $5346: $3d
	jr c, jr_092_5391                                ; $5347: $38 $48

	and b                                            ; $5349: $a0
	cpl                                              ; $534a: $2f
	ld b, e                                          ; $534b: $43
	ldh a, [rHDMA5]                                  ; $534c: $f0 $55
	ldh a, [rBCPS]                                   ; $534e: $f0 $68
	ld b, h                                          ; $5350: $44
	ld a, [hl-]                                      ; $5351: $3a
	ld [hl], h                                       ; $5352: $74
	xor b                                            ; $5353: $a8
	ld d, h                                          ; $5354: $54
	ld b, d                                          ; $5355: $42
	ldh a, [rAUD3LOW]                                ; $5356: $f0 $1d
	sbc b                                            ; $5358: $98
	ld h, l                                          ; $5359: $65
	ld c, e                                          ; $535a: $4b
	add c                                            ; $535b: $81
	ld [hl], l                                       ; $535c: $75
	ld a, l                                          ; $535d: $7d
	ld a, $3d                                        ; $535e: $3e $3d
	add h                                            ; $5360: $84
	ld b, d                                          ; $5361: $42
	inc de                                           ; $5362: $13
	ld [$6218], a                                    ; $5363: $ea $18 $62
	inc de                                           ; $5366: $13
	pop af                                           ; $5367: $f1
	rst JumpTable                                          ; $5368: $c7
	ldh a, [hDisp0_WY]                                     ; $5369: $f0 $88
	ld d, c                                          ; $536b: $51
	ld c, [hl]                                       ; $536c: $4e

jr_092_536d:
	ld c, c                                          ; $536d: $49
	jr c, jr_092_53a9                                ; $536e: $38 $39

jr_092_5370:
	xor h                                            ; $5370: $ac
	ldh a, [$7a]                                     ; $5371: $f0 $7a
	pop af                                           ; $5373: $f1
	rst SubAFromBC                                          ; $5374: $e7
	pop af                                           ; $5375: $f1
	inc bc                                           ; $5376: $03
	ld a, [hl-]                                      ; $5377: $3a
	ldh a, [rAUD3LOW]                                ; $5378: $f0 $1d
	sbc b                                            ; $537a: $98
	ld h, l                                          ; $537b: $65
	ld b, h                                          ; $537c: $44
	ld b, l                                          ; $537d: $45
	and b                                            ; $537e: $a0
	ldh a, [rAUD3LOW]                                ; $537f: $f0 $1d
	sbc b                                            ; $5381: $98
	ld h, l                                          ; $5382: $65
	ld c, c                                          ; $5383: $49

Jump_092_5384:
	ld c, e                                          ; $5384: $4b
	pop af                                           ; $5385: $f1
	ld bc, $8cf0                                     ; $5386: $01 $f0 $8c
	db $ec                                           ; $5389: $ec
	dec bc                                           ; $538a: $0b
	xor b                                            ; $538b: $a8
	ld h, h                                          ; $538c: $64
	ld c, a                                          ; $538d: $4f
	ld h, c                                          ; $538e: $61
	ld d, [hl]                                       ; $538f: $56
	ld b, l                                          ; $5390: $45

jr_092_5391:
	and b                                            ; $5391: $a0
	cpl                                              ; $5392: $2f
	ld b, e                                          ; $5393: $43
	ld c, h                                          ; $5394: $4c
	add l                                            ; $5395: $85
	inc [hl]                                         ; $5396: $34
	db $ec                                           ; $5397: $ec
	ldh [$35], a                                     ; $5398: $e0 $35
	rla                                              ; $539a: $17
	ldh a, [$5f]                                     ; $539b: $f0 $5f
	ldh a, [$ce]                                     ; $539d: $f0 $ce
	db $ec                                           ; $539f: $ec
	ld a, c                                          ; $53a0: $79
	ld h, d                                          ; $53a1: $62
	inc de                                           ; $53a2: $13
	ldh a, [$0b]                                     ; $53a3: $f0 $0b
	pop af                                           ; $53a5: $f1
	ld [hl], c                                       ; $53a6: $71
	dec sp                                           ; $53a7: $3b
	ccf                                              ; $53a8: $3f

jr_092_53a9:
	ld d, l                                          ; $53a9: $55

jr_092_53aa:
	ld c, l                                          ; $53aa: $4d
	ld a, [hl-]                                      ; $53ab: $3a
	jr c, @-$5d                                      ; $53ac: $38 $a1

	ld b, b                                          ; $53ae: $40
	ld b, c                                          ; $53af: $41
	ld a, [hl-]                                      ; $53b0: $3a
	db $eb                                           ; $53b1: $eb
	ld d, l                                          ; $53b2: $55
	inc de                                           ; $53b3: $13
	ld h, h                                          ; $53b4: $64
	ld c, a                                          ; $53b5: $4f
	ld h, c                                          ; $53b6: $61
	ld d, [hl]                                       ; $53b7: $56
	ld b, d                                          ; $53b8: $42
	ldh a, [$60]                                     ; $53b9: $f0 $60
	add e                                            ; $53bb: $83
	ld l, c                                          ; $53bc: $69
	ld h, d                                          ; $53bd: $62
	inc de                                           ; $53be: $13
	ld l, a                                          ; $53bf: $6f
	ld b, a                                          ; $53c0: $47
	ld l, [hl]                                       ; $53c1: $6e
	ld d, b                                          ; $53c2: $50
	ld a, c                                          ; $53c3: $79
	ld c, [hl]                                       ; $53c4: $4e
	ld a, a                                          ; $53c5: $7f
	xor c                                            ; $53c6: $a9
	db $ed                                           ; $53c7: $ed
	ld e, l                                          ; $53c8: $5d
	ld c, d                                          ; $53c9: $4a
	ld l, [hl]                                       ; $53ca: $6e
	ld d, a                                          ; $53cb: $57
	ld a, [hl-]                                      ; $53cc: $3a
	ld e, b                                          ; $53cd: $58
	jr c, jr_092_5370                                ; $53ce: $38 $a0

	cpl                                              ; $53d0: $2f
	ld b, e                                          ; $53d1: $43
	ld c, e                                          ; $53d2: $4b
	inc [hl]                                         ; $53d3: $34
	xor $2d                                          ; $53d4: $ee $2d
	ld c, b                                          ; $53d6: $48
	and b                                            ; $53d7: $a0
	xor $10                                          ; $53d8: $ee $10
	and b                                            ; $53da: $a0
	cpl                                              ; $53db: $2f
	ld b, e                                          ; $53dc: $43
	db $ed                                           ; $53dd: $ed
	ld c, [hl]                                       ; $53de: $4e
	inc [hl]                                         ; $53df: $34
	db $ec                                           ; $53e0: $ec
	ldh [$a0], a                                     ; $53e1: $e0 $a0
	xor $10                                          ; $53e3: $ee $10
	xor b                                            ; $53e5: $a8
	ld l, e                                          ; $53e6: $6b
	ld b, l                                          ; $53e7: $45
	and c                                            ; $53e8: $a1
	cpl                                              ; $53e9: $2f
	ld b, e                                          ; $53ea: $43
	sub h                                            ; $53eb: $94
	ldh a, [$c1]                                     ; $53ec: $f0 $c1
	ldh a, [rAUD2LEN]                                ; $53ee: $f0 $16
	ld b, d                                          ; $53f0: $42
	inc de                                           ; $53f1: $13
	ldh a, [rAUD3LOW]                                ; $53f2: $f0 $1d
	sbc b                                            ; $53f4: $98
	ld h, l                                          ; $53f5: $65
	ld a, [hl-]                                      ; $53f6: $3a
	ld b, c                                          ; $53f7: $41
	ld b, h                                          ; $53f8: $44
	ld e, l                                          ; $53f9: $5d
	ld e, d                                          ; $53fa: $5a
	xor h                                            ; $53fb: $ac
	db $ec                                           ; $53fc: $ec
	cp c                                             ; $53fd: $b9
	ld d, b                                          ; $53fe: $50
	xor h                                            ; $53ff: $ac
	db $ec                                           ; $5400: $ec
	ld a, c                                          ; $5401: $79
	ld a, $3f                                        ; $5402: $3e $3f
	ld d, l                                          ; $5404: $55
	ld c, l                                          ; $5405: $4d
	ld a, [hl-]                                      ; $5406: $3a
	jr c, jr_092_53aa                                ; $5407: $38 $a1

	ld h, h                                          ; $5409: $64
	pop af                                           ; $540a: $f1
	pop bc                                           ; $540b: $c1
	ld d, a                                          ; $540c: $57
	ld b, l                                          ; $540d: $45
	and b                                            ; $540e: $a0
	cpl                                              ; $540f: $2f
	ld b, e                                          ; $5410: $43
	ld b, [hl]                                       ; $5411: $46
	dec sp                                           ; $5412: $3b
	inc [hl]                                         ; $5413: $34
	db $ec                                           ; $5414: $ec
	ldh [$35], a                                     ; $5415: $e0 $35
	inc hl                                           ; $5417: $23
	inc de                                           ; $5418: $13
	ld b, [hl]                                       ; $5419: $46
	ld e, c                                          ; $541a: $59
	ld b, [hl]                                       ; $541b: $46
	xor b                                            ; $541c: $a8
	ld [$a0be], a                                    ; $541d: $ea $be $a0
	cpl                                              ; $5420: $2f
	ld b, e                                          ; $5421: $43
	jr c, jr_092_5458                                ; $5422: $38 $34

	ld l, d                                          ; $5424: $6a
	ld b, d                                          ; $5425: $42
	ld c, e                                          ; $5426: $4b
	inc [hl]                                         ; $5427: $34
	ldh a, [$5c]                                     ; $5428: $f0 $5c
	jr c, jr_092_5475                                ; $542a: $38 $49

	ld e, h                                          ; $542c: $5c
	ld b, d                                          ; $542d: $42
	inc de                                           ; $542e: $13
	ldh a, [rOBP0]                                   ; $542f: $f0 $48
	ldh a, [$a5]                                     ; $5431: $f0 $a5
	pop af                                           ; $5433: $f1
	add d                                            ; $5434: $82
	ldh a, [c]                                       ; $5435: $f2
	sbc a                                            ; $5436: $9f
	ld b, h                                          ; $5437: $44
	ld b, l                                          ; $5438: $45
	dec [hl]                                         ; $5439: $35
	ldh a, [rAUD3ENA]                                ; $543a: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $543c: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $543e: $f0 $1a
	and b                                            ; $5440: $a0
	ld d, h                                          ; $5441: $54
	ld b, c                                          ; $5442: $41
	ld a, [hl-]                                      ; $5443: $3a
	db $eb                                           ; $5444: $eb
	ld d, l                                          ; $5445: $55
	ld c, a                                          ; $5446: $4f
	ld b, d                                          ; $5447: $42
	ld b, a                                          ; $5448: $47
	inc de                                           ; $5449: $13
	ldh a, [rBGP]                                    ; $544a: $f0 $47
	ldh a, [$2a]                                     ; $544c: $f0 $2a
	ld h, d                                          ; $544e: $62
	inc a                                            ; $544f: $3c
	ld e, l                                          ; $5450: $5d
	ccf                                              ; $5451: $3f
	dec a                                            ; $5452: $3d
	ld a, [hl-]                                      ; $5453: $3a
	ld b, c                                          ; $5454: $41
	ccf                                              ; $5455: $3f
	ld c, b                                          ; $5456: $48
	add hl, bc                                       ; $5457: $09

jr_092_5458:
	cpl                                              ; $5458: $2f
	ld b, e                                          ; $5459: $43
	ld e, [hl]                                       ; $545a: $5e
	ld e, c                                          ; $545b: $59
	dec sp                                           ; $545c: $3b
	ld [hl], $6b                                     ; $545d: $36 $6b
	ld c, d                                          ; $545f: $4a
	and c                                            ; $5460: $a1
	ld l, a                                          ; $5461: $6f
	ld d, e                                          ; $5462: $53
	ld a, a                                          ; $5463: $7f
	ld b, a                                          ; $5464: $47
	sub [hl]                                         ; $5465: $96
	ld d, b                                          ; $5466: $50
	ld a, [hl-]                                      ; $5467: $3a
	jr c, jr_092_54b9                                ; $5468: $38 $4f

	ld b, d                                          ; $546a: $42
	ld c, e                                          ; $546b: $4b
	inc de                                           ; $546c: $13
	ldh a, [rOBP1]                                   ; $546d: $f0 $49
	ccf                                              ; $546f: $3f
	db $eb                                           ; $5470: $eb
	ld d, l                                          ; $5471: $55
	ld c, a                                          ; $5472: $4f
	ld b, d                                          ; $5473: $42
	ld a, [hl-]                                      ; $5474: $3a

jr_092_5475:
	ld b, d                                          ; $5475: $42
	ld b, l                                          ; $5476: $45
	and b                                            ; $5477: $a0
	db $ec                                           ; $5478: $ec
	sub $3b                                          ; $5479: $d6 $3b
	ccf                                              ; $547b: $3f
	inc de                                           ; $547c: $13
	ld c, c                                          ; $547d: $49
	ld d, h                                          ; $547e: $54
	ld e, a                                          ; $547f: $5f
	inc a                                            ; $5480: $3c
	ld a, $50                                        ; $5481: $3e $50
	and b                                            ; $5483: $a0
	cpl                                              ; $5484: $2f
	ld b, e                                          ; $5485: $43
	ld b, b                                          ; $5486: $40
	add hl, sp                                       ; $5487: $39
	and c                                            ; $5488: $a1
	ld b, b                                          ; $5489: $40
	ld b, c                                          ; $548a: $41
	ld a, [hl-]                                      ; $548b: $3a
	ldh a, [$6d]                                     ; $548c: $f0 $6d
	ld e, c                                          ; $548e: $59
	ldh a, [$27]                                     ; $548f: $f0 $27
	ld c, d                                          ; $5491: $4a
	inc de                                           ; $5492: $13
	ldh a, [$66]                                     ; $5493: $f0 $66
	ld b, c                                          ; $5495: $41
	ld c, d                                          ; $5496: $4a

jr_092_5497:
	ld c, [hl]                                       ; $5497: $4e
	ld b, l                                          ; $5498: $45
	add hl, sp                                       ; $5499: $39
	ld e, e                                          ; $549a: $5b
	ld d, [hl]                                       ; $549b: $56
	xor h                                            ; $549c: $ac
	ld l, a                                          ; $549d: $6f
	ld b, d                                          ; $549e: $42
	adc a                                            ; $549f: $8f
	ldh a, [$a3]                                     ; $54a0: $f0 $a3
	ld c, e                                          ; $54a2: $4b
	push af                                          ; $54a3: $f5
	sbc e                                            ; $54a4: $9b
	ld d, d                                          ; $54a5: $52
	ld d, b                                          ; $54a6: $50
	db $ec                                           ; $54a7: $ec
	dec bc                                           ; $54a8: $0b
	and b                                            ; $54a9: $a0
	ld d, d                                          ; $54aa: $52
	inc [hl]                                         ; $54ab: $34
	ld b, [hl]                                       ; $54ac: $46
	ld a, [hl-]                                      ; $54ad: $3a
	dec a                                            ; $54ae: $3d
	ld b, d                                          ; $54af: $42
	pop af                                           ; $54b0: $f1
	ld [hl], d                                       ; $54b1: $72
	ldh a, [$7f]                                     ; $54b2: $f0 $7f
	ld e, e                                          ; $54b4: $5b
	ld d, [hl]                                       ; $54b5: $56
	inc de                                           ; $54b6: $13
	ld b, b                                          ; $54b7: $40
	ld c, l                                          ; $54b8: $4d

jr_092_54b9:
	sbc l                                            ; $54b9: $9d
	ld d, b                                          ; $54ba: $50
	jr c, jr_092_54ff                                ; $54bb: $38 $42

	ldh a, [rAUD3LOW]                                ; $54bd: $f0 $1d
	sbc b                                            ; $54bf: $98
	ld h, l                                          ; $54c0: $65
	ld a, $3c                                        ; $54c1: $3e $3c
	inc de                                           ; $54c3: $13
	ldh a, [$a5]                                     ; $54c4: $f0 $a5
	ld c, l                                          ; $54c6: $4d
	db $ec                                           ; $54c7: $ec
	dec bc                                           ; $54c8: $0b
	and b                                            ; $54c9: $a0
	cpl                                              ; $54ca: $2f
	ld b, e                                          ; $54cb: $43
	db $ec                                           ; $54cc: $ec
	ldh [$3a], a                                     ; $54cd: $e0 $3a
	ld d, b                                          ; $54cf: $50
	inc de                                           ; $54d0: $13
	ld c, a                                          ; $54d1: $4f
	dec sp                                           ; $54d2: $3b
	ld c, c                                          ; $54d3: $49
	ld d, c                                          ; $54d4: $51
	ld [hl], b                                       ; $54d5: $70
	jr c, jr_092_5527                                ; $54d6: $38 $4f

	ld b, d                                          ; $54d8: $42
	ld d, e                                          ; $54d9: $53
	ldh a, [$a5]                                     ; $54da: $f0 $a5
	ld c, l                                          ; $54dc: $4d
	ld c, [hl]                                       ; $54dd: $4e
	ld b, d                                          ; $54de: $42
	and c                                            ; $54df: $a1
	ldh a, [rSCY]                                    ; $54e0: $f0 $42
	ldh a, [rSCY]                                    ; $54e2: $f0 $42
	ldh a, [rSCY]                                    ; $54e4: $f0 $42
	inc [hl]                                         ; $54e6: $34
	ld l, h                                          ; $54e7: $6c
	ccf                                              ; $54e8: $3f
	ld d, b                                          ; $54e9: $50
	dec sp                                           ; $54ea: $3b
	ld a, $56                                        ; $54eb: $3e $56
	jr c, jr_092_5497                                ; $54ed: $38 $a8

	ld b, b                                          ; $54ef: $40
	ld b, d                                          ; $54f0: $42
	add hl, sp                                       ; $54f1: $39
	ld h, c                                          ; $54f2: $61
	ld c, h                                          ; $54f3: $4c
	ld c, b                                          ; $54f4: $48
	and b                                            ; $54f5: $a0
	cpl                                              ; $54f6: $2f
	ld b, e                                          ; $54f7: $43

jr_092_54f8:
	xor $10                                          ; $54f8: $ee $10
	dec [hl]                                         ; $54fa: $35
	rla                                              ; $54fb: $17
	ld [hl-], a                                      ; $54fc: $32
	ld b, b                                          ; $54fd: $40
	ld b, c                                          ; $54fe: $41

jr_092_54ff:
	ld a, [hl-]                                      ; $54ff: $3a
	xor $16                                          ; $5500: $ee $16
	ld a, [hl-]                                      ; $5502: $3a
	ld c, a                                          ; $5503: $4f
	ld b, d                                          ; $5504: $42
	inc de                                           ; $5505: $13
	ldh a, [$a5]                                     ; $5506: $f0 $a5
	dec sp                                           ; $5508: $3b
	ccf                                              ; $5509: $3f
	dec a                                            ; $550a: $3d
	ld b, d                                          ; $550b: $42
	inc a                                            ; $550c: $3c
	and e                                            ; $550d: $a3
	ld b, [hl]                                       ; $550e: $46
	ld c, l                                          ; $550f: $4d
	db $ec                                           ; $5510: $ec
	ret c                                            ; $5511: $d8

	ld c, c                                          ; $5512: $49
	xor h                                            ; $5513: $ac
	db $f4                                           ; $5514: $f4
	ld [bc], a                                       ; $5515: $02
	ldh a, [$7f]                                     ; $5516: $f0 $7f
	ld b, a                                          ; $5518: $47
	push af                                          ; $5519: $f5
	ld b, b                                          ; $551a: $40
	ld e, l                                          ; $551b: $5d
	ld c, [hl]                                       ; $551c: $4e
	ld b, d                                          ; $551d: $42
	ld b, l                                          ; $551e: $45
	ld c, h                                          ; $551f: $4c
	and b                                            ; $5520: $a0
	cpl                                              ; $5521: $2f
	ld [hl-], a                                      ; $5522: $32
	db $f4                                           ; $5523: $f4
	ld [bc], a                                       ; $5524: $02
	ldh a, [$7f]                                     ; $5525: $f0 $7f

jr_092_5527:
	ld c, c                                          ; $5527: $49
	inc a                                            ; $5528: $3c
	inc de                                           ; $5529: $13
	ld b, b                                          ; $552a: $40
	add hl, sp                                       ; $552b: $39
	jr c, jr_092_5567                                ; $552c: $38 $39

	ldh a, [c]                                       ; $552e: $f2
	ld h, e                                          ; $552f: $63
	pop af                                           ; $5530: $f1
	jp Jump_092_565b                                 ; $5531: $c3 $5b $56


	xor h                                            ; $5534: $ac
	ld a, [hl-]                                      ; $5535: $3a
	jr c, jr_092_5579                                ; $5536: $38 $41

	ld b, h                                          ; $5538: $44
	ld e, l                                          ; $5539: $5d
	ld e, d                                          ; $553a: $5a
	ld a, [hl-]                                      ; $553b: $3a
	ld [hl], h                                       ; $553c: $74
	and e                                            ; $553d: $a3
	ld d, d                                          ; $553e: $52
	ld b, [hl]                                       ; $553f: $46
	inc [hl]                                         ; $5540: $34
	jr c, jr_092_557b                                ; $5541: $38 $38

	ld h, e                                          ; $5543: $63
	xor b                                            ; $5544: $a8
	ld l, d                                          ; $5545: $6a
	ldh a, [$d3]                                     ; $5546: $f0 $d3
	ld c, e                                          ; $5548: $4b
	inc [hl]                                         ; $5549: $34
	ldh a, [c]                                       ; $554a: $f2
	ld a, b                                          ; $554b: $78
	ld a, $3f                                        ; $554c: $3e $3f
	rst SubAFromDE                                          ; $554e: $df
	and b                                            ; $554f: $a0
	cpl                                              ; $5550: $2f
	ld [hl-], a                                      ; $5551: $32
	ld e, d                                          ; $5552: $5a
	add hl, sp                                       ; $5553: $39
	ld a, $3d                                        ; $5554: $3e $3d
	ld b, c                                          ; $5556: $41
	ld b, h                                          ; $5557: $44
	xor c                                            ; $5558: $a9
	db $ec                                           ; $5559: $ec
	ldh [$50], a                                     ; $555a: $e0 $50
	ld a, $55                                        ; $555c: $3e $55
	ld a, [hl-]                                      ; $555e: $3a
	jr c, jr_092_54f8                                ; $555f: $38 $97

	and e                                            ; $5561: $a3
	ld a, b                                          ; $5562: $78
	ldh a, [rAUD1HIGH]                               ; $5563: $f0 $14
	ld c, e                                          ; $5565: $4b
	xor h                                            ; $5566: $ac

jr_092_5567:
	ld [$acf6], a                                    ; $5567: $ea $f6 $ac
	ld [hl], d                                       ; $556a: $72
	ld a, c                                          ; $556b: $79
	add b                                            ; $556c: $80
	ld e, l                                          ; $556d: $5d
	ccf                                              ; $556e: $3f
	rst SubAFromDE                                          ; $556f: $df
	ld h, e                                          ; $5570: $63
	xor b                                            ; $5571: $a8
	db $eb                                           ; $5572: $eb
	sbc b                                            ; $5573: $98
	ld c, b                                          ; $5574: $48
	and b                                            ; $5575: $a0

jr_092_5576:
	cpl                                              ; $5576: $2f
	ld b, e                                          ; $5577: $43
	ld b, b                                          ; $5578: $40

jr_092_5579:
	ld b, c                                          ; $5579: $41
	ld a, [hl-]                                      ; $557a: $3a

jr_092_557b:
	xor $16                                          ; $557b: $ee $16
	ld a, [hl-]                                      ; $557d: $3a
	ld c, a                                          ; $557e: $4f
	ld b, d                                          ; $557f: $42
	xor h                                            ; $5580: $ac
	pop af                                           ; $5581: $f1
	sbc l                                            ; $5582: $9d
	ld e, [hl]                                       ; $5583: $5e
	ld c, [hl]                                       ; $5584: $4e
	ld c, e                                          ; $5585: $4b
	sbc h                                            ; $5586: $9c
	ld a, [hl-]                                      ; $5587: $3a
	jr c, jr_092_5576                                ; $5588: $38 $ec

	ret c                                            ; $558a: $d8

	inc a                                            ; $558b: $3c
	and b                                            ; $558c: $a0
	xor $14                                          ; $558d: $ee $14
	inc [hl]                                         ; $558f: $34
	pop af                                           ; $5590: $f1
	cp c                                             ; $5591: $b9
	ldh a, [rOBP1]                                   ; $5592: $f0 $49
	ld b, l                                          ; $5594: $45
	xor b                                            ; $5595: $a8
	ld b, b                                          ; $5596: $40
	ld c, l                                          ; $5597: $4d
	ld b, a                                          ; $5598: $47
	inc [hl]                                         ; $5599: $34
	ld b, [hl]                                       ; $559a: $46
	ld c, l                                          ; $559b: $4d
	db $ec                                           ; $559c: $ec
	ret c                                            ; $559d: $d8

	ld c, c                                          ; $559e: $49
	xor h                                            ; $559f: $ac
	db $f4                                           ; $55a0: $f4
	ld [bc], a                                       ; $55a1: $02

jr_092_55a2:
	ldh a, [$7f]                                     ; $55a2: $f0 $7f
	ld b, a                                          ; $55a4: $47
	push af                                          ; $55a5: $f5
	ld b, b                                          ; $55a6: $40
	ld e, l                                          ; $55a7: $5d
	ld c, [hl]                                       ; $55a8: $4e
	ld b, d                                          ; $55a9: $42
	ld b, l                                          ; $55aa: $45
	ld c, h                                          ; $55ab: $4c
	and b                                            ; $55ac: $a0
	cpl                                              ; $55ad: $2f
	ld b, e                                          ; $55ae: $43
	pop af                                           ; $55af: $f1
	cp c                                             ; $55b0: $b9
	ldh a, [rOBP1]                                   ; $55b1: $f0 $49
	and c                                            ; $55b3: $a1
	ldh a, [c]                                       ; $55b4: $f2
	ld a, [hl-]                                      ; $55b5: $3a
	ld a, [$f0d1]                                    ; $55b6: $fa $d1 $f0
	push hl                                          ; $55b9: $e5
	ldh a, [$2f]                                     ; $55ba: $f0 $2f
	ldh a, [$1f]                                     ; $55bc: $f0 $1f
	ldh a, [$9d]                                     ; $55be: $f0 $9d
	ld e, c                                          ; $55c0: $59
	ld l, c                                          ; $55c1: $69
	ldh a, [$03]                                     ; $55c2: $f0 $03
	inc de                                           ; $55c4: $13
	pop af                                           ; $55c5: $f1
	ld c, e                                          ; $55c6: $4b
	pop af                                           ; $55c7: $f1
	ld [hl], a                                       ; $55c8: $77
	ld b, a                                          ; $55c9: $47
	inc [hl]                                         ; $55ca: $34
	ldh a, [$9b]                                     ; $55cb: $f0 $9b
	ldh a, [c]                                       ; $55cd: $f2
	ld h, a                                          ; $55ce: $67
	inc a                                            ; $55cf: $3c
	ld a, [hl-]                                      ; $55d0: $3a
	ld e, l                                          ; $55d1: $5d
	ld c, l                                          ; $55d2: $4d
	ld a, e                                          ; $55d3: $7b
	inc de                                           ; $55d4: $13
	add a                                            ; $55d5: $87
	ldh a, [$5b]                                     ; $55d6: $f0 $5b
	ldh a, [$5e]                                     ; $55d8: $f0 $5e
	ld b, l                                          ; $55da: $45
	and b                                            ; $55db: $a0
	cpl                                              ; $55dc: $2f
	ld b, e                                          ; $55dd: $43
	xor $10                                          ; $55de: $ee $10
	dec [hl]                                         ; $55e0: $35
	rla                                              ; $55e1: $17
	ld b, b                                          ; $55e2: $40
	ld c, l                                          ; $55e3: $4d
	dec sp                                           ; $55e4: $3b
	ccf                                              ; $55e5: $3f
	inc [hl]                                         ; $55e6: $34
	pop af                                           ; $55e7: $f1
	cp c                                             ; $55e8: $b9
	ldh a, [rOBP1]                                   ; $55e9: $f0 $49
	dec sp                                           ; $55eb: $3b
	ccf                                              ; $55ec: $3f
	inc de                                           ; $55ed: $13
	add d                                            ; $55ee: $82
	ld h, e                                          ; $55ef: $63
	ld a, [hl-]                                      ; $55f0: $3a
	jr c, jr_092_5634                                ; $55f1: $38 $41

	ld b, h                                          ; $55f3: $44
	ld e, l                                          ; $55f4: $5d
	ld e, d                                          ; $55f5: $5a
	ld c, b                                          ; $55f6: $48
	and b                                            ; $55f7: $a0
	cpl                                              ; $55f8: $2f
	ld [hl-], a                                      ; $55f9: $32
	ld b, c                                          ; $55fa: $41
	ld [hl], $5a                                     ; $55fb: $36 $5a
	add hl, sp                                       ; $55fd: $39
	ld a, $3d                                        ; $55fe: $3e $3d
	ld b, c                                          ; $5600: $41
	ld b, h                                          ; $5601: $44
	xor b                                            ; $5602: $a8
	db $ec                                           ; $5603: $ec
	ldh [$50], a                                     ; $5604: $e0 $50
	ld a, $55                                        ; $5606: $3e $55
	ld a, [hl-]                                      ; $5608: $3a
	jr c, jr_092_55a2                                ; $5609: $38 $97

	and e                                            ; $560b: $a3
	ld d, h                                          ; $560c: $54
	ld c, l                                          ; $560d: $4d
	ld b, h                                          ; $560e: $44
	inc a                                            ; $560f: $3c
	ld d, b                                          ; $5610: $50
	xor h                                            ; $5611: $ac
	ldh a, [$57]                                     ; $5612: $f0 $57
	add h                                            ; $5614: $84
	xor $2d                                          ; $5615: $ee $2d
	ld l, [hl]                                       ; $5617: $6e
	ld c, h                                          ; $5618: $4c
	xor b                                            ; $5619: $a8
	ld c, d                                          ; $561a: $4a
	ld c, a                                          ; $561b: $4f
	inc [hl]                                         ; $561c: $34
	jr c, jr_092_5657                                ; $561d: $38 $38

	ld h, e                                          ; $561f: $63
	xor b                                            ; $5620: $a8
	ld l, d                                          ; $5621: $6a
	ldh a, [$d3]                                     ; $5622: $f0 $d3
	ld c, e                                          ; $5624: $4b
	inc [hl]                                         ; $5625: $34
	ldh a, [c]                                       ; $5626: $f2
	ld a, b                                          ; $5627: $78
	ld a, $3f                                        ; $5628: $3e $3f
	rst SubAFromDE                                          ; $562a: $df
	and b                                            ; $562b: $a0
	xor $14                                          ; $562c: $ee $14
	inc [hl]                                         ; $562e: $34
	ld d, h                                          ; $562f: $54
	ld b, d                                          ; $5630: $42
	ld [hl], l                                       ; $5631: $75
	ld e, c                                          ; $5632: $59
	ldh a, [c]                                       ; $5633: $f2

jr_092_5634:
	jr jr_092_568f                                   ; $5634: $18 $59

	xor l                                            ; $5636: $ad
	ldh a, [$98]                                     ; $5637: $f0 $98
	ld d, e                                          ; $5639: $53
	inc [hl]                                         ; $563a: $34
	pop af                                           ; $563b: $f1
	ld a, c                                          ; $563c: $79
	pop af                                           ; $563d: $f1
	ld h, d                                          ; $563e: $62
	ld a, $3d                                        ; $563f: $3e $3d
	ld b, d                                          ; $5641: $42
	and c                                            ; $5642: $a1
	cpl                                              ; $5643: $2f
	ld b, e                                          ; $5644: $43

jr_092_5645:
	db $eb                                           ; $5645: $eb
	rst FarCall                                          ; $5646: $f7
	inc [hl]                                         ; $5647: $34
	db $ec                                           ; $5648: $ec
	ldh [$a9], a                                     ; $5649: $e0 $a9
	halt                                             ; $564b: $76
	ld d, e                                          ; $564c: $53
	pop af                                           ; $564d: $f1
	ld a, c                                          ; $564e: $79
	pop af                                           ; $564f: $f1
	ld h, d                                          ; $5650: $62
	ld a, $3d                                        ; $5651: $3e $3d
	ld b, c                                          ; $5653: $41
	ld b, h                                          ; $5654: $44
	ld e, l                                          ; $5655: $5d
	ld e, d                                          ; $5656: $5a

jr_092_5657:
	and b                                            ; $5657: $a0
	ld d, d                                          ; $5658: $52
	dec a                                            ; $5659: $3d
	inc [hl]                                         ; $565a: $34

Jump_092_565b:
	ldh a, [rAUD1LOW]                                ; $565b: $f0 $13
	ldh a, [$2d]                                     ; $565d: $f0 $2d
	ld a, [hl-]                                      ; $565f: $3a
	di                                               ; $5660: $f3
	ld a, b                                          ; $5661: $78
	ld d, e                                          ; $5662: $53
	inc de                                           ; $5663: $13
	pop af                                           ; $5664: $f1
	ld a, c                                          ; $5665: $79
	pop af                                           ; $5666: $f1
	ld h, d                                          ; $5667: $62
	ld a, $3d                                        ; $5668: $3e $3d
	ld b, d                                          ; $566a: $42
	ld c, h                                          ; $566b: $4c
	and b                                            ; $566c: $a0
	ld l, d                                          ; $566d: $6a
	ldh a, [$0d]                                     ; $566e: $f0 $0d
	inc [hl]                                         ; $5670: $34
	xor $2a                                          ; $5671: $ee $2a
	db $f4                                           ; $5673: $f4
	or $f1                                           ; $5674: $f6 $f1
	sub l                                            ; $5676: $95
	ld b, a                                          ; $5677: $47
	inc de                                           ; $5678: $13
	ld a, $3f                                        ; $5679: $3e $3f
	ld l, [hl]                                       ; $567b: $6e
	ld e, a                                          ; $567c: $5f
	add hl, sp                                       ; $567d: $39
	inc a                                            ; $567e: $3c
	ld a, $50                                        ; $567f: $3e $50
	and b                                            ; $5681: $a0
	db $ed                                           ; $5682: $ed
	ld e, [hl]                                       ; $5683: $5e
	inc [hl]                                         ; $5684: $34
	add b                                            ; $5685: $80
	ld d, d                                          ; $5686: $52
	ld d, b                                          ; $5687: $50
	ld a, [hl-]                                      ; $5688: $3a
	inc a                                            ; $5689: $3c
	dec sp                                           ; $568a: $3b
	dec a                                            ; $568b: $3d
	and b                                            ; $568c: $a0
	cpl                                              ; $568d: $2f
	ld b, e                                          ; $568e: $43

jr_092_568f:
	rst JumpTable                                          ; $568f: $c7
	and c                                            ; $5690: $a1
	ld a, b                                          ; $5691: $78
	ldh a, [rAUD1HIGH]                               ; $5692: $f0 $14
	ld c, e                                          ; $5694: $4b
	ld [hl], d                                       ; $5695: $72
	ccf                                              ; $5696: $3f
	ld d, b                                          ; $5697: $50
	dec sp                                           ; $5698: $3b
	ld a, $56                                        ; $5699: $3e $56
	jr c, jr_092_5645                                ; $569b: $38 $a8

	ld [$acf6], a                                    ; $569d: $ea $f6 $ac
	ld [hl], d                                       ; $56a0: $72
	ld a, c                                          ; $56a1: $79
	add b                                            ; $56a2: $80
	ld e, l                                          ; $56a3: $5d
	ccf                                              ; $56a4: $3f
	rst SubAFromDE                                          ; $56a5: $df
	ld h, e                                          ; $56a6: $63
	and b                                            ; $56a7: $a0
	xor $14                                          ; $56a8: $ee $14
	inc [hl]                                         ; $56aa: $34
	ld d, h                                          ; $56ab: $54
	ld b, d                                          ; $56ac: $42
	ld [hl], l                                       ; $56ad: $75
	ld e, c                                          ; $56ae: $59
	ldh a, [c]                                       ; $56af: $f2
	jr jr_092_570b                                   ; $56b0: $18 $59

	xor l                                            ; $56b2: $ad
	ld l, a                                          ; $56b3: $6f
	ld d, e                                          ; $56b4: $53
	ldh a, [$a5]                                     ; $56b5: $f0 $a5
	dec sp                                           ; $56b7: $3b
	dec a                                            ; $56b8: $3d
	ldh a, [$2c]                                     ; $56b9: $f0 $2c
	ld c, c                                          ; $56bb: $49
	ldh a, [$f5]                                     ; $56bc: $f0 $f5
	add hl, sp                                       ; $56be: $39
	ld h, e                                          ; $56bf: $63
	ld b, l                                          ; $56c0: $45
	and b                                            ; $56c1: $a0
	cpl                                              ; $56c2: $2f
	ld b, e                                          ; $56c3: $43
	db $ec                                           ; $56c4: $ec
	ld sp, hl                                        ; $56c5: $f9
	inc [hl]                                         ; $56c6: $34
	ldh a, [$a5]                                     ; $56c7: $f0 $a5
	dec sp                                           ; $56c9: $3b
	dec a                                            ; $56ca: $3d
	db $ec                                           ; $56cb: $ec
	or $a1                                           ; $56cc: $f6 $a1
	ldh a, [$08]                                     ; $56ce: $f0 $08
	ld d, b                                          ; $56d0: $50
	inc [hl]                                         ; $56d1: $34
	ld a, [$5889]                                    ; $56d2: $fa $89 $58
	pop af                                           ; $56d5: $f1
	pop de                                           ; $56d6: $d1
	pop af                                           ; $56d7: $f1
	sbc [hl]                                         ; $56d8: $9e
	ldh a, [$7b]                                     ; $56d9: $f0 $7b
	ld h, l                                          ; $56db: $65
	ldh a, [$2b]                                     ; $56dc: $f0 $2b
	ld b, d                                          ; $56de: $42
	inc de                                           ; $56df: $13
	db $ed                                           ; $56e0: $ed
	db $fd                                           ; $56e1: $fd
	ld h, d                                          ; $56e2: $62
	pop af                                           ; $56e3: $f1
	inc d                                            ; $56e4: $14
	ld d, a                                          ; $56e5: $57
	push af                                          ; $56e6: $f5
	ld l, h                                          ; $56e7: $6c
	jr c, jr_092_5727                                ; $56e8: $38 $3d

	ld l, [hl]                                       ; $56ea: $6e
	add b                                            ; $56eb: $80
	ld b, l                                          ; $56ec: $45
	and b                                            ; $56ed: $a0
	db $ec                                           ; $56ee: $ec
	reti                                             ; $56ef: $d9


	xor h                                            ; $56f0: $ac
	xor $1e                                          ; $56f1: $ee $1e
	ld [hl], l                                       ; $56f3: $75
	ld e, c                                          ; $56f4: $59
	ldh a, [c]                                       ; $56f5: $f2
	jr @+$5b                                         ; $56f6: $18 $59

	db $ec                                           ; $56f8: $ec
	ret c                                            ; $56f9: $d8

	ld c, c                                          ; $56fa: $49
	inc de                                           ; $56fb: $13
	db $eb                                           ; $56fc: $eb
	ld d, e                                          ; $56fd: $53
	ld h, e                                          ; $56fe: $63
	ld c, h                                          ; $56ff: $4c
	and b                                            ; $5700: $a0
	ld b, [hl]                                       ; $5701: $46
	ld [hl], h                                       ; $5702: $74
	inc [hl]                                         ; $5703: $34
	ld a, b                                          ; $5704: $78
	ldh a, [rAUD1HIGH]                               ; $5705: $f0 $14
	ld d, e                                          ; $5707: $53
	inc de                                           ; $5708: $13
	sbc c                                            ; $5709: $99
	ld h, c                                          ; $570a: $61

jr_092_570b:
	pop af                                           ; $570b: $f1
	ld b, $3e                                        ; $570c: $06 $3e
	jr c, jr_092_5773                                ; $570e: $38 $63

	and b                                            ; $5710: $a0
	ld l, a                                          ; $5711: $6f
	ld b, d                                          ; $5712: $42
	pop af                                           ; $5713: $f1
	jp nz, $f042                                     ; $5714: $c2 $42 $f0

	xor d                                            ; $5717: $aa
	adc c                                            ; $5718: $89
	ldh a, [$7f]                                     ; $5719: $f0 $7f
	ld h, d                                          ; $571b: $62
	xor h                                            ; $571c: $ac
	ld b, [hl]                                       ; $571d: $46
	ld a, [hl-]                                      ; $571e: $3a
	dec a                                            ; $571f: $3d
	ld b, a                                          ; $5720: $47
	ld [hl], d                                       ; $5721: $72
	ld a, c                                          ; $5722: $79
	add b                                            ; $5723: $80
	ld e, l                                          ; $5724: $5d
	ld c, [hl]                                       ; $5725: $4e
	ld c, c                                          ; $5726: $49

jr_092_5727:
	ld e, h                                          ; $5727: $5c
	ld d, e                                          ; $5728: $53
	inc de                                           ; $5729: $13
	ld a, b                                          ; $572a: $78
	dec a                                            ; $572b: $3d
	ld h, e                                          ; $572c: $63
	and b                                            ; $572d: $a0
	cpl                                              ; $572e: $2f
	ld b, e                                          ; $572f: $43
	ld c, h                                          ; $5730: $4c
	ld e, [hl]                                       ; $5731: $5e
	inc [hl]                                         ; $5732: $34
	sbc $87                                          ; $5733: $de $87
	ldh a, [$5b]                                     ; $5735: $f0 $5b
	ldh a, [$5e]                                     ; $5737: $f0 $5e
	xor c                                            ; $5739: $a9
	ld d, h                                          ; $573a: $54
	ld b, d                                          ; $573b: $42
	ldh a, [$c6]                                     ; $573c: $f0 $c6
	ldh a, [c]                                       ; $573e: $f2
	xor d                                            ; $573f: $aa
	ld c, b                                          ; $5740: $48
	and b                                            ; $5741: $a0
	db $eb                                           ; $5742: $eb
	inc e                                            ; $5743: $1c
	xor h                                            ; $5744: $ac
	ld [$a98b], a                                    ; $5745: $ea $8b $a9
	db $f4                                           ; $5748: $f4
	ld h, h                                          ; $5749: $64
	dec sp                                           ; $574a: $3b
	ccf                                              ; $574b: $3f
	ld [hl], d                                       ; $574c: $72
	ccf                                              ; $574d: $3f
	ld c, l                                          ; $574e: $4d
	ld a, e                                          ; $574f: $7b
	jr c, jr_092_578a                                ; $5750: $38 $38

	ld b, d                                          ; $5752: $42
	ld b, l                                          ; $5753: $45
	and b                                            ; $5754: $a0
	cpl                                              ; $5755: $2f
	ld b, e                                          ; $5756: $43
	xor $2d                                          ; $5757: $ee $2d
	xor h                                            ; $5759: $ac
	ld [hl], d                                       ; $575a: $72
	ld e, b                                          ; $575b: $58
	ld a, c                                          ; $575c: $79
	ccf                                              ; $575d: $3f
	jr c, jr_092_579d                                ; $575e: $38 $3d

	ld b, h                                          ; $5760: $44
	ld e, h                                          ; $5761: $5c
	ld d, d                                          ; $5762: $52
	ld d, c                                          ; $5763: $51
	and b                                            ; $5764: $a0
	ld d, d                                          ; $5765: $52
	inc [hl]                                         ; $5766: $34
	ld d, h                                          ; $5767: $54
	ld b, d                                          ; $5768: $42
	ld l, a                                          ; $5769: $6f
	ld b, a                                          ; $576a: $47
	ldh a, [rHDMA5]                                  ; $576b: $f0 $55
	pop af                                           ; $576d: $f1
	add b                                            ; $576e: $80
	ld c, c                                          ; $576f: $49
	jr c, jr_092_57ab                                ; $5770: $38 $39

	inc de                                           ; $5772: $13

jr_092_5773:
	ldh a, [rSCX]                                    ; $5773: $f0 $43
	db $f4                                           ; $5775: $f4
	ret                                              ; $5776: $c9


	ld c, e                                          ; $5777: $4b
	ld a, [hl-]                                      ; $5778: $3a
	jr c, jr_092_57d8                                ; $5779: $38 $5d

	ld e, d                                          ; $577b: $5a
	xor b                                            ; $577c: $a8
	db $ed                                           ; $577d: $ed
	ld e, l                                          ; $577e: $5d
	ld b, d                                          ; $577f: $42
	pop af                                           ; $5780: $f1
	and e                                            ; $5781: $a3
	pop af                                           ; $5782: $f1
	ld [hl], d                                       ; $5783: $72
	ld d, e                                          ; $5784: $53
	ldh a, [$71]                                     ; $5785: $f0 $71
	jr c, jr_092_57ec                                ; $5787: $38 $63

	and b                                            ; $5789: $a0

jr_092_578a:
	cpl                                              ; $578a: $2f
	ld b, e                                          ; $578b: $43
	ld c, a                                          ; $578c: $4f
	ld b, d                                          ; $578d: $42
	ld [$a8b3], a                                    ; $578e: $ea $b3 $a8
	ld [hl-], a                                      ; $5791: $32
	ldh a, [$71]                                     ; $5792: $f0 $71
	jr c, jr_092_57d8                                ; $5794: $38 $42

	ld c, e                                          ; $5796: $4b
	inc [hl]                                         ; $5797: $34
	pop af                                           ; $5798: $f1
	and e                                            ; $5799: $a3
	pop af                                           ; $579a: $f1
	ld [hl], d                                       ; $579b: $72
	ld b, h                                          ; $579c: $44

jr_092_579d:
	ld e, l                                          ; $579d: $5d
	ld e, e                                          ; $579e: $5b
	ld d, [hl]                                       ; $579f: $56
	inc de                                           ; $57a0: $13
	ld a, [hl-]                                      ; $57a1: $3a
	jr c, jr_092_57ed                                ; $57a2: $38 $49

	ld [hl], a                                       ; $57a4: $77
	add hl, sp                                       ; $57a5: $39
	ld e, l                                          ; $57a6: $5d
	ld e, d                                          ; $57a7: $5a
	ld c, b                                          ; $57a8: $48
	and e                                            ; $57a9: $a3
	ld l, a                                          ; $57aa: $6f

jr_092_57ab:
	ld h, d                                          ; $57ab: $62
	db $ed                                           ; $57ac: $ed
	adc d                                            ; $57ad: $8a
	ld a, $3d                                        ; $57ae: $3e $3d
	and c                                            ; $57b0: $a1
	cpl                                              ; $57b1: $2f
	ld b, e                                          ; $57b2: $43
	ld b, [hl]                                       ; $57b3: $46
	ld b, [hl]                                       ; $57b4: $46
	inc [hl]                                         ; $57b5: $34
	db $ed                                           ; $57b6: $ed
	adc d                                            ; $57b7: $8a
	ld a, $3d                                        ; $57b8: $3e $3d
	and b                                            ; $57ba: $a0
	ld b, b                                          ; $57bb: $40
	add hl, sp                                       ; $57bc: $39
	xor b                                            ; $57bd: $a8
	ld b, b                                          ; $57be: $40
	ld c, l                                          ; $57bf: $4d
	ld a, [hl-]                                      ; $57c0: $3a
	ld d, b                                          ; $57c1: $50
	inc [hl]                                         ; $57c2: $34
	ei                                               ; $57c3: $fb
	ld b, l                                          ; $57c4: $45
	ld a, $38                                        ; $57c5: $3e $38
	and b                                            ; $57c7: $a0
	db $eb                                           ; $57c8: $eb
	sbc b                                            ; $57c9: $98
	ld c, b                                          ; $57ca: $48
	xor h                                            ; $57cb: $ac
	add b                                            ; $57cc: $80
	jr c, jr_092_5816                                ; $57cd: $38 $47

	ld [$acf6], a                                    ; $57cf: $ea $f6 $ac
	ld [hl], d                                       ; $57d2: $72
	ld a, c                                          ; $57d3: $79
	add b                                            ; $57d4: $80
	ld e, l                                          ; $57d5: $5d
	ld c, [hl]                                       ; $57d6: $4e
	ld c, c                                          ; $57d7: $49

jr_092_57d8:
	ld e, h                                          ; $57d8: $5c
	ld d, e                                          ; $57d9: $53
	ld a, b                                          ; $57da: $78
	dec a                                            ; $57db: $3d
	ld h, e                                          ; $57dc: $63
	and b                                            ; $57dd: $a0
	db $eb                                           ; $57de: $eb
	inc e                                            ; $57df: $1c
	xor h                                            ; $57e0: $ac
	ld [$a98b], a                                    ; $57e1: $ea $8b $a9
	ld l, a                                          ; $57e4: $6f

jr_092_57e5:
	ld c, e                                          ; $57e5: $4b
	inc [hl]                                         ; $57e6: $34
	pop af                                           ; $57e7: $f1
	ld d, d                                          ; $57e8: $52
	pop af                                           ; $57e9: $f1
	xor d                                            ; $57ea: $aa
	pop af                                           ; $57eb: $f1

jr_092_57ec:
	and e                                            ; $57ec: $a3

jr_092_57ed:
	ld a, [hl-]                                      ; $57ed: $3a
	ld b, d                                          ; $57ee: $42
	ld b, l                                          ; $57ef: $45
	and b                                            ; $57f0: $a0
	cpl                                              ; $57f1: $2f
	ld b, e                                          ; $57f2: $43
	xor $1e                                          ; $57f3: $ee $1e
	xor l                                            ; $57f5: $ad
	db $ec                                           ; $57f6: $ec
	cp c                                             ; $57f7: $b9
	ld d, b                                          ; $57f8: $50
	inc [hl]                                         ; $57f9: $34
	ldh a, [$63]                                     ; $57fa: $f0 $63
	pop af                                           ; $57fc: $f1
	ldh [$62], a                                     ; $57fd: $e0 $62
	inc de                                           ; $57ff: $13
	db $ec                                           ; $5800: $ec
	db $ed                                           ; $5801: $ed
	ld d, l                                          ; $5802: $55
	ld c, l                                          ; $5803: $4d
	ld a, [hl-]                                      ; $5804: $3a
	jr c, jr_092_5843                                ; $5805: $38 $3c

	ld a, [hl-]                                      ; $5807: $3a
	and c                                            ; $5808: $a1
	ld d, h                                          ; $5809: $54
	ld c, l                                          ; $580a: $4d
	ld c, d                                          ; $580b: $4a
	db $ec                                           ; $580c: $ec
	ld hl, sp-$54                                    ; $580d: $f8 $ac
	ld h, h                                          ; $580f: $64
	ld h, h                                          ; $5810: $64
	dec sp                                           ; $5811: $3b
	ldh a, [c]                                       ; $5812: $f2
	sbc $50                                          ; $5813: $de $50
	ld b, a                                          ; $5815: $47

jr_092_5816:
	inc de                                           ; $5816: $13
	db $ec                                           ; $5817: $ec
	add d                                            ; $5818: $82
	ld d, e                                          ; $5819: $53
	sub h                                            ; $581a: $94
	ld a, b                                          ; $581b: $78
	ld c, [hl]                                       ; $581c: $4e
	ld h, e                                          ; $581d: $63
	and b                                            ; $581e: $a0
	cpl                                              ; $581f: $2f
	ld b, e                                          ; $5820: $43
	xor $1e                                          ; $5821: $ee $1e
	inc [hl]                                         ; $5823: $34
	ldh a, [$63]                                     ; $5824: $f0 $63
	pop af                                           ; $5826: $f1
	ldh [$62], a                                     ; $5827: $e0 $62
	ld c, b                                          ; $5829: $48
	and b                                            ; $582a: $a0

jr_092_582b:
	ld e, b                                          ; $582b: $58
	ld b, [hl]                                       ; $582c: $46
	inc [hl]                                         ; $582d: $34
	ldh a, [$bb]                                     ; $582e: $f0 $bb
	ld [hl], c                                       ; $5830: $71
	ld d, d                                          ; $5831: $52
	ld a, $66                                        ; $5832: $3e $66
	add hl, sp                                       ; $5834: $39
	inc a                                            ; $5835: $3c
	and b                                            ; $5836: $a0
	jr c, jr_092_58a7                                ; $5837: $38 $6e

	ld b, l                                          ; $5839: $45
	xor b                                            ; $583a: $a8

jr_092_583b:
	db $ed                                           ; $583b: $ed
	ld e, l                                          ; $583c: $5d
	ld c, d                                          ; $583d: $4a
	ldh a, [$a4]                                     ; $583e: $f0 $a4
	ld e, [hl]                                       ; $5840: $5e
	ld a, [hl-]                                      ; $5841: $3a
	ld e, b                                          ; $5842: $58

jr_092_5843:
	jr c, jr_092_57e5                                ; $5843: $38 $a0

	add hl, sp                                       ; $5845: $39
	ld c, [hl]                                       ; $5846: $4e
	ld e, b                                          ; $5847: $58
	jr c, jr_092_583b                                ; $5848: $38 $f1

	add hl, de                                       ; $584a: $19
	di                                               ; $584b: $f3
	ld a, h                                          ; $584c: $7c
	ld d, e                                          ; $584d: $53
	inc de                                           ; $584e: $13
	jr c, jr_092_589f                                ; $584f: $38 $4e

	ld h, e                                          ; $5851: $63
	ld c, h                                          ; $5852: $4c
	xor l                                            ; $5853: $ad
	db $ec                                           ; $5854: $ec
	add d                                            ; $5855: $82
	ld b, d                                          ; $5856: $42
	ldh a, [c]                                       ; $5857: $f2
	ld [hl], $6d                                     ; $5858: $36 $6d
	ldh a, [c]                                       ; $585a: $f2
	ld [hl], h                                       ; $585b: $74
	ld b, a                                          ; $585c: $47
	inc de                                           ; $585d: $13
	ld a, $3f                                        ; $585e: $3e $3f
	ld b, [hl]                                       ; $5860: $46
	ldh a, [rSB]                                     ; $5861: $f0 $01
	ld d, d                                          ; $5863: $52
	ld a, $66                                        ; $5864: $3e $66
	add hl, sp                                       ; $5866: $39
	inc a                                            ; $5867: $3c
	and c                                            ; $5868: $a1
	cpl                                              ; $5869: $2f
	ld b, e                                          ; $586a: $43
	jr c, jr_092_58a1                                ; $586b: $38 $34

	jr c, jr_092_58cd                                ; $586d: $38 $5e

	xor l                                            ; $586f: $ad
	ldh a, [$80]                                     ; $5870: $f0 $80
	ldh a, [$c5]                                     ; $5872: $f0 $c5
	ld c, d                                          ; $5874: $4a
	ld d, c                                          ; $5875: $51
	and b                                            ; $5876: $a0
	ld b, h                                          ; $5877: $44
	dec sp                                           ; $5878: $3b
	dec a                                            ; $5879: $3d
	ld d, b                                          ; $587a: $50
	xor h                                            ; $587b: $ac
	pop af                                           ; $587c: $f1
	push af                                          ; $587d: $f5
	ld h, d                                          ; $587e: $62
	ld c, e                                          ; $587f: $4b
	ld e, b                                          ; $5880: $58
	ld d, d                                          ; $5881: $52
	ld a, [hl-]                                      ; $5882: $3a
	jr c, jr_092_58cf                                ; $5883: $38 $4a

	ld h, c                                          ; $5885: $61
	ld h, [hl]                                       ; $5886: $66
	add hl, sp                                       ; $5887: $39
	ld b, h                                          ; $5888: $44
	jr c, jr_092_582b                                ; $5889: $38 $a0

	db $ed                                           ; $588b: $ed
	ld d, l                                          ; $588c: $55
	ld h, e                                          ; $588d: $63
	inc [hl]                                         ; $588e: $34
	pop af                                           ; $588f: $f1
	ld d, e                                          ; $5890: $53
	db $f4                                           ; $5891: $f4
	and b                                            ; $5892: $a0
	ld b, l                                          ; $5893: $45
	xor b                                            ; $5894: $a8
	ld d, h                                          ; $5895: $54
	ld c, l                                          ; $5896: $4d
	ld c, d                                          ; $5897: $4a
	inc [hl]                                         ; $5898: $34
	ld d, d                                          ; $5899: $52
	dec a                                            ; $589a: $3d
	ldh a, [rAUD2LOW]                                ; $589b: $f0 $18
	pop af                                           ; $589d: $f1
	ld l, d                                          ; $589e: $6a

jr_092_589f:
	ld b, a                                          ; $589f: $47
	inc de                                           ; $58a0: $13

jr_092_58a1:
	db $ed                                           ; $58a1: $ed
	cp h                                             ; $58a2: $bc
	ldh a, [$9b]                                     ; $58a3: $f0 $9b
	ldh a, [c]                                       ; $58a5: $f2
	ld h, a                                          ; $58a6: $67

jr_092_58a7:
	jr c, jr_092_58e6                                ; $58a7: $38 $3d

	ld h, e                                          ; $58a9: $63
	and b                                            ; $58aa: $a0
	cpl                                              ; $58ab: $2f
	ld b, e                                          ; $58ac: $43
	db $ed                                           ; $58ad: $ed
	ld c, [hl]                                       ; $58ae: $4e
	inc [hl]                                         ; $58af: $34
	db $ec                                           ; $58b0: $ec
	ldh [rOBP0], a                                   ; $58b1: $e0 $48
	dec [hl]                                         ; $58b3: $35
	rla                                              ; $58b4: $17
	xor $05                                          ; $58b5: $ee $05
	ld b, h                                          ; $58b7: $44
	inc [hl]                                         ; $58b8: $34
	ldh a, [c]                                       ; $58b9: $f2
	scf                                              ; $58ba: $37
	ldh a, [rOBP1]                                   ; $58bb: $f0 $49
	ld b, a                                          ; $58bd: $47
	db $ed                                           ; $58be: $ed
	ld e, l                                          ; $58bf: $5d
	ld b, d                                          ; $58c0: $42
	ldh a, [$f6]                                     ; $58c1: $f0 $f6
	pop af                                           ; $58c3: $f1
	inc [hl]                                         ; $58c4: $34
	ld b, a                                          ; $58c5: $47
	inc de                                           ; $58c6: $13
	ld h, a                                          ; $58c7: $67
	dec sp                                           ; $58c8: $3b
	ld h, c                                          ; $58c9: $61
	ld d, [hl]                                       ; $58ca: $56
	dec sp                                           ; $58cb: $3b
	ccf                                              ; $58cc: $3f

jr_092_58cd:
	ld c, [hl]                                       ; $58cd: $4e
	ld b, l                                          ; $58ce: $45

jr_092_58cf:
	and b                                            ; $58cf: $a0
	db $eb                                           ; $58d0: $eb
	sbc b                                            ; $58d1: $98

jr_092_58d2:
	ld c, b                                          ; $58d2: $48
	and b                                            ; $58d3: $a0
	call c, $ed34                                    ; $58d4: $dc $34 $ed
	inc a                                            ; $58d7: $3c
	ld b, d                                          ; $58d8: $42
	dec a                                            ; $58d9: $3d
	ld [hl], c                                       ; $58da: $71
	ld b, a                                          ; $58db: $47
	inc de                                           ; $58dc: $13
	db $f4                                           ; $58dd: $f4
	cp l                                             ; $58de: $bd
	ld e, h                                          ; $58df: $5c
	ld l, b                                          ; $58e0: $68
	ld b, d                                          ; $58e1: $42
	ldh a, [$3f]                                     ; $58e2: $f0 $3f
	ld d, e                                          ; $58e4: $53
	ld b, [hl]                                       ; $58e5: $46

jr_092_58e6:
	ld c, [hl]                                       ; $58e6: $4e
	ld c, c                                          ; $58e7: $49
	jr c, jr_092_5922                                ; $58e8: $38 $38

	ld h, e                                          ; $58ea: $63
	ld c, h                                          ; $58eb: $4c
	and b                                            ; $58ec: $a0
	cpl                                              ; $58ed: $2f
	ld b, e                                          ; $58ee: $43
	db $ed                                           ; $58ef: $ed
	inc a                                            ; $58f0: $3c
	ld c, b                                          ; $58f1: $48
	and c                                            ; $58f2: $a1
	ld [$a8ce], a                                    ; $58f3: $ea $ce $a8
	ldh a, [$0a]                                     ; $58f6: $f0 $0a
	ld d, l                                          ; $58f8: $55
	ldh a, [$bd]                                     ; $58f9: $f0 $bd
	ld e, h                                          ; $58fb: $5c
	ld a, [hl-]                                      ; $58fc: $3a
	ld e, b                                          ; $58fd: $58
	jr c, jr_092_5945                                ; $58fe: $38 $45

	and b                                            ; $5900: $a0
	cpl                                              ; $5901: $2f
	ld b, e                                          ; $5902: $43
	ld [$a84a], a                                    ; $5903: $ea $4a $a8
	ld e, d                                          ; $5906: $5a
	add hl, sp                                       ; $5907: $39
	and c                                            ; $5908: $a1
	pop de                                           ; $5909: $d1
	jr c, jr_092_5944                                ; $590a: $38 $38

	ld h, e                                          ; $590c: $63
	xor b                                            ; $590d: $a8
	ld sp, hl                                        ; $590e: $f9
	ld [hl], d                                       ; $590f: $72
	ldh a, [$61]                                     ; $5910: $f0 $61
	ldh a, [$7a]                                     ; $5912: $f0 $7a
	ld c, a                                          ; $5914: $4f
	ld b, [hl]                                       ; $5915: $46
	ld a, [hl-]                                      ; $5916: $3a
	dec a                                            ; $5917: $3d
	ld b, a                                          ; $5918: $47
	inc de                                           ; $5919: $13
	ld h, h                                          ; $591a: $64
	ldh a, [$c8]                                     ; $591b: $f0 $c8
	jr c, @-$12                                      ; $591d: $38 $ec

	inc c                                            ; $591f: $0c
	ld a, $50                                        ; $5920: $3e $50

jr_092_5922:
	and b                                            ; $5922: $a0
	cpl                                              ; $5923: $2f
	ld b, e                                          ; $5924: $43
	ld sp, hl                                        ; $5925: $f9
	ld [hl], d                                       ; $5926: $72
	ldh a, [$61]                                     ; $5927: $f0 $61
	ldh a, [$7a]                                     ; $5929: $f0 $7a
	ld c, b                                          ; $592b: $48
	xor c                                            ; $592c: $a9
	db $ec                                           ; $592d: $ec
	ldh [rSCY], a                                    ; $592e: $e0 $42
	and c                                            ; $5930: $a1
	db $ec                                           ; $5931: $ec
	db $f4                                           ; $5932: $f4
	dec [hl]                                         ; $5933: $35
	ld b, b                                          ; $5934: $40
	ld b, d                                          ; $5935: $42
	add hl, sp                                       ; $5936: $39
	ld h, c                                          ; $5937: $61
	inc de                                           ; $5938: $13
	ldh a, [$bd]                                     ; $5939: $f0 $bd
	jr c, @+$41                                      ; $593b: $38 $3f

	ld c, a                                          ; $593d: $4f
	ld d, b                                          ; $593e: $50
	add hl, sp                                       ; $593f: $39
	ld d, h                                          ; $5940: $54
	ld c, c                                          ; $5941: $49
	ld b, a                                          ; $5942: $47
	ld a, [hl-]                                      ; $5943: $3a

jr_092_5944:
	ld c, [hl]                                       ; $5944: $4e

jr_092_5945:
	ld h, e                                          ; $5945: $63
	and b                                            ; $5946: $a0
	cpl                                              ; $5947: $2f
	ld b, e                                          ; $5948: $43
	ldh a, [$34]                                     ; $5949: $f0 $34
	ld b, a                                          ; $594b: $47
	db $ec                                           ; $594c: $ec
	ld [$ad58], sp                                   ; $594d: $08 $58 $ad
	jr c, jr_092_58d2                                ; $5950: $38 $80

	ld [hl], b                                       ; $5952: $70
	ld e, a                                          ; $5953: $5f
	ld a, [hl-]                                      ; $5954: $3a
	ld b, d                                          ; $5955: $42
	and c                                            ; $5956: $a1
	ld b, b                                          ; $5957: $40
	ld b, d                                          ; $5958: $42
	ldh a, [rBGP]                                    ; $5959: $f0 $47
	ld d, e                                          ; $595b: $53
	ld a, b                                          ; $595c: $78
	dec a                                            ; $595d: $3d
	ld d, b                                          ; $595e: $50
	inc de                                           ; $595f: $13
	ldh a, [rTAC]                                    ; $5960: $f0 $07
	inc a                                            ; $5962: $3c
	ld c, [hl]                                       ; $5963: $4e
	ld h, e                                          ; $5964: $63
	dec [hl]                                         ; $5965: $35
	ldh a, [rSCY]                                    ; $5966: $f0 $42
	ldh a, [rSCY]                                    ; $5968: $f0 $42
	ldh a, [rSCY]                                    ; $596a: $f0 $42
	xor l                                            ; $596c: $ad
	ld b, b                                          ; $596d: $40
	ld c, l                                          ; $596e: $4d
	ld e, e                                          ; $596f: $5b
	ld d, [hl]                                       ; $5970: $56
	inc [hl]                                         ; $5971: $34
	ld e, b                                          ; $5972: $58
	ld b, l                                          ; $5973: $45
	ld a, [hl-]                                      ; $5974: $3a
	ld d, b                                          ; $5975: $50
	and b                                            ; $5976: $a0
	cpl                                              ; $5977: $2f
	ld b, e                                          ; $5978: $43
	ld b, b                                          ; $5979: $40
	ld b, d                                          ; $597a: $42
	ldh a, [rBGP]                                    ; $597b: $f0 $47
	dec sp                                           ; $597d: $3b
	ccf                                              ; $597e: $3f
	xor h                                            ; $597f: $ac
	ld l, e                                          ; $5980: $6b
	ld b, h                                          ; $5981: $44
	ld e, a                                          ; $5982: $5f
	add hl, sp                                       ; $5983: $39
	and c                                            ; $5984: $a1
	call c, $f434                                    ; $5985: $dc $34 $f4
	cp l                                             ; $5988: $bd
	ld e, h                                          ; $5989: $5c
	ld l, b                                          ; $598a: $68
	ld b, d                                          ; $598b: $42
	di                                               ; $598c: $f3
	add hl, de                                       ; $598d: $19
	ld h, d                                          ; $598e: $62
	inc de                                           ; $598f: $13
	ldh a, [$3f]                                     ; $5990: $f0 $3f
	ld c, c                                          ; $5992: $49
	ld a, $3f                                        ; $5993: $3e $3f
	ldh a, [$8d]                                     ; $5995: $f0 $8d
	ld a, $3f                                        ; $5997: $3e $3f
	ld h, h                                          ; $5999: $64
	ld d, l                                          ; $599a: $55
	ld b, d                                          ; $599b: $42
	ld c, a                                          ; $599c: $4f
	inc de                                           ; $599d: $13
	jr c, jr_092_59d8                                ; $599e: $38 $38

	ld h, e                                          ; $59a0: $63
	ld c, h                                          ; $59a1: $4c
	and b                                            ; $59a2: $a0
	pop de                                           ; $59a3: $d1
	db $ec                                           ; $59a4: $ec
	ret c                                            ; $59a5: $d8

	xor b                                            ; $59a6: $a8
	ld h, h                                          ; $59a7: $64
	ldh a, [c]                                       ; $59a8: $f2
	sub [hl]                                         ; $59a9: $96
	ld e, [hl]                                       ; $59aa: $5e
	ld b, d                                          ; $59ab: $42
	ldh a, [$7a]                                     ; $59ac: $f0 $7a
	ldh a, [rSVBK]                                   ; $59ae: $f0 $70
	ld b, a                                          ; $59b0: $47
	inc de                                           ; $59b1: $13
	ld a, $3f                                        ; $59b2: $3e $3f
	ld b, [hl]                                       ; $59b4: $46
	ldh a, [rSB]                                     ; $59b5: $f0 $01
	ccf                                              ; $59b7: $3f
	ld c, a                                          ; $59b8: $4f
	jr c, jr_092_59f3                                ; $59b9: $38 $38

	ld h, e                                          ; $59bb: $63
	and b                                            ; $59bc: $a0
	cpl                                              ; $59bd: $2f
	ld b, e                                          ; $59be: $43
	ld h, h                                          ; $59bf: $64
	ldh a, [c]                                       ; $59c0: $f2
	sub [hl]                                         ; $59c1: $96
	ld e, [hl]                                       ; $59c2: $5e
	ld b, d                                          ; $59c3: $42
	ldh a, [$7a]                                     ; $59c4: $f0 $7a
	ldh a, [rSVBK]                                   ; $59c6: $f0 $70
	ld c, b                                          ; $59c8: $48
	xor c                                            ; $59c9: $a9
	ld l, e                                          ; $59ca: $6b
	ld b, b                                          ; $59cb: $40
	ld c, l                                          ; $59cc: $4d
	and c                                            ; $59cd: $a1
	db $eb                                           ; $59ce: $eb
	ld b, d                                          ; $59cf: $42
	ld h, e                                          ; $59d0: $63
	xor b                                            ; $59d1: $a8
	db $ec                                           ; $59d2: $ec
	xor $42                                          ; $59d3: $ee $42
	ld d, h                                          ; $59d5: $54
	ld c, c                                          ; $59d6: $49
	ld b, l                                          ; $59d7: $45

jr_092_59d8:
	xor b                                            ; $59d8: $a8
	ld b, b                                          ; $59d9: $40
	ld c, l                                          ; $59da: $4d
	ld e, e                                          ; $59db: $5b
	ld d, [hl]                                       ; $59dc: $56
	inc [hl]                                         ; $59dd: $34
	ld e, b                                          ; $59de: $58
	ld b, l                                          ; $59df: $45
	ld a, [hl-]                                      ; $59e0: $3a

jr_092_59e1:
	ld d, b                                          ; $59e1: $50
	and b                                            ; $59e2: $a0
	cpl                                              ; $59e3: $2f
	ld b, e                                          ; $59e4: $43
	ld h, h                                          ; $59e5: $64
	ldh a, [c]                                       ; $59e6: $f2
	sub [hl]                                         ; $59e7: $96
	ld e, [hl]                                       ; $59e8: $5e
	ld b, d                                          ; $59e9: $42
	ldh a, [$7a]                                     ; $59ea: $f0 $7a
	ldh a, [rSVBK]                                   ; $59ec: $f0 $70
	dec sp                                           ; $59ee: $3b
	ccf                                              ; $59ef: $3f
	xor h                                            ; $59f0: $ac
	di                                               ; $59f1: $f3
	dec b                                            ; $59f2: $05

jr_092_59f3:
	ldh a, [hDisp0_OBP1]                                     ; $59f3: $f0 $87
	ld b, a                                          ; $59f5: $47
	ldh a, [c]                                       ; $59f6: $f2
	sbc c                                            ; $59f7: $99
	ld e, [hl]                                       ; $59f8: $5e
	ccf                                              ; $59f9: $3f
	ld c, [hl]                                       ; $59fa: $4e
	ld l, h                                          ; $59fb: $6c
	dec a                                            ; $59fc: $3d
	jr c, jr_092_5a49                                ; $59fd: $38 $4a

	inc de                                           ; $59ff: $13
	jr c, jr_092_5a3a                                ; $5a00: $38 $38

	ld a, [hl-]                                      ; $5a02: $3a
	ld [hl], h                                       ; $5a03: $74
	and b                                            ; $5a04: $a0
	ld b, [hl]                                       ; $5a05: $46
	ld a, [hl-]                                      ; $5a06: $3a
	dec a                                            ; $5a07: $3d
	ld e, e                                          ; $5a08: $5b
	ld d, [hl]                                       ; $5a09: $56
	inc de                                           ; $5a0a: $13
	ldh a, [c]                                       ; $5a0b: $f2
	reti                                             ; $5a0c: $d9


	ldh a, [$d0]                                     ; $5a0d: $f0 $d0
	pop af                                           ; $5a0f: $f1
	cp [hl]                                          ; $5a10: $be
	ld b, h                                          ; $5a11: $44
	ld c, c                                          ; $5a12: $49
	ld [hl], a                                       ; $5a13: $77
	add hl, sp                                       ; $5a14: $39
	ld e, l                                          ; $5a15: $5d
	ld e, d                                          ; $5a16: $5a
	xor h                                            ; $5a17: $ac
	ld c, c                                          ; $5a18: $49
	ld d, a                                          ; $5a19: $57
	ld b, [hl]                                       ; $5a1a: $46
	ld e, [hl]                                       ; $5a1b: $5e
	sbc h                                            ; $5a1c: $9c
	ldh a, [$bd]                                     ; $5a1d: $f0 $bd
	jr c, jr_092_5a60                                ; $5a1f: $38 $3f

	ld l, h                                          ; $5a21: $6c
	ccf                                              ; $5a22: $3f
	and b                                            ; $5a23: $a0
	db $ec                                           ; $5a24: $ec
	sub $4c                                          ; $5a25: $d6 $4c
	xor b                                            ; $5a27: $a8
	ld l, a                                          ; $5a28: $6f
	ld b, a                                          ; $5a29: $47
	ldh a, [c]                                       ; $5a2a: $f2
	sbc a                                            ; $5a2b: $9f
	ld [hl], c                                       ; $5a2c: $71
	ccf                                              ; $5a2d: $3f

jr_092_5a2e:
	ld c, a                                          ; $5a2e: $4f
	ld d, b                                          ; $5a2f: $50
	add hl, sp                                       ; $5a30: $39
	dec a                                            ; $5a31: $3d
	ld [hl], c                                       ; $5a32: $71
	ld b, a                                          ; $5a33: $47
	inc de                                           ; $5a34: $13
	ld c, a                                          ; $5a35: $4f
	dec sp                                           ; $5a36: $3b
	ld c, c                                          ; $5a37: $49
	ldh a, [c]                                       ; $5a38: $f2
	and l                                            ; $5a39: $a5

jr_092_5a3a:
	pop af                                           ; $5a3a: $f1
	dec hl                                           ; $5a3b: $2b
	ld a, $3a                                        ; $5a3c: $3e $3a
	ld e, b                                          ; $5a3e: $58
	jr c, jr_092_59e1                                ; $5a3f: $38 $a0

	cpl                                              ; $5a41: $2f
	ld b, e                                          ; $5a42: $43
	db $ec                                           ; $5a43: $ec
	ldh [rBGP], a                                    ; $5a44: $e0 $47
	inc de                                           ; $5a46: $13
	ldh a, [c]                                       ; $5a47: $f2
	sbc a                                            ; $5a48: $9f

jr_092_5a49:
	ld [hl], c                                       ; $5a49: $71
	ccf                                              ; $5a4a: $3f
	ld c, a                                          ; $5a4b: $4f
	ld d, b                                          ; $5a4c: $50
	add hl, sp                                       ; $5a4d: $39
	ld [hl], $6b                                     ; $5a4e: $36 $6b
	ld c, d                                          ; $5a50: $4a
	and c                                            ; $5a51: $a1
	ld b, b                                          ; $5a52: $40
	ld b, d                                          ; $5a53: $42

jr_092_5a54:
	add hl, sp                                       ; $5a54: $39
	ld h, c                                          ; $5a55: $61
	xor h                                            ; $5a56: $ac
	ld l, a                                          ; $5a57: $6f
	ld b, a                                          ; $5a58: $47
	ldh a, [c]                                       ; $5a59: $f2
	sbc a                                            ; $5a5a: $9f
	ld [hl], c                                       ; $5a5b: $71
	ld d, b                                          ; $5a5c: $50
	ld c, l                                          ; $5a5d: $4d
	ccf                                              ; $5a5e: $3f
	db $ec                                           ; $5a5f: $ec

jr_092_5a60:
	cp c                                             ; $5a60: $b9
	ld c, c                                          ; $5a61: $49
	inc de                                           ; $5a62: $13
	ld [hl], a                                       ; $5a63: $77
	add hl, sp                                       ; $5a64: $39
	ld c, c                                          ; $5a65: $49
	ld e, h                                          ; $5a66: $5c
	ld d, e                                          ; $5a67: $53
	ld a, b                                          ; $5a68: $78
	ld c, [hl]                                       ; $5a69: $4e
	ld h, e                                          ; $5a6a: $63
	and b                                            ; $5a6b: $a0
	cpl                                              ; $5a6c: $2f
	ld b, e                                          ; $5a6d: $43
	db $ec                                           ; $5a6e: $ec
	ld d, $74                                        ; $5a6f: $16 $74
	ld c, b                                          ; $5a71: $48
	and c                                            ; $5a72: $a1
	call nc, Call_092_4542                           ; $5a73: $d4 $42 $45
	xor b                                            ; $5a76: $a8
	ld b, b                                          ; $5a77: $40
	ld b, d                                          ; $5a78: $42
	ld c, c                                          ; $5a79: $49
	ld e, h                                          ; $5a7a: $5c
	ldh a, [$d7]                                     ; $5a7b: $f0 $d7
	pop af                                           ; $5a7d: $f1
	sub c                                            ; $5a7e: $91
	ld d, c                                          ; $5a7f: $51
	ld c, l                                          ; $5a80: $4d
	ld a, e                                          ; $5a81: $7b
	xor l                                            ; $5a82: $ad
	ld [$a021], a                                    ; $5a83: $ea $21 $a0
	cpl                                              ; $5a86: $2f
	ld b, e                                          ; $5a87: $43
	ldh a, [$d7]                                     ; $5a88: $f0 $d7
	pop af                                           ; $5a8a: $f1
	sub c                                            ; $5a8b: $91
	ld c, h                                          ; $5a8c: $4c
	add l                                            ; $5a8d: $85
	ld c, b                                          ; $5a8e: $48
	and b                                            ; $5a8f: $a0
	ld hl, $10ee                                     ; $5a90: $21 $ee $10
	xor $10                                          ; $5a93: $ee $10
	and b                                            ; $5a95: $a0
	cpl                                              ; $5a96: $2f
	ld b, e                                          ; $5a97: $43
	ld b, [hl]                                       ; $5a98: $46
	dec sp                                           ; $5a99: $3b
	inc [hl]                                         ; $5a9a: $34
	db $ec                                           ; $5a9b: $ec
	ldh [$a8], a                                     ; $5a9c: $e0 $a8
	add sp, -$71                                     ; $5a9e: $e8 $8f
	and c                                            ; $5aa0: $a1
	db $ed                                           ; $5aa1: $ed
	ld [hl], d                                       ; $5aa2: $72
	ldh a, [$3f]                                     ; $5aa3: $f0 $3f
	ld b, d                                          ; $5aa5: $42
	add hl, sp                                       ; $5aa6: $39
	ld d, d                                          ; $5aa7: $52
	jr c, jr_092_5a2e                                ; $5aa8: $38 $84

	ld h, d                                          ; $5aaa: $62
	inc de                                           ; $5aab: $13
	pop af                                           ; $5aac: $f1
	ld bc, $4df0                                     ; $5aad: $01 $f0 $4d
	ld a, [hl-]                                      ; $5ab0: $3a
	ld e, b                                          ; $5ab1: $58
	jr c, jr_092_5a54                                ; $5ab2: $38 $a0

	cpl                                              ; $5ab4: $2f
	ld b, e                                          ; $5ab5: $43
	db $ec                                           ; $5ab6: $ec
	dec h                                            ; $5ab7: $25
	inc [hl]                                         ; $5ab8: $34
	ld l, d                                          ; $5ab9: $6a
	ld c, e                                          ; $5aba: $4b
	xor h                                            ; $5abb: $ac
	halt                                             ; $5abc: $76
	ld a, $3c                                        ; $5abd: $3e $3c
	jr c, jr_092_5afb                                ; $5abf: $38 $3a

	jr c, jr_092_5b04                                ; $5ac1: $38 $41

	ld b, h                                          ; $5ac3: $44
	and b                                            ; $5ac4: $a0
	ld b, b                                          ; $5ac5: $40
	ld c, l                                          ; $5ac6: $4d
	ld e, e                                          ; $5ac7: $5b
	ld d, [hl]                                       ; $5ac8: $56
	inc [hl]                                         ; $5ac9: $34
	jr c, jr_092_5b04                                ; $5aca: $38 $38

	ld h, e                                          ; $5acc: $63
	xor b                                            ; $5acd: $a8
	ldh a, [rHDMA5]                                  ; $5ace: $f0 $55
	ldh a, [rBCPS]                                   ; $5ad0: $f0 $68
	and b                                            ; $5ad2: $a0
	cpl                                              ; $5ad3: $2f
	ld b, e                                          ; $5ad4: $43
	xor $10                                          ; $5ad5: $ee $10
	xor b                                            ; $5ad7: $a8
	halt                                             ; $5ad8: $76
	ld b, d                                          ; $5ad9: $42
	ldh a, [$3f]                                     ; $5ada: $f0 $3f
	ld b, d                                          ; $5adc: $42
	inc [hl]                                         ; $5add: $34
	ld l, e                                          ; $5ade: $6b
	ld d, e                                          ; $5adf: $53
	ldh a, [$d0]                                     ; $5ae0: $f0 $d0
	ldh a, [c]                                       ; $5ae2: $f2
	adc [hl]                                         ; $5ae3: $8e
	ld a, [hl-]                                      ; $5ae4: $3a
	ld b, c                                          ; $5ae5: $41
	ld b, h                                          ; $5ae6: $44
	and c                                            ; $5ae7: $a1
	ld l, e                                          ; $5ae8: $6b
	ld a, $3f                                        ; $5ae9: $3e $3f
	ld c, [hl]                                       ; $5aeb: $4e
	ld b, d                                          ; $5aec: $42
	and c                                            ; $5aed: $a1
	ld l, e                                          ; $5aee: $6b
	inc [hl]                                         ; $5aef: $34
	ld d, h                                          ; $5af0: $54
	ld b, d                                          ; $5af1: $42
	ldh a, [$d2]                                     ; $5af2: $f0 $d2
	xor b                                            ; $5af4: $a8
	ldh a, [$2d]                                     ; $5af5: $f0 $2d
	pop af                                           ; $5af7: $f1
	ld a, [bc]                                       ; $5af8: $0a
	ld b, d                                          ; $5af9: $42
	inc a                                            ; $5afa: $3c

jr_092_5afb:
	ld e, l                                          ; $5afb: $5d
	ld d, b                                          ; $5afc: $50
	ld c, a                                          ; $5afd: $4f
	inc de                                           ; $5afe: $13
	ldh a, [$78]                                     ; $5aff: $f0 $78
	ld e, e                                          ; $5b01: $5b
	ld d, b                                          ; $5b02: $50
	ld c, l                                          ; $5b03: $4d

jr_092_5b04:
	ld a, [hl-]                                      ; $5b04: $3a
	jr c, jr_092_5b6a                                ; $5b05: $38 $63

	and b                                            ; $5b07: $a0
	cpl                                              ; $5b08: $2f
	ld b, e                                          ; $5b09: $43
	ld [hl], b                                       ; $5b0a: $70
	inc [hl]                                         ; $5b0b: $34
	ld [hl], b                                       ; $5b0c: $70

jr_092_5b0d:
	ld [hl], c                                       ; $5b0d: $71
	ld b, c                                          ; $5b0e: $41
	ld c, h                                          ; $5b0f: $4c
	xor h                                            ; $5b10: $ac
	ldh a, [$a3]                                     ; $5b11: $f0 $a3
	ldh a, [$0b]                                     ; $5b13: $f0 $0b
	ld c, d                                          ; $5b15: $4a
	ld c, b                                          ; $5b16: $48
	and b                                            ; $5b17: $a0
	ldh a, [$d0]                                     ; $5b18: $f0 $d0
	push af                                          ; $5b1a: $f5
	add hl, hl                                       ; $5b1b: $29
	db $f4                                           ; $5b1c: $f4
	ld a, e                                          ; $5b1d: $7b
	ld b, h                                          ; $5b1e: $44
	ld h, e                                          ; $5b1f: $63
	inc [hl]                                         ; $5b20: $34
	ldh a, [rHDMA5]                                  ; $5b21: $f0 $55
	ldh a, [rBCPS]                                   ; $5b23: $f0 $68
	and b                                            ; $5b25: $a0
	cpl                                              ; $5b26: $2f
	ld b, e                                          ; $5b27: $43
	ld b, b                                          ; $5b28: $40
	ld b, c                                          ; $5b29: $41
	ld a, [hl-]                                      ; $5b2a: $3a
	ld b, a                                          ; $5b2b: $47
	pop af                                           ; $5b2c: $f1
	ld [hl-], a                                      ; $5b2d: $32
	ld b, c                                          ; $5b2e: $41
	ld a, [hl-]                                      ; $5b2f: $3a
	ld d, l                                          ; $5b30: $55
	ccf                                              ; $5b31: $3f
	ld c, a                                          ; $5b32: $4f
	ld c, b                                          ; $5b33: $48
	and b                                            ; $5b34: $a0
	ld b, [hl]                                       ; $5b35: $46
	ld e, c                                          ; $5b36: $59
	dec sp                                           ; $5b37: $3b
	xor h                                            ; $5b38: $ac
	ld l, a                                          ; $5b39: $6f
	ld b, d                                          ; $5b3a: $42
	db $f4                                           ; $5b3b: $f4
	or c                                             ; $5b3c: $b1
	ld c, a                                          ; $5b3d: $4f
	rst FarCall                                          ; $5b3e: $f7
	ld sp, $4057                                     ; $5b3f: $31 $57 $40
	add hl, sp                                       ; $5b42: $39
	ld b, h                                          ; $5b43: $44
	ld h, e                                          ; $5b44: $63
	xor b                                            ; $5b45: $a8
	ld c, a                                          ; $5b46: $4f
	add hl, sp                                       ; $5b47: $39
	ldh a, [rHDMA5]                                  ; $5b48: $f0 $55
	ldh a, [rBCPS]                                   ; $5b4a: $f0 $68
	ld d, c                                          ; $5b4c: $51
	ld c, [hl]                                       ; $5b4d: $4e
	ld h, e                                          ; $5b4e: $63
	and b                                            ; $5b4f: $a0
	db $eb                                           ; $5b50: $eb
	ld e, b                                          ; $5b51: $58
	ld [hl], d                                       ; $5b52: $72
	ccf                                              ; $5b53: $3f
	jr c, jr_092_5ba4                                ; $5b54: $38 $4e

	ld a, [hl-]                                      ; $5b56: $3a
	ld d, b                                          ; $5b57: $50
	xor h                                            ; $5b58: $ac
	ld l, a                                          ; $5b59: $6f
	ld b, d                                          ; $5b5a: $42
	ld sp, hl                                        ; $5b5b: $f9
	ld [hl], d                                       ; $5b5c: $72
	ldh a, [$61]                                     ; $5b5d: $f0 $61
	ldh a, [$7a]                                     ; $5b5f: $f0 $7a
	ld b, d                                          ; $5b61: $42
	xor $19                                          ; $5b62: $ee $19
	ld c, d                                          ; $5b64: $4a
	ld c, a                                          ; $5b65: $4f
	inc de                                           ; $5b66: $13
	ld a, $3f                                        ; $5b67: $3e $3f
	ld a, [hl-]                                      ; $5b69: $3a

jr_092_5b6a:
	ld e, b                                          ; $5b6a: $58
	jr c, jr_092_5b0d                                ; $5b6b: $38 $a0

	cpl                                              ; $5b6d: $2f
	ld b, e                                          ; $5b6e: $43
	db $ec                                           ; $5b6f: $ec
	db $d3                                           ; $5b70: $d3
	xor h                                            ; $5b71: $ac
	halt                                             ; $5b72: $76
	ld d, e                                          ; $5b73: $53
	db $ec                                           ; $5b74: $ec
	ldh [rSCY], a                                    ; $5b75: $e0 $42
	ld sp, hl                                        ; $5b77: $f9
	ld [hl], d                                       ; $5b78: $72
	ldh a, [$61]                                     ; $5b79: $f0 $61
	ldh a, [$7a]                                     ; $5b7b: $f0 $7a
	ld h, d                                          ; $5b7d: $62
	ld c, b                                          ; $5b7e: $48
	and b                                            ; $5b7f: $a0
	ld d, h                                          ; $5b80: $54
	add hl, sp                                       ; $5b81: $39
	jr c, @+$3b                                      ; $5b82: $38 $39

	add h                                            ; $5b84: $84
	ld d, e                                          ; $5b85: $53
	pop af                                           ; $5b86: $f1
	sub d                                            ; $5b87: $92
	jr c, @-$0e                                      ; $5b88: $38 $f0

	ld [$ac5a], sp                                   ; $5b8a: $08 $5a $ac
	ld l, a                                          ; $5b8d: $6f
	ld b, d                                          ; $5b8e: $42
	ldh a, [c]                                       ; $5b8f: $f2
	ld [bc], a                                       ; $5b90: $02
	ldh a, [$7a]                                     ; $5b91: $f0 $7a
	ld c, a                                          ; $5b93: $4f
	ld l, [hl]                                       ; $5b94: $6e
	ld d, a                                          ; $5b95: $57
	di                                               ; $5b96: $f3
	dec d                                            ; $5b97: $15
	ld d, l                                          ; $5b98: $55
	ld a, [hl-]                                      ; $5b99: $3a
	ld c, [hl]                                       ; $5b9a: $4e
	inc a                                            ; $5b9b: $3c
	ld d, b                                          ; $5b9c: $50
	inc de                                           ; $5b9d: $13
	db $ec                                           ; $5b9e: $ec
	ld [$a048], sp                                   ; $5b9f: $08 $48 $a0
	cpl                                              ; $5ba2: $2f
	ld b, e                                          ; $5ba3: $43

jr_092_5ba4:
	ld e, [hl]                                       ; $5ba4: $5e
	dec sp                                           ; $5ba5: $3b
	inc [hl]                                         ; $5ba6: $34
	ldh a, [c]                                       ; $5ba7: $f2
	ld [bc], a                                       ; $5ba8: $02
	ldh a, [$7a]                                     ; $5ba9: $f0 $7a
	xor c                                            ; $5bab: $a9
	ld a, [hl-]                                      ; $5bac: $3a
	ld b, a                                          ; $5bad: $47
	ld b, b                                          ; $5bae: $40
	ld c, l                                          ; $5baf: $4d
	and b                                            ; $5bb0: $a0
	cpl                                              ; $5bb1: $2f
	ld b, e                                          ; $5bb2: $43
	ld b, [hl]                                       ; $5bb3: $46
	dec sp                                           ; $5bb4: $3b
	inc [hl]                                         ; $5bb5: $34
	db $ec                                           ; $5bb6: $ec
	ldh [$a8], a                                     ; $5bb7: $e0 $a8
	jp hl                                            ; $5bb9: $e9


	or h                                             ; $5bba: $b4
	and b                                            ; $5bbb: $a0
	ldh a, [rSCY]                                    ; $5bbc: $f0 $42
	ld b, c                                          ; $5bbe: $41
	and b                                            ; $5bbf: $a0
	cpl                                              ; $5bc0: $2f
	ld b, e                                          ; $5bc1: $43
	jp hl                                            ; $5bc2: $e9


	ld b, e                                          ; $5bc3: $43
	xor b                                            ; $5bc4: $a8
	db $ec                                           ; $5bc5: $ec
	ldh [$eb], a                                     ; $5bc6: $e0 $eb
	and d                                            ; $5bc8: $a2
	ld c, b                                          ; $5bc9: $48
	and b                                            ; $5bca: $a0
	db $eb                                           ; $5bcb: $eb
	ld e, b                                          ; $5bcc: $58
	ld a, e                                          ; $5bcd: $7b
	inc a                                            ; $5bce: $3c
	ld d, a                                          ; $5bcf: $57
	inc de                                           ; $5bd0: $13
	ld [hl], d                                       ; $5bd1: $72
	ccf                                              ; $5bd2: $3f
	ld c, [hl]                                       ; $5bd3: $4e
	inc a                                            ; $5bd4: $3c
	ld d, b                                          ; $5bd5: $50
	xor h                                            ; $5bd6: $ac
	db $f4                                           ; $5bd7: $f4
	or c                                             ; $5bd8: $b1
	ld d, e                                          ; $5bd9: $53
	rst FarCall                                          ; $5bda: $f7
	ld sp, $3f3b                                     ; $5bdb: $31 $3b $3f
	jr c, jr_092_5c35                                ; $5bde: $38 $55

	ld b, d                                          ; $5be0: $42
	ld b, l                                          ; $5be1: $45
	and b                                            ; $5be2: $a0
	cpl                                              ; $5be3: $2f
	ld b, e                                          ; $5be4: $43
	ld e, [hl]                                       ; $5be5: $5e
	dec sp                                           ; $5be6: $3b
	xor h                                            ; $5be7: $ac
	ld [$4256], a                                    ; $5be8: $ea $56 $42
	sbc d                                            ; $5beb: $9a

jr_092_5bec:
	xor c                                            ; $5bec: $a9
	db $eb                                           ; $5bed: $eb
	ld b, $44                                        ; $5bee: $06 $44
	ld b, l                                          ; $5bf0: $45
	and b                                            ; $5bf1: $a0
	ld b, b                                          ; $5bf2: $40
	add hl, sp                                       ; $5bf3: $39
	xor l                                            ; $5bf4: $ad
	ld b, [hl]                                       ; $5bf5: $46
	ld a, [hl-]                                      ; $5bf6: $3a
	dec a                                            ; $5bf7: $3d
	ld c, e                                          ; $5bf8: $4b
	ld e, d                                          ; $5bf9: $5a
	ld b, d                                          ; $5bfa: $42
	ldh a, [$3f]                                     ; $5bfb: $f0 $3f
	ld h, d                                          ; $5bfd: $62
	ldh a, [$bd]                                     ; $5bfe: $f0 $bd
	jr c, jr_092_5c3f                                ; $5c00: $38 $3d

	ld b, d                                          ; $5c02: $42
	and c                                            ; $5c03: $a1
	cpl                                              ; $5c04: $2f
	ld b, e                                          ; $5c05: $43
	ld b, b                                          ; $5c06: $40
	ld d, h                                          ; $5c07: $54
	ld b, d                                          ; $5c08: $42
	ldh a, [$3f]                                     ; $5c09: $f0 $3f
	ld b, h                                          ; $5c0b: $44
	ld b, l                                          ; $5c0c: $45
	and b                                            ; $5c0d: $a0
	pop de                                           ; $5c0e: $d1
	jr c, jr_092_5c49                                ; $5c0f: $38 $38

	ld h, e                                          ; $5c11: $63
	ld c, h                                          ; $5c12: $4c
	xor b                                            ; $5c13: $a8
	ld c, a                                          ; $5c14: $4f
	add hl, sp                                       ; $5c15: $39
	ldh a, [rHDMA4]                                  ; $5c16: $f0 $54
	ld a, $92                                        ; $5c18: $3e $92
	adc [hl]                                         ; $5c1a: $8e
	ld c, l                                          ; $5c1b: $4d
	ld a, e                                          ; $5c1c: $7b
	xor h                                            ; $5c1d: $ac
	db $eb                                           ; $5c1e: $eb
	rst SubAFromDE                                          ; $5c1f: $df
	ld b, l                                          ; $5c20: $45
	and b                                            ; $5c21: $a0
	cpl                                              ; $5c22: $2f
	ld b, e                                          ; $5c23: $43
	db $eb                                           ; $5c24: $eb
	rst SubAFromDE                                          ; $5c25: $df
	dec sp                                           ; $5c26: $3b
	ccf                                              ; $5c27: $3f
	inc [hl]                                         ; $5c28: $34
	ld l, e                                          ; $5c29: $6b
	and c                                            ; $5c2a: $a1
	ld b, b                                          ; $5c2b: $40
	ld b, d                                          ; $5c2c: $42
	add hl, sp                                       ; $5c2d: $39
	ld h, c                                          ; $5c2e: $61
	pop af                                           ; $5c2f: $f1
	xor l                                            ; $5c30: $ad
	pop af                                           ; $5c31: $f1
	and l                                            ; $5c32: $a5
	ld d, c                                          ; $5c33: $51
	ld c, [hl]                                       ; $5c34: $4e

jr_092_5c35:
	inc a                                            ; $5c35: $3c
	ld d, b                                          ; $5c36: $50
	inc de                                           ; $5c37: $13
	ldh a, [rHDMA4]                                  ; $5c38: $f0 $54
	ld a, $44                                        ; $5c3a: $3e $44
	ld e, l                                          ; $5c3c: $5d
	sbc c                                            ; $5c3d: $99
	dec sp                                           ; $5c3e: $3b

jr_092_5c3f:
	ccf                                              ; $5c3f: $3f
	ld a, [hl-]                                      ; $5c40: $3a
	ld e, b                                          ; $5c41: $58
	jr c, jr_092_5bec                                ; $5c42: $38 $a8

	ld b, b                                          ; $5c44: $40
	ld c, l                                          ; $5c45: $4d
	ld e, e                                          ; $5c46: $5b
	ld d, [hl]                                       ; $5c47: $56
	inc [hl]                                         ; $5c48: $34

jr_092_5c49:
	ld e, b                                          ; $5c49: $58
	ld b, l                                          ; $5c4a: $45
	ld a, [hl-]                                      ; $5c4b: $3a
	ld d, b                                          ; $5c4c: $50
	and b                                            ; $5c4d: $a0
	cpl                                              ; $5c4e: $2f
	ld b, e                                          ; $5c4f: $43
	jr c, jr_092_5c8d                                ; $5c50: $38 $3b

	dec a                                            ; $5c52: $3d
	jr c, @-$52                                      ; $5c53: $38 $ac

	ld l, e                                          ; $5c55: $6b
	ld b, d                                          ; $5c56: $42
	pop af                                           ; $5c57: $f1
	xor l                                            ; $5c58: $ad
	pop af                                           ; $5c59: $f1
	and l                                            ; $5c5a: $a5
	ld a, [hl-]                                      ; $5c5b: $3a
	ld b, c                                          ; $5c5c: $41
	ld b, h                                          ; $5c5d: $44
	ld e, a                                          ; $5c5e: $5f
	add hl, sp                                       ; $5c5f: $39
	and c                                            ; $5c60: $a1
	ld b, b                                          ; $5c61: $40
	add hl, sp                                       ; $5c62: $39
	xor l                                            ; $5c63: $ad
	ld l, a                                          ; $5c64: $6f
	ld b, d                                          ; $5c65: $42
	di                                               ; $5c66: $f3
	ld [$7bf3], a                                    ; $5c67: $ea $f3 $7b
	ld b, a                                          ; $5c6a: $47
	ldh a, [c]                                       ; $5c6b: $f2
	ld [$474e], sp                                   ; $5c6c: $08 $4e $47
	ld c, e                                          ; $5c6f: $4b
	inc de                                           ; $5c70: $13
	jr c, @+$54                                      ; $5c71: $38 $52

	jr c, @+$63                                      ; $5c73: $38 $61

	ld c, h                                          ; $5c75: $4c
	add l                                            ; $5c76: $85
	and b                                            ; $5c77: $a0
	cpl                                              ; $5c78: $2f
	ld b, e                                          ; $5c79: $43
	di                                               ; $5c7a: $f3
	ld [$7bf3], a                                    ; $5c7b: $ea $f3 $7b
	xor c                                            ; $5c7e: $a9
	di                                               ; $5c7f: $f3
	ld [$7bf3], a                                    ; $5c80: $ea $f3 $7b
	dec sp                                           ; $5c83: $3b
	ccf                                              ; $5c84: $3f
	ld l, e                                          ; $5c85: $6b
	and c                                            ; $5c86: $a1
	ld l, e                                          ; $5c87: $6b
	ld c, d                                          ; $5c88: $4a
	ld c, a                                          ; $5c89: $4f
	jr c, jr_092_5cc4                                ; $5c8a: $38 $38

	ld c, d                                          ; $5c8c: $4a

jr_092_5c8d:
	ld a, $66                                        ; $5c8d: $3e $66
	xor b                                            ; $5c8f: $a8
	db $ed                                           ; $5c90: $ed
	inc c                                            ; $5c91: $0c
	and b                                            ; $5c92: $a0
	cpl                                              ; $5c93: $2f
	ld b, e                                          ; $5c94: $43
	ld b, b                                          ; $5c95: $40
	add hl, sp                                       ; $5c96: $39
	inc [hl]                                         ; $5c97: $34
	db $ed                                           ; $5c98: $ed
	add h                                            ; $5c99: $84
	ld a, [hl-]                                      ; $5c9a: $3a
	ld b, c                                          ; $5c9b: $41
	ld b, h                                          ; $5c9c: $44
	ld c, b                                          ; $5c9d: $48
	and b                                            ; $5c9e: $a0
	db $ec                                           ; $5c9f: $ec
	db $f4                                           ; $5ca0: $f4
	inc [hl]                                         ; $5ca1: $34
	db $ed                                           ; $5ca2: $ed
	inc c                                            ; $5ca3: $0c
	and b                                            ; $5ca4: $a0
	cpl                                              ; $5ca5: $2f
	ld b, e                                          ; $5ca6: $43
	ld c, d                                          ; $5ca7: $4a
	ld c, a                                          ; $5ca8: $4f
	xor h                                            ; $5ca9: $ac
	ld b, b                                          ; $5caa: $40
	add hl, sp                                       ; $5cab: $39
	jr c, jr_092_5ce7                                ; $5cac: $38 $39

	ldh a, [$28]                                     ; $5cae: $f0 $28
	ld b, a                                          ; $5cb0: $47
	ldh a, [c]                                       ; $5cb1: $f2
	ld [$3a4e], sp                                   ; $5cb2: $08 $4e $3a
	ld d, b                                          ; $5cb5: $50
	inc de                                           ; $5cb6: $13
	ld c, a                                          ; $5cb7: $4f
	dec sp                                           ; $5cb8: $3b
	ld c, c                                          ; $5cb9: $49
	pop af                                           ; $5cba: $f1
	adc d                                            ; $5cbb: $8a
	ldh a, [$fb]                                     ; $5cbc: $f0 $fb
	ld a, [hl-]                                      ; $5cbe: $3a
	ldh a, [$7a]                                     ; $5cbf: $f0 $7a
	ldh a, [rSVBK]                                   ; $5cc1: $f0 $70
	ld b, d                                          ; $5cc3: $42

jr_092_5cc4:
	ldh a, [$38]                                     ; $5cc4: $f0 $38
	ld d, e                                          ; $5cc6: $53
	inc de                                           ; $5cc7: $13
	jr c, @+$3a                                      ; $5cc8: $38 $38

	ld b, c                                          ; $5cca: $41
	db $ec                                           ; $5ccb: $ec
	ret c                                            ; $5ccc: $d8

	and b                                            ; $5ccd: $a0
	ldh a, [$3f]                                     ; $5cce: $f0 $3f
	ld c, d                                          ; $5cd0: $4a
	pop af                                           ; $5cd1: $f1
	ld d, e                                          ; $5cd2: $53
	db $f4                                           ; $5cd3: $f4
	and b                                            ; $5cd4: $a0
	ld a, $3d                                        ; $5cd5: $3e $3d
	add h                                            ; $5cd7: $84
	ld b, d                                          ; $5cd8: $42
	inc de                                           ; $5cd9: $13
	ldh a, [$3f]                                     ; $5cda: $f0 $3f
	ld b, a                                          ; $5cdc: $47
	ld c, e                                          ; $5cdd: $4b
	inc [hl]                                         ; $5cde: $34
	db $ed                                           ; $5cdf: $ed
	ld [hl], h                                       ; $5ce0: $74
	ld d, e                                          ; $5ce1: $53

jr_092_5ce2:
	ld a, [hl-]                                      ; $5ce2: $3a
	jr c, jr_092_5d48                                ; $5ce3: $38 $63

	and b                                            ; $5ce5: $a0
	cpl                                              ; $5ce6: $2f

jr_092_5ce7:
	ld b, e                                          ; $5ce7: $43
	rst JumpTable                                          ; $5ce8: $c7
	ld a, [hl-]                                      ; $5ce9: $3a
	ld b, d                                          ; $5cea: $42
	and c                                            ; $5ceb: $a1
	pop af                                           ; $5cec: $f1
	ld e, h                                          ; $5ced: $5c
	ld a, $38                                        ; $5cee: $3e $38
	di                                               ; $5cf0: $f3
	ld d, [hl]                                       ; $5cf1: $56
	ldh a, [$b0]                                     ; $5cf2: $f0 $b0
	pop af                                           ; $5cf4: $f1
	ld b, d                                          ; $5cf5: $42
	ld b, d                                          ; $5cf6: $42
	inc de                                           ; $5cf7: $13
	or $00                                           ; $5cf8: $f6 $00
	di                                               ; $5cfa: $f3
	ld a, [bc]                                       ; $5cfb: $0a
	ld b, a                                          ; $5cfc: $47
	ld c, e                                          ; $5cfd: $4b
	inc [hl]                                         ; $5cfe: $34
	pop af                                           ; $5cff: $f1
	ld e, h                                          ; $5d00: $5c
	ld a, $38                                        ; $5d01: $3e $38
	ldh a, [$7a]                                     ; $5d03: $f0 $7a
	ldh a, [rSVBK]                                   ; $5d05: $f0 $70
	ld b, d                                          ; $5d07: $42
	inc de                                           ; $5d08: $13
	ldh a, [$3f]                                     ; $5d09: $f0 $3f
	ld d, e                                          ; $5d0b: $53
	ldh a, [rSCY]                                    ; $5d0c: $f0 $42
	ld e, b                                          ; $5d0e: $58
	ld h, e                                          ; $5d0f: $63
	ld a, $38                                        ; $5d10: $3e $38
	ld b, d                                          ; $5d12: $42
	ld b, l                                          ; $5d13: $45
	ld c, b                                          ; $5d14: $48
	and b                                            ; $5d15: $a0
	cpl                                              ; $5d16: $2f
	ld b, e                                          ; $5d17: $43
	db $ec                                           ; $5d18: $ec
	ldh [$a8], a                                     ; $5d19: $e0 $a8
	ld l, e                                          ; $5d1b: $6b
	ldh a, [$fe]                                     ; $5d1c: $f0 $fe
	add b                                            ; $5d1e: $80
	ldh a, [$fe]                                     ; $5d1f: $f0 $fe
	add b                                            ; $5d21: $80
	add d                                            ; $5d22: $82
	dec sp                                           ; $5d23: $3b
	ccf                                              ; $5d24: $3f
	ld c, [hl]                                       ; $5d25: $4e
	ld b, d                                          ; $5d26: $42
	and c                                            ; $5d27: $a1
	ld b, [hl]                                       ; $5d28: $46
	ld a, [hl-]                                      ; $5d29: $3a
	dec a                                            ; $5d2a: $3d
	ld c, a                                          ; $5d2b: $4f
	xor h                                            ; $5d2c: $ac
	ld c, a                                          ; $5d2d: $4f
	dec sp                                           ; $5d2e: $3b
	ld c, c                                          ; $5d2f: $49
	inc [hl]                                         ; $5d30: $34
	ldh a, [c]                                       ; $5d31: $f2
	and l                                            ; $5d32: $a5
	pop af                                           ; $5d33: $f1
	dec hl                                           ; $5d34: $2b
	ld a, $3a                                        ; $5d35: $3e $3a
	ld e, b                                          ; $5d37: $58
	jr c, jr_092_5ce2                                ; $5d38: $38 $a8

	ld b, b                                          ; $5d3a: $40
	ld c, l                                          ; $5d3b: $4d
	ld e, e                                          ; $5d3c: $5b
	ld d, [hl]                                       ; $5d3d: $56
	inc [hl]                                         ; $5d3e: $34
	ld e, b                                          ; $5d3f: $58
	ld b, l                                          ; $5d40: $45
	ld a, [hl-]                                      ; $5d41: $3a
	ld d, b                                          ; $5d42: $50
	and b                                            ; $5d43: $a0
	cpl                                              ; $5d44: $2f
	ld b, e                                          ; $5d45: $43
	ldh a, [c]                                       ; $5d46: $f2
	and l                                            ; $5d47: $a5

jr_092_5d48:
	pop af                                           ; $5d48: $f1
	dec hl                                           ; $5d49: $2b
	ld c, h                                          ; $5d4a: $4c
	add l                                            ; $5d4b: $85
	ld c, b                                          ; $5d4c: $48
	and b                                            ; $5d4d: $a0
	jr c, jr_092_5da2                                ; $5d4e: $38 $52

	jr c, jr_092_5db3                                ; $5d50: $38 $61

	ld c, h                                          ; $5d52: $4c
	xor b                                            ; $5d53: $a8
	db $ed                                           ; $5d54: $ed
	adc b                                            ; $5d55: $88
	ld a, a                                          ; $5d56: $7f
	ld b, a                                          ; $5d57: $47
	sub [hl]                                         ; $5d58: $96
	ld d, b                                          ; $5d59: $50
	ld a, [hl-]                                      ; $5d5a: $3a
	jr c, jr_092_5dc0                                ; $5d5b: $38 $63

	and b                                            ; $5d5d: $a0
	cpl                                              ; $5d5e: $2f
	ld b, e                                          ; $5d5f: $43
	ld b, b                                          ; $5d60: $40
	add hl, sp                                       ; $5d61: $39
	xor l                                            ; $5d62: $ad
	ld a, a                                          ; $5d63: $7f
	ld b, a                                          ; $5d64: $47
	sub [hl]                                         ; $5d65: $96
	dec sp                                           ; $5d66: $3b
	dec a                                            ; $5d67: $3d
	ldh a, [$3f]                                     ; $5d68: $f0 $3f
	ld d, e                                          ; $5d6a: $53
	inc de                                           ; $5d6b: $13
	ldh a, [rAUD1LOW]                                ; $5d6c: $f0 $13
	inc a                                            ; $5d6e: $3c
	dec sp                                           ; $5d6f: $3b
	dec a                                            ; $5d70: $3d
	ld l, h                                          ; $5d71: $6c
	dec a                                            ; $5d72: $3d
	jr c, jr_092_5db9                                ; $5d73: $38 $44

	ld c, h                                          ; $5d75: $4c
	and b                                            ; $5d76: $a0
	ld d, h                                          ; $5d77: $54
	ld b, c                                          ; $5d78: $41
	ld a, [hl-]                                      ; $5d79: $3a
	ld b, d                                          ; $5d7a: $42
	ldh a, [$c1]                                     ; $5d7b: $f0 $c1
	ldh a, [$d5]                                     ; $5d7d: $f0 $d5
	ld d, c                                          ; $5d7f: $51
	ld c, [hl]                                       ; $5d80: $4e
	ld a, [hl-]                                      ; $5d81: $3a
	ld d, b                                          ; $5d82: $50
	xor h                                            ; $5d83: $ac
	ldh a, [$aa]                                     ; $5d84: $f0 $aa
	adc c                                            ; $5d86: $89
	adc a                                            ; $5d87: $8f
	ld b, a                                          ; $5d88: $47
	inc [hl]                                         ; $5d89: $34
	ld l, a                                          ; $5d8a: $6f
	ld b, d                                          ; $5d8b: $42
	xor $17                                          ; $5d8c: $ee $17
	ld b, d                                          ; $5d8e: $42
	inc de                                           ; $5d8f: $13
	pop af                                           ; $5d90: $f1
	ld d, e                                          ; $5d91: $53
	ldh a, [c]                                       ; $5d92: $f2
	ld b, [hl]                                       ; $5d93: $46
	ld c, d                                          ; $5d94: $4a
	ld c, a                                          ; $5d95: $4f
	ld [hl], d                                       ; $5d96: $72
	ld b, a                                          ; $5d97: $47
	ld a, b                                          ; $5d98: $78
	ld a, [hl-]                                      ; $5d99: $3a
	ld e, b                                          ; $5d9a: $58
	jr c, jr_092_5de2                                ; $5d9b: $38 $45

	and b                                            ; $5d9d: $a0
	ld d, h                                          ; $5d9e: $54
	ld b, d                                          ; $5d9f: $42
	pop af                                           ; $5da0: $f1
	rst SubAFromHL                                          ; $5da1: $d7

jr_092_5da2:
	ldh a, [$0d]                                     ; $5da2: $f0 $0d
	ld b, d                                          ; $5da4: $42
	ldh a, [$3f]                                     ; $5da5: $f0 $3f
	ld c, d                                          ; $5da7: $4a
	inc de                                           ; $5da8: $13
	ldh a, [c]                                       ; $5da9: $f2
	adc [hl]                                         ; $5daa: $8e
	pop af                                           ; $5dab: $f1
	cp [hl]                                          ; $5dac: $be
	ld a, $3f                                        ; $5dad: $3e $3f
	jr c, jr_092_5dff                                ; $5daf: $38 $4e

	ld b, l                                          ; $5db1: $45
	add hl, sp                                       ; $5db2: $39

jr_092_5db3:
	ld a, [hl-]                                      ; $5db3: $3a
	add h                                            ; $5db4: $84
	ld b, a                                          ; $5db5: $47
	ld c, e                                          ; $5db6: $4b
	inc de                                           ; $5db7: $13
	ld [hl], a                                       ; $5db8: $77

jr_092_5db9:
	jr c, jr_092_5e0a                                ; $5db9: $38 $4f

	add b                                            ; $5dbb: $80
	inc a                                            ; $5dbc: $3c
	ld a, [hl-]                                      ; $5dbd: $3a
	jr c, jr_092_5e0f                                ; $5dbe: $38 $4f

jr_092_5dc0:
	ld b, d                                          ; $5dc0: $42
	ld b, l                                          ; $5dc1: $45
	and b                                            ; $5dc2: $a0

jr_092_5dc3:
	ld l, e                                          ; $5dc3: $6b
	ld d, h                                          ; $5dc4: $54
	ld c, l                                          ; $5dc5: $4d
	and c                                            ; $5dc6: $a1
	cpl                                              ; $5dc7: $2f
	ld b, e                                          ; $5dc8: $43
	ld b, [hl]                                       ; $5dc9: $46
	dec sp                                           ; $5dca: $3b
	inc [hl]                                         ; $5dcb: $34
	db $ec                                           ; $5dcc: $ec
	ldh [$a8], a                                     ; $5dcd: $e0 $a8
	adc d                                            ; $5dcf: $8a
	ldh a, [$73]                                     ; $5dd0: $f0 $73
	adc a                                            ; $5dd2: $8f
	pop af                                           ; $5dd3: $f1
	ld c, [hl]                                       ; $5dd4: $4e
	ld d, e                                          ; $5dd5: $53
	ldh a, [$bd]                                     ; $5dd6: $f0 $bd
	jr c, jr_092_5e17                                ; $5dd8: $38 $3d

	pop af                                           ; $5dda: $f1
	or b                                             ; $5ddb: $b0
	ldh a, [$3f]                                     ; $5ddc: $f0 $3f
	ld b, h                                          ; $5dde: $44
	ld b, l                                          ; $5ddf: $45
	and b                                            ; $5de0: $a0
	ld [hl], d                                       ; $5de1: $72

jr_092_5de2:
	ld c, [hl]                                       ; $5de2: $4e
	ld a, a                                          ; $5de3: $7f
	ld b, a                                          ; $5de4: $47
	ld c, a                                          ; $5de5: $4f
	ld a, [hl-]                                      ; $5de6: $3a
	ld c, l                                          ; $5de7: $4d
	ld a, [hl-]                                      ; $5de8: $3a
	jr c, jr_092_5e4e                                ; $5de9: $38 $63

	xor b                                            ; $5deb: $a8
	ldh a, [rHDMA5]                                  ; $5dec: $f0 $55
	ldh a, [rBCPS]                                   ; $5dee: $f0 $68
	and b                                            ; $5df0: $a0
	cpl                                              ; $5df1: $2f
	ld b, e                                          ; $5df2: $43
	ld l, e                                          ; $5df3: $6b
	ld a, $47                                        ; $5df4: $3e $47
	ld a, b                                          ; $5df6: $78
	dec a                                            ; $5df7: $3d
	ld b, c                                          ; $5df8: $41
	ld b, h                                          ; $5df9: $44
	ld e, a                                          ; $5dfa: $5f
	add hl, sp                                       ; $5dfb: $39
	ld c, b                                          ; $5dfc: $48
	and c                                            ; $5dfd: $a1
	ld l, e                                          ; $5dfe: $6b

jr_092_5dff:
	inc a                                            ; $5dff: $3c
	db $eb                                           ; $5e00: $eb
	ld l, e                                          ; $5e01: $6b
	ld h, e                                          ; $5e02: $63
	ld c, h                                          ; $5e03: $4c
	and b                                            ; $5e04: $a0
	cpl                                              ; $5e05: $2f
	ld b, e                                          ; $5e06: $43
	jr c, jr_092_5e44                                ; $5e07: $38 $3b

	dec a                                            ; $5e09: $3d

jr_092_5e0a:
	jr c, jr_092_5e77                                ; $5e0a: $38 $6b

	ld b, h                                          ; $5e0c: $44
	ld e, a                                          ; $5e0d: $5f
	add hl, sp                                       ; $5e0e: $39

jr_092_5e0f:
	and c                                            ; $5e0f: $a1
	ld l, l                                          ; $5e10: $6d
	ldh a, [rTIMA]                                   ; $5e11: $f0 $05
	ldh a, [$a4]                                     ; $5e13: $f0 $a4
	ld e, [hl]                                       ; $5e15: $5e
	ccf                                              ; $5e16: $3f

jr_092_5e17:
	ld a, [hl-]                                      ; $5e17: $3a
	ld e, b                                          ; $5e18: $58
	jr c, jr_092_5dc3                                ; $5e19: $38 $a8

	ld [$a021], a                                    ; $5e1b: $ea $21 $a0
	cpl                                              ; $5e1e: $2f
	ld b, e                                          ; $5e1f: $43
	ld c, a                                          ; $5e20: $4f
	add hl, sp                                       ; $5e21: $39
	xor h                                            ; $5e22: $ac
	ldh a, [$c1]                                     ; $5e23: $f0 $c1
	ldh a, [$d5]                                     ; $5e25: $f0 $d5
	ld c, e                                          ; $5e27: $4b
	ld [hl], d                                       ; $5e28: $72
	ld c, l                                          ; $5e29: $4d
	ld a, [hl-]                                      ; $5e2a: $3a
	jr c, jr_092_5e6b                                ; $5e2b: $38 $3e

	xor l                                            ; $5e2d: $ad
	jr c, jr_092_5e6b                                ; $5e2e: $38 $3b

	dec a                                            ; $5e30: $3d
	jr c, jr_092_5e9e                                ; $5e31: $38 $6b

	ld h, d                                          ; $5e33: $62
	inc de                                           ; $5e34: $13
	xor $17                                          ; $5e35: $ee $17
	ld a, $ec                                        ; $5e37: $3e $ec
	add hl, de                                       ; $5e39: $19
	ld e, a                                          ; $5e3a: $5f
	add hl, sp                                       ; $5e3b: $39
	ld c, b                                          ; $5e3c: $48
	and c                                            ; $5e3d: $a1
	call c, $d134                                    ; $5e3e: $dc $34 $d1
	inc de                                           ; $5e41: $13
	jr c, jr_092_5e7c                                ; $5e42: $38 $38

jr_092_5e44:
	ld b, c                                          ; $5e44: $41
	db $ec                                           ; $5e45: $ec
	ret c                                            ; $5e46: $d8

	and b                                            ; $5e47: $a0
	cpl                                              ; $5e48: $2f
	ld b, e                                          ; $5e49: $43
	db $ec                                           ; $5e4a: $ec
	ldh [$3c], a                                     ; $5e4b: $e0 $3c
	ld d, b                                          ; $5e4d: $50

jr_092_5e4e:
	inc de                                           ; $5e4e: $13
	ld b, b                                          ; $5e4f: $40
	ld b, c                                          ; $5e50: $41
	ld a, [hl-]                                      ; $5e51: $3a
	add d                                            ; $5e52: $82
	pop af                                           ; $5e53: $f1
	adc h                                            ; $5e54: $8c
	ld h, d                                          ; $5e55: $62
	ldh a, [$0c]                                     ; $5e56: $f0 $0c
	ld e, l                                          ; $5e58: $5d
	ld c, [hl]                                       ; $5e59: $4e
	ld c, c                                          ; $5e5a: $49
	ld c, e                                          ; $5e5b: $4b
	inc de                                           ; $5e5c: $13

jr_092_5e5d:
	ld [hl], a                                       ; $5e5d: $77
	ld h, e                                          ; $5e5e: $63
	ld a, [hl-]                                      ; $5e5f: $3a
	inc a                                            ; $5e60: $3c
	dec sp                                           ; $5e61: $3b
	dec a                                            ; $5e62: $3d
	ld c, b                                          ; $5e63: $48
	and b                                            ; $5e64: $a0
	ld d, h                                          ; $5e65: $54
	ld b, d                                          ; $5e66: $42
	ldh a, [$75]                                     ; $5e67: $f0 $75
	adc h                                            ; $5e69: $8c
	ld c, d                                          ; $5e6a: $4a

jr_092_5e6b:
	sub d                                            ; $5e6b: $92
	adc [hl]                                         ; $5e6c: $8e
	ld c, l                                          ; $5e6d: $4d
	ld a, e                                          ; $5e6e: $7b
	xor h                                            ; $5e6f: $ac
	db $ec                                           ; $5e70: $ec
	ld [hl], b                                       ; $5e71: $70
	ld b, a                                          ; $5e72: $47
	sub [hl]                                         ; $5e73: $96
	ld c, l                                          ; $5e74: $4d
	ld c, [hl]                                       ; $5e75: $4e
	ld h, e                                          ; $5e76: $63

jr_092_5e77:
	ld b, l                                          ; $5e77: $45
	and b                                            ; $5e78: $a0
	db $ec                                           ; $5e79: $ec
	sub $ec                                          ; $5e7a: $d6 $ec

jr_092_5e7c:
	ret c                                            ; $5e7c: $d8

	and b                                            ; $5e7d: $a0
	cpl                                              ; $5e7e: $2f
	ld b, e                                          ; $5e7f: $43
	ld a, a                                          ; $5e80: $7f
	ld b, a                                          ; $5e81: $47
	sub [hl]                                         ; $5e82: $96
	dec sp                                           ; $5e83: $3b
	ccf                                              ; $5e84: $3f
	ld d, l                                          ; $5e85: $55
	ld c, l                                          ; $5e86: $4d
	dec a                                            ; $5e87: $3d
	xor c                                            ; $5e88: $a9
	ldh a, [$31]                                     ; $5e89: $f0 $31
	ld c, e                                          ; $5e8b: $4b
	xor h                                            ; $5e8c: $ac
	ld d, h                                          ; $5e8d: $54
	ld c, l                                          ; $5e8e: $4d
	db $eb                                           ; $5e8f: $eb
	ld l, a                                          ; $5e90: $6f
	ld a, [hl-]                                      ; $5e91: $3a
	ld b, c                                          ; $5e92: $41
	ld b, h                                          ; $5e93: $44
	and b                                            ; $5e94: $a0
	ldh a, [$34]                                     ; $5e95: $f0 $34
	ld b, a                                          ; $5e97: $47
	ld l, e                                          ; $5e98: $6b
	ld b, d                                          ; $5e99: $42
	ldh a, [$ed]                                     ; $5e9a: $f0 $ed
	db $ed                                           ; $5e9c: $ed
	ld b, e                                          ; $5e9d: $43

jr_092_5e9e:
	inc de                                           ; $5e9e: $13
	ret nc                                           ; $5e9f: $d0

	and b                                            ; $5ea0: $a0
	cpl                                              ; $5ea1: $2f
	ld b, e                                          ; $5ea2: $43
	rst JumpTable                                          ; $5ea3: $c7
	ld c, b                                          ; $5ea4: $48
	and b                                            ; $5ea5: $a0
	db $ec                                           ; $5ea6: $ec
	ld [hl], b                                       ; $5ea7: $70
	ld b, a                                          ; $5ea8: $47
	inc de                                           ; $5ea9: $13
	sub [hl]                                         ; $5eaa: $96
	ld c, l                                          ; $5eab: $4d
	ld c, [hl]                                       ; $5eac: $4e
	ld b, l                                          ; $5ead: $45
	add hl, sp                                       ; $5eae: $39
	xor h                                            ; $5eaf: $ac
	ld c, a                                          ; $5eb0: $4f
	dec sp                                           ; $5eb1: $3b
	ld c, c                                          ; $5eb2: $49
	inc [hl]                                         ; $5eb3: $34
	ldh a, [c]                                       ; $5eb4: $f2
	and l                                            ; $5eb5: $a5
	pop af                                           ; $5eb6: $f1
	dec hl                                           ; $5eb7: $2b
	ld a, $3a                                        ; $5eb8: $3e $3a
	ld e, b                                          ; $5eba: $58
	jr c, jr_092_5e5d                                ; $5ebb: $38 $a0

	pop af                                           ; $5ebd: $f1
	db $fc                                           ; $5ebe: $fc
	ldh a, [rOCPS]                                   ; $5ebf: $f0 $6a
	ld b, l                                          ; $5ec1: $45
	and b                                            ; $5ec2: $a0
	cpl                                              ; $5ec3: $2f
	ld b, e                                          ; $5ec4: $43
	rst JumpTable                                          ; $5ec5: $c7
	xor l                                            ; $5ec6: $ad
	ldh a, [$31]                                     ; $5ec7: $f0 $31
	ld c, e                                          ; $5ec9: $4b
	xor h                                            ; $5eca: $ac
	ld d, h                                          ; $5ecb: $54
	ld c, l                                          ; $5ecc: $4d
	db $eb                                           ; $5ecd: $eb
	ld l, a                                          ; $5ece: $6f
	ld a, [hl-]                                      ; $5ecf: $3a
	ld b, c                                          ; $5ed0: $41
	ld b, h                                          ; $5ed1: $44
	and b                                            ; $5ed2: $a0
	ldh a, [$34]                                     ; $5ed3: $f0 $34
	ld b, a                                          ; $5ed5: $47
	inc [hl]                                         ; $5ed6: $34
	ld l, e                                          ; $5ed7: $6b
	ld b, d                                          ; $5ed8: $42
	ldh a, [$ed]                                     ; $5ed9: $f0 $ed
	db $ed                                           ; $5edb: $ed
	ld b, e                                          ; $5edc: $43
	inc de                                           ; $5edd: $13
	ret nc                                           ; $5ede: $d0

	and b                                            ; $5edf: $a0
	db $ec                                           ; $5ee0: $ec
	ld [hl], b                                       ; $5ee1: $70
	ld b, a                                          ; $5ee2: $47
	ld c, e                                          ; $5ee3: $4b
	inc de                                           ; $5ee4: $13
	sub [hl]                                         ; $5ee5: $96
	ld c, l                                          ; $5ee6: $4d
	ld b, b                                          ; $5ee7: $40
	add hl, sp                                       ; $5ee8: $39
	ld c, a                                          ; $5ee9: $4f
	db $ec                                           ; $5eea: $ec
	dec bc                                           ; $5eeb: $0b
	and b                                            ; $5eec: $a0
	cpl                                              ; $5eed: $2f
	ld b, e                                          ; $5eee: $43
	db $ec                                           ; $5eef: $ec
	ld [hl], b                                       ; $5ef0: $70
	ld c, b                                          ; $5ef1: $48
	and c                                            ; $5ef2: $a1
	ld [$636c], a                                    ; $5ef3: $ea $6c $63
	ld b, l                                          ; $5ef6: $45
	xor b                                            ; $5ef7: $a8
	ld b, b                                          ; $5ef8: $40
	ld c, l                                          ; $5ef9: $4d
	ld e, e                                          ; $5efa: $5b
	ld d, [hl]                                       ; $5efb: $56
	inc [hl]                                         ; $5efc: $34
	ld e, b                                          ; $5efd: $58
	ld b, l                                          ; $5efe: $45
	ld a, [hl-]                                      ; $5eff: $3a
	ld d, b                                          ; $5f00: $50
	and b                                            ; $5f01: $a0
	cpl                                              ; $5f02: $2f
	ld b, e                                          ; $5f03: $43
	ld [$3b6c], a                                    ; $5f04: $ea $6c $3b
	ccf                                              ; $5f07: $3f
	xor h                                            ; $5f08: $ac
	ld l, e                                          ; $5f09: $6b
	ld b, h                                          ; $5f0a: $44
	ld e, a                                          ; $5f0b: $5f
	add hl, sp                                       ; $5f0c: $39
	ld c, b                                          ; $5f0d: $48
	and b                                            ; $5f0e: $a0
	call c, $d134                                    ; $5f0f: $dc $34 $d1
	inc de                                           ; $5f12: $13
	jr c, jr_092_5f4d                                ; $5f13: $38 $38

	ld b, c                                          ; $5f15: $41
	db $ec                                           ; $5f16: $ec
	ret c                                            ; $5f17: $d8

	ld c, b                                          ; $5f18: $48
	and b                                            ; $5f19: $a0

jr_092_5f1a:
	ldh a, [$0c]                                     ; $5f1a: $f0 $0c
	jr c, jr_092_5f5d                                ; $5f1c: $38 $3f

	dec a                                            ; $5f1e: $3d
	ld b, d                                          ; $5f1f: $42
	xor c                                            ; $5f20: $a9
	ld b, [hl]                                       ; $5f21: $46
	ld a, [hl-]                                      ; $5f22: $3a
	dec a                                            ; $5f23: $3d
	ld b, h                                          ; $5f24: $44
	inc a                                            ; $5f25: $3c
	ld d, b                                          ; $5f26: $50
	xor h                                            ; $5f27: $ac
	ldh a, [$b6]                                     ; $5f28: $f0 $b6
	ldh a, [$34]                                     ; $5f2a: $f0 $34
	ld b, a                                          ; $5f2c: $47
	ldh a, [c]                                       ; $5f2d: $f2
	ld a, b                                          ; $5f2e: $78
	ld a, $3f                                        ; $5f2f: $3e $3f
	rst SubAFromDE                                          ; $5f31: $df
	ld h, e                                          ; $5f32: $63
	and b                                            ; $5f33: $a0
	cpl                                              ; $5f34: $2f
	ld b, e                                          ; $5f35: $43
	ld b, [hl]                                       ; $5f36: $46
	inc [hl]                                         ; $5f37: $34
	ld b, [hl]                                       ; $5f38: $46
	ld d, a                                          ; $5f39: $57
	ld d, e                                          ; $5f3a: $53
	ld c, c                                          ; $5f3b: $49
	add hl, sp                                       ; $5f3c: $39
	and b                                            ; $5f3d: $a0
	ld c, d                                          ; $5f3e: $4a
	ld c, a                                          ; $5f3f: $4f
	xor h                                            ; $5f40: $ac
	ldh a, [$98]                                     ; $5f41: $f0 $98
	inc a                                            ; $5f43: $3c
	ld b, a                                          ; $5f44: $47
	ld hl, sp+$75                                    ; $5f45: $f8 $75
	dec sp                                           ; $5f47: $3b
	dec a                                            ; $5f48: $3d
	ld d, b                                          ; $5f49: $50
	xor l                                            ; $5f4a: $ad
	pop af                                           ; $5f4b: $f1
	dec sp                                           ; $5f4c: $3b

jr_092_5f4d:
	ld c, [hl]                                       ; $5f4d: $4e
	ld c, d                                          ; $5f4e: $4a
	ld a, $66                                        ; $5f4f: $3e $66
	add hl, sp                                       ; $5f51: $39
	and c                                            ; $5f52: $a1
	cpl                                              ; $5f53: $2f
	ld b, e                                          ; $5f54: $43
	ld c, e                                          ; $5f55: $4b
	inc [hl]                                         ; $5f56: $34
	xor $2d                                          ; $5f57: $ee $2d
	inc [hl]                                         ; $5f59: $34
	pop af                                           ; $5f5a: $f1
	dec sp                                           ; $5f5b: $3b
	ld d, a                                          ; $5f5c: $57

jr_092_5f5d:
	ld d, d                                          ; $5f5d: $52
	ld d, c                                          ; $5f5e: $51
	xor l                                            ; $5f5f: $ad
	ld hl, sp+$75                                    ; $5f60: $f8 $75
	ld c, [hl]                                       ; $5f62: $4e
	ld a, [hl-]                                      ; $5f63: $3a
	ld b, c                                          ; $5f64: $41
	ccf                                              ; $5f65: $3f
	ld c, c                                          ; $5f66: $49
	ld b, c                                          ; $5f67: $41
	ld c, d                                          ; $5f68: $4a
	ld c, a                                          ; $5f69: $4f
	ld a, [hl-]                                      ; $5f6a: $3a
	jr c, jr_092_5f1a                                ; $5f6b: $38 $ad

	ld b, b                                          ; $5f6d: $40
	ld b, c                                          ; $5f6e: $41
	ld a, [hl-]                                      ; $5f6f: $3a
	sbc d                                            ; $5f70: $9a
	ld c, e                                          ; $5f71: $4b
	ld a, $52                                        ; $5f72: $3e $52
	ld a, c                                          ; $5f74: $79
	ld b, c                                          ; $5f75: $41
	ld c, d                                          ; $5f76: $4a
	ld d, c                                          ; $5f77: $51
	and b                                            ; $5f78: $a0
	ld b, b                                          ; $5f79: $40
	ld c, l                                          ; $5f7a: $4d
	ld a, [hl-]                                      ; $5f7b: $3a
	ld d, b                                          ; $5f7c: $50
	jr c, jr_092_5fb7                                ; $5f7d: $38 $38

	ld h, e                                          ; $5f7f: $63
	xor b                                            ; $5f80: $a8
	ld [$a021], a                                    ; $5f81: $ea $21 $a0
	cpl                                              ; $5f84: $2f
	ld b, e                                          ; $5f85: $43
	ld d, h                                          ; $5f86: $54
	inc [hl]                                         ; $5f87: $34
	ldh a, [$71]                                     ; $5f88: $f0 $71
	inc a                                            ; $5f8a: $3c
	dec sp                                           ; $5f8b: $3b
	dec a                                            ; $5f8c: $3d
	ld b, l                                          ; $5f8d: $45
	ldh a, [c]                                       ; $5f8e: $f2
	ld a, l                                          ; $5f8f: $7d
	xor b                                            ; $5f90: $a8
	ld hl, sp+$75                                    ; $5f91: $f8 $75
	dec sp                                           ; $5f93: $3b
	dec a                                            ; $5f94: $3d
	ld d, b                                          ; $5f95: $50
	inc [hl]                                         ; $5f96: $34
	ld l, e                                          ; $5f97: $6b
	ld e, b                                          ; $5f98: $58
	ld c, l                                          ; $5f99: $4d
	ld c, [hl]                                       ; $5f9a: $4e
	inc a                                            ; $5f9b: $3c
	ld c, b                                          ; $5f9c: $48
	and b                                            ; $5f9d: $a0
	jr c, jr_092_5fd8                                ; $5f9e: $38 $38

	db $ec                                           ; $5fa0: $ec
	ret c                                            ; $5fa1: $d8

	ld c, b                                          ; $5fa2: $48
	and b                                            ; $5fa3: $a0
	ld b, b                                          ; $5fa4: $40
	ld c, l                                          ; $5fa5: $4d
	pop af                                           ; $5fa6: $f1
	ld c, e                                          ; $5fa7: $4b
	ldh a, [$3e]                                     ; $5fa8: $f0 $3e
	ld hl, sp+$75                                    ; $5faa: $f8 $75
	ld c, [hl]                                       ; $5fac: $4e
	ld c, c                                          ; $5fad: $49
	xor h                                            ; $5fae: $ac
	pop af                                           ; $5faf: $f1
	rst AddAOntoHL                                          ; $5fb0: $ef
	ld b, d                                          ; $5fb1: $42
	ldh a, [c]                                       ; $5fb2: $f2
	rst $38                                          ; $5fb3: $ff
	di                                               ; $5fb4: $f3
	adc c                                            ; $5fb5: $89
	ld c, e                                          ; $5fb6: $4b

jr_092_5fb7:
	ld a, $3a                                        ; $5fb7: $3e $3a
	jr c, jr_092_601e                                ; $5fb9: $38 $63

	ld b, l                                          ; $5fbb: $45
	and b                                            ; $5fbc: $a0
	cpl                                              ; $5fbd: $2f
	ld b, e                                          ; $5fbe: $43
	ld c, e                                          ; $5fbf: $4b
	inc [hl]                                         ; $5fc0: $34
	xor $2d                                          ; $5fc1: $ee $2d
	xor l                                            ; $5fc3: $ad
	ld hl, sp+$75                                    ; $5fc4: $f8 $75
	ld c, [hl]                                       ; $5fc6: $4e
	ld a, [hl-]                                      ; $5fc7: $3a
	ld b, c                                          ; $5fc8: $41
	ccf                                              ; $5fc9: $3f
	ld c, c                                          ; $5fca: $49
	ld b, c                                          ; $5fcb: $41
	ld c, d                                          ; $5fcc: $4a
	ld c, a                                          ; $5fcd: $4f
	ld a, [hl-]                                      ; $5fce: $3a
	jr c, @-$51                                      ; $5fcf: $38 $ad

	ld b, b                                          ; $5fd1: $40
	ld b, c                                          ; $5fd2: $41
	ld a, [hl-]                                      ; $5fd3: $3a
	sbc d                                            ; $5fd4: $9a
	ld c, e                                          ; $5fd5: $4b
	ld a, $52                                        ; $5fd6: $3e $52

jr_092_5fd8:
	ld a, c                                          ; $5fd8: $79
	ld b, c                                          ; $5fd9: $41
	ld c, d                                          ; $5fda: $4a
	ld d, c                                          ; $5fdb: $51
	and b                                            ; $5fdc: $a0
	cpl                                              ; $5fdd: $2f

jr_092_5fde:
	ld b, e                                          ; $5fde: $43
	ld d, h                                          ; $5fdf: $54
	inc [hl]                                         ; $5fe0: $34
	ldh a, [$71]                                     ; $5fe1: $f0 $71
	inc a                                            ; $5fe3: $3c
	dec sp                                           ; $5fe4: $3b
	dec a                                            ; $5fe5: $3d
	ld b, l                                          ; $5fe6: $45
	ldh a, [c]                                       ; $5fe7: $f2
	ld a, l                                          ; $5fe8: $7d
	xor b                                            ; $5fe9: $a8
	ld hl, sp+$75                                    ; $5fea: $f8 $75
	dec sp                                           ; $5fec: $3b
	dec a                                            ; $5fed: $3d
	ld d, b                                          ; $5fee: $50
	xor h                                            ; $5fef: $ac
	sbc $f4                                          ; $5ff0: $de $f4
	and l                                            ; $5ff2: $a5
	ld e, b                                          ; $5ff3: $58
	ld c, l                                          ; $5ff4: $4d
	ld b, b                                          ; $5ff5: $40
	add hl, sp                                       ; $5ff6: $39
	ld c, b                                          ; $5ff7: $48
	and b                                            ; $5ff8: $a0
	call c, Call_092_46ad                            ; $5ff9: $dc $ad $46
	dec sp                                           ; $5ffc: $3b
	inc [hl]                                         ; $5ffd: $34
	ld l, d                                          ; $5ffe: $6a
	ld b, d                                          ; $5fff: $42
	ldh a, [$ed]                                     ; $6000: $f0 $ed
	ld c, d                                          ; $6002: $4a
	inc de                                           ; $6003: $13
	ld l, e                                          ; $6004: $6b
	inc a                                            ; $6005: $3c
	ldh a, [$d8]                                     ; $6006: $f0 $d8
	ld d, b                                          ; $6008: $50
	ld [hl], c                                       ; $6009: $71
	ld e, h                                          ; $600a: $5c
	ld b, b                                          ; $600b: $40
	add hl, sp                                       ; $600c: $39
	and b                                            ; $600d: $a0
	cpl                                              ; $600e: $2f
	ld b, e                                          ; $600f: $43
	ld l, e                                          ; $6010: $6b
	inc a                                            ; $6011: $3c
	dec sp                                           ; $6012: $3b
	ccf                                              ; $6013: $3f
	and c                                            ; $6014: $a1
	ld [$a8ce], a                                    ; $6015: $ea $ce $a8
	ret                                              ; $6018: $c9


	db $f4                                           ; $6019: $f4
	ld h, h                                          ; $601a: $64

jr_092_601b:
	dec sp                                           ; $601b: $3b
	ccf                                              ; $601c: $3f
	ccf                                              ; $601d: $3f

jr_092_601e:
	ld c, b                                          ; $601e: $48
	and b                                            ; $601f: $a0
	ld c, a                                          ; $6020: $4f
	add hl, sp                                       ; $6021: $39
	ldh a, [rHDMA4]                                  ; $6022: $f0 $54
	ld a, $3a                                        ; $6024: $3e $3a
	ld b, d                                          ; $6026: $42
	ld b, a                                          ; $6027: $47
	xor l                                            ; $6028: $ad
	xor $17                                          ; $6029: $ee $17
	pop af                                           ; $602b: $f1
	ld l, b                                          ; $602c: $68
	ld b, a                                          ; $602d: $47
	ldh a, [$e8]                                     ; $602e: $f0 $e8
	ld c, l                                          ; $6030: $4d
	ld a, e                                          ; $6031: $7b
	xor h                                            ; $6032: $ac
	sub h                                            ; $6033: $94
	ccf                                              ; $6034: $3f
	ld d, l                                          ; $6035: $55
	ld c, [hl]                                       ; $6036: $4e
	inc a                                            ; $6037: $3c
	ld c, a                                          ; $6038: $4f
	ld a, $4d                                        ; $6039: $3e $4d
	ld a, [hl-]                                      ; $603b: $3a
	jr c, jr_092_5fde                                ; $603c: $38 $a0

	cpl                                              ; $603e: $2f
	ld b, e                                          ; $603f: $43
	xor $10                                          ; $6040: $ee $10
	xor b                                            ; $6042: $a8
	ld [hl-], a                                      ; $6043: $32
	ld d, d                                          ; $6044: $52
	ld b, h                                          ; $6045: $44
	inc [hl]                                         ; $6046: $34
	ldh a, [$d8]                                     ; $6047: $f0 $d8
	ld d, b                                          ; $6049: $50
	ld [hl], c                                       ; $604a: $71
	inc a                                            ; $604b: $3c
	ld a, [hl-]                                      ; $604c: $3a
	jr c, jr_092_6091                                ; $604d: $38 $42

	inc a                                            ; $604f: $3c
	ld a, [hl-]                                      ; $6050: $3a
	ld [hl], $33                                     ; $6051: $36 $33
	add hl, bc                                       ; $6053: $09
	ld b, b                                          ; $6054: $40
	ld c, l                                          ; $6055: $4d
	ld e, e                                          ; $6056: $5b
	ld d, [hl]                                       ; $6057: $56
	xor h                                            ; $6058: $ac
	xor $17                                          ; $6059: $ee $17
	pop af                                           ; $605b: $f1
	ld l, b                                          ; $605c: $68
	ld b, a                                          ; $605d: $47
	ldh a, [$e8]                                     ; $605e: $f0 $e8
	ld c, [hl]                                       ; $6060: $4e
	ld h, e                                          ; $6061: $63
	dec [hl]                                         ; $6062: $35
	ldh a, [rHDMA5]                                  ; $6063: $f0 $55
	ldh a, [rBCPS]                                   ; $6065: $f0 $68
	and b                                            ; $6067: $a0
	cpl                                              ; $6068: $2f
	ld b, e                                          ; $6069: $43
	jr c, jr_092_60a7                                ; $606a: $38 $3b

	dec a                                            ; $606c: $3d
	jr c, jr_092_601b                                ; $606d: $38 $ac

	ld l, e                                          ; $606f: $6b
	ld h, d                                          ; $6070: $62
	inc [hl]                                         ; $6071: $34
	ldh a, [$d8]                                     ; $6072: $f0 $d8
	ld d, b                                          ; $6074: $50
	ld [hl], c                                       ; $6075: $71
	ld e, h                                          ; $6076: $5c
	inc de                                           ; $6077: $13
	inc a                                            ; $6078: $3c
	ld e, l                                          ; $6079: $5d
	db $ec                                           ; $607a: $ec
	add hl, de                                       ; $607b: $19
	ld e, a                                          ; $607c: $5f
	add hl, sp                                       ; $607d: $39
	and c                                            ; $607e: $a1
	db $eb                                           ; $607f: $eb
	ld d, e                                          ; $6080: $53
	ld h, e                                          ; $6081: $63
	and b                                            ; $6082: $a0
	cpl                                              ; $6083: $2f
	ld b, e                                          ; $6084: $43
	ld c, e                                          ; $6085: $4b
	inc [hl]                                         ; $6086: $34
	ld c, e                                          ; $6087: $4b
	dec sp                                           ; $6088: $3b
	ld e, h                                          ; $6089: $5c
	ld d, a                                          ; $608a: $57
	add d                                            ; $608b: $82
	add hl, sp                                       ; $608c: $39
	ld c, h                                          ; $608d: $4c
	and b                                            ; $608e: $a0
	ld l, a                                          ; $608f: $6f
	ld c, e                                          ; $6090: $4b

jr_092_6091:
	inc [hl]                                         ; $6091: $34
	db $f4                                           ; $6092: $f4
	or c                                             ; $6093: $b1
	ld b, d                                          ; $6094: $42
	pop af                                           ; $6095: $f1
	rrca                                             ; $6096: $0f
	pop af                                           ; $6097: $f1
	ld a, [bc]                                       ; $6098: $0a
	pop af                                           ; $6099: $f1
	jr nz, jr_092_60fe                               ; $609a: $20 $62

	inc de                                           ; $609c: $13
	push af                                          ; $609d: $f5
	ld b, d                                          ; $609e: $42
	ld d, c                                          ; $609f: $51
	ldh a, [$ed]                                     ; $60a0: $f0 $ed
	ld a, $3c                                        ; $60a2: $3e $3c
	ldh a, [$0c]                                     ; $60a4: $f0 $0c
	inc a                                            ; $60a6: $3c

jr_092_60a7:
	ld a, [hl-]                                      ; $60a7: $3a
	jr c, jr_092_60ec                                ; $60a8: $38 $42

	ld b, l                                          ; $60aa: $45
	and b                                            ; $60ab: $a0
	cpl                                              ; $60ac: $2f
	ld b, e                                          ; $60ad: $43
	pop af                                           ; $60ae: $f1
	add d                                            ; $60af: $82
	inc a                                            ; $60b0: $3c
	ld b, a                                          ; $60b1: $47
	inc [hl]                                         ; $60b2: $34
	ld d, h                                          ; $60b3: $54
	ld b, d                                          ; $60b4: $42
	ldh a, [$ed]                                     ; $60b5: $f0 $ed
	ld e, e                                          ; $60b7: $5b
	ld d, [hl]                                       ; $60b8: $56
	inc de                                           ; $60b9: $13
	pop af                                           ; $60ba: $f1
	ld [hl], d                                       ; $60bb: $72
	ld d, e                                          ; $60bc: $53
	rst FarCall                                          ; $60bd: $f7
	ld sp, $3c4e                                     ; $60be: $31 $4e $3c
	ld c, a                                          ; $60c1: $4f
	ld a, $4d                                        ; $60c2: $3e $4d
	ld a, [hl-]                                      ; $60c4: $3a
	jr c, jr_092_610f                                ; $60c5: $38 $48

	and b                                            ; $60c7: $a0
	ldh a, [rTAC]                                    ; $60c8: $f0 $07
	inc a                                            ; $60ca: $3c
	dec sp                                           ; $60cb: $3b
	dec a                                            ; $60cc: $3d
	ld d, b                                          ; $60cd: $50
	inc [hl]                                         ; $60ce: $34
	ld l, a                                          ; $60cf: $6f
	ld b, d                                          ; $60d0: $42
	sbc [hl]                                         ; $60d1: $9e
	ld c, d                                          ; $60d2: $4a
	inc de                                           ; $60d3: $13
	ldh a, [hDisp0_SCX]                                     ; $60d4: $f0 $84
	ldh a, [$0d]                                     ; $60d6: $f0 $0d
	ld c, c                                          ; $60d8: $49
	ld d, h                                          ; $60d9: $54
	ld b, c                                          ; $60da: $41
	ld a, [hl-]                                      ; $60db: $3a
	ldh a, [$ed]                                     ; $60dc: $f0 $ed
	ld h, d                                          ; $60de: $62
	inc de                                           ; $60df: $13
	xor $2b                                          ; $60e0: $ee $2b
	ld a, $3a                                        ; $60e2: $3e $3a
	jr c, jr_092_613a                                ; $60e4: $38 $54

	ld c, c                                          ; $60e6: $49
	ld c, h                                          ; $60e7: $4c
	ld c, b                                          ; $60e8: $48
	and b                                            ; $60e9: $a0
	cpl                                              ; $60ea: $2f
	ld b, e                                          ; $60eb: $43

jr_092_60ec:
	ld e, [hl]                                       ; $60ec: $5e
	dec sp                                           ; $60ed: $3b
	inc [hl]                                         ; $60ee: $34
	ld c, a                                          ; $60ef: $4f
	ld a, $ac                                        ; $60f0: $3e $ac
	xor $2b                                          ; $60f2: $ee $2b
	ld a, $3d                                        ; $60f4: $3e $3d
	ld d, b                                          ; $60f6: $50
	ld c, b                                          ; $60f7: $48
	and c                                            ; $60f8: $a1
	ldh a, [rSCY]                                    ; $60f9: $f0 $42
	ldh a, [rSCY]                                    ; $60fb: $f0 $42
	xor l                                            ; $60fd: $ad

jr_092_60fe:
	ld b, b                                          ; $60fe: $40
	ld c, l                                          ; $60ff: $4d
	ld c, e                                          ; $6100: $4b
	ld b, b                                          ; $6101: $40
	ld c, l                                          ; $6102: $4d
	ld c, d                                          ; $6103: $4a
	inc [hl]                                         ; $6104: $34
	sub b                                            ; $6105: $90
	ld a, $6c                                        ; $6106: $3e $6c
	ld c, h                                          ; $6108: $4c
	xor b                                            ; $6109: $a8
	ld [$a021], a                                    ; $610a: $ea $21 $a0
	cpl                                              ; $610d: $2f
	ld b, e                                          ; $610e: $43

jr_092_610f:
	jr c, jr_092_614c                                ; $610f: $38 $3b

	dec a                                            ; $6111: $3d
	jr c, @-$52                                      ; $6112: $38 $ac

	ld l, e                                          ; $6114: $6b
	ld h, d                                          ; $6115: $62
	ld d, c                                          ; $6116: $51
	ld c, [hl]                                       ; $6117: $4e
	ld a, a                                          ; $6118: $7f
	ld a, [hl-]                                      ; $6119: $3a
	ld b, c                                          ; $611a: $41
	ld b, h                                          ; $611b: $44
	ld e, a                                          ; $611c: $5f
	add hl, sp                                       ; $611d: $39
	and c                                            ; $611e: $a1
	ld d, h                                          ; $611f: $54
	ld b, c                                          ; $6120: $41
	ld a, [hl-]                                      ; $6121: $3a
	ldh a, [$ed]                                     ; $6122: $f0 $ed
	xor h                                            ; $6124: $ac
	xor $2b                                          ; $6125: $ee $2b
	ld a, $3a                                        ; $6127: $3e $3a
	jr c, jr_092_6175                                ; $6129: $38 $4a

	ld b, l                                          ; $612b: $45
	dec [hl]                                         ; $612c: $35
	db $f4                                           ; $612d: $f4
	or c                                             ; $612e: $b1
	ld d, e                                          ; $612f: $53
	rst FarCall                                          ; $6130: $f7
	ld sp, $634e                                     ; $6131: $31 $4e $63
	and b                                            ; $6134: $a0
	cpl                                              ; $6135: $2f
	ld b, e                                          ; $6136: $43
	ld b, b                                          ; $6137: $40
	ld b, c                                          ; $6138: $41
	ld a, [hl-]                                      ; $6139: $3a

jr_092_613a:
	ld b, a                                          ; $613a: $47
	inc [hl]                                         ; $613b: $34
	ld d, h                                          ; $613c: $54
	ld b, d                                          ; $613d: $42
	ldh a, [$ed]                                     ; $613e: $f0 $ed
	ldh a, [$64]                                     ; $6140: $f0 $64
	jr c, @-$5d                                      ; $6142: $38 $a1

	add a                                            ; $6144: $87
	ldh a, [$64]                                     ; $6145: $f0 $64
	jr c, jr_092_618e                                ; $6147: $38 $45

	xor b                                            ; $6149: $a8
	ld d, h                                          ; $614a: $54
	ld b, c                                          ; $614b: $41

jr_092_614c:
	ld a, [hl-]                                      ; $614c: $3a
	ldh a, [$ed]                                     ; $614d: $f0 $ed
	ld h, d                                          ; $614f: $62
	adc e                                            ; $6150: $8b
	ld e, h                                          ; $6151: $5c
	ld a, [hl-]                                      ; $6152: $3a
	ld b, d                                          ; $6153: $42
	ld c, e                                          ; $6154: $4b
	xor h                                            ; $6155: $ac
	di                                               ; $6156: $f3
	ld a, b                                          ; $6157: $78
	sbc l                                            ; $6158: $9d
	ld d, b                                          ; $6159: $50
	jr c, @+$47                                      ; $615a: $38 $45

	and b                                            ; $615c: $a0
	cpl                                              ; $615d: $2f
	ld b, e                                          ; $615e: $43
	di                                               ; $615f: $f3
	ld a, b                                          ; $6160: $78
	ld c, h                                          ; $6161: $4c
	add l                                            ; $6162: $85
	ld c, b                                          ; $6163: $48
	and b                                            ; $6164: $a0
	ld l, d                                          ; $6165: $6a
	ldh a, [$d3]                                     ; $6166: $f0 $d3
	ld b, h                                          ; $6168: $44
	ld e, l                                          ; $6169: $5d
	inc de                                           ; $616a: $13
	ld [hl], d                                       ; $616b: $72
	ldh a, [$e1]                                     ; $616c: $f0 $e1
	ld a, $3f                                        ; $616e: $3e $3f
	rst SubAFromDE                                          ; $6170: $df
	ld h, e                                          ; $6171: $63
	xor b                                            ; $6172: $a8
	db $ec                                           ; $6173: $ec
	or d                                             ; $6174: $b2

jr_092_6175:
	ld a, $3d                                        ; $6175: $3e $3d
	ld d, b                                          ; $6177: $50
	xor l                                            ; $6178: $ad
	ld [$a021], a                                    ; $6179: $ea $21 $a0
	cpl                                              ; $617c: $2f
	ld b, e                                          ; $617d: $43
	db $ec                                           ; $617e: $ec
	or d                                             ; $617f: $b2
	ld a, $3d                                        ; $6180: $3e $3d
	ld d, b                                          ; $6182: $50
	xor h                                            ; $6183: $ac
	ld l, e                                          ; $6184: $6b
	ld h, d                                          ; $6185: $62
	ld d, c                                          ; $6186: $51
	ld c, [hl]                                       ; $6187: $4e
	add b                                            ; $6188: $80
	ld c, a                                          ; $6189: $4f
	ld d, a                                          ; $618a: $57
	inc de                                           ; $618b: $13
	ld a, [hl-]                                      ; $618c: $3a
	ld b, c                                          ; $618d: $41

jr_092_618e:
	ld b, h                                          ; $618e: $44
	ld e, a                                          ; $618f: $5f
	add hl, sp                                       ; $6190: $39
	and c                                            ; $6191: $a1
	db $ed                                           ; $6192: $ed
	ld e, [hl]                                       ; $6193: $5e
	inc [hl]                                         ; $6194: $34
	db $eb                                           ; $6195: $eb
	ld d, e                                          ; $6196: $53
	ld h, e                                          ; $6197: $63
	and b                                            ; $6198: $a0
	ld d, h                                          ; $6199: $54
	ld b, c                                          ; $619a: $41
	ld a, [hl-]                                      ; $619b: $3a
	db $f4                                           ; $619c: $f4
	or c                                             ; $619d: $b1
	ld d, e                                          ; $619e: $53
	rst FarCall                                          ; $619f: $f7
	ld sp, $f04e                                     ; $61a0: $31 $4e $f0
	sbc c                                            ; $61a3: $99
	sub b                                            ; $61a4: $90
	ld h, d                                          ; $61a5: $62
	inc de                                           ; $61a6: $13
	xor $2b                                          ; $61a7: $ee $2b
	ld a, $3f                                        ; $61a9: $3e $3f
	ld c, [hl]                                       ; $61ab: $4e
	inc a                                            ; $61ac: $3c
	ld d, b                                          ; $61ad: $50
	xor h                                            ; $61ae: $ac
	ld e, d                                          ; $61af: $5a
	ld b, c                                          ; $61b0: $41
	ld e, d                                          ; $61b1: $5a
	ld b, c                                          ; $61b2: $41
	di                                               ; $61b3: $f3
	dec de                                           ; $61b4: $1b
	pop af                                           ; $61b5: $f1
	ld [hl], d                                       ; $61b6: $72
	ld b, a                                          ; $61b7: $47
	ld a, [hl-]                                      ; $61b8: $3a
	ld c, [hl]                                       ; $61b9: $4e
	ld b, d                                          ; $61ba: $42
	ld b, l                                          ; $61bb: $45
	and b                                            ; $61bc: $a0
	cpl                                              ; $61bd: $2f
	ld b, e                                          ; $61be: $43
	pop af                                           ; $61bf: $f1
	add d                                            ; $61c0: $82
	inc a                                            ; $61c1: $3c
	ld b, a                                          ; $61c2: $47
	inc [hl]                                         ; $61c3: $34
	ld d, h                                          ; $61c4: $54
	ld b, d                                          ; $61c5: $42
	ldh a, [$ed]                                     ; $61c6: $f0 $ed
	ld e, e                                          ; $61c8: $5b
	ld d, [hl]                                       ; $61c9: $56
	inc de                                           ; $61ca: $13
	pop af                                           ; $61cb: $f1
	ld [hl], d                                       ; $61cc: $72
	ld d, e                                          ; $61cd: $53
	rst FarCall                                          ; $61ce: $f7
	ld sp, $3c4e                                     ; $61cf: $31 $4e $3c
	ld c, a                                          ; $61d2: $4f
	inc de                                           ; $61d3: $13
	ld a, $4d                                        ; $61d4: $3e $4d
	ld a, [hl-]                                      ; $61d6: $3a
	jr c, jr_092_6236                                ; $61d7: $38 $5d

	ld e, d                                          ; $61d9: $5a
	ld c, b                                          ; $61da: $48
	and b                                            ; $61db: $a0
	ld l, a                                          ; $61dc: $6f
	ld b, d                                          ; $61dd: $42
	sbc [hl]                                         ; $61de: $9e
	ld c, d                                          ; $61df: $4a
	ld c, e                                          ; $61e0: $4b
	inc de                                           ; $61e1: $13
	ldh a, [hDisp0_SCX]                                     ; $61e2: $f0 $84
	ldh a, [$0d]                                     ; $61e4: $f0 $0d
	ld c, c                                          ; $61e6: $49
	ld d, h                                          ; $61e7: $54
	ld b, c                                          ; $61e8: $41
	ld a, [hl-]                                      ; $61e9: $3a
	ldh a, [$ed]                                     ; $61ea: $f0 $ed
	ld h, d                                          ; $61ec: $62
	inc de                                           ; $61ed: $13
	xor $2b                                          ; $61ee: $ee $2b
	ld a, $3a                                        ; $61f0: $3e $3a
	jr c, jr_092_6248                                ; $61f2: $38 $54

	ld c, c                                          ; $61f4: $49
	ld c, h                                          ; $61f5: $4c
	xor l                                            ; $61f6: $ad
	ld [$a021], a                                    ; $61f7: $ea $21 $a0
	cpl                                              ; $61fa: $2f
	ld b, e                                          ; $61fb: $43
	xor $2b                                          ; $61fc: $ee $2b
	ld a, $3d                                        ; $61fe: $3e $3d
	ld d, b                                          ; $6200: $50
	xor h                                            ; $6201: $ac
	ld l, e                                          ; $6202: $6b
	ld h, d                                          ; $6203: $62
	ld e, b                                          ; $6204: $58
	ld c, l                                          ; $6205: $4d
	ld c, [hl]                                       ; $6206: $4e
	ld a, [hl-]                                      ; $6207: $3a
	ld b, d                                          ; $6208: $42
	inc a                                            ; $6209: $3c
	ld a, [hl-]                                      ; $620a: $3a
	ld c, b                                          ; $620b: $48
	and c                                            ; $620c: $a1
	cpl                                              ; $620d: $2f
	ld b, e                                          ; $620e: $43
	ld e, [hl]                                       ; $620f: $5e
	dec sp                                           ; $6210: $3b
	ld c, b                                          ; $6211: $48
	ld [hl], $17                                     ; $6212: $36 $17
	ld [hl-], a                                      ; $6214: $32
	db $ec                                           ; $6215: $ec
	ldh [rHDMA3], a                                  ; $6216: $e0 $53
	ld d, h                                          ; $6218: $54
	ld b, c                                          ; $6219: $41
	ld a, [hl-]                                      ; $621a: $3a
	ld d, h                                          ; $621b: $54
	ld c, c                                          ; $621c: $49
	inc de                                           ; $621d: $13
	add d                                            ; $621e: $82
	add hl, sp                                       ; $621f: $39
	ld a, [hl-]                                      ; $6220: $3a
	ld b, c                                          ; $6221: $41
	ccf                                              ; $6222: $3f
	ld c, b                                          ; $6223: $48
	and e                                            ; $6224: $a3
	ld b, [hl]                                       ; $6225: $46
	dec sp                                           ; $6226: $3b
	inc [hl]                                         ; $6227: $34
	ldh a, [$d8]                                     ; $6228: $f0 $d8
	ld d, b                                          ; $622a: $50
	ld [hl], c                                       ; $622b: $71
	jr c, jr_092_626b                                ; $622c: $38 $3d

	ld h, e                                          ; $622e: $63
	xor b                                            ; $622f: $a8
	ldh a, [$99]                                     ; $6230: $f0 $99
	sub b                                            ; $6232: $90
	ld b, a                                          ; $6233: $47
	ld b, l                                          ; $6234: $45
	ld c, [hl]                                       ; $6235: $4e

jr_092_6236:
	inc [hl]                                         ; $6236: $34
	ldh a, [c]                                       ; $6237: $f2
	di                                               ; $6238: $f3
	db $f4                                           ; $6239: $f4
	or c                                             ; $623a: $b1
	ldh a, [$a5]                                     ; $623b: $f0 $a5
	ldh a, [$fc]                                     ; $623d: $f0 $fc
	inc de                                           ; $623f: $13
	ld c, c                                          ; $6240: $49
	jr c, jr_092_627c                                ; $6241: $38 $39

	ld b, d                                          ; $6243: $42
	ld c, a                                          ; $6244: $4f

jr_092_6245:
	jr c, jr_092_627f                                ; $6245: $38 $38

	ld h, e                                          ; $6247: $63

jr_092_6248:
	ld c, h                                          ; $6248: $4c
	and b                                            ; $6249: $a0
	cpl                                              ; $624a: $2f
	ld b, e                                          ; $624b: $43
	ld e, [hl]                                       ; $624c: $5e
	dec sp                                           ; $624d: $3b
	inc [hl]                                         ; $624e: $34
	ld l, e                                          ; $624f: $6b
	ld b, b                                          ; $6250: $40
	ld c, l                                          ; $6251: $4d
	and c                                            ; $6252: $a1
	jr c, jr_092_628d                                ; $6253: $38 $38

	xor $2b                                          ; $6255: $ee $2b
	ld c, e                                          ; $6257: $4b
	inc de                                           ; $6258: $13
	ld [$536b], a                                    ; $6259: $ea $6b $53
	inc de                                           ; $625c: $13
	ldh a, [$d8]                                     ; $625d: $f0 $d8
	ld d, b                                          ; $625f: $50
	ld [hl], c                                       ; $6260: $71
	ld d, l                                          ; $6261: $55
	ld h, e                                          ; $6262: $63
	ld c, h                                          ; $6263: $4c
	and b                                            ; $6264: $a0
	cpl                                              ; $6265: $2f
	ld b, e                                          ; $6266: $43
	ld [$3b6b], a                                    ; $6267: $ea $6b $3b
	ccf                                              ; $626a: $3f

jr_092_626b:
	xor h                                            ; $626b: $ac
	ld l, d                                          ; $626c: $6a
	ld b, d                                          ; $626d: $42
	ldh a, [c]                                       ; $626e: $f2
	di                                               ; $626f: $f3

jr_092_6270:
	db $f4                                           ; $6270: $f4
	or c                                             ; $6271: $b1
	ld c, c                                          ; $6272: $49
	inc a                                            ; $6273: $3c
	jr c, jr_092_62af                                ; $6274: $38 $39

	ld c, b                                          ; $6276: $48
	and b                                            ; $6277: $a0
	pop af                                           ; $6278: $f1
	ld h, [hl]                                       ; $6279: $66
	jr c, @+$41                                      ; $627a: $38 $3f

jr_092_627c:
	dec a                                            ; $627c: $3d
	ld h, e                                          ; $627d: $63
	ld b, l                                          ; $627e: $45

jr_092_627f:
	and b                                            ; $627f: $a0
	cpl                                              ; $6280: $2f
	ld b, e                                          ; $6281: $43
	ld b, [hl]                                       ; $6282: $46
	dec sp                                           ; $6283: $3b
	inc [hl]                                         ; $6284: $34
	db $ec                                           ; $6285: $ec
	ldh [$a8], a                                     ; $6286: $e0 $a8
	ld [$a81f], a                                    ; $6288: $ea $1f $a8
	db $eb                                           ; $628b: $eb
	ld d, b                                          ; $628c: $50

jr_092_628d:
	and c                                            ; $628d: $a1
	cpl                                              ; $628e: $2f
	ld b, e                                          ; $628f: $43
	db $ec                                           ; $6290: $ec
	ld b, a                                          ; $6291: $47
	db $ec                                           ; $6292: $ec
	ld hl, $ec13                                     ; $6293: $21 $13 $ec
	ldh [$ec], a                                     ; $6296: $e0 $ec
	inc hl                                           ; $6298: $23
	xor b                                            ; $6299: $a8
	pop af                                           ; $629a: $f1
	ld h, [hl]                                       ; $629b: $66
	ld e, h                                          ; $629c: $5c
	ld b, a                                          ; $629d: $47
	ld a, b                                          ; $629e: $78
	ccf                                              ; $629f: $3f
	dec a                                            ; $62a0: $3d
	ld l, h                                          ; $62a1: $6c
	dec a                                            ; $62a2: $3d
	jr c, jr_092_6245                                ; $62a3: $38 $a0

	cpl                                              ; $62a5: $2f
	ld b, e                                          ; $62a6: $43
	ld b, [hl]                                       ; $62a7: $46
	dec sp                                           ; $62a8: $3b
	inc [hl]                                         ; $62a9: $34
	db $ec                                           ; $62aa: $ec
	ldh [$a8], a                                     ; $62ab: $e0 $a8
	ld b, b                                          ; $62ad: $40
	ld b, c                                          ; $62ae: $41

jr_092_62af:
	ld a, [hl-]                                      ; $62af: $3a
	ld c, c                                          ; $62b0: $49
	ld d, h                                          ; $62b1: $54
	ld e, a                                          ; $62b2: $5f
	ld c, d                                          ; $62b3: $4a
	xor h                                            ; $62b4: $ac
	jr c, jr_092_62f2                                ; $62b5: $38 $3b

	dec a                                            ; $62b7: $3d
	jr c, jr_092_6325                                ; $62b8: $38 $6b

	ld a, $3f                                        ; $62ba: $3e $3f
	ld c, [hl]                                       ; $62bc: $4e
	ld b, d                                          ; $62bd: $42
	and c                                            ; $62be: $a1
	jr c, jr_092_631e                                ; $62bf: $38 $5d

	ld a, [hl-]                                      ; $62c1: $3a
	jr c, jr_092_6270                                ; $62c2: $38 $ac

	ld [hl], d                                       ; $62c4: $72
	add b                                            ; $62c5: $80
	inc a                                            ; $62c6: $3c
	dec sp                                           ; $62c7: $3b
	dec a                                            ; $62c8: $3d
	and b                                            ; $62c9: $a0
	cpl                                              ; $62ca: $2f
	ld b, e                                          ; $62cb: $43
	ld [hl], d                                       ; $62cc: $72
	add b                                            ; $62cd: $80
	inc a                                            ; $62ce: $3c
	dec sp                                           ; $62cf: $3b
	dec a                                            ; $62d0: $3d
	xor c                                            ; $62d1: $a9
	ld l, e                                          ; $62d2: $6b
	ld d, e                                          ; $62d3: $53
	and c                                            ; $62d4: $a1
	ld l, e                                          ; $62d5: $6b
	ld c, d                                          ; $62d6: $4a
	ld c, a                                          ; $62d7: $4f
	jr c, jr_092_6312                                ; $62d8: $38 $38

	ld c, d                                          ; $62da: $4a
	ld a, $66                                        ; $62db: $3e $66
	add hl, sp                                       ; $62dd: $39
	xor b                                            ; $62de: $a8
	ld e, b                                          ; $62df: $58
	ld b, l                                          ; $62e0: $45
	ld a, [hl-]                                      ; $62e1: $3a
	ld d, b                                          ; $62e2: $50
	and b                                            ; $62e3: $a0
	cpl                                              ; $62e4: $2f
	ld b, e                                          ; $62e5: $43
	ld l, e                                          ; $62e6: $6b
	ld a, $ec                                        ; $62e7: $3e $ec
	add hl, de                                       ; $62e9: $19
	ld e, a                                          ; $62ea: $5f
	add hl, sp                                       ; $62eb: $39
	and c                                            ; $62ec: $a1
	add hl, bc                                       ; $62ed: $09
	cpl                                              ; $62ee: $2f
	ld b, e                                          ; $62ef: $43
	ld e, b                                          ; $62f0: $58
	ccf                                              ; $62f1: $3f

jr_092_62f2:
	xor h                                            ; $62f2: $ac
	xor $1d                                          ; $62f3: $ee $1d
	ld c, a                                          ; $62f5: $4f
	ld a, $3d                                        ; $62f6: $3e $3d
	ld d, h                                          ; $62f8: $54
	ld c, c                                          ; $62f9: $49
	ld b, h                                          ; $62fa: $44
	ld a, $ac                                        ; $62fb: $3e $ac
	ldh a, [$aa]                                     ; $62fd: $f0 $aa
	adc c                                            ; $62ff: $89
	adc a                                            ; $6300: $8f
	ldh a, [$5a]                                     ; $6301: $f0 $5a
	ld h, a                                          ; $6303: $67
	ld d, l                                          ; $6304: $55
	inc a                                            ; $6305: $3c
	and b                                            ; $6306: $a0
	ld b, [hl]                                       ; $6307: $46
	dec sp                                           ; $6308: $3b
	inc [hl]                                         ; $6309: $34
	ld a, b                                          ; $630a: $78
	ldh [$a0], a                                     ; $630b: $e0 $a0
	cpl                                              ; $630d: $2f
	ld b, e                                          ; $630e: $43
	ld b, b                                          ; $630f: $40
	ld c, l                                          ; $6310: $4d
	dec sp                                           ; $6311: $3b

jr_092_6312:
	ccf                                              ; $6312: $3f
	xor h                                            ; $6313: $ac
	ld d, c                                          ; $6314: $51
	ld [hl], b                                       ; $6315: $70
	jr c, jr_092_6359                                ; $6316: $38 $41

	db $ec                                           ; $6318: $ec
	ret c                                            ; $6319: $d8

	xor c                                            ; $631a: $a9
	ld l, [hl]                                       ; $631b: $6e
	dec sp                                           ; $631c: $3b
	ccf                                              ; $631d: $3f

jr_092_631e:
	ld l, h                                          ; $631e: $6c
	ccf                                              ; $631f: $3f
	db $ec                                           ; $6320: $ec
	ld a, [bc]                                       ; $6321: $0a
	and c                                            ; $6322: $a1
	ld b, b                                          ; $6323: $40
	add hl, sp                                       ; $6324: $39

jr_092_6325:
	inc [hl]                                         ; $6325: $34
	db $eb                                           ; $6326: $eb
	xor b                                            ; $6327: $a8
	and b                                            ; $6328: $a0
	ld a, b                                          ; $6329: $78
	ldh [$a0], a                                     ; $632a: $e0 $a0
	cpl                                              ; $632c: $2f
	ld b, e                                          ; $632d: $43
	ldh a, [rAUD4ENV]                                ; $632e: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6330: $f0 $23
	ld b, b                                          ; $6332: $40
	add hl, sp                                       ; $6333: $39
	ld b, h                                          ; $6334: $44
	ld c, h                                          ; $6335: $4c
	xor b                                            ; $6336: $a8
	ld l, [hl]                                       ; $6337: $6e
	dec sp                                           ; $6338: $3b
	ccf                                              ; $6339: $3f
	ld l, h                                          ; $633a: $6c
	ccf                                              ; $633b: $3f
	db $ec                                           ; $633c: $ec
	ld a, [bc]                                       ; $633d: $0a
	and c                                            ; $633e: $a1
	ld b, b                                          ; $633f: $40
	add hl, sp                                       ; $6340: $39
	inc [hl]                                         ; $6341: $34
	ld e, b                                          ; $6342: $58
	ld b, l                                          ; $6343: $45
	ld a, [hl-]                                      ; $6344: $3a
	ld d, b                                          ; $6345: $50
	and b                                            ; $6346: $a0
	ld a, b                                          ; $6347: $78
	dec a                                            ; $6348: $3d
	ld b, d                                          ; $6349: $42
	ld c, h                                          ; $634a: $4c
	and b                                            ; $634b: $a0
	ld e, b                                          ; $634c: $58
	ld b, l                                          ; $634d: $45
	ld a, [hl-]                                      ; $634e: $3a
	ld d, b                                          ; $634f: $50
	and b                                            ; $6350: $a0
	cpl                                              ; $6351: $2f
	ld b, e                                          ; $6352: $43
	db $ec                                           ; $6353: $ec
	ldh [$eb], a                                     ; $6354: $e0 $eb
	inc sp                                           ; $6356: $33
	xor b                                            ; $6357: $a8
	ld l, e                                          ; $6358: $6b

jr_092_6359:
	ldh a, [$cf]                                     ; $6359: $f0 $cf
	ld b, e                                          ; $635b: $43
	jp hl                                            ; $635c: $e9


	sub b                                            ; $635d: $90
	ldh a, [$eb]                                     ; $635e: $f0 $eb
	inc de                                           ; $6360: $13
	ld l, [hl]                                       ; $6361: $6e
	dec sp                                           ; $6362: $3b
	ccf                                              ; $6363: $3f
	ld l, h                                          ; $6364: $6c
	ld b, l                                          ; $6365: $45
	add hl, sp                                       ; $6366: $39
	inc a                                            ; $6367: $3c
	ld a, [hl-]                                      ; $6368: $3a
	and b                                            ; $6369: $a0
	cpl                                              ; $636a: $2f
	ld b, e                                          ; $636b: $43
	ld c, b                                          ; $636c: $48
	inc [hl]                                         ; $636d: $34
	ld c, c                                          ; $636e: $49
	ld [hl], a                                       ; $636f: $77
	dec sp                                           ; $6370: $3b
	dec a                                            ; $6371: $3d
	ld e, l                                          ; $6372: $5d
	ld e, d                                          ; $6373: $5a
	xor b                                            ; $6374: $a8
	ld h, h                                          ; $6375: $64
	pop af                                           ; $6376: $f1
	call c, Call_092_4158                            ; $6377: $dc $58 $41
	ld d, e                                          ; $637a: $53
	ldh a, [c]                                       ; $637b: $f2
	dec a                                            ; $637c: $3d
	ld b, c                                          ; $637d: $41
	ld c, d                                          ; $637e: $4a
	jr c, jr_092_63c0                                ; $637f: $38 $3f

	inc de                                           ; $6381: $13
	ld c, d                                          ; $6382: $4a
	ld e, h                                          ; $6383: $5c
	ld b, b                                          ; $6384: $40
	add hl, sp                                       ; $6385: $39
	ld b, a                                          ; $6386: $47
	ld a, [hl-]                                      ; $6387: $3a
	jr c, jr_092_63c4                                ; $6388: $38 $3a

	and b                                            ; $638a: $a0
	cpl                                              ; $638b: $2f
	ld b, e                                          ; $638c: $43
	ld d, h                                          ; $638d: $54
	ld d, h                                          ; $638e: $54
	ld c, e                                          ; $638f: $4b
	xor h                                            ; $6390: $ac
	jp hl                                            ; $6391: $e9


	ld l, e                                          ; $6392: $6b
	and c                                            ; $6393: $a1
	db $eb                                           ; $6394: $eb
	ld d, l                                          ; $6395: $55
	ldh a, [$6d]                                     ; $6396: $f0 $6d
	ld e, c                                          ; $6398: $59
	ldh a, [$27]                                     ; $6399: $f0 $27
	ld b, l                                          ; $639b: $45
	and b                                            ; $639c: $a0
	cpl                                              ; $639d: $2f
	ld b, e                                          ; $639e: $43
	ldh a, [$5a]                                     ; $639f: $f0 $5a
	add l                                            ; $63a1: $85
	inc [hl]                                         ; $63a2: $34
	ld e, d                                          ; $63a3: $5a
	ld b, c                                          ; $63a4: $41
	ld a, [hl-]                                      ; $63a5: $3a
	ldh a, [$6d]                                     ; $63a6: $f0 $6d
	ld e, c                                          ; $63a8: $59
	ldh a, [$27]                                     ; $63a9: $f0 $27
	and c                                            ; $63ab: $a1
	add c                                            ; $63ac: $81
	ld [hl], l                                       ; $63ad: $75
	ld a, l                                          ; $63ae: $7d
	pop af                                           ; $63af: $f1
	db $e3                                           ; $63b0: $e3
	ld e, c                                          ; $63b1: $59
	ld b, d                                          ; $63b2: $42
	inc de                                           ; $63b3: $13
	ld [$6218], a                                    ; $63b4: $ea $18 $62
	inc de                                           ; $63b7: $13
	pop af                                           ; $63b8: $f1
	rst JumpTable                                          ; $63b9: $c7
	ldh a, [hDisp0_WY]                                     ; $63ba: $f0 $88
	ld d, c                                          ; $63bc: $51
	ld c, [hl]                                       ; $63bd: $4e
	ld c, b                                          ; $63be: $48
	dec a                                            ; $63bf: $3d

jr_092_63c0:
	ld b, h                                          ; $63c0: $44
	ld b, b                                          ; $63c1: $40
	ld c, l                                          ; $63c2: $4d
	ld b, h                                          ; $63c3: $44

jr_092_63c4:
	ld e, l                                          ; $63c4: $5d
	ld b, l                                          ; $63c5: $45
	ld c, b                                          ; $63c6: $48
	and b                                            ; $63c7: $a0
	db $eb                                           ; $63c8: $eb
	inc [hl]                                         ; $63c9: $34
	ld h, e                                          ; $63ca: $63
	ld c, h                                          ; $63cb: $4c
	and b                                            ; $63cc: $a0
	cpl                                              ; $63cd: $2f
	ld b, e                                          ; $63ce: $43
	jp hl                                            ; $63cf: $e9


	ret z                                            ; $63d0: $c8

	ld a, d                                          ; $63d1: $7a
	ld c, [hl]                                       ; $63d2: $4e
	ld b, l                                          ; $63d3: $45
	and b                                            ; $63d4: $a0
	di                                               ; $63d5: $f3
	ld a, b                                          ; $63d6: $78
	pop af                                           ; $63d7: $f1
	ld c, e                                          ; $63d8: $4b
	ldh a, [$a3]                                     ; $63d9: $f0 $a3
	ld c, h                                          ; $63db: $4c
	ld c, b                                          ; $63dc: $48
	and b                                            ; $63dd: $a0
	cpl                                              ; $63de: $2f
	ld b, e                                          ; $63df: $43
	ld e, h                                          ; $63e0: $5c
	ld h, [hl]                                       ; $63e1: $66
	inc [hl]                                         ; $63e2: $34
	db $ed                                           ; $63e3: $ed
	ld d, a                                          ; $63e4: $57
	ret                                              ; $63e5: $c9


	inc de                                           ; $63e6: $13
	ldh a, [$75]                                     ; $63e7: $f0 $75
	adc h                                            ; $63e9: $8c
	ld d, e                                          ; $63ea: $53
	ld a, [hl]                                       ; $63eb: $7e
	ld d, l                                          ; $63ec: $55
	ld a, [hl-]                                      ; $63ed: $3a
	jr c, @+$3e                                      ; $63ee: $38 $3c

	ld a, [hl-]                                      ; $63f0: $3a
	dec [hl]                                         ; $63f1: $35
	ldh a, [rAUD3ENA]                                ; $63f2: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $63f4: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $63f6: $f0 $1a
	ld c, b                                          ; $63f8: $48
	and b                                            ; $63f9: $a0
	db $ec                                           ; $63fa: $ec
	add d                                            ; $63fb: $82
	ld b, a                                          ; $63fc: $47
	ld c, a                                          ; $63fd: $4f
	xor h                                            ; $63fe: $ac
	pop af                                           ; $63ff: $f1
	sbc l                                            ; $6400: $9d
	ld e, [hl]                                       ; $6401: $5e
	ld b, b                                          ; $6402: $40
	add hl, sp                                       ; $6403: $39
	ld b, a                                          ; $6404: $47
	db $ec                                           ; $6405: $ec
	dec bc                                           ; $6406: $0b
	and b                                            ; $6407: $a0
	ld d, d                                          ; $6408: $52
	inc [hl]                                         ; $6409: $34
	ld b, [hl]                                       ; $640a: $46
	ld a, [hl-]                                      ; $640b: $3a
	dec a                                            ; $640c: $3d
	ld b, d                                          ; $640d: $42
	ld [hl], l                                       ; $640e: $75
	pop af                                           ; $640f: $f1
	dec e                                            ; $6410: $1d
	ldh a, [$03]                                     ; $6411: $f0 $03
	ld e, e                                          ; $6413: $5b
	ld d, [hl]                                       ; $6414: $56
	inc de                                           ; $6415: $13
	ld b, b                                          ; $6416: $40
	ld c, l                                          ; $6417: $4d
	ld d, e                                          ; $6418: $53
	di                                               ; $6419: $f3
	rst $38                                          ; $641a: $ff
	ldh a, [$0d]                                     ; $641b: $f0 $0d
	ld c, h                                          ; $641d: $4c
	and b                                            ; $641e: $a0
	cpl                                              ; $641f: $2f
	ld b, e                                          ; $6420: $43
	ldh a, [$d8]                                     ; $6421: $f0 $d8
	inc [hl]                                         ; $6423: $34
	db $ec                                           ; $6424: $ec
	ldh [$37], a                                     ; $6425: $e0 $37
	inc de                                           ; $6427: $13
	ld c, a                                          ; $6428: $4f
	add hl, sp                                       ; $6429: $39
	ld l, l                                          ; $642a: $6d
	ldh a, [$d3]                                     ; $642b: $f0 $d3
	ld l, [hl]                                       ; $642d: $6e
	ld d, b                                          ; $642e: $50
	ld a, c                                          ; $642f: $79
	ccf                                              ; $6430: $3f
	ld d, l                                          ; $6431: $55
	ld c, l                                          ; $6432: $4d
	pop af                                           ; $6433: $f1
	dec [hl]                                         ; $6434: $35
	and d                                            ; $6435: $a2
	ld b, h                                          ; $6436: $44
	ld [hl], c                                       ; $6437: $71
	ld b, l                                          ; $6438: $45
	inc [hl]                                         ; $6439: $34
	ld d, h                                          ; $643a: $54
	ld c, l                                          ; $643b: $4d
	ld c, e                                          ; $643c: $4b
	inc de                                           ; $643d: $13
	ldh a, [c]                                       ; $643e: $f2
	dec hl                                           ; $643f: $2b
	pop af                                           ; $6440: $f1
	ei                                               ; $6441: $fb
	pop af                                           ; $6442: $f1
	ld [hl], d                                       ; $6443: $72
	ldh a, [$7f]                                     ; $6444: $f0 $7f
	ld h, d                                          ; $6446: $62
	pop af                                           ; $6447: $f1
	rst JumpTable                                          ; $6448: $c7
	ldh a, [hDisp0_WY]                                     ; $6449: $f0 $88
	ld d, c                                          ; $644b: $51
	ld c, [hl]                                       ; $644c: $4e
	ld b, c                                          ; $644d: $41
	ld b, h                                          ; $644e: $44
	inc a                                            ; $644f: $3c
	ld d, b                                          ; $6450: $50
	inc de                                           ; $6451: $13
	db $ed                                           ; $6452: $ed
	ld h, c                                          ; $6453: $61
	ld l, [hl]                                       ; $6454: $6e
	dec sp                                           ; $6455: $3b
	ccf                                              ; $6456: $3f
	ld c, a                                          ; $6457: $4f
	ldh a, [$cd]                                     ; $6458: $f0 $cd
	ld e, e                                          ; $645a: $5b
	ld b, l                                          ; $645b: $45
	and b                                            ; $645c: $a0
	db $ec                                           ; $645d: $ec
	sub $3b                                          ; $645e: $d6 $3b
	ccf                                              ; $6460: $3f
	ld c, c                                          ; $6461: $49
	ld d, h                                          ; $6462: $54
	ld e, a                                          ; $6463: $5f
	ld c, h                                          ; $6464: $4c
	and b                                            ; $6465: $a0
	cpl                                              ; $6466: $2f
	ld b, e                                          ; $6467: $43
	rst JumpTable                                          ; $6468: $c7
	and c                                            ; $6469: $a1
	ldh a, [rSCY]                                    ; $646a: $f0 $42
	ldh a, [rSCY]                                    ; $646c: $f0 $42
	ldh a, [rSCY]                                    ; $646e: $f0 $42
	inc [hl]                                         ; $6470: $34
	ld b, [hl]                                       ; $6471: $46
	ld a, [hl-]                                      ; $6472: $3a
	dec a                                            ; $6473: $3d
	ld b, d                                          ; $6474: $42
	ldh a, [rWY]                                     ; $6475: $f0 $4a
	ld e, c                                          ; $6477: $59
	ldh a, [rDIV]                                    ; $6478: $f0 $04
	ld c, e                                          ; $647a: $4b
	inc de                                           ; $647b: $13
	ldh a, [rOBP1]                                   ; $647c: $f0 $49
	ccf                                              ; $647e: $3f
	di                                               ; $647f: $f3
	call $f038                                       ; $6480: $cd $38 $f0
	ld a, $f0                                        ; $6483: $3e $f0
	ld bc, $633d                                     ; $6485: $01 $3d $63
	ld c, b                                          ; $6488: $48
	and b                                            ; $6489: $a0
	ld b, b                                          ; $648a: $40
	inc [hl]                                         ; $648b: $34
	ld b, b                                          ; $648c: $40
	ld b, c                                          ; $648d: $41
	ld a, [hl-]                                      ; $648e: $3a
	pop af                                           ; $648f: $f1
	or d                                             ; $6490: $b2
	pop af                                           ; $6491: $f1
	ld c, b                                          ; $6492: $48
	ld a, [hl-]                                      ; $6493: $3a
	ld c, b                                          ; $6494: $48
	and b                                            ; $6495: $a0
	cpl                                              ; $6496: $2f
	ld b, e                                          ; $6497: $43
	db $eb                                           ; $6498: $eb
	rst FarCall                                          ; $6499: $f7
	and c                                            ; $649a: $a1
	ld e, d                                          ; $649b: $5a
	add hl, sp                                       ; $649c: $39
	ld l, [hl]                                       ; $649d: $6e
	ld d, b                                          ; $649e: $50
	inc de                                           ; $649f: $13
	ldh a, [c]                                       ; $64a0: $f2
	inc sp                                           ; $64a1: $33
	ld c, l                                          ; $64a2: $4d
	ccf                                              ; $64a3: $3f
	jr c, jr_092_64f4                                ; $64a4: $38 $4e

	ld b, l                                          ; $64a6: $45
	add hl, sp                                       ; $64a7: $39
	ld c, h                                          ; $64a8: $4c
	xor b                                            ; $64a9: $a8
	ld l, a                                          ; $64aa: $6f
	ld c, c                                          ; $64ab: $49
	ld a, $3d                                        ; $64ac: $3e $3d
	ld d, h                                          ; $64ae: $54
	ld c, c                                          ; $64af: $49
	ld d, e                                          ; $64b0: $53
	ld c, b                                          ; $64b1: $48
	and b                                            ; $64b2: $a0
	pop de                                           ; $64b3: $d1
	inc [hl]                                         ; $64b4: $34
	ld l, [hl]                                       ; $64b5: $6e
	ld c, [hl]                                       ; $64b6: $4e
	db $ec                                           ; $64b7: $ec
	ret c                                            ; $64b8: $d8

	and b                                            ; $64b9: $a0
	cpl                                              ; $64ba: $2f
	ld b, e                                          ; $64bb: $43
	db $ec                                           ; $64bc: $ec
	ld d, $a1                                        ; $64bd: $16 $a1
	ld l, d                                          ; $64bf: $6a
	ld b, d                                          ; $64c0: $42
	add c                                            ; $64c1: $81
	ld [hl], l                                       ; $64c2: $75
	ld a, l                                          ; $64c3: $7d
	ld c, d                                          ; $64c4: $4a
	xor h                                            ; $64c5: $ac
	ld b, [hl]                                       ; $64c6: $46
	ld a, [hl-]                                      ; $64c7: $3a
	dec a                                            ; $64c8: $3d
	ld b, d                                          ; $64c9: $42
	ldh a, [rWY]                                     ; $64ca: $f0 $4a
	ld e, c                                          ; $64cc: $59
	ldh a, [rDIV]                                    ; $64cd: $f0 $04
	ld c, e                                          ; $64cf: $4b
	inc de                                           ; $64d0: $13
	ldh a, [rOBP1]                                   ; $64d1: $f0 $49
	ccf                                              ; $64d3: $3f
	di                                               ; $64d4: $f3
	call $f038                                       ; $64d5: $cd $38 $f0
	ld a, $f0                                        ; $64d8: $3e $f0
	ld bc, $633d                                     ; $64da: $01 $3d $63
	ld c, b                                          ; $64dd: $48
	and b                                            ; $64de: $a0
	jp hl                                            ; $64df: $e9


	ld l, h                                          ; $64e0: $6c
	xor h                                            ; $64e1: $ac
	db $eb                                           ; $64e2: $eb
	ld d, l                                          ; $64e3: $55
	ld h, e                                          ; $64e4: $63
	ld b, l                                          ; $64e5: $45
	and b                                            ; $64e6: $a0
	ld b, l                                          ; $64e7: $45
	ld d, l                                          ; $64e8: $55
	ldh a, [$5f]                                     ; $64e9: $f0 $5f
	ldh a, [$d7]                                     ; $64eb: $f0 $d7
	ld d, d                                          ; $64ed: $52
	ld c, d                                          ; $64ee: $4a
	inc de                                           ; $64ef: $13
	ld [hl], d                                       ; $64f0: $72
	ccf                                              ; $64f1: $3f
	ld d, b                                          ; $64f2: $50
	ld c, l                                          ; $64f3: $4d

jr_092_64f4:
	ldh [$a0], a                                     ; $64f4: $e0 $a0
	cpl                                              ; $64f6: $2f
	ld b, e                                          ; $64f7: $43
	db $ec                                           ; $64f8: $ec
	ldh [rHDMA3], a                                  ; $64f9: $e0 $53
	inc de                                           ; $64fb: $13
	sub h                                            ; $64fc: $94
	ccf                                              ; $64fd: $3f
	jr c, jr_092_653d                                ; $64fe: $38 $3d

	inc a                                            ; $6500: $3c
	ld d, b                                          ; $6501: $50
	ld c, h                                          ; $6502: $4c
	and b                                            ; $6503: $a0
	ld a, [hl-]                                      ; $6504: $3a
	inc [hl]                                         ; $6505: $34
	ld l, e                                          ; $6506: $6b
	add d                                            ; $6507: $82
	dec sp                                           ; $6508: $3b
	ccf                                              ; $6509: $3f
	ld c, [hl]                                       ; $650a: $4e
	ld b, d                                          ; $650b: $42
	ld c, b                                          ; $650c: $48
	and b                                            ; $650d: $a0
	cpl                                              ; $650e: $2f
	ld b, e                                          ; $650f: $43
	ld d, c                                          ; $6510: $51
	ld [hl], b                                       ; $6511: $70
	ld d, l                                          ; $6512: $55
	inc [hl]                                         ; $6513: $34
	db $ed                                           ; $6514: $ed
	ld c, c                                          ; $6515: $49
	ld b, h                                          ; $6516: $44
	dec sp                                           ; $6517: $3b
	dec a                                            ; $6518: $3d
	ld b, l                                          ; $6519: $45
	and b                                            ; $651a: $a0
	ld b, b                                          ; $651b: $40
	ld b, c                                          ; $651c: $41
	ld a, [hl-]                                      ; $651d: $3a
	sbc d                                            ; $651e: $9a
	ld c, e                                          ; $651f: $4b
	ldh a, [$34]                                     ; $6520: $f0 $34
	ld b, a                                          ; $6522: $47
	inc de                                           ; $6523: $13
	ld e, d                                          ; $6524: $5a
	add hl, sp                                       ; $6525: $39
	ld c, d                                          ; $6526: $4a
	ld c, a                                          ; $6527: $4f
	jr c, jr_092_6562                                ; $6528: $38 $38

	ld b, d                                          ; $652a: $42
	ld b, l                                          ; $652b: $45
	xor b                                            ; $652c: $a8
	ld l, a                                          ; $652d: $6f
	ld b, d                                          ; $652e: $42
	ld [hl], l                                       ; $652f: $75
	ld e, c                                          ; $6530: $59
	ldh a, [c]                                       ; $6531: $f2
	jr @+$5b                                         ; $6532: $18 $59

	ld h, d                                          ; $6534: $62
	pop af                                           ; $6535: $f1
	sbc l                                            ; $6536: $9d
	ld e, [hl]                                       ; $6537: $5e
	ld a, e                                          ; $6538: $7b
	ld c, b                                          ; $6539: $48
	and b                                            ; $653a: $a0
	cpl                                              ; $653b: $2f
	ld b, e                                          ; $653c: $43

jr_092_653d:
	db $ec                                           ; $653d: $ec
	ldh [rSCY], a                                    ; $653e: $e0 $42
	inc de                                           ; $6540: $13
	ld [hl], l                                       ; $6541: $75
	ld e, c                                          ; $6542: $59
	ldh a, [c]                                       ; $6543: $f2
	jr jr_092_659f                                   ; $6544: $18 $59

	ld h, d                                          ; $6546: $62
	pop af                                           ; $6547: $f1
	sbc l                                            ; $6548: $9d
	ld e, [hl]                                       ; $6549: $5e
	ld a, e                                          ; $654a: $7b
	and c                                            ; $654b: $a1
	ld a, [$5889]                                    ; $654c: $fa $89 $58
	pop af                                           ; $654f: $f1
	pop de                                           ; $6550: $d1
	pop af                                           ; $6551: $f1
	sbc [hl]                                         ; $6552: $9e
	ldh a, [$7b]                                     ; $6553: $f0 $7b
	ld h, l                                          ; $6555: $65
	ldh a, [$2b]                                     ; $6556: $f0 $2b
	ld b, d                                          ; $6558: $42
	inc de                                           ; $6559: $13
	db $ed                                           ; $655a: $ed
	db $fd                                           ; $655b: $fd
	ld h, d                                          ; $655c: $62
	pop af                                           ; $655d: $f1
	inc d                                            ; $655e: $14
	ld d, a                                          ; $655f: $57
	push af                                          ; $6560: $f5
	ld l, h                                          ; $6561: $6c

jr_092_6562:
	ld d, l                                          ; $6562: $55
	ld d, h                                          ; $6563: $54
	ld c, c                                          ; $6564: $49
	ld d, e                                          ; $6565: $53
	inc de                                           ; $6566: $13
	sub h                                            ; $6567: $94
	ld a, b                                          ; $6568: $78
	dec a                                            ; $6569: $3d
	ld b, d                                          ; $656a: $42
	ld b, a                                          ; $656b: $47
	and b                                            ; $656c: $a0
	cpl                                              ; $656d: $2f
	ld b, e                                          ; $656e: $43
	ld b, b                                          ; $656f: $40
	ld c, l                                          ; $6570: $4d
	dec sp                                           ; $6571: $3b
	ccf                                              ; $6572: $3f
	xor h                                            ; $6573: $ac
	ld l, d                                          ; $6574: $6a
	ldh a, [$d3]                                     ; $6575: $f0 $d3
	ld b, d                                          ; $6577: $42
	xor $2a                                          ; $6578: $ee $2a
	ld c, c                                          ; $657a: $49
	inc de                                           ; $657b: $13
	db $ed                                           ; $657c: $ed
	ld a, a                                          ; $657d: $7f
	ld a, [hl-]                                      ; $657e: $3a
	jr c, jr_092_65c2                                ; $657f: $38 $41

	ld e, e                                          ; $6581: $5b
	ld d, [hl]                                       ; $6582: $56
	ld c, b                                          ; $6583: $48
	and b                                            ; $6584: $a0
	ld b, [hl]                                       ; $6585: $46
	ld [hl], h                                       ; $6586: $74
	xor h                                            ; $6587: $ac
	pop af                                           ; $6588: $f1
	add hl, hl                                       ; $6589: $29
	ei                                               ; $658a: $fb
	cpl                                              ; $658b: $2f
	ldh a, [$d0]                                     ; $658c: $f0 $d0
	ldh a, [c]                                       ; $658e: $f2
	adc [hl]                                         ; $658f: $8e
	ld d, e                                          ; $6590: $53
	dec a                                            ; $6591: $3d
	ld d, d                                          ; $6592: $52
	ld c, [hl]                                       ; $6593: $4e
	ld h, e                                          ; $6594: $63
	and b                                            ; $6595: $a0
	cpl                                              ; $6596: $2f
	ld b, e                                          ; $6597: $43
	db $ed                                           ; $6598: $ed
	ld b, l                                          ; $6599: $45
	xor h                                            ; $659a: $ac
	jp hl                                            ; $659b: $e9


	inc l                                            ; $659c: $2c
	and b                                            ; $659d: $a0
	ld a, b                                          ; $659e: $78

jr_092_659f:
	ldh a, [rAUD1HIGH]                               ; $659f: $f0 $14
	ld b, l                                          ; $65a1: $45
	xor b                                            ; $65a2: $a8
	ld a, b                                          ; $65a3: $78
	ldh a, [rAUD1HIGH]                               ; $65a4: $f0 $14
	ld d, h                                          ; $65a6: $54
	ld b, b                                          ; $65a7: $40
	ld [hl], d                                       ; $65a8: $72
	ccf                                              ; $65a9: $3f
	ld a, [hl-]                                      ; $65aa: $3a
	ld e, b                                          ; $65ab: $58
	jr c, @-$5e                                      ; $65ac: $38 $a0

	jp hl                                            ; $65ae: $e9


	ld l, h                                          ; $65af: $6c
	xor h                                            ; $65b0: $ac
	ldh a, [$34]                                     ; $65b1: $f0 $34
	ld b, a                                          ; $65b3: $47

jr_092_65b4:
	ld [hl], d                                       ; $65b4: $72
	ld a, [hl-]                                      ; $65b5: $3a
	ld d, l                                          ; $65b6: $55
	ccf                                              ; $65b7: $3f
	ld c, a                                          ; $65b8: $4f
	ret nc                                           ; $65b9: $d0

	and b                                            ; $65ba: $a0
	ld d, d                                          ; $65bb: $52
	ld b, h                                          ; $65bc: $44
	inc [hl]                                         ; $65bd: $34
	jr c, @+$3f                                      ; $65be: $38 $3d

	ld b, d                                          ; $65c0: $42
	and c                                            ; $65c1: $a1

jr_092_65c2:
	cpl                                              ; $65c2: $2f
	ld b, e                                          ; $65c3: $43
	ld d, c                                          ; $65c4: $51
	ld [hl], b                                       ; $65c5: $70
	ld d, l                                          ; $65c6: $55
	inc [hl]                                         ; $65c7: $34
	db $ed                                           ; $65c8: $ed
	ld c, c                                          ; $65c9: $49
	ld b, h                                          ; $65ca: $44
	dec sp                                           ; $65cb: $3b
	dec a                                            ; $65cc: $3d
	ld c, h                                          ; $65cd: $4c
	and b                                            ; $65ce: $a0
	ld l, e                                          ; $65cf: $6b
	ld d, e                                          ; $65d0: $53
	and c                                            ; $65d1: $a1
	cpl                                              ; $65d2: $2f
	ld b, e                                          ; $65d3: $43
	ld l, e                                          ; $65d4: $6b
	ld d, e                                          ; $65d5: $53
	dec sp                                           ; $65d6: $3b
	ccf                                              ; $65d7: $3f
	xor h                                            ; $65d8: $ac
	ld l, d                                          ; $65d9: $6a
	ld b, d                                          ; $65da: $42
	db $ec                                           ; $65db: $ec
	ldh a, [c]                                       ; $65dc: $f2
	ld d, e                                          ; $65dd: $53
	ld c, b                                          ; $65de: $48
	and b                                            ; $65df: $a0
	db $ec                                           ; $65e0: $ec
	db $d3                                           ; $65e1: $d3
	and c                                            ; $65e2: $a1
	cpl                                              ; $65e3: $2f
	ld b, e                                          ; $65e4: $43
	db $ec                                           ; $65e5: $ec
	db $d3                                           ; $65e6: $d3
	dec sp                                           ; $65e7: $3b
	ccf                                              ; $65e8: $3f
	ld c, b                                          ; $65e9: $48
	and b                                            ; $65ea: $a0
	db $ec                                           ; $65eb: $ec
	add hl, bc                                       ; $65ec: $09
	ld b, d                                          ; $65ed: $42
	ld [hl], l                                       ; $65ee: $75
	ld e, c                                          ; $65ef: $59
	ldh a, [c]                                       ; $65f0: $f2
	jr jr_092_664c                                   ; $65f1: $18 $59

	ld h, d                                          ; $65f3: $62
	inc de                                           ; $65f4: $13
	ld d, h                                          ; $65f5: $54
	ld b, c                                          ; $65f6: $41
	ld a, [hl-]                                      ; $65f7: $3a
	pop af                                           ; $65f8: $f1
	or d                                             ; $65f9: $b2
	pop af                                           ; $65fa: $f1
	ld c, b                                          ; $65fb: $48
	ldh a, [rSB]                                     ; $65fc: $f0 $01
	dec a                                            ; $65fe: $3d
	sbc d                                            ; $65ff: $9a
	ld b, a                                          ; $6600: $47
	ld a, $3c                                        ; $6601: $3e $3c
	inc de                                           ; $6603: $13
	pop af                                           ; $6604: $f1
	sbc l                                            ; $6605: $9d
	ld e, [hl]                                       ; $6606: $5e
	ld a, [hl-]                                      ; $6607: $3a
	jr c, jr_092_6644                                ; $6608: $38 $3a

	ld b, c                                          ; $660a: $41
	ccf                                              ; $660b: $3f
	and b                                            ; $660c: $a0
	cpl                                              ; $660d: $2f
	ld b, e                                          ; $660e: $43
	rst JumpTable                                          ; $660f: $c7
	xor l                                            ; $6610: $ad
	db $ed                                           ; $6611: $ed
	ld b, l                                          ; $6612: $45
	inc [hl]                                         ; $6613: $34

jr_092_6614:
	jp hl                                            ; $6614: $e9


	inc l                                            ; $6615: $2c
	and b                                            ; $6616: $a0
	jp hl                                            ; $6617: $e9


	ld l, h                                          ; $6618: $6c
	xor h                                            ; $6619: $ac
	ldh a, [$34]                                     ; $661a: $f0 $34
	ld b, a                                          ; $661c: $47
	ld [hl], d                                       ; $661d: $72
	ld a, [hl-]                                      ; $661e: $3a
	ld d, l                                          ; $661f: $55
	ccf                                              ; $6620: $3f
	ld c, a                                          ; $6621: $4f
	jr c, jr_092_665c                                ; $6622: $38 $38

	inc a                                            ; $6624: $3c
	ld d, b                                          ; $6625: $50
	and b                                            ; $6626: $a0
	ld d, h                                          ; $6627: $54
	add hl, sp                                       ; $6628: $39
	jr c, @+$3b                                      ; $6629: $38 $39

	add h                                            ; $662b: $84
	ld d, e                                          ; $662c: $53
	jr c, jr_092_667d                                ; $662d: $38 $4e

	inc a                                            ; $662f: $3c
	ld d, b                                          ; $6630: $50
	xor h                                            ; $6631: $ac
	jr c, jr_092_65b4                                ; $6632: $38 $80

	ld d, d                                          ; $6634: $52
	ld c, d                                          ; $6635: $4a
	ld c, a                                          ; $6636: $4f
	db $eb                                           ; $6637: $eb
	ld d, l                                          ; $6638: $55
	sbc d                                            ; $6639: $9a
	ld a, $3c                                        ; $663a: $3e $3c
	inc de                                           ; $663c: $13
	sub h                                            ; $663d: $94
	ld a, b                                          ; $663e: $78
	ld a, [hl-]                                      ; $663f: $3a
	jr c, jr_092_6684                                ; $6640: $38 $42

	ld b, l                                          ; $6642: $45
	and b                                            ; $6643: $a0

jr_092_6644:
	cpl                                              ; $6644: $2f
	ld b, e                                          ; $6645: $43
	xor $10                                          ; $6646: $ee $10
	xor b                                            ; $6648: $a8
	db $ed                                           ; $6649: $ed
	ld b, l                                          ; $664a: $45
	inc [hl]                                         ; $664b: $34

jr_092_664c:
	jp hl                                            ; $664c: $e9


	inc l                                            ; $664d: $2c
	and b                                            ; $664e: $a0
	cpl                                              ; $664f: $2f
	ld b, e                                          ; $6650: $43

jr_092_6651:
	db $ec                                           ; $6651: $ec
	ldh [$eb], a                                     ; $6652: $e0 $eb
	inc sp                                           ; $6654: $33
	xor b                                            ; $6655: $a8
	db $ec                                           ; $6656: $ec
	ldh a, [c]                                       ; $6657: $f2
	ld c, d                                          ; $6658: $4a
	ld c, a                                          ; $6659: $4f
	ld [hl], d                                       ; $665a: $72
	ccf                                              ; $665b: $3f

jr_092_665c:
	ld h, a                                          ; $665c: $67
	ld d, l                                          ; $665d: $55
	inc a                                            ; $665e: $3c
	ld a, [hl-]                                      ; $665f: $3a
	and b                                            ; $6660: $a0
	cpl                                              ; $6661: $2f
	ld b, e                                          ; $6662: $43
	ldh a, [$80]                                     ; $6663: $f0 $80
	ldh a, [$c5]                                     ; $6665: $f0 $c5
	inc [hl]                                         ; $6667: $34
	db $ed                                           ; $6668: $ed
	ld c, c                                          ; $6669: $49
	ld b, h                                          ; $666a: $44
	dec sp                                           ; $666b: $3b
	dec a                                            ; $666c: $3d
	ld a, [hl-]                                      ; $666d: $3a

jr_092_666e:
	and b                                            ; $666e: $a0
	db $eb                                           ; $666f: $eb
	ld d, e                                          ; $6670: $53
	ld [hl], l                                       ; $6671: $75
	ld e, c                                          ; $6672: $59
	ldh a, [c]                                       ; $6673: $f2
	jr jr_092_66cf                                   ; $6674: $18 $59

	inc de                                           ; $6676: $13
	ldh a, [c]                                       ; $6677: $f2
	ld b, l                                          ; $6678: $45
	ldh a, [c]                                       ; $6679: $f2
	ld c, $4a                                        ; $667a: $0e $4a
	db $eb                                           ; $667c: $eb

jr_092_667d:
	ld d, l                                          ; $667d: $55
	ldh a, [$3f]                                     ; $667e: $f0 $3f
	ld h, d                                          ; $6680: $62
	ldh a, [$bd]                                     ; $6681: $f0 $bd
	ld d, l                                          ; $6683: $55

jr_092_6684:
	ld b, d                                          ; $6684: $42
	ld b, l                                          ; $6685: $45
	and b                                            ; $6686: $a0
	cpl                                              ; $6687: $2f
	ld b, e                                          ; $6688: $43
	ldh a, [$5a]                                     ; $6689: $f0 $5a
	add l                                            ; $668b: $85
	inc [hl]                                         ; $668c: $34
	ld b, b                                          ; $668d: $40
	ld c, l                                          ; $668e: $4d
	dec sp                                           ; $668f: $3b
	ccf                                              ; $6690: $3f
	xor h                                            ; $6691: $ac
	jr c, jr_092_6614                                ; $6692: $38 $80

	inc a                                            ; $6694: $3c
	ld d, b                                          ; $6695: $50
	ldh a, [$bb]                                     ; $6696: $f0 $bb
	ld d, d                                          ; $6698: $52
	ld c, [hl]                                       ; $6699: $4e
	ld b, d                                          ; $669a: $42
	and c                                            ; $669b: $a1
	ld l, d                                          ; $669c: $6a
	inc a                                            ; $669d: $3c
	ld d, b                                          ; $669e: $50
	inc [hl]                                         ; $669f: $34
	ldh a, [$bb]                                     ; $66a0: $f0 $bb
	ld [hl], c                                       ; $66a2: $71
	ld c, [hl]                                       ; $66a3: $4e
	inc a                                            ; $66a4: $3c
	ld d, b                                          ; $66a5: $50
	xor h                                            ; $66a6: $ac
	db $ec                                           ; $66a7: $ec
	ld c, $72                                        ; $66a8: $0e $72
	ccf                                              ; $66aa: $3f
	jr c, jr_092_6709                                ; $66ab: $38 $5c

	ld a, [hl-]                                      ; $66ad: $3a
	ld e, b                                          ; $66ae: $58
	jr c, jr_092_6651                                ; $66af: $38 $a0

	ld e, d                                          ; $66b1: $5a
	add hl, sp                                       ; $66b2: $39
	xor h                                            ; $66b3: $ac
	ld d, h                                          ; $66b4: $54
	ld b, d                                          ; $66b5: $42
	db $eb                                           ; $66b6: $eb
	xor l                                            ; $66b7: $ad
	ld c, e                                          ; $66b8: $4b
	and c                                            ; $66b9: $a1
	cpl                                              ; $66ba: $2f
	ld b, e                                          ; $66bb: $43
	ld d, c                                          ; $66bc: $51
	inc [hl]                                         ; $66bd: $34
	ld d, c                                          ; $66be: $51
	ld [hl], b                                       ; $66bf: $70
	jr c, jr_092_670e                                ; $66c0: $38 $4c

	xor b                                            ; $66c2: $a8
	pop af                                           ; $66c3: $f1
	add sp, $4a                                      ; $66c4: $e8 $4a
	ld c, a                                          ; $66c6: $4f
	ld [hl], d                                       ; $66c7: $72
	ccf                                              ; $66c8: $3f
	dec a                                            ; $66c9: $3d
	ld l, h                                          ; $66ca: $6c
	dec a                                            ; $66cb: $3d
	jr c, jr_092_666e                                ; $66cc: $38 $a0

	ld b, b                                          ; $66ce: $40

jr_092_66cf:
	add hl, sp                                       ; $66cf: $39
	ld c, d                                          ; $66d0: $4a
	ld a, $66                                        ; $66d1: $3e $66
	add hl, sp                                       ; $66d3: $39
	xor b                                            ; $66d4: $a8
	ld b, [hl]                                       ; $66d5: $46
	ld [hl], h                                       ; $66d6: $74
	inc [hl]                                         ; $66d7: $34
	db $ed                                           ; $66d8: $ed
	ld e, l                                          ; $66d9: $5d
	ld b, d                                          ; $66da: $42
	pop af                                           ; $66db: $f1
	and e                                            ; $66dc: $a3
	pop af                                           ; $66dd: $f1
	ld [hl], d                                       ; $66de: $72
	ld d, e                                          ; $66df: $53
	ldh a, [$71]                                     ; $66e0: $f0 $71
	jr c, jr_092_6747                                ; $66e2: $38 $63

	and b                                            ; $66e4: $a0
	cpl                                              ; $66e5: $2f
	ld b, e                                          ; $66e6: $43
	rst JumpTable                                          ; $66e7: $c7
	ld b, h                                          ; $66e8: $44
	ld c, h                                          ; $66e9: $4c
	ld c, b                                          ; $66ea: $48
	dec [hl]                                         ; $66eb: $35
	rla                                              ; $66ec: $17
	ld [hl-], a                                      ; $66ed: $32
	ldh a, [$71]                                     ; $66ee: $f0 $71
	jr c, jr_092_6734                                ; $66f0: $38 $42

	ld c, e                                          ; $66f2: $4b
	inc [hl]                                         ; $66f3: $34
	pop af                                           ; $66f4: $f1
	and e                                            ; $66f5: $a3
	pop af                                           ; $66f6: $f1
	ld [hl], d                                       ; $66f7: $72
	ld b, h                                          ; $66f8: $44
	ld e, l                                          ; $66f9: $5d
	inc de                                           ; $66fa: $13
	db $ec                                           ; $66fb: $ec
	ret c                                            ; $66fc: $d8

	ld c, c                                          ; $66fd: $49
	ld [hl], a                                       ; $66fe: $77
	add hl, sp                                       ; $66ff: $39

jr_092_6700:
	ld e, l                                          ; $6700: $5d
	ld e, d                                          ; $6701: $5a
	ld c, b                                          ; $6702: $48
	and e                                            ; $6703: $a3
	ld d, h                                          ; $6704: $54
	ld c, l                                          ; $6705: $4d
	ld c, d                                          ; $6706: $4a
	xor h                                            ; $6707: $ac
	ld l, a                                          ; $6708: $6f

jr_092_6709:
	ld b, d                                          ; $6709: $42
	pop af                                           ; $670a: $f1
	add sp, $53                                      ; $670b: $e8 $53
	inc a                                            ; $670d: $3c

jr_092_670e:
	ld a, [hl-]                                      ; $670e: $3a
	add hl, sp                                       ; $670f: $39
	ld b, d                                          ; $6710: $42
	ld c, h                                          ; $6711: $4c
	and b                                            ; $6712: $a0
	cpl                                              ; $6713: $2f
	ld b, e                                          ; $6714: $43
	pop af                                           ; $6715: $f1
	add sp, $3b                                      ; $6716: $e8 $3b
	ccf                                              ; $6718: $3f
	xor c                                            ; $6719: $a9
	ld [hl-], a                                      ; $671a: $32
	db $ec                                           ; $671b: $ec
	ldh [rVBK], a                                    ; $671c: $e0 $4f
	ldh a, [$80]                                     ; $671e: $f0 $80
	ldh a, [$c5]                                     ; $6720: $f0 $c5
	ldh a, [$8a]                                     ; $6722: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6724: $f0 $52
	jr c, jr_092_6771                                ; $6726: $38 $49

	ld d, h                                          ; $6728: $54
	inc de                                           ; $6729: $13
	ld b, [hl]                                       ; $672a: $46
	ld c, [hl]                                       ; $672b: $4e
	db $ec                                           ; $672c: $ec
	ret c                                            ; $672d: $d8

	inc a                                            ; $672e: $3c
	inc sp                                           ; $672f: $33
	add hl, bc                                       ; $6730: $09
	ld l, d                                          ; $6731: $6a
	ld c, e                                          ; $6732: $4b
	db $ed                                           ; $6733: $ed

jr_092_6734:
	inc c                                            ; $6734: $0c
	xor b                                            ; $6735: $a8
	ld [$636c], a                                    ; $6736: $ea $6c $63
	and b                                            ; $6739: $a0
	cpl                                              ; $673a: $2f
	ld b, e                                          ; $673b: $43
	rst JumpTable                                          ; $673c: $c7
	xor b                                            ; $673d: $a8
	ld b, b                                          ; $673e: $40
	ld c, l                                          ; $673f: $4d
	ld e, e                                          ; $6740: $5b
	ld d, [hl]                                       ; $6741: $56
	inc [hl]                                         ; $6742: $34
	db $ec                                           ; $6743: $ec
	push bc                                          ; $6744: $c5
	ld a, d                                          ; $6745: $7a
	ld c, [hl]                                       ; $6746: $4e

jr_092_6747:
	ld b, l                                          ; $6747: $45
	and b                                            ; $6748: $a0
	ld l, d                                          ; $6749: $6a
	inc a                                            ; $674a: $3c
	ld d, b                                          ; $674b: $50
	inc [hl]                                         ; $674c: $34
	ldh a, [$bb]                                     ; $674d: $f0 $bb
	ld [hl], c                                       ; $674f: $71
	ld c, [hl]                                       ; $6750: $4e
	inc a                                            ; $6751: $3c
	ld d, b                                          ; $6752: $50
	xor h                                            ; $6753: $ac
	ld b, l                                          ; $6754: $45
	ldh a, [c]                                       ; $6755: $f2
	ld a, l                                          ; $6756: $7d
	ld d, l                                          ; $6757: $55
	ld [hl], d                                       ; $6758: $72
	ccf                                              ; $6759: $3f
	ld h, h                                          ; $675a: $64
	ld e, h                                          ; $675b: $5c
	ld a, [hl-]                                      ; $675c: $3a
	ld e, b                                          ; $675d: $58
	jr c, jr_092_6700                                ; $675e: $38 $a0

	ld e, d                                          ; $6760: $5a
	add hl, sp                                       ; $6761: $39
	inc [hl]                                         ; $6762: $34
	ld d, h                                          ; $6763: $54
	ld b, d                                          ; $6764: $42
	ldh a, [$c6]                                     ; $6765: $f0 $c6
	ldh a, [c]                                       ; $6767: $f2

jr_092_6768:
	xor d                                            ; $6768: $aa
	ld c, e                                          ; $6769: $4b
	xor c                                            ; $676a: $a9
	db $eb                                           ; $676b: $eb
	ld d, h                                          ; $676c: $54
	ld c, d                                          ; $676d: $4a
	ld a, $66                                        ; $676e: $3e $66
	add hl, sp                                       ; $6770: $39

jr_092_6771:
	and b                                            ; $6771: $a0
	ld [$13f6], a                                    ; $6772: $ea $f6 $13

jr_092_6775:
	ld [hl], a                                       ; $6775: $77
	jr c, jr_092_6768                                ; $6776: $38 $f0

	dec l                                            ; $6778: $2d
	dec sp                                           ; $6779: $3b
	dec a                                            ; $677a: $3d
	db $ec                                           ; $677b: $ec
	ld [de], a                                       ; $677c: $12
	and b                                            ; $677d: $a0
	cpl                                              ; $677e: $2f
	ld b, e                                          ; $677f: $43

jr_092_6780:
	ld h, h                                          ; $6780: $64
	inc [hl]                                         ; $6781: $34
	ld [hl], a                                       ; $6782: $77
	jr c, jr_092_6775                                ; $6783: $38 $f0

	dec l                                            ; $6785: $2d
	dec sp                                           ; $6786: $3b
	dec a                                            ; $6787: $3d
	ld b, l                                          ; $6788: $45
	xor b                                            ; $6789: $a8
	ld c, d                                          ; $678a: $4a
	ld c, a                                          ; $678b: $4f
	inc [hl]                                         ; $678c: $34
	ld d, h                                          ; $678d: $54
	ld c, l                                          ; $678e: $4d
	ld l, e                                          ; $678f: $6b
	ld b, a                                          ; $6790: $47
	pop af                                           ; $6791: $f1
	sbc l                                            ; $6792: $9d
	add hl, sp                                       ; $6793: $39
	ld b, d                                          ; $6794: $42
	and c                                            ; $6795: $a1
	ld d, h                                          ; $6796: $54
	ld c, l                                          ; $6797: $4d
	ld c, d                                          ; $6798: $4a
	inc [hl]                                         ; $6799: $34
	ld l, a                                          ; $679a: $6f
	ld b, d                                          ; $679b: $42
	ldh a, [rAUD2LOW]                                ; $679c: $f0 $18
	pop af                                           ; $679e: $f1
	ld l, d                                          ; $679f: $6a
	ld c, e                                          ; $67a0: $4b
	inc de                                           ; $67a1: $13
	ldh a, [rSTAT]                                   ; $67a2: $f0 $41
	pop af                                           ; $67a4: $f1
	ld d, e                                          ; $67a5: $53
	ld a, $3d                                        ; $67a6: $3e $3d
	ld c, a                                          ; $67a8: $4f
	ldh a, [$cd]                                     ; $67a9: $f0 $cd
	ldh a, [$59]                                     ; $67ab: $f0 $59
	ld b, l                                          ; $67ad: $45
	xor b                                            ; $67ae: $a8
	db $eb                                           ; $67af: $eb
	sbc b                                            ; $67b0: $98
	ldh a, [rSCY]                                    ; $67b1: $f0 $42
	ld c, b                                          ; $67b3: $48
	and b                                            ; $67b4: $a0
	cpl                                              ; $67b5: $2f
	ld b, e                                          ; $67b6: $43
	ldh a, [$0c]                                     ; $67b7: $f0 $0c
	jr c, @+$63                                      ; $67b9: $38 $61

	ld d, [hl]                                       ; $67bb: $56
	jr c, jr_092_680a                                ; $67bc: $38 $4c

	add l                                            ; $67be: $85
	xor b                                            ; $67bf: $a8
	ld a, [hl-]                                      ; $67c0: $3a
	ld b, c                                          ; $67c1: $41
	inc a                                            ; $67c2: $3c
	ldh a, [$71]                                     ; $67c3: $f0 $71
	jr c, jr_092_6801                                ; $67c5: $38 $3a

	xor l                                            ; $67c7: $ad

jr_092_67c8:
	ld l, d                                          ; $67c8: $6a
	ld b, d                                          ; $67c9: $42
	add hl, sp                                       ; $67ca: $39
	ld h, c                                          ; $67cb: $61
	ld b, a                                          ; $67cc: $47
	inc [hl]                                         ; $67cd: $34
	ld a, d                                          ; $67ce: $7a
	dec sp                                           ; $67cf: $3b
	ld h, c                                          ; $67d0: $61
	ld d, [hl]                                       ; $67d1: $56
	ld h, h                                          ; $67d2: $64
	and b                                            ; $67d3: $a0
	db $eb                                           ; $67d4: $eb
	sbc b                                            ; $67d5: $98

jr_092_67d6:
	xor l                                            ; $67d6: $ad
	ld b, [hl]                                       ; $67d7: $46

jr_092_67d8:
	dec sp                                           ; $67d8: $3b

jr_092_67d9:
	inc [hl]                                         ; $67d9: $34
	sbc c                                            ; $67da: $99
	ld h, c                                          ; $67db: $61
	ld a, [hl-]                                      ; $67dc: $3a
	ld e, b                                          ; $67dd: $58
	jr c, jr_092_6780                                ; $67de: $38 $a0

	ld e, d                                          ; $67e0: $5a
	add hl, sp                                       ; $67e1: $39
	inc [hl]                                         ; $67e2: $34
	ld l, a                                          ; $67e3: $6f
	ld b, d                                          ; $67e4: $42
	ldh a, [$aa]                                     ; $67e5: $f0 $aa
	adc c                                            ; $67e7: $89
	ldh a, [$7f]                                     ; $67e8: $f0 $7f
	ld c, e                                          ; $67ea: $4b
	and c                                            ; $67eb: $a1
	ld b, b                                          ; $67ec: $40
	add hl, sp                                       ; $67ed: $39
	ld c, d                                          ; $67ee: $4a
	ld a, $66                                        ; $67ef: $3e $66

jr_092_67f1:
	add hl, sp                                       ; $67f1: $39
	xor b                                            ; $67f2: $a8
	ld d, h                                          ; $67f3: $54
	ld c, l                                          ; $67f4: $4d
	ld c, d                                          ; $67f5: $4a
	inc [hl]                                         ; $67f6: $34
	ldh a, [rOBP1]                                   ; $67f7: $f0 $49
	ccf                                              ; $67f9: $3f
	ld c, e                                          ; $67fa: $4b
	inc de                                           ; $67fb: $13
	ld l, a                                          ; $67fc: $6f
	ld b, d                                          ; $67fd: $42
	ld [hl], a                                       ; $67fe: $77
	jr c, jr_092_67f1                                ; $67ff: $38 $f0

jr_092_6801:
	ld l, d                                          ; $6801: $6a
	ld d, a                                          ; $6802: $57
	ld b, l                                          ; $6803: $45
	and b                                            ; $6804: $a0
	cpl                                              ; $6805: $2f
	ld b, e                                          ; $6806: $43
	xor $10                                          ; $6807: $ee $10
	xor b                                            ; $6809: $a8

jr_092_680a:
	db $ed                                           ; $680a: $ed
	ld b, l                                          ; $680b: $45
	xor h                                            ; $680c: $ac
	jp hl                                            ; $680d: $e9


	inc l                                            ; $680e: $2c
	and b                                            ; $680f: $a0
	ld e, b                                          ; $6810: $58
	ld b, l                                          ; $6811: $45
	ld a, [hl-]                                      ; $6812: $3a
	ld d, b                                          ; $6813: $50
	xor b                                            ; $6814: $a8
	ldh a, [$d8]                                     ; $6815: $f0 $d8
	ld c, c                                          ; $6817: $49
	ld c, c                                          ; $6818: $49
	ld e, h                                          ; $6819: $5c
	ld b, d                                          ; $681a: $42
	ldh a, [$67]                                     ; $681b: $f0 $67
	pop af                                           ; $681d: $f1
	ld hl, $1362                                     ; $681e: $21 $62 $13
	sub b                                            ; $6821: $90
	ld a, $6c                                        ; $6822: $3e $6c
	ld a, [hl-]                                      ; $6824: $3a
	ld e, b                                          ; $6825: $58
	jr c, jr_092_67c8                                ; $6826: $38 $a0

	cpl                                              ; $6828: $2f
	ld b, e                                          ; $6829: $43
	ld d, c                                          ; $682a: $51
	ld [hl], b                                       ; $682b: $70
	jr c, jr_092_67d6                                ; $682c: $38 $a8

	pop af                                           ; $682e: $f1
	add sp, $4a                                      ; $682f: $e8 $4a
	ld c, a                                          ; $6831: $4f
	ld [hl], d                                       ; $6832: $72

jr_092_6833:
	ccf                                              ; $6833: $3f
	dec a                                            ; $6834: $3d
	ld l, h                                          ; $6835: $6c
	dec a                                            ; $6836: $3d
	jr c, jr_092_67d9                                ; $6837: $38 $a0

	db $eb                                           ; $6839: $eb
	dec l                                            ; $683a: $2d
	ld b, d                                          ; $683b: $42
	inc de                                           ; $683c: $13
	ldh a, [$31]                                     ; $683d: $f0 $31
	ldh a, [$a8]                                     ; $683f: $f0 $a8
	ld b, l                                          ; $6841: $45
	and b                                            ; $6842: $a0
	cpl                                              ; $6843: $2f
	ld b, e                                          ; $6844: $43
	ldh a, [$fe]                                     ; $6845: $f0 $fe
	inc [hl]                                         ; $6847: $34
	ldh a, [$2c]                                     ; $6848: $f0 $2c
	pop af                                           ; $684a: $f1
	call z, $36f1                                    ; $684b: $cc $f1 $36
	pop af                                           ; $684e: $f1
	pop af                                           ; $684f: $f1
	xor c                                            ; $6850: $a9
	ld b, b                                          ; $6851: $40
	ld c, l                                          ; $6852: $4d
	dec sp                                           ; $6853: $3b
	ccf                                              ; $6854: $3f
	inc [hl]                                         ; $6855: $34
	jr c, jr_092_67d8                                ; $6856: $38 $80

	inc a                                            ; $6858: $3c
	ld d, b                                          ; $6859: $50
	ldh a, [$bb]                                     ; $685a: $f0 $bb
	ld d, d                                          ; $685c: $52
	ld c, [hl]                                       ; $685d: $4e
	ld b, d                                          ; $685e: $42
	and c                                            ; $685f: $a1
	add hl, bc                                       ; $6860: $09
	ld d, h                                          ; $6861: $54
	ld d, h                                          ; $6862: $54
	ld b, a                                          ; $6863: $47
	db $eb                                           ; $6864: $eb
	ld l, e                                          ; $6865: $6b
	ld b, d                                          ; $6866: $42
	ld l, e                                          ; $6867: $6b
	and c                                            ; $6868: $a1
	cpl                                              ; $6869: $2f
	ld b, e                                          ; $686a: $43
	db $ed                                           ; $686b: $ed
	adc b                                            ; $686c: $88
	inc [hl]                                         ; $686d: $34
	ldh a, [rSCX]                                    ; $686e: $f0 $43
	ldh a, [$b8]                                     ; $6870: $f0 $b8
	adc a                                            ; $6872: $8f
	ld c, d                                          ; $6873: $4a
	inc de                                           ; $6874: $13
	push af                                          ; $6875: $f5
	ld [hl], $3b                                     ; $6876: $36 $3b
	dec a                                            ; $6878: $3d
	sbc e                                            ; $6879: $9b
	ld b, h                                          ; $687a: $44
	ld b, l                                          ; $687b: $45
	and b                                            ; $687c: $a0
	sbc e                                            ; $687d: $9b
	dec sp                                           ; $687e: $3b
	ccf                                              ; $687f: $3f
	inc [hl]                                         ; $6880: $34
	ld a, [hl-]                                      ; $6881: $3a
	ld b, c                                          ; $6882: $41
	inc a                                            ; $6883: $3c
	inc de                                           ; $6884: $13
	db $eb                                           ; $6885: $eb
	ld l, d                                          ; $6886: $6a
	ld a, [hl-]                                      ; $6887: $3a
	jr c, jr_092_6833                                ; $6888: $38 $a9

	ld l, a                                          ; $688a: $6f
	ret                                              ; $688b: $c9


	xor $05                                          ; $688c: $ee $05
	ld a, [hl-]                                      ; $688e: $3a
	ld b, d                                          ; $688f: $42
	ld b, l                                          ; $6890: $45
	ld c, h                                          ; $6891: $4c
	and b                                            ; $6892: $a0
	cpl                                              ; $6893: $2f
	ld b, e                                          ; $6894: $43
	ld d, h                                          ; $6895: $54
	ld c, l                                          ; $6896: $4d
	inc [hl]                                         ; $6897: $34
	add hl, sp                                       ; $6898: $39
	ld h, c                                          ; $6899: $61
	ld b, d                                          ; $689a: $42
	adc a                                            ; $689b: $8f
	ld c, d                                          ; $689c: $4a
	ldh a, [$a5]                                     ; $689d: $f0 $a5
	dec sp                                           ; $689f: $3b
	dec a                                            ; $68a0: $3d
	inc de                                           ; $68a1: $13
	db $ed                                           ; $68a2: $ed
	add l                                            ; $68a3: $85
	ld a, [hl-]                                      ; $68a4: $3a
	ld b, c                                          ; $68a5: $41
	ld b, h                                          ; $68a6: $44
	ld e, l                                          ; $68a7: $5d
	ld e, d                                          ; $68a8: $5a
	xor h                                            ; $68a9: $ac
	jp hl                                            ; $68aa: $e9


	ld h, e                                          ; $68ab: $63
	and c                                            ; $68ac: $a1
	ld e, [hl]                                       ; $68ad: $5e
	dec sp                                           ; $68ae: $3b
	inc [hl]                                         ; $68af: $34
	ld d, h                                          ; $68b0: $54
	ld c, l                                          ; $68b1: $4d
	xor c                                            ; $68b2: $a9
	ld b, e                                          ; $68b3: $43
	ldh a, [c]                                       ; $68b4: $f2
	db $f4                                           ; $68b5: $f4
	ldh a, [c]                                       ; $68b6: $f2
	ld c, a                                          ; $68b7: $4f
	ld d, a                                          ; $68b8: $57
	ld b, d                                          ; $68b9: $42
	ld l, b                                          ; $68ba: $68
	pop af                                           ; $68bb: $f1
	sbc h                                            ; $68bc: $9c
	ld l, b                                          ; $68bd: $68
	xor h                                            ; $68be: $ac
	pop af                                           ; $68bf: $f1
	or [hl]                                          ; $68c0: $b6
	ld c, e                                          ; $68c1: $4b
	inc [hl]                                         ; $68c2: $34
	xor $08                                          ; $68c3: $ee $08
	adc a                                            ; $68c5: $8f
	pop af                                           ; $68c6: $f1
	ld b, h                                          ; $68c7: $44
	ld b, d                                          ; $68c8: $42
	ldh a, [rAUD2HIGH]                               ; $68c9: $f0 $19
	ld c, d                                          ; $68cb: $4a
	ld c, b                                          ; $68cc: $48
	dec [hl]                                         ; $68cd: $35
	ldh a, [$eb]                                     ; $68ce: $f0 $eb
	ld [hl+], a                                      ; $68d0: $22
	inc de                                           ; $68d1: $13
	ld b, [hl]                                       ; $68d2: $46
	ld [hl], h                                       ; $68d3: $74
	inc [hl]                                         ; $68d4: $34
	ld [hl], d                                       ; $68d5: $72
	ccf                                              ; $68d6: $3f
	inc [hl]                                         ; $68d7: $34
	ld d, h                                          ; $68d8: $54
	ld b, d                                          ; $68d9: $42
	ldh a, [c]                                       ; $68da: $f2
	rrca                                             ; $68db: $0f
	rst FarCall                                          ; $68dc: $f7
	adc c                                            ; $68dd: $89
	and b                                            ; $68de: $a0
	cpl                                              ; $68df: $2f
	ld b, e                                          ; $68e0: $43
	ldh a, [$98]                                     ; $68e1: $f0 $98
	ld c, a                                          ; $68e3: $4f
	ld d, h                                          ; $68e4: $54
	ld d, h                                          ; $68e5: $54
	ld c, d                                          ; $68e6: $4a
	ldh a, [$fa]                                     ; $68e7: $f0 $fa
	ld [hl], c                                       ; $68e9: $71
	ld a, [hl-]                                      ; $68ea: $3a
	ld b, c                                          ; $68eb: $41
	ccf                                              ; $68ec: $3f
	inc de                                           ; $68ed: $13
	add d                                            ; $68ee: $82
	dec sp                                           ; $68ef: $3b
	ccf                                              ; $68f0: $3f
	ld a, [hl-]                                      ; $68f1: $3a
	jr c, jr_092_6938                                ; $68f2: $38 $44

	ld e, a                                          ; $68f4: $5f
	add hl, sp                                       ; $68f5: $39
	xor b                                            ; $68f6: $a8
	ld a, $3c                                        ; $68f7: $3e $3c
	ld c, a                                          ; $68f9: $4f
	pop af                                           ; $68fa: $f1
	dec l                                            ; $68fb: $2d
	ld b, a                                          ; $68fc: $47
	sub h                                            ; $68fd: $94
	ld a, $61                                        ; $68fe: $3e $61
	ld d, [hl]                                       ; $6900: $56
	dec sp                                           ; $6901: $3b
	ccf                                              ; $6902: $3f
	and b                                            ; $6903: $a0

jr_092_6904:
	db $eb                                           ; $6904: $eb
	ccf                                              ; $6905: $3f
	xor b                                            ; $6906: $a8
	ld h, h                                          ; $6907: $64
	ldh a, [rSVBK]                                   ; $6908: $f0 $70
	ld c, d                                          ; $690a: $4a
	db $ec                                           ; $690b: $ec
	ld c, $f0                                        ; $690c: $0e $f0
	ld a, [$bef0]                                    ; $690e: $fa $f0 $be
	ld h, e                                          ; $6911: $63
	and b                                            ; $6912: $a0
	cpl                                              ; $6913: $2f
	ld b, e                                          ; $6914: $43
	ld b, b                                          ; $6915: $40
	add hl, sp                                       ; $6916: $39
	ld a, $3f                                        ; $6917: $3e $3f
	ld d, l                                          ; $6919: $55
	ld c, l                                          ; $691a: $4d
	ld b, l                                          ; $691b: $45
	and b                                            ; $691c: $a0
	jp nc, $f0ac                                     ; $691d: $d2 $ac $f0

	ret                                              ; $6920: $c9


	ld e, l                                          ; $6921: $5d
	ccf                                              ; $6922: $3f
	ld d, b                                          ; $6923: $50
	ld c, l                                          ; $6924: $4d
	ld a, [hl-]                                      ; $6925: $3a
	jr c, jr_092_6964                                ; $6926: $38 $3c

	ld d, b                                          ; $6928: $50
	ld c, h                                          ; $6929: $4c
	and b                                            ; $692a: $a0
	cpl                                              ; $692b: $2f
	ld b, e                                          ; $692c: $43
	ld b, b                                          ; $692d: $40
	ld c, l                                          ; $692e: $4d
	ld c, a                                          ; $692f: $4f
	ld b, b                                          ; $6930: $40
	add hl, sp                                       ; $6931: $39
	ld b, h                                          ; $6932: $44
	xor b                                            ; $6933: $a8
	halt                                             ; $6934: $76
	ld c, a                                          ; $6935: $4f
	ld d, h                                          ; $6936: $54
	ld d, h                                          ; $6937: $54

jr_092_6938:
	ld h, d                                          ; $6938: $62
	ldh a, [$c9]                                     ; $6939: $f0 $c9
	ld e, l                                          ; $693b: $5d
	ld d, b                                          ; $693c: $50
	ld c, l                                          ; $693d: $4d
	ld a, [hl-]                                      ; $693e: $3a
	jr c, jr_092_697d                                ; $693f: $38 $3c

	ld d, b                                          ; $6941: $50
	ld c, b                                          ; $6942: $48
	and b                                            ; $6943: $a0
	ld c, a                                          ; $6944: $4f
	ld a, $ea                                        ; $6945: $3e $ea
	sbc h                                            ; $6947: $9c
	xor h                                            ; $6948: $ac
	ldh a, [$b2]                                     ; $6949: $f0 $b2
	ldh a, [rKEY1]                                   ; $694b: $f0 $4d
	ld b, a                                          ; $694d: $47
	ld a, b                                          ; $694e: $78
	ccf                                              ; $694f: $3f
	xor b                                            ; $6950: $a8
	db $ec                                           ; $6951: $ec
	ld [hl], $ea                                     ; $6952: $36 $ea
	sbc l                                            ; $6954: $9d
	and b                                            ; $6955: $a0
	cpl                                              ; $6956: $2f
	ld b, e                                          ; $6957: $43
	ld [$4c9c], a                                    ; $6958: $ea $9c $4c
	and b                                            ; $695b: $a0
	ld b, b                                          ; $695c: $40
	ld c, l                                          ; $695d: $4d
	ld e, e                                          ; $695e: $5b
	ld d, [hl]                                       ; $695f: $56
	xor h                                            ; $6960: $ac
	jp hl                                            ; $6961: $e9


	jr nz, jr_092_6904                               ; $6962: $20 $a0

jr_092_6964:
	cpl                                              ; $6964: $2f
	ld b, e                                          ; $6965: $43
	ldh a, [$ea]                                     ; $6966: $f0 $ea
	ld b, h                                          ; $6968: $44
	ld e, l                                          ; $6969: $5d
	ld e, d                                          ; $696a: $5a
	inc [hl]                                         ; $696b: $34
	ldh a, [$c9]                                     ; $696c: $f0 $c9
	ld e, l                                          ; $696e: $5d
	ld d, b                                          ; $696f: $50
	ld c, l                                          ; $6970: $4d
	inc de                                           ; $6971: $13
	ld a, [hl-]                                      ; $6972: $3a
	jr c, jr_092_69b6                                ; $6973: $38 $41

	ld b, h                                          ; $6975: $44
	ld b, l                                          ; $6976: $45
	ld a, [hl-]                                      ; $6977: $3a
	ld [hl], h                                       ; $6978: $74
	and b                                            ; $6979: $a0
	db $ec                                           ; $697a: $ec
	db $f4                                           ; $697b: $f4
	inc [hl]                                         ; $697c: $34

jr_092_697d:
	adc d                                            ; $697d: $8a
	ldh a, [$73]                                     ; $697e: $f0 $73
	adc a                                            ; $6980: $8f
	ld b, l                                          ; $6981: $45
	xor b                                            ; $6982: $a8
	ld [$42b1], a                                    ; $6983: $ea $b1 $42
	and c                                            ; $6986: $a1
	cpl                                              ; $6987: $2f
	ld b, e                                          ; $6988: $43
	ld a, $34                                        ; $6989: $3e $34
	ldh a, [$2d]                                     ; $698b: $f0 $2d
	dec sp                                           ; $698d: $3b
	ccf                                              ; $698e: $3f
	dec a                                            ; $698f: $3d
	ld b, l                                          ; $6990: $45
	xor b                                            ; $6991: $a8
	ld b, [hl]                                       ; $6992: $46
	dec a                                            ; $6993: $3d
	ld d, a                                          ; $6994: $57
	ld d, d                                          ; $6995: $52
	ld e, [hl]                                       ; $6996: $5e
	db $ec                                           ; $6997: $ec
	ret c                                            ; $6998: $d8

	inc a                                            ; $6999: $3c
	xor l                                            ; $699a: $ad
	ld [hl-], a                                      ; $699b: $32
	adc b                                            ; $699c: $88
	sub c                                            ; $699d: $91
	ld c, e                                          ; $699e: $4b
	jp hl                                            ; $699f: $e9


	db $f4                                           ; $69a0: $f4
	and e                                            ; $69a1: $a3
	ldh a, [$ea]                                     ; $69a2: $f0 $ea
	ld a, [hl-]                                      ; $69a4: $3a
	ld d, b                                          ; $69a5: $50
	inc [hl]                                         ; $69a6: $34
	ldh a, [$b2]                                     ; $69a7: $f0 $b2
	ldh a, [rKEY1]                                   ; $69a9: $f0 $4d
	ld b, a                                          ; $69ab: $47
	ld a, b                                          ; $69ac: $78
	ccf                                              ; $69ad: $3f
	ld c, h                                          ; $69ae: $4c
	xor b                                            ; $69af: $a8
	db $ec                                           ; $69b0: $ec
	ld [hl], $ea                                     ; $69b1: $36 $ea
	sbc l                                            ; $69b3: $9d
	and b                                            ; $69b4: $a0
	cpl                                              ; $69b5: $2f

jr_092_69b6:
	ld b, e                                          ; $69b6: $43
	db $eb                                           ; $69b7: $eb
	ld [bc], a                                       ; $69b8: $02
	xor h                                            ; $69b9: $ac
	ld d, h                                          ; $69ba: $54
	ld d, h                                          ; $69bb: $54
	ld h, d                                          ; $69bc: $62
	ldh a, [$c9]                                     ; $69bd: $f0 $c9
	ld e, l                                          ; $69bf: $5d
	ld d, b                                          ; $69c0: $50
	ld c, l                                          ; $69c1: $4d
	ld a, [hl-]                                      ; $69c2: $3a
	jr c, jr_092_6a06                                ; $69c3: $38 $41

	ld b, h                                          ; $69c5: $44
	ld b, l                                          ; $69c6: $45
	ld c, h                                          ; $69c7: $4c
	and b                                            ; $69c8: $a0
	ld b, [hl]                                       ; $69c9: $46
	dec sp                                           ; $69ca: $3b
	inc [hl]                                         ; $69cb: $34
	ld b, b                                          ; $69cc: $40
	add hl, sp                                       ; $69cd: $39
	xor l                                            ; $69ce: $ad
	ld e, e                                          ; $69cf: $5b
	ld d, [hl]                                       ; $69d0: $56
	ld b, [hl]                                       ; $69d1: $46
	inc [hl]                                         ; $69d2: $34
	db $eb                                           ; $69d3: $eb
	inc [hl]                                         ; $69d4: $34
	ld h, e                                          ; $69d5: $63
	ld c, h                                          ; $69d6: $4c
	xor b                                            ; $69d7: $a8
	or h                                             ; $69d8: $b4
	inc [hl]                                         ; $69d9: $34
	ld e, b                                          ; $69da: $58
	ld b, l                                          ; $69db: $45
	ld a, [hl-]                                      ; $69dc: $3a
	ld d, b                                          ; $69dd: $50
	and b                                            ; $69de: $a0
	cpl                                              ; $69df: $2f
	ld b, e                                          ; $69e0: $43
	db $eb                                           ; $69e1: $eb
	jr nz, jr_092_6a1e                               ; $69e2: $20 $3a

	ld [hl], h                                       ; $69e4: $74
	ld c, b                                          ; $69e5: $48
	and b                                            ; $69e6: $a0
	xor $05                                          ; $69e7: $ee $05
	ld a, [hl-]                                      ; $69e9: $3a
	ld b, d                                          ; $69ea: $42
	ld b, l                                          ; $69eb: $45
	inc [hl]                                         ; $69ec: $34
	ld l, a                                          ; $69ed: $6f
	xor b                                            ; $69ee: $a8
	sbc e                                            ; $69ef: $9b
	dec sp                                           ; $69f0: $3b
	ccf                                              ; $69f1: $3f
	ldh a, [$fa]                                     ; $69f2: $f0 $fa
	ld b, c                                          ; $69f4: $41
	ld c, d                                          ; $69f5: $4a
	ld c, [hl]                                       ; $69f6: $4e
	ld c, c                                          ; $69f7: $49
	xor h                                            ; $69f8: $ac
	pop af                                           ; $69f9: $f1
	or $7f                                           ; $69fa: $f6 $7f
	ld d, e                                          ; $69fc: $53
	ld a, $3f                                        ; $69fd: $3e $3f
	ld e, h                                          ; $69ff: $5c
	ccf                                              ; $6a00: $3f
	ld c, b                                          ; $6a01: $48
	and b                                            ; $6a02: $a0
	ld e, [hl]                                       ; $6a03: $5e
	dec sp                                           ; $6a04: $3b
	inc [hl]                                         ; $6a05: $34

jr_092_6a06:
	ld d, h                                          ; $6a06: $54
	ld c, l                                          ; $6a07: $4d
	xor c                                            ; $6a08: $a9
	ld b, e                                          ; $6a09: $43
	ldh a, [c]                                       ; $6a0a: $f2
	db $f4                                           ; $6a0b: $f4
	ldh a, [c]                                       ; $6a0c: $f2
	ld c, a                                          ; $6a0d: $4f
	ld d, a                                          ; $6a0e: $57
	ld b, d                                          ; $6a0f: $42
	ld l, b                                          ; $6a10: $68
	pop af                                           ; $6a11: $f1
	sbc h                                            ; $6a12: $9c
	ld l, b                                          ; $6a13: $68
	xor h                                            ; $6a14: $ac
	pop af                                           ; $6a15: $f1
	or [hl]                                          ; $6a16: $b6
	ld c, e                                          ; $6a17: $4b
	inc [hl]                                         ; $6a18: $34
	xor $08                                          ; $6a19: $ee $08
	adc a                                            ; $6a1b: $8f
	pop af                                           ; $6a1c: $f1
	ld b, h                                          ; $6a1d: $44

jr_092_6a1e:
	ld b, d                                          ; $6a1e: $42
	ldh a, [rAUD2HIGH]                               ; $6a1f: $f0 $19
	ld c, d                                          ; $6a21: $4a
	ld c, b                                          ; $6a22: $48
	dec [hl]                                         ; $6a23: $35
	ldh a, [$eb]                                     ; $6a24: $f0 $eb
	inc de                                           ; $6a26: $13
	ld b, [hl]                                       ; $6a27: $46
	ld [hl], h                                       ; $6a28: $74
	inc [hl]                                         ; $6a29: $34
	ld [hl], d                                       ; $6a2a: $72
	ccf                                              ; $6a2b: $3f
	inc [hl]                                         ; $6a2c: $34
	ld d, h                                          ; $6a2d: $54
	ld b, d                                          ; $6a2e: $42
	ldh a, [c]                                       ; $6a2f: $f2
	rrca                                             ; $6a30: $0f
	rst FarCall                                          ; $6a31: $f7
	adc c                                            ; $6a32: $89
	and b                                            ; $6a33: $a0
	db $eb                                           ; $6a34: $eb
	inc [hl]                                         ; $6a35: $34
	ld h, e                                          ; $6a36: $63
	ld c, h                                          ; $6a37: $4c
	xor b                                            ; $6a38: $a8
	ld h, h                                          ; $6a39: $64
	ldh a, [rSVBK]                                   ; $6a3a: $f0 $70
	ld c, d                                          ; $6a3c: $4a
	db $ec                                           ; $6a3d: $ec
	ld c, $f0                                        ; $6a3e: $0e $f0
	ld a, [$bef0]                                    ; $6a40: $fa $f0 $be
	ld h, e                                          ; $6a43: $63
	and b                                            ; $6a44: $a0

jr_092_6a45:
	ld d, h                                          ; $6a45: $54
	ld d, h                                          ; $6a46: $54
	ld c, c                                          ; $6a47: $49
	ldh a, [$f5]                                     ; $6a48: $f0 $f5
	dec sp                                           ; $6a4a: $3b
	ccf                                              ; $6a4b: $3f
	xor h                                            ; $6a4c: $ac
	adc d                                            ; $6a4d: $8a
	ldh a, [$73]                                     ; $6a4e: $f0 $73
	adc a                                            ; $6a50: $8f
	ld b, d                                          ; $6a51: $42
	ldh a, [$38]                                     ; $6a52: $f0 $38
	ld c, e                                          ; $6a54: $4b
	xor h                                            ; $6a55: $ac
	ldh a, [$80]                                     ; $6a56: $f0 $80
	ldh a, [$c5]                                     ; $6a58: $f0 $c5
	inc [hl]                                         ; $6a5a: $34
	pop af                                           ; $6a5b: $f1
	adc a                                            ; $6a5c: $8f
	ld a, $38                                        ; $6a5d: $3e $38
	ld b, d                                          ; $6a5f: $42
	and b                                            ; $6a60: $a0
	cpl                                              ; $6a61: $2f
	ld b, e                                          ; $6a62: $43
	rst JumpTable                                          ; $6a63: $c7
	ld c, b                                          ; $6a64: $48
	dec [hl]                                         ; $6a65: $35
	rla                                              ; $6a66: $17
	ld b, b                                          ; $6a67: $40
	ld c, l                                          ; $6a68: $4d
	ld c, e                                          ; $6a69: $4b
	add a                                            ; $6a6a: $87
	ldh a, [$5d]                                     ; $6a6b: $f0 $5d
	ld b, h                                          ; $6a6d: $44
	ld c, h                                          ; $6a6e: $4c
	xor b                                            ; $6a6f: $a8
	ld [hl-], a                                      ; $6a70: $32
	ld d, c                                          ; $6a71: $51

jr_092_6a72:
	ldh a, [rSB]                                     ; $6a72: $f0 $01
	add l                                            ; $6a74: $85
	pop af                                           ; $6a75: $f1
	sub c                                            ; $6a76: $91
	ld a, $38                                        ; $6a77: $3e $38
	ld c, b                                          ; $6a79: $48
	and e                                            ; $6a7a: $a3
	ldh a, [$ea]                                     ; $6a7b: $f0 $ea
	ld a, [hl-]                                      ; $6a7d: $3a
	ld d, b                                          ; $6a7e: $50
	inc [hl]                                         ; $6a7f: $34
	ldh a, [$b2]                                     ; $6a80: $f0 $b2
	ldh a, [rKEY1]                                   ; $6a82: $f0 $4d
	ld b, a                                          ; $6a84: $47
	inc de                                           ; $6a85: $13
	ld a, b                                          ; $6a86: $78
	ld a, [hl-]                                      ; $6a87: $3a
	ld e, b                                          ; $6a88: $58
	jr c, jr_092_6ad0                                ; $6a89: $38 $45

	xor b                                            ; $6a8b: $a8
	db $ec                                           ; $6a8c: $ec
	ld [hl], $ea                                     ; $6a8d: $36 $ea
	sbc l                                            ; $6a8f: $9d

jr_092_6a90:
	and b                                            ; $6a90: $a0
	cpl                                              ; $6a91: $2f
	ld b, e                                          ; $6a92: $43
	pop af                                           ; $6a93: $f1
	ld a, [de]                                       ; $6a94: $1a
	pop af                                           ; $6a95: $f1
	inc c                                            ; $6a96: $0c
	inc [hl]                                         ; $6a97: $34
	jr c, jr_092_6ad6                                ; $6a98: $38 $3c

	ld a, [hl-]                                      ; $6a9a: $3a
	jr c, jr_092_6a45                                ; $6a9b: $38 $a8

	pop af                                           ; $6a9d: $f1
	adc a                                            ; $6a9e: $8f
	ld a, $38                                        ; $6a9f: $3e $38
	ld c, a                                          ; $6aa1: $4f
	ld b, c                                          ; $6aa2: $41
	and b                                            ; $6aa3: $a0

jr_092_6aa4:
	ld e, b                                          ; $6aa4: $58
	dec sp                                           ; $6aa5: $3b
	ld e, h                                          ; $6aa6: $5c
	ld c, e                                          ; $6aa7: $4b
	inc [hl]                                         ; $6aa8: $34
	ldh a, [$ea]                                     ; $6aa9: $f0 $ea
	db $ed                                           ; $6aab: $ed
	ld b, e                                          ; $6aac: $43
	inc de                                           ; $6aad: $13
	add d                                            ; $6aae: $82
	dec sp                                           ; $6aaf: $3b
	ccf                                              ; $6ab0: $3f
	dec a                                            ; $6ab1: $3d
	db $ec                                           ; $6ab2: $ec
	ret c                                            ; $6ab3: $d8

	xor b                                            ; $6ab4: $a8
	ld e, e                                          ; $6ab5: $5b
	ld d, [hl]                                       ; $6ab6: $56
	ld b, [hl]                                       ; $6ab7: $46
	inc [hl]                                         ; $6ab8: $34
	sbc c                                            ; $6ab9: $99
	dec sp                                           ; $6aba: $3b
	ccf                                              ; $6abb: $3f
	ld c, [hl]                                       ; $6abc: $4e
	ld h, e                                          ; $6abd: $63
	ld b, l                                          ; $6abe: $45
	and b                                            ; $6abf: $a0
	cpl                                              ; $6ac0: $2f
	ld b, e                                          ; $6ac1: $43
	pop af                                           ; $6ac2: $f1
	sub c                                            ; $6ac3: $91
	ld a, $38                                        ; $6ac4: $3e $38
	inc a                                            ; $6ac6: $3c
	ld d, b                                          ; $6ac7: $50
	xor h                                            ; $6ac8: $ac
	pop af                                           ; $6ac9: $f1
	ld a, [de]                                       ; $6aca: $1a
	pop af                                           ; $6acb: $f1
	inc c                                            ; $6acc: $0c
	ld h, a                                          ; $6acd: $67
	inc a                                            ; $6ace: $3c
	ld a, [hl-]                                      ; $6acf: $3a

jr_092_6ad0:
	jr c, jr_092_6a72                                ; $6ad0: $38 $a0

	ldh a, [$ea]                                     ; $6ad2: $f0 $ea
	ld a, [hl-]                                      ; $6ad4: $3a
	ld d, b                                          ; $6ad5: $50

jr_092_6ad6:
	xor h                                            ; $6ad6: $ac
	ld [$a80e], a                                    ; $6ad7: $ea $0e $a8
	db $ec                                           ; $6ada: $ec
	ld [hl], $ea                                     ; $6adb: $36 $ea
	sbc l                                            ; $6add: $9d
	and b                                            ; $6ade: $a0
	cpl                                              ; $6adf: $2f
	ld b, e                                          ; $6ae0: $43
	db $eb                                           ; $6ae1: $eb
	jr nz, jr_092_6a90                               ; $6ae2: $20 $ac

	ld c, c                                          ; $6ae4: $49
	ld d, a                                          ; $6ae5: $57
	ld b, [hl]                                       ; $6ae6: $46

jr_092_6ae7:
	ld e, [hl]                                       ; $6ae7: $5e
	sbc h                                            ; $6ae8: $9c
	inc [hl]                                         ; $6ae9: $34
	ld d, h                                          ; $6aea: $54
	ld d, h                                          ; $6aeb: $54
	ld b, a                                          ; $6aec: $47
	jr c, jr_092_6b29                                ; $6aed: $38 $3a

	jr c, jr_092_6b3a                                ; $6aef: $38 $49

	ld c, h                                          ; $6af1: $4c
	and b                                            ; $6af2: $a0
	ld b, b                                          ; $6af3: $40
	add hl, sp                                       ; $6af4: $39
	inc [hl]                                         ; $6af5: $34
	ldh a, [$8d]                                     ; $6af6: $f0 $8d
	ldh a, [$9e]                                     ; $6af8: $f0 $9e
	ld c, h                                          ; $6afa: $4c
	xor b                                            ; $6afb: $a8
	ld b, b                                          ; $6afc: $40
	ld c, l                                          ; $6afd: $4d
	ld e, e                                          ; $6afe: $5b
	ld d, [hl]                                       ; $6aff: $56
	inc [hl]                                         ; $6b00: $34
	jp hl                                            ; $6b01: $e9


	jr nz, jr_092_6aa4                               ; $6b02: $20 $a0

	cpl                                              ; $6b04: $2f
	ld b, e                                          ; $6b05: $43
	ldh a, [rPCM12]                                  ; $6b06: $f0 $76
	ldh a, [$d2]                                     ; $6b08: $f0 $d2
	ldh a, [$3f]                                     ; $6b0a: $f0 $3f
	inc a                                            ; $6b0c: $3c
	ld [hl], h                                       ; $6b0d: $74
	xor l                                            ; $6b0e: $ad
	ldh a, [$bd]                                     ; $6b0f: $f0 $bd
	jr c, jr_092_6b52                                ; $6b11: $38 $3f

	ld c, a                                          ; $6b13: $4f
	ld d, b                                          ; $6b14: $50
	jr c, jr_092_6b54                                ; $6b15: $38 $3d

	jr c, jr_092_6b53                                ; $6b17: $38 $3a

	ld [hl], h                                       ; $6b19: $74
	and b                                            ; $6b1a: $a0
	db $ed                                           ; $6b1b: $ed
	ld b, [hl]                                       ; $6b1c: $46
	inc [hl]                                         ; $6b1d: $34
	ldh a, [$ea]                                     ; $6b1e: $f0 $ea
	call c, $2fa0                                    ; $6b20: $dc $a0 $2f
	ld b, e                                          ; $6b23: $43
	ld b, [hl]                                       ; $6b24: $46
	dec sp                                           ; $6b25: $3b
	inc [hl]                                         ; $6b26: $34
	db $ec                                           ; $6b27: $ec
	pop hl                                           ; $6b28: $e1

jr_092_6b29:
	xor b                                            ; $6b29: $a8
	ld c, a                                          ; $6b2a: $4f
	add hl, sp                                       ; $6b2b: $39
	ldh a, [$ea]                                     ; $6b2c: $f0 $ea
	ld c, d                                          ; $6b2e: $4a
	ldh a, [$ea]                                     ; $6b2f: $f0 $ea
	ld c, d                                          ; $6b31: $4a
	ld c, b                                          ; $6b32: $48
	and b                                            ; $6b33: $a0
	sbc e                                            ; $6b34: $9b
	dec sp                                           ; $6b35: $3b
	ccf                                              ; $6b36: $3f
	ld e, b                                          ; $6b37: $58
	inc [hl]                                         ; $6b38: $34
	pop af                                           ; $6b39: $f1

jr_092_6b3a:
	ld l, $38                                        ; $6b3a: $2e $38
	ccf                                              ; $6b3c: $3f
	ccf                                              ; $6b3d: $3f
	inc de                                           ; $6b3e: $13
	db $eb                                           ; $6b3f: $eb
	ld l, d                                          ; $6b40: $6a
	ld a, [hl-]                                      ; $6b41: $3a
	ld d, b                                          ; $6b42: $50
	ld a, [hl-]                                      ; $6b43: $3a
	jr c, jr_092_6ae7                                ; $6b44: $38 $a1

	cpl                                              ; $6b46: $2f
	ld b, e                                          ; $6b47: $43
	ld b, b                                          ; $6b48: $40
	ld b, c                                          ; $6b49: $41
	ld a, [hl-]                                      ; $6b4a: $3a
	sbc d                                            ; $6b4b: $9a
	ld c, b                                          ; $6b4c: $48
	inc [hl]                                         ; $6b4d: $34
	ld b, [hl]                                       ; $6b4e: $46
	ld c, [hl]                                       ; $6b4f: $4e
	ld a, [hl-]                                      ; $6b50: $3a
	ld [hl], h                                       ; $6b51: $74

jr_092_6b52:
	and b                                            ; $6b52: $a0

jr_092_6b53:
	ld b, b                                          ; $6b53: $40

jr_092_6b54:
	add hl, sp                                       ; $6b54: $39
	ld c, d                                          ; $6b55: $4a
	ld a, $66                                        ; $6b56: $3e $66
	add hl, sp                                       ; $6b58: $39
	xor b                                            ; $6b59: $a8
	ld l, a                                          ; $6b5a: $6f
	ld a, [hl-]                                      ; $6b5b: $3a
	ld b, c                                          ; $6b5c: $41
	ccf                                              ; $6b5d: $3f
	inc [hl]                                         ; $6b5e: $34
	ldh a, [$fa]                                     ; $6b5f: $f0 $fa
	ld b, c                                          ; $6b61: $41
	ld c, d                                          ; $6b62: $4a
	ccf                                              ; $6b63: $3f
	inc de                                           ; $6b64: $13
	ldh a, [c]                                       ; $6b65: $f2
	rrca                                             ; $6b66: $0f
	rst FarCall                                          ; $6b67: $f7
	adc c                                            ; $6b68: $89
	ldh a, [$d9]                                     ; $6b69: $f0 $d9
	dec sp                                           ; $6b6b: $3b
	ccf                                              ; $6b6c: $3f
	ld e, h                                          ; $6b6d: $5c
	ld h, c                                          ; $6b6e: $61
	ld d, [hl]                                       ; $6b6f: $56
	add hl, sp                                       ; $6b70: $39
	and b                                            ; $6b71: $a0
	cpl                                              ; $6b72: $2f
	ld b, e                                          ; $6b73: $43
	ld d, h                                          ; $6b74: $54
	ld c, l                                          ; $6b75: $4d
	ld c, e                                          ; $6b76: $4b
	inc [hl]                                         ; $6b77: $34
	ld l, d                                          ; $6b78: $6a
	ldh a, [$d3]                                     ; $6b79: $f0 $d3
	inc de                                           ; $6b7b: $13
	add hl, sp                                       ; $6b7c: $39
	ld h, c                                          ; $6b7d: $61
	ld b, d                                          ; $6b7e: $42
	adc a                                            ; $6b7f: $8f
	ld c, d                                          ; $6b80: $4a
	ldh a, [$a5]                                     ; $6b81: $f0 $a5
	dec sp                                           ; $6b83: $3b
	dec a                                            ; $6b84: $3d
	db $ed                                           ; $6b85: $ed
	add l                                            ; $6b86: $85
	ld b, h                                          ; $6b87: $44
	xor b                                            ; $6b88: $a8
	ldh a, [rRP]                                     ; $6b89: $f0 $56
	ld b, a                                          ; $6b8b: $47
	ld b, [hl]                                       ; $6b8c: $46
	ldh a, [rSB]                                     ; $6b8d: $f0 $01
	ld b, l                                          ; $6b8f: $45
	add hl, sp                                       ; $6b90: $39
	and b                                            ; $6b91: $a0

jr_092_6b92:
	ld b, [hl]                                       ; $6b92: $46
	dec sp                                           ; $6b93: $3b
	inc [hl]                                         ; $6b94: $34
	ldh a, [$64]                                     ; $6b95: $f0 $64
	ld d, e                                          ; $6b97: $53
	ld d, b                                          ; $6b98: $50
	ld a, c                                          ; $6b99: $79
	ld c, h                                          ; $6b9a: $4c
	xor b                                            ; $6b9b: $a8
	or h                                             ; $6b9c: $b4
	inc [hl]                                         ; $6b9d: $34
	db $ec                                           ; $6b9e: $ec
	add c                                            ; $6b9f: $81
	ld b, a                                          ; $6ba0: $47
	ld c, d                                          ; $6ba1: $4a
	ld c, a                                          ; $6ba2: $4f
	inc de                                           ; $6ba3: $13
	ldh a, [c]                                       ; $6ba4: $f2
	rrca                                             ; $6ba5: $0f
	rst FarCall                                          ; $6ba6: $f7
	adc c                                            ; $6ba7: $89
	ldh a, [$d9]                                     ; $6ba8: $f0 $d9
	ccf                                              ; $6baa: $3f
	ld a, [hl-]                                      ; $6bab: $3a
	ld d, e                                          ; $6bac: $53
	ld d, b                                          ; $6bad: $50

jr_092_6bae:
	ldh a, [$fa]                                     ; $6bae: $f0 $fa
	ld c, a                                          ; $6bb0: $4f
	add hl, sp                                       ; $6bb1: $39
	and b                                            ; $6bb2: $a0
	cpl                                              ; $6bb3: $2f
	ld b, e                                          ; $6bb4: $43
	ldh a, [$34]                                     ; $6bb5: $f0 $34
	ld b, a                                          ; $6bb7: $47
	inc [hl]                                         ; $6bb8: $34
	ld h, e                                          ; $6bb9: $63
	ldh a, [rAUD1SWEEP]                              ; $6bba: $f0 $10
	ld h, e                                          ; $6bbc: $63
	ldh a, [rAUD1SWEEP]                              ; $6bbd: $f0 $10
	inc de                                           ; $6bbf: $13
	ldh a, [$d9]                                     ; $6bc0: $f0 $d9
	ccf                                              ; $6bc2: $3f
	ld a, [hl-]                                      ; $6bc3: $3a
	ld d, l                                          ; $6bc4: $55
	ccf                                              ; $6bc5: $3f
	ld c, a                                          ; $6bc6: $4f
	jr c, jr_092_6c01                                ; $6bc7: $38 $38

	ld b, c                                          ; $6bc9: $41
	ld b, h                                          ; $6bca: $44
	ld e, l                                          ; $6bcb: $5d
	ld e, d                                          ; $6bcc: $5a
	ld c, h                                          ; $6bcd: $4c
	ld c, b                                          ; $6bce: $48
	and b                                            ; $6bcf: $a0
	ld d, h                                          ; $6bd0: $54
	ld d, h                                          ; $6bd1: $54
	ld c, c                                          ; $6bd2: $49
	ldh a, [$f5]                                     ; $6bd3: $f0 $f5
	dec sp                                           ; $6bd5: $3b
	ccf                                              ; $6bd6: $3f
	xor h                                            ; $6bd7: $ac
	adc d                                            ; $6bd8: $8a
	ldh a, [$73]                                     ; $6bd9: $f0 $73
	adc a                                            ; $6bdb: $8f
	ld b, d                                          ; $6bdc: $42
	ldh a, [$38]                                     ; $6bdd: $f0 $38
	ld c, e                                          ; $6bdf: $4b
	xor h                                            ; $6be0: $ac
	ldh a, [$80]                                     ; $6be1: $f0 $80
	ldh a, [$c5]                                     ; $6be3: $f0 $c5
	inc [hl]                                         ; $6be5: $34
	pop af                                           ; $6be6: $f1
	adc a                                            ; $6be7: $8f
	ld a, $38                                        ; $6be8: $3e $38
	ld b, d                                          ; $6bea: $42
	ld b, l                                          ; $6beb: $45
	and b                                            ; $6bec: $a0
	or h                                             ; $6bed: $b4
	xor h                                            ; $6bee: $ac
	jp hl                                            ; $6bef: $e9


	jr nz, jr_092_6b92                               ; $6bf0: $20 $a0

	cpl                                              ; $6bf2: $2f
	ld b, e                                          ; $6bf3: $43
	db $ec                                           ; $6bf4: $ec
	xor $4b                                          ; $6bf5: $ee $4b
	inc [hl]                                         ; $6bf7: $34
	ld d, h                                          ; $6bf8: $54
	ld b, c                                          ; $6bf9: $41
	ld a, [hl-]                                      ; $6bfa: $3a
	ld b, a                                          ; $6bfb: $47
	inc de                                           ; $6bfc: $13
	ldh a, [$ea]                                     ; $6bfd: $f0 $ea
	ld a, [hl-]                                      ; $6bff: $3a
	ld b, d                                          ; $6c00: $42

jr_092_6c01:
	ld b, a                                          ; $6c01: $47
	ld c, b                                          ; $6c02: $48
	and b                                            ; $6c03: $a0
	ld d, d                                          ; $6c04: $52
	inc [hl]                                         ; $6c05: $34
	db $ec                                           ; $6c06: $ec
	ld [$b4a8], sp                                   ; $6c07: $08 $a8 $b4
	xor h                                            ; $6c0a: $ac
	jp hl                                            ; $6c0b: $e9


	jr nz, jr_092_6bae                               ; $6c0c: $20 $a0

	cpl                                              ; $6c0e: $2f

jr_092_6c0f:
	ld b, e                                          ; $6c0f: $43
	db $ec                                           ; $6c10: $ec
	pop hl                                           ; $6c11: $e1
	ccf                                              ; $6c12: $3f
	xor h                                            ; $6c13: $ac
	adc d                                            ; $6c14: $8a
	ldh a, [$73]                                     ; $6c15: $f0 $73
	adc a                                            ; $6c17: $8f
	ld b, h                                          ; $6c18: $44
	dec sp                                           ; $6c19: $3b
	dec a                                            ; $6c1a: $3d
	ld b, d                                          ; $6c1b: $42
	inc a                                            ; $6c1c: $3c
	ld c, b                                          ; $6c1d: $48
	and b                                            ; $6c1e: $a0
	ld l, e                                          ; $6c1f: $6b
	xor c                                            ; $6c20: $a9
	ld d, h                                          ; $6c21: $54
	ld d, h                                          ; $6c22: $54
	ld c, e                                          ; $6c23: $4b
	and c                                            ; $6c24: $a1
	cpl                                              ; $6c25: $2f
	ld b, e                                          ; $6c26: $43
	ld b, [hl]                                       ; $6c27: $46
	dec sp                                           ; $6c28: $3b
	inc [hl]                                         ; $6c29: $34
	db $ec                                           ; $6c2a: $ec
	pop hl                                           ; $6c2b: $e1
	inc de                                           ; $6c2c: $13
	jr c, jr_092_6c7f                                ; $6c2d: $38 $50

	dec sp                                           ; $6c2f: $3b
	ld a, $56                                        ; $6c30: $3e $56
	jr c, @-$5e                                      ; $6c32: $38 $a0

	xor $10                                          ; $6c34: $ee $10
	xor b                                            ; $6c36: $a8
	ld e, d                                          ; $6c37: $5a
	add hl, sp                                       ; $6c38: $39
	ld d, a                                          ; $6c39: $57
	ld c, d                                          ; $6c3a: $4a
	inc [hl]                                         ; $6c3b: $34
	ld d, c                                          ; $6c3c: $51
	ld [hl], b                                       ; $6c3d: $70
	ld d, l                                          ; $6c3e: $55
	inc de                                           ; $6c3f: $13
	pop af                                           ; $6c40: $f1
	or $7f                                           ; $6c41: $f6 $7f
	ld d, e                                          ; $6c43: $53
	ld d, c                                          ; $6c44: $51
	ld c, [hl]                                       ; $6c45: $4e
	ld c, c                                          ; $6c46: $49
	ld [hl], a                                       ; $6c47: $77
	dec sp                                           ; $6c48: $3b
	dec a                                            ; $6c49: $3d
	and b                                            ; $6c4a: $a0
	cpl                                              ; $6c4b: $2f
	ld b, e                                          ; $6c4c: $43
	ld d, h                                          ; $6c4d: $54
	ld c, l                                          ; $6c4e: $4d
	inc [hl]                                         ; $6c4f: $34
	add hl, sp                                       ; $6c50: $39
	ld h, c                                          ; $6c51: $61
	ld b, d                                          ; $6c52: $42
	adc a                                            ; $6c53: $8f
	ld c, d                                          ; $6c54: $4a
	ldh a, [$a5]                                     ; $6c55: $f0 $a5
	dec sp                                           ; $6c57: $3b
	dec a                                            ; $6c58: $3d
	inc de                                           ; $6c59: $13
	db $ed                                           ; $6c5a: $ed
	add l                                            ; $6c5b: $85
	ld a, [hl-]                                      ; $6c5c: $3a
	ld b, c                                          ; $6c5d: $41
	ld b, h                                          ; $6c5e: $44
	ld e, l                                          ; $6c5f: $5d
	ld e, d                                          ; $6c60: $5a
	inc [hl]                                         ; $6c61: $34
	db $ec                                           ; $6c62: $ec
	cp c                                             ; $6c63: $b9
	ld d, b                                          ; $6c64: $50
	inc de                                           ; $6c65: $13
	ldh a, [$fa]                                     ; $6c66: $f0 $fa
	ld b, c                                          ; $6c68: $41
	ld c, d                                          ; $6c69: $4a
	ld l, h                                          ; $6c6a: $6c
	ld a, [hl-]                                      ; $6c6b: $3a
	jr c, jr_092_6c0f                                ; $6c6c: $38 $a1

	ld b, b                                          ; $6c6e: $40
	ld c, l                                          ; $6c6f: $4d
	inc [hl]                                         ; $6c70: $34
	db $ec                                           ; $6c71: $ec
	rst AddAOntoHL                                          ; $6c72: $ef
	inc [hl]                                         ; $6c73: $34
	db $ed                                           ; $6c74: $ed
	ld h, d                                          ; $6c75: $62
	ld b, a                                          ; $6c76: $47
	inc de                                           ; $6c77: $13
	ld [hl], d                                       ; $6c78: $72
	ld a, c                                          ; $6c79: $79
	ccf                                              ; $6c7a: $3f
	ld c, a                                          ; $6c7b: $4f
	ld d, b                                          ; $6c7c: $50
	dec sp                                           ; $6c7d: $3b
	dec a                                            ; $6c7e: $3d

jr_092_6c7f:
	inc a                                            ; $6c7f: $3c
	ld d, b                                          ; $6c80: $50
	jr c, jr_092_6cd3                                ; $6c81: $38 $50

	ld a, [hl-]                                      ; $6c83: $3a
	jr c, @-$56                                      ; $6c84: $38 $a8

	ld b, b                                          ; $6c86: $40
	ld c, l                                          ; $6c87: $4d
	ld e, e                                          ; $6c88: $5b
	ld d, [hl]                                       ; $6c89: $56
	xor $20                                          ; $6c8a: $ee $20
	and b                                            ; $6c8c: $a0
	cpl                                              ; $6c8d: $2f
	ld b, e                                          ; $6c8e: $43
	ld b, b                                          ; $6c8f: $40
	add hl, sp                                       ; $6c90: $39
	ld c, b                                          ; $6c91: $48
	and b                                            ; $6c92: $a0
	cpl                                              ; $6c93: $2f
	ld b, e                                          ; $6c94: $43
	db $ed                                           ; $6c95: $ed
	adc b                                            ; $6c96: $88
	inc [hl]                                         ; $6c97: $34
	halt                                             ; $6c98: $76
	ldh a, [rSTAT]                                   ; $6c99: $f0 $41
	ld d, e                                          ; $6c9b: $53
	db $ec                                           ; $6c9c: $ec
	ei                                               ; $6c9d: $fb
	xor h                                            ; $6c9e: $ac
	ldh a, [$a5]                                     ; $6c9f: $f0 $a5
	ldh a, [rSCX]                                    ; $6ca1: $f0 $43
	ld b, h                                          ; $6ca3: $44
	ld b, l                                          ; $6ca4: $45
	and b                                            ; $6ca5: $a0
	ldh a, [$a5]                                     ; $6ca6: $f0 $a5
	ldh a, [rSCX]                                    ; $6ca8: $f0 $43
	xor c                                            ; $6caa: $a9
	ld c, h                                          ; $6cab: $4c
	add l                                            ; $6cac: $85
	ld c, h                                          ; $6cad: $4c
	add l                                            ; $6cae: $85
	inc [hl]                                         ; $6caf: $34
	ld e, d                                          ; $6cb0: $5a
	ld b, c                                          ; $6cb1: $41
	ld a, [hl-]                                      ; $6cb2: $3a
	ld d, h                                          ; $6cb3: $54
	ld c, c                                          ; $6cb4: $49
	db $ec                                           ; $6cb5: $ec
	ei                                               ; $6cb6: $fb
	ld b, d                                          ; $6cb7: $42
	and c                                            ; $6cb8: $a1
	cpl                                              ; $6cb9: $2f
	ld b, e                                          ; $6cba: $43
	ld d, h                                          ; $6cbb: $54
	ld c, l                                          ; $6cbc: $4d
	inc [hl]                                         ; $6cbd: $34
	add hl, sp                                       ; $6cbe: $39
	ld h, c                                          ; $6cbf: $61
	ld b, d                                          ; $6cc0: $42
	adc a                                            ; $6cc1: $8f
	ld c, d                                          ; $6cc2: $4a
	ldh a, [$a5]                                     ; $6cc3: $f0 $a5
	dec sp                                           ; $6cc5: $3b
	dec a                                            ; $6cc6: $3d
	inc de                                           ; $6cc7: $13
	ldh a, [rSCX]                                    ; $6cc8: $f0 $43
	ldh a, [rAUDTERM]                                ; $6cca: $f0 $25
	ld a, [hl-]                                      ; $6ccc: $3a
	ld b, c                                          ; $6ccd: $41
	ld b, h                                          ; $6cce: $44
	ld e, l                                          ; $6ccf: $5d
	ld e, d                                          ; $6cd0: $5a
	xor h                                            ; $6cd1: $ac
	db $ec                                           ; $6cd2: $ec

jr_092_6cd3:
	cp c                                             ; $6cd3: $b9
	ld d, b                                          ; $6cd4: $50
	ld e, d                                          ; $6cd5: $5a
	add hl, sp                                       ; $6cd6: $39
	sub a                                            ; $6cd7: $97
	and b                                            ; $6cd8: $a0
	db $ec                                           ; $6cd9: $ec
	scf                                              ; $6cda: $37
	inc [hl]                                         ; $6cdb: $34
	sbc $a9                                          ; $6cdc: $de $a9
	ld b, [hl]                                       ; $6cde: $46
	ld d, a                                          ; $6cdf: $57
	ld d, e                                          ; $6ce0: $53
	ld c, c                                          ; $6ce1: $49
	add hl, sp                                       ; $6ce2: $39
	xor b                                            ; $6ce3: $a8
	ld d, h                                          ; $6ce4: $54
	ld b, d                                          ; $6ce5: $42
	ldh a, [rAUD2HIGH]                               ; $6ce6: $f0 $19
	ld b, a                                          ; $6ce8: $47
	ld a, [$3b38]                                    ; $6ce9: $fa $38 $3b
	ccf                                              ; $6cec: $3f
	ld c, [hl]                                       ; $6ced: $4e
	ld b, d                                          ; $6cee: $42
	ld c, h                                          ; $6cef: $4c
	and b                                            ; $6cf0: $a0
	cpl                                              ; $6cf1: $2f
	ld b, e                                          ; $6cf2: $43
	ld b, [hl]                                       ; $6cf3: $46
	ld d, d                                          ; $6cf4: $52
	ld d, a                                          ; $6cf5: $57
	pop af                                           ; $6cf6: $f1
	rst SubAFromBC                                          ; $6cf7: $e7
	sbc c                                            ; $6cf8: $99
	ld a, $3f                                        ; $6cf9: $3e $3f
	ld c, [hl]                                       ; $6cfb: $4e
	ld c, c                                          ; $6cfc: $49
	xor h                                            ; $6cfd: $ac
	ld d, e                                          ; $6cfe: $53
	dec sp                                           ; $6cff: $3b
	inc a                                            ; $6d00: $3c
	ld d, a                                          ; $6d01: $57
	ld d, c                                          ; $6d02: $51
	ld c, [hl]                                       ; $6d03: $4e
	inc a                                            ; $6d04: $3c
	ld c, a                                          ; $6d05: $4f
	ld c, h                                          ; $6d06: $4c
	ld c, b                                          ; $6d07: $48
	and b                                            ; $6d08: $a0
	ldh a, [$a5]                                     ; $6d09: $f0 $a5
	ldh a, [rSCX]                                    ; $6d0b: $f0 $43
	xor c                                            ; $6d0d: $a9
	ld c, h                                          ; $6d0e: $4c
	add l                                            ; $6d0f: $85
	inc [hl]                                         ; $6d10: $34
	ld e, d                                          ; $6d11: $5a
	ld b, c                                          ; $6d12: $41
	ld a, [hl-]                                      ; $6d13: $3a
	ld d, h                                          ; $6d14: $54
	ld c, c                                          ; $6d15: $49
	inc de                                           ; $6d16: $13
	pop af                                           ; $6d17: $f1
	ld l, $38                                        ; $6d18: $2e $38
	ccf                                              ; $6d1a: $3f
	ld b, [hl]                                       ; $6d1b: $46
	ld b, c                                          ; $6d1c: $41
	ld b, d                                          ; $6d1d: $42
	and c                                            ; $6d1e: $a1
	db $eb                                           ; $6d1f: $eb
	ld e, l                                          ; $6d20: $5d
	inc [hl]                                         ; $6d21: $34
	ld b, [hl]                                       ; $6d22: $46
	ld d, a                                          ; $6d23: $57
	ld d, e                                          ; $6d24: $53
	ld c, c                                          ; $6d25: $49
	add hl, sp                                       ; $6d26: $39
	xor b                                            ; $6d27: $a8
	sub b                                            ; $6d28: $90
	ld a, $6c                                        ; $6d29: $3e $6c
	ld b, h                                          ; $6d2b: $44
	ld h, e                                          ; $6d2c: $63
	and b                                            ; $6d2d: $a0
	ld d, h                                          ; $6d2e: $54
	ld d, h                                          ; $6d2f: $54
	ld b, a                                          ; $6d30: $47
	db $eb                                           ; $6d31: $eb
	ld l, e                                          ; $6d32: $6b
	inc de                                           ; $6d33: $13
	db $ed                                           ; $6d34: $ed
	ld [hl], l                                       ; $6d35: $75
	dec sp                                           ; $6d36: $3b
	ccf                                              ; $6d37: $3f
	ld l, e                                          ; $6d38: $6b
	ld a, [hl-]                                      ; $6d39: $3a
	ld b, d                                          ; $6d3a: $42
	and c                                            ; $6d3b: $a1
	ldh a, [$a5]                                     ; $6d3c: $f0 $a5
	ldh a, [rSCX]                                    ; $6d3e: $f0 $43
	xor c                                            ; $6d40: $a9
	ldh a, [$5a]                                     ; $6d41: $f0 $5a
	ld e, c                                          ; $6d43: $59
	dec sp                                           ; $6d44: $3b
	inc [hl]                                         ; $6d45: $34
	ld b, b                                          ; $6d46: $40
	ld b, c                                          ; $6d47: $41
	ld a, [hl-]                                      ; $6d48: $3a
	ld c, a                                          ; $6d49: $4f
	ld b, d                                          ; $6d4a: $42
	inc de                                           ; $6d4b: $13
	db $ec                                           ; $6d4c: $ec
	ei                                               ; $6d4d: $fb
	ld b, c                                          ; $6d4e: $41
	ld b, h                                          ; $6d4f: $44
	and b                                            ; $6d50: $a0
	db $eb                                           ; $6d51: $eb
	ld e, l                                          ; $6d52: $5d
	inc [hl]                                         ; $6d53: $34
	ld b, [hl]                                       ; $6d54: $46
	ld d, a                                          ; $6d55: $57
	ld d, e                                          ; $6d56: $53
	ld c, c                                          ; $6d57: $49
	add hl, sp                                       ; $6d58: $39
	xor b                                            ; $6d59: $a8
	ldh a, [$fa]                                     ; $6d5a: $f0 $fa
	ld d, d                                          ; $6d5c: $52
	ld a, c                                          ; $6d5d: $79
	ccf                                              ; $6d5e: $3f
	ld c, a                                          ; $6d5f: $4f
	ld d, b                                          ; $6d60: $50
	add hl, sp                                       ; $6d61: $39
	ld h, e                                          ; $6d62: $63
	and b                                            ; $6d63: $a0
	cpl                                              ; $6d64: $2f
	ld b, e                                          ; $6d65: $43
	ld b, [hl]                                       ; $6d66: $46
	ld d, d                                          ; $6d67: $52
	ld d, a                                          ; $6d68: $57
	pop af                                           ; $6d69: $f1
	rst SubAFromBC                                          ; $6d6a: $e7
	sbc c                                            ; $6d6b: $99
	ld a, $3a                                        ; $6d6c: $3e $3a
	jr c, jr_092_6dba                                ; $6d6e: $38 $4a

	ld b, l                                          ; $6d70: $45
	xor b                                            ; $6d71: $a8
	ld d, e                                          ; $6d72: $53
	dec sp                                           ; $6d73: $3b
	inc a                                            ; $6d74: $3c
	ld d, a                                          ; $6d75: $57
	ld d, c                                          ; $6d76: $51
	ld c, [hl]                                       ; $6d77: $4e
	inc a                                            ; $6d78: $3c
	ld c, a                                          ; $6d79: $4f
	inc de                                           ; $6d7a: $13
	ld a, $4d                                        ; $6d7b: $3e $4d
	ld a, [hl-]                                      ; $6d7d: $3a
	jr c, jr_092_6dbc                                ; $6d7e: $38 $3c

	ld d, b                                          ; $6d80: $50
	ld c, b                                          ; $6d81: $48
	and b                                            ; $6d82: $a0
	adc d                                            ; $6d83: $8a
	ldh a, [$73]                                     ; $6d84: $f0 $73
	adc a                                            ; $6d86: $8f

jr_092_6d87:
	ld b, d                                          ; $6d87: $42
	ldh a, [$38]                                     ; $6d88: $f0 $38
	ld c, e                                          ; $6d8a: $4b
	xor h                                            ; $6d8b: $ac
	ld d, c                                          ; $6d8c: $51
	ld [hl], b                                       ; $6d8d: $70
	ld d, l                                          ; $6d8e: $55
	pop af                                           ; $6d8f: $f1
	adc a                                            ; $6d90: $8f
	ld a, $55                                        ; $6d91: $3e $55
	ccf                                              ; $6d93: $3f
	xor h                                            ; $6d94: $ac
	ld c, a                                          ; $6d95: $4f
	add hl, sp                                       ; $6d96: $39
	inc [hl]                                         ; $6d97: $34
	add a                                            ; $6d98: $87
	ldh a, [$5d]                                     ; $6d99: $f0 $5d
	ld a, [hl-]                                      ; $6d9b: $3a
	ld b, d                                          ; $6d9c: $42
	ld b, l                                          ; $6d9d: $45
	and b                                            ; $6d9e: $a0
	cpl                                              ; $6d9f: $2f
	ld b, e                                          ; $6da0: $43
	ld l, e                                          ; $6da1: $6b
	ld h, d                                          ; $6da2: $62
	ld l, [hl]                                       ; $6da3: $6e
	dec sp                                           ; $6da4: $3b
	ccf                                              ; $6da5: $3f
	ld c, [hl]                                       ; $6da6: $4e
	ld b, d                                          ; $6da7: $42
	and c                                            ; $6da8: $a1
	ld a, b                                          ; $6da9: $78
	ccf                                              ; $6daa: $3f
	ld l, h                                          ; $6dab: $6c
	ld c, l                                          ; $6dac: $4d
	ld a, e                                          ; $6dad: $7b
	xor h                                            ; $6dae: $ac
	ldh a, [rTAC]                                    ; $6daf: $f0 $07
	inc a                                            ; $6db1: $3c
	ld c, [hl]                                       ; $6db2: $4e
	ld h, e                                          ; $6db3: $63
	ld b, l                                          ; $6db4: $45
	and b                                            ; $6db5: $a0
	cpl                                              ; $6db6: $2f
	ld b, e                                          ; $6db7: $43
	ldh a, [$ea]                                     ; $6db8: $f0 $ea

jr_092_6dba:
	ld b, h                                          ; $6dba: $44
	ld e, l                                          ; $6dbb: $5d

jr_092_6dbc:
	ld e, d                                          ; $6dbc: $5a
	xor h                                            ; $6dbd: $ac
	ldh a, [$c9]                                     ; $6dbe: $f0 $c9
	ld e, l                                          ; $6dc0: $5d

jr_092_6dc1:
	ld d, b                                          ; $6dc1: $50
	ld c, l                                          ; $6dc2: $4d
	ld a, [hl-]                                      ; $6dc3: $3a
	jr c, jr_092_6e04                                ; $6dc4: $38 $3e

	ld a, [hl-]                                      ; $6dc6: $3a
	ld [hl], h                                       ; $6dc7: $74
	ld c, b                                          ; $6dc8: $48
	and b                                            ; $6dc9: $a0
	ld a, b                                          ; $6dca: $78
	ld c, l                                          ; $6dcb: $4d
	ld a, [hl-]                                      ; $6dcc: $3a
	jr c, jr_092_6e11                                ; $6dcd: $38 $42

	xor c                                            ; $6dcf: $a9
	xor $14                                          ; $6dd0: $ee $14
	inc [hl]                                         ; $6dd2: $34
	ldh a, [$8d]                                     ; $6dd3: $f0 $8d
	ldh a, [$9e]                                     ; $6dd5: $f0 $9e
	ld c, h                                          ; $6dd7: $4c
	add l                                            ; $6dd8: $85
	and b                                            ; $6dd9: $a0
	cpl                                              ; $6dda: $2f
	ld b, e                                          ; $6ddb: $43
	ld a, [hl-]                                      ; $6ddc: $3a
	ld b, c                                          ; $6ddd: $41
	inc a                                            ; $6dde: $3c
	ldh a, [$66]                                     ; $6ddf: $f0 $66
	ld b, c                                          ; $6de1: $41
	ld c, d                                          ; $6de2: $4a
	ld a, [hl-]                                      ; $6de3: $3a
	jr c, jr_092_6d87                                ; $6de4: $38 $a1

	ld e, [hl]                                       ; $6de6: $5e
	dec sp                                           ; $6de7: $3b
	inc [hl]                                         ; $6de8: $34
	ldh a, [$34]                                     ; $6de9: $f0 $34
	ld b, a                                          ; $6deb: $47
	xor h                                            ; $6dec: $ac
	sbc $f0                                          ; $6ded: $de $f0
	adc l                                            ; $6def: $8d
	ldh a, [$9e]                                     ; $6df0: $f0 $9e
	ld c, h                                          ; $6df2: $4c
	add l                                            ; $6df3: $85
	xor b                                            ; $6df4: $a8
	ld c, a                                          ; $6df5: $4f
	add hl, sp                                       ; $6df6: $39
	inc [hl]                                         ; $6df7: $34
	ldh a, [$e8]                                     ; $6df8: $f0 $e8
	ld c, [hl]                                       ; $6dfa: $4e
	ld h, e                                          ; $6dfb: $63
	ld c, h                                          ; $6dfc: $4c
	and b                                            ; $6dfd: $a0
	cpl                                              ; $6dfe: $2f
	ld b, e                                          ; $6dff: $43
	ld l, e                                          ; $6e00: $6b
	ld l, [hl]                                       ; $6e01: $6e
	dec sp                                           ; $6e02: $3b
	ccf                                              ; $6e03: $3f

jr_092_6e04:
	ld c, [hl]                                       ; $6e04: $4e
	ld b, c                                          ; $6e05: $41
	ld b, h                                          ; $6e06: $44
	ld e, a                                          ; $6e07: $5f
	add hl, sp                                       ; $6e08: $39
	xor b                                            ; $6e09: $a8
	adc d                                            ; $6e0a: $8a
	ldh a, [$73]                                     ; $6e0b: $f0 $73
	adc a                                            ; $6e0d: $8f
	ld c, d                                          ; $6e0e: $4a
	ld c, b                                          ; $6e0f: $48
	and b                                            ; $6e10: $a0

jr_092_6e11:
	ldh a, [$9f]                                     ; $6e11: $f0 $9f
	ld e, e                                          ; $6e13: $5b
	ccf                                              ; $6e14: $3f
	rst SubAFromDE                                          ; $6e15: $df
	ld h, e                                          ; $6e16: $63
	ld b, l                                          ; $6e17: $45
	xor b                                            ; $6e18: $a8
	ld b, b                                          ; $6e19: $40
	ld c, l                                          ; $6e1a: $4d
	ld e, e                                          ; $6e1b: $5b
	ld d, [hl]                                       ; $6e1c: $56
	inc [hl]                                         ; $6e1d: $34
	jp hl                                            ; $6e1e: $e9


	jr nz, jr_092_6dc1                               ; $6e1f: $20 $a0

	cpl                                              ; $6e21: $2f
	ld b, e                                          ; $6e22: $43
	db $ec                                           ; $6e23: $ec
	pop hl                                           ; $6e24: $e1
	dec sp                                           ; $6e25: $3b
	ccf                                              ; $6e26: $3f
	xor h                                            ; $6e27: $ac
	adc d                                            ; $6e28: $8a
	ldh a, [$73]                                     ; $6e29: $f0 $73
	adc a                                            ; $6e2b: $8f
	ld b, h                                          ; $6e2c: $44
	dec sp                                           ; $6e2d: $3b
	dec a                                            ; $6e2e: $3d
	ld b, d                                          ; $6e2f: $42
	inc a                                            ; $6e30: $3c
	ld c, b                                          ; $6e31: $48
	and b                                            ; $6e32: $a0
	xor $10                                          ; $6e33: $ee $10
	xor b                                            ; $6e35: $a8
	ld e, d                                          ; $6e36: $5a
	add hl, sp                                       ; $6e37: $39
	ld d, a                                          ; $6e38: $57
	ld c, d                                          ; $6e39: $4a
	inc [hl]                                         ; $6e3a: $34
	ld d, c                                          ; $6e3b: $51
	ld [hl], b                                       ; $6e3c: $70
	jr c, jr_092_6e52                                ; $6e3d: $38 $13

	ldh a, [$64]                                     ; $6e3f: $f0 $64
	ld a, [hl-]                                      ; $6e41: $3a
	db $ed                                           ; $6e42: $ed
	call nc, Call_092_5153                           ; $6e43: $d4 $53 $51
	ld c, [hl]                                       ; $6e46: $4e
	ld c, c                                          ; $6e47: $49
	ld [hl], a                                       ; $6e48: $77
	dec sp                                           ; $6e49: $3b
	dec a                                            ; $6e4a: $3d
	and b                                            ; $6e4b: $a0
	cpl                                              ; $6e4c: $2f
	ld b, e                                          ; $6e4d: $43
	ld d, h                                          ; $6e4e: $54
	ld c, l                                          ; $6e4f: $4d
	inc [hl]                                         ; $6e50: $34
	add hl, sp                                       ; $6e51: $39

jr_092_6e52:
	ld h, c                                          ; $6e52: $61
	ld b, d                                          ; $6e53: $42
	adc a                                            ; $6e54: $8f
	ld c, d                                          ; $6e55: $4a
	ldh a, [$a5]                                     ; $6e56: $f0 $a5
	dec sp                                           ; $6e58: $3b
	dec a                                            ; $6e59: $3d
	inc de                                           ; $6e5a: $13
	ldh a, [rSCX]                                    ; $6e5b: $f0 $43
	ldh a, [rAUDTERM]                                ; $6e5d: $f0 $25
	ld a, [hl-]                                      ; $6e5f: $3a
	ld b, c                                          ; $6e60: $41
	ld b, h                                          ; $6e61: $44
	ld e, l                                          ; $6e62: $5d
	ld e, d                                          ; $6e63: $5a
	xor h                                            ; $6e64: $ac
	add sp, -$7b                                     ; $6e65: $e8 $85
	and c                                            ; $6e67: $a1
	db $ed                                           ; $6e68: $ed
	ld b, [hl]                                       ; $6e69: $46
	xor h                                            ; $6e6a: $ac
	db $ec                                           ; $6e6b: $ec
	ld e, a                                          ; $6e6c: $5f
	inc [hl]                                         ; $6e6d: $34
	db $eb                                           ; $6e6e: $eb
	and c                                            ; $6e6f: $a1
	and b                                            ; $6e70: $a0
	cpl                                              ; $6e71: $2f
	ld b, e                                          ; $6e72: $43
	ld b, [hl]                                       ; $6e73: $46
	dec sp                                           ; $6e74: $3b
	inc [hl]                                         ; $6e75: $34
	db $ec                                           ; $6e76: $ec
	pop hl                                           ; $6e77: $e1
	xor b                                            ; $6e78: $a8
	ld [$351f], a                                    ; $6e79: $ea $1f $35
	ld [$a132], a                                    ; $6e7c: $ea $32 $a1
	ld [$acfe], a                                    ; $6e7f: $ea $fe $ac
	db $ec                                           ; $6e82: $ec
	cp c                                             ; $6e83: $b9
	ld c, c                                          ; $6e84: $49
	ld [hl], a                                       ; $6e85: $77
	add hl, sp                                       ; $6e86: $39
	ld h, e                                          ; $6e87: $63
	and b                                            ; $6e88: $a0
	cpl                                              ; $6e89: $2f
	ld b, e                                          ; $6e8a: $43
	ld a, [$4d5e]                                    ; $6e8b: $fa $5e $4d
	ld h, c                                          ; $6e8e: $61
	ld d, [hl]                                       ; $6e8f: $56
	dec sp                                           ; $6e90: $3b
	dec a                                            ; $6e91: $3d
	and c                                            ; $6e92: $a1
	ld a, e                                          ; $6e93: $7b
	inc [hl]                                         ; $6e94: $34
	pop af                                           ; $6e95: $f1
	or d                                             ; $6e96: $b2
	pop af                                           ; $6e97: $f1
	ld c, b                                          ; $6e98: $48
	ld c, h                                          ; $6e99: $4c
	xor b                                            ; $6e9a: $a8
	ld l, e                                          ; $6e9b: $6b
	add d                                            ; $6e9c: $82
	dec sp                                           ; $6e9d: $3b
	ccf                                              ; $6e9e: $3f
	ld c, [hl]                                       ; $6e9f: $4e
	ld b, d                                          ; $6ea0: $42
	ld b, l                                          ; $6ea1: $45
	xor b                                            ; $6ea2: $a8
	ld b, b                                          ; $6ea3: $40
	inc [hl]                                         ; $6ea4: $34
	ld b, b                                          ; $6ea5: $40
	ld b, c                                          ; $6ea6: $41
	ld a, [hl-]                                      ; $6ea7: $3a
	ld d, h                                          ; $6ea8: $54
	ld c, c                                          ; $6ea9: $49
	ld a, [hl-]                                      ; $6eaa: $3a
	jr c, jr_092_6f10                                ; $6eab: $38 $63

	ld b, l                                          ; $6ead: $45
	ld c, b                                          ; $6eae: $48
	and b                                            ; $6eaf: $a0
	cpl                                              ; $6eb0: $2f
	ld b, e                                          ; $6eb1: $43
	ld l, e                                          ; $6eb2: $6b
	ld b, h                                          ; $6eb3: $44
	inc [hl]                                         ; $6eb4: $34
	ldh a, [$8d]                                     ; $6eb5: $f0 $8d
	ldh a, [$9e]                                     ; $6eb7: $f0 $9e
	and b                                            ; $6eb9: $a0
	ld c, a                                          ; $6eba: $4f
	add hl, sp                                       ; $6ebb: $39
	inc [hl]                                         ; $6ebc: $34
	adc d                                            ; $6ebd: $8a
	ldh a, [$73]                                     ; $6ebe: $f0 $73
	adc a                                            ; $6ec0: $8f
	ld b, a                                          ; $6ec1: $47
	inc de                                           ; $6ec2: $13
	ldh a, [$e8]                                     ; $6ec3: $f0 $e8
	ld d, b                                          ; $6ec5: $50
	ld a, [hl-]                                      ; $6ec6: $3a
	ld e, h                                          ; $6ec7: $5c
	ld d, [hl]                                       ; $6ec8: $56
	and b                                            ; $6ec9: $a0
	ld [$ac9c], a                                    ; $6eca: $ea $9c $ac
	ld [$35c7], a                                    ; $6ecd: $ea $c7 $35
	ldh a, [c]                                       ; $6ed0: $f2
	or e                                             ; $6ed1: $b3
	ldh a, [c]                                       ; $6ed2: $f2
	ld d, d                                          ; $6ed3: $52
	ld d, c                                          ; $6ed4: $51
	ld c, [hl]                                       ; $6ed5: $4e
	inc a                                            ; $6ed6: $3c
	ld d, b                                          ; $6ed7: $50
	and b                                            ; $6ed8: $a0
	cpl                                              ; $6ed9: $2f
	ld b, e                                          ; $6eda: $43
	ld [hl], d                                       ; $6edb: $72
	adc c                                            ; $6edc: $89
	ld b, a                                          ; $6edd: $47
	ld h, a                                          ; $6ede: $67
	dec sp                                           ; $6edf: $3b
	ccf                                              ; $6ee0: $3f
	inc de                                           ; $6ee1: $13
	ld [hl], d                                       ; $6ee2: $72
	dec a                                            ; $6ee3: $3d
	jr c, jr_092_6f20                                ; $6ee4: $38 $3a

	ld [hl], h                                       ; $6ee6: $74
	and b                                            ; $6ee7: $a0
	cpl                                              ; $6ee8: $2f
	ld b, e                                          ; $6ee9: $43
	ld b, [hl]                                       ; $6eea: $46
	dec sp                                           ; $6eeb: $3b
	inc [hl]                                         ; $6eec: $34
	db $ec                                           ; $6eed: $ec
	pop hl                                           ; $6eee: $e1
	xor b                                            ; $6eef: $a8
	ld [$a81f], a                                    ; $6ef0: $ea $1f $a8
	ld [$a132], a                                    ; $6ef3: $ea $32 $a1
	ld [$acfe], a                                    ; $6ef6: $ea $fe $ac
	db $ec                                           ; $6ef9: $ec
	cp c                                             ; $6efa: $b9
	ld b, c                                          ; $6efb: $41
	db $ec                                           ; $6efc: $ec
	ret c                                            ; $6efd: $d8

	and b                                            ; $6efe: $a0
	cpl                                              ; $6eff: $2f
	ld b, e                                          ; $6f00: $43
	ld b, b                                          ; $6f01: $40
	add hl, sp                                       ; $6f02: $39
	inc [hl]                                         ; $6f03: $34
	db $ec                                           ; $6f04: $ec
	cp c                                             ; $6f05: $b9
	xor b                                            ; $6f06: $a8
	ld d, c                                          ; $6f07: $51
	ld [hl], b                                       ; $6f08: $70
	ld d, l                                          ; $6f09: $55
	db $ec                                           ; $6f0a: $ec
	dec sp                                           ; $6f0b: $3b
	inc a                                            ; $6f0c: $3c
	ld d, b                                          ; $6f0d: $50
	ld c, h                                          ; $6f0e: $4c
	and b                                            ; $6f0f: $a0

jr_092_6f10:
	ld a, $56                                        ; $6f10: $3e $56
	ldh a, [$8c]                                     ; $6f12: $f0 $8c
	ld c, [hl]                                       ; $6f14: $4e
	ld c, c                                          ; $6f15: $49
	ld e, h                                          ; $6f16: $5c
	ld b, d                                          ; $6f17: $42
	ldh a, [$d2]                                     ; $6f18: $f0 $d2
	ld b, d                                          ; $6f1a: $42
	inc de                                           ; $6f1b: $13
	pop af                                           ; $6f1c: $f1
	and l                                            ; $6f1d: $a5
	pop af                                           ; $6f1e: $f1
	ldh [c], a                                       ; $6f1f: $e2

jr_092_6f20:
	ld d, e                                          ; $6f20: $53
	ld b, l                                          ; $6f21: $45
	inc a                                            ; $6f22: $3c
	dec sp                                           ; $6f23: $3b
	dec a                                            ; $6f24: $3d
	ld h, e                                          ; $6f25: $63
	and b                                            ; $6f26: $a0
	cpl                                              ; $6f27: $2f
	ld b, e                                          ; $6f28: $43
	ld b, b                                          ; $6f29: $40
	add hl, sp                                       ; $6f2a: $39
	ld e, e                                          ; $6f2b: $5b
	ld d, [hl]                                       ; $6f2c: $56
	ld a, [hl-]                                      ; $6f2d: $3a
	ld d, l                                          ; $6f2e: $55
	ccf                                              ; $6f2f: $3f
	xor h                                            ; $6f30: $ac
	pop af                                           ; $6f31: $f1
	ld [hl], a                                       ; $6f32: $77
	db $f4                                           ; $6f33: $f4
	sbc d                                            ; $6f34: $9a
	ld b, d                                          ; $6f35: $42
	ldh a, [$08]                                     ; $6f36: $f0 $08
	add hl, sp                                       ; $6f38: $39
	ld c, e                                          ; $6f39: $4b
	and c                                            ; $6f3a: $a1
	ldh a, [$7e]                                     ; $6f3b: $f0 $7e
	ldh a, [rWX]                                     ; $6f3d: $f0 $4b
	ld e, c                                          ; $6f3f: $59
	sub e                                            ; $6f40: $93
	ld b, l                                          ; $6f41: $45
	inc [hl]                                         ; $6f42: $34
	ldh a, [$7e]                                     ; $6f43: $f0 $7e
	ldh a, [rWX]                                     ; $6f45: $f0 $4b
	ld e, c                                          ; $6f47: $59
	sub e                                            ; $6f48: $93
	xor b                                            ; $6f49: $a8
	ld b, l                                          ; $6f4a: $45
	inc a                                            ; $6f4b: $3c
	dec sp                                           ; $6f4c: $3b
	dec a                                            ; $6f4d: $3d
	ld h, e                                          ; $6f4e: $63
	ld b, l                                          ; $6f4f: $45
	and b                                            ; $6f50: $a0
	cpl                                              ; $6f51: $2f
	ld b, e                                          ; $6f52: $43
	adc b                                            ; $6f53: $88
	sub c                                            ; $6f54: $91
	inc a                                            ; $6f55: $3c
	ld a, [hl-]                                      ; $6f56: $3a
	ld [hl], h                                       ; $6f57: $74
	xor c                                            ; $6f58: $a9
	ld d, d                                          ; $6f59: $52
	dec a                                            ; $6f5a: $3d
	db $ed                                           ; $6f5b: $ed
	ld a, h                                          ; $6f5c: $7c
	ld b, h                                          ; $6f5d: $44
	dec sp                                           ; $6f5e: $3b
	dec a                                            ; $6f5f: $3d
	ld d, a                                          ; $6f60: $57
	ld a, $3f                                        ; $6f61: $3e $3f
	ld c, b                                          ; $6f63: $48
	and b                                            ; $6f64: $a0
	ld b, [hl]                                       ; $6f65: $46
	dec sp                                           ; $6f66: $3b
	inc [hl]                                         ; $6f67: $34
	ld c, a                                          ; $6f68: $4f
	add hl, sp                                       ; $6f69: $39
	xor h                                            ; $6f6a: $ac
	adc d                                            ; $6f6b: $8a
	ldh a, [$73]                                     ; $6f6c: $f0 $73
	adc a                                            ; $6f6e: $8f
	ld [$a0c5], a                                    ; $6f6f: $ea $c5 $a0
	ld [$ac9c], a                                    ; $6f72: $ea $9c $ac
	ld [$a0c7], a                                    ; $6f75: $ea $c7 $a0
	db $ed                                           ; $6f78: $ed
	dec a                                            ; $6f79: $3d

jr_092_6f7a:
	inc [hl]                                         ; $6f7a: $34
	ldh a, [rAUD4LEN]                                ; $6f7b: $f0 $20
	ld [hl], e                                       ; $6f7d: $73
	ldh a, [$32]                                     ; $6f7e: $f0 $32
	xor b                                            ; $6f80: $a8
	ldh a, [$5c]                                     ; $6f81: $f0 $5c
	ld d, l                                          ; $6f83: $55
	ld a, [hl-]                                      ; $6f84: $3a
	jr c, jr_092_6fc8                                ; $6f85: $38 $41

	db $ec                                           ; $6f87: $ec
	ret c                                            ; $6f88: $d8

	and b                                            ; $6f89: $a0
	cpl                                              ; $6f8a: $2f
	ld b, e                                          ; $6f8b: $43
	ld d, d                                          ; $6f8c: $52
	inc [hl]                                         ; $6f8d: $34
	ld c, c                                          ; $6f8e: $49
	ld d, a                                          ; $6f8f: $57
	ld b, [hl]                                       ; $6f90: $46
	ld e, [hl]                                       ; $6f91: $5e

jr_092_6f92:
	sbc h                                            ; $6f92: $9c
	xor h                                            ; $6f93: $ac
	xor $19                                          ; $6f94: $ee $19
	ld b, d                                          ; $6f96: $42
	pop af                                           ; $6f97: $f1
	ld d, e                                          ; $6f98: $53
	ldh a, [c]                                       ; $6f99: $f2
	ld b, [hl]                                       ; $6f9a: $46
	ld d, e                                          ; $6f9b: $53
	inc de                                           ; $6f9c: $13
	sub h                                            ; $6f9d: $94
	dec a                                            ; $6f9e: $3d
	dec sp                                           ; $6f9f: $3b
	ccf                                              ; $6fa0: $3f
	ld c, c                                          ; $6fa1: $49
	ld d, h                                          ; $6fa2: $54
	ld e, a                                          ; $6fa3: $5f
	inc a                                            ; $6fa4: $3c
	ld a, [hl-]                                      ; $6fa5: $3a
	and c                                            ; $6fa6: $a1
	ld b, b                                          ; $6fa7: $40
	ld c, l                                          ; $6fa8: $4d
	ld e, e                                          ; $6fa9: $5b
	ld d, [hl]                                       ; $6faa: $56
	inc [hl]                                         ; $6fab: $34
	db $ec                                           ; $6fac: $ec
	and d                                            ; $6fad: $a2
	xor h                                            ; $6fae: $ac
	ld e, b                                          ; $6faf: $58
	ld b, l                                          ; $6fb0: $45
	ld a, [hl-]                                      ; $6fb1: $3a
	ld d, b                                          ; $6fb2: $50
	and b                                            ; $6fb3: $a0
	cpl                                              ; $6fb4: $2f
	ld b, e                                          ; $6fb5: $43
	adc d                                            ; $6fb6: $8a
	ldh a, [$73]                                     ; $6fb7: $f0 $73
	adc a                                            ; $6fb9: $8f
	inc a                                            ; $6fba: $3c
	xor l                                            ; $6fbb: $ad
	ld l, e                                          ; $6fbc: $6b
	ld b, d                                          ; $6fbd: $42
	ldh a, [$c1]                                     ; $6fbe: $f0 $c1
	ldh a, [$d5]                                     ; $6fc0: $f0 $d5
	ld h, d                                          ; $6fc2: $62
	inc de                                           ; $6fc3: $13
	ld a, $3f                                        ; $6fc4: $3e $3f
	ld c, [hl]                                       ; $6fc6: $4e
	ld b, c                                          ; $6fc7: $41

jr_092_6fc8:
	ld b, h                                          ; $6fc8: $44
	ld e, a                                          ; $6fc9: $5f
	add hl, sp                                       ; $6fca: $39
	ld c, b                                          ; $6fcb: $48
	and b                                            ; $6fcc: $a0
	ld d, d                                          ; $6fcd: $52
	inc [hl]                                         ; $6fce: $34
	ldh a, [$34]                                     ; $6fcf: $f0 $34
	ld b, a                                          ; $6fd1: $47
	db $ec                                           ; $6fd2: $ec
	ld [$b4ad], sp                                   ; $6fd3: $08 $ad $b4
	inc [hl]                                         ; $6fd6: $34
	jp hl                                            ; $6fd7: $e9


	jr nz, jr_092_6f7a                               ; $6fd8: $20 $a0

	ld b, [hl]                                       ; $6fda: $46
	dec sp                                           ; $6fdb: $3b
	inc [hl]                                         ; $6fdc: $34
	ld b, b                                          ; $6fdd: $40
	ld c, l                                          ; $6fde: $4d
	ld e, e                                          ; $6fdf: $5b
	ld d, [hl]                                       ; $6fe0: $56
	xor h                                            ; $6fe1: $ac
	ld h, a                                          ; $6fe2: $67
	ld d, l                                          ; $6fe3: $55
	ld h, e                                          ; $6fe4: $63
	ld c, h                                          ; $6fe5: $4c
	and b                                            ; $6fe6: $a0
	ld b, b                                          ; $6fe7: $40
	ld c, l                                          ; $6fe8: $4d
	ld e, e                                          ; $6fe9: $5b
	ld d, [hl]                                       ; $6fea: $56
	ld l, a                                          ; $6feb: $6f
	xor h                                            ; $6fec: $ac
	ld c, a                                          ; $6fed: $4f
	add hl, sp                                       ; $6fee: $39
	pop af                                           ; $6fef: $f1
	ld l, a                                          ; $6ff0: $6f
	ld b, d                                          ; $6ff1: $42
	ldh a, [$28]                                     ; $6ff2: $f0 $28
	ld b, a                                          ; $6ff4: $47
	ld h, a                                          ; $6ff5: $67
	ld d, h                                          ; $6ff6: $54
	add hl, sp                                       ; $6ff7: $39
	dec sp                                           ; $6ff8: $3b
	ld c, c                                          ; $6ff9: $49
	and b                                            ; $6ffa: $a0
	cpl                                              ; $6ffb: $2f
	ld b, e                                          ; $6ffc: $43
	db $ec                                           ; $6ffd: $ec
	db $d3                                           ; $6ffe: $d3
	xor c                                            ; $6fff: $a9
	ld b, b                                          ; $7000: $40
	ld b, c                                          ; $7001: $41
	ld a, [hl-]                                      ; $7002: $3a
	ld b, a                                          ; $7003: $47
	pop af                                           ; $7004: $f1
	ld d, $53                                        ; $7005: $16 $53
	ld a, [hl-]                                      ; $7007: $3a
	ld d, l                                          ; $7008: $55
	ccf                                              ; $7009: $3f
	ld c, a                                          ; $700a: $4f
	ld c, b                                          ; $700b: $48
	and b                                            ; $700c: $a0
	db $ed                                           ; $700d: $ed
	ld b, e                                          ; $700e: $43
	inc [hl]                                         ; $700f: $34
	jr c, jr_092_6f92                                ; $7010: $38 $80

	ld d, d                                          ; $7012: $52
	ld c, d                                          ; $7013: $4a
	ld c, a                                          ; $7014: $4f
	ld d, h                                          ; $7015: $54
	ld d, h                                          ; $7016: $54
	ld b, a                                          ; $7017: $47
	inc de                                           ; $7018: $13
	jr c, jr_092_7058                                ; $7019: $38 $3d

	dec sp                                           ; $701b: $3b
	ccf                                              ; $701c: $3f
	db $eb                                           ; $701d: $eb
	inc [hl]                                         ; $701e: $34
	ld c, d                                          ; $701f: $4a
	ld a, $66                                        ; $7020: $3e $66
	add hl, sp                                       ; $7022: $39
	and b                                            ; $7023: $a0
	cpl                                              ; $7024: $2f
	ld b, e                                          ; $7025: $43
	ld b, b                                          ; $7026: $40
	ld c, l                                          ; $7027: $4d
	ld c, e                                          ; $7028: $4b
	inc de                                           ; $7029: $13
	ld [$4c30], a                                    ; $702a: $ea $30 $4c
	ld c, b                                          ; $702d: $48
	and b                                            ; $702e: $a0
	cpl                                              ; $702f: $2f
	ld b, e                                          ; $7030: $43
	ret                                              ; $7031: $c9


	inc [hl]                                         ; $7032: $34
	pop af                                           ; $7033: $f1
	sub h                                            ; $7034: $94
	dec a                                            ; $7035: $3d
	jr c, @+$47                                      ; $7036: $38 $45

	ld a, [hl-]                                      ; $7038: $3a
	ld [hl], h                                       ; $7039: $74
	and b                                            ; $703a: $a0
	ld h, e                                          ; $703b: $63
	inc [hl]                                         ; $703c: $34
	ld l, a                                          ; $703d: $6f
	ld b, d                                          ; $703e: $42
	xor c                                            ; $703f: $a9
	add a                                            ; $7040: $87
	db $f4                                           ; $7041: $f4
	inc hl                                           ; $7042: $23
	ld [hl], d                                       ; $7043: $72
	ccf                                              ; $7044: $3f
	ld c, [hl]                                       ; $7045: $4e
	inc a                                            ; $7046: $3c
	ld d, b                                          ; $7047: $50
	inc de                                           ; $7048: $13
	pop af                                           ; $7049: $f1
	ld b, $f1                                        ; $704a: $06 $f1
	ld a, $3e                                        ; $704c: $3e $3e
	ccf                                              ; $704e: $3f
	ld h, h                                          ; $704f: $64
	ld d, l                                          ; $7050: $55
	ld h, e                                          ; $7051: $63
	xor b                                            ; $7052: $a8
	ld b, [hl]                                       ; $7053: $46
	ld a, [hl-]                                      ; $7054: $3a
	dec a                                            ; $7055: $3d
	ld d, e                                          ; $7056: $53
	ld l, [hl]                                       ; $7057: $6e

jr_092_7058:
	dec sp                                           ; $7058: $3b
	ccf                                              ; $7059: $3f
	ld l, h                                          ; $705a: $6c
	ccf                                              ; $705b: $3f
	and b                                            ; $705c: $a0
	cpl                                              ; $705d: $2f
	ld b, e                                          ; $705e: $43
	ld b, l                                          ; $705f: $45
	ld e, c                                          ; $7060: $59
	ld a, $34                                        ; $7061: $3e $34
	ld [hl], d                                       ; $7063: $72
	ccf                                              ; $7064: $3f
	ld e, a                                          ; $7065: $5f
	ld b, l                                          ; $7066: $45
	and b                                            ; $7067: $a0
	cpl                                              ; $7068: $2f
	ld b, e                                          ; $7069: $43
	ld b, b                                          ; $706a: $40
	ld c, l                                          ; $706b: $4d
	ld c, a                                          ; $706c: $4f
	ld b, b                                          ; $706d: $40
	add hl, sp                                       ; $706e: $39
	ld b, h                                          ; $706f: $44
	and b                                            ; $7070: $a0
	cpl                                              ; $7071: $2f
	ld b, e                                          ; $7072: $43
	ld [$4c9c], a                                    ; $7073: $ea $9c $4c
	xor h                                            ; $7076: $ac
	pop af                                           ; $7077: $f1
	sub d                                            ; $7078: $92
	ldh a, [rTAC]                                    ; $7079: $f0 $07
	inc [hl]                                         ; $707b: $34
	ldh a, [rAUD1LOW]                                ; $707c: $f0 $13
	ldh a, [$63]                                     ; $707e: $f0 $63
	ld b, h                                          ; $7080: $44
	ld e, l                                          ; $7081: $5d
	ld e, d                                          ; $7082: $5a
	ld c, b                                          ; $7083: $48
	and b                                            ; $7084: $a0
	cpl                                              ; $7085: $2f
	ld b, e                                          ; $7086: $43
	ldh a, [rPCM12]                                  ; $7087: $f0 $76
	ldh a, [$d2]                                     ; $7089: $f0 $d2
	ldh a, [$3f]                                     ; $708b: $f0 $3f
	inc a                                            ; $708d: $3c
	ld [hl], h                                       ; $708e: $74
	xor b                                            ; $708f: $a8
	ldh a, [$bd]                                     ; $7090: $f0 $bd
	jr c, jr_092_70d3                                ; $7092: $38 $3f

	ld c, a                                          ; $7094: $4f
	ld d, b                                          ; $7095: $50
	jr c, @+$3f                                      ; $7096: $38 $3d

	jr c, jr_092_70f7                                ; $7098: $38 $5d

	ld e, d                                          ; $709a: $5a
	ld a, [hl-]                                      ; $709b: $3a
	ld [hl], h                                       ; $709c: $74
	and b                                            ; $709d: $a0
	ld b, [hl]                                       ; $709e: $46
	dec sp                                           ; $709f: $3b
	inc [hl]                                         ; $70a0: $34
	ld [$ac9c], a                                    ; $70a1: $ea $9c $ac
	ldh a, [$b2]                                     ; $70a4: $f0 $b2
	ldh a, [rKEY1]                                   ; $70a6: $f0 $4d
	ld b, a                                          ; $70a8: $47
	ld a, b                                          ; $70a9: $78
	ccf                                              ; $70aa: $3f
	xor b                                            ; $70ab: $a8
	ldh a, [rPCM12]                                  ; $70ac: $f0 $76
	ldh a, [$d2]                                     ; $70ae: $f0 $d2
	ldh a, [$3f]                                     ; $70b0: $f0 $3f
	inc [hl]                                         ; $70b2: $34
	ldh a, [$bd]                                     ; $70b3: $f0 $bd
	jr c, @+$41                                      ; $70b5: $38 $3f

	rst SubAFromDE                                          ; $70b7: $df
	ld h, e                                          ; $70b8: $63
	and b                                            ; $70b9: $a0
	cpl                                              ; $70ba: $2f
	ld b, e                                          ; $70bb: $43
	ldh a, [rPCM12]                                  ; $70bc: $f0 $76
	ldh a, [$d2]                                     ; $70be: $f0 $d2
	ldh a, [$3f]                                     ; $70c0: $f0 $3f
	inc a                                            ; $70c2: $3c
	ld [hl], h                                       ; $70c3: $74
	xor b                                            ; $70c4: $a8
	ldh a, [$bd]                                     ; $70c5: $f0 $bd
	jr c, jr_092_7108                                ; $70c7: $38 $3f

	ld c, a                                          ; $70c9: $4f
	ld d, b                                          ; $70ca: $50
	jr c, @+$3f                                      ; $70cb: $38 $3d

	jr c, @+$15                                      ; $70cd: $38 $13

	ld e, l                                          ; $70cf: $5d
	ld e, d                                          ; $70d0: $5a
	ld a, [hl-]                                      ; $70d1: $3a
	ld [hl], h                                       ; $70d2: $74

jr_092_70d3:
	and b                                            ; $70d3: $a0
	ldh a, [$99]                                     ; $70d4: $f0 $99
	sub b                                            ; $70d6: $90
	ldh a, [$7b]                                     ; $70d7: $f0 $7b
	ld h, l                                          ; $70d9: $65
	add e                                            ; $70da: $83
	xor c                                            ; $70db: $a9
	ld l, a                                          ; $70dc: $6f
	ld c, e                                          ; $70dd: $4b
	ld a, [hl]                                       ; $70de: $7e
	jr c, jr_092_7128                                ; $70df: $38 $47

	ldh a, [$ec]                                     ; $70e1: $f0 $ec
	ld d, d                                          ; $70e3: $52
	dec sp                                           ; $70e4: $3b
	ccf                                              ; $70e5: $3f
	ld c, [hl]                                       ; $70e6: $4e
	db $ec                                           ; $70e7: $ec
	ret c                                            ; $70e8: $d8

	xor b                                            ; $70e9: $a8
	ld b, [hl]                                       ; $70ea: $46
	ld a, [hl-]                                      ; $70eb: $3a
	dec a                                            ; $70ec: $3d
	ld b, d                                          ; $70ed: $42
	ldh a, [$7b]                                     ; $70ee: $f0 $7b
	ld h, l                                          ; $70f0: $65
	add e                                            ; $70f1: $83
	ld d, e                                          ; $70f2: $53
	ld [hl], d                                       ; $70f3: $72
	dec a                                            ; $70f4: $3d
	jr c, jr_092_715a                                ; $70f5: $38 $63

jr_092_70f7:
	and b                                            ; $70f7: $a0
	ld b, [hl]                                       ; $70f8: $46
	dec sp                                           ; $70f9: $3b
	inc [hl]                                         ; $70fa: $34
	ld c, a                                          ; $70fb: $4f
	ld a, $f0                                        ; $70fc: $3e $f0
	ld b, a                                          ; $70fe: $47
	ldh a, [$2a]                                     ; $70ff: $f0 $2a
	ld d, e                                          ; $7101: $53
	inc de                                           ; $7102: $13
	ld b, [hl]                                       ; $7103: $46
	dec sp                                           ; $7104: $3b
	dec a                                            ; $7105: $3d
	ld d, b                                          ; $7106: $50
	inc [hl]                                         ; $7107: $34

jr_092_7108:
	ld [$a80e], a                                    ; $7108: $ea $0e $a8
	db $ec                                           ; $710b: $ec
	ld [hl], $ea                                     ; $710c: $36 $ea
	sbc l                                            ; $710e: $9d
	and b                                            ; $710f: $a0
	ld [$ac9c], a                                    ; $7110: $ea $9c $ac
	ld [$a80e], a                                    ; $7113: $ea $0e $a8
	ldh a, [rPCM12]                                  ; $7116: $f0 $76
	ldh a, [$d2]                                     ; $7118: $f0 $d2
	ldh a, [$3f]                                     ; $711a: $f0 $3f
	inc [hl]                                         ; $711c: $34
	ldh a, [$bd]                                     ; $711d: $f0 $bd
	jr c, jr_092_7160                                ; $711f: $38 $3f

	rst SubAFromDE                                          ; $7121: $df
	ld h, e                                          ; $7122: $63
	ld b, l                                          ; $7123: $45
	and b                                            ; $7124: $a0
	ld l, a                                          ; $7125: $6f
	ld b, d                                          ; $7126: $42
	xor c                                            ; $7127: $a9

jr_092_7128:
	ld l, a                                          ; $7128: $6f
	ld c, e                                          ; $7129: $4b
	ld a, [hl]                                       ; $712a: $7e
	jr c, @+$49                                      ; $712b: $38 $47

	ldh a, [$ec]                                     ; $712d: $f0 $ec
	ld d, d                                          ; $712f: $52
	dec sp                                           ; $7130: $3b
	ccf                                              ; $7131: $3f
	ld c, [hl]                                       ; $7132: $4e
	db $ec                                           ; $7133: $ec

jr_092_7134:
	ret c                                            ; $7134: $d8

	xor b                                            ; $7135: $a8
	ld b, [hl]                                       ; $7136: $46
	ld a, [hl-]                                      ; $7137: $3a
	dec a                                            ; $7138: $3d
	ld b, d                                          ; $7139: $42
	ldh a, [$7b]                                     ; $713a: $f0 $7b
	ld h, l                                          ; $713c: $65
	add e                                            ; $713d: $83
	ld d, e                                          ; $713e: $53
	ld [hl], d                                       ; $713f: $72
	dec a                                            ; $7140: $3d
	jr c, jr_092_71a6                                ; $7141: $38 $63

	and b                                            ; $7143: $a0
	cpl                                              ; $7144: $2f
	ld b, e                                          ; $7145: $43
	adc d                                            ; $7146: $8a
	ldh a, [$73]                                     ; $7147: $f0 $73
	adc a                                            ; $7149: $8f
	ld c, d                                          ; $714a: $4a
	ld c, e                                          ; $714b: $4b
	inc [hl]                                         ; $714c: $34
	ld e, d                                          ; $714d: $5a
	ld b, c                                          ; $714e: $41
	ld a, [hl-]                                      ; $714f: $3a
	ld d, h                                          ; $7150: $54
	ld c, c                                          ; $7151: $49
	inc de                                           ; $7152: $13
	ld l, [hl]                                       ; $7153: $6e
	dec sp                                           ; $7154: $3b
	ccf                                              ; $7155: $3f
	ld c, [hl]                                       ; $7156: $4e

jr_092_7157:
	ld b, d                                          ; $7157: $42
	inc a                                            ; $7158: $3c
	ld a, [hl-]                                      ; $7159: $3a

jr_092_715a:
	and b                                            ; $715a: $a0
	ld b, [hl]                                       ; $715b: $46
	ld h, c                                          ; $715c: $61
	ld d, [hl]                                       ; $715d: $56

jr_092_715e:
	ld e, c                                          ; $715e: $59
	and b                                            ; $715f: $a0

jr_092_7160:
	cpl                                              ; $7160: $2f
	ld b, e                                          ; $7161: $43
	ld b, [hl]                                       ; $7162: $46
	dec sp                                           ; $7163: $3b
	inc [hl]                                         ; $7164: $34
	db $ec                                           ; $7165: $ec
	pop hl                                           ; $7166: $e1
	xor b                                            ; $7167: $a8
	ldh a, [rAUD4ENV]                                ; $7168: $f0 $21
	ldh a, [rAUD4GO]                                 ; $716a: $f0 $23
	jr c, jr_092_715e                                ; $716c: $38 $f0

	ld l, l                                          ; $716e: $6d
	ld e, c                                          ; $716f: $59
	ldh a, [$27]                                     ; $7170: $f0 $27
	jp hl                                            ; $7172: $e9


	add $ac                                          ; $7173: $c6 $ac
	jp hl                                            ; $7175: $e9


	ld b, b                                          ; $7176: $40
	and c                                            ; $7177: $a1
	ld [$a883], a                                    ; $7178: $ea $83 $a8
	ld l, [hl]                                       ; $717b: $6e
	ld d, b                                          ; $717c: $50
	ld a, [hl-]                                      ; $717d: $3a
	jr c, @+$65                                      ; $717e: $38 $63

	and b                                            ; $7180: $a0
	cpl                                              ; $7181: $2f
	ld b, e                                          ; $7182: $43
	ret                                              ; $7183: $c9


	sbc l                                            ; $7184: $9d
	ld d, b                                          ; $7185: $50
	jr c, jr_092_7134                                ; $7186: $38 $ac

	ld [hl], d                                       ; $7188: $72
	ccf                                              ; $7189: $3f
	jr c, @+$3d                                      ; $718a: $38 $3b

	ccf                                              ; $718c: $3f
	ld d, l                                          ; $718d: $55
	ld c, l                                          ; $718e: $4d
	ccf                                              ; $718f: $3f
	ld c, a                                          ; $7190: $4f

jr_092_7191:
	ld c, b                                          ; $7191: $48
	and b                                            ; $7192: $a0
	db $ed                                           ; $7193: $ed
	ld b, [hl]                                       ; $7194: $46
	inc [hl]                                         ; $7195: $34
	db $eb                                           ; $7196: $eb
	ld h, h                                          ; $7197: $64
	and b                                            ; $7198: $a0
	cpl                                              ; $7199: $2f
	ld b, e                                          ; $719a: $43
	ldh a, [rAUD4ENV]                                ; $719b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $719d: $f0 $23
	jr c, jr_092_7191                                ; $719f: $38 $f0

	ld l, l                                          ; $71a1: $6d
	ld e, c                                          ; $71a2: $59
	ldh a, [$27]                                     ; $71a3: $f0 $27
	ld l, [hl]                                       ; $71a5: $6e

jr_092_71a6:
	dec sp                                           ; $71a6: $3b
	ccf                                              ; $71a7: $3f
	ld c, [hl]                                       ; $71a8: $4e
	ld b, c                                          ; $71a9: $41
	inc de                                           ; $71aa: $13
	ld b, h                                          ; $71ab: $44
	ld e, l                                          ; $71ac: $5d
	ld e, d                                          ; $71ad: $5a
	inc [hl]                                         ; $71ae: $34
	ld l, [hl]                                       ; $71af: $6e
	dec sp                                           ; $71b0: $3b
	ccf                                              ; $71b1: $3f
	ld l, h                                          ; $71b2: $6c
	ld a, [hl-]                                      ; $71b3: $3a
	jr c, jr_092_7157                                ; $71b4: $38 $a1

	ld e, d                                          ; $71b6: $5a
	ld b, c                                          ; $71b7: $41
	ld a, [hl-]                                      ; $71b8: $3a
	ldh a, [$6d]                                     ; $71b9: $f0 $6d
	ld e, c                                          ; $71bb: $59
	ldh a, [$27]                                     ; $71bc: $f0 $27
	ld a, [hl-]                                      ; $71be: $3a
	ld b, d                                          ; $71bf: $42
	and c                                            ; $71c0: $a1
	cpl                                              ; $71c1: $2f
	ld b, e                                          ; $71c2: $43
	ldh a, [rSCY]                                    ; $71c3: $f0 $42
	dec sp                                           ; $71c5: $3b
	ldh a, [rSCY]                                    ; $71c6: $f0 $42
	dec sp                                           ; $71c8: $3b
	ldh a, [rSCY]                                    ; $71c9: $f0 $42
	ld c, b                                          ; $71cb: $48
	xor h                                            ; $71cc: $ac
	db $ec                                           ; $71cd: $ec
	pop hl                                           ; $71ce: $e1
	ld b, d                                          ; $71cf: $42
	ldh a, [$99]                                     ; $71d0: $f0 $99
	sub b                                            ; $71d2: $90
	ldh a, [$7b]                                     ; $71d3: $f0 $7b
	ld h, l                                          ; $71d5: $65
	add e                                            ; $71d6: $83
	ld h, d                                          ; $71d7: $62
	inc de                                           ; $71d8: $13
	pop af                                           ; $71d9: $f1
	rst JumpTable                                          ; $71da: $c7
	ldh a, [hDisp0_WY]                                     ; $71db: $f0 $88
	ld d, c                                          ; $71dd: $51
	ld c, [hl]                                       ; $71de: $4e
	ldh a, [$6d]                                     ; $71df: $f0 $6d
	ld e, c                                          ; $71e1: $59
	ldh a, [$27]                                     ; $71e2: $f0 $27
	ld b, h                                          ; $71e4: $44
	ld b, l                                          ; $71e5: $45
	and b                                            ; $71e6: $a0
	xor $10                                          ; $71e7: $ee $10
	and b                                            ; $71e9: $a0
	cpl                                              ; $71ea: $2f
	ld b, e                                          ; $71eb: $43
	ld h, c                                          ; $71ec: $61
	ld h, [hl]                                       ; $71ed: $66
	inc [hl]                                         ; $71ee: $34
	ret                                              ; $71ef: $c9


	inc [hl]                                         ; $71f0: $34
	db $ed                                           ; $71f1: $ed
	ld d, a                                          ; $71f2: $57
	inc de                                           ; $71f3: $13
	ldh a, [$75]                                     ; $71f4: $f0 $75
	adc h                                            ; $71f6: $8c
	ld d, e                                          ; $71f7: $53
	ldh a, [$5c]                                     ; $71f8: $f0 $5c
	jr c, jr_092_7238                                ; $71fa: $38 $3c

	ld a, [hl-]                                      ; $71fc: $3a
	ld c, b                                          ; $71fd: $48
	ldh a, [rAUD3ENA]                                ; $71fe: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $7200: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $7202: $f0 $1a
	and b                                            ; $7204: $a0
	db $ec                                           ; $7205: $ec
	scf                                              ; $7206: $37
	xor c                                            ; $7207: $a9
	ld b, b                                          ; $7208: $40
	add hl, sp                                       ; $7209: $39
	jr c, jr_092_7245                                ; $720a: $38 $39

	ld d, h                                          ; $720c: $54
	ld c, c                                          ; $720d: $49
	ld b, a                                          ; $720e: $47
	ld a, $3f                                        ; $720f: $3e $3f
	ld h, h                                          ; $7211: $64
	jr c, jr_092_7253                                ; $7212: $38 $3f

	rst SubAFromDE                                          ; $7214: $df
	and b                                            ; $7215: $a0
	ldh a, [rAUD4LEN]                                ; $7216: $f0 $20
	ld e, c                                          ; $7218: $59
	ld [hl], e                                       ; $7219: $73
	ldh a, [$32]                                     ; $721a: $f0 $32
	ld c, b                                          ; $721c: $48
	ld d, d                                          ; $721d: $52
	ld b, h                                          ; $721e: $44
	ld d, d                                          ; $721f: $52
	ld b, h                                          ; $7220: $44
	ld c, h                                          ; $7221: $4c
	ld c, b                                          ; $7222: $48
	and b                                            ; $7223: $a0
	cpl                                              ; $7224: $2f
	ld b, e                                          ; $7225: $43
	ld c, a                                          ; $7226: $4f
	add hl, sp                                       ; $7227: $39
	ld l, l                                          ; $7228: $6d
	ldh a, [$d3]                                     ; $7229: $f0 $d3
	ld l, [hl]                                       ; $722b: $6e
	dec sp                                           ; $722c: $3b
	ccf                                              ; $722d: $3f
	ld c, a                                          ; $722e: $4f
	inc de                                           ; $722f: $13
	db $ec                                           ; $7230: $ec
	ld a, [bc]                                       ; $7231: $0a
	and c                                            ; $7232: $a1
	ldh a, [$d6]                                     ; $7233: $f0 $d6
	ld b, d                                          ; $7235: $42
	add h                                            ; $7236: $84
	ld d, e                                          ; $7237: $53

jr_092_7238:
	inc de                                           ; $7238: $13
	sbc c                                            ; $7239: $99
	dec sp                                           ; $723a: $3b
	ccf                                              ; $723b: $3f
	ld c, [hl]                                       ; $723c: $4e
	inc a                                            ; $723d: $3c
	ld d, b                                          ; $723e: $50
	xor $05                                          ; $723f: $ee $05
	ld b, l                                          ; $7241: $45
	and b                                            ; $7242: $a0
	ldh a, [$50]                                     ; $7243: $f0 $50

jr_092_7245:
	ld [hl], e                                       ; $7245: $73
	ldh a, [$32]                                     ; $7246: $f0 $32
	inc [hl]                                         ; $7248: $34
	db $ec                                           ; $7249: $ec
	sub $13                                          ; $724a: $d6 $13
	db $ec                                           ; $724c: $ec

jr_092_724d:
	ret c                                            ; $724d: $d8

	and c                                            ; $724e: $a1
	cpl                                              ; $724f: $2f
	ld b, e                                          ; $7250: $43
	ld d, d                                          ; $7251: $52
	inc [hl]                                         ; $7252: $34

jr_092_7253:
	ld [$a076], a                                    ; $7253: $ea $76 $a0
	ldh a, [$08]                                     ; $7256: $f0 $08
	ld d, b                                          ; $7258: $50
	inc [hl]                                         ; $7259: $34
	ldh a, [$d6]                                     ; $725a: $f0 $d6
	ld b, d                                          ; $725c: $42
	add h                                            ; $725d: $84
	ld d, e                                          ; $725e: $53
	inc de                                           ; $725f: $13
	sbc c                                            ; $7260: $99
	dec sp                                           ; $7261: $3b
	ccf                                              ; $7262: $3f
	ld c, [hl]                                       ; $7263: $4e
	ld h, e                                          ; $7264: $63
	ld b, l                                          ; $7265: $45
	and b                                            ; $7266: $a0
	sub e                                            ; $7267: $93
	ld e, c                                          ; $7268: $59
	ldh a, [$03]                                     ; $7269: $f0 $03
	scf                                              ; $726b: $37
	ld d, c                                          ; $726c: $51
	ld a, e                                          ; $726d: $7b
	ld d, b                                          ; $726e: $50
	ld a, $38                                        ; $726f: $3e $38
	ld h, e                                          ; $7271: $63
	and b                                            ; $7272: $a0
	cpl                                              ; $7273: $2f
	ld b, e                                          ; $7274: $43
	ld d, d                                          ; $7275: $52
	inc a                                            ; $7276: $3c
	ld a, $3f                                        ; $7277: $3e $3f
	ld d, l                                          ; $7279: $55
	ld c, l                                          ; $727a: $4d
	ld b, l                                          ; $727b: $45
	and b                                            ; $727c: $a0
	pop de                                           ; $727d: $d1
	inc de                                           ; $727e: $13
	ldh a, [$35]                                     ; $727f: $f0 $35
	ld [hl], e                                       ; $7281: $73
	ldh a, [rAUD1LEN]                                ; $7282: $f0 $11
	ld [$a0e6], a                                    ; $7284: $ea $e6 $a0
	ld [$a840], a                                    ; $7287: $ea $40 $a8
	db $eb                                           ; $728a: $eb
	ld d, h                                          ; $728b: $54
	ld h, e                                          ; $728c: $63
	and b                                            ; $728d: $a0
	cpl                                              ; $728e: $2f
	ld b, e                                          ; $728f: $43
	ld b, b                                          ; $7290: $40
	ld b, c                                          ; $7291: $41
	ld a, [hl-]                                      ; $7292: $3a
	ld b, a                                          ; $7293: $47
	db $ec                                           ; $7294: $ec
	cp c                                             ; $7295: $b9
	and c                                            ; $7296: $a1
	ld d, h                                          ; $7297: $54
	ld c, l                                          ; $7298: $4d
	ld c, e                                          ; $7299: $4b
	inc [hl]                                         ; $729a: $34
	db $ed                                           ; $729b: $ed
	ld e, a                                          ; $729c: $5f
	ld b, l                                          ; $729d: $45
	xor b                                            ; $729e: $a8
	ld l, d                                          ; $729f: $6a
	ldh a, [$0d]                                     ; $72a0: $f0 $0d
	inc [hl]                                         ; $72a2: $34
	ld d, d                                          ; $72a3: $52
	dec a                                            ; $72a4: $3d
	ld [hl], d                                       ; $72a5: $72
	ld a, c                                          ; $72a6: $79
	ccf                                              ; $72a7: $3f
	ld d, l                                          ; $72a8: $55
	ld c, l                                          ; $72a9: $4d
	ld a, [hl-]                                      ; $72aa: $3a
	jr c, jr_092_724d                                ; $72ab: $38 $a0

jr_092_72ad:
	cpl                                              ; $72ad: $2f
	ld b, e                                          ; $72ae: $43
	ld e, [hl]                                       ; $72af: $5e
	dec sp                                           ; $72b0: $3b
	inc [hl]                                         ; $72b1: $34
	db $ec                                           ; $72b2: $ec
	ld [$54a8], sp                                   ; $72b3: $08 $a8 $54
	ld b, d                                          ; $72b6: $42
	ldh a, [$d7]                                     ; $72b7: $f0 $d7
	ld b, d                                          ; $72b9: $42
	pop af                                           ; $72ba: $f1
	jr z, jr_092_72ad                                ; $72bb: $28 $f0

	xor b                                            ; $72bd: $a8
	ld c, a                                          ; $72be: $4f
	ld [hl], d                                       ; $72bf: $72
	ccf                                              ; $72c0: $3f
	jr c, jr_092_7320                                ; $72c1: $38 $5d

	ld a, e                                          ; $72c3: $7b
	inc de                                           ; $72c4: $13
	jr c, jr_092_72ff                                ; $72c5: $38 $38

	db $ec                                           ; $72c7: $ec
	ret c                                            ; $72c8: $d8

	and b                                            ; $72c9: $a0
	ld c, d                                          ; $72ca: $4a
	ld c, a                                          ; $72cb: $4f
	inc [hl]                                         ; $72cc: $34
	db $ec                                           ; $72cd: $ec
	push bc                                          ; $72ce: $c5
	xor h                                            ; $72cf: $ac
	adc d                                            ; $72d0: $8a
	ldh a, [$73]                                     ; $72d1: $f0 $73
	adc a                                            ; $72d3: $8f
	ld b, a                                          ; $72d4: $47
	inc [hl]                                         ; $72d5: $34
	db $eb                                           ; $72d6: $eb
	ld [hl], d                                       ; $72d7: $72
	ld c, h                                          ; $72d8: $4c
	and b                                            ; $72d9: $a0
	cpl                                              ; $72da: $2f
	ld b, e                                          ; $72db: $43
	ld e, [hl]                                       ; $72dc: $5e
	add l                                            ; $72dd: $85
	xor b                                            ; $72de: $a8
	db $d3                                           ; $72df: $d3
	and c                                            ; $72e0: $a1
	cpl                                              ; $72e1: $2f
	ld b, e                                          ; $72e2: $43
	db $ec                                           ; $72e3: $ec
	pop hl                                           ; $72e4: $e1
	dec sp                                           ; $72e5: $3b
	ccf                                              ; $72e6: $3f
	xor h                                            ; $72e7: $ac
	adc d                                            ; $72e8: $8a
	ldh a, [$73]                                     ; $72e9: $f0 $73
	adc a                                            ; $72eb: $8f
	ld b, h                                          ; $72ec: $44
	dec sp                                           ; $72ed: $3b
	dec a                                            ; $72ee: $3d
	dec sp                                           ; $72ef: $3b
	ld e, l                                          ; $72f0: $5d
	and c                                            ; $72f1: $a1
	cpl                                              ; $72f2: $2f
	ld b, e                                          ; $72f3: $43
	ld b, [hl]                                       ; $72f4: $46
	dec sp                                           ; $72f5: $3b
	inc [hl]                                         ; $72f6: $34
	db $ec                                           ; $72f7: $ec
	pop hl                                           ; $72f8: $e1
	xor b                                            ; $72f9: $a8
	adc d                                            ; $72fa: $8a
	ldh a, [$73]                                     ; $72fb: $f0 $73
	adc a                                            ; $72fd: $8f
	ld b, d                                          ; $72fe: $42

jr_092_72ff:
	ldh a, [$38]                                     ; $72ff: $f0 $38
	ld c, e                                          ; $7301: $4b
	inc [hl]                                         ; $7302: $34
	add a                                            ; $7303: $87
	ldh a, [$5b]                                     ; $7304: $f0 $5b
	ldh a, [$5e]                                     ; $7306: $f0 $5e
	ld a, [hl-]                                      ; $7308: $3a
	ld b, d                                          ; $7309: $42
	and c                                            ; $730a: $a1
	pop af                                           ; $730b: $f1
	adc a                                            ; $730c: $8f
	ld a, $38                                        ; $730d: $3e $38
	ld b, c                                          ; $730f: $41
	ld b, h                                          ; $7310: $44
	ld e, l                                          ; $7311: $5d
	ld e, d                                          ; $7312: $5a
	xor h                                            ; $7313: $ac

jr_092_7314:
	ldh a, [$e1]                                     ; $7314: $f0 $e1
	push af                                          ; $7316: $f5
	ld [hl], l                                       ; $7317: $75
	ld a, $3f                                        ; $7318: $3e $3f
	ld e, h                                          ; $731a: $5c
	dec a                                            ; $731b: $3d
	ld b, d                                          ; $731c: $42
	and b                                            ; $731d: $a0
	cpl                                              ; $731e: $2f
	ld b, e                                          ; $731f: $43

jr_092_7320:
	ldh a, [$5c]                                     ; $7320: $f0 $5c
	jr c, jr_092_7314                                ; $7322: $38 $f0

	ld hl, sp+$44                                    ; $7324: $f8 $44
	ld a, [hl-]                                      ; $7326: $3a
	ld [hl], h                                       ; $7327: $74
	xor b                                            ; $7328: $a8
	ld d, h                                          ; $7329: $54
	ld b, d                                          ; $732a: $42
	ld d, h                                          ; $732b: $54
	ld c, c                                          ; $732c: $49
	ld h, d                                          ; $732d: $62
	inc [hl]                                         ; $732e: $34
	ldh a, [$2b]                                     ; $732f: $f0 $2b
	sub e                                            ; $7331: $93
	ld d, b                                          ; $7332: $50
	ld c, l                                          ; $7333: $4d
	dec a                                            ; $7334: $3d
	ld d, l                                          ; $7335: $55
	inc de                                           ; $7336: $13
	ldh a, [rAUD1LOW]                                ; $7337: $f0 $13
	ld e, l                                          ; $7339: $5d
	ld c, l                                          ; $733a: $4d
	ld a, e                                          ; $733b: $7b
	ld c, b                                          ; $733c: $48
	and b                                            ; $733d: $a0
	ldh a, [rAUD1LOW]                                ; $733e: $f0 $13
	ld e, l                                          ; $7340: $5d
	ld c, l                                          ; $7341: $4d
	ld a, e                                          ; $7342: $7b
	ld c, b                                          ; $7343: $48
	and c                                            ; $7344: $a1
	cpl                                              ; $7345: $2f
	ld b, e                                          ; $7346: $43
	ld d, h                                          ; $7347: $54
	ld d, h                                          ; $7348: $54
	ld c, d                                          ; $7349: $4a
	xor h                                            ; $734a: $ac
	xor $2a                                          ; $734b: $ee $2a
	db $ec                                           ; $734d: $ec
	ldh a, [c]                                       ; $734e: $f2
	ld h, d                                          ; $734f: $62
	ld [hl], d                                       ; $7350: $72
	ccf                                              ; $7351: $3f
	jr c, jr_092_73a9                                ; $7352: $38 $55

	ld b, d                                          ; $7354: $42
	ld b, h                                          ; $7355: $44
	ld [hl], h                                       ; $7356: $74
	and b                                            ; $7357: $a0
	ld c, a                                          ; $7358: $4f
	ld c, c                                          ; $7359: $49
	ld b, l                                          ; $735a: $45
	ld d, a                                          ; $735b: $57
	xor h                                            ; $735c: $ac
	ld b, b                                          ; $735d: $40
	ld b, d                                          ; $735e: $42
	add b                                            ; $735f: $80
	ld c, a                                          ; $7360: $4f
	ld d, a                                          ; $7361: $57
	ld b, h                                          ; $7362: $44
	ld e, l                                          ; $7363: $5d
	ld e, d                                          ; $7364: $5a
	and b                                            ; $7365: $a0
	cpl                                              ; $7366: $2f
	ld b, e                                          ; $7367: $43
	ld b, [hl]                                       ; $7368: $46
	dec sp                                           ; $7369: $3b
	inc [hl]                                         ; $736a: $34
	db $d3                                           ; $736b: $d3
	and b                                            ; $736c: $a0
	cpl                                              ; $736d: $2f
	ld b, e                                          ; $736e: $43
	jp hl                                            ; $736f: $e9


	xor a                                            ; $7370: $af
	xor b                                            ; $7371: $a8
	add sp, $4f                                      ; $7372: $e8 $4f
	xor b                                            ; $7374: $a8
	ld [$a0c6], a                                    ; $7375: $ea $c6 $a0
	jp hl                                            ; $7378: $e9


	db $e3                                           ; $7379: $e3
	ld c, h                                          ; $737a: $4c
	and b                                            ; $737b: $a0
	cpl                                              ; $737c: $2f
	ld b, e                                          ; $737d: $43
	ld [$a840], a                                    ; $737e: $ea $40 $a8
	db $eb                                           ; $7381: $eb
	ld d, h                                          ; $7382: $54
	ld h, e                                          ; $7383: $63
	and b                                            ; $7384: $a0
	ld b, b                                          ; $7385: $40
	ld b, c                                          ; $7386: $41
	ld a, [hl-]                                      ; $7387: $3a
	ld b, a                                          ; $7388: $47
	db $ec                                           ; $7389: $ec
	cp c                                             ; $738a: $b9
	and c                                            ; $738b: $a1
	cpl                                              ; $738c: $2f
	ld b, e                                          ; $738d: $43
	ld c, d                                          ; $738e: $4a
	ld c, a                                          ; $738f: $4f
	inc [hl]                                         ; $7390: $34
	add hl, sp                                       ; $7391: $39
	ld d, d                                          ; $7392: $52

jr_092_7393:
	ld d, l                                          ; $7393: $55
	pop af                                           ; $7394: $f1
	sbc l                                            ; $7395: $9d
	ld e, [hl]                                       ; $7396: $5e
	ld a, e                                          ; $7397: $7b
	xor h                                            ; $7398: $ac
	ld c, a                                          ; $7399: $4f
	dec sp                                           ; $739a: $3b
	ld c, c                                          ; $739b: $49
	db $eb                                           ; $739c: $eb
	ld d, h                                          ; $739d: $54
	ldh a, [$3d]                                     ; $739e: $f0 $3d
	ld e, c                                          ; $73a0: $59
	ld l, c                                          ; $73a1: $69
	ld d, e                                          ; $73a2: $53
	inc de                                           ; $73a3: $13
	sub h                                            ; $73a4: $94
	ld a, b                                          ; $73a5: $78
	ld c, [hl]                                       ; $73a6: $4e
	ld c, c                                          ; $73a7: $49
	ld [hl], a                                       ; $73a8: $77

jr_092_73a9:
	add hl, sp                                       ; $73a9: $39
	ld h, e                                          ; $73aa: $63
	ld b, l                                          ; $73ab: $45
	and b                                            ; $73ac: $a0
	ld b, b                                          ; $73ad: $40
	add hl, sp                                       ; $73ae: $39
	ld b, h                                          ; $73af: $44
	ld c, h                                          ; $73b0: $4c
	xor h                                            ; $73b1: $ac
	halt                                             ; $73b2: $76
	ld c, a                                          ; $73b3: $4f
	ld b, b                                          ; $73b4: $40
	add hl, sp                                       ; $73b5: $39
	ld [hl], a                                       ; $73b6: $77
	add hl, sp                                       ; $73b7: $39
	ld b, l                                          ; $73b8: $45
	and b                                            ; $73b9: $a0
	jp nc, $f134                                     ; $73ba: $d2 $34 $f1

	adc a                                            ; $73bd: $8f
	ld a, $38                                        ; $73be: $3e $38
	ld b, c                                          ; $73c0: $41
	ld c, d                                          ; $73c1: $4a
	xor h                                            ; $73c2: $ac
	ldh a, [$e1]                                     ; $73c3: $f0 $e1
	push af                                          ; $73c5: $f5
	ld [hl], l                                       ; $73c6: $75
	ld a, $3f                                        ; $73c7: $3e $3f
	ld e, h                                          ; $73c9: $5c
	dec a                                            ; $73ca: $3d
	ld b, d                                          ; $73cb: $42
	xor b                                            ; $73cc: $a8
	ld c, a                                          ; $73cd: $4f
	add hl, sp                                       ; $73ce: $39
	ld d, c                                          ; $73cf: $51
	sbc l                                            ; $73d0: $9d
	inc [hl]                                         ; $73d1: $34
	ldh a, [$e8]                                     ; $73d2: $f0 $e8
	ld c, [hl]                                       ; $73d4: $4e
	ld e, l                                          ; $73d5: $5d
	ld e, d                                          ; $73d6: $5a
	ld c, h                                          ; $73d7: $4c
	and b                                            ; $73d8: $a0
	cpl                                              ; $73d9: $2f
	ld b, e                                          ; $73da: $43
	ld b, h                                          ; $73db: $44
	dec sp                                           ; $73dc: $3b
	dec a                                            ; $73dd: $3d
	ld d, b                                          ; $73de: $50
	inc [hl]                                         ; $73df: $34
	ldh a, [$e8]                                     ; $73e0: $f0 $e8
	ld c, [hl]                                       ; $73e2: $4e
	sbc [hl]                                         ; $73e3: $9e
	ld b, a                                          ; $73e4: $47
	inc de                                           ; $73e5: $13
	xor $2a                                          ; $73e6: $ee $2a
	db $ec                                           ; $73e8: $ec
	ldh a, [c]                                       ; $73e9: $f2
	ld h, d                                          ; $73ea: $62
	ld [hl], d                                       ; $73eb: $72
	ccf                                              ; $73ec: $3f
	ld h, a                                          ; $73ed: $67
	inc a                                            ; $73ee: $3c
	ld a, [hl-]                                      ; $73ef: $3a
	jr c, jr_092_7393                                ; $73f0: $38 $a1

	ld b, b                                          ; $73f2: $40
	ld b, d                                          ; $73f3: $42
	add b                                            ; $73f4: $80
	ld c, a                                          ; $73f5: $4f
	ld d, a                                          ; $73f6: $57
	ld c, d                                          ; $73f7: $4a
	inc [hl]                                         ; $73f8: $34
	ld a, b                                          ; $73f9: $78
	dec a                                            ; $73fa: $3d
	ld b, d                                          ; $73fb: $42
	ld b, l                                          ; $73fc: $45
	and b                                            ; $73fd: $a0
	ldh a, [$ba]                                     ; $73fe: $f0 $ba
	ld a, l                                          ; $7400: $7d
	add e                                            ; $7401: $83
	ld a, [hl-]                                      ; $7402: $3a
	db $eb                                           ; $7403: $eb
	adc $4c                                          ; $7404: $ce $4c
	and b                                            ; $7406: $a0
	ld [$a840], a                                    ; $7407: $ea $40 $a8
	ldh a, [$57]                                     ; $740a: $f0 $57
	ldh a, [$ae]                                     ; $740c: $f0 $ae
	ld c, h                                          ; $740e: $4c
	and b                                            ; $740f: $a0
	cpl                                              ; $7410: $2f
	ld b, e                                          ; $7411: $43
	ld b, b                                          ; $7412: $40
	add hl, sp                                       ; $7413: $39
	xor c                                            ; $7414: $a9
	ldh a, [$66]                                     ; $7415: $f0 $66
	ld b, c                                          ; $7417: $41
	ld c, d                                          ; $7418: $4a
	ld c, a                                          ; $7419: $4f
	ld d, b                                          ; $741a: $50
	ld e, [hl]                                       ; $741b: $5e
	dec a                                            ; $741c: $3d
	and c                                            ; $741d: $a1
	cpl                                              ; $741e: $2f
	ld b, e                                          ; $741f: $43
	ld b, b                                          ; $7420: $40
	ld b, c                                          ; $7421: $41
	ld a, [hl-]                                      ; $7422: $3a
	ldh a, [$ea]                                     ; $7423: $f0 $ea
	ld a, [hl-]                                      ; $7425: $3a
	jr c, jr_092_7466                                ; $7426: $38 $3e

	ld a, [hl-]                                      ; $7428: $3a
	ld [hl], h                                       ; $7429: $74
	ld c, b                                          ; $742a: $48
	and b                                            ; $742b: $a0
	ld e, [hl]                                       ; $742c: $5e
	dec sp                                           ; $742d: $3b

jr_092_742e:
	inc [hl]                                         ; $742e: $34
	ldh a, [$34]                                     ; $742f: $f0 $34
	ld b, a                                          ; $7431: $47
	xor b                                            ; $7432: $a8
	sbc $f0                                          ; $7433: $de $f0
	adc l                                            ; $7435: $8d
	ldh a, [$9e]                                     ; $7436: $f0 $9e
	ld c, h                                          ; $7438: $4c
	add l                                            ; $7439: $85
	xor b                                            ; $743a: $a8
	ld c, a                                          ; $743b: $4f
	add hl, sp                                       ; $743c: $39
	inc [hl]                                         ; $743d: $34
	ldh a, [$e8]                                     ; $743e: $f0 $e8
	ld c, [hl]                                       ; $7440: $4e
	ld h, e                                          ; $7441: $63
	ld c, h                                          ; $7442: $4c
	and b                                            ; $7443: $a0
	ld d, d                                          ; $7444: $52
	inc [hl]                                         ; $7445: $34
	db $ec                                           ; $7446: $ec
	ld [$40a8], sp                                   ; $7447: $08 $a8 $40
	ld c, l                                          ; $744a: $4d
	ld e, e                                          ; $744b: $5b
	ld d, [hl]                                       ; $744c: $56
	xor h                                            ; $744d: $ac
	jp hl                                            ; $744e: $e9


	jr nz, @-$5e                                     ; $744f: $20 $a0

	ld b, [hl]                                       ; $7451: $46
	ld h, c                                          ; $7452: $61
	ld d, [hl]                                       ; $7453: $56
	ld e, c                                          ; $7454: $59
	xor b                                            ; $7455: $a8
	ld a, b                                          ; $7456: $78
	ld a, [hl-]                                      ; $7457: $3a
	ld e, l                                          ; $7458: $5d
	ld c, l                                          ; $7459: $4d
	ld a, e                                          ; $745a: $7b
	ld b, l                                          ; $745b: $45
	inc a                                            ; $745c: $3c
	dec sp                                           ; $745d: $3b
	dec a                                            ; $745e: $3d
	and b                                            ; $745f: $a0
	cpl                                              ; $7460: $2f
	ld b, e                                          ; $7461: $43
	ld b, [hl]                                       ; $7462: $46
	dec sp                                           ; $7463: $3b
	inc [hl]                                         ; $7464: $34
	db $ec                                           ; $7465: $ec

jr_092_7466:
	pop hl                                           ; $7466: $e1
	xor b                                            ; $7467: $a8
	add sp, $4f                                      ; $7468: $e8 $4f
	xor b                                            ; $746a: $a8
	jp hl                                            ; $746b: $e9


	call nc, $eba0                                   ; $746c: $d4 $a0 $eb
	inc [hl]                                         ; $746f: $34
	xor b                                            ; $7470: $a8
	ld [hl], d                                       ; $7471: $72
	ld c, [hl]                                       ; $7472: $4e
	ld b, h                                          ; $7473: $44
	ld e, l                                          ; $7474: $5d
	ld c, e                                          ; $7475: $4b
	ld [hl], d                                       ; $7476: $72
	ld b, l                                          ; $7477: $45
	add hl, sp                                       ; $7478: $39
	and b                                            ; $7479: $a0
	cpl                                              ; $747a: $2f
	ld b, e                                          ; $747b: $43
	ld b, [hl]                                       ; $747c: $46
	ld c, l                                          ; $747d: $4d
	xor h                                            ; $747e: $ac
	db $ec                                           ; $747f: $ec
	pop hl                                           ; $7480: $e1
	ld d, e                                          ; $7481: $53
	jr c, jr_092_74be                                ; $7482: $38 $3a

	jr c, jr_092_742e                                ; $7484: $38 $a8

	ld [$1343], a                                    ; $7486: $ea $43 $13
	jp hl                                            ; $7489: $e9


	cp l                                             ; $748a: $bd
	ld c, b                                          ; $748b: $48
	and b                                            ; $748c: $a0
	cpl                                              ; $748d: $2f
	ld b, e                                          ; $748e: $43
	ld b, b                                          ; $748f: $40
	ld c, l                                          ; $7490: $4d
	ld c, a                                          ; $7491: $4f
	ld b, b                                          ; $7492: $40
	add hl, sp                                       ; $7493: $39
	ld b, h                                          ; $7494: $44
	xor b                                            ; $7495: $a8
	halt                                             ; $7496: $76
	ld c, a                                          ; $7497: $4f
	ld d, h                                          ; $7498: $54
	ld d, h                                          ; $7499: $54
	ld h, d                                          ; $749a: $62
	ldh a, [$c9]                                     ; $749b: $f0 $c9
	ld e, l                                          ; $749d: $5d
	ld d, b                                          ; $749e: $50
	ld c, l                                          ; $749f: $4d
	ld a, [hl-]                                      ; $74a0: $3a
	jr c, jr_092_74e1                                ; $74a1: $38 $3e

	ld c, b                                          ; $74a3: $48
	and b                                            ; $74a4: $a0
	ld b, b                                          ; $74a5: $40
	ld c, l                                          ; $74a6: $4d
	ld c, e                                          ; $74a7: $4b
	db $ec                                           ; $74a8: $ec
	db $10                                           ; $74a9: $10
	jr c, jr_092_74e4                                ; $74aa: $38 $38

	ld h, e                                          ; $74ac: $63
	xor b                                            ; $74ad: $a8
	adc d                                            ; $74ae: $8a
	ldh a, [$73]                                     ; $74af: $f0 $73
	adc a                                            ; $74b1: $8f
	ld b, d                                          ; $74b2: $42
	ldh a, [$c1]                                     ; $74b3: $f0 $c1
	ldh a, [$d5]                                     ; $74b5: $f0 $d5
	ld c, e                                          ; $74b7: $4b
	xor h                                            ; $74b8: $ac
	ld b, [hl]                                       ; $74b9: $46
	ld d, d                                          ; $74ba: $52
	ld d, a                                          ; $74bb: $57
	ldh a, [rAUD4ENV]                                ; $74bc: $f0 $21

jr_092_74be:
	ldh a, [rAUD4GO]                                 ; $74be: $f0 $23
	ld d, l                                          ; $74c0: $55
	ld a, [hl-]                                      ; $74c1: $3a
	jr c, @+$3e                                      ; $74c2: $38 $3c

	ld d, b                                          ; $74c4: $50
	and b                                            ; $74c5: $a0
	cpl                                              ; $74c6: $2f
	ld b, e                                          ; $74c7: $43
	ld c, d                                          ; $74c8: $4a
	ld c, a                                          ; $74c9: $4f
	inc [hl]                                         ; $74ca: $34
	ld [$ac9c], a                                    ; $74cb: $ea $9c $ac
	ld h, a                                          ; $74ce: $67
	ld d, l                                          ; $74cf: $55
	inc a                                            ; $74d0: $3c
	ld c, a                                          ; $74d1: $4f
	ld b, l                                          ; $74d2: $45
	and b                                            ; $74d3: $a0
	ld a, b                                          ; $74d4: $78
	ld c, [hl]                                       ; $74d5: $4e
	ld b, h                                          ; $74d6: $44
	ld e, l                                          ; $74d7: $5d
	ldh a, [rAUD1LOW]                                ; $74d8: $f0 $13
	ldh a, [$af]                                     ; $74da: $f0 $af
	ld b, h                                          ; $74dc: $44
	ld c, c                                          ; $74dd: $49
	inc de                                           ; $74de: $13
	ld [hl], a                                       ; $74df: $77
	add hl, sp                                       ; $74e0: $39

jr_092_74e1:
	ld a, [hl-]                                      ; $74e1: $3a
	ld [hl], h                                       ; $74e2: $74
	xor b                                            ; $74e3: $a8

jr_092_74e4:
	or h                                             ; $74e4: $b4
	inc [hl]                                         ; $74e5: $34
	db $ec                                           ; $74e6: $ec
	and d                                            ; $74e7: $a2
	xor h                                            ; $74e8: $ac
	ld e, b                                          ; $74e9: $58
	ld b, l                                          ; $74ea: $45
	ld a, [hl-]                                      ; $74eb: $3a
	ld d, b                                          ; $74ec: $50
	and b                                            ; $74ed: $a0
	cpl                                              ; $74ee: $2f
	ld b, e                                          ; $74ef: $43
	ld l, e                                          ; $74f0: $6b
	inc a                                            ; $74f1: $3c
	inc [hl]                                         ; $74f2: $34
	adc d                                            ; $74f3: $8a
	ldh a, [$73]                                     ; $74f4: $f0 $73
	adc a                                            ; $74f6: $8f
	ld b, a                                          ; $74f7: $47
	inc de                                           ; $74f8: $13
	ld a, b                                          ; $74f9: $78
	ld e, b                                          ; $74fa: $58
	ld a, c                                          ; $74fb: $79
	dec a                                            ; $74fc: $3d
	ld d, l                                          ; $74fd: $55
	ld a, [hl-]                                      ; $74fe: $3a
	jr c, jr_092_756d                                ; $74ff: $38 $6c

	dec a                                            ; $7501: $3d
	jr c, jr_092_754c                                ; $7502: $38 $48

	and b                                            ; $7504: $a0
	ld h, c                                          ; $7505: $61
	ld a, [hl-]                                      ; $7506: $3a
	ld l, h                                          ; $7507: $6c
	ld b, a                                          ; $7508: $47
	inc [hl]                                         ; $7509: $34
	ld l, d                                          ; $750a: $6a
	ldh a, [rAUD1HIGH]                               ; $750b: $f0 $14
	ld b, d                                          ; $750d: $42
	inc de                                           ; $750e: $13
	db $ec                                           ; $750f: $ec
	jr z, jr_092_7546                                ; $7510: $28 $34

	db $db                                           ; $7512: $db
	ld a, [hl-]                                      ; $7513: $3a
	jr c, jr_092_7552                                ; $7514: $38 $3c

	ld d, b                                          ; $7516: $50
	xor h                                            ; $7517: $ac
	ld a, b                                          ; $7518: $78
	ld a, [hl-]                                      ; $7519: $3a
	jr c, @-$0e                                      ; $751a: $38 $f0

	ld [$5339], sp                                   ; $751c: $08 $39 $53
	jr c, jr_092_7559                                ; $751f: $38 $38

	ld c, c                                          ; $7521: $49
	ld [hl], a                                       ; $7522: $77
	add hl, sp                                       ; $7523: $39
	ld h, e                                          ; $7524: $63
	ld b, l                                          ; $7525: $45
	and b                                            ; $7526: $a0
	cpl                                              ; $7527: $2f
	ld b, e                                          ; $7528: $43
	ldh a, [$8c]                                     ; $7529: $f0 $8c
	add b                                            ; $752b: $80
	ld b, a                                          ; $752c: $47
	jr c, jr_092_7567                                ; $752d: $38 $38

	ld b, l                                          ; $752f: $45
	xor b                                            ; $7530: $a8
	ld e, d                                          ; $7531: $5a
	add hl, sp                                       ; $7532: $39
	ld a, c                                          ; $7533: $79
	inc [hl]                                         ; $7534: $34
	ld d, h                                          ; $7535: $54
	ld d, h                                          ; $7536: $54
	ld h, d                                          ; $7537: $62
	inc de                                           ; $7538: $13
	ldh a, [$c9]                                     ; $7539: $f0 $c9
	ld e, l                                          ; $753b: $5d
	ld d, b                                          ; $753c: $50
	ld c, l                                          ; $753d: $4d
	ld a, [hl-]                                      ; $753e: $3a
	jr c, jr_092_7582                                ; $753f: $38 $41

	ld b, h                                          ; $7541: $44
	ld a, $48                                        ; $7542: $3e $48
	and b                                            ; $7544: $a0
	ld b, b                                          ; $7545: $40

jr_092_7546:
	ld c, l                                          ; $7546: $4d
	ld a, [hl-]                                      ; $7547: $3a
	ld d, b                                          ; $7548: $50
	jr c, jr_092_7583                                ; $7549: $38 $38

	ld b, d                                          ; $754b: $42

jr_092_754c:
	ld b, l                                          ; $754c: $45
	xor b                                            ; $754d: $a8
	db $ec                                           ; $754e: $ec
	rla                                              ; $754f: $17
	ld b, h                                          ; $7550: $44
	dec sp                                           ; $7551: $3b

jr_092_7552:
	dec a                                            ; $7552: $3d
	inc a                                            ; $7553: $3c
	ld c, a                                          ; $7554: $4f
	ld c, h                                          ; $7555: $4c
	xor b                                            ; $7556: $a8
	or h                                             ; $7557: $b4
	inc [hl]                                         ; $7558: $34

jr_092_7559:
	ld e, b                                          ; $7559: $58
	ld b, l                                          ; $755a: $45
	ld a, [hl-]                                      ; $755b: $3a
	ld d, b                                          ; $755c: $50
	and b                                            ; $755d: $a0
	cpl                                              ; $755e: $2f
	ld b, e                                          ; $755f: $43
	sbc $34                                          ; $7560: $de $34
	db $db                                           ; $7562: $db
	ld a, [hl-]                                      ; $7563: $3a
	jr c, jr_092_75a8                                ; $7564: $38 $42

	inc de                                           ; $7566: $13

jr_092_7567:
	inc a                                            ; $7567: $3c
	ld a, [hl-]                                      ; $7568: $3a
	ld [hl], h                                       ; $7569: $74
	ld c, b                                          ; $756a: $48
	and b                                            ; $756b: $a0
	ld b, [hl]                                       ; $756c: $46

jr_092_756d:
	dec sp                                           ; $756d: $3b
	ld b, b                                          ; $756e: $40
	add hl, sp                                       ; $756f: $39
	ld b, h                                          ; $7570: $44
	inc [hl]                                         ; $7571: $34
	ld l, d                                          ; $7572: $6a
	inc a                                            ; $7573: $3c
	ld d, b                                          ; $7574: $50
	inc de                                           ; $7575: $13
	adc d                                            ; $7576: $8a
	ldh a, [$73]                                     ; $7577: $f0 $73
	adc a                                            ; $7579: $8f
	ld b, a                                          ; $757a: $47
	jr c, jr_092_75cd                                ; $757b: $38 $50

	dec sp                                           ; $757d: $3b
	ld a, $56                                        ; $757e: $3e $56
	jr c, jr_092_75c7                                ; $7580: $38 $45

jr_092_7582:
	xor b                                            ; $7582: $a8

jr_092_7583:
	ld d, c                                          ; $7583: $51
	ld [hl], b                                       ; $7584: $70
	jr c, jr_092_75c9                                ; $7585: $38 $42

	ld d, e                                          ; $7587: $53
	ld [hl], d                                       ; $7588: $72
	ld c, l                                          ; $7589: $4d
	ld c, [hl]                                       ; $758a: $4e
	ld h, e                                          ; $758b: $63
	ld b, l                                          ; $758c: $45
	and b                                            ; $758d: $a0
	cpl                                              ; $758e: $2f
	ld b, e                                          ; $758f: $43
	ld e, [hl]                                       ; $7590: $5e
	dec sp                                           ; $7591: $3b
	inc [hl]                                         ; $7592: $34
	ld l, e                                          ; $7593: $6b
	ld d, e                                          ; $7594: $53
	ld [hl], d                                       ; $7595: $72
	ld c, l                                          ; $7596: $4d
	ld c, [hl]                                       ; $7597: $4e
	ld b, d                                          ; $7598: $42
	and c                                            ; $7599: $a1
	ld a, b                                          ; $759a: $78
	dec a                                            ; $759b: $3d
	ld d, b                                          ; $759c: $50
	ldh a, [rTAC]                                    ; $759d: $f0 $07
	inc a                                            ; $759f: $3c
	ld c, [hl]                                       ; $75a0: $4e
	ld h, e                                          ; $75a1: $63
	ld b, l                                          ; $75a2: $45
	xor b                                            ; $75a3: $a8
	ld c, a                                          ; $75a4: $4f
	add hl, sp                                       ; $75a5: $39
	inc [hl]                                         ; $75a6: $34
	ld d, h                                          ; $75a7: $54

jr_092_75a8:
	ld c, l                                          ; $75a8: $4d
	ld c, a                                          ; $75a9: $4f
	ld b, c                                          ; $75aa: $41
	ld b, l                                          ; $75ab: $45
	and b                                            ; $75ac: $a0
	cpl                                              ; $75ad: $2f
	ld b, e                                          ; $75ae: $43
	ld c, d                                          ; $75af: $4a
	ld c, a                                          ; $75b0: $4f
	inc [hl]                                         ; $75b1: $34
	ld d, h                                          ; $75b2: $54
	ld d, h                                          ; $75b3: $54
	ld h, d                                          ; $75b4: $62
	ldh a, [c]                                       ; $75b5: $f2
	ld a, a                                          ; $75b6: $7f
	ld c, l                                          ; $75b7: $4d
	ld c, [hl]                                       ; $75b8: $4e
	inc de                                           ; $75b9: $13
	ld h, e                                          ; $75ba: $63
	ld e, l                                          ; $75bb: $5d
	ld b, a                                          ; $75bc: $47
	ld c, e                                          ; $75bd: $4b
	ld c, b                                          ; $75be: $48
	and b                                            ; $75bf: $a0
	ld b, b                                          ; $75c0: $40
	add hl, sp                                       ; $75c1: $39
	inc [hl]                                         ; $75c2: $34
	ld a, [hl-]                                      ; $75c3: $3a
	ld d, b                                          ; $75c4: $50
	ldh a, [$ea]                                     ; $75c5: $f0 $ea

jr_092_75c7:
	ld [hl], d                                       ; $75c7: $72
	add b                                            ; $75c8: $80

jr_092_75c9:
	ld e, l                                          ; $75c9: $5d
	ccf                                              ; $75ca: $3f
	inc de                                           ; $75cb: $13
	ld a, b                                          ; $75cc: $78

jr_092_75cd:
	ccf                                              ; $75cd: $3f
	ld l, h                                          ; $75ce: $6c
	dec a                                            ; $75cf: $3d
	ld d, b                                          ; $75d0: $50
	dec [hl]                                         ; $75d1: $35
	or h                                             ; $75d2: $b4
	and b                                            ; $75d3: $a0
	cpl                                              ; $75d4: $2f
	ld b, e                                          ; $75d5: $43
	ld b, [hl]                                       ; $75d6: $46
	ld [hl], h                                       ; $75d7: $74
	xor h                                            ; $75d8: $ac
	ld [hl], d                                       ; $75d9: $72
	ccf                                              ; $75da: $3f
	ld l, h                                          ; $75db: $6c
	dec a                                            ; $75dc: $3d
	jr c, @+$43                                      ; $75dd: $38 $41

	ld b, h                                          ; $75df: $44
	ld e, l                                          ; $75e0: $5d
	ld e, d                                          ; $75e1: $5a
	ld a, [hl-]                                      ; $75e2: $3a
	ld [hl], h                                       ; $75e3: $74
	ld c, b                                          ; $75e4: $48
	and b                                            ; $75e5: $a0
	db $ec                                           ; $75e6: $ec
	call c, Call_092_4ca9                            ; $75e7: $dc $a9 $4c
	add l                                            ; $75ea: $85
	inc [hl]                                         ; $75eb: $34
	ld l, d                                          ; $75ec: $6a
	ld b, d                                          ; $75ed: $42
	ld l, e                                          ; $75ee: $6b
	and c                                            ; $75ef: $a1
	cpl                                              ; $75f0: $2f
	ld b, e                                          ; $75f1: $43
	ld l, d                                          ; $75f2: $6a
	ld b, d                                          ; $75f3: $42
	ld d, e                                          ; $75f4: $53
	inc [hl]                                         ; $75f5: $34
	ldh a, [$2c]                                     ; $75f6: $f0 $2c
	pop af                                           ; $75f8: $f1
	call z, $36f1                                    ; $75f9: $cc $f1 $36
	pop af                                           ; $75fc: $f1
	pop af                                           ; $75fd: $f1
	inc de                                           ; $75fe: $13
	ld b, h                                          ; $75ff: $44
	ld b, l                                          ; $7600: $45
	and b                                            ; $7601: $a0
	ldh a, [$5a]                                     ; $7602: $f0 $5a
	add l                                            ; $7604: $85
	inc [hl]                                         ; $7605: $34
	ld b, [hl]                                       ; $7606: $46
	ld c, l                                          ; $7607: $4d
	ld d, e                                          ; $7608: $53
	ret nz                                           ; $7609: $c0

	xor b                                            ; $760a: $a8
	ldh a, [hDisp1_OBP1]                                     ; $760b: $f0 $94
	ld [hl], c                                       ; $760d: $71
	ccf                                              ; $760e: $3f
	ld [hl], d                                       ; $760f: $72
	dec a                                            ; $7610: $3d
	ld h, e                                          ; $7611: $63
	and b                                            ; $7612: $a0
	cpl                                              ; $7613: $2f
	ld b, e                                          ; $7614: $43
	ld b, b                                          ; $7615: $40
	ld d, a                                          ; $7616: $57
	ld d, [hl]                                       ; $7617: $56
	ld b, b                                          ; $7618: $40
	add hl, sp                                       ; $7619: $39
	ld b, h                                          ; $761a: $44
	xor l                                            ; $761b: $ad
	ld [hl-], a                                      ; $761c: $32
	halt                                             ; $761d: $76
	ld c, a                                          ; $761e: $4f
	ldh a, [hDisp1_OBP1]                                     ; $761f: $f0 $94
	ld [hl], c                                       ; $7621: $71
	ccf                                              ; $7622: $3f
	ld b, h                                          ; $7623: $44
	ld b, l                                          ; $7624: $45
	and e                                            ; $7625: $a3
	ld [$ac9c], a                                    ; $7626: $ea $9c $ac
	ld [$a8c7], a                                    ; $7629: $ea $c7 $a8
	ldh a, [c]                                       ; $762c: $f2
	or e                                             ; $762d: $b3
	ldh a, [c]                                       ; $762e: $f2
	ld d, d                                          ; $762f: $52
	ld d, c                                          ; $7630: $51
	ld c, [hl]                                       ; $7631: $4e
	inc a                                            ; $7632: $3c
	ld d, b                                          ; $7633: $50
	and b                                            ; $7634: $a0
	cpl                                              ; $7635: $2f
	ld b, e                                          ; $7636: $43
	ldh a, [$d6]                                     ; $7637: $f0 $d6
	ld b, d                                          ; $7639: $42
	db $ec                                           ; $763a: $ec
	ldh a, [c]                                       ; $763b: $f2
	ld b, d                                          ; $763c: $42
	pop af                                           ; $763d: $f1
	ld a, c                                          ; $763e: $79
	pop af                                           ; $763f: $f1
	ld h, d                                          ; $7640: $62
	ld b, a                                          ; $7641: $47
	inc de                                           ; $7642: $13
	inc a                                            ; $7643: $3c
	inc a                                            ; $7644: $3c
	ld d, b                                          ; $7645: $50
	ld a, [hl-]                                      ; $7646: $3a
	jr c, jr_092_7692                                ; $7647: $38 $49

	ld c, b                                          ; $7649: $48
	and b                                            ; $764a: $a0
	ld [$ac9c], a                                    ; $764b: $ea $9c $ac
	ldh a, [$b2]                                     ; $764e: $f0 $b2
	ldh a, [rKEY1]                                   ; $7650: $f0 $4d
	ld b, a                                          ; $7652: $47
	ld a, b                                          ; $7653: $78
	ccf                                              ; $7654: $3f
	ld c, h                                          ; $7655: $4c
	xor b                                            ; $7656: $a8
	ldh a, [c]                                       ; $7657: $f2
	or e                                             ; $7658: $b3
	ldh a, [c]                                       ; $7659: $f2
	ld d, d                                          ; $765a: $52
	ld d, c                                          ; $765b: $51
	ld c, [hl]                                       ; $765c: $4e
	ld h, e                                          ; $765d: $63
	ld b, l                                          ; $765e: $45
	and b                                            ; $765f: $a0
	cpl                                              ; $7660: $2f
	ld b, e                                          ; $7661: $43
	ld b, [hl]                                       ; $7662: $46
	dec sp                                           ; $7663: $3b
	inc [hl]                                         ; $7664: $34
	db $ec                                           ; $7665: $ec
	pop hl                                           ; $7666: $e1
	xor b                                            ; $7667: $a8
	adc d                                            ; $7668: $8a
	ldh a, [$73]                                     ; $7669: $f0 $73
	adc a                                            ; $766b: $8f
	ld b, d                                          ; $766c: $42
	ldh a, [$38]                                     ; $766d: $f0 $38
	ld c, e                                          ; $766f: $4b
	xor h                                            ; $7670: $ac
	add a                                            ; $7671: $87
	ldh a, [$5b]                                     ; $7672: $f0 $5b
	ldh a, [$5e]                                     ; $7674: $f0 $5e

jr_092_7676:
	ld a, [hl-]                                      ; $7676: $3a
	ld b, d                                          ; $7677: $42
	and c                                            ; $7678: $a1
	cpl                                              ; $7679: $2f
	ld b, e                                          ; $767a: $43
	ld d, h                                          ; $767b: $54
	ld d, h                                          ; $767c: $54
	ld c, d                                          ; $767d: $4a
	xor h                                            ; $767e: $ac
	xor $2a                                          ; $767f: $ee $2a
	db $ec                                           ; $7681: $ec
	ldh a, [c]                                       ; $7682: $f2
	ld h, d                                          ; $7683: $62
	inc de                                           ; $7684: $13
	ld [hl], d                                       ; $7685: $72
	ccf                                              ; $7686: $3f
	jr c, @+$57                                      ; $7687: $38 $55

	ld b, d                                          ; $7689: $42
	ld b, h                                          ; $768a: $44
	ld [hl], h                                       ; $768b: $74
	and b                                            ; $768c: $a0
	db $ec                                           ; $768d: $ec
	ldh a, [$34]                                     ; $768e: $f0 $34
	ret nz                                           ; $7690: $c0

	xor b                                            ; $7691: $a8

jr_092_7692:
	ldh a, [$74]                                     ; $7692: $f0 $74
	ldh a, [$7a]                                     ; $7694: $f0 $7a
	ld b, a                                          ; $7696: $47
	sub h                                            ; $7697: $94
	ccf                                              ; $7698: $3f
	ld e, h                                          ; $7699: $5c
	call c, $2fa0                                    ; $769a: $dc $a0 $2f
	ld b, e                                          ; $769d: $43
	ld b, b                                          ; $769e: $40
	add hl, sp                                       ; $769f: $39
	xor c                                            ; $76a0: $a9
	sub d                                            ; $76a1: $92
	adc [hl]                                         ; $76a2: $8e
	dec sp                                           ; $76a3: $3b
	ccf                                              ; $76a4: $3f
	di                                               ; $76a5: $f3
	ld a, [de]                                       ; $76a6: $1a
	dec sp                                           ; $76a7: $3b
	dec a                                            ; $76a8: $3d
	inc a                                            ; $76a9: $3c
	ld d, b                                          ; $76aa: $50
	ld c, h                                          ; $76ab: $4c
	and b                                            ; $76ac: $a0
	ld c, a                                          ; $76ad: $4f

jr_092_76ae:
	ld a, $ea                                        ; $76ae: $3e $ea
	sbc h                                            ; $76b0: $9c
	xor h                                            ; $76b1: $ac
	ld [$a00e], a                                    ; $76b2: $ea $0e $a0
	ld [$ac9c], a                                    ; $76b5: $ea $9c $ac
	ld [$a00e], a                                    ; $76b8: $ea $0e $a0
	cpl                                              ; $76bb: $2f
	ld b, e                                          ; $76bc: $43
	ld b, h                                          ; $76bd: $44
	dec sp                                           ; $76be: $3b
	dec a                                            ; $76bf: $3d
	ld d, b                                          ; $76c0: $50
	inc [hl]                                         ; $76c1: $34
	ldh a, [$e8]                                     ; $76c2: $f0 $e8
	ld c, [hl]                                       ; $76c4: $4e
	sbc [hl]                                         ; $76c5: $9e
	ld b, a                                          ; $76c6: $47
	inc de                                           ; $76c7: $13
	xor $2a                                          ; $76c8: $ee $2a
	db $ec                                           ; $76ca: $ec
	ldh a, [c]                                       ; $76cb: $f2
	ld h, d                                          ; $76cc: $62
	inc de                                           ; $76cd: $13
	ld [hl], d                                       ; $76ce: $72
	ccf                                              ; $76cf: $3f
	ld h, a                                          ; $76d0: $67
	inc a                                            ; $76d1: $3c
	ld a, [hl-]                                      ; $76d2: $3a
	jr c, jr_092_7676                                ; $76d3: $38 $a1

	ld l, d                                          ; $76d5: $6a
	ld b, d                                          ; $76d6: $42
	ld d, e                                          ; $76d7: $53
	inc [hl]                                         ; $76d8: $34
	ldh a, [$2c]                                     ; $76d9: $f0 $2c
	pop af                                           ; $76db: $f1
	call z, $36f1                                    ; $76dc: $cc $f1 $36
	pop af                                           ; $76df: $f1
	pop af                                           ; $76e0: $f1
	and c                                            ; $76e1: $a1
	cpl                                              ; $76e2: $2f
	ld b, e                                          ; $76e3: $43
	ld b, b                                          ; $76e4: $40
	add hl, sp                                       ; $76e5: $39
	ld b, h                                          ; $76e6: $44
	ld b, l                                          ; $76e7: $45
	xor b                                            ; $76e8: $a8
	db $ec                                           ; $76e9: $ec
	ld de, $3d3e                                     ; $76ea: $11 $3e $3d
	ld c, d                                          ; $76ed: $4a
	ld a, $66                                        ; $76ee: $3e $66
	add hl, sp                                       ; $76f0: $39
	and b                                            ; $76f1: $a0
	ldh a, [hDisp1_OBP1]                                     ; $76f2: $f0 $94
	ld [hl], c                                       ; $76f4: $71
	ccf                                              ; $76f5: $3f
	ld [hl], d                                       ; $76f6: $72
	dec a                                            ; $76f7: $3d
	ld h, e                                          ; $76f8: $63
	and b                                            ; $76f9: $a0
	or h                                             ; $76fa: $b4
	inc [hl]                                         ; $76fb: $34
	db $ec                                           ; $76fc: $ec
	and d                                            ; $76fd: $a2
	xor h                                            ; $76fe: $ac
	ld e, b                                          ; $76ff: $58
	ld b, l                                          ; $7700: $45
	ld a, [hl-]                                      ; $7701: $3a
	ld d, b                                          ; $7702: $50
	and b                                            ; $7703: $a0
	ld d, d                                          ; $7704: $52
	inc [hl]                                         ; $7705: $34
	db $ec                                           ; $7706: $ec
	ld [$b4a8], sp                                   ; $7707: $08 $a8 $b4
	inc [hl]                                         ; $770a: $34
	jp hl                                            ; $770b: $e9


	jr nz, jr_092_76ae                               ; $770c: $20 $a0

	pop af                                           ; $770e: $f1
	adc a                                            ; $770f: $8f
	ld a, $38                                        ; $7710: $3e $38
	ld b, c                                          ; $7712: $41
	ld b, h                                          ; $7713: $44
	ld e, l                                          ; $7714: $5d
	ld e, d                                          ; $7715: $5a
	ld c, h                                          ; $7716: $4c
	xor h                                            ; $7717: $ac
	ldh a, [$e1]                                     ; $7718: $f0 $e1
	ldh a, [rSB]                                     ; $771a: $f0 $01
	sub h                                            ; $771c: $94
	ld a, $3f                                        ; $771d: $3e $3f
	ld a, b                                          ; $771f: $78
	ld h, c                                          ; $7720: $61
	ld d, [hl]                                       ; $7721: $56
	dec sp                                           ; $7722: $3b
	dec a                                            ; $7723: $3d
	and b                                            ; $7724: $a0
	cpl                                              ; $7725: $2f
	ld b, e                                          ; $7726: $43
	ld b, [hl]                                       ; $7727: $46
	dec sp                                           ; $7728: $3b
	inc [hl]                                         ; $7729: $34
	jr c, jr_092_7764                                ; $772a: $38 $38

	ld a, [hl-]                                      ; $772c: $3a
	ld [hl], h                                       ; $772d: $74
	xor b                                            ; $772e: $a8
	halt                                             ; $772f: $76
	ld c, a                                          ; $7730: $4f
	pop af                                           ; $7731: $f1
	or h                                             ; $7732: $b4
	ld e, l                                          ; $7733: $5d
	sub h                                            ; $7734: $94
	ld a, $61                                        ; $7735: $3e $61
	ld d, [hl]                                       ; $7737: $56
	ld h, h                                          ; $7738: $64
	add hl, sp                                       ; $7739: $39
	inc a                                            ; $773a: $3c
	ld a, [hl-]                                      ; $773b: $3a
	ld [hl], h                                       ; $773c: $74
	and b                                            ; $773d: $a0
	xor $05                                          ; $773e: $ee $05
	ld b, l                                          ; $7740: $45
	xor b                                            ; $7741: $a8
	db $ec                                           ; $7742: $ec
	add hl, bc                                       ; $7743: $09
	db $ec                                           ; $7744: $ec
	ldh a, [c]                                       ; $7745: $f2
	ld h, d                                          ; $7746: $62
	ld [hl], d                                       ; $7747: $72
	ld b, a                                          ; $7748: $47
	ld a, b                                          ; $7749: $78
	dec a                                            ; $774a: $3d
	ld b, d                                          ; $774b: $42
	ld b, a                                          ; $774c: $47
	and b                                            ; $774d: $a0
	cpl                                              ; $774e: $2f
	ld b, e                                          ; $774f: $43
	ld b, b                                          ; $7750: $40
	ld c, l                                          ; $7751: $4d
	ld c, a                                          ; $7752: $4f
	ld b, b                                          ; $7753: $40
	add hl, sp                                       ; $7754: $39
	ld b, h                                          ; $7755: $44
	xor b                                            ; $7756: $a8
	or h                                             ; $7757: $b4
	inc [hl]                                         ; $7758: $34
	ld l, [hl]                                       ; $7759: $6e
	ld c, [hl]                                       ; $775a: $4e
	ld c, c                                          ; $775b: $49
	ld a, $52                                        ; $775c: $3e $52
	ld d, c                                          ; $775e: $51
	inc a                                            ; $775f: $3c
	and b                                            ; $7760: $a0
	ld c, d                                          ; $7761: $4a
	ld c, a                                          ; $7762: $4f
	inc [hl]                                         ; $7763: $34

jr_092_7764:
	db $ec                                           ; $7764: $ec
	push bc                                          ; $7765: $c5
	xor h                                            ; $7766: $ac
	ld h, a                                          ; $7767: $67
	inc a                                            ; $7768: $3c
	ld a, [hl-]                                      ; $7769: $3a
	jr c, jr_092_77b5                                ; $776a: $38 $49

	ld c, h                                          ; $776c: $4c
	and b                                            ; $776d: $a0
	ld b, b                                          ; $776e: $40
	ld b, c                                          ; $776f: $41
	ld a, [hl-]                                      ; $7770: $3a
	db $ed                                           ; $7771: $ed
	ld h, h                                          ; $7772: $64
	ld a, $3a                                        ; $7773: $3e $3a
	ld d, l                                          ; $7775: $55
	ccf                                              ; $7776: $3f
	ld c, a                                          ; $7777: $4f
	inc de                                           ; $7778: $13
	add a                                            ; $7779: $87
	ldh a, [$5b]                                     ; $777a: $f0 $5b
	ldh a, [$5e]                                     ; $777c: $f0 $5e
	ld b, l                                          ; $777e: $45
	and b                                            ; $777f: $a0
	cpl                                              ; $7780: $2f
	ld b, e                                          ; $7781: $43
	db $ec                                           ; $7782: $ec
	ld d, $48                                        ; $7783: $16 $48
	and c                                            ; $7785: $a1
	ld b, [hl]                                       ; $7786: $46
	ld a, [hl-]                                      ; $7787: $3a
	dec a                                            ; $7788: $3d
	ld b, a                                          ; $7789: $47
	pop af                                           ; $778a: $f1
	and e                                            ; $778b: $a3
	pop af                                           ; $778c: $f1
	ld [hl], d                                       ; $778d: $72
	ld d, e                                          ; $778e: $53
	inc de                                           ; $778f: $13
	ld b, [hl]                                       ; $7790: $46
	ld c, [hl]                                       ; $7791: $4e
	ld b, d                                          ; $7792: $42
	ld c, e                                          ; $7793: $4b
	inc [hl]                                         ; $7794: $34
	ld l, a                                          ; $7795: $6f
	ld d, e                                          ; $7796: $53
	db $ed                                           ; $7797: $ed
	ld [hl], d                                       ; $7798: $72
	ld a, [hl]                                       ; $7799: $7e
	ld d, l                                          ; $779a: $55
	inc de                                           ; $779b: $13
	pop af                                           ; $779c: $f1
	dec sp                                           ; $779d: $3b
	dec sp                                           ; $779e: $3b
	ccf                                              ; $779f: $3f
	ld c, [hl]                                       ; $77a0: $4e
	inc a                                            ; $77a1: $3c
	ld d, b                                          ; $77a2: $50
	ld c, b                                          ; $77a3: $48
	and b                                            ; $77a4: $a0
	cpl                                              ; $77a5: $2f
	ld b, e                                          ; $77a6: $43
	ld b, [hl]                                       ; $77a7: $46
	inc [hl]                                         ; $77a8: $34
	ld b, [hl]                                       ; $77a9: $46
	ld d, a                                          ; $77aa: $57
	ld d, e                                          ; $77ab: $53
	ld c, c                                          ; $77ac: $49
	add hl, sp                                       ; $77ad: $39
	xor b                                            ; $77ae: $a8
	ld a, [hl-]                                      ; $77af: $3a

jr_092_77b0:
	ld b, c                                          ; $77b0: $41
	inc a                                            ; $77b1: $3c
	inc [hl]                                         ; $77b2: $34
	ldh a, [$67]                                     ; $77b3: $f0 $67

jr_092_77b5:
	ldh a, [$9f]                                     ; $77b5: $f0 $9f
	sub h                                            ; $77b7: $94
	ccf                                              ; $77b8: $3f
	ld e, h                                          ; $77b9: $5c
	dec a                                            ; $77ba: $3d
	ld b, l                                          ; $77bb: $45
	and b                                            ; $77bc: $a0
	ld b, b                                          ; $77bd: $40
	inc [hl]                                         ; $77be: $34
	or h                                             ; $77bf: $b4
	xor h                                            ; $77c0: $ac
	ld h, h                                          ; $77c1: $64
	pop af                                           ; $77c2: $f1
	ld d, a                                          ; $77c3: $57
	jr c, jr_092_77b0                                ; $77c4: $38 $ea

	jr nz, jr_092_7814                               ; $77c6: $20 $4c

	and b                                            ; $77c8: $a0
	ld l, e                                          ; $77c9: $6b
	inc [hl]                                         ; $77ca: $34
	ldh a, [rPCM12]                                  ; $77cb: $f0 $76
	ldh a, [rTMA]                                    ; $77cd: $f0 $06
	ld h, e                                          ; $77cf: $63
	ld a, [hl-]                                      ; $77d0: $3a
	jr c, jr_092_7827                                ; $77d1: $38 $54

	ld c, c                                          ; $77d3: $49
	inc de                                           ; $77d4: $13
	add d                                            ; $77d5: $82
	dec sp                                           ; $77d6: $3b
	ccf                                              ; $77d7: $3f
	ld c, [hl]                                       ; $77d8: $4e
	ld b, d                                          ; $77d9: $42
	ld b, l                                          ; $77da: $45
	and b                                            ; $77db: $a0
	cpl                                              ; $77dc: $2f
	ld b, e                                          ; $77dd: $43
	ldh a, [rPCM12]                                  ; $77de: $f0 $76
	ldh a, [rTMA]                                    ; $77e0: $f0 $06
	ld h, e                                          ; $77e2: $63
	ld a, [hl-]                                      ; $77e3: $3a
	jr c, jr_092_7821                                ; $77e4: $38 $3b

	ccf                                              ; $77e6: $3f
	xor h                                            ; $77e7: $ac
	ld l, e                                          ; $77e8: $6b

jr_092_77e9:
	ld d, e                                          ; $77e9: $53
	ld c, b                                          ; $77ea: $48
	and c                                            ; $77eb: $a1
	ld b, [hl]                                       ; $77ec: $46
	ld a, [hl-]                                      ; $77ed: $3a
	dec a                                            ; $77ee: $3d
	ld d, e                                          ; $77ef: $53
	inc [hl]                                         ; $77f0: $34
	ld b, b                                          ; $77f1: $40
	ld b, c                                          ; $77f2: $41
	ld a, [hl-]                                      ; $77f3: $3a
	inc de                                           ; $77f4: $13
	db $eb                                           ; $77f5: $eb
	ldh [$3a], a                                     ; $77f6: $e0 $3a
	ld h, e                                          ; $77f8: $63
	ld e, l                                          ; $77f9: $5d
	ld a, [hl-]                                      ; $77fa: $3a
	jr c, jr_092_77e9                                ; $77fb: $38 $ec

	ret c                                            ; $77fd: $d8

	and b                                            ; $77fe: $a0
	cpl                                              ; $77ff: $2f
	ld b, e                                          ; $7800: $43
	ldh a, [rHDMA5]                                  ; $7801: $f0 $55
	ldh a, [rBCPS]                                   ; $7803: $f0 $68
	ld b, h                                          ; $7805: $44
	ld a, [hl-]                                      ; $7806: $3a
	xor b                                            ; $7807: $a8
	halt                                             ; $7808: $76
	dec sp                                           ; $7809: $3b
	ccf                                              ; $780a: $3f
	db $ec                                           ; $780b: $ec
	adc d                                            ; $780c: $8a
	ld b, h                                          ; $780d: $44
	inc a                                            ; $780e: $3c
	ld d, b                                          ; $780f: $50
	ld c, b                                          ; $7810: $48
	and b                                            ; $7811: $a0
	or h                                             ; $7812: $b4

Jump_092_7813:
	xor h                                            ; $7813: $ac

jr_092_7814:
	cp d                                             ; $7814: $ba
	xor b                                            ; $7815: $a8
	db $eb                                           ; $7816: $eb
	ldh [$58], a                                     ; $7817: $e0 $58
	ld b, c                                          ; $7819: $41
	xor b                                            ; $781a: $a8
	ld b, [hl]                                       ; $781b: $46
	ld c, e                                          ; $781c: $4b
	ld c, e                                          ; $781d: $4b
	ld c, e                                          ; $781e: $4b
	ld c, e                                          ; $781f: $4b
	ld c, e                                          ; $7820: $4b

jr_092_7821:
	ld c, e                                          ; $7821: $4b
	and b                                            ; $7822: $a0
	cpl                                              ; $7823: $2f
	ld [hl-], a                                      ; $7824: $32
	ld b, b                                          ; $7825: $40
	ld b, c                                          ; $7826: $41

jr_092_7827:
	ld a, [hl-]                                      ; $7827: $3a
	ld b, a                                          ; $7828: $47
	xor h                                            ; $7829: $ac
	add a                                            ; $782a: $87
	pop af                                           ; $782b: $f1
	dec l                                            ; $782c: $2d
	ld c, d                                          ; $782d: $4a
	ldh a, [c]                                       ; $782e: $f2
	ld bc, $3a63                                     ; $782f: $01 $63 $3a
	ld d, l                                          ; $7832: $55
	ccf                                              ; $7833: $3f
	ld c, a                                          ; $7834: $4f
	ld c, b                                          ; $7835: $48
	and e                                            ; $7836: $a3
	cpl                                              ; $7837: $2f
	ld b, e                                          ; $7838: $43
	ld b, [hl]                                       ; $7839: $46
	dec sp                                           ; $783a: $3b
	inc [hl]                                         ; $783b: $34
	db $ec                                           ; $783c: $ec
	pop hl                                           ; $783d: $e1
	xor b                                            ; $783e: $a8
	ld h, h                                          ; $783f: $64
	ld c, e                                          ; $7840: $4b
	ld b, l                                          ; $7841: $45
	add hl, sp                                       ; $7842: $39
	xor b                                            ; $7843: $a8
	ldh a, [rPCM12]                                  ; $7844: $f0 $76
	ldh a, [$d2]                                     ; $7846: $f0 $d2
	ldh a, [$3f]                                     ; $7848: $f0 $3f
	add hl, sp                                       ; $784a: $39
	ld d, d                                          ; $784b: $52
	ld d, l                                          ; $784c: $55
	ldh a, [$bd]                                     ; $784d: $f0 $bd
	ld e, l                                          ; $784f: $5d
	ld b, b                                          ; $7850: $40
	add hl, sp                                       ; $7851: $39
	and c                                            ; $7852: $a1
	ldh a, [rHDMA5]                                  ; $7853: $f0 $55
	ldh a, [rBCPS]                                   ; $7855: $f0 $68
	ld c, h                                          ; $7857: $4c
	dec [hl]                                         ; $7858: $35
	rla                                              ; $7859: $17
	ld b, [hl]                                       ; $785a: $46
	ld a, [hl-]                                      ; $785b: $3a
	dec a                                            ; $785c: $3d
	db $eb                                           ; $785d: $eb
	ld [hl], e                                       ; $785e: $73
	ld a, $3f                                        ; $785f: $3e $3f
	pop af                                           ; $7861: $f1
	add hl, hl                                       ; $7862: $29
	ld a, $55                                        ; $7863: $3e $55
	inc de                                           ; $7865: $13
	ld a, [hl-]                                      ; $7866: $3a
	jr c, jr_092_78cc                                ; $7867: $38 $63

	and b                                            ; $7869: $a0
	db $eb                                           ; $786a: $eb
	rrca                                             ; $786b: $0f
	dec [hl]                                         ; $786c: $35
	rla                                              ; $786d: $17
	inc a                                            ; $786e: $3c
	ld b, c                                          ; $786f: $41
	di                                               ; $7870: $f3
	ld e, a                                          ; $7871: $5f
	ld e, h                                          ; $7872: $5c
	ld b, h                                          ; $7873: $44
	dec sp                                           ; $7874: $3b
	dec a                                            ; $7875: $3d
	ld h, e                                          ; $7876: $63
	xor b                                            ; $7877: $a8
	ld l, d                                          ; $7878: $6a
	ld l, b                                          ; $7879: $68
	ld b, d                                          ; $787a: $42
	ldh a, [$c1]                                     ; $787b: $f0 $c1
	ldh a, [$d5]                                     ; $787d: $f0 $d5
	ld c, e                                          ; $787f: $4b
	and b                                            ; $7880: $a0
	cpl                                              ; $7881: $2f
	ld b, e                                          ; $7882: $43
	add a                                            ; $7883: $87
	di                                               ; $7884: $f3
	sub c                                            ; $7885: $91
	push af                                          ; $7886: $f5
	ld d, $44                                        ; $7887: $16 $44
	dec sp                                           ; $7889: $3b
	dec a                                            ; $788a: $3d
	ld c, h                                          ; $788b: $4c
	and b                                            ; $788c: $a0
	xor $10                                          ; $788d: $ee $10
	xor b                                            ; $788f: $a8
	jr nz, @-$12                                     ; $7890: $20 $ec

	add hl, bc                                       ; $7892: $09
	xor h                                            ; $7893: $ac
	jr c, jr_092_78ce                                ; $7894: $38 $38

	ld a, a                                          ; $7896: $7f

jr_092_7897:
	ldh a, [rTAC]                                    ; $7897: $f0 $07
	ld b, h                                          ; $7899: $44
	dec sp                                           ; $789a: $3b
	dec a                                            ; $789b: $3d
	ld b, d                                          ; $789c: $42
	ld b, a                                          ; $789d: $47
	ld c, b                                          ; $789e: $48
	and b                                            ; $789f: $a0
	ld b, [hl]                                       ; $78a0: $46
	ld e, c                                          ; $78a1: $59
	ld b, [hl]                                       ; $78a2: $46
	xor b                                            ; $78a3: $a8
	ldh a, [rPCM12]                                  ; $78a4: $f0 $76
	ldh a, [$d2]                                     ; $78a6: $f0 $d2
	ldh a, [$3f]                                     ; $78a8: $f0 $3f
	inc [hl]                                         ; $78aa: $34
	ldh a, [$67]                                     ; $78ab: $f0 $67
	ldh a, [$9f]                                     ; $78ad: $f0 $9f
	ld b, [hl]                                       ; $78af: $46
	dec sp                                           ; $78b0: $3b
	dec a                                            ; $78b1: $3d
	ld b, d                                          ; $78b2: $42
	ld b, a                                          ; $78b3: $47
	ld a, [hl-]                                      ; $78b4: $3a
	ld [hl], h                                       ; $78b5: $74
	and b                                            ; $78b6: $a0
	cpl                                              ; $78b7: $2f
	ld b, e                                          ; $78b8: $43
	ld h, h                                          ; $78b9: $64
	pop af                                           ; $78ba: $f1
	call c, Call_092_4158                            ; $78bb: $dc $58 $41
	inc [hl]                                         ; $78be: $34
	jp nc, Jump_092_7813                             ; $78bf: $d2 $13 $78

	ld a, [hl-]                                      ; $78c2: $3a
	inc a                                            ; $78c3: $3c
	dec sp                                           ; $78c4: $3b
	dec a                                            ; $78c5: $3d
	ld c, h                                          ; $78c6: $4c
	dec [hl]                                         ; $78c7: $35
	db $ec                                           ; $78c8: $ec
	db $d3                                           ; $78c9: $d3
	ld b, h                                          ; $78ca: $44
	ld e, a                                          ; $78cb: $5f

jr_092_78cc:
	add hl, sp                                       ; $78cc: $39
	and c                                            ; $78cd: $a1

jr_092_78ce:
	db $ed                                           ; $78ce: $ed
	ld e, l                                          ; $78cf: $5d
	ld b, d                                          ; $78d0: $42
	di                                               ; $78d1: $f3
	ld l, l                                          ; $78d2: $6d
	ld b, a                                          ; $78d3: $47
	inc de                                           ; $78d4: $13
	ldh a, [$0c]                                     ; $78d5: $f0 $0c
	jr c, jr_092_7918                                ; $78d7: $38 $3f

	ld l, h                                          ; $78d9: $6c
	ld a, [hl-]                                      ; $78da: $3a
	ld e, b                                          ; $78db: $58
	jr c, jr_092_7923                                ; $78dc: $38 $45

	and b                                            ; $78de: $a0
	cpl                                              ; $78df: $2f
	ld b, e                                          ; $78e0: $43
	xor $10                                          ; $78e1: $ee $10
	and b                                            ; $78e3: $a0
	db $ed                                           ; $78e4: $ed
	ld b, [hl]                                       ; $78e5: $46
	xor b                                            ; $78e6: $a8
	ld e, d                                          ; $78e7: $5a
	add hl, sp                                       ; $78e8: $39
	ldh a, [$75]                                     ; $78e9: $f0 $75
	adc h                                            ; $78eb: $8c
	ld c, e                                          ; $78ec: $4b
	and c                                            ; $78ed: $a1
	cpl                                              ; $78ee: $2f
	ld b, e                                          ; $78ef: $43
	jp nc, Jump_092_7e34                             ; $78f0: $d2 $34 $7e

	ld d, l                                          ; $78f3: $55
	ld a, [hl-]                                      ; $78f4: $3a
	jr c, jr_092_7897                                ; $78f5: $38 $a0

	db $ed                                           ; $78f7: $ed
	daa                                              ; $78f8: $27
	inc [hl]                                         ; $78f9: $34
	db $ec                                           ; $78fa: $ec
	db $d3                                           ; $78fb: $d3
	and c                                            ; $78fc: $a1
	cpl                                              ; $78fd: $2f
	ld b, e                                          ; $78fe: $43
	ld l, d                                          ; $78ff: $6a
	ld l, b                                          ; $7900: $68
	ld b, d                                          ; $7901: $42
	ldh a, [rPCM12]                                  ; $7902: $f0 $76
	ldh a, [$d2]                                     ; $7904: $f0 $d2
	ldh a, [$3f]                                     ; $7906: $f0 $3f
	xor h                                            ; $7908: $ac
	ret                                              ; $7909: $c9


	db $ed                                           ; $790a: $ed
	ld h, h                                          ; $790b: $64
	ld c, d                                          ; $790c: $4a
	ld e, b                                          ; $790d: $58
	ld c, b                                          ; $790e: $48
	and b                                            ; $790f: $a0
	db $eb                                           ; $7910: $eb
	rrca                                             ; $7911: $0f
	inc [hl]                                         ; $7912: $34
	rla                                              ; $7913: $17
	inc a                                            ; $7914: $3c
	ld b, c                                          ; $7915: $41
	di                                               ; $7916: $f3
	ld e, a                                          ; $7917: $5f

jr_092_7918:
	ld e, h                                          ; $7918: $5c
	ld b, h                                          ; $7919: $44
	dec sp                                           ; $791a: $3b
	dec a                                            ; $791b: $3d
	ld h, e                                          ; $791c: $63
	xor b                                            ; $791d: $a8
	ld l, d                                          ; $791e: $6a
	ld l, b                                          ; $791f: $68
	ld b, d                                          ; $7920: $42
	ldh a, [$c1]                                     ; $7921: $f0 $c1

jr_092_7923:
	ldh a, [$d5]                                     ; $7923: $f0 $d5
	ld c, e                                          ; $7925: $4b
	and b                                            ; $7926: $a0
	ld l, h                                          ; $7927: $6c
	ld b, c                                          ; $7928: $41
	ld a, [hl-]                                      ; $7929: $3a
	inc [hl]                                         ; $792a: $34
	ldh a, [$57]                                     ; $792b: $f0 $57
	pop af                                           ; $792d: $f1
	ld e, $50                                        ; $792e: $1e $50
	ld a, $3c                                        ; $7930: $3e $3c
	dec sp                                           ; $7932: $3b
	dec a                                            ; $7933: $3d
	inc de                                           ; $7934: $13
	ld c, a                                          ; $7935: $4f
	ld b, d                                          ; $7936: $42
	dec [hl]                                         ; $7937: $35
	sub c                                            ; $7938: $91
	ldh a, [$59]                                     ; $7939: $f0 $59
	ld b, d                                          ; $793b: $42
	db $ed                                           ; $793c: $ed
	ld h, e                                          ; $793d: $63
	db $ec                                           ; $793e: $ec
	ret c                                            ; $793f: $d8

	and b                                            ; $7940: $a0
	db $ec                                           ; $7941: $ec
	db $d3                                           ; $7942: $d3
	inc [hl]                                         ; $7943: $34
	jp nc, Jump_092_5384                             ; $7944: $d2 $84 $53

	inc de                                           ; $7947: $13
	ld a, b                                          ; $7948: $78
	ld a, [hl-]                                      ; $7949: $3a
	inc a                                            ; $794a: $3c
	dec sp                                           ; $794b: $3b
	dec a                                            ; $794c: $3d
	ld b, d                                          ; $794d: $42
	inc a                                            ; $794e: $3c
	ld a, $50                                        ; $794f: $3e $50
	and c                                            ; $7951: $a1
	cpl                                              ; $7952: $2f
	ld b, e                                          ; $7953: $43
	adc b                                            ; $7954: $88
	sub c                                            ; $7955: $91
	xor b                                            ; $7956: $a8
	ldh a, [$d0]                                     ; $7957: $f0 $d0
	ld [hl], a                                       ; $7959: $77
	ldh a, [c]                                       ; $795a: $f2
	or b                                             ; $795b: $b0
	ld a, [hl-]                                      ; $795c: $3a
	ldh a, [$08]                                     ; $795d: $f0 $08
	ld e, d                                          ; $795f: $5a
	ld a, b                                          ; $7960: $78
	ld a, [hl-]                                      ; $7961: $3a
	inc a                                            ; $7962: $3c
	dec sp                                           ; $7963: $3b
	dec a                                            ; $7964: $3d
	ld c, h                                          ; $7965: $4c
	and b                                            ; $7966: $a0
	pop af                                           ; $7967: $f1
	ld bc, $4df0                                     ; $7968: $01 $f0 $4d
	pop af                                           ; $796b: $f1
	adc c                                            ; $796c: $89
	ld l, h                                          ; $796d: $6c
	ld b, l                                          ; $796e: $45
	dec [hl]                                         ; $796f: $35
	ld e, h                                          ; $7970: $5c
	dec sp                                           ; $7971: $3b
	ld c, c                                          ; $7972: $49
	inc de                                           ; $7973: $13
	pop af                                           ; $7974: $f1
	ld bc, $4df0                                     ; $7975: $01 $f0 $4d
	pop af                                           ; $7978: $f1
	adc c                                            ; $7979: $89
	ld l, h                                          ; $797a: $6c
	ld d, e                                          ; $797b: $53
	pop af                                           ; $797c: $f1
	cp [hl]                                          ; $797d: $be
	ld d, a                                          ; $797e: $57
	ld a, [hl-]                                      ; $797f: $3a
	inc a                                            ; $7980: $3c
	dec sp                                           ; $7981: $3b
	dec a                                            ; $7982: $3d
	ld b, c                                          ; $7983: $41
	ld b, h                                          ; $7984: $44
	ld h, e                                          ; $7985: $63
	and b                                            ; $7986: $a0
	cpl                                              ; $7987: $2f
	ld b, e                                          ; $7988: $43
	pop af                                           ; $7989: $f1
	ld bc, $4df0                                     ; $798a: $01 $f0 $4d
	pop af                                           ; $798d: $f1
	adc c                                            ; $798e: $89
	ld l, h                                          ; $798f: $6c
	ld c, h                                          ; $7990: $4c
	add l                                            ; $7991: $85
	ld c, b                                          ; $7992: $48
	and b                                            ; $7993: $a0
	ld b, b                                          ; $7994: $40
	add hl, sp                                       ; $7995: $39
	xor c                                            ; $7996: $a9
	ld b, [hl]                                       ; $7997: $46
	ld a, [hl-]                                      ; $7998: $3a
	dec a                                            ; $7999: $3d
	ld a, [hl-]                                      ; $799a: $3a
	ld d, b                                          ; $799b: $50
	inc [hl]                                         ; $799c: $34
	dec a                                            ; $799d: $3d
	ld b, h                                          ; $799e: $44
	ld c, d                                          ; $799f: $4a
	ld c, a                                          ; $79a0: $4f
	inc de                                           ; $79a1: $13
	db $ec                                           ; $79a2: $ec
	cp c                                             ; $79a3: $b9
	ld b, d                                          ; $79a4: $42
	ld b, a                                          ; $79a5: $47
	ld a, [hl-]                                      ; $79a6: $3a
	ld [hl], h                                       ; $79a7: $74
	and b                                            ; $79a8: $a0
	cpl                                              ; $79a9: $2f
	ld b, e                                          ; $79aa: $43
	ld d, d                                          ; $79ab: $52
	dec a                                            ; $79ac: $3d
	ld d, d                                          ; $79ad: $52
	dec a                                            ; $79ae: $3d
	xor h                                            ; $79af: $ac
	ld b, b                                          ; $79b0: $40
	ld b, c                                          ; $79b1: $41
	ld a, [hl-]                                      ; $79b2: $3a
	pop af                                           ; $79b3: $f1
	rst SubAFromBC                                          ; $79b4: $e7
	sbc c                                            ; $79b5: $99
	ld e, b                                          ; $79b6: $58
	ld a, c                                          ; $79b7: $79
	ccf                                              ; $79b8: $3f
	ld c, b                                          ; $79b9: $48
	and b                                            ; $79ba: $a0
	db $eb                                           ; $79bb: $eb
	ld a, h                                          ; $79bc: $7c
	ld h, e                                          ; $79bd: $63
	ld c, h                                          ; $79be: $4c
	xor b                                            ; $79bf: $a8
	ldh a, [rAUD3LEVEL]                              ; $79c0: $f0 $1c
	ld d, e                                          ; $79c2: $53
	ldh a, [c]                                       ; $79c3: $f2
	ld bc, $3f3b                                     ; $79c4: $01 $3b $3f
	ld c, [hl]                                       ; $79c7: $4e
	ld h, e                                          ; $79c8: $63
	ld b, l                                          ; $79c9: $45
	and b                                            ; $79ca: $a0
	cpl                                              ; $79cb: $2f
	ld b, e                                          ; $79cc: $43
	ld e, [hl]                                       ; $79cd: $5e
	dec sp                                           ; $79ce: $3b
	xor b                                            ; $79cf: $a8
	rst JumpTable                                          ; $79d0: $c7
	jr c, jr_092_7a0c                                ; $79d1: $38 $39

	inc [hl]                                         ; $79d3: $34
	db $ec                                           ; $79d4: $ec
	pop hl                                           ; $79d5: $e1
	ld d, h                                          ; $79d6: $54
	ld b, b                                          ; $79d7: $40
	inc de                                           ; $79d8: $13
	ldh a, [$66]                                     ; $79d9: $f0 $66
	ld b, c                                          ; $79db: $41
	ld c, d                                          ; $79dc: $4a
	ld c, [hl]                                       ; $79dd: $4e
	ld b, c                                          ; $79de: $41
	db $ec                                           ; $79df: $ec
	ret c                                            ; $79e0: $d8

	ld b, d                                          ; $79e1: $42
	and c                                            ; $79e2: $a1
	ld l, e                                          ; $79e3: $6b
	ld c, d                                          ; $79e4: $4a
	inc [hl]                                         ; $79e5: $34
	ld l, a                                          ; $79e6: $6f
	ld d, e                                          ; $79e7: $53
	xor h                                            ; $79e8: $ac
	ldh a, [rAUD2ENV]                                ; $79e9: $f0 $17
	ld b, d                                          ; $79eb: $42
	di                                               ; $79ec: $f3
	adc h                                            ; $79ed: $8c
	ld [hl], d                                       ; $79ee: $72
	ccf                                              ; $79ef: $3f
	inc [hl]                                         ; $79f0: $34
	ldh a, [$66]                                     ; $79f1: $f0 $66
	ld a, e                                          ; $79f3: $7b
	ld a, [hl-]                                      ; $79f4: $3a
	ld e, h                                          ; $79f5: $5c
	ld d, [hl]                                       ; $79f6: $56
	inc de                                           ; $79f7: $13
	ld a, [hl-]                                      ; $79f8: $3a
	ld d, b                                          ; $79f9: $50
	ld a, [hl-]                                      ; $79fa: $3a
	jr c, jr_092_7a3f                                ; $79fb: $38 $42

	ld b, l                                          ; $79fd: $45
	and b                                            ; $79fe: $a0
	cpl                                              ; $79ff: $2f
	ld b, e                                          ; $7a00: $43
	ld b, h                                          ; $7a01: $44
	dec sp                                           ; $7a02: $3b
	dec a                                            ; $7a03: $3d
	ld d, b                                          ; $7a04: $50
	xor h                                            ; $7a05: $ac
	ldh a, [$ab]                                     ; $7a06: $f0 $ab
	ld b, d                                          ; $7a08: $42
	di                                               ; $7a09: $f3
	adc h                                            ; $7a0a: $8c
	ld a, [hl-]                                      ; $7a0b: $3a

jr_092_7a0c:
	ld d, b                                          ; $7a0c: $50
	jr c, jr_092_7a47                                ; $7a0d: $38 $38

	ld h, e                                          ; $7a0f: $63
	ld e, l                                          ; $7a10: $5d
	and c                                            ; $7a11: $a1
	call c, Call_092_4635                            ; $7a12: $dc $35 $46
	ld a, [hl-]                                      ; $7a15: $3a
	dec a                                            ; $7a16: $3d
	ld d, e                                          ; $7a17: $53
	inc de                                           ; $7a18: $13
	db $f4                                           ; $7a19: $f4
	push af                                          ; $7a1a: $f5
	jr c, jr_092_7a67                                ; $7a1b: $38 $4a

	ld d, l                                          ; $7a1d: $55
	ld c, l                                          ; $7a1e: $4d
	ld c, [hl]                                       ; $7a1f: $4e
	ld b, c                                          ; $7a20: $41
	ld b, h                                          ; $7a21: $44
	dec sp                                           ; $7a22: $3b
	dec a                                            ; $7a23: $3d
	ld d, b                                          ; $7a24: $50
	and b                                            ; $7a25: $a0
	cpl                                              ; $7a26: $2f
	ld b, e                                          ; $7a27: $43
	ld e, [hl]                                       ; $7a28: $5e
	dec sp                                           ; $7a29: $3b
	inc [hl]                                         ; $7a2a: $34
	halt                                             ; $7a2b: $76
	and c                                            ; $7a2c: $a1
	ld b, [hl]                                       ; $7a2d: $46
	ld c, e                                          ; $7a2e: $4b
	ld c, e                                          ; $7a2f: $4b
	ld c, e                                          ; $7a30: $4b
	inc [hl]                                         ; $7a31: $34
	db $ed                                           ; $7a32: $ed
	ld a, h                                          ; $7a33: $7c
	ld b, l                                          ; $7a34: $45
	xor h                                            ; $7a35: $ac
	db $ed                                           ; $7a36: $ed
	ld a, h                                          ; $7a37: $7c
	dec [hl]                                         ; $7a38: $35
	adc b                                            ; $7a39: $88
	ld a, a                                          ; $7a3a: $7f
	ld b, a                                          ; $7a3b: $47
	db $eb                                           ; $7a3c: $eb
	ld d, [hl]                                       ; $7a3d: $56
	and c                                            ; $7a3e: $a1

jr_092_7a3f:
	cpl                                              ; $7a3f: $2f
	ld b, e                                          ; $7a40: $43
	ret                                              ; $7a41: $c9


	ld c, h                                          ; $7a42: $4c
	ld c, b                                          ; $7a43: $48
	and b                                            ; $7a44: $a0
	ld b, b                                          ; $7a45: $40
	ld d, a                                          ; $7a46: $57

jr_092_7a47:
	ld d, [hl]                                       ; $7a47: $56
	inc [hl]                                         ; $7a48: $34
	ldh a, [rAUD2ENV]                                ; $7a49: $f0 $17
	ld b, d                                          ; $7a4b: $42
	di                                               ; $7a4c: $f3
	adc h                                            ; $7a4d: $8c
	ld a, [hl-]                                      ; $7a4e: $3a
	ld b, c                                          ; $7a4f: $41
	ccf                                              ; $7a50: $3f
	xor h                                            ; $7a51: $ac
	ld [hl], d                                       ; $7a52: $72
	ldh a, [c]                                       ; $7a53: $f2
	ld a, [hl]                                       ; $7a54: $7e
	ld e, h                                          ; $7a55: $5c
	ccf                                              ; $7a56: $3f
	ld c, [hl]                                       ; $7a57: $4e
	ld c, a                                          ; $7a58: $4f
	ld b, d                                          ; $7a59: $42
	and b                                            ; $7a5a: $a0
	cpl                                              ; $7a5b: $2f
	ld b, e                                          ; $7a5c: $43
	db $ec                                           ; $7a5d: $ec
	pop hl                                           ; $7a5e: $e1
	db $ed                                           ; $7a5f: $ed
	ld b, e                                          ; $7a60: $43
	xor h                                            ; $7a61: $ac
	db $eb                                           ; $7a62: $eb
	ld a, h                                          ; $7a63: $7c
	ld b, c                                          ; $7a64: $41
	db $ec                                           ; $7a65: $ec
	ret c                                            ; $7a66: $d8

jr_092_7a67:
	and c                                            ; $7a67: $a1
	ld h, e                                          ; $7a68: $63
	inc [hl]                                         ; $7a69: $34
	ld l, a                                          ; $7a6a: $6f
	ld c, e                                          ; $7a6b: $4b
	db $ed                                           ; $7a6c: $ed
	ld e, a                                          ; $7a6d: $5f
	pop af                                           ; $7a6e: $f1
	inc bc                                           ; $7a6f: $03
	ld a, [hl-]                                      ; $7a70: $3a
	inc de                                           ; $7a71: $13
	pop af                                           ; $7a72: $f1
	push bc                                          ; $7a73: $c5
	di                                               ; $7a74: $f3
	sub h                                            ; $7a75: $94
	inc a                                            ; $7a76: $3c
	ld d, b                                          ; $7a77: $50
	add d                                            ; $7a78: $82
	dec sp                                           ; $7a79: $3b
	ccf                                              ; $7a7a: $3f
	ld c, b                                          ; $7a7b: $48
	and b                                            ; $7a7c: $a0
	cpl                                              ; $7a7d: $2f
	ld b, e                                          ; $7a7e: $43
	xor $2d                                          ; $7a7f: $ee $2d
	xor $2d                                          ; $7a81: $ee $2d
	inc [hl]                                         ; $7a83: $34
	db $ed                                           ; $7a84: $ed
	ld e, a                                          ; $7a85: $5f
	pop af                                           ; $7a86: $f1
	inc bc                                           ; $7a87: $03
	ld c, h                                          ; $7a88: $4c
	ld c, b                                          ; $7a89: $48
	and b                                            ; $7a8a: $a0
	ldh a, [$9f]                                     ; $7a8b: $f0 $9f
	ld e, e                                          ; $7a8d: $5b
	ccf                                              ; $7a8e: $3f
	db $ec                                           ; $7a8f: $ec
	dec bc                                           ; $7a90: $0b
	and b                                            ; $7a91: $a0
	cpl                                              ; $7a92: $2f
	ld b, e                                          ; $7a93: $43
	jr c, jr_092_7b04                                ; $7a94: $38 $6e

	inc [hl]                                         ; $7a96: $34
	ldh a, [$9f]                                     ; $7a97: $f0 $9f
	ld e, e                                          ; $7a99: $5b
	ccf                                              ; $7a9a: $3f
	ld c, [hl]                                       ; $7a9b: $4e
	ld b, l                                          ; $7a9c: $45
	xor b                                            ; $7a9d: $a8
	ld [hl-], a                                      ; $7a9e: $32
	ldh a, [$9f]                                     ; $7a9f: $f0 $9f
	ld e, e                                          ; $7aa1: $5b
	ccf                                              ; $7aa2: $3f
	ld a, [hl-]                                      ; $7aa3: $3a
	jr c, jr_092_7b03                                ; $7aa4: $38 $5d

	ld e, d                                          ; $7aa6: $5a
	ld c, b                                          ; $7aa7: $48
	and e                                            ; $7aa8: $a3
	ld d, d                                          ; $7aa9: $52
	ld b, [hl]                                       ; $7aaa: $46
	inc [hl]                                         ; $7aab: $34
	call nc, $a863                                   ; $7aac: $d4 $63 $a8
	pop af                                           ; $7aaf: $f1
	add hl, hl                                       ; $7ab0: $29
	pop af                                           ; $7ab1: $f1
	ldh [c], a                                       ; $7ab2: $e2
	ld a, $3f                                        ; $7ab3: $3e $3f
	inc [hl]                                         ; $7ab5: $34
	pop af                                           ; $7ab6: $f1
	dec b                                            ; $7ab7: $05
	ldh a, [rWY]                                     ; $7ab8: $f0 $4a
	ldh a, [$03]                                     ; $7aba: $f0 $03
	ld b, d                                          ; $7abc: $42
	pop af                                           ; $7abd: $f1
	ld b, [hl]                                       ; $7abe: $46
	ld h, d                                          ; $7abf: $62
	inc de                                           ; $7ac0: $13
	ldh a, [c]                                       ; $7ac1: $f2
	ret nz                                           ; $7ac2: $c0

	ld h, e                                          ; $7ac3: $63
	ld a, [hl-]                                      ; $7ac4: $3a
	jr c, @+$4c                                      ; $7ac5: $38 $4a

	ld b, l                                          ; $7ac7: $45
	and b                                            ; $7ac8: $a0
	cpl                                              ; $7ac9: $2f
	ld b, e                                          ; $7aca: $43
	ldh a, [c]                                       ; $7acb: $f2
	ret nz                                           ; $7acc: $c0

	ld h, e                                          ; $7acd: $63
	ld a, [hl-]                                      ; $7ace: $3a
	jr c, jr_092_7b16                                ; $7acf: $38 $45

	and b                                            ; $7ad1: $a0
	db $eb                                           ; $7ad2: $eb
	ld a, h                                          ; $7ad3: $7c
	xor l                                            ; $7ad4: $ad
	db $ed                                           ; $7ad5: $ed
	ld e, a                                          ; $7ad6: $5f
	ld h, d                                          ; $7ad7: $62
	ld b, b                                          ; $7ad8: $40
	ld b, c                                          ; $7ad9: $41
	ld a, [hl-]                                      ; $7ada: $3a
	ldh a, [rAUD3LEVEL]                              ; $7adb: $f0 $1c
	ld c, d                                          ; $7add: $4a
	inc de                                           ; $7ade: $13
	ld [hl], d                                       ; $7adf: $72
	ld c, [hl]                                       ; $7ae0: $4e
	ld a, [hl-]                                      ; $7ae1: $3a
	ld b, c                                          ; $7ae2: $41
	ccf                                              ; $7ae3: $3f
	ld c, b                                          ; $7ae4: $48
	and b                                            ; $7ae5: $a0
	cpl                                              ; $7ae6: $2f
	ld b, e                                          ; $7ae7: $43
	ld e, [hl]                                       ; $7ae8: $5e
	dec sp                                           ; $7ae9: $3b
	xor b                                            ; $7aea: $a8
	ld b, b                                          ; $7aeb: $40
	inc [hl]                                         ; $7aec: $34
	ld b, b                                          ; $7aed: $40
	ld b, c                                          ; $7aee: $41
	ld a, [hl-]                                      ; $7aef: $3a
	ldh a, [rAUD3LEVEL]                              ; $7af0: $f0 $1c
	dec sp                                           ; $7af2: $3b
	ccf                                              ; $7af3: $3f
	ld c, b                                          ; $7af4: $48
	and b                                            ; $7af5: $a0
	ld b, b                                          ; $7af6: $40
	ld b, d                                          ; $7af7: $42
	inc [hl]                                         ; $7af8: $34
	ldh a, [$2a]                                     ; $7af9: $f0 $2a
	ld b, d                                          ; $7afb: $42
	pop af                                           ; $7afc: $f1
	or h                                             ; $7afd: $b4
	ld e, l                                          ; $7afe: $5d
	dec a                                            ; $7aff: $3d
	ldh a, [rAUD3LEVEL]                              ; $7b00: $f0 $1c
	ld b, l                                          ; $7b02: $45

jr_092_7b03:
	and b                                            ; $7b03: $a0

jr_092_7b04:
	cpl                                              ; $7b04: $2f
	ld b, e                                          ; $7b05: $43
	ld b, b                                          ; $7b06: $40
	inc [hl]                                         ; $7b07: $34
	ld b, b                                          ; $7b08: $40
	ld b, c                                          ; $7b09: $41
	ld a, [hl-]                                      ; $7b0a: $3a
	ld [hl], h                                       ; $7b0b: $74
	xor b                                            ; $7b0c: $a8
	ld [hl-], a                                      ; $7b0d: $32
	ld d, h                                          ; $7b0e: $54
	ld b, d                                          ; $7b0f: $42
	ldh a, [rAUD3LEVEL]                              ; $7b10: $f0 $1c
	ld c, e                                          ; $7b12: $4b
	inc [hl]                                         ; $7b13: $34
	ldh a, [rTIMA]                                   ; $7b14: $f0 $05

jr_092_7b16:
	ld d, d                                          ; $7b16: $52
	ld c, l                                          ; $7b17: $4d
	add b                                            ; $7b18: $80
	ld e, h                                          ; $7b19: $5c
	ld a, [hl-]                                      ; $7b1a: $3a
	ld b, d                                          ; $7b1b: $42
	ld b, a                                          ; $7b1c: $47
	and e                                            ; $7b1d: $a3
	ld b, b                                          ; $7b1e: $40
	ld b, c                                          ; $7b1f: $41
	ld a, [hl-]                                      ; $7b20: $3a
	ldh a, [rAUD3LEVEL]                              ; $7b21: $f0 $1c
	ld c, d                                          ; $7b23: $4a
	xor h                                            ; $7b24: $ac
	ld l, a                                          ; $7b25: $6f
	ldh a, [rSTAT]                                   ; $7b26: $f0 $41
	ld b, d                                          ; $7b28: $42
	ld d, h                                          ; $7b29: $54
	ld c, c                                          ; $7b2a: $49
	ld [hl], d                                       ; $7b2b: $72
	ld a, [hl-]                                      ; $7b2c: $3a
	jr c, jr_092_7b79                                ; $7b2d: $38 $4a

	ld b, l                                          ; $7b2f: $45
	ld c, h                                          ; $7b30: $4c
	xor b                                            ; $7b31: $a8
	db $eb                                           ; $7b32: $eb
	ld a, h                                          ; $7b33: $7c
	and b                                            ; $7b34: $a0
	dec d                                            ; $7b35: $15
	xor h                                            ; $7b36: $ac
	db $eb                                           ; $7b37: $eb
	ld a, h                                          ; $7b38: $7c
	ld h, e                                          ; $7b39: $63
	ld c, h                                          ; $7b3a: $4c
	xor b                                            ; $7b3b: $a8
	ldh a, [rAUD3LEVEL]                              ; $7b3c: $f0 $1c
	ld d, e                                          ; $7b3e: $53
	ldh a, [c]                                       ; $7b3f: $f2
	ld bc, $3f3b                                     ; $7b40: $01 $3b $3f
	ld c, [hl]                                       ; $7b43: $4e
	ld h, e                                          ; $7b44: $63
	ld b, l                                          ; $7b45: $45
	and b                                            ; $7b46: $a0
	cpl                                              ; $7b47: $2f
	ld b, e                                          ; $7b48: $43
	ld b, h                                          ; $7b49: $44
	dec sp                                           ; $7b4a: $3b
	dec a                                            ; $7b4b: $3d
	ld d, b                                          ; $7b4c: $50
	inc [hl]                                         ; $7b4d: $34
	ldh a, [$ab]                                     ; $7b4e: $f0 $ab
	ld b, d                                          ; $7b50: $42
	di                                               ; $7b51: $f3
	adc h                                            ; $7b52: $8c
	ld a, [hl-]                                      ; $7b53: $3a
	ld d, b                                          ; $7b54: $50
	inc de                                           ; $7b55: $13
	jr c, jr_092_7b90                                ; $7b56: $38 $38

	ld h, e                                          ; $7b58: $63
	ld e, l                                          ; $7b59: $5d
	and c                                            ; $7b5a: $a1
	call c, $f4a8                                    ; $7b5b: $dc $a8 $f4
	push af                                          ; $7b5e: $f5
	jr c, jr_092_7bab                                ; $7b5f: $38 $4a

	ld d, l                                          ; $7b61: $55
	ld c, l                                          ; $7b62: $4d
	ld c, [hl]                                       ; $7b63: $4e
	and c                                            ; $7b64: $a1
	db $ec                                           ; $7b65: $ec
	db $f4                                           ; $7b66: $f4
	xor h                                            ; $7b67: $ac
	ldh a, [$ec]                                     ; $7b68: $f0 $ec
	ld d, d                                          ; $7b6a: $52
	dec sp                                           ; $7b6b: $3b
	ccf                                              ; $7b6c: $3f
	ld c, [hl]                                       ; $7b6d: $4e
	db $ec                                           ; $7b6e: $ec
	ret c                                            ; $7b6f: $d8

	xor b                                            ; $7b70: $a8
	ld b, [hl]                                       ; $7b71: $46
	ld a, [hl-]                                      ; $7b72: $3a
	dec a                                            ; $7b73: $3d
	ld b, d                                          ; $7b74: $42
	di                                               ; $7b75: $f3
	adc h                                            ; $7b76: $8c
	ld d, e                                          ; $7b77: $53
	ld [hl], d                                       ; $7b78: $72

jr_092_7b79:
	dec a                                            ; $7b79: $3d
	jr c, jr_092_7bb6                                ; $7b7a: $38 $3a

	ld [hl], h                                       ; $7b7c: $74
	and b                                            ; $7b7d: $a0
	cpl                                              ; $7b7e: $2f
	ld b, e                                          ; $7b7f: $43
	or h                                             ; $7b80: $b4
	inc [hl]                                         ; $7b81: $34
	halt                                             ; $7b82: $76
	ld c, a                                          ; $7b83: $4f
	inc de                                           ; $7b84: $13
	db $ec                                           ; $7b85: $ec
	pop hl                                           ; $7b86: $e1
	ld b, d                                          ; $7b87: $42
	di                                               ; $7b88: $f3
	adc h                                            ; $7b89: $8c
	ld d, e                                          ; $7b8a: $53
	ld [hl], d                                       ; $7b8b: $72
	dec a                                            ; $7b8c: $3d
	jr c, jr_092_7bc9                                ; $7b8d: $38 $3a

	and b                                            ; $7b8f: $a0

jr_092_7b90:
	xor $14                                          ; $7b90: $ee $14
	inc [hl]                                         ; $7b92: $34
	ld l, a                                          ; $7b93: $6f
	ld c, e                                          ; $7b94: $4b
	ldh a, [rAUD1ENV]                                ; $7b95: $f0 $12
	jr c, jr_092_7bfc                                ; $7b97: $38 $63

	ld b, l                                          ; $7b99: $45
	and b                                            ; $7b9a: $a0
	cpl                                              ; $7b9b: $2f
	ld b, e                                          ; $7b9c: $43
	ld e, [hl]                                       ; $7b9d: $5e
	ld e, c                                          ; $7b9e: $59
	dec sp                                           ; $7b9f: $3b
	inc [hl]                                         ; $7ba0: $34
	pop af                                           ; $7ba1: $f1
	add [hl]                                         ; $7ba2: $86
	ld c, c                                          ; $7ba3: $49
	ld c, [hl]                                       ; $7ba4: $4e
	ld b, d                                          ; $7ba5: $42
	and c                                            ; $7ba6: $a1
	sub c                                            ; $7ba7: $91
	dec a                                            ; $7ba8: $3d
	ld d, a                                          ; $7ba9: $57
	sbc [hl]                                         ; $7baa: $9e

jr_092_7bab:
	ld c, d                                          ; $7bab: $4a
	ld a, $66                                        ; $7bac: $3e $66
	add hl, sp                                       ; $7bae: $39
	xor b                                            ; $7baf: $a8
	ld d, h                                          ; $7bb0: $54
	ld b, d                                          ; $7bb1: $42

jr_092_7bb2:
	ldh a, [$6e]                                     ; $7bb2: $f0 $6e
	ldh a, [rWY]                                     ; $7bb4: $f0 $4a

jr_092_7bb6:
	ldh a, [$c4]                                     ; $7bb6: $f0 $c4
	ld h, d                                          ; $7bb8: $62
	inc [hl]                                         ; $7bb9: $34
	dec a                                            ; $7bba: $3d
	ld b, h                                          ; $7bbb: $44
	ld c, d                                          ; $7bbc: $4a
	inc de                                           ; $7bbd: $13
	ld [hl], d                                       ; $7bbe: $72
	ld a, c                                          ; $7bbf: $79
	ld c, [hl]                                       ; $7bc0: $4e
	ld h, e                                          ; $7bc1: $63
	ld e, l                                          ; $7bc2: $5d
	ld a, [hl-]                                      ; $7bc3: $3a
	jr c, jr_092_7bb2                                ; $7bc4: $38 $ec

	ret c                                            ; $7bc6: $d8

	and b                                            ; $7bc7: $a0
	cpl                                              ; $7bc8: $2f

jr_092_7bc9:
	ld b, e                                          ; $7bc9: $43
	ld c, d                                          ; $7bca: $4a
	inc [hl]                                         ; $7bcb: $34
	halt                                             ; $7bcc: $76
	ld b, d                                          ; $7bcd: $42
	di                                               ; $7bce: $f3
	adc h                                            ; $7bcf: $8c
	ld c, e                                          ; $7bd0: $4b
	inc [hl]                                         ; $7bd1: $34
	dec a                                            ; $7bd2: $3d
	ld b, h                                          ; $7bd3: $44
	and c                                            ; $7bd4: $a1
	call c, $f134                                    ; $7bd5: $dc $34 $f1
	pop de                                           ; $7bd8: $d1
	pop af                                           ; $7bd9: $f1
	sbc [hl]                                         ; $7bda: $9e
	push af                                          ; $7bdb: $f5
	inc d                                            ; $7bdc: $14
	ld d, l                                          ; $7bdd: $55
	ld d, b                                          ; $7bde: $50
	jr c, jr_092_7bf4                                ; $7bdf: $38 $13

	inc a                                            ; $7be1: $3c
	ld a, $50                                        ; $7be2: $3e $50
	and b                                            ; $7be4: $a0
	cpl                                              ; $7be5: $2f
	ld b, e                                          ; $7be6: $43
	ld b, b                                          ; $7be7: $40
	ld c, l                                          ; $7be8: $4d
	ld c, d                                          ; $7be9: $4a
	inc [hl]                                         ; $7bea: $34
	ldh a, [rRP]                                     ; $7beb: $f0 $56
	ld b, d                                          ; $7bed: $42
	di                                               ; $7bee: $f3
	adc h                                            ; $7bef: $8c
	ld c, e                                          ; $7bf0: $4b
	and c                                            ; $7bf1: $a1
	ld [hl], d                                       ; $7bf2: $72
	ld a, c                                          ; $7bf3: $79

jr_092_7bf4:
	ld c, [hl]                                       ; $7bf4: $4e
	ld b, h                                          ; $7bf5: $44
	ld e, l                                          ; $7bf6: $5d
	ld c, d                                          ; $7bf7: $4a
	xor h                                            ; $7bf8: $ac
	pop af                                           ; $7bf9: $f1
	pop de                                           ; $7bfa: $d1
	di                                               ; $7bfb: $f3

jr_092_7bfc:
	inc [hl]                                         ; $7bfc: $34
	push af                                          ; $7bfd: $f5
	inc d                                            ; $7bfe: $14
	dec sp                                           ; $7bff: $3b
	ccf                                              ; $7c00: $3f
	ld c, c                                          ; $7c01: $49
	ld d, h                                          ; $7c02: $54
	inc a                                            ; $7c03: $3c
	ld a, $50                                        ; $7c04: $3e $50
	and b                                            ; $7c06: $a0
	cpl                                              ; $7c07: $2f
	ld b, e                                          ; $7c08: $43
	xor $10                                          ; $7c09: $ee $10
	xor b                                            ; $7c0b: $a8
	ld c, a                                          ; $7c0c: $4f
	add hl, sp                                       ; $7c0d: $39
	jr c, jr_092_7c48                                ; $7c0e: $38 $38

	ld b, l                                          ; $7c10: $45
	and b                                            ; $7c11: $a0
	or h                                             ; $7c12: $b4
	inc [hl]                                         ; $7c13: $34
	pop af                                           ; $7c14: $f1
	dec b                                            ; $7c15: $05
	ldh a, [rWY]                                     ; $7c16: $f0 $4a
	ldh a, [$03]                                     ; $7c18: $f0 $03
	ld b, d                                          ; $7c1a: $42
	pop af                                           ; $7c1b: $f1
	ld b, [hl]                                       ; $7c1c: $46
	ld h, d                                          ; $7c1d: $62
	inc de                                           ; $7c1e: $13
	ldh a, [c]                                       ; $7c1f: $f2
	ret nz                                           ; $7c20: $c0

	ld h, e                                          ; $7c21: $63
	ld a, [hl-]                                      ; $7c22: $3a
	jr c, jr_092_7c6f                                ; $7c23: $38 $4a

	ld b, l                                          ; $7c25: $45
	and b                                            ; $7c26: $a0
	ldh a, [$c1]                                     ; $7c27: $f0 $c1
	ldh a, [$d5]                                     ; $7c29: $f0 $d5
	ldh a, [rAUD2LEN]                                ; $7c2b: $f0 $16
	ld b, d                                          ; $7c2d: $42
	pop af                                           ; $7c2e: $f1
	or b                                             ; $7c2f: $b0
	ldh a, [$3f]                                     ; $7c30: $f0 $3f
	xor h                                            ; $7c32: $ac
	ld h, c                                          ; $7c33: $61
	ld d, [hl]                                       ; $7c34: $56
	ld b, c                                          ; $7c35: $41
	ld c, c                                          ; $7c36: $49
	xor $04                                          ; $7c37: $ee $04
	ld a, $3d                                        ; $7c39: $3e $3d
	and c                                            ; $7c3b: $a1
	cpl                                              ; $7c3c: $2f
	ld b, e                                          ; $7c3d: $43
	xor $04                                          ; $7c3e: $ee $04
	ld c, e                                          ; $7c40: $4b
	ld a, $3d                                        ; $7c41: $3e $3d
	ld e, l                                          ; $7c43: $5d
	ld e, d                                          ; $7c44: $5a
	ld e, b                                          ; $7c45: $58
	xor l                                            ; $7c46: $ad
	pop af                                           ; $7c47: $f1

jr_092_7c48:
	or b                                             ; $7c48: $b0
	ldh a, [$3f]                                     ; $7c49: $f0 $3f
	ld c, e                                          ; $7c4b: $4b
	db $ed                                           ; $7c4c: $ed
	ld l, b                                          ; $7c4d: $68
	ld b, h                                          ; $7c4e: $44
	inc a                                            ; $7c4f: $3c
	ld d, b                                          ; $7c50: $50
	xor h                                            ; $7c51: $ac
	ret                                              ; $7c52: $c9


	ldh a, [$67]                                     ; $7c53: $f0 $67
	ldh a, [$9f]                                     ; $7c55: $f0 $9f
	ld a, [hl-]                                      ; $7c57: $3a
	jr c, jr_092_7c9b                                ; $7c58: $38 $41

	ld b, h                                          ; $7c5a: $44
	and b                                            ; $7c5b: $a0
	ld l, a                                          ; $7c5c: $6f
	ld d, e                                          ; $7c5d: $53
	db $ed                                           ; $7c5e: $ed
	adc e                                            ; $7c5f: $8b
	ld a, $3f                                        ; $7c60: $3e $3f
	inc de                                           ; $7c62: $13
	ld b, [hl]                                       ; $7c63: $46
	ldh a, [rSB]                                     ; $7c64: $f0 $01
	ld b, l                                          ; $7c66: $45
	add hl, sp                                       ; $7c67: $39
	inc a                                            ; $7c68: $3c
	and c                                            ; $7c69: $a1
	cpl                                              ; $7c6a: $2f
	ld b, e                                          ; $7c6b: $43
	adc b                                            ; $7c6c: $88
	sub c                                            ; $7c6d: $91
	inc [hl]                                         ; $7c6e: $34

jr_092_7c6f:
	pop af                                           ; $7c6f: $f1
	jp hl                                            ; $7c70: $e9


	inc a                                            ; $7c71: $3c
	ld c, [hl]                                       ; $7c72: $4e
	ld b, l                                          ; $7c73: $45
	and b                                            ; $7c74: $a0
	ldh a, [$50]                                     ; $7c75: $f0 $50
	ld [hl], e                                       ; $7c77: $73
	ldh a, [$32]                                     ; $7c78: $f0 $32
	inc [hl]                                         ; $7c7a: $34
	jr c, jr_092_7cb5                                ; $7c7b: $38 $38

	db $ec                                           ; $7c7d: $ec
	ret c                                            ; $7c7e: $d8

	xor b                                            ; $7c7f: $a8
	ld l, a                                          ; $7c80: $6f
	ld c, e                                          ; $7c81: $4b
	inc [hl]                                         ; $7c82: $34
	ld d, c                                          ; $7c83: $51
	ld [hl], b                                       ; $7c84: $70
	ld d, l                                          ; $7c85: $55
	add a                                            ; $7c86: $87
	adc e                                            ; $7c87: $8b
	ld e, h                                          ; $7c88: $5c
	ld b, l                                          ; $7c89: $45
	xor b                                            ; $7c8a: $a8
	ld d, h                                          ; $7c8b: $54
	ld b, d                                          ; $7c8c: $42
	ldh a, [$3f]                                     ; $7c8d: $f0 $3f
	ld c, b                                          ; $7c8f: $48
	and b                                            ; $7c90: $a0
	cpl                                              ; $7c91: $2f
	ld b, e                                          ; $7c92: $43
	adc b                                            ; $7c93: $88
	sub c                                            ; $7c94: $91
	xor c                                            ; $7c95: $a9
	ld b, b                                          ; $7c96: $40
	add hl, sp                                       ; $7c97: $39
	add d                                            ; $7c98: $82
	dec sp                                           ; $7c99: $3b
	ccf                                              ; $7c9a: $3f

jr_092_7c9b:
	ld c, a                                          ; $7c9b: $4f
	ld d, b                                          ; $7c9c: $50
	ld e, [hl]                                       ; $7c9d: $5e
	ld c, [hl]                                       ; $7c9e: $4e
	ld c, c                                          ; $7c9f: $49
	xor h                                            ; $7ca0: $ac
	pop af                                           ; $7ca1: $f1
	cp c                                             ; $7ca2: $b9
	ldh a, [rVBK]                                    ; $7ca3: $f0 $4f
	ld d, c                                          ; $7ca5: $51
	ld c, [hl]                                       ; $7ca6: $4e
	ld a, [hl-]                                      ; $7ca7: $3a
	ld [hl], h                                       ; $7ca8: $74
	and b                                            ; $7ca9: $a0
	ld b, [hl]                                       ; $7caa: $46
	ld c, c                                          ; $7cab: $49
	inc [hl]                                         ; $7cac: $34
	ldh a, [$bd]                                     ; $7cad: $f0 $bd
	jr c, @+$3f                                      ; $7caf: $38 $3d

	add h                                            ; $7cb1: $84
	ld c, a                                          ; $7cb2: $4f
	ld c, b                                          ; $7cb3: $48
	and b                                            ; $7cb4: $a0

jr_092_7cb5:
	cpl                                              ; $7cb5: $2f
	ld b, e                                          ; $7cb6: $43
	ld e, [hl]                                       ; $7cb7: $5e
	dec sp                                           ; $7cb8: $3b
	inc [hl]                                         ; $7cb9: $34
	ld a, [hl-]                                      ; $7cba: $3a
	ld b, c                                          ; $7cbb: $41
	inc a                                            ; $7cbc: $3c
	add d                                            ; $7cbd: $82
	dec sp                                           ; $7cbe: $3b
	dec a                                            ; $7cbf: $3d
	and c                                            ; $7cc0: $a1
	ldh a, [$8c]                                     ; $7cc1: $f0 $8c
	inc [hl]                                         ; $7cc3: $34
	ldh a, [$34]                                     ; $7cc4: $f0 $34
	ld b, a                                          ; $7cc6: $47
	ld l, e                                          ; $7cc7: $6b
	ld c, a                                          ; $7cc8: $4f
	inc de                                           ; $7cc9: $13
	add d                                            ; $7cca: $82
	dec sp                                           ; $7ccb: $3b
	ccf                                              ; $7ccc: $3f
	ld a, [hl-]                                      ; $7ccd: $3a
	jr c, jr_092_7d33                                ; $7cce: $38 $63

	ld b, l                                          ; $7cd0: $45
	xor b                                            ; $7cd1: $a8
	ldh a, [$0a]                                     ; $7cd2: $f0 $0a
	ld d, l                                          ; $7cd4: $55
	pop af                                           ; $7cd5: $f1
	ld a, c                                          ; $7cd6: $79
	pop af                                           ; $7cd7: $f1
	ld h, d                                          ; $7cd8: $62
	ld a, $52                                        ; $7cd9: $3e $52
	ld a, $66                                        ; $7cdb: $3e $66
	add hl, sp                                       ; $7cdd: $39
	and b                                            ; $7cde: $a0
	cpl                                              ; $7cdf: $2f
	ld b, e                                          ; $7ce0: $43
	ld l, e                                          ; $7ce1: $6b
	inc [hl]                                         ; $7ce2: $34
	di                                               ; $7ce3: $f3
	rrca                                             ; $7ce4: $0f
	ccf                                              ; $7ce5: $3f
	ccf                                              ; $7ce6: $3f
	ld c, [hl]                                       ; $7ce7: $4e
	ld b, c                                          ; $7ce8: $41
	ld b, h                                          ; $7ce9: $44
	and c                                            ; $7cea: $a1
	ldh a, [$80]                                     ; $7ceb: $f0 $80
	ldh a, [$c5]                                     ; $7ced: $f0 $c5
	ld l, h                                          ; $7cef: $6c
	ld b, c                                          ; $7cf0: $41
	ld a, [hl-]                                      ; $7cf1: $3a
	ld [hl], d                                       ; $7cf2: $72
	sub [hl]                                         ; $7cf3: $96
	dec sp                                           ; $7cf4: $3b
	ccf                                              ; $7cf5: $3f
	ccf                                              ; $7cf6: $3f
	inc de                                           ; $7cf7: $13
	ld d, c                                          ; $7cf8: $51
	ld [hl], b                                       ; $7cf9: $70
	inc a                                            ; $7cfa: $3c
	dec sp                                           ; $7cfb: $3b
	ldh [$a0], a                                     ; $7cfc: $e0 $a0
	cpl                                              ; $7cfe: $2f
	ld b, e                                          ; $7cff: $43
	db $ec                                           ; $7d00: $ec
	pop hl                                           ; $7d01: $e1
	ld b, d                                          ; $7d02: $42
	ld c, e                                          ; $7d03: $4b
	sub c                                            ; $7d04: $91
	ldh a, [$59]                                     ; $7d05: $f0 $59
	inc de                                           ; $7d07: $13
	ld b, h                                          ; $7d08: $44
	ld e, l                                          ; $7d09: $5d
	ld e, d                                          ; $7d0a: $5a
	dec [hl]                                         ; $7d0b: $35
	halt                                             ; $7d0c: $76
	ld b, d                                          ; $7d0d: $42
	ldh a, [$3f]                                     ; $7d0e: $f0 $3f
	ld c, a                                          ; $7d10: $4f
	ldh a, [c]                                       ; $7d11: $f2
	sbc e                                            ; $7d12: $9b
	di                                               ; $7d13: $f3
	ld c, e                                          ; $7d14: $4b
	ld b, l                                          ; $7d15: $45
	ld d, l                                          ; $7d16: $55
	ccf                                              ; $7d17: $3f
	inc de                                           ; $7d18: $13
	ld l, l                                          ; $7d19: $6d
	pop af                                           ; $7d1a: $f1
	cp c                                             ; $7d1b: $b9
	ldh a, [rVBK]                                    ; $7d1c: $f0 $4f
	ld b, h                                          ; $7d1e: $44
	ld b, l                                          ; $7d1f: $45
	and b                                            ; $7d20: $a0

jr_092_7d21:
	ld l, a                                          ; $7d21: $6f
	ld b, d                                          ; $7d22: $42
	inc [hl]                                         ; $7d23: $34
	adc e                                            ; $7d24: $8b
	ld e, h                                          ; $7d25: $5c
	ld a, [hl-]                                      ; $7d26: $3a
	ldh a, [$3f]                                     ; $7d27: $f0 $3f
	ld a, [hl-]                                      ; $7d29: $3a
	ld b, c                                          ; $7d2a: $41
	ld b, h                                          ; $7d2b: $44
	inc de                                           ; $7d2c: $13
	ld c, a                                          ; $7d2d: $4f
	ld b, d                                          ; $7d2e: $42
	inc [hl]                                         ; $7d2f: $34
	sub c                                            ; $7d30: $91
	ldh a, [$59]                                     ; $7d31: $f0 $59

jr_092_7d33:
	ld b, l                                          ; $7d33: $45
	and b                                            ; $7d34: $a0
	cpl                                              ; $7d35: $2f
	ld b, e                                          ; $7d36: $43
	ld b, [hl]                                       ; $7d37: $46
	ld d, a                                          ; $7d38: $57
	ld d, e                                          ; $7d39: $53
	ld c, c                                          ; $7d3a: $49
	add hl, sp                                       ; $7d3b: $39
	xor b                                            ; $7d3c: $a8
	db $ec                                           ; $7d3d: $ec
	pop hl                                           ; $7d3e: $e1
	ld b, d                                          ; $7d3f: $42
	ld h, h                                          ; $7d40: $64
	inc a                                            ; $7d41: $3c
	ldh a, [rSB]                                     ; $7d42: $f0 $01
	ld b, h                                          ; $7d44: $44
	ld b, l                                          ; $7d45: $45
	and b                                            ; $7d46: $a0
	cpl                                              ; $7d47: $2f
	ld b, e                                          ; $7d48: $43
	db $ec                                           ; $7d49: $ec
	pop hl                                           ; $7d4a: $e1
	ld b, d                                          ; $7d4b: $42
	ld c, e                                          ; $7d4c: $4b
	xor h                                            ; $7d4d: $ac
	ld b, b                                          ; $7d4e: $40
	add hl, sp                                       ; $7d4f: $39
	ld b, h                                          ; $7d50: $44
	ld e, l                                          ; $7d51: $5d
	ld e, d                                          ; $7d52: $5a
	ld e, b                                          ; $7d53: $58
	dec [hl]                                         ; $7d54: $35
	halt                                             ; $7d55: $76
	ld b, d                                          ; $7d56: $42
	ldh a, [$3f]                                     ; $7d57: $f0 $3f
	ld a, [hl-]                                      ; $7d59: $3a
	ld b, c                                          ; $7d5a: $41
	ccf                                              ; $7d5b: $3f
	ld c, b                                          ; $7d5c: $48
	and b                                            ; $7d5d: $a0
	ld l, a                                          ; $7d5e: $6f
	ld c, e                                          ; $7d5f: $4b
	inc [hl]                                         ; $7d60: $34
	add a                                            ; $7d61: $87
	adc e                                            ; $7d62: $8b
	ld e, h                                          ; $7d63: $5c
	inc de                                           ; $7d64: $13
	ld a, [hl-]                                      ; $7d65: $3a
	ld b, c                                          ; $7d66: $41
	ld b, h                                          ; $7d67: $44
	ld e, l                                          ; $7d68: $5d
	ld e, d                                          ; $7d69: $5a
	ld a, [hl-]                                      ; $7d6a: $3a
	ld c, b                                          ; $7d6b: $48
	and b                                            ; $7d6c: $a0
	cpl                                              ; $7d6d: $2f
	ld b, e                                          ; $7d6e: $43
	ld b, [hl]                                       ; $7d6f: $46
	ld d, a                                          ; $7d70: $57
	ld d, e                                          ; $7d71: $53
	ld c, c                                          ; $7d72: $49
	add hl, sp                                       ; $7d73: $39
	inc [hl]                                         ; $7d74: $34
	db $ec                                           ; $7d75: $ec
	pop hl                                           ; $7d76: $e1
	xor b                                            ; $7d77: $a8
	ld b, b                                          ; $7d78: $40
	add hl, sp                                       ; $7d79: $39
	add d                                            ; $7d7a: $82
	ld h, e                                          ; $7d7b: $63
	ld c, l                                          ; $7d7c: $4d
	ld c, [hl]                                       ; $7d7d: $4e
	ld c, c                                          ; $7d7e: $49
	inc [hl]                                         ; $7d7f: $34
	ei                                               ; $7d80: $fb
	ld l, $63                                        ; $7d81: $2e $63
	ld c, l                                          ; $7d83: $4d
	ld c, [hl]                                       ; $7d84: $4e
	ld b, l                                          ; $7d85: $45
	and b                                            ; $7d86: $a0
	ldh a, [$50]                                     ; $7d87: $f0 $50
	ld [hl], e                                       ; $7d89: $73
	ldh a, [$32]                                     ; $7d8a: $f0 $32
	inc [hl]                                         ; $7d8c: $34
	jr c, jr_092_7dc7                                ; $7d8d: $38 $38

	db $ec                                           ; $7d8f: $ec
	ret c                                            ; $7d90: $d8

	xor b                                            ; $7d91: $a8
	ld d, h                                          ; $7d92: $54
	ld b, d                                          ; $7d93: $42
	ldh a, [$3f]                                     ; $7d94: $f0 $3f
	ld d, e                                          ; $7d96: $53
	pop af                                           ; $7d97: $f1
	dec sp                                           ; $7d98: $3b
	ld d, b                                          ; $7d99: $50
	ld a, [hl-]                                      ; $7d9a: $3a
	jr c, jr_092_7d21                                ; $7d9b: $38 $84

	ld c, e                                          ; $7d9d: $4b
	xor h                                            ; $7d9e: $ac
	db $ed                                           ; $7d9f: $ed
	ld e, a                                          ; $7da0: $5f
	ldh a, [rSVBK]                                   ; $7da1: $f0 $70
	db $ec                                           ; $7da3: $ec
	ret c                                            ; $7da4: $d8

	ld h, e                                          ; $7da5: $63
	and b                                            ; $7da6: $a0
	cpl                                              ; $7da7: $2f
	ld b, e                                          ; $7da8: $43
	ld b, b                                          ; $7da9: $40
	ld d, h                                          ; $7daa: $54
	ld d, d                                          ; $7dab: $52
	ld c, d                                          ; $7dac: $4a
	ld b, d                                          ; $7dad: $42
	ldh a, [$3f]                                     ; $7dae: $f0 $3f
	db $ec                                           ; $7db0: $ec
	ret c                                            ; $7db1: $d8

	ld c, c                                          ; $7db2: $49
	inc de                                           ; $7db3: $13
	ld [hl], a                                       ; $7db4: $77
	add hl, sp                                       ; $7db5: $39
	ld e, l                                          ; $7db6: $5d
	ld e, d                                          ; $7db7: $5a
	ld c, b                                          ; $7db8: $48
	and b                                            ; $7db9: $a0
	ld b, b                                          ; $7dba: $40
	ld c, l                                          ; $7dbb: $4d
	ld c, e                                          ; $7dbc: $4b
	inc [hl]                                         ; $7dbd: $34
	ld [$a830], a                                    ; $7dbe: $ea $30 $a8
	ldh a, [$67]                                     ; $7dc1: $f0 $67
	ldh a, [$9f]                                     ; $7dc3: $f0 $9f
	ldh a, [rHDMA1]                                  ; $7dc5: $f0 $51

jr_092_7dc7:
	ld h, c                                          ; $7dc7: $61
	ld a, [hl-]                                      ; $7dc8: $3a
	ld e, b                                          ; $7dc9: $58
	jr c, @+$47                                      ; $7dca: $38 $45

	xor b                                            ; $7dcc: $a8
	jr c, jr_092_7e07                                ; $7dcd: $38 $38

	ldh a, [$3f]                                     ; $7dcf: $f0 $3f
	ld b, h                                          ; $7dd1: $44
	ld c, c                                          ; $7dd2: $49
	ld [hl], a                                       ; $7dd3: $77
	add hl, sp                                       ; $7dd4: $39
	ld h, e                                          ; $7dd5: $63
	ld b, l                                          ; $7dd6: $45
	and b                                            ; $7dd7: $a0
	cpl                                              ; $7dd8: $2f
	ld b, e                                          ; $7dd9: $43
	ld b, [hl]                                       ; $7dda: $46
	ld d, a                                          ; $7ddb: $57
	ld d, e                                          ; $7ddc: $53
	ld c, c                                          ; $7ddd: $49
	add hl, sp                                       ; $7dde: $39
	xor b                                            ; $7ddf: $a8
	ldh a, [$67]                                     ; $7de0: $f0 $67
	ldh a, [$9f]                                     ; $7de2: $f0 $9f
	ld d, e                                          ; $7de4: $53
	add b                                            ; $7de5: $80
	jr c, jr_092_7e27                                ; $7de6: $38 $3f

	ld e, h                                          ; $7de8: $5c
	dec a                                            ; $7de9: $3d
	ld b, l                                          ; $7dea: $45
	and b                                            ; $7deb: $a0
	ld b, b                                          ; $7dec: $40
	add hl, sp                                       ; $7ded: $39
	inc [hl]                                         ; $7dee: $34
	ld b, b                                          ; $7def: $40
	add hl, sp                                       ; $7df0: $39
	inc [hl]                                         ; $7df1: $34
	ld b, b                                          ; $7df2: $40
	ld b, d                                          ; $7df3: $42
	ldh a, [$75]                                     ; $7df4: $f0 $75
	adc h                                            ; $7df6: $8c
	xor b                                            ; $7df7: $a8
	ldh a, [$5f]                                     ; $7df8: $f0 $5f
	ldh a, [$d7]                                     ; $7dfa: $f0 $d7
	ld b, d                                          ; $7dfc: $42
	db $ed                                           ; $7dfd: $ed
	db $10                                           ; $7dfe: $10
	ld h, d                                          ; $7dff: $62
	xor h                                            ; $7e00: $ac
	ld [$a020], a                                    ; $7e01: $ea $20 $a0
	ld b, b                                          ; $7e04: $40
	add hl, sp                                       ; $7e05: $39
	inc [hl]                                         ; $7e06: $34

jr_092_7e07:
	ld d, e                                          ; $7e07: $53
	dec sp                                           ; $7e08: $3b
	inc a                                            ; $7e09: $3c
	ld d, a                                          ; $7e0a: $57
	ld a, $3a                                        ; $7e0b: $3e $3a
	jr c, jr_092_7e51                                ; $7e0d: $38 $42

	xor b                                            ; $7e0f: $a8
	ldh a, [rHDMA4]                                  ; $7e10: $f0 $54
	ld a, [hl-]                                      ; $7e12: $3a
	ld d, l                                          ; $7e13: $55
	ld c, c                                          ; $7e14: $49
	ld c, a                                          ; $7e15: $4f
	inc [hl]                                         ; $7e16: $34
	ld l, a                                          ; $7e17: $6f
	xor $2d                                          ; $7e18: $ee $2d
	jr c, @-$0e                                      ; $7e1a: $38 $f0

	ccf                                              ; $7e1c: $3f
	ld b, h                                          ; $7e1d: $44
	ld c, c                                          ; $7e1e: $49
	inc de                                           ; $7e1f: $13
	ld [hl], a                                       ; $7e20: $77
	dec sp                                           ; $7e21: $3b
	ccf                                              ; $7e22: $3f
	ld c, [hl]                                       ; $7e23: $4e
	ld b, c                                          ; $7e24: $41
	ld b, h                                          ; $7e25: $44
	inc a                                            ; $7e26: $3c

jr_092_7e27:
	ld d, b                                          ; $7e27: $50
	and b                                            ; $7e28: $a0
	ldh a, [$50]                                     ; $7e29: $f0 $50
	ld [hl], e                                       ; $7e2b: $73
	ldh a, [$32]                                     ; $7e2c: $f0 $32
	xor h                                            ; $7e2e: $ac
	pop de                                           ; $7e2f: $d1
	inc [hl]                                         ; $7e30: $34
	jr c, jr_092_7e6b                                ; $7e31: $38 $38

	ld b, c                                          ; $7e33: $41

Jump_092_7e34:
	db $ec                                           ; $7e34: $ec
	ret c                                            ; $7e35: $d8

	and b                                            ; $7e36: $a0
	cpl                                              ; $7e37: $2f
	ld b, e                                          ; $7e38: $43
	ld [$a9af], a                                    ; $7e39: $ea $af $a9
	ldh a, [$67]                                     ; $7e3c: $f0 $67
	ldh a, [$9f]                                     ; $7e3e: $f0 $9f
	ld d, e                                          ; $7e40: $53
	add b                                            ; $7e41: $80
	jr c, jr_092_7e83                                ; $7e42: $38 $3f

	ld e, h                                          ; $7e44: $5c
	dec a                                            ; $7e45: $3d
	ld b, l                                          ; $7e46: $45
	and b                                            ; $7e47: $a0
	ld b, b                                          ; $7e48: $40
	add hl, sp                                       ; $7e49: $39
	inc [hl]                                         ; $7e4a: $34
	ld d, e                                          ; $7e4b: $53
	dec sp                                           ; $7e4c: $3b
	inc a                                            ; $7e4d: $3c
	ld d, a                                          ; $7e4e: $57
	ld a, $3a                                        ; $7e4f: $3e $3a

jr_092_7e51:
	jr c, jr_092_7e95                                ; $7e51: $38 $42

	xor b                                            ; $7e53: $a8
	ld b, [hl]                                       ; $7e54: $46
	ld d, d                                          ; $7e55: $52
	ld d, a                                          ; $7e56: $57
	inc [hl]                                         ; $7e57: $34
	ldh a, [$3f]                                     ; $7e58: $f0 $3f
	ld c, c                                          ; $7e5a: $49
	inc a                                            ; $7e5b: $3c
	ldh a, [$bd]                                     ; $7e5c: $f0 $bd
	jr c, jr_092_7e9f                                ; $7e5e: $38 $3f

	inc de                                           ; $7e60: $13
	ld a, [hl-]                                      ; $7e61: $3a
	inc a                                            ; $7e62: $3c
	dec sp                                           ; $7e63: $3b
	dec a                                            ; $7e64: $3d
	ld c, d                                          ; $7e65: $4a
	ld a, $66                                        ; $7e66: $3e $66
	add hl, sp                                       ; $7e68: $39
	and b                                            ; $7e69: $a0
	cpl                                              ; $7e6a: $2f

jr_092_7e6b:
	ld b, e                                          ; $7e6b: $43
	ld b, b                                          ; $7e6c: $40
	ld c, l                                          ; $7e6d: $4d
	ld c, e                                          ; $7e6e: $4b
	inc [hl]                                         ; $7e6f: $34
	ret nz                                           ; $7e70: $c0

	inc de                                           ; $7e71: $13
	ld e, l                                          ; $7e72: $5d
	ld e, d                                          ; $7e73: $5a
	ld c, b                                          ; $7e74: $48

jr_092_7e75:
	and b                                            ; $7e75: $a0
	xor $10                                          ; $7e76: $ee $10
	xor b                                            ; $7e78: $a8
	ldh a, [$0a]                                     ; $7e79: $f0 $0a
	ld d, l                                          ; $7e7b: $55
	inc [hl]                                         ; $7e7c: $34
	ld b, [hl]                                       ; $7e7d: $46
	ld a, [hl-]                                      ; $7e7e: $3a
	dec a                                            ; $7e7f: $3d
	ld b, d                                          ; $7e80: $42
	ldh a, [$a5]                                     ; $7e81: $f0 $a5

jr_092_7e83:
	ldh a, [c]                                       ; $7e83: $f2
	ld a, [bc]                                       ; $7e84: $0a
	ld h, d                                          ; $7e85: $62
	inc de                                           ; $7e86: $13
	ldh a, [$c1]                                     ; $7e87: $f0 $c1
	ldh a, [$d5]                                     ; $7e89: $f0 $d5
	ld a, $3a                                        ; $7e8b: $3e $3a
	ld e, b                                          ; $7e8d: $58
	jr c, jr_092_7ed5                                ; $7e8e: $38 $45

	and b                                            ; $7e90: $a0
	cpl                                              ; $7e91: $2f
	ld b, e                                          ; $7e92: $43
	xor $1e                                          ; $7e93: $ee $1e

jr_092_7e95:
	inc [hl]                                         ; $7e95: $34
	db $ec                                           ; $7e96: $ec
	pop hl                                           ; $7e97: $e1
	and b                                            ; $7e98: $a0
	ld l, e                                          ; $7e99: $6b
	ld c, b                                          ; $7e9a: $48
	and c                                            ; $7e9b: $a1
	cpl                                              ; $7e9c: $2f
	ld b, e                                          ; $7e9d: $43
	db $ed                                           ; $7e9e: $ed

jr_092_7e9f:
	ld c, [hl]                                       ; $7e9f: $4e
	inc [hl]                                         ; $7ea0: $34
	pop af                                           ; $7ea1: $f1
	or b                                             ; $7ea2: $b0
	ldh a, [$3f]                                     ; $7ea3: $f0 $3f
	ld c, e                                          ; $7ea5: $4b
	db $ed                                           ; $7ea6: $ed
	ld l, b                                          ; $7ea7: $68
	inc de                                           ; $7ea8: $13
	db $ec                                           ; $7ea9: $ec
	jr nz, jr_092_7e75                               ; $7eaa: $20 $c9

	inc [hl]                                         ; $7eac: $34
	db $ed                                           ; $7ead: $ed
	adc e                                            ; $7eae: $8b
	ld a, $3f                                        ; $7eaf: $3e $3f
	inc de                                           ; $7eb1: $13
	db $ec                                           ; $7eb2: $ec
	push af                                          ; $7eb3: $f5
	ld b, c                                          ; $7eb4: $41
	ld b, h                                          ; $7eb5: $44
	ld e, l                                          ; $7eb6: $5d
	ld e, d                                          ; $7eb7: $5a
	and b                                            ; $7eb8: $a0
	ld b, b                                          ; $7eb9: $40
	ld b, c                                          ; $7eba: $41
	ld a, [hl-]                                      ; $7ebb: $3a
	sbc d                                            ; $7ebc: $9a
	inc [hl]                                         ; $7ebd: $34
	db $ed                                           ; $7ebe: $ed
	ld e, l                                          ; $7ebf: $5d
	ld c, d                                          ; $7ec0: $4a
	inc de                                           ; $7ec1: $13
	ld l, e                                          ; $7ec2: $6b
	ld c, c                                          ; $7ec3: $49
	inc a                                            ; $7ec4: $3c
	ld a, $3a                                        ; $7ec5: $3e $3a
	ld e, b                                          ; $7ec7: $58
	jr c, jr_092_7f0f                                ; $7ec8: $38 $45

	and b                                            ; $7eca: $a0
	cpl                                              ; $7ecb: $2f
	ld b, e                                          ; $7ecc: $43
	ld [hl], b                                       ; $7ecd: $70
	inc [hl]                                         ; $7ece: $34
	ld [hl], b                                       ; $7ecf: $70
	ld [hl], c                                       ; $7ed0: $71
	ld b, c                                          ; $7ed1: $41
	and b                                            ; $7ed2: $a0
	ld d, d                                          ; $7ed3: $52
	dec sp                                           ; $7ed4: $3b

jr_092_7ed5:
	dec a                                            ; $7ed5: $3d
	ld d, l                                          ; $7ed6: $55
	xor h                                            ; $7ed7: $ac
	add h                                            ; $7ed8: $84
	ld b, a                                          ; $7ed9: $47
	ldh a, [c]                                       ; $7eda: $f2
	ld e, l                                          ; $7edb: $5d
	ld d, b                                          ; $7edc: $50
	ld a, [hl-]                                      ; $7edd: $3a
	jr c, jr_092_7f2a                                ; $7ede: $38 $4a

	ld b, l                                          ; $7ee0: $45
	ld c, h                                          ; $7ee1: $4c
	and b                                            ; $7ee2: $a0
	ldh a, [$80]                                     ; $7ee3: $f0 $80
	ldh a, [$c5]                                     ; $7ee5: $f0 $c5
	ld l, h                                          ; $7ee7: $6c
	ld b, c                                          ; $7ee8: $41
	ld a, [hl-]                                      ; $7ee9: $3a
	ld [hl], d                                       ; $7eea: $72
	sub [hl]                                         ; $7eeb: $96
	dec sp                                           ; $7eec: $3b
	ccf                                              ; $7eed: $3f
	ccf                                              ; $7eee: $3f
	inc de                                           ; $7eef: $13
	ld d, c                                          ; $7ef0: $51
	ld [hl], b                                       ; $7ef1: $70
	inc a                                            ; $7ef2: $3c
	dec sp                                           ; $7ef3: $3b
	dec a                                            ; $7ef4: $3d
	ld h, e                                          ; $7ef5: $63
	and b                                            ; $7ef6: $a0
	cpl                                              ; $7ef7: $2f
	ld b, e                                          ; $7ef8: $43
	halt                                             ; $7ef9: $76
	ld b, d                                          ; $7efa: $42
	ldh a, [$3f]                                     ; $7efb: $f0 $3f
	ld c, a                                          ; $7efd: $4f
	xor h                                            ; $7efe: $ac
	ldh a, [c]                                       ; $7eff: $f2
	sbc e                                            ; $7f00: $9b
	di                                               ; $7f01: $f3
	ld c, e                                          ; $7f02: $4b
	ld b, l                                          ; $7f03: $45
	inc a                                            ; $7f04: $3c
	dec sp                                           ; $7f05: $3b
	dec a                                            ; $7f06: $3d
	ld b, l                                          ; $7f07: $45
	and b                                            ; $7f08: $a0
	xor $10                                          ; $7f09: $ee $10
	xor b                                            ; $7f0b: $a8
	ld b, b                                          ; $7f0c: $40
	add hl, sp                                       ; $7f0d: $39
	xor h                                            ; $7f0e: $ac

jr_092_7f0f:
	ld b, b                                          ; $7f0f: $40
	ld c, l                                          ; $7f10: $4d
	ld c, e                                          ; $7f11: $4b
	db $ec                                           ; $7f12: $ec
	cp c                                             ; $7f13: $b9
	ld h, e                                          ; $7f14: $63
	ld c, h                                          ; $7f15: $4c
	and b                                            ; $7f16: $a0
	cpl                                              ; $7f17: $2f
	ld [hl-], a                                      ; $7f18: $32
	pop af                                           ; $7f19: $f1
	sub h                                            ; $7f1a: $94
	dec a                                            ; $7f1b: $3d
	jr c, jr_092_7f58                                ; $7f1c: $38 $3a

	ld [hl], h                                       ; $7f1e: $74
	and e                                            ; $7f1f: $a3
	ld b, [hl]                                       ; $7f20: $46
	ld [hl], h                                       ; $7f21: $74
	inc [hl]                                         ; $7f22: $34
	ld b, l                                          ; $7f23: $45
	inc a                                            ; $7f24: $3c
	dec sp                                           ; $7f25: $3b
	dec a                                            ; $7f26: $3d
	ld h, e                                          ; $7f27: $63
	and b                                            ; $7f28: $a0
	cpl                                              ; $7f29: $2f

jr_092_7f2a:
	ld [hl-], a                                      ; $7f2a: $32
	db $ed                                           ; $7f2b: $ed
	ld e, [hl]                                       ; $7f2c: $5e
	xor h                                            ; $7f2d: $ac
	ldh a, [$0c]                                     ; $7f2e: $f0 $0c
	jr c, jr_092_7f93                                ; $7f30: $38 $61

	ld d, [hl]                                       ; $7f32: $56
	jr c, jr_092_7f81                                ; $7f33: $38 $4c

	add l                                            ; $7f35: $85
	and e                                            ; $7f36: $a3
	ld l, a                                          ; $7f37: $6f
	ld d, e                                          ; $7f38: $53
	db $ed                                           ; $7f39: $ed
	adc e                                            ; $7f3a: $8b
	ld a, $3f                                        ; $7f3b: $3e $3f
	rst SubAFromDE                                          ; $7f3d: $df
	ld h, e                                          ; $7f3e: $63
	and b                                            ; $7f3f: $a0
	ld b, h                                          ; $7f40: $44
	inc a                                            ; $7f41: $3c
	ld d, b                                          ; $7f42: $50
	add d                                            ; $7f43: $82
	dec sp                                           ; $7f44: $3b
	dec a                                            ; $7f45: $3d
	ld c, d                                          ; $7f46: $4a
	ld a, $66                                        ; $7f47: $3e $66
	add hl, sp                                       ; $7f49: $39
	xor b                                            ; $7f4a: $a8
	jr c, jr_092_7f85                                ; $7f4b: $38 $38

	ldh a, [$3f]                                     ; $7f4d: $f0 $3f
	db $ed                                           ; $7f4f: $ed
	ld b, e                                          ; $7f50: $43

jr_092_7f51:
	and b                                            ; $7f51: $a0
	db $ed                                           ; $7f52: $ed
	ld b, [hl]                                       ; $7f53: $46
	inc [hl]                                         ; $7f54: $34
	db $eb                                           ; $7f55: $eb
	rst FarCall                                          ; $7f56: $f7
	xor c                                            ; $7f57: $a9

jr_092_7f58:
	ldh a, [$ea]                                     ; $7f58: $f0 $ea
	ld b, b                                          ; $7f5a: $40
	add hl, sp                                       ; $7f5b: $39
	db $ec                                           ; $7f5c: $ec
	ret c                                            ; $7f5d: $d8

	and b                                            ; $7f5e: $a0
	ld b, b                                          ; $7f5f: $40
	ld c, l                                          ; $7f60: $4d
	ld e, e                                          ; $7f61: $5b
	ld d, [hl]                                       ; $7f62: $56
	inc [hl]                                         ; $7f63: $34
	ld h, a                                          ; $7f64: $67
	ld d, l                                          ; $7f65: $55
	ld h, e                                          ; $7f66: $63
	ld c, h                                          ; $7f67: $4c
	and b                                            ; $7f68: $a0
	cpl                                              ; $7f69: $2f
	ld b, e                                          ; $7f6a: $43
	ld e, [hl]                                       ; $7f6b: $5e
	add l                                            ; $7f6c: $85
	xor b                                            ; $7f6d: $a8
	jp hl                                            ; $7f6e: $e9


	or e                                             ; $7f6f: $b3
	and c                                            ; $7f70: $a1
	pop af                                           ; $7f71: $f1
	ld l, a                                          ; $7f72: $6f
	ld b, d                                          ; $7f73: $42
	adc a                                            ; $7f74: $8f
	ld b, d                                          ; $7f75: $42
	xor h                                            ; $7f76: $ac
	ldh a, [$c1]                                     ; $7f77: $f0 $c1
	ldh a, [$d5]                                     ; $7f79: $f0 $d5

jr_092_7f7b:
	ld c, a                                          ; $7f7b: $4f
	ld [hl], d                                       ; $7f7c: $72
	ld a, [hl-]                                      ; $7f7d: $3a
	jr c, jr_092_7fc9                                ; $7f7e: $38 $49

	ld c, h                                          ; $7f80: $4c

jr_092_7f81:
	and b                                            ; $7f81: $a0
	cpl                                              ; $7f82: $2f
	ld b, e                                          ; $7f83: $43
	ld b, b                                          ; $7f84: $40

jr_092_7f85:
	add hl, sp                                       ; $7f85: $39
	xor l                                            ; $7f86: $ad
	halt                                             ; $7f87: $76
	ld h, d                                          ; $7f88: $62
	di                                               ; $7f89: $f3
	db $e3                                           ; $7f8a: $e3
	jr c, jr_092_7fcc                                ; $7f8b: $38 $3f

	inc de                                           ; $7f8d: $13
	ld h, a                                          ; $7f8e: $67
	dec sp                                           ; $7f8f: $3b
	ccf                                              ; $7f90: $3f
	ld a, $52                                        ; $7f91: $3e $52

jr_092_7f93:
	xor $1f                                          ; $7f93: $ee $1f
	ld b, h                                          ; $7f95: $44
	ld c, h                                          ; $7f96: $4c
	and b                                            ; $7f97: $a0
	ld b, b                                          ; $7f98: $40
	ld b, c                                          ; $7f99: $41
	ld a, [hl-]                                      ; $7f9a: $3a
	inc [hl]                                         ; $7f9b: $34
	ldh a, [c]                                       ; $7f9c: $f2
	rst SubAFromHL                                          ; $7f9d: $d7
	ld a, $40                                        ; $7f9e: $3e $40
	add hl, sp                                       ; $7fa0: $39
	ld b, a                                          ; $7fa1: $47
	xor l                                            ; $7fa2: $ad
	ld c, d                                          ; $7fa3: $4a
	ld c, a                                          ; $7fa4: $4f
	inc [hl]                                         ; $7fa5: $34
	ld h, a                                          ; $7fa6: $67
	dec sp                                           ; $7fa7: $3b
	ld h, c                                          ; $7fa8: $61
	ld d, [hl]                                       ; $7fa9: $56
	add hl, sp                                       ; $7faa: $39
	ld b, d                                          ; $7fab: $42
	ld b, l                                          ; $7fac: $45
	xor b                                            ; $7fad: $a8
	jp hl                                            ; $7fae: $e9


	jr nz, jr_092_7f51                               ; $7faf: $20 $a0

	cpl                                              ; $7fb1: $2f
	ld b, e                                          ; $7fb2: $43
	pop af                                           ; $7fb3: $f1
	sub h                                            ; $7fb4: $94
	dec a                                            ; $7fb5: $3d
	jr c, jr_092_7ff2                                ; $7fb6: $38 $3a

	ld [hl], h                                       ; $7fb8: $74
	xor l                                            ; $7fb9: $ad
	ldh a, [c]                                       ; $7fba: $f2
	adc c                                            ; $7fbb: $89
	ld e, h                                          ; $7fbc: $5c
	pop af                                           ; $7fbd: $f1
	add c                                            ; $7fbe: $81
	ld c, c                                          ; $7fbf: $49
	ld a, $53                                        ; $7fc0: $3e $53
	di                                               ; $7fc2: $f3
	jp Jump_092_4955                                 ; $7fc3: $c3 $55 $49


	ld c, e                                          ; $7fc6: $4b
	inc de                                           ; $7fc7: $13
	ld [hl], a                                       ; $7fc8: $77

jr_092_7fc9:
	dec sp                                           ; $7fc9: $3b
	ccf                                              ; $7fca: $3f
	ld a, [hl-]                                      ; $7fcb: $3a

jr_092_7fcc:
	inc a                                            ; $7fcc: $3c
	dec sp                                           ; $7fcd: $3b
	dec a                                            ; $7fce: $3d
	ld e, l                                          ; $7fcf: $5d
	ld e, d                                          ; $7fd0: $5a
	ld c, b                                          ; $7fd1: $48
	and b                                            ; $7fd2: $a0
	ld [hl], b                                       ; $7fd3: $70
	ld [hl], c                                       ; $7fd4: $71
	ld b, c                                          ; $7fd5: $41
	ld c, h                                          ; $7fd6: $4c
	xor b                                            ; $7fd7: $a8
	jp hl                                            ; $7fd8: $e9


	jr nz, jr_092_7f7b                               ; $7fd9: $20 $a0

	db $ed                                           ; $7fdb: $ed
	ld b, [hl]                                       ; $7fdc: $46
	xor h                                            ; $7fdd: $ac
	ld l, d                                          ; $7fde: $6a
	ld b, d                                          ; $7fdf: $42
	xor $2b                                          ; $7fe0: $ee $2b
	db $eb                                           ; $7fe2: $eb
	and c                                            ; $7fe3: $a1
	and b                                            ; $7fe4: $a0
	cpl                                              ; $7fe5: $2f
	ld b, e                                          ; $7fe6: $43
	ld b, [hl]                                       ; $7fe7: $46
	dec sp                                           ; $7fe8: $3b
	inc [hl]                                         ; $7fe9: $34
	db $ec                                           ; $7fea: $ec
	pop hl                                           ; $7feb: $e1
	xor b                                            ; $7fec: $a8
	ld [$a81f], a                                    ; $7fed: $ea $1f $a8
	db $eb                                           ; $7ff0: $eb
	ld d, b                                          ; $7ff1: $50

jr_092_7ff2:
	and c                                            ; $7ff2: $a1
	ld [$a8da], a                                    ; $7ff3: $ea $da $a8
	ld [$a8e6], a                                    ; $7ff6: $ea $e6 $a8
	ld c, d                                          ; $7ff9: $4a
	ld c, a                                          ; $7ffa: $4f
	inc [hl]                                         ; $7ffb: $34
	ld b, [hl]                                       ; $7ffc: $46
	ld c, l                                          ; $7ffd: $4d
	ld l, e                                          ; $7ffe: $6b
	ld b, d                                          ; $7fff: $42
