; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08d", ROMX[$4000], BANK[$8d]

	ld h, a                                          ; $4000: $67
	db $ec                                           ; $4001: $ec
	ld a, [bc]                                       ; $4002: $0a
	ld c, b                                          ; $4003: $48
	and c                                            ; $4004: $a1
	ld l, a                                          ; $4005: $6f
	xor h                                            ; $4006: $ac
	db $ed                                           ; $4007: $ed
	add [hl]                                         ; $4008: $86
	ldh a, [$d4]                                     ; $4009: $f0 $d4
	ldh a, [c]                                       ; $400b: $f2
	inc hl                                           ; $400c: $23
	ld a, [hl-]                                      ; $400d: $3a
	jr c, jr_08d_404c                                ; $400e: $38 $3c

	ld d, b                                          ; $4010: $50
	ld c, b                                          ; $4011: $48
	and b                                            ; $4012: $a0
	ld l, e                                          ; $4013: $6b
	inc a                                            ; $4014: $3c
	ldh a, [rAUD1LEN]                                ; $4015: $f0 $11
	ldh a, [$f2]                                     ; $4017: $f0 $f2
	ld c, c                                          ; $4019: $49
	inc a                                            ; $401a: $3c
	ld c, e                                          ; $401b: $4b
	xor h                                            ; $401c: $ac
	ld a, [hl-]                                      ; $401d: $3a
	jr c, jr_08d_4061                                ; $401e: $38 $41

	ld c, d                                          ; $4020: $4a
	ld d, c                                          ; $4021: $51
	inc a                                            ; $4022: $3c
	and c                                            ; $4023: $a1
	ld l, a                                          ; $4024: $6f
	ld b, a                                          ; $4025: $47
	ld c, a                                          ; $4026: $4f
	inc de                                           ; $4027: $13
	db $eb                                           ; $4028: $eb
	ld h, a                                          ; $4029: $67
	jr c, @+$3a                                      ; $402a: $38 $38

	inc a                                            ; $402c: $3c
	ld c, b                                          ; $402d: $48
	and b                                            ; $402e: $a0
	ld c, a                                          ; $402f: $4f
	add hl, sp                                       ; $4030: $39
	inc [hl]                                         ; $4031: $34
	di                                               ; $4032: $f3
	adc e                                            ; $4033: $8b
	ld d, e                                          ; $4034: $53
	db $eb                                           ; $4035: $eb
	xor h                                            ; $4036: $ac
	inc de                                           ; $4037: $13
	ld [$a0b4], a                                    ; $4038: $ea $b4 $a0
	cpl                                              ; $403b: $2f
	ld b, b                                          ; $403c: $40
	ld c, l                                          ; $403d: $4d
	ld e, e                                          ; $403e: $5b
	ld d, [hl]                                       ; $403f: $56
	inc [hl]                                         ; $4040: $34
	ld c, a                                          ; $4041: $4f
	add hl, sp                                       ; $4042: $39
	pop af                                           ; $4043: $f1
	jr nc, jr_08d_40b7                               ; $4044: $30 $71

	ld b, l                                          ; $4046: $45
	add hl, sp                                       ; $4047: $39
	add hl, bc                                       ; $4048: $09
	db $eb                                           ; $4049: $eb
	ld d, a                                          ; $404a: $57
	xor b                                            ; $404b: $a8

jr_08d_404c:
	ld l, a                                          ; $404c: $6f
	ld b, d                                          ; $404d: $42
	dec a                                            ; $404e: $3d
	ld [hl], c                                       ; $404f: $71
	ld b, a                                          ; $4050: $47
	xor e                                            ; $4051: $ab
	ldh a, [$29]                                     ; $4052: $f0 $29
	ld a, $38                                        ; $4054: $3e $38
	ld c, d                                          ; $4056: $4a
	ld d, c                                          ; $4057: $51
	ld c, b                                          ; $4058: $48
	and b                                            ; $4059: $a0
	db $eb                                           ; $405a: $eb
	ld d, a                                          ; $405b: $57
	xor b                                            ; $405c: $a8
	ld d, c                                          ; $405d: $51
	sbc l                                            ; $405e: $9d
	ld b, a                                          ; $405f: $47
	db $eb                                           ; $4060: $eb

jr_08d_4061:
	xor h                                            ; $4061: $ac
	inc de                                           ; $4062: $13
	ld a, $52                                        ; $4063: $3e $52
	dec sp                                           ; $4065: $3b
	ccf                                              ; $4066: $3f
	ld c, b                                          ; $4067: $48
	and b                                            ; $4068: $a0
	db $eb                                           ; $4069: $eb
	ld d, a                                          ; $406a: $57
	xor b                                            ; $406b: $a8
	ld l, a                                          ; $406c: $6f
	ld b, d                                          ; $406d: $42
	dec a                                            ; $406e: $3d
	ld [hl], c                                       ; $406f: $71
	ld b, a                                          ; $4070: $47
	ld c, b                                          ; $4071: $48
	and b                                            ; $4072: $a0
	cpl                                              ; $4073: $2f
	di                                               ; $4074: $f3
	adc e                                            ; $4075: $8b
	ld d, e                                          ; $4076: $53
	db $f4                                           ; $4077: $f4
	xor l                                            ; $4078: $ad
	ld c, l                                          ; $4079: $4d
	ld c, [hl]                                       ; $407a: $4e
	ld d, d                                          ; $407b: $52
	ld c, d                                          ; $407c: $4a
	ld l, [hl]                                       ; $407d: $6e
	ld c, [hl]                                       ; $407e: $4e
	ld b, c                                          ; $407f: $41
	ld b, h                                          ; $4080: $44
	add hl, bc                                       ; $4081: $09
	ld b, b                                          ; $4082: $40
	inc [hl]                                         ; $4083: $34

jr_08d_4084:
	ld b, b                                          ; $4084: $40
	ld b, c                                          ; $4085: $41
	ld a, [hl-]                                      ; $4086: $3a
	ld c, b                                          ; $4087: $48
	and b                                            ; $4088: $a0
	ld b, b                                          ; $4089: $40
	ld b, c                                          ; $408a: $41
	ld a, [hl-]                                      ; $408b: $3a
	ld d, h                                          ; $408c: $54
	ld c, c                                          ; $408d: $49
	add d                                            ; $408e: $82
	add hl, sp                                       ; $408f: $39
	ld a, [hl-]                                      ; $4090: $3a
	ld d, b                                          ; $4091: $50
	xor h                                            ; $4092: $ac
	db $ed                                           ; $4093: $ed
	pop de                                           ; $4094: $d1
	ld d, a                                          ; $4095: $57
	ld d, d                                          ; $4096: $52
	ld d, c                                          ; $4097: $51
	and b                                            ; $4098: $a0
	ld b, b                                          ; $4099: $40
	ld b, c                                          ; $409a: $41
	ld a, [hl-]                                      ; $409b: $3a
	inc [hl]                                         ; $409c: $34
	sub h                                            ; $409d: $94
	ld a, b                                          ; $409e: $78

jr_08d_409f:
	ld d, d                                          ; $409f: $52
	ld a, c                                          ; $40a0: $79
	ld b, c                                          ; $40a1: $41
	ld c, b                                          ; $40a2: $48
	and b                                            ; $40a3: $a0
	cpl                                              ; $40a4: $2f
	ld c, a                                          ; $40a5: $4f
	dec sp                                           ; $40a6: $3b
	ld c, c                                          ; $40a7: $49

Call_08d_40a8:
	ldh a, [c]                                       ; $40a8: $f2
	ld c, h                                          ; $40a9: $4c
	jr c, jr_08d_409f                                ; $40aa: $38 $f3

	inc d                                            ; $40ac: $14
	ld b, a                                          ; $40ad: $47
	db $ec                                           ; $40ae: $ec
	inc c                                            ; $40af: $0c
	and c                                            ; $40b0: $a1
	db $ed                                           ; $40b1: $ed
	ld c, [hl]                                       ; $40b2: $4e
	xor h                                            ; $40b3: $ac
	ld d, h                                          ; $40b4: $54
	ld c, l                                          ; $40b5: $4d
	pop af                                           ; $40b6: $f1

jr_08d_40b7:
	ld c, e                                          ; $40b7: $4b
	ldh a, [$3e]                                     ; $40b8: $f0 $3e
	ldh a, [c]                                       ; $40ba: $f2
	ld c, h                                          ; $40bb: $4c
	jr c, jr_08d_4100                                ; $40bc: $38 $42

	ld c, e                                          ; $40be: $4b
	inc de                                           ; $40bf: $13
	ldh a, [rAUD1LOW]                                ; $40c0: $f0 $13
	jr c, jr_08d_410d                                ; $40c2: $38 $49

	ld [hl], a                                       ; $40c4: $77
	jr c, jr_08d_4119                                ; $40c5: $38 $52

	ld d, c                                          ; $40c7: $51
	ld c, b                                          ; $40c8: $48

jr_08d_40c9:
	and b                                            ; $40c9: $a0
	xor $1e                                          ; $40ca: $ee $1e
	xor l                                            ; $40cc: $ad
	ld d, h                                          ; $40cd: $54
	ld c, l                                          ; $40ce: $4d
	inc [hl]                                         ; $40cf: $34
	db $ed                                           ; $40d0: $ed
	ld [hl], d                                       ; $40d1: $72
	ldh a, [c]                                       ; $40d2: $f2
	ld c, h                                          ; $40d3: $4c
	jr c, jr_08d_40c9                                ; $40d4: $38 $f3

	inc d                                            ; $40d6: $14
	inc de                                           ; $40d7: $13
	ld a, [hl-]                                      ; $40d8: $3a
	ld b, c                                          ; $40d9: $41
	ld c, d                                          ; $40da: $4a
	ld d, c                                          ; $40db: $51
	and b                                            ; $40dc: $a0
	ld d, h                                          ; $40dd: $54
	ld c, l                                          ; $40de: $4d
	pop af                                           ; $40df: $f1
	ld c, e                                          ; $40e0: $4b
	ldh a, [$3e]                                     ; $40e1: $f0 $3e
	ldh a, [c]                                       ; $40e3: $f2
	ld c, h                                          ; $40e4: $4c
	jr c, @+$44                                      ; $40e5: $38 $42

	ld c, e                                          ; $40e7: $4b
	inc de                                           ; $40e8: $13
	ld a, [hl-]                                      ; $40e9: $3a
	jr c, jr_08d_412d                                ; $40ea: $38 $41

	ld c, d                                          ; $40ec: $4a
	ld d, c                                          ; $40ed: $51
	ld c, b                                          ; $40ee: $48
	and b                                            ; $40ef: $a0
	ld l, a                                          ; $40f0: $6f
	ld b, d                                          ; $40f1: $42
	pop af                                           ; $40f2: $f1
	xor e                                            ; $40f3: $ab
	inc [hl]                                         ; $40f4: $34
	ld e, d                                          ; $40f5: $5a
	add hl, sp                                       ; $40f6: $39
	ld c, d                                          ; $40f7: $4a
	ld a, $3d                                        ; $40f8: $3e $3d
	and c                                            ; $40fa: $a1
	cpl                                              ; $40fb: $2f
	add sp, -$19                                     ; $40fc: $e8 $e7
	add hl, bc                                       ; $40fe: $09
	db $ec                                           ; $40ff: $ec

jr_08d_4100:
	cp c                                             ; $4100: $b9
	xor b                                            ; $4101: $a8
	jr c, jr_08d_4084                                ; $4102: $38 $80

	ld c, a                                          ; $4104: $4f
	ld b, l                                          ; $4105: $45
	ld d, a                                          ; $4106: $57
	ld c, a                                          ; $4107: $4f
	xor h                                            ; $4108: $ac
	ldh a, [$3e]                                     ; $4109: $f0 $3e
	ldh a, [$0b]                                     ; $410b: $f0 $0b

jr_08d_410d:
	ld b, a                                          ; $410d: $47
	pop af                                           ; $410e: $f1
	xor e                                            ; $410f: $ab
	ld e, [hl]                                       ; $4110: $5e
	dec a                                            ; $4111: $3d
	ld l, h                                          ; $4112: $6c
	dec a                                            ; $4113: $3d
	jr c, jr_08d_415e                                ; $4114: $38 $48

	and b                                            ; $4116: $a0
	jp hl                                            ; $4117: $e9


	inc d                                            ; $4118: $14

jr_08d_4119:
	xor b                                            ; $4119: $a8
	ld d, h                                          ; $411a: $54
	ld b, c                                          ; $411b: $41
	ld a, [hl-]                                      ; $411c: $3a
	ld b, a                                          ; $411d: $47
	ldh a, [$a3]                                     ; $411e: $f0 $a3
	ldh a, [$0b]                                     ; $4120: $f0 $0b
	ld a, [hl-]                                      ; $4122: $3a
	ld b, d                                          ; $4123: $42
	ld b, a                                          ; $4124: $47
	xor l                                            ; $4125: $ad
	ldh a, [$29]                                     ; $4126: $f0 $29
	ld a, $38                                        ; $4128: $3e $38
	ld c, d                                          ; $412a: $4a
	ld d, c                                          ; $412b: $51
	and b                                            ; $412c: $a0

jr_08d_412d:
	jp hl                                            ; $412d: $e9


	inc d                                            ; $412e: $14
	xor b                                            ; $412f: $a8
	ldh a, [$29]                                     ; $4130: $f0 $29
	ld a, $38                                        ; $4132: $3e $38
	ld c, d                                          ; $4134: $4a
	ld d, c                                          ; $4135: $51
	and b                                            ; $4136: $a0
	cpl                                              ; $4137: $2f
	db $ed                                           ; $4138: $ed
	ld e, [hl]                                       ; $4139: $5e
	inc [hl]                                         ; $413a: $34
	pop af                                           ; $413b: $f1
	and $f3                                          ; $413c: $e6 $f3
	pop de                                           ; $413e: $d1
	inc a                                            ; $413f: $3c
	ld d, b                                          ; $4140: $50
	ld l, [hl]                                       ; $4141: $6e
	ld d, a                                          ; $4142: $57
	ldh a, [hDisp1_WX]                                     ; $4143: $f0 $96
	ld a, c                                          ; $4145: $79
	add hl, bc                                       ; $4146: $09
	ld b, b                                          ; $4147: $40
	ld c, l                                          ; $4148: $4d
	ld c, e                                          ; $4149: $4b
	xor h                                            ; $414a: $ac
	ldh a, [rTAC]                                    ; $414b: $f0 $07
	inc a                                            ; $414d: $3c
	dec sp                                           ; $414e: $3b
	ccf                                              ; $414f: $3f
	ld d, d                                          ; $4150: $52
	ld d, c                                          ; $4151: $51
	ld e, l                                          ; $4152: $5d
	ld e, d                                          ; $4153: $5a
	ld c, b                                          ; $4154: $48
	and b                                            ; $4155: $a0
	ld l, a                                          ; $4156: $6f
	ld c, a                                          ; $4157: $4f
	ld b, b                                          ; $4158: $40
	add hl, sp                                       ; $4159: $39
	ld [hl], a                                       ; $415a: $77
	jr c, jr_08d_41af                                ; $415b: $38 $52

	ld d, c                                          ; $415d: $51

jr_08d_415e:
	inc de                                           ; $415e: $13
	ld e, l                                          ; $415f: $5d
	ld e, d                                          ; $4160: $5a
	xor l                                            ; $4161: $ad
	ld b, b                                          ; $4162: $40
	add hl, sp                                       ; $4163: $39
	ld c, e                                          ; $4164: $4b
	dec sp                                           ; $4165: $3b
	ld e, h                                          ; $4166: $5c
	ld d, a                                          ; $4167: $57
	add d                                            ; $4168: $82
	ld h, e                                          ; $4169: $63
	ld c, l                                          ; $416a: $4d
	ld c, [hl]                                       ; $416b: $4e
	ld c, c                                          ; $416c: $49
	xor h                                            ; $416d: $ac
	db $ec                                           ; $416e: $ec
	ld h, d                                          ; $416f: $62
	ld c, d                                          ; $4170: $4a
	ld d, c                                          ; $4171: $51
	ld c, h                                          ; $4172: $4c
	and b                                            ; $4173: $a0
	ld l, a                                          ; $4174: $6f
	ld c, a                                          ; $4175: $4f
	ld b, b                                          ; $4176: $40
	add hl, sp                                       ; $4177: $39
	ld [hl], a                                       ; $4178: $77
	jr c, jr_08d_41cd                                ; $4179: $38 $52

	ld d, c                                          ; $417b: $51
	inc de                                           ; $417c: $13
	ld e, l                                          ; $417d: $5d
	ld e, d                                          ; $417e: $5a
	ld c, b                                          ; $417f: $48
	and b                                            ; $4180: $a0
	cpl                                              ; $4181: $2f
	add sp, $56                                      ; $4182: $e8 $56
	add hl, bc                                       ; $4184: $09
	ldh a, [$29]                                     ; $4185: $f0 $29
	ld a, $38                                        ; $4187: $3e $38
	ld c, d                                          ; $4189: $4a
	ld d, c                                          ; $418a: $51
	ld e, l                                          ; $418b: $5d
	ld e, d                                          ; $418c: $5a
	xor l                                            ; $418d: $ad
	ldh a, [$3e]                                     ; $418e: $f0 $3e
	ldh a, [$0b]                                     ; $4190: $f0 $0b
	db $ec                                           ; $4192: $ec
	ret c                                            ; $4193: $d8

	ld b, d                                          ; $4194: $42
	ld c, e                                          ; $4195: $4b
	inc de                                           ; $4196: $13
	ldh a, [rTAC]                                    ; $4197: $f0 $07
	inc a                                            ; $4199: $3c
	dec sp                                           ; $419a: $3b
	ccf                                              ; $419b: $3f
	ld d, d                                          ; $419c: $52
	ld d, c                                          ; $419d: $51
	inc a                                            ; $419e: $3c
	ld d, b                                          ; $419f: $50
	ld c, b                                          ; $41a0: $48
	and b                                            ; $41a1: $a0
	ld b, b                                          ; $41a2: $40
	ld b, c                                          ; $41a3: $41
	ld a, [hl-]                                      ; $41a4: $3a
	xor h                                            ; $41a5: $ac
	ld h, h                                          ; $41a6: $64
	db $ed                                           ; $41a7: $ed
	sbc d                                            ; $41a8: $9a
	ld h, d                                          ; $41a9: $62
	add d                                            ; $41aa: $82
	dec sp                                           ; $41ab: $3b
	ccf                                              ; $41ac: $3f
	ld c, a                                          ; $41ad: $4f
	inc de                                           ; $41ae: $13

jr_08d_41af:
	ld l, e                                          ; $41af: $6b
	ld c, a                                          ; $41b0: $4f
	ld c, d                                          ; $41b1: $4a
	ld d, d                                          ; $41b2: $52
	ld a, c                                          ; $41b3: $79
	ld b, c                                          ; $41b4: $41
	ld b, l                                          ; $41b5: $45
	and b                                            ; $41b6: $a0
	ldh a, [$29]                                     ; $41b7: $f0 $29
	ld a, $38                                        ; $41b9: $3e $38
	ld c, d                                          ; $41bb: $4a
	ld d, c                                          ; $41bc: $51
	ld e, l                                          ; $41bd: $5d
	ld e, d                                          ; $41be: $5a
	xor h                                            ; $41bf: $ac
	ld h, h                                          ; $41c0: $64
	db $ed                                           ; $41c1: $ed
	sbc d                                            ; $41c2: $9a
	ld a, [hl-]                                      ; $41c3: $3a
	ld b, d                                          ; $41c4: $42
	ld c, e                                          ; $41c5: $4b
	inc de                                           ; $41c6: $13
	ldh a, [rTAC]                                    ; $41c7: $f0 $07
	inc a                                            ; $41c9: $3c
	dec sp                                           ; $41ca: $3b
	ccf                                              ; $41cb: $3f
	ld d, d                                          ; $41cc: $52

jr_08d_41cd:
	ld d, c                                          ; $41cd: $51
	inc a                                            ; $41ce: $3c
	ld d, b                                          ; $41cf: $50
	ld c, b                                          ; $41d0: $48
	and b                                            ; $41d1: $a0
	add a                                            ; $41d2: $87
	ld e, h                                          ; $41d3: $5c
	ld a, [hl-]                                      ; $41d4: $3a
	pop af                                           ; $41d5: $f1
	dec l                                            ; $41d6: $2d
	ld h, d                                          ; $41d7: $62
	sub h                                            ; $41d8: $94
	ld d, c                                          ; $41d9: $51
	ld c, c                                          ; $41da: $49
	xor h                                            ; $41db: $ac
	ld d, c                                          ; $41dc: $51
	dec sp                                           ; $41dd: $3b
	ld e, h                                          ; $41de: $5c
	ld d, a                                          ; $41df: $57
	ld a, $52                                        ; $41e0: $3e $52
	ld d, c                                          ; $41e2: $51
	ld c, h                                          ; $41e3: $4c
	and b                                            ; $41e4: $a0
	cpl                                              ; $41e5: $2f
	pop af                                           ; $41e6: $f1
	db $fc                                           ; $41e7: $fc
	ldh a, [c]                                       ; $41e8: $f2
	db $d3                                           ; $41e9: $d3
	ld h, h                                          ; $41ea: $64
	ld c, c                                          ; $41eb: $49
	ld a, [hl-]                                      ; $41ec: $3a
	ld a, $38                                        ; $41ed: $3e $38
	inc a                                            ; $41ef: $3c
	ld d, b                                          ; $41f0: $50
	ld c, h                                          ; $41f1: $4c
	add hl, bc                                       ; $41f2: $09
	rst JumpTable                                          ; $41f3: $c7
	ld c, d                                          ; $41f4: $4a
	ld d, c                                          ; $41f5: $51
	ld c, h                                          ; $41f6: $4c
	xor b                                            ; $41f7: $a8
	ld h, h                                          ; $41f8: $64
	ld c, c                                          ; $41f9: $49
	ld a, [hl-]                                      ; $41fa: $3a
	ld a, $38                                        ; $41fb: $3e $38
	ld b, d                                          ; $41fd: $42
	ld c, e                                          ; $41fe: $4b
	xor h                                            ; $41ff: $ac
	adc e                                            ; $4200: $8b
	ld l, h                                          ; $4201: $6c
	ld c, d                                          ; $4202: $4a
	ld d, c                                          ; $4203: $51
	inc a                                            ; $4204: $3c
	ld c, b                                          ; $4205: $48
	and c                                            ; $4206: $a1
	or [hl]                                          ; $4207: $b6
	xor b                                            ; $4208: $a8
	ld c, a                                          ; $4209: $4f
	add hl, sp                                       ; $420a: $39
	ldh a, [rHDMA4]                                  ; $420b: $f0 $54
	ld a, $ed                                        ; $420d: $3e $ed
	ld l, $47                                        ; $420f: $2e $47
	ld a, [hl-]                                      ; $4211: $3a
	ld d, a                                          ; $4212: $57
	dec a                                            ; $4213: $3d
	jr c, jr_08d_425f                                ; $4214: $38 $49

	inc de                                           ; $4216: $13
	ld [hl], a                                       ; $4217: $77
	jr c, jr_08d_426c                                ; $4218: $38 $52

	ld d, c                                          ; $421a: $51
	ld e, l                                          ; $421b: $5d
	ld e, d                                          ; $421c: $5a
	ld c, b                                          ; $421d: $48
	and b                                            ; $421e: $a0
	or [hl]                                          ; $421f: $b6
	xor b                                            ; $4220: $a8
	ld b, h                                          ; $4221: $44
	inc a                                            ; $4222: $3c
	ld d, b                                          ; $4223: $50
	ld a, [hl-]                                      ; $4224: $3a
	ld b, c                                          ; $4225: $41
	ld c, d                                          ; $4226: $4a
	ld a, $66                                        ; $4227: $3e $66
	add hl, sp                                       ; $4229: $39
	ld c, h                                          ; $422a: $4c
	and b                                            ; $422b: $a0
	cpl                                              ; $422c: $2f
	ld b, b                                          ; $422d: $40
	ld c, l                                          ; $422e: $4d
	ld c, d                                          ; $422f: $4a
	add a                                            ; $4230: $87
	pop af                                           ; $4231: $f1
	dec l                                            ; $4232: $2d
	ld a, [hl-]                                      ; $4233: $3a
	ld b, d                                          ; $4234: $42
	and c                                            ; $4235: $a1
	pop af                                           ; $4236: $f1
	ld h, [hl]                                       ; $4237: $66
	inc a                                            ; $4238: $3c
	ld c, l                                          ; $4239: $4d
	ccf                                              ; $423a: $3f
	ld c, [hl]                                       ; $423b: $4e
	ld c, c                                          ; $423c: $49
	inc de                                           ; $423d: $13
	db $eb                                           ; $423e: $eb
	ld c, a                                          ; $423f: $4f
	inc a                                            ; $4240: $3c
	ld d, b                                          ; $4241: $50
	xor h                                            ; $4242: $ac
	pop af                                           ; $4243: $f1
	dec l                                            ; $4244: $2d
	ld d, e                                          ; $4245: $53
	sub h                                            ; $4246: $94
	ld a, [hl-]                                      ; $4247: $3a
	jr c, jr_08d_428c                                ; $4248: $38 $42

	inc a                                            ; $424a: $3c
	ld a, [hl-]                                      ; $424b: $3a
	ld c, b                                          ; $424c: $48
	and c                                            ; $424d: $a1
	ld l, a                                          ; $424e: $6f
	ld c, e                                          ; $424f: $4b
	inc [hl]                                         ; $4250: $34
	ldh a, [c]                                       ; $4251: $f2
	and l                                            ; $4252: $a5
	ld l, l                                          ; $4253: $6d
	db $f4                                           ; $4254: $f4
	db $10                                           ; $4255: $10
	pop af                                           ; $4256: $f1
	dec l                                            ; $4257: $2d
	ld h, d                                          ; $4258: $62
	inc de                                           ; $4259: $13
	sub h                                            ; $425a: $94
	ld a, $3d                                        ; $425b: $3e $3d
	add b                                            ; $425d: $80
	ld c, a                                          ; $425e: $4f

jr_08d_425f:
	ld d, a                                          ; $425f: $57
	ld c, d                                          ; $4260: $4a
	ld d, c                                          ; $4261: $51
	ld e, l                                          ; $4262: $5d
	ld e, d                                          ; $4263: $5a
	ld c, b                                          ; $4264: $48
	and b                                            ; $4265: $a0
	ld l, a                                          ; $4266: $6f
	ld b, a                                          ; $4267: $47
	ld c, c                                          ; $4268: $49
	dec sp                                           ; $4269: $3b
	ccf                                              ; $426a: $3f
	ld c, e                                          ; $426b: $4b

jr_08d_426c:
	xor h                                            ; $426c: $ac
	ld [$5dbf], a                                    ; $426d: $ea $bf $5d
	ld e, d                                          ; $4270: $5a
	ld c, b                                          ; $4271: $48
	and b                                            ; $4272: $a0
	cpl                                              ; $4273: $2f
	ld b, b                                          ; $4274: $40
	ld b, d                                          ; $4275: $42
	ldh a, [$75]                                     ; $4276: $f0 $75
	adc h                                            ; $4278: $8c
	ld c, d                                          ; $4279: $4a
	ld d, e                                          ; $427a: $53
	ld b, c                                          ; $427b: $41
	ld d, e                                          ; $427c: $53
	ld b, c                                          ; $427d: $41
	ld h, a                                          ; $427e: $67
	ld d, h                                          ; $427f: $54
	add hl, sp                                       ; $4280: $39
	add hl, bc                                       ; $4281: $09
	ld b, b                                          ; $4282: $40
	add hl, sp                                       ; $4283: $39
	ld l, [hl]                                       ; $4284: $6e
	dec sp                                           ; $4285: $3b
	ccf                                              ; $4286: $3f
	pop af                                           ; $4287: $f1
	ld h, [hl]                                       ; $4288: $66
	inc a                                            ; $4289: $3c
	ld c, l                                          ; $428a: $4d
	ccf                                              ; $428b: $3f

jr_08d_428c:
	ld c, [hl]                                       ; $428c: $4e
	ld c, c                                          ; $428d: $49
	xor h                                            ; $428e: $ac
	ret                                              ; $428f: $c9


	inc de                                           ; $4290: $13
	db $eb                                           ; $4291: $eb
	ld c, a                                          ; $4292: $4f
	ld c, d                                          ; $4293: $4a
	ld d, c                                          ; $4294: $51
	ld c, h                                          ; $4295: $4c
	and b                                            ; $4296: $a0
	ld c, d                                          ; $4297: $4a
	ld c, a                                          ; $4298: $4f
	inc [hl]                                         ; $4299: $34
	ldh a, [$d6]                                     ; $429a: $f0 $d6
	ld c, e                                          ; $429c: $4b
	inc de                                           ; $429d: $13
	ld b, [hl]                                       ; $429e: $46
	ld a, [hl-]                                      ; $429f: $3a
	dec a                                            ; $42a0: $3d
	ld b, d                                          ; $42a1: $42
	ldh a, [rDMA]                                    ; $42a2: $f0 $46
	ld c, d                                          ; $42a4: $4a
	ld d, c                                          ; $42a5: $51
	ld b, l                                          ; $42a6: $45
	and b                                            ; $42a7: $a0
	or [hl]                                          ; $42a8: $b6
	xor b                                            ; $42a9: $a8
	ld c, d                                          ; $42aa: $4a
	ld c, a                                          ; $42ab: $4f
	inc [hl]                                         ; $42ac: $34
	ld b, [hl]                                       ; $42ad: $46
	ld d, d                                          ; $42ae: $52
	ld d, a                                          ; $42af: $57
	db $fc                                           ; $42b0: $fc
	db $10                                           ; $42b1: $10
	ld e, [hl]                                       ; $42b2: $5e
	ld c, [hl]                                       ; $42b3: $4e
	ld b, d                                          ; $42b4: $42
	ld d, e                                          ; $42b5: $53
	inc de                                           ; $42b6: $13
	ld a, [hl-]                                      ; $42b7: $3a
	jr c, jr_08d_42fb                                ; $42b8: $38 $41

	ld c, d                                          ; $42ba: $4a
	ld d, c                                          ; $42bb: $51
	ld c, b                                          ; $42bc: $48
	and b                                            ; $42bd: $a0
	cpl                                              ; $42be: $2f
	ld b, e                                          ; $42bf: $43
	ld b, b                                          ; $42c0: $40
	add hl, sp                                       ; $42c1: $39
	ld b, h                                          ; $42c2: $44
	ld c, h                                          ; $42c3: $4c
	and b                                            ; $42c4: $a0
	cpl                                              ; $42c5: $2f
	jp hl                                            ; $42c6: $e9


	cp e                                             ; $42c7: $bb
	xor h                                            ; $42c8: $ac
	ld [$6222], a                                    ; $42c9: $ea $22 $62
	inc de                                           ; $42cc: $13
	db $eb                                           ; $42cd: $eb
	adc a                                            ; $42ce: $8f
	and e                                            ; $42cf: $a3
	cpl                                              ; $42d0: $2f
	db $ec                                           ; $42d1: $ec
	rst SubAFromDE                                          ; $42d2: $df
	jp hl                                            ; $42d3: $e9


	cp b                                             ; $42d4: $b8
	add hl, bc                                       ; $42d5: $09
	cpl                                              ; $42d6: $2f
	ld b, e                                          ; $42d7: $43
	db $ec                                           ; $42d8: $ec
	rst SubAFromDE                                          ; $42d9: $df
	xor h                                            ; $42da: $ac
	ld [$1322], a                                    ; $42db: $ea $22 $13
	ld [hl], d                                       ; $42de: $72
	ld b, a                                          ; $42df: $47
	db $eb                                           ; $42e0: $eb
	ld e, h                                          ; $42e1: $5c
	and c                                            ; $42e2: $a1
	ld e, [hl]                                       ; $42e3: $5e
	dec sp                                           ; $42e4: $3b
	xor h                                            ; $42e5: $ac
	ld [$4a22], a                                    ; $42e6: $ea $22 $4a
	ld d, c                                          ; $42e9: $51
	inc a                                            ; $42ea: $3c
	xor c                                            ; $42eb: $a9
	ld l, a                                          ; $42ec: $6f
	ld c, e                                          ; $42ed: $4b
	ld b, [hl]                                       ; $42ee: $46
	ld d, d                                          ; $42ef: $52
	ld d, a                                          ; $42f0: $57
	ld c, b                                          ; $42f1: $48
	and b                                            ; $42f2: $a0
	cpl                                              ; $42f3: $2f
	jp hl                                            ; $42f4: $e9


	rst GetHLinHL                                          ; $42f5: $cf
	add hl, bc                                       ; $42f6: $09
	db $eb                                           ; $42f7: $eb
	db $f4                                           ; $42f8: $f4
	ld c, c                                          ; $42f9: $49
	inc de                                           ; $42fa: $13

jr_08d_42fb:
	add d                                            ; $42fb: $82
	add hl, sp                                       ; $42fc: $39
	ld a, [hl-]                                      ; $42fd: $3a
	ld d, b                                          ; $42fe: $50
	ld c, b                                          ; $42ff: $48
	and b                                            ; $4300: $a0
	cpl                                              ; $4301: $2f
	jp hl                                            ; $4302: $e9


	ret nc                                           ; $4303: $d0

	add hl, bc                                       ; $4304: $09
	cpl                                              ; $4305: $2f
	add sp, $51                                      ; $4306: $e8 $51
	add hl, bc                                       ; $4308: $09
	ld e, d                                          ; $4309: $5a
	ld d, h                                          ; $430a: $54
	ld b, a                                          ; $430b: $47
	ld [$3ca9], a                                    ; $430c: $ea $a9 $3c
	and c                                            ; $430f: $a1
	cpl                                              ; $4310: $2f
	add sp, $0d                                      ; $4311: $e8 $0d
	add hl, bc                                       ; $4313: $09
	cpl                                              ; $4314: $2f
	add sp, $2b                                      ; $4315: $e8 $2b
	add hl, bc                                       ; $4317: $09
	cpl                                              ; $4318: $2f
	add sp, $52                                      ; $4319: $e8 $52
	add hl, bc                                       ; $431b: $09
	cpl                                              ; $431c: $2f
	add sp, -$76                                     ; $431d: $e8 $8a
	add hl, bc                                       ; $431f: $09
	cpl                                              ; $4320: $2f
	jp hl                                            ; $4321: $e9


	cp c                                             ; $4322: $b9
	add hl, bc                                       ; $4323: $09
	ld l, a                                          ; $4324: $6f
	inc [hl]                                         ; $4325: $34
	db $ed                                           ; $4326: $ed
	ld l, b                                          ; $4327: $68
	ld a, [hl-]                                      ; $4328: $3a
	ld b, c                                          ; $4329: $41
	ld c, d                                          ; $432a: $4a
	ld d, c                                          ; $432b: $51
	and b                                            ; $432c: $a0
	cpl                                              ; $432d: $2f
	ld b, e                                          ; $432e: $43
	add a                                            ; $432f: $87
	ldh a, [$5b]                                     ; $4330: $f0 $5b
	ldh a, [$5e]                                     ; $4332: $f0 $5e
	inc [hl]                                         ; $4334: $34
	db $ec                                           ; $4335: $ec
	dec a                                            ; $4336: $3d
	and b                                            ; $4337: $a0
	db $ec                                           ; $4338: $ec
	reti                                             ; $4339: $d9


	ldh a, [$71]                                     ; $433a: $f0 $71
	inc a                                            ; $433c: $3c
	dec sp                                           ; $433d: $3b
	dec a                                            ; $433e: $3d
	ld c, d                                          ; $433f: $4a
	ld d, c                                          ; $4340: $51
	and b                                            ; $4341: $a0
	cpl                                              ; $4342: $2f
	ld [hl], b                                       ; $4343: $70
	ld [hl], c                                       ; $4344: $71
	ld b, c                                          ; $4345: $41
	ld c, h                                          ; $4346: $4c
	dec [hl]                                         ; $4347: $35
	ld l, d                                          ; $4348: $6a
	ldh a, [$0d]                                     ; $4349: $f0 $0d
	ld c, e                                          ; $434b: $4b
	ld a, a                                          ; $434c: $7f
	ld h, d                                          ; $434d: $62
	ldh a, [$9a]                                     ; $434e: $f0 $9a
	ld e, l                                          ; $4350: $5d
	ld c, [hl]                                       ; $4351: $4e
	ld b, l                                          ; $4352: $45
	add hl, bc                                       ; $4353: $09
	db $eb                                           ; $4354: $eb
	ld d, a                                          ; $4355: $57
	xor b                                            ; $4356: $a8
	db $ed                                           ; $4357: $ed
	ld l, b                                          ; $4358: $68
	ld a, [hl-]                                      ; $4359: $3a
	ld c, a                                          ; $435a: $4f
	ld b, d                                          ; $435b: $42
	ld d, e                                          ; $435c: $53
	pop af                                           ; $435d: $f1
	sub d                                            ; $435e: $92
	ld d, l                                          ; $435f: $55
	ccf                                              ; $4360: $3f
	xor l                                            ; $4361: $ad
	ld c, d                                          ; $4362: $4a
	ld c, a                                          ; $4363: $4f
	inc [hl]                                         ; $4364: $34
	ldh a, [$29]                                     ; $4365: $f0 $29
	ld a, $38                                        ; $4367: $3e $38
	ld c, d                                          ; $4369: $4a
	ld d, c                                          ; $436a: $51
	ld c, b                                          ; $436b: $48
	and b                                            ; $436c: $a0
	jp hl                                            ; $436d: $e9


	inc d                                            ; $436e: $14
	xor b                                            ; $436f: $a8
	ld a, a                                          ; $4370: $7f
	ld h, d                                          ; $4371: $62
	pop af                                           ; $4372: $f1
	sbc l                                            ; $4373: $9d
	dec sp                                           ; $4374: $3b
	ccf                                              ; $4375: $3f
	jr c, jr_08d_43b5                                ; $4376: $38 $3d

	ld b, h                                          ; $4378: $44
	jr c, jr_08d_43ba                                ; $4379: $38 $3f

	ld c, b                                          ; $437b: $48
	and b                                            ; $437c: $a0
	db $eb                                           ; $437d: $eb
	ld d, a                                          ; $437e: $57
	xor b                                            ; $437f: $a8
	ld [$48b6], a                                    ; $4380: $ea $b6 $48
	and b                                            ; $4383: $a0
	cpl                                              ; $4384: $2f
	add sp, $35                                      ; $4385: $e8 $35
	add hl, bc                                       ; $4387: $09
	ld h, e                                          ; $4388: $63
	inc [hl]                                         ; $4389: $34
	ld l, a                                          ; $438a: $6f
	ld c, e                                          ; $438b: $4b
	xor h                                            ; $438c: $ac
	db $ed                                           ; $438d: $ed
	ld l, b                                          ; $438e: $68
	ld a, [hl-]                                      ; $438f: $3a
	ld b, c                                          ; $4390: $41
	ld c, d                                          ; $4391: $4a
	ld d, c                                          ; $4392: $51
	ld c, b                                          ; $4393: $48
	and b                                            ; $4394: $a0
	ld b, h                                          ; $4395: $44
	inc a                                            ; $4396: $3c
	ld d, b                                          ; $4397: $50
	xor h                                            ; $4398: $ac
	db $ed                                           ; $4399: $ed
	ld l, b                                          ; $439a: $68
	db $ed                                           ; $439b: $ed
	ld b, e                                          ; $439c: $43
	add d                                            ; $439d: $82
	dec sp                                           ; $439e: $3b
	dec a                                            ; $439f: $3d
	ld b, c                                          ; $43a0: $41
	ld c, d                                          ; $43a1: $4a
	ld d, c                                          ; $43a2: $51
	and b                                            ; $43a3: $a0
	ld l, a                                          ; $43a4: $6f
	ld b, a                                          ; $43a5: $47
	ld c, e                                          ; $43a6: $4b
	xor h                                            ; $43a7: $ac
	ld b, [hl]                                       ; $43a8: $46
	ld c, l                                          ; $43a9: $4d
	ld c, d                                          ; $43aa: $4a
	db $ed                                           ; $43ab: $ed
	ld [hl], e                                       ; $43ac: $73
	ld c, d                                          ; $43ad: $4a
	ld d, c                                          ; $43ae: $51
	ld e, l                                          ; $43af: $5d
	ld e, d                                          ; $43b0: $5a
	ld c, b                                          ; $43b1: $48
	and b                                            ; $43b2: $a0
	cpl                                              ; $43b3: $2f
	halt                                             ; $43b4: $76

jr_08d_43b5:
	ld c, a                                          ; $43b5: $4f
	inc [hl]                                         ; $43b6: $34
	ret                                              ; $43b7: $c9


	ldh a, [$71]                                     ; $43b8: $f0 $71

jr_08d_43ba:
	inc a                                            ; $43ba: $3c
	dec sp                                           ; $43bb: $3b
	dec a                                            ; $43bc: $3d
	ld b, l                                          ; $43bd: $45
	add hl, bc                                       ; $43be: $09
	ld [$a81e], a                                    ; $43bf: $ea $1e $a8
	ld l, a                                          ; $43c2: $6f
	ld c, c                                          ; $43c3: $49
	ldh a, [$cd]                                     ; $43c4: $f0 $cd
	ld e, e                                          ; $43c6: $5b
	ld c, d                                          ; $43c7: $4a
	ld d, c                                          ; $43c8: $51
	ld c, h                                          ; $43c9: $4c
	and b                                            ; $43ca: $a0
	ld b, h                                          ; $43cb: $44
	dec sp                                           ; $43cc: $3b
	dec a                                            ; $43cd: $3d
	ld d, b                                          ; $43ce: $50
	inc [hl]                                         ; $43cf: $34
	ld l, d                                          ; $43d0: $6a
	ldh a, [$0d]                                     ; $43d1: $f0 $0d
	inc a                                            ; $43d3: $3c
	ld d, b                                          ; $43d4: $50
	inc de                                           ; $43d5: $13
	ldh a, [rLCDC]                                   ; $43d6: $f0 $40
	ld c, [hl]                                       ; $43d8: $4e
	ld b, d                                          ; $43d9: $42
	ld h, d                                          ; $43da: $62
	pop af                                           ; $43db: $f1
	jr nc, jr_08d_444f                               ; $43dc: $30 $71

	ld d, d                                          ; $43de: $52
	ld a, $66                                        ; $43df: $3e $66
	add hl, sp                                       ; $43e1: $39
	and b                                            ; $43e2: $a0
	ld b, b                                          ; $43e3: $40
	ld c, l                                          ; $43e4: $4d
	ld a, [hl-]                                      ; $43e5: $3a
	ld d, b                                          ; $43e6: $50
	xor h                                            ; $43e7: $ac
	ld b, [hl]                                       ; $43e8: $46
	ld d, d                                          ; $43e9: $52
	ld d, a                                          ; $43ea: $57
	ldh a, [rLCDC]                                   ; $43eb: $f0 $40
	ld d, b                                          ; $43ed: $50
	ld a, [hl-]                                      ; $43ee: $3a
	jr c, jr_08d_4436                                ; $43ef: $38 $45

	add hl, sp                                       ; $43f1: $39
	ld b, a                                          ; $43f2: $47
	inc de                                           ; $43f3: $13
	ld a, $52                                        ; $43f4: $3e $52
	ld a, $66                                        ; $43f6: $3e $66
	add hl, sp                                       ; $43f8: $39
	ld c, b                                          ; $43f9: $48
	and b                                            ; $43fa: $a0
	db $ed                                           ; $43fb: $ed
	add hl, de                                       ; $43fc: $19
	dec sp                                           ; $43fd: $3b
	ccf                                              ; $43fe: $3f
	ld c, a                                          ; $43ff: $4f
	xor h                                            ; $4400: $ac
	pop af                                           ; $4401: $f1
	sbc e                                            ; $4402: $9b
	ld c, l                                          ; $4403: $4d
	ld d, d                                          ; $4404: $52
	ld a, c                                          ; $4405: $79
	ld b, c                                          ; $4406: $41
	ld c, h                                          ; $4407: $4c
	and b                                            ; $4408: $a0
	cpl                                              ; $4409: $2f
	ld c, d                                          ; $440a: $4a
	ld c, a                                          ; $440b: $4f
	inc [hl]                                         ; $440c: $34
	ldh a, [c]                                       ; $440d: $f2
	db $d3                                           ; $440e: $d3
	ldh a, [$cf]                                     ; $440f: $f0 $cf
	pop af                                           ; $4411: $f1
	sbc e                                            ; $4412: $9b
	ld c, l                                          ; $4413: $4d
	ccf                                              ; $4414: $3f
	ld e, h                                          ; $4415: $5c
	dec a                                            ; $4416: $3d
	ld c, d                                          ; $4417: $4a
	ld a, $66                                        ; $4418: $3e $66
	add hl, sp                                       ; $441a: $39
	and c                                            ; $441b: $a1
	ld b, b                                          ; $441c: $40
	add hl, sp                                       ; $441d: $39
	add d                                            ; $441e: $82
	ld h, e                                          ; $441f: $63
	ld c, l                                          ; $4420: $4d
	ld c, l                                          ; $4421: $4d
	ld a, e                                          ; $4422: $7b
	xor h                                            ; $4423: $ac
	ld b, b                                          ; $4424: $40
	add hl, sp                                       ; $4425: $39
	inc a                                            ; $4426: $3c
	ld c, a                                          ; $4427: $4f
	inc de                                           ; $4428: $13
	ld a, $4d                                        ; $4429: $3e $4d
	ld d, d                                          ; $442b: $52
	ld a, c                                          ; $442c: $79
	ld b, c                                          ; $442d: $41
	ld e, l                                          ; $442e: $5d
	ld e, d                                          ; $442f: $5a
	ld c, b                                          ; $4430: $48
	and b                                            ; $4431: $a0
	db $d3                                           ; $4432: $d3
	inc a                                            ; $4433: $3c
	ld c, a                                          ; $4434: $4f
	inc de                                           ; $4435: $13

jr_08d_4436:
	ld a, $4d                                        ; $4436: $3e $4d
	ld d, d                                          ; $4438: $52
	ld a, c                                          ; $4439: $79
	ld b, c                                          ; $443a: $41
	ld e, l                                          ; $443b: $5d
	ld e, d                                          ; $443c: $5a
	ld c, b                                          ; $443d: $48
	and b                                            ; $443e: $a0
	ld b, [hl]                                       ; $443f: $46
	ld d, d                                          ; $4440: $52
	ld d, a                                          ; $4441: $57
	inc [hl]                                         ; $4442: $34
	ld b, b                                          ; $4443: $40
	add hl, sp                                       ; $4444: $39
	jr c, jr_08d_4480                                ; $4445: $38 $39

	ld a, a                                          ; $4447: $7f
	ld c, e                                          ; $4448: $4b
	inc de                                           ; $4449: $13
	ld a, $52                                        ; $444a: $3e $52
	ld a, c                                          ; $444c: $79
	ld b, c                                          ; $444d: $41
	ld e, l                                          ; $444e: $5d

jr_08d_444f:
	ld e, d                                          ; $444f: $5a
	ld c, b                                          ; $4450: $48
	and b                                            ; $4451: $a0
	cpl                                              ; $4452: $2f
	db $dd                                           ; $4453: $dd
	pop af                                           ; $4454: $f1
	sbc e                                            ; $4455: $9b
	ld c, l                                          ; $4456: $4d
	ld c, [hl]                                       ; $4457: $4e
	ld d, d                                          ; $4458: $52
	ld c, d                                          ; $4459: $4a
	ldh a, [rLCDC]                                   ; $445a: $f0 $40
	ld c, [hl]                                       ; $445c: $4e
	adc l                                            ; $445d: $8d
	add hl, bc                                       ; $445e: $09
	ld e, [hl]                                       ; $445f: $5e
	dec sp                                           ; $4460: $3b
	xor c                                            ; $4461: $a9
	ld d, d                                          ; $4462: $52
	ld b, h                                          ; $4463: $44
	ldh a, [rLCDC]                                   ; $4464: $f0 $40
	ld c, [hl]                                       ; $4466: $4e
	ld b, c                                          ; $4467: $41
	ld c, d                                          ; $4468: $4a
	ld d, c                                          ; $4469: $51
	inc a                                            ; $446a: $3c
	ld c, b                                          ; $446b: $48
	and c                                            ; $446c: $a1
	ld l, e                                          ; $446d: $6b
	ld b, h                                          ; $446e: $44
	inc a                                            ; $446f: $3c
	xor h                                            ; $4470: $ac
	ldh a, [c]                                       ; $4471: $f2
	ld [de], a                                       ; $4472: $12
	ld c, l                                          ; $4473: $4d
	ccf                                              ; $4474: $3f
	ld a, $52                                        ; $4475: $3e $52
	jr c, jr_08d_44b9                                ; $4477: $38 $40

	add hl, sp                                       ; $4479: $39
	ld c, d                                          ; $447a: $4a
	ld d, c                                          ; $447b: $51
	and b                                            ; $447c: $a0
	ldh a, [$a7]                                     ; $447d: $f0 $a7
	pop af                                           ; $447f: $f1

jr_08d_4480:
	ld h, c                                          ; $4480: $61
	ld c, d                                          ; $4481: $4a
	ld c, e                                          ; $4482: $4b
	xor h                                            ; $4483: $ac
	ret                                              ; $4484: $c9


	inc [hl]                                         ; $4485: $34
	ldh a, [rAUD1LOW]                                ; $4486: $f0 $13
	ldh a, [$63]                                     ; $4488: $f0 $63
	ld c, d                                          ; $448a: $4a
	ld d, c                                          ; $448b: $51
	and b                                            ; $448c: $a0
	cpl                                              ; $448d: $2f
	sbc $34                                          ; $448e: $de $34
	db $ed                                           ; $4490: $ed
	ld l, b                                          ; $4491: $68
	db $ec                                           ; $4492: $ec
	ld [hl+], a                                      ; $4493: $22
	add hl, bc                                       ; $4494: $09
	ld [$a8bf], a                                    ; $4495: $ea $bf $a8
	db $ed                                           ; $4498: $ed
	ld h, c                                          ; $4499: $61
	ld c, a                                          ; $449a: $4f
	add d                                            ; $449b: $82
	dec sp                                           ; $449c: $3b
	ccf                                              ; $449d: $3f
	ld c, [hl]                                       ; $449e: $4e
	ld c, c                                          ; $449f: $49
	inc de                                           ; $44a0: $13
	ld [hl], a                                       ; $44a1: $77
	jr c, jr_08d_44f6                                ; $44a2: $38 $52

	ld d, c                                          ; $44a4: $51
	ld e, l                                          ; $44a5: $5d
	ld e, d                                          ; $44a6: $5a
	ld c, b                                          ; $44a7: $48
	and b                                            ; $44a8: $a0
	db $ed                                           ; $44a9: $ed
	ld h, c                                          ; $44aa: $61
	ld c, a                                          ; $44ab: $4f
	add d                                            ; $44ac: $82
	dec sp                                           ; $44ad: $3b
	ccf                                              ; $44ae: $3f
	ld c, [hl]                                       ; $44af: $4e
	ld c, c                                          ; $44b0: $49
	inc de                                           ; $44b1: $13
	ld [hl], a                                       ; $44b2: $77
	jr c, jr_08d_4507                                ; $44b3: $38 $52

	ld d, c                                          ; $44b5: $51
	ld e, l                                          ; $44b6: $5d
	ld e, d                                          ; $44b7: $5a
	ld c, b                                          ; $44b8: $48

jr_08d_44b9:
	and b                                            ; $44b9: $a0
	pop af                                           ; $44ba: $f1
	add d                                            ; $44bb: $82
	inc a                                            ; $44bc: $3c
	xor h                                            ; $44bd: $ac
	ld b, b                                          ; $44be: $40
	add hl, sp                                       ; $44bf: $39
	add d                                            ; $44c0: $82
	jr c, jr_08d_4515                                ; $44c1: $38 $52

	ld a, $3d                                        ; $44c3: $3e $3d
	ld b, l                                          ; $44c5: $45
	ld c, h                                          ; $44c6: $4c
	and b                                            ; $44c7: $a0
	ret                                              ; $44c8: $c9


	ldh a, [$71]                                     ; $44c9: $f0 $71
	jr c, jr_08d_4517                                ; $44cb: $38 $4a

	ld d, c                                          ; $44cd: $51
	ld c, h                                          ; $44ce: $4c
	and b                                            ; $44cf: $a0
	db $ec                                           ; $44d0: $ec
	reti                                             ; $44d1: $d9


	xor h                                            ; $44d2: $ac
	ldh a, [$71]                                     ; $44d3: $f0 $71
	inc a                                            ; $44d5: $3c
	dec sp                                           ; $44d6: $3b
	dec a                                            ; $44d7: $3d
	ld c, d                                          ; $44d8: $4a
	ld d, c                                          ; $44d9: $51
	ld c, h                                          ; $44da: $4c
	and b                                            ; $44db: $a0
	cpl                                              ; $44dc: $2f
	add sp, $15                                      ; $44dd: $e8 $15
	add hl, bc                                       ; $44df: $09
	ld c, e                                          ; $44e0: $4b
	inc [hl]                                         ; $44e1: $34
	xor $2d                                          ; $44e2: $ee $2d
	xor b                                            ; $44e4: $a8
	pop af                                           ; $44e5: $f1
	ld l, c                                          ; $44e6: $69
	ld a, a                                          ; $44e7: $7f
	ld c, d                                          ; $44e8: $4a
	ld a, $3d                                        ; $44e9: $3e $3d
	ld c, b                                          ; $44eb: $48
	and b                                            ; $44ec: $a0
	ld c, c                                          ; $44ed: $49
	ld d, a                                          ; $44ee: $57
	ld b, [hl]                                       ; $44ef: $46
	ld e, [hl]                                       ; $44f0: $5e
	sbc h                                            ; $44f1: $9c
	xor b                                            ; $44f2: $a8
	xor $08                                          ; $44f3: $ee $08
	ld c, d                                          ; $44f5: $4a

jr_08d_44f6:
	ld c, e                                          ; $44f6: $4b
	xor h                                            ; $44f7: $ac
	sub [hl]                                         ; $44f8: $96
	ld c, l                                          ; $44f9: $4d
	ld d, d                                          ; $44fa: $52
	ld a, c                                          ; $44fb: $79
	ld b, c                                          ; $44fc: $41
	ld c, h                                          ; $44fd: $4c
	and b                                            ; $44fe: $a0
	or [hl]                                          ; $44ff: $b6
	xor b                                            ; $4500: $a8
	xor $08                                          ; $4501: $ee $08
	ld c, d                                          ; $4503: $4a
	ld c, e                                          ; $4504: $4b
	xor h                                            ; $4505: $ac
	sub [hl]                                         ; $4506: $96

jr_08d_4507:
	ld c, l                                          ; $4507: $4d
	ld d, d                                          ; $4508: $52
	ld a, c                                          ; $4509: $79
	ld b, c                                          ; $450a: $41
	inc a                                            ; $450b: $3c
	ld d, b                                          ; $450c: $50
	ld c, b                                          ; $450d: $48
	and b                                            ; $450e: $a0
	cpl                                              ; $450f: $2f
	add sp, $35                                      ; $4510: $e8 $35
	and c                                            ; $4512: $a1
	rst JumpTable                                          ; $4513: $c7
	ld c, d                                          ; $4514: $4a

jr_08d_4515:
	ld d, c                                          ; $4515: $51
	inc a                                            ; $4516: $3c

jr_08d_4517:
	ld c, b                                          ; $4517: $48
	and c                                            ; $4518: $a1
	ld c, d                                          ; $4519: $4a
	ld c, a                                          ; $451a: $4f
	inc [hl]                                         ; $451b: $34
	ldh a, [$98]                                     ; $451c: $f0 $98
	ld b, a                                          ; $451e: $47
	db $ed                                           ; $451f: $ed
	ld b, e                                          ; $4520: $43
	xor h                                            ; $4521: $ac
	ldh a, [$71]                                     ; $4522: $f0 $71
	jr c, jr_08d_4575                                ; $4524: $38 $4f

	ld b, d                                          ; $4526: $42
	sbc l                                            ; $4527: $9d
	ld d, b                                          ; $4528: $50
	jr c, jr_08d_453e                                ; $4529: $38 $13

	ld b, [hl]                                       ; $452b: $46
	ld c, [hl]                                       ; $452c: $4e
	ld c, c                                          ; $452d: $49
	ld [hl], a                                       ; $452e: $77
	jr c, jr_08d_4583                                ; $452f: $38 $52

	ld d, c                                          ; $4531: $51
	ld e, l                                          ; $4532: $5d
	ld e, d                                          ; $4533: $5a
	ld c, b                                          ; $4534: $48
	and b                                            ; $4535: $a0
	ld d, h                                          ; $4536: $54
	inc [hl]                                         ; $4537: $34
	ldh a, [$71]                                     ; $4538: $f0 $71
	jr c, @+$51                                      ; $453a: $38 $4f

	ld b, d                                          ; $453c: $42
	ld d, e                                          ; $453d: $53

jr_08d_453e:
	ld b, [hl]                                       ; $453e: $46
	dec sp                                           ; $453f: $3b
	ccf                                              ; $4540: $3f
	ld c, a                                          ; $4541: $4f
	xor h                                            ; $4542: $ac
	ldh a, [$34]                                     ; $4543: $f0 $34
	ld b, a                                          ; $4545: $47
	ld h, h                                          ; $4546: $64
	inc a                                            ; $4547: $3c
	ld a, $55                                        ; $4548: $3e $55
	ld a, [hl-]                                      ; $454a: $3a
	jr c, jr_08d_4596                                ; $454b: $38 $49

	inc de                                           ; $454d: $13
	ld [hl], a                                       ; $454e: $77
	jr c, jr_08d_45a3                                ; $454f: $38 $52

	ld d, c                                          ; $4551: $51
	ld e, l                                          ; $4552: $5d
	ld e, d                                          ; $4553: $5a
	ld c, b                                          ; $4554: $48
	and b                                            ; $4555: $a0
	cpl                                              ; $4556: $2f
	db $ec                                           ; $4557: $ec
	rst SubAFromDE                                          ; $4558: $df
	ccf                                              ; $4559: $3f
	inc [hl]                                         ; $455a: $34
	di                                               ; $455b: $f3
	ld [bc], a                                       ; $455c: $02
	pop af                                           ; $455d: $f1
	ld [$22ec], a                                    ; $455e: $ea $ec $22
	add hl, bc                                       ; $4561: $09
	ld b, b                                          ; $4562: $40
	ld b, d                                          ; $4563: $42
	ldh a, [rOCPS]                                   ; $4564: $f0 $6a
	ld d, a                                          ; $4566: $57
	ld c, d                                          ; $4567: $4a
	ld d, c                                          ; $4568: $51
	inc a                                            ; $4569: $3c
	ld d, b                                          ; $456a: $50
	ld c, b                                          ; $456b: $48
	and b                                            ; $456c: $a0
	or [hl]                                          ; $456d: $b6
	xor b                                            ; $456e: $a8
	ldh a, [c]                                       ; $456f: $f2
	ld a, c                                          ; $4570: $79
	inc a                                            ; $4571: $3c
	ld d, b                                          ; $4572: $50
	ld b, b                                          ; $4573: $40
	add hl, sp                                       ; $4574: $39

jr_08d_4575:
	add d                                            ; $4575: $82
	ld h, e                                          ; $4576: $63
	ld c, l                                          ; $4577: $4d
	ccf                                              ; $4578: $3f
	ld d, d                                          ; $4579: $52
	ld d, c                                          ; $457a: $51
	and b                                            ; $457b: $a0
	ld b, b                                          ; $457c: $40
	add hl, sp                                       ; $457d: $39
	add d                                            ; $457e: $82
	ld h, e                                          ; $457f: $63
	ld c, l                                          ; $4580: $4d
	ccf                                              ; $4581: $3f
	ld d, d                                          ; $4582: $52

jr_08d_4583:
	ld d, c                                          ; $4583: $51
	and b                                            ; $4584: $a0
	ldh a, [$71]                                     ; $4585: $f0 $71
	ld d, l                                          ; $4587: $55
	ccf                                              ; $4588: $3f
	inc [hl]                                         ; $4589: $34
	ldh a, [$08]                                     ; $458a: $f0 $08
	ld c, c                                          ; $458c: $49
	ld b, c                                          ; $458d: $41
	ld e, d                                          ; $458e: $5a
	inc de                                           ; $458f: $13
	ldh a, [rAUD3LEVEL]                              ; $4590: $f0 $1c
	ld h, d                                          ; $4592: $62
	ldh a, [c]                                       ; $4593: $f2
	push de                                          ; $4594: $d5
	ld e, e                                          ; $4595: $5b

jr_08d_4596:
	ccf                                              ; $4596: $3f
	ld d, d                                          ; $4597: $52
	ld a, $3d                                        ; $4598: $3e $3d
	and b                                            ; $459a: $a0
	cpl                                              ; $459b: $2f
	db $ec                                           ; $459c: $ec
	inc sp                                           ; $459d: $33
	ld d, e                                          ; $459e: $53
	db $ed                                           ; $459f: $ed
	ld c, c                                          ; $45a0: $49
	ld b, h                                          ; $45a1: $44
	dec sp                                           ; $45a2: $3b

jr_08d_45a3:
	dec a                                            ; $45a3: $3d
	ld b, d                                          ; $45a4: $42
	ld b, a                                          ; $45a5: $47
	ld c, b                                          ; $45a6: $48
	add hl, bc                                       ; $45a7: $09
	ld h, e                                          ; $45a8: $63
	inc [hl]                                         ; $45a9: $34
	ld l, a                                          ; $45aa: $6f
	inc [hl]                                         ; $45ab: $34
	di                                               ; $45ac: $f3
	inc l                                            ; $45ad: $2c
	di                                               ; $45ae: $f3
	dec l                                            ; $45af: $2d
	ld c, c                                          ; $45b0: $49
	inc a                                            ; $45b1: $3c
	inc de                                           ; $45b2: $13
	xor $05                                          ; $45b3: $ee $05
	ld a, [hl-]                                      ; $45b5: $3a
	ld b, c                                          ; $45b6: $41
	ld c, d                                          ; $45b7: $4a
	ld d, c                                          ; $45b8: $51
	ld c, b                                          ; $45b9: $48
	and b                                            ; $45ba: $a0
	db $ed                                           ; $45bb: $ed
	ld c, c                                          ; $45bc: $49
	ld c, d                                          ; $45bd: $4a
	ld c, a                                          ; $45be: $4f
	inc [hl]                                         ; $45bf: $34
	ldh a, [$71]                                     ; $45c0: $f0 $71
	jr c, jr_08d_4613                                ; $45c2: $38 $4f

	ld b, d                                          ; $45c4: $42
	ld c, e                                          ; $45c5: $4b
	inc de                                           ; $45c6: $13
	ldh a, [$71]                                     ; $45c7: $f0 $71
	jr c, @+$4c                                      ; $45c9: $38 $4a

	ld d, c                                          ; $45cb: $51
	inc a                                            ; $45cc: $3c
	ld d, b                                          ; $45cd: $50
	ld c, b                                          ; $45ce: $48
	and b                                            ; $45cf: $a0
	ld c, d                                          ; $45d0: $4a
	ld c, a                                          ; $45d1: $4f
	inc [hl]                                         ; $45d2: $34
	ldh a, [$71]                                     ; $45d3: $f0 $71
	jr c, jr_08d_4621                                ; $45d5: $38 $4a

	ld d, c                                          ; $45d7: $51
	inc a                                            ; $45d8: $3c
	ld d, b                                          ; $45d9: $50
	ld c, b                                          ; $45da: $48
	and b                                            ; $45db: $a0
	cpl                                              ; $45dc: $2f
	ldh a, [rAUD3LEVEL]                              ; $45dd: $f0 $1c
	ld h, d                                          ; $45df: $62
	ldh a, [c]                                       ; $45e0: $f2
	push de                                          ; $45e1: $d5
	ld e, e                                          ; $45e2: $5b
	ccf                                              ; $45e3: $3f
	dec a                                            ; $45e4: $3d
	ld [hl], $db                                     ; $45e5: $36 $db
	ld a, [hl-]                                      ; $45e7: $3a
	jr c, @+$3c                                      ; $45e8: $38 $3a

	add hl, bc                                       ; $45ea: $09
	ld b, b                                          ; $45eb: $40
	inc [hl]                                         ; $45ec: $34
	ld b, b                                          ; $45ed: $40
	ld b, c                                          ; $45ee: $41
	ld a, [hl-]                                      ; $45ef: $3a
	sbc d                                            ; $45f0: $9a
	inc de                                           ; $45f1: $13
	add d                                            ; $45f2: $82
	ld h, e                                          ; $45f3: $63
	ld c, l                                          ; $45f4: $4d
	ccf                                              ; $45f5: $3f
	ld c, a                                          ; $45f6: $4f
	ld c, b                                          ; $45f7: $48
	and b                                            ; $45f8: $a0
	ld b, b                                          ; $45f9: $40
	ld b, c                                          ; $45fa: $41
	ld a, [hl-]                                      ; $45fb: $3a
	ld b, a                                          ; $45fc: $47
	xor h                                            ; $45fd: $ac
	ldh a, [$71]                                     ; $45fe: $f0 $71
	ld d, e                                          ; $4600: $53
	ld d, b                                          ; $4601: $50
	ld a, c                                          ; $4602: $79
	dec a                                            ; $4603: $3d
	jr c, @+$43                                      ; $4604: $38 $41

	ld c, d                                          ; $4606: $4a
	ld d, c                                          ; $4607: $51
	inc a                                            ; $4608: $3c
	and c                                            ; $4609: $a1
	db $eb                                           ; $460a: $eb
	ld d, e                                          ; $460b: $53
	ld c, c                                          ; $460c: $49
	add d                                            ; $460d: $82
	ld h, e                                          ; $460e: $63
	ld c, l                                          ; $460f: $4d
	ccf                                              ; $4610: $3f
	ld c, a                                          ; $4611: $4f
	xor h                                            ; $4612: $ac

jr_08d_4613:
	pop af                                           ; $4613: $f1
	sbc $57                                          ; $4614: $de $57
	ld d, d                                          ; $4616: $52
	ld d, c                                          ; $4617: $51
	and b                                            ; $4618: $a0
	cpl                                              ; $4619: $2f
	halt                                             ; $461a: $76
	ld c, a                                          ; $461b: $4f
	inc [hl]                                         ; $461c: $34
	halt                                             ; $461d: $76
	ld c, a                                          ; $461e: $4f

jr_08d_461f:
	add hl, bc                                       ; $461f: $09
	ld b, b                                          ; $4620: $40

jr_08d_4621:
	inc [hl]                                         ; $4621: $34
	ld [$a91e], a                                    ; $4622: $ea $1e $a9
	ld b, b                                          ; $4625: $40
	ld c, l                                          ; $4626: $4d
	ld a, [hl-]                                      ; $4627: $3a
	ld d, b                                          ; $4628: $50
	inc [hl]                                         ; $4629: $34
	sub [hl]                                         ; $462a: $96
	ld d, b                                          ; $462b: $50
	ld a, [hl-]                                      ; $462c: $3a
	jr c, jr_08d_461f                                ; $462d: $38 $f0

	ld [$5339], sp                                   ; $462f: $08 $39 $53
	inc de                                           ; $4632: $13
	ld b, l                                          ; $4633: $45
	inc a                                            ; $4634: $3c
	dec sp                                           ; $4635: $3b
	dec a                                            ; $4636: $3d
	ld c, d                                          ; $4637: $4a
	ld d, c                                          ; $4638: $51
	ld c, h                                          ; $4639: $4c
	and b                                            ; $463a: $a0
	jr c, jr_08d_4671                                ; $463b: $38 $34

	ldh a, [$c0]                                     ; $463d: $f0 $c0
	ldh a, [$f0]                                     ; $463f: $f0 $f0
	ld c, c                                          ; $4641: $49
	inc de                                           ; $4642: $13
	di                                               ; $4643: $f3
	ld [bc], a                                       ; $4644: $02
	pop af                                           ; $4645: $f1
	ld [$3b44], a                                    ; $4646: $ea $44 $3b
	dec a                                            ; $4649: $3d
	ld b, c                                          ; $464a: $41
	ld c, d                                          ; $464b: $4a
	ld d, c                                          ; $464c: $51
	ld c, h                                          ; $464d: $4c
	ld c, b                                          ; $464e: $48
	and b                                            ; $464f: $a0
	ld c, a                                          ; $4650: $4f
	add hl, sp                                       ; $4651: $39
	ldh a, [rHDMA4]                                  ; $4652: $f0 $54
	ld a, $34                                        ; $4654: $3e $34
	ldh a, [c]                                       ; $4656: $f2
	sub h                                            ; $4657: $94
	ld a, a                                          ; $4658: $7f
	ld d, e                                          ; $4659: $53
	ld b, [hl]                                       ; $465a: $46
	ld c, [hl]                                       ; $465b: $4e
	ld c, c                                          ; $465c: $49
	inc de                                           ; $465d: $13
	ld [hl], a                                       ; $465e: $77
	dec sp                                           ; $465f: $3b
	dec a                                            ; $4660: $3d
	ld b, c                                          ; $4661: $41
	ld c, d                                          ; $4662: $4a
	ld d, c                                          ; $4663: $51
	ld e, l                                          ; $4664: $5d
	ld e, d                                          ; $4665: $5a
	ld c, b                                          ; $4666: $48
	and b                                            ; $4667: $a0
	ld l, a                                          ; $4668: $6f
	inc [hl]                                         ; $4669: $34
	add a                                            ; $466a: $87
	adc e                                            ; $466b: $8b
	ld e, h                                          ; $466c: $5c
	ld a, [hl-]                                      ; $466d: $3a
	ld b, c                                          ; $466e: $41
	ld c, d                                          ; $466f: $4a
	ld d, c                                          ; $4670: $51

jr_08d_4671:
	xor b                                            ; $4671: $a8
	jp hl                                            ; $4672: $e9


	ld b, h                                          ; $4673: $44
	and b                                            ; $4674: $a0
	ldh a, [$57]                                     ; $4675: $f0 $57
	ldh a, [$ae]                                     ; $4677: $f0 $ae
	ld a, [hl-]                                      ; $4679: $3a
	pop af                                           ; $467a: $f1
	db $eb                                           ; $467b: $eb
	ld [hl], c                                       ; $467c: $71
	ld c, d                                          ; $467d: $4a
	ld a, $3d                                        ; $467e: $3e $3d
	ld c, h                                          ; $4680: $4c
	and b                                            ; $4681: $a0
	cpl                                              ; $4682: $2f
	db $ec                                           ; $4683: $ec
	rst SubAFromDE                                          ; $4684: $df
	ld b, d                                          ; $4685: $42
	ldh a, [$d2]                                     ; $4686: $f0 $d2
	ld h, d                                          ; $4688: $62
	ld [hl], d                                       ; $4689: $72
	ccf                                              ; $468a: $3f
	dec a                                            ; $468b: $3d
	inc a                                            ; $468c: $3c
	ld d, b                                          ; $468d: $50
	ld c, b                                          ; $468e: $48
	add hl, bc                                       ; $468f: $09
	ld b, b                                          ; $4690: $40
	inc [hl]                                         ; $4691: $34
	inc hl                                           ; $4692: $23
	ld b, b                                          ; $4693: $40
	ld b, c                                          ; $4694: $41
	ld a, [hl-]                                      ; $4695: $3a
	inc [hl]                                         ; $4696: $34
	inc hl                                           ; $4697: $23
	inc de                                           ; $4698: $13
	db $eb                                           ; $4699: $eb
	ld c, a                                          ; $469a: $4f
	ld c, b                                          ; $469b: $48
	and b                                            ; $469c: $a0
	ldh a, [$29]                                     ; $469d: $f0 $29
	ld a, $38                                        ; $469f: $3e $38
	ld c, d                                          ; $46a1: $4a
	ld d, c                                          ; $46a2: $51
	ld e, l                                          ; $46a3: $5d
	ld e, d                                          ; $46a4: $5a
	xor l                                            ; $46a5: $ad
	db $eb                                           ; $46a6: $eb
	ld c, a                                          ; $46a7: $4f
	ld c, d                                          ; $46a8: $4a
	ld d, c                                          ; $46a9: $51
	ld c, h                                          ; $46aa: $4c
	ld c, b                                          ; $46ab: $48
	and b                                            ; $46ac: $a0
	ld l, a                                          ; $46ad: $6f
	inc [hl]                                         ; $46ae: $34
	ldh a, [$8a]                                     ; $46af: $f0 $8a
	ldh a, [rHDMA2]                                  ; $46b1: $f0 $52
	ld d, l                                          ; $46b3: $55
	ld a, [hl-]                                      ; $46b4: $3a
	jr c, jr_08d_46f3                                ; $46b5: $38 $3c

	ld d, b                                          ; $46b7: $50
	inc de                                           ; $46b8: $13
	db $eb                                           ; $46b9: $eb
	ld c, a                                          ; $46ba: $4f
	ld c, d                                          ; $46bb: $4a
	ld d, c                                          ; $46bc: $51
	ld c, b                                          ; $46bd: $48
	and b                                            ; $46be: $a0
	cpl                                              ; $46bf: $2f
	jp hl                                            ; $46c0: $e9


	ret nz                                           ; $46c1: $c0

	add hl, bc                                       ; $46c2: $09
	ld l, a                                          ; $46c3: $6f
	ld c, c                                          ; $46c4: $49
	xor $06                                          ; $46c5: $ee $06
	ld e, e                                          ; $46c7: $5b
	ld d, [hl]                                       ; $46c8: $56
	xor h                                            ; $46c9: $ac
	db $eb                                           ; $46ca: $eb
	ld d, e                                          ; $46cb: $53
	ld c, d                                          ; $46cc: $4a
	ld d, c                                          ; $46cd: $51
	inc a                                            ; $46ce: $3c
	and c                                            ; $46cf: $a1
	db $ec                                           ; $46d0: $ec
	add hl, bc                                       ; $46d1: $09
	jr c, jr_08d_470c                                ; $46d2: $38 $38

	di                                               ; $46d4: $f3
	ld h, l                                          ; $46d5: $65
	pop af                                           ; $46d6: $f1
	ld l, [hl]                                       ; $46d7: $6e
	ld d, e                                          ; $46d8: $53
	inc de                                           ; $46d9: $13
	ld [hl], d                                       ; $46da: $72
	ld c, l                                          ; $46db: $4d
	dec a                                            ; $46dc: $3d
	ld b, d                                          ; $46dd: $42
	ld b, a                                          ; $46de: $47
	xor h                                            ; $46df: $ac
	pop af                                           ; $46e0: $f1
	push bc                                          ; $46e1: $c5
	di                                               ; $46e2: $f3
	ld e, d                                          ; $46e3: $5a
	ldh a, [c]                                       ; $46e4: $f2
	ret nc                                           ; $46e5: $d0

	ldh a, [$64]                                     ; $46e6: $f0 $64
	jr c, jr_08d_4724                                ; $46e8: $38 $3a

	ld b, c                                          ; $46ea: $41
	ld c, d                                          ; $46eb: $4a
	ld d, c                                          ; $46ec: $51
	inc a                                            ; $46ed: $3c
	and c                                            ; $46ee: $a1
	db $eb                                           ; $46ef: $eb
	ld d, e                                          ; $46f0: $53
	ld l, h                                          ; $46f1: $6c
	dec a                                            ; $46f2: $3d

jr_08d_46f3:
	jr c, jr_08d_473f                                ; $46f3: $38 $4a

	ld d, c                                          ; $46f5: $51
	ld c, h                                          ; $46f6: $4c
	and b                                            ; $46f7: $a0
	cpl                                              ; $46f8: $2f
	add sp, -$6c                                     ; $46f9: $e8 $94
	add hl, bc                                       ; $46fb: $09
	db $ec                                           ; $46fc: $ec
	cp c                                             ; $46fd: $b9
	xor l                                            ; $46fe: $ad
	add e                                            ; $46ff: $83
	ldh a, [rP1]                                     ; $4700: $f0 $00
	ldh a, [$03]                                     ; $4702: $f0 $03
	ld b, d                                          ; $4704: $42
	ld b, [hl]                                       ; $4705: $46
	ld c, [hl]                                       ; $4706: $4e
	ldh a, [rLCDC]                                   ; $4707: $f0 $40
	ld d, a                                          ; $4709: $57
	ldh a, [$2c]                                     ; $470a: $f0 $2c

jr_08d_470c:
	inc de                                           ; $470c: $13
	ld e, e                                          ; $470d: $5b
	ld d, [hl]                                       ; $470e: $56
	ld a, [hl-]                                      ; $470f: $3a
	inc a                                            ; $4710: $3c
	dec sp                                           ; $4711: $3b
	dec a                                            ; $4712: $3d
	inc a                                            ; $4713: $3c
	ld d, b                                          ; $4714: $50
	ld c, b                                          ; $4715: $48
	and b                                            ; $4716: $a0
	db $ec                                           ; $4717: $ec
	reti                                             ; $4718: $d9


	xor h                                            ; $4719: $ac
	ld b, b                                          ; $471a: $40
	add hl, sp                                       ; $471b: $39
	ld [hl], a                                       ; $471c: $77
	jr c, jr_08d_4771                                ; $471d: $38 $52

	ld a, $3d                                        ; $471f: $3e $3d
	and c                                            ; $4721: $a1
	db $eb                                           ; $4722: $eb
	ld d, c                                          ; $4723: $51

jr_08d_4724:
	xor h                                            ; $4724: $ac
	adc c                                            ; $4725: $89
	sbc a                                            ; $4726: $9f
	ld d, e                                          ; $4727: $53
	ld [hl], d                                       ; $4728: $72
	ld e, [hl]                                       ; $4729: $5e
	dec a                                            ; $472a: $3d
	ld b, c                                          ; $472b: $41
	ld c, d                                          ; $472c: $4a
	ld d, c                                          ; $472d: $51
	ld b, l                                          ; $472e: $45
	and b                                            ; $472f: $a0
	ld [$34e8], a                                    ; $4730: $ea $e8 $34
	ldh a, [c]                                       ; $4733: $f2
	ld l, d                                          ; $4734: $6a
	ld c, l                                          ; $4735: $4d
	ld c, [hl]                                       ; $4736: $4e
	inc de                                           ; $4737: $13
	ld b, d                                          ; $4738: $42
	ld d, e                                          ; $4739: $53
	inc [hl]                                         ; $473a: $34
	ldh a, [$71]                                     ; $473b: $f0 $71
	ld d, l                                          ; $473d: $55
	ld b, [hl]                                       ; $473e: $46

jr_08d_473f:
	ld d, a                                          ; $473f: $57
	ld d, d                                          ; $4740: $52
	ld a, c                                          ; $4741: $79
	ld b, c                                          ; $4742: $41
	ld c, d                                          ; $4743: $4a
	ld a, $3d                                        ; $4744: $3e $3d
	inc a                                            ; $4746: $3c
	and c                                            ; $4747: $a1
	cpl                                              ; $4748: $2f
	db $ec                                           ; $4749: $ec
	rst SubAFromDE                                          ; $474a: $df
	ld c, c                                          ; $474b: $49
	xor $06                                          ; $474c: $ee $06
	ld b, h                                          ; $474e: $44
	dec sp                                           ; $474f: $3b
	dec a                                            ; $4750: $3d
	inc a                                            ; $4751: $3c
	ld d, b                                          ; $4752: $50
	ld c, b                                          ; $4753: $48
	add hl, bc                                       ; $4754: $09
	adc b                                            ; $4755: $88
	sub c                                            ; $4756: $91
	xor c                                            ; $4757: $a9
	ld h, e                                          ; $4758: $63
	inc [hl]                                         ; $4759: $34
	ld l, a                                          ; $475a: $6f
	ld c, a                                          ; $475b: $4f
	ld b, b                                          ; $475c: $40
	add hl, sp                                       ; $475d: $39
	ld c, b                                          ; $475e: $48
	and b                                            ; $475f: $a0
	cpl                                              ; $4760: $2f
	db $ed                                           ; $4761: $ed
	ld e, [hl]                                       ; $4762: $5e
	ld a, a                                          ; $4763: $7f
	ldh a, [$9a]                                     ; $4764: $f0 $9a
	inc a                                            ; $4766: $3c
	ld a, [hl-]                                      ; $4767: $3a
	inc a                                            ; $4768: $3c
	dec sp                                           ; $4769: $3b
	dec a                                            ; $476a: $3d
	ld b, l                                          ; $476b: $45
	add hl, bc                                       ; $476c: $09
	ret                                              ; $476d: $c9


	xor h                                            ; $476e: $ac
	db $ed                                           ; $476f: $ed

jr_08d_4770:
	xor e                                            ; $4770: $ab

jr_08d_4771:
	ld d, c                                          ; $4771: $51
	ldh a, [$cb]                                     ; $4772: $f0 $cb
	ld d, d                                          ; $4774: $52
	ld a, c                                          ; $4775: $79
	ld b, c                                          ; $4776: $41
	inc a                                            ; $4777: $3c
	and c                                            ; $4778: $a1
	cpl                                              ; $4779: $2f
	db $ed                                           ; $477a: $ed
	ld [hl], d                                       ; $477b: $72
	ldh a, [$71]                                     ; $477c: $f0 $71
	jr c, jr_08d_4770                                ; $477e: $38 $f0

	ld b, b                                          ; $4780: $40
	ld d, a                                          ; $4781: $57
	ldh a, [$2c]                                     ; $4782: $f0 $2c
	inc a                                            ; $4784: $3c
	ld c, a                                          ; $4785: $4f
	ld c, h                                          ; $4786: $4c
	add hl, bc                                       ; $4787: $09
	pop af                                           ; $4788: $f1
	add c                                            ; $4789: $81
	ld h, c                                          ; $478a: $61
	dec a                                            ; $478b: $3d
	ld d, b                                          ; $478c: $50
	db $eb                                           ; $478d: $eb
	ld e, c                                          ; $478e: $59
	inc a                                            ; $478f: $3c
	ld c, c                                          ; $4790: $49
	inc de                                           ; $4791: $13
	ld [hl], a                                       ; $4792: $77
	dec sp                                           ; $4793: $3b
	ld h, c                                          ; $4794: $61
	ld d, [hl]                                       ; $4795: $56
	jr c, jr_08d_47ea                                ; $4796: $38 $52

	ld a, $3d                                        ; $4798: $3e $3d
	and b                                            ; $479a: $a0
	db $eb                                           ; $479b: $eb
	db $f4                                           ; $479c: $f4
	xor h                                            ; $479d: $ac
	ldh a, [rLCDC]                                   ; $479e: $f0 $40
	ld d, b                                          ; $47a0: $50
	ld a, [hl-]                                      ; $47a1: $3a
	ld e, l                                          ; $47a2: $5d
	ld c, l                                          ; $47a3: $4d
	ld a, e                                          ; $47a4: $7b
	inc de                                           ; $47a5: $13
	xor $05                                          ; $47a6: $ee $05
	ld c, d                                          ; $47a8: $4a
	ld d, c                                          ; $47a9: $51
	inc a                                            ; $47aa: $3c
	ld c, b                                          ; $47ab: $48
	and b                                            ; $47ac: $a0
	cpl                                              ; $47ad: $2f
	pop af                                           ; $47ae: $f1
	ld a, [de]                                       ; $47af: $1a
	pop af                                           ; $47b0: $f1
	inc c                                            ; $47b1: $0c
	ldh a, [rLCDC]                                   ; $47b2: $f0 $40
	ld c, [hl]                                       ; $47b4: $4e
	ld b, d                                          ; $47b5: $42
	add hl, bc                                       ; $47b6: $09
	cp [hl]                                          ; $47b7: $be
	xor b                                            ; $47b8: $a8
	ld c, d                                          ; $47b9: $4a
	ld c, e                                          ; $47ba: $4b
	xor h                                            ; $47bb: $ac
	ld l, a                                          ; $47bc: $6f
	ld c, a                                          ; $47bd: $4f
	ldh a, [$f4]                                     ; $47be: $f0 $f4
	di                                               ; $47c0: $f3
	ld c, l                                          ; $47c1: $4d
	ld h, d                                          ; $47c2: $62
	ldh a, [$ec]                                     ; $47c3: $f0 $ec
	ld [hl], c                                       ; $47c5: $71
	ld d, d                                          ; $47c6: $52
	ld d, c                                          ; $47c7: $51
	and b                                            ; $47c8: $a0
	cpl                                              ; $47c9: $2f
	db $ec                                           ; $47ca: $ec
	reti                                             ; $47cb: $d9


	pop af                                           ; $47cc: $f1
	jr nc, @+$73                                     ; $47cd: $30 $71

	ld b, l                                          ; $47cf: $45
	add hl, sp                                       ; $47d0: $39
	add hl, bc                                       ; $47d1: $09
	db $ec                                           ; $47d2: $ec
	cp c                                             ; $47d3: $b9
	xor l                                            ; $47d4: $ad
	jp z, $f0ac                                      ; $47d5: $ca $ac $f0

	add sp, $57                                      ; $47d8: $e8 $57
	ld d, d                                          ; $47da: $52
	ld a, $66                                        ; $47db: $3e $66
	add hl, sp                                       ; $47dd: $39
	and b                                            ; $47de: $a0
	sbc [hl]                                         ; $47df: $9e
	ld b, a                                          ; $47e0: $47
	db $ed                                           ; $47e1: $ed
	ld e, $3b                                        ; $47e2: $1e $3b
	dec a                                            ; $47e4: $3d
	ld d, h                                          ; $47e5: $54
	ld c, c                                          ; $47e6: $49
	ld d, e                                          ; $47e7: $53
	inc de                                           ; $47e8: $13
	ld b, [hl]                                       ; $47e9: $46

jr_08d_47ea:
	ld d, a                                          ; $47ea: $57
	ld d, d                                          ; $47eb: $52
	ld a, $3f                                        ; $47ec: $3e $3f
	ld c, b                                          ; $47ee: $48
	and b                                            ; $47ef: $a0
	cpl                                              ; $47f0: $2f
	ld b, e                                          ; $47f1: $43
	ld b, b                                          ; $47f2: $40
	ld c, l                                          ; $47f3: $4d
	ld c, d                                          ; $47f4: $4a
	and c                                            ; $47f5: $a1
	ld l, a                                          ; $47f6: $6f
	inc [hl]                                         ; $47f7: $34
	ld c, a                                          ; $47f8: $4f
	add hl, sp                                       ; $47f9: $39
	ld b, [hl]                                       ; $47fa: $46
	ld b, c                                          ; $47fb: $41
	ld a, [hl-]                                      ; $47fc: $3a
	ldh a, [rAUD3LEVEL]                              ; $47fd: $f0 $1c
	ld b, a                                          ; $47ff: $47
	ld c, e                                          ; $4800: $4b
	inc de                                           ; $4801: $13
	ldh a, [rHDMA3]                                  ; $4802: $f0 $53
	jr c, jr_08d_4843                                ; $4804: $38 $3d

	ld d, l                                          ; $4806: $55
	ld a, [hl-]                                      ; $4807: $3a
	jr c, @+$44                                      ; $4808: $38 $42

	ld c, d                                          ; $480a: $4a
	xor l                                            ; $480b: $ad
	jp hl                                            ; $480c: $e9


	ld a, h                                          ; $480d: $7c
	and b                                            ; $480e: $a0
	cpl                                              ; $480f: $2f
	ld b, e                                          ; $4810: $43
	ld b, b                                          ; $4811: $40
	inc [hl]                                         ; $4812: $34
	ld b, b                                          ; $4813: $40
	ld c, l                                          ; $4814: $4d
	ld e, e                                          ; $4815: $5b
	ld d, [hl]                                       ; $4816: $56
	xor h                                            ; $4817: $ac
	pop af                                           ; $4818: $f1
	jr nc, jr_08d_488c                               ; $4819: $30 $71

	ld b, l                                          ; $481b: $45
	add hl, sp                                       ; $481c: $39
	and b                                            ; $481d: $a0
	ld l, a                                          ; $481e: $6f
	inc [hl]                                         ; $481f: $34
	ld d, h                                          ; $4820: $54
	add hl, sp                                       ; $4821: $39
	jr c, @+$3b                                      ; $4822: $38 $39

	ld b, d                                          ; $4824: $42
	ld c, e                                          ; $4825: $4b
	inc de                                           ; $4826: $13
	ld c, c                                          ; $4827: $49
	ccf                                              ; $4828: $3f
	ld c, a                                          ; $4829: $4f
	db $f4                                           ; $482a: $f4
	ld [$505e], sp                                   ; $482b: $08 $5e $50
	ld c, l                                          ; $482e: $4d
	ld b, b                                          ; $482f: $40
	add hl, sp                                       ; $4830: $39
	ld b, a                                          ; $4831: $47
	ld a, [hl-]                                      ; $4832: $3a
	jr c, jr_08d_4877                                ; $4833: $38 $42

	ld c, d                                          ; $4835: $4a
	xor l                                            ; $4836: $ad
	jp hl                                            ; $4837: $e9


	ld a, h                                          ; $4838: $7c
	and b                                            ; $4839: $a0
	cpl                                              ; $483a: $2f
	ld b, e                                          ; $483b: $43
	add e                                            ; $483c: $83
	inc [hl]                                         ; $483d: $34
	add e                                            ; $483e: $83
	ldh a, [rP1]                                     ; $483f: $f0 $00
	ldh a, [$03]                                     ; $4841: $f0 $03

jr_08d_4843:
	ld b, [hl]                                       ; $4843: $46
	dec sp                                           ; $4844: $3b
	dec a                                            ; $4845: $3d
	ld c, h                                          ; $4846: $4c
	xor b                                            ; $4847: $a8
	db $ec                                           ; $4848: $ec
	rst SubAFromDE                                          ; $4849: $df
	and b                                            ; $484a: $a0
	xor $10                                          ; $484b: $ee $10
	and b                                            ; $484d: $a0
	cpl                                              ; $484e: $2f
	ld b, e                                          ; $484f: $43
	db $ec                                           ; $4850: $ec
	rst SubAFromDE                                          ; $4851: $df
	xor b                                            ; $4852: $a8
	db $eb                                           ; $4853: $eb
	rst FarCall                                          ; $4854: $f7
	and c                                            ; $4855: $a1
	cpl                                              ; $4856: $2f
	ld b, e                                          ; $4857: $43
	db $ec                                           ; $4858: $ec
	rst SubAFromDE                                          ; $4859: $df
	inc [hl]                                         ; $485a: $34
	add a                                            ; $485b: $87
	ldh a, [$5b]                                     ; $485c: $f0 $5b
	ldh a, [$5e]                                     ; $485e: $f0 $5e
	ld [hl], $17                                     ; $4860: $36 $17
	ld [hl-], a                                      ; $4862: $32
	ld l, [hl]                                       ; $4863: $6e
	ld a, e                                          ; $4864: $7b
	jr c, jr_08d_48a1                                ; $4865: $38 $3a

	xor b                                            ; $4867: $a8
	ldh a, [c]                                       ; $4868: $f2
	scf                                              ; $4869: $37
	ldh a, [rOBP1]                                   ; $486a: $f0 $49
	ld b, a                                          ; $486c: $47
	ld a, a                                          ; $486d: $7f
	ld h, d                                          ; $486e: $62
	ldh a, [rHDMA5]                                  ; $486f: $f0 $55
	dec sp                                           ; $4871: $3b
	ccf                                              ; $4872: $3f
	ld c, [hl]                                       ; $4873: $4e
	ld b, l                                          ; $4874: $45
	and e                                            ; $4875: $a3
	add hl, sp                                       ; $4876: $39

jr_08d_4877:
	inc [hl]                                         ; $4877: $34
	add hl, sp                                       ; $4878: $39
	xor $1f                                          ; $4879: $ee $1f
	and b                                            ; $487b: $a0
	cpl                                              ; $487c: $2f
	ld b, e                                          ; $487d: $43
	ld b, [hl]                                       ; $487e: $46
	dec sp                                           ; $487f: $3b
	inc [hl]                                         ; $4880: $34
	ld a, a                                          ; $4881: $7f
	ld d, e                                          ; $4882: $53
	add b                                            ; $4883: $80
	jr c, jr_08d_48c3                                ; $4884: $38 $3d

	xor c                                            ; $4886: $a9
	db $ec                                           ; $4887: $ec
	cp c                                             ; $4888: $b9
	and b                                            ; $4889: $a0
	add hl, sp                                       ; $488a: $39
	inc [hl]                                         ; $488b: $34

jr_08d_488c:
	xor $1f                                          ; $488c: $ee $1f
	ld c, b                                          ; $488e: $48
	inc [hl]                                         ; $488f: $34
	ld l, a                                          ; $4890: $6f
	xor l                                            ; $4891: $ad
	db $ec                                           ; $4892: $ec
	reti                                             ; $4893: $d9


	ld a, a                                          ; $4894: $7f
	pop af                                           ; $4895: $f1
	ld a, [de]                                       ; $4896: $1a
	ld a, $3f                                        ; $4897: $3e $3f
	inc de                                           ; $4899: $13
	db $ec                                           ; $489a: $ec
	push de                                          ; $489b: $d5
	ld b, c                                          ; $489c: $41
	ld c, d                                          ; $489d: $4a
	ld d, c                                          ; $489e: $51
	ld c, h                                          ; $489f: $4c
	and b                                            ; $48a0: $a0

jr_08d_48a1:
	cpl                                              ; $48a1: $2f
	ld b, e                                          ; $48a2: $43
	ld c, c                                          ; $48a3: $49
	ld d, a                                          ; $48a4: $57
	ld b, [hl]                                       ; $48a5: $46
	ld e, [hl]                                       ; $48a6: $5e
	sbc h                                            ; $48a7: $9c
	xor h                                            ; $48a8: $ac
	ldh a, [c]                                       ; $48a9: $f2
	ld c, a                                          ; $48aa: $4f
	ld d, a                                          ; $48ab: $57
	ld b, l                                          ; $48ac: $45
	add hl, sp                                       ; $48ad: $39
	ld b, l                                          ; $48ae: $45
	and b                                            ; $48af: $a0
	db $ec                                           ; $48b0: $ec
	jr nz, jr_08d_4922                               ; $48b1: $20 $6f

	xor h                                            ; $48b3: $ac
	ld a, a                                          ; $48b4: $7f
	ld d, e                                          ; $48b5: $53
	pop af                                           ; $48b6: $f1
	dec hl                                           ; $48b7: $2b
	ld d, d                                          ; $48b8: $52
	ld a, [hl-]                                      ; $48b9: $3a
	inc a                                            ; $48ba: $3c
	dec sp                                           ; $48bb: $3b
	dec a                                            ; $48bc: $3d
	ld b, c                                          ; $48bd: $41
	ld c, d                                          ; $48be: $4a
	ld d, c                                          ; $48bf: $51
	ld c, b                                          ; $48c0: $48
	and b                                            ; $48c1: $a0
	cpl                                              ; $48c2: $2f

jr_08d_48c3:
	ld b, e                                          ; $48c3: $43
	ld [hl], b                                       ; $48c4: $70
	ld [hl], c                                       ; $48c5: $71
	ld b, c                                          ; $48c6: $41
	ld b, l                                          ; $48c7: $45
	xor b                                            ; $48c8: $a8
	ld d, h                                          ; $48c9: $54
	ld b, c                                          ; $48ca: $41
	ld a, [hl-]                                      ; $48cb: $3a
	sbc d                                            ; $48cc: $9a
	ld b, a                                          ; $48cd: $47
	ld a, [hl-]                                      ; $48ce: $3a
	ld c, [hl]                                       ; $48cf: $4e
	ld c, c                                          ; $48d0: $49
	ld c, e                                          ; $48d1: $4b
	inc de                                           ; $48d2: $13
	ld [hl], a                                       ; $48d3: $77
	ld h, e                                          ; $48d4: $63
	ld a, [hl-]                                      ; $48d5: $3a
	inc a                                            ; $48d6: $3c
	dec sp                                           ; $48d7: $3b
	dec a                                            ; $48d8: $3d
	ld b, c                                          ; $48d9: $41
	ld b, h                                          ; $48da: $44
	ld b, l                                          ; $48db: $45
	and b                                            ; $48dc: $a0
	db $ed                                           ; $48dd: $ed
	ld e, c                                          ; $48de: $59
	inc [hl]                                         ; $48df: $34
	ld l, a                                          ; $48e0: $6f
	ld c, a                                          ; $48e1: $4f
	ld h, c                                          ; $48e2: $61
	ld d, [hl]                                       ; $48e3: $56
	ld b, c                                          ; $48e4: $41
	ld c, c                                          ; $48e5: $49
	inc de                                           ; $48e6: $13
	pop af                                           ; $48e7: $f1
	pop bc                                           ; $48e8: $c1
	ld c, l                                          ; $48e9: $4d
	ld a, e                                          ; $48ea: $7b
	ld b, l                                          ; $48eb: $45
	inc a                                            ; $48ec: $3c
	dec sp                                           ; $48ed: $3b
	dec a                                            ; $48ee: $3d
	ld b, c                                          ; $48ef: $41
	ld c, d                                          ; $48f0: $4a
	ld d, c                                          ; $48f1: $51
	inc a                                            ; $48f2: $3c
	ld d, b                                          ; $48f3: $50
	ld c, b                                          ; $48f4: $48
	and b                                            ; $48f5: $a0
	cpl                                              ; $48f6: $2f
	ld b, e                                          ; $48f7: $43
	ld [hl], b                                       ; $48f8: $70
	ld [hl], c                                       ; $48f9: $71
	ld b, c                                          ; $48fa: $41
	ld c, h                                          ; $48fb: $4c
	xor b                                            ; $48fc: $a8
	ld c, a                                          ; $48fd: $4f
	add hl, sp                                       ; $48fe: $39
	inc [hl]                                         ; $48ff: $34
	ldh a, [rAUD1LOW]                                ; $4900: $f0 $13
	ldh a, [$63]                                     ; $4902: $f0 $63
	ld c, e                                          ; $4904: $4b
	ld e, b                                          ; $4905: $58
	ld a, c                                          ; $4906: $79
	ld a, [hl-]                                      ; $4907: $3a
	jr c, @+$3e                                      ; $4908: $38 $3c

	ld d, b                                          ; $490a: $50
	inc [hl]                                         ; $490b: $34
	add hl, bc                                       ; $490c: $09
	ldh a, [$71]                                     ; $490d: $f0 $71
	ld d, l                                          ; $490f: $55
	ld a, [hl-]                                      ; $4910: $3a
	jr c, jr_08d_495c                                ; $4911: $38 $49

	inc de                                           ; $4913: $13
	db $eb                                           ; $4914: $eb
	add a                                            ; $4915: $87
	ld e, l                                          ; $4916: $5d
	ld e, d                                          ; $4917: $5a
	ld c, b                                          ; $4918: $48
	and b                                            ; $4919: $a0
	sbc $34                                          ; $491a: $de $34
	db $ec                                           ; $491c: $ec
	ld h, c                                          ; $491d: $61
	inc de                                           ; $491e: $13
	ld a, $3f                                        ; $491f: $3e $3f
	ld c, [hl]                                       ; $4921: $4e

jr_08d_4922:
	ld a, a                                          ; $4922: $7f
	ldh a, [rTAC]                                    ; $4923: $f0 $07
	ld c, d                                          ; $4925: $4a
	ld a, $3d                                        ; $4926: $3e $3d
	ld c, h                                          ; $4928: $4c
	and b                                            ; $4929: $a0
	cpl                                              ; $492a: $2f
	ld a, l                                          ; $492b: $7d
	ld h, l                                          ; $492c: $65
	ldh a, [c]                                       ; $492d: $f2
	adc l                                            ; $492e: $8d
	ld d, e                                          ; $492f: $53
	ld a, b                                          ; $4930: $78
	dec a                                            ; $4931: $3d
	ldh a, [rBGP]                                    ; $4932: $f0 $47
	inc [hl]                                         ; $4934: $34
	ldh a, [rKEY1]                                   ; $4935: $f0 $4d
	ldh a, [rKEY1]                                   ; $4937: $f0 $4d
	dec sp                                           ; $4939: $3b
	ld h, c                                          ; $493a: $61
	ld d, [hl]                                       ; $493b: $56
	dec sp                                           ; $493c: $3b
	dec a                                            ; $493d: $3d
	add hl, bc                                       ; $493e: $09
	ld d, c                                          ; $493f: $51
	ld [hl], b                                       ; $4940: $70
	jr c, @-$0e                                      ; $4941: $38 $f0

	ld b, b                                          ; $4943: $40
	ld d, a                                          ; $4944: $57
	ldh a, [$2c]                                     ; $4945: $f0 $2c
	ld c, d                                          ; $4947: $4a
	ld a, $3d                                        ; $4948: $3e $3d
	ld c, h                                          ; $494a: $4c
	xor b                                            ; $494b: $a8
	xor $06                                          ; $494c: $ee $06
	ld b, a                                          ; $494e: $47
	ldh a, [rLCDC]                                   ; $494f: $f0 $40
	ld c, l                                          ; $4951: $4d
	ccf                                              ; $4952: $3f
	inc de                                           ; $4953: $13
	ld b, l                                          ; $4954: $45
	inc a                                            ; $4955: $3c
	dec sp                                           ; $4956: $3b
	dec a                                            ; $4957: $3d
	ld c, d                                          ; $4958: $4a
	ld d, c                                          ; $4959: $51
	and b                                            ; $495a: $a0
	ld l, a                                          ; $495b: $6f

jr_08d_495c:
	ld c, a                                          ; $495c: $4f
	xor h                                            ; $495d: $ac
	ld a, a                                          ; $495e: $7f
	pop af                                           ; $495f: $f1
	ld a, [de]                                       ; $4960: $1a
	ld d, c                                          ; $4961: $51
	ld c, [hl]                                       ; $4962: $4e
	ld [hl], a                                       ; $4963: $77
	jr c, jr_08d_49b0                                ; $4964: $38 $4a

	ld a, $3d                                        ; $4966: $3e $3d
	ld b, l                                          ; $4968: $45
	and b                                            ; $4969: $a0
	ld l, a                                          ; $496a: $6f
	ld c, a                                          ; $496b: $4f
	inc [hl]                                         ; $496c: $34
	db $ec                                           ; $496d: $ec
	ld de, $523e                                     ; $496e: $11 $3e $52
	ld a, $3d                                        ; $4971: $3e $3d
	and b                                            ; $4973: $a0
	cpl                                              ; $4974: $2f
	add sp, -$10                                     ; $4975: $e8 $f0
	add hl, bc                                       ; $4977: $09
	rst JumpTable                                          ; $4978: $c7
	ld c, d                                          ; $4979: $4a
	ld d, c                                          ; $497a: $51
	inc a                                            ; $497b: $3c
	xor l                                            ; $497c: $ad
	adc e                                            ; $497d: $8b
	ld l, h                                          ; $497e: $6c
	db $ec                                           ; $497f: $ec
	ret c                                            ; $4980: $d8

	ld b, c                                          ; $4981: $41
	ld c, d                                          ; $4982: $4a
	ld d, c                                          ; $4983: $51
	ld c, h                                          ; $4984: $4c
	and b                                            ; $4985: $a0
	cp [hl]                                          ; $4986: $be
	xor c                                            ; $4987: $a9
	ld l, a                                          ; $4988: $6f
	ld c, e                                          ; $4989: $4b
	inc de                                           ; $498a: $13
	ld h, e                                          ; $498b: $63
	ld d, a                                          ; $498c: $57
	ld c, c                                          ; $498d: $49
	adc e                                            ; $498e: $8b
	ld e, h                                          ; $498f: $5c
	ld c, d                                          ; $4990: $4a
	ld d, c                                          ; $4991: $51
	ld e, l                                          ; $4992: $5d
	ld e, d                                          ; $4993: $5a
	ld c, b                                          ; $4994: $48
	and b                                            ; $4995: $a0
	ld l, a                                          ; $4996: $6f
	ld c, e                                          ; $4997: $4b
	inc [hl]                                         ; $4998: $34
	ld h, e                                          ; $4999: $63
	ld d, a                                          ; $499a: $57
	ld c, c                                          ; $499b: $49
	jr c, @+$3a                                      ; $499c: $38 $38

	ld c, c                                          ; $499e: $49
	inc de                                           ; $499f: $13
	ld [hl], a                                       ; $49a0: $77
	dec sp                                           ; $49a1: $3b
	dec a                                            ; $49a2: $3d
	ld b, c                                          ; $49a3: $41
	ld c, d                                          ; $49a4: $4a
	ld d, c                                          ; $49a5: $51
	ld e, l                                          ; $49a6: $5d
	ld e, d                                          ; $49a7: $5a
	ld c, b                                          ; $49a8: $48
	and b                                            ; $49a9: $a0
	cpl                                              ; $49aa: $2f
	ld [$09b3], a                                    ; $49ab: $ea $b3 $09
	ld l, a                                          ; $49ae: $6f
	ld c, a                                          ; $49af: $4f

jr_08d_49b0:
	inc [hl]                                         ; $49b0: $34
	ld b, b                                          ; $49b1: $40
	add hl, sp                                       ; $49b2: $39
	ld [hl], a                                       ; $49b3: $77
	jr c, jr_08d_4a08                                ; $49b4: $38 $52

	ld d, c                                          ; $49b6: $51
	and b                                            ; $49b7: $a0
	db $ec                                           ; $49b8: $ec
	cp c                                             ; $49b9: $b9
	ld c, d                                          ; $49ba: $4a
	ld d, c                                          ; $49bb: $51
	ld c, h                                          ; $49bc: $4c
	and b                                            ; $49bd: $a0
	pop af                                           ; $49be: $f1
	ld l, [hl]                                       ; $49bf: $6e
	ldh a, [$cf]                                     ; $49c0: $f0 $cf
	ld a, [hl-]                                      ; $49c2: $3a
	ld c, a                                          ; $49c3: $4f
	ld b, d                                          ; $49c4: $42
	ld d, e                                          ; $49c5: $53
	xor h                                            ; $49c6: $ac
	db $f4                                           ; $49c7: $f4
	ld a, a                                          ; $49c8: $7f
	pop af                                           ; $49c9: $f1
	ld c, h                                          ; $49ca: $4c
	ldh a, [$65]                                     ; $49cb: $f0 $65
	ldh a, [$ad]                                     ; $49cd: $f0 $ad
	ld c, d                                          ; $49cf: $4a
	ld e, h                                          ; $49d0: $5c
	ld c, [hl]                                       ; $49d1: $4e
	ld c, c                                          ; $49d2: $49
	inc de                                           ; $49d3: $13
	sub b                                            ; $49d4: $90
	ld a, $38                                        ; $49d5: $3e $38
	ld c, d                                          ; $49d7: $4a
	ld a, $66                                        ; $49d8: $3e $66
	add hl, sp                                       ; $49da: $39
	ld c, h                                          ; $49db: $4c
	and b                                            ; $49dc: $a0
	cpl                                              ; $49dd: $2f
	ld b, b                                          ; $49de: $40
	add hl, sp                                       ; $49df: $39
	ld [hl], a                                       ; $49e0: $77
	add hl, sp                                       ; $49e1: $39
	ld b, l                                          ; $49e2: $45
	add hl, bc                                       ; $49e3: $09
	sbc $34                                          ; $49e4: $de $34
	ld b, b                                          ; $49e6: $40
	add hl, sp                                       ; $49e7: $39
	ld a, [hl-]                                      ; $49e8: $3a
	dec sp                                           ; $49e9: $3b
	dec a                                            ; $49ea: $3d
	ld d, b                                          ; $49eb: $50
	inc de                                           ; $49ec: $13
	ld d, d                                          ; $49ed: $52
	dec a                                            ; $49ee: $3d
	xor $06                                          ; $49ef: $ee $06
	ld b, a                                          ; $49f1: $47
	ld a, b                                          ; $49f2: $78
	dec a                                            ; $49f3: $3d
	jr c, jr_08d_4a40                                ; $49f4: $38 $4a

	ld d, c                                          ; $49f6: $51
	ld c, b                                          ; $49f7: $48
	and b                                            ; $49f8: $a0
	sbc $ac                                          ; $49f9: $de $ac
	ld b, b                                          ; $49fb: $40
	add hl, sp                                       ; $49fc: $39
	ld a, [hl-]                                      ; $49fd: $3a
	ld c, [hl]                                       ; $49fe: $4e
	ld c, c                                          ; $49ff: $49
	jr c, jr_08d_4a3a                                ; $4a00: $38 $38

	ld c, d                                          ; $4a02: $4a
	ld d, c                                          ; $4a03: $51
	ld c, h                                          ; $4a04: $4c
	and b                                            ; $4a05: $a0
	ld l, d                                          ; $4a06: $6a
	ld b, d                                          ; $4a07: $42

jr_08d_4a08:
	ld d, d                                          ; $4a08: $52
	ld d, d                                          ; $4a09: $52
	ld c, d                                          ; $4a0a: $4a
	ld c, a                                          ; $4a0b: $4f
	xor h                                            ; $4a0c: $ac
	sub b                                            ; $4a0d: $90
	ld a, $38                                        ; $4a0e: $3e $38
	ld c, d                                          ; $4a10: $4a
	ld d, c                                          ; $4a11: $51
	ld e, l                                          ; $4a12: $5d
	ld e, d                                          ; $4a13: $5a
	ld c, h                                          ; $4a14: $4c
	and b                                            ; $4a15: $a0
	cpl                                              ; $4a16: $2f
	db $ed                                           ; $4a17: $ed
	ld e, [hl]                                       ; $4a18: $5e
	inc [hl]                                         ; $4a19: $34
	sub b                                            ; $4a1a: $90
	ld a, $55                                        ; $4a1b: $3e $55
	ld a, [hl-]                                      ; $4a1d: $3a
	jr c, jr_08d_4a29                                ; $4a1e: $38 $09

	rst JumpTable                                          ; $4a20: $c7
	ld c, d                                          ; $4a21: $4a
	ld d, c                                          ; $4a22: $51
	inc a                                            ; $4a23: $3c
	xor l                                            ; $4a24: $ad
	ldh a, [$64]                                     ; $4a25: $f0 $64
	jr c, jr_08d_4a63                                ; $4a27: $38 $3a

jr_08d_4a29:
	ld b, c                                          ; $4a29: $41
	ld c, d                                          ; $4a2a: $4a
	ld d, c                                          ; $4a2b: $51
	inc a                                            ; $4a2c: $3c
	and c                                            ; $4a2d: $a1
	cp [hl]                                          ; $4a2e: $be
	xor l                                            ; $4a2f: $ad
	sub b                                            ; $4a30: $90
	ld a, $55                                        ; $4a31: $3e $55
	ld a, [hl-]                                      ; $4a33: $3a
	jr c, jr_08d_4a80                                ; $4a34: $38 $4a

	ld d, c                                          ; $4a36: $51
	inc a                                            ; $4a37: $3c
	ld c, b                                          ; $4a38: $48
	and b                                            ; $4a39: $a0

jr_08d_4a3a:
	ld d, h                                          ; $4a3a: $54
	add hl, sp                                       ; $4a3b: $39
	jr c, jr_08d_4a77                                ; $4a3c: $38 $39

	ld b, d                                          ; $4a3e: $42
	ld c, e                                          ; $4a3f: $4b

jr_08d_4a40:
	xor h                                            ; $4a40: $ac
	ldh a, [$64]                                     ; $4a41: $f0 $64
	jr c, @+$3c                                      ; $4a43: $38 $3a

	ld b, c                                          ; $4a45: $41
	ld c, d                                          ; $4a46: $4a
	ld d, c                                          ; $4a47: $51
	ld c, h                                          ; $4a48: $4c
	and b                                            ; $4a49: $a0
	cpl                                              ; $4a4a: $2f
	ldh a, [$a5]                                     ; $4a4b: $f0 $a5
	ld c, [hl]                                       ; $4a4d: $4e
	ldh a, [$08]                                     ; $4a4e: $f0 $08
	add hl, sp                                       ; $4a50: $39
	ld c, e                                          ; $4a51: $4b
	add a                                            ; $4a52: $87
	ldh a, [$5d]                                     ; $4a53: $f0 $5d
	ld b, h                                          ; $4a55: $44
	ld c, h                                          ; $4a56: $4c
	add hl, bc                                       ; $4a57: $09
	or [hl]                                          ; $4a58: $b6
	xor b                                            ; $4a59: $a8
	ldh a, [rLCDC]                                   ; $4a5a: $f0 $40
	ld c, [hl]                                       ; $4a5c: $4e
	ldh a, [$08]                                     ; $4a5d: $f0 $08
	add hl, sp                                       ; $4a5f: $39
	ld c, e                                          ; $4a60: $4b
	inc de                                           ; $4a61: $13
	sub b                                            ; $4a62: $90

jr_08d_4a63:
	ld a, $38                                        ; $4a63: $3e $38
	ld c, d                                          ; $4a65: $4a
	ld d, c                                          ; $4a66: $51
	ld e, l                                          ; $4a67: $5d
	ld e, d                                          ; $4a68: $5a
	ld c, b                                          ; $4a69: $48
	and b                                            ; $4a6a: $a0
	or [hl]                                          ; $4a6b: $b6
	xor b                                            ; $4a6c: $a8
	add a                                            ; $4a6d: $87
	ldh a, [$5d]                                     ; $4a6e: $f0 $5d
	or [hl]                                          ; $4a70: $b6
	and b                                            ; $4a71: $a0
	ld l, a                                          ; $4a72: $6f
	ld c, a                                          ; $4a73: $4f
	ld b, b                                          ; $4a74: $40
	add hl, sp                                       ; $4a75: $39
	ld [hl], a                                       ; $4a76: $77

jr_08d_4a77:
	jr c, jr_08d_4acb                                ; $4a77: $38 $52

	ld d, c                                          ; $4a79: $51
	and b                                            ; $4a7a: $a0
	db $ed                                           ; $4a7b: $ed
	ld h, a                                          ; $4a7c: $67
	ld c, c                                          ; $4a7d: $49
	xor $06                                          ; $4a7e: $ee $06

jr_08d_4a80:
	ld b, a                                          ; $4a80: $47
	ld [hl], d                                       ; $4a81: $72
	ccf                                              ; $4a82: $3f
	ld c, [hl]                                       ; $4a83: $4e
	inc de                                           ; $4a84: $13
	ld b, d                                          ; $4a85: $42
	ld d, e                                          ; $4a86: $53
	inc [hl]                                         ; $4a87: $34
	db $eb                                           ; $4a88: $eb
	ld l, d                                          ; $4a89: $6a
	ccf                                              ; $4a8a: $3f
	ld c, b                                          ; $4a8b: $48
	and b                                            ; $4a8c: $a0
	cpl                                              ; $4a8d: $2f
	add sp, $1b                                      ; $4a8e: $e8 $1b
	ld c, b                                          ; $4a90: $48
	add hl, bc                                       ; $4a91: $09
	ld c, d                                          ; $4a92: $4a
	ld c, a                                          ; $4a93: $4f
	xor h                                            ; $4a94: $ac
	ret                                              ; $4a95: $c9


	sbc l                                            ; $4a96: $9d
	ld d, b                                          ; $4a97: $50
	jr c, jr_08d_4ad4                                ; $4a98: $38 $3a

	ld d, b                                          ; $4a9a: $50
	xor h                                            ; $4a9b: $ac
	ld l, a                                          ; $4a9c: $6f
	ld c, a                                          ; $4a9d: $4f
	ld c, b                                          ; $4a9e: $48
	and b                                            ; $4a9f: $a0
	ld [$a81e], a                                    ; $4aa0: $ea $1e $a8
	ld b, b                                          ; $4aa3: $40
	ld c, l                                          ; $4aa4: $4d
	ld a, [hl-]                                      ; $4aa5: $3a
	ld d, b                                          ; $4aa6: $50
	inc de                                           ; $4aa7: $13
	ld a, $3c                                        ; $4aa8: $3e $3c
	dec a                                            ; $4aaa: $3d
	ld a, [hl-]                                      ; $4aab: $3a
	jr c, jr_08d_4af8                                ; $4aac: $38 $4a

	ld d, c                                          ; $4aae: $51
	ld c, h                                          ; $4aaf: $4c
	and b                                            ; $4ab0: $a0
	ld [$ad1e], a                                    ; $4ab1: $ea $1e $ad
	ld a, $3c                                        ; $4ab4: $3e $3c
	dec a                                            ; $4ab6: $3d
	ld a, [hl-]                                      ; $4ab7: $3a
	jr c, jr_08d_4b04                                ; $4ab8: $38 $4a

	ld d, c                                          ; $4aba: $51
	ld c, h                                          ; $4abb: $4c
	and b                                            ; $4abc: $a0
	cpl                                              ; $4abd: $2f
	add sp, -$5f                                     ; $4abe: $e8 $a1
	add hl, bc                                       ; $4ac0: $09
	ld b, b                                          ; $4ac1: $40
	ld b, c                                          ; $4ac2: $41
	ld a, [hl-]                                      ; $4ac3: $3a
	ld b, a                                          ; $4ac4: $47
	inc de                                           ; $4ac5: $13
	ld a, a                                          ; $4ac6: $7f
	ld d, e                                          ; $4ac7: $53
	ldh a, [$9c]                                     ; $4ac8: $f0 $9c
	ld d, l                                          ; $4aca: $55

jr_08d_4acb:
	ld a, [hl-]                                      ; $4acb: $3a
	jr c, jr_08d_4b18                                ; $4acc: $38 $4a

	ld d, c                                          ; $4ace: $51
	inc a                                            ; $4acf: $3c
	ld d, b                                          ; $4ad0: $50
	ld c, b                                          ; $4ad1: $48
	and b                                            ; $4ad2: $a0
	ld l, a                                          ; $4ad3: $6f

jr_08d_4ad4:
	ld b, a                                          ; $4ad4: $47
	ld c, e                                          ; $4ad5: $4b
	ldh a, [rAUD1LOW]                                ; $4ad6: $f0 $13
	ldh a, [$63]                                     ; $4ad8: $f0 $63
	ld c, d                                          ; $4ada: $4a
	ld d, c                                          ; $4adb: $51
	and b                                            ; $4adc: $a0
	db $eb                                           ; $4add: $eb
	db $f4                                           ; $4ade: $f4
	xor h                                            ; $4adf: $ac
	ld a, a                                          ; $4ae0: $7f
	ld b, a                                          ; $4ae1: $47
	ld a, [hl-]                                      ; $4ae2: $3a
	ld d, a                                          ; $4ae3: $57
	ld d, d                                          ; $4ae4: $52
	ld d, c                                          ; $4ae5: $51
	inc a                                            ; $4ae6: $3c
	ld d, b                                          ; $4ae7: $50
	ld c, b                                          ; $4ae8: $48
	and b                                            ; $4ae9: $a0
	cpl                                              ; $4aea: $2f
	add sp, $36                                      ; $4aeb: $e8 $36
	ld c, b                                          ; $4aed: $48
	add hl, bc                                       ; $4aee: $09
	jp hl                                            ; $4aef: $e9


	inc d                                            ; $4af0: $14
	xor b                                            ; $4af1: $a8
	ld a, a                                          ; $4af2: $7f
	ld h, d                                          ; $4af3: $62
	pop af                                           ; $4af4: $f1
	sbc l                                            ; $4af5: $9d
	dec sp                                           ; $4af6: $3b
	ccf                                              ; $4af7: $3f

jr_08d_4af8:
	ld d, l                                          ; $4af8: $55
	ld c, l                                          ; $4af9: $4d
	ccf                                              ; $4afa: $3f
	ld c, b                                          ; $4afb: $48
	and b                                            ; $4afc: $a0
	or [hl]                                          ; $4afd: $b6
	xor b                                            ; $4afe: $a8
	ld l, a                                          ; $4aff: $6f
	ld c, a                                          ; $4b00: $4f
	inc [hl]                                         ; $4b01: $34
	ld c, e                                          ; $4b02: $4b
	dec sp                                           ; $4b03: $3b

jr_08d_4b04:
	ld e, h                                          ; $4b04: $5c
	ld d, a                                          ; $4b05: $57
	add d                                            ; $4b06: $82
	ld e, [hl]                                       ; $4b07: $5e
	ld a, e                                          ; $4b08: $7b
	inc de                                           ; $4b09: $13
	ld b, l                                          ; $4b0a: $45
	inc a                                            ; $4b0b: $3c
	dec sp                                           ; $4b0c: $3b
	dec a                                            ; $4b0d: $3d
	ld c, d                                          ; $4b0e: $4a
	ld d, c                                          ; $4b0f: $51
	ld c, h                                          ; $4b10: $4c
	and b                                            ; $4b11: $a0
	or [hl]                                          ; $4b12: $b6
	and b                                            ; $4b13: $a0
	ld [$ebc4], a                                    ; $4b14: $ea $c4 $eb
	and l                                            ; $4b17: $a5

jr_08d_4b18:
	inc de                                           ; $4b18: $13
	add a                                            ; $4b19: $87
	ldh a, [$5d]                                     ; $4b1a: $f0 $5d
	or [hl]                                          ; $4b1c: $b6
	and b                                            ; $4b1d: $a0
	cpl                                              ; $4b1e: $2f
	add sp, $11                                      ; $4b1f: $e8 $11
	add hl, bc                                       ; $4b21: $09
	db $ec                                           ; $4b22: $ec
	reti                                             ; $4b23: $d9


	xor h                                            ; $4b24: $ac
	ld [$4cbf], a                                    ; $4b25: $ea $bf $4c
	ld c, b                                          ; $4b28: $48
	and b                                            ; $4b29: $a0
	ld l, a                                          ; $4b2a: $6f
	ld c, a                                          ; $4b2b: $4f
	ldh a, [$0c]                                     ; $4b2c: $f0 $0c
	jr c, jr_08d_4b6d                                ; $4b2e: $38 $3d

	ld d, h                                          ; $4b30: $54
	ld c, c                                          ; $4b31: $49
	ld d, e                                          ; $4b32: $53
	inc de                                           ; $4b33: $13
	ld b, [hl]                                       ; $4b34: $46
	ld d, a                                          ; $4b35: $57
	ld d, d                                          ; $4b36: $52
	ld d, c                                          ; $4b37: $51
	and b                                            ; $4b38: $a0
	ld [hl], a                                       ; $4b39: $77
	dec sp                                           ; $4b3a: $3b
	dec a                                            ; $4b3b: $3d
	ldh a, [rOCPS]                                   ; $4b3c: $f0 $6a
	ld d, a                                          ; $4b3e: $57
	ld c, d                                          ; $4b3f: $4a
	ld d, c                                          ; $4b40: $51
	and b                                            ; $4b41: $a0
	cpl                                              ; $4b42: $2f
	add sp, -$17                                     ; $4b43: $e8 $e9
	ld c, b                                          ; $4b45: $48
	add hl, bc                                       ; $4b46: $09
	ldh a, [$ac]                                     ; $4b47: $f0 $ac
	dec a                                            ; $4b49: $3d
	ld d, h                                          ; $4b4a: $54
	ld c, c                                          ; $4b4b: $49
	ld b, d                                          ; $4b4c: $42
	ld b, [hl]                                       ; $4b4d: $46
	ld c, [hl]                                       ; $4b4e: $4e
	add h                                            ; $4b4f: $84
	dec sp                                           ; $4b50: $3b
	ccf                                              ; $4b51: $3f
	xor h                                            ; $4b52: $ac
	ld b, b                                          ; $4b53: $40
	ld b, c                                          ; $4b54: $41
	ld a, [hl-]                                      ; $4b55: $3a
	ld b, a                                          ; $4b56: $47
	jr c, jr_08d_4ba7                                ; $4b57: $38 $4e

	ld b, c                                          ; $4b59: $41
	ld c, d                                          ; $4b5a: $4a
	ld d, c                                          ; $4b5b: $51
	inc a                                            ; $4b5c: $3c
	and c                                            ; $4b5d: $a1
	ld b, b                                          ; $4b5e: $40
	ld c, l                                          ; $4b5f: $4d
	ld c, e                                          ; $4b60: $4b
	inc [hl]                                         ; $4b61: $34
	sub c                                            ; $4b62: $91
	dec a                                            ; $4b63: $3d
	ld d, a                                          ; $4b64: $57
	sbc [hl]                                         ; $4b65: $9e
	ld b, h                                          ; $4b66: $44
	ld c, c                                          ; $4b67: $49
	inc de                                           ; $4b68: $13
	ld [hl], a                                       ; $4b69: $77
	jr c, jr_08d_4bbe                                ; $4b6a: $38 $52

	ld d, c                                          ; $4b6c: $51

jr_08d_4b6d:
	ld e, l                                          ; $4b6d: $5d
	ld e, d                                          ; $4b6e: $5a
	ld c, b                                          ; $4b6f: $48
	and b                                            ; $4b70: $a0
	ldh a, [$ac]                                     ; $4b71: $f0 $ac
	dec a                                            ; $4b73: $3d
	ld d, h                                          ; $4b74: $54
	ld c, c                                          ; $4b75: $49
	ld d, e                                          ; $4b76: $53
	ld b, [hl]                                       ; $4b77: $46
	ld c, [hl]                                       ; $4b78: $4e
	add h                                            ; $4b79: $84
	ld a, [hl-]                                      ; $4b7a: $3a
	ld b, c                                          ; $4b7b: $41
	ccf                                              ; $4b7c: $3f
	inc de                                           ; $4b7d: $13
	ld l, a                                          ; $4b7e: $6f
	ld b, d                                          ; $4b7f: $42
	db $ed                                           ; $4b80: $ed
	ld h, d                                          ; $4b81: $62
	ld b, a                                          ; $4b82: $47
	ld c, e                                          ; $4b83: $4b
	inc [hl]                                         ; $4b84: $34
	jr c, @+$3c                                      ; $4b85: $38 $3a

	jr c, jr_08d_4bd3                                ; $4b87: $38 $4a

	ld d, c                                          ; $4b89: $51
	ld c, h                                          ; $4b8a: $4c
	and b                                            ; $4b8b: $a0
	cpl                                              ; $4b8c: $2f
	add sp, -$65                                     ; $4b8d: $e8 $9b
	add hl, bc                                       ; $4b8f: $09
	ld b, b                                          ; $4b90: $40
	inc [hl]                                         ; $4b91: $34
	ld [$a91e], a                                    ; $4b92: $ea $1e $a9
	db $ed                                           ; $4b95: $ed
	or h                                             ; $4b96: $b4
	ld d, a                                          ; $4b97: $57
	ld c, d                                          ; $4b98: $4a
	ld d, c                                          ; $4b99: $51
	ld c, h                                          ; $4b9a: $4c
	and b                                            ; $4b9b: $a0
	db $ed                                           ; $4b9c: $ed
	rla                                              ; $4b9d: $17
	dec sp                                           ; $4b9e: $3b
	ccf                                              ; $4b9f: $3f
	ld l, e                                          ; $4ba0: $6b
	ld c, d                                          ; $4ba1: $4a
	ld d, c                                          ; $4ba2: $51
	inc a                                            ; $4ba3: $3c
	and c                                            ; $4ba4: $a1
	db $ed                                           ; $4ba5: $ed
	rla                                              ; $4ba6: $17

jr_08d_4ba7:
	dec sp                                           ; $4ba7: $3b

Call_08d_4ba8:
	ccf                                              ; $4ba8: $3f
	xor h                                            ; $4ba9: $ac
	ld e, d                                          ; $4baa: $5a
	add hl, sp                                       ; $4bab: $39
	jr c, jr_08d_4be7                                ; $4bac: $38 $39

	ld c, a                                          ; $4bae: $4f
	ld b, d                                          ; $4baf: $42
	ld c, d                                          ; $4bb0: $4a
	ld d, c                                          ; $4bb1: $51
	inc a                                            ; $4bb2: $3c
	and c                                            ; $4bb3: $a1
	db $ec                                           ; $4bb4: $ec
	dec e                                            ; $4bb5: $1d
	ld h, d                                          ; $4bb6: $62
	inc de                                           ; $4bb7: $13
	ld [$4a31], a                                    ; $4bb8: $ea $31 $4a
	ld d, c                                          ; $4bbb: $51
	ld c, h                                          ; $4bbc: $4c
	and b                                            ; $4bbd: $a0

jr_08d_4bbe:
	cpl                                              ; $4bbe: $2f
	ld [$acc9], a                                    ; $4bbf: $ea $c9 $ac
	db $ed                                           ; $4bc2: $ed
	ld d, a                                          ; $4bc3: $57
	db $ec                                           ; $4bc4: $ec
	dec e                                            ; $4bc5: $1d
	ld h, d                                          ; $4bc6: $62
	inc de                                           ; $4bc7: $13
	ld [$a33f], a                                    ; $4bc8: $ea $3f $a3
	cpl                                              ; $4bcb: $2f
	jp hl                                            ; $4bcc: $e9


	ld sp, $f009                                     ; $4bcd: $31 $09 $f0
	ld d, a                                          ; $4bd0: $57
	ldh a, [$ae]                                     ; $4bd1: $f0 $ae

jr_08d_4bd3:
	ld c, d                                          ; $4bd3: $4a
	ld d, c                                          ; $4bd4: $51
	ld c, h                                          ; $4bd5: $4c
	xor b                                            ; $4bd6: $a8
	ld d, h                                          ; $4bd7: $54
	ld b, c                                          ; $4bd8: $41
	ld a, [hl-]                                      ; $4bd9: $3a
	db $ec                                           ; $4bda: $ec
	dec e                                            ; $4bdb: $1d
	inc de                                           ; $4bdc: $13
	ld [hl], d                                       ; $4bdd: $72
	ld c, l                                          ; $4bde: $4d
	ld c, [hl]                                       ; $4bdf: $4e
	ld a, [hl-]                                      ; $4be0: $3a
	ld b, c                                          ; $4be1: $41
	ccf                                              ; $4be2: $3f
	ld c, b                                          ; $4be3: $48
	and b                                            ; $4be4: $a0
	db $ed                                           ; $4be5: $ed
	ld h, c                                          ; $4be6: $61

jr_08d_4be7:
	ld [hl], d                                       ; $4be7: $72
	ccf                                              ; $4be8: $3f
	ld c, a                                          ; $4be9: $4f
	inc de                                           ; $4bea: $13
	ldh a, [$57]                                     ; $4beb: $f0 $57
	ldh a, [$ae]                                     ; $4bed: $f0 $ae
	ld a, [hl-]                                      ; $4bef: $3a
	db $ec                                           ; $4bf0: $ec
	dec e                                            ; $4bf1: $1d
	ld c, d                                          ; $4bf2: $4a
	ld d, c                                          ; $4bf3: $51
	ld c, h                                          ; $4bf4: $4c
	and b                                            ; $4bf5: $a0
	cpl                                              ; $4bf6: $2f
	ld b, e                                          ; $4bf7: $43
	ldh a, [$66]                                     ; $4bf8: $f0 $66
	ld b, c                                          ; $4bfa: $41
	ld c, d                                          ; $4bfb: $4a
	ld c, a                                          ; $4bfc: $4f
	ld d, b                                          ; $4bfd: $50
	ld e, [hl]                                       ; $4bfe: $5e
	dec a                                            ; $4bff: $3d
	ld l, h                                          ; $4c00: $6c
	dec a                                            ; $4c01: $3d
	jr c, @+$4c                                      ; $4c02: $38 $4a

	inc de                                           ; $4c04: $13
	db $eb                                           ; $4c05: $eb
	ld e, a                                          ; $4c06: $5f
	and b                                            ; $4c07: $a0
	cpl                                              ; $4c08: $2f
	add sp, -$26                                     ; $4c09: $e8 $da
	add hl, bc                                       ; $4c0b: $09
	ld b, b                                          ; $4c0c: $40
	ld c, l                                          ; $4c0d: $4d
	ld e, e                                          ; $4c0e: $5b
	ld d, [hl]                                       ; $4c0f: $56
	xor h                                            ; $4c10: $ac
	db $ec                                           ; $4c11: $ec
	push bc                                          ; $4c12: $c5
	inc de                                           ; $4c13: $13
	ldh a, [rAUD2HIGH]                               ; $4c14: $f0 $19
	ld b, a                                          ; $4c16: $47
	sub [hl]                                         ; $4c17: $96
	ld d, a                                          ; $4c18: $57
	ld d, d                                          ; $4c19: $52
	ld a, $66                                        ; $4c1a: $3e $66
	add hl, sp                                       ; $4c1c: $39
	and b                                            ; $4c1d: $a0
	cpl                                              ; $4c1e: $2f
	ld b, e                                          ; $4c1f: $43
	ld b, b                                          ; $4c20: $40
	add hl, sp                                       ; $4c21: $39
	ld b, h                                          ; $4c22: $44
	ld c, h                                          ; $4c23: $4c
	xor b                                            ; $4c24: $a8
	db $eb                                           ; $4c25: $eb
	ld d, d                                          ; $4c26: $52
	inc a                                            ; $4c27: $3c
	and c                                            ; $4c28: $a1
	ldh a, [rAUD2LOW]                                ; $4c29: $f0 $18
	ldh a, [$dc]                                     ; $4c2b: $f0 $dc
	dec sp                                           ; $4c2d: $3b
	ccf                                              ; $4c2e: $3f
	xor h                                            ; $4c2f: $ac
	ld b, b                                          ; $4c30: $40
	ld b, c                                          ; $4c31: $41
	ld a, [hl-]                                      ; $4c32: $3a
	ld b, a                                          ; $4c33: $47
	sub b                                            ; $4c34: $90
	ld a, $38                                        ; $4c35: $3e $38
	ld b, c                                          ; $4c37: $41
	ld c, d                                          ; $4c38: $4a
	ld d, c                                          ; $4c39: $51
	inc a                                            ; $4c3a: $3c
	and c                                            ; $4c3b: $a1
	cpl                                              ; $4c3c: $2f
	halt                                             ; $4c3d: $76
	ld c, e                                          ; $4c3e: $4b
	ld h, e                                          ; $4c3f: $63
	ld d, a                                          ; $4c40: $57
	ld c, c                                          ; $4c41: $49
	adc e                                            ; $4c42: $8b
	ld e, h                                          ; $4c43: $5c
	ld b, h                                          ; $4c44: $44
	ld a, [hl-]                                      ; $4c45: $3a
	ld c, b                                          ; $4c46: $48
	add hl, bc                                       ; $4c47: $09
	ld l, a                                          ; $4c48: $6f
	ld c, e                                          ; $4c49: $4b
	inc [hl]                                         ; $4c4a: $34
	pop af                                           ; $4c4b: $f1
	ld de, $65f0                                     ; $4c4c: $11 $f0 $65
	ld d, e                                          ; $4c4f: $53
	inc de                                           ; $4c50: $13
	ldh a, [c]                                       ; $4c51: $f2
	ld e, c                                          ; $4c52: $59
	jr c, jr_08d_4c9f                                ; $4c53: $38 $4a

	ld d, c                                          ; $4c55: $51
	inc a                                            ; $4c56: $3c
	ld d, b                                          ; $4c57: $50
	inc de                                           ; $4c58: $13
	add hl, sp                                       ; $4c59: $39
	ld d, b                                          ; $4c5a: $50
	ld l, [hl]                                       ; $4c5b: $6e
	ld d, d                                          ; $4c5c: $52
	ld a, $38                                        ; $4c5d: $3e $38
	ld c, d                                          ; $4c5f: $4a
	ld d, c                                          ; $4c60: $51
	and b                                            ; $4c61: $a0
	ld b, b                                          ; $4c62: $40
	add hl, sp                                       ; $4c63: $39
	ld b, h                                          ; $4c64: $44
	ld c, c                                          ; $4c65: $49
	ld [hl], a                                       ; $4c66: $77
	jr c, jr_08d_4cbb                                ; $4c67: $38 $52

	ld a, $3d                                        ; $4c69: $3e $3d
	xor b                                            ; $4c6b: $a8
	jr c, jr_08d_4ca6                                ; $4c6c: $38 $38

	ld c, d                                          ; $4c6e: $4a
	ld d, c                                          ; $4c6f: $51
	ld c, h                                          ; $4c70: $4c
	xor b                                            ; $4c71: $a8
	add hl, sp                                       ; $4c72: $39
	ld d, b                                          ; $4c73: $50
	ld l, [hl]                                       ; $4c74: $6e
	ld d, d                                          ; $4c75: $52
	ld a, $38                                        ; $4c76: $3e $38
	ld c, d                                          ; $4c78: $4a
	ld d, c                                          ; $4c79: $51
	and b                                            ; $4c7a: $a0
	jr c, jr_08d_4cb5                                ; $4c7b: $38 $38

	ld c, d                                          ; $4c7d: $4a
	ld d, c                                          ; $4c7e: $51
	ld c, h                                          ; $4c7f: $4c
	xor b                                            ; $4c80: $a8
	add hl, sp                                       ; $4c81: $39
	ld d, b                                          ; $4c82: $50
	ld l, [hl]                                       ; $4c83: $6e
	ld d, d                                          ; $4c84: $52
	ld a, $38                                        ; $4c85: $3e $38
	ld c, d                                          ; $4c87: $4a
	ld d, c                                          ; $4c88: $51
	and b                                            ; $4c89: $a0
	cpl                                              ; $4c8a: $2f
	db $ec                                           ; $4c8b: $ec
	ld e, d                                          ; $4c8c: $5a
	ld d, l                                          ; $4c8d: $55
	ld a, [hl-]                                      ; $4c8e: $3a
	jr c, @+$0b                                      ; $4c8f: $38 $09

	ld b, b                                          ; $4c91: $40
	ld c, l                                          ; $4c92: $4d
	ld a, [hl-]                                      ; $4c93: $3a
	ld d, b                                          ; $4c94: $50
	inc [hl]                                         ; $4c95: $34
	db $ec                                           ; $4c96: $ec
	db $d3                                           ; $4c97: $d3
	inc de                                           ; $4c98: $13
	ldh a, [$3b]                                     ; $4c99: $f0 $3b
	xor $1f                                          ; $4c9b: $ee $1f
	ld c, d                                          ; $4c9d: $4a
	ld d, c                                          ; $4c9e: $51

jr_08d_4c9f:
	inc a                                            ; $4c9f: $3c
	and c                                            ; $4ca0: $a1
	ld b, b                                          ; $4ca1: $40
	ld c, l                                          ; $4ca2: $4d
	ld a, [hl-]                                      ; $4ca3: $3a
	ld d, b                                          ; $4ca4: $50
	inc [hl]                                         ; $4ca5: $34

jr_08d_4ca6:
	db $ec                                           ; $4ca6: $ec
	db $d3                                           ; $4ca7: $d3
	inc de                                           ; $4ca8: $13
	ld [hl], d                                       ; $4ca9: $72
	ld b, a                                          ; $4caa: $47
	ld a, b                                          ; $4cab: $78
	dec a                                            ; $4cac: $3d
	ld b, c                                          ; $4cad: $41
	ld c, d                                          ; $4cae: $4a
	ld d, c                                          ; $4caf: $51
	inc a                                            ; $4cb0: $3c
	and c                                            ; $4cb1: $a1
	ld b, b                                          ; $4cb2: $40
	ld c, l                                          ; $4cb3: $4d
	ld a, [hl-]                                      ; $4cb4: $3a

jr_08d_4cb5:
	ld d, b                                          ; $4cb5: $50
	xor h                                            ; $4cb6: $ac
	ld a, b                                          ; $4cb7: $78
	ld a, [hl-]                                      ; $4cb8: $3a
	ld e, l                                          ; $4cb9: $5d
	ld c, l                                          ; $4cba: $4d

jr_08d_4cbb:
	ld a, e                                          ; $4cbb: $7b
	jr c, jr_08d_4cf6                                ; $4cbc: $38 $38

	ld b, d                                          ; $4cbe: $42
	ld b, a                                          ; $4cbf: $47
	ld c, b                                          ; $4cc0: $48
	and b                                            ; $4cc1: $a0
	cpl                                              ; $4cc2: $2f
	db $ec                                           ; $4cc3: $ec
	rst SubAFromDE                                          ; $4cc4: $df
	ld c, e                                          ; $4cc5: $4b
	ld e, d                                          ; $4cc6: $5a
	add hl, sp                                       ; $4cc7: $39
	ld a, [hl-]                                      ; $4cc8: $3a
	ld b, d                                          ; $4cc9: $42
	and c                                            ; $4cca: $a1
	ld l, a                                          ; $4ccb: $6f
	ld c, e                                          ; $4ccc: $4b
	inc [hl]                                         ; $4ccd: $34
	pop af                                           ; $4cce: $f1
	ld de, $65f0                                     ; $4ccf: $11 $f0 $65
	ld d, e                                          ; $4cd2: $53
	ldh a, [c]                                       ; $4cd3: $f2
	ld e, c                                          ; $4cd4: $59
	jr c, @+$44                                      ; $4cd5: $38 $42

	ld c, d                                          ; $4cd7: $4a
	inc de                                           ; $4cd8: $13
	db $ec                                           ; $4cd9: $ec
	ld c, b                                          ; $4cda: $48
	ld b, a                                          ; $4cdb: $47
	pop af                                           ; $4cdc: $f1
	ret c                                            ; $4cdd: $d8

	ld d, c                                          ; $4cde: $51
	ld c, [hl]                                       ; $4cdf: $4e
	ld d, h                                          ; $4ce0: $54
	ld c, c                                          ; $4ce1: $49
	ld c, e                                          ; $4ce2: $4b
	inc de                                           ; $4ce3: $13
	ret                                              ; $4ce4: $c9


	ld c, b                                          ; $4ce5: $48
	and b                                            ; $4ce6: $a0
	ld b, [hl]                                       ; $4ce7: $46
	ld d, d                                          ; $4ce8: $52
	ld d, a                                          ; $4ce9: $57
	db $ec                                           ; $4cea: $ec
	ld c, b                                          ; $4ceb: $48
	ld c, e                                          ; $4cec: $4b
	inc de                                           ; $4ced: $13
	ld a, $52                                        ; $4cee: $3e $52
	ld a, c                                          ; $4cf0: $79
	ld b, c                                          ; $4cf1: $41
	inc a                                            ; $4cf2: $3c
	ld d, b                                          ; $4cf3: $50
	ld c, b                                          ; $4cf4: $48
	and b                                            ; $4cf5: $a0

jr_08d_4cf6:
	db $ed                                           ; $4cf6: $ed
	add [hl]                                         ; $4cf7: $86
	ld c, e                                          ; $4cf8: $4b
	ld l, h                                          ; $4cf9: $6c
	ld b, c                                          ; $4cfa: $41
	ld a, [hl-]                                      ; $4cfb: $3a
	inc de                                           ; $4cfc: $13
	db $ed                                           ; $4cfd: $ed
	ld l, b                                          ; $4cfe: $68

jr_08d_4cff:
	ld c, d                                          ; $4cff: $4a
	ld d, c                                          ; $4d00: $51
	inc a                                            ; $4d01: $3c
	ld d, b                                          ; $4d02: $50
	ld c, b                                          ; $4d03: $48
	and b                                            ; $4d04: $a0
	ld e, d                                          ; $4d05: $5a
	add hl, sp                                       ; $4d06: $39
	ld a, [hl-]                                      ; $4d07: $3a
	ld c, [hl]                                       ; $4d08: $4e
	ld c, c                                          ; $4d09: $49
	xor h                                            ; $4d0a: $ac
	ldh a, [$ce]                                     ; $4d0b: $f0 $ce
	ld h, e                                          ; $4d0d: $63
	ld c, [hl]                                       ; $4d0e: $4e
	ld b, c                                          ; $4d0f: $41
	ld c, d                                          ; $4d10: $4a
	ld d, c                                          ; $4d11: $51
	inc a                                            ; $4d12: $3c
	and c                                            ; $4d13: $a1
	cpl                                              ; $4d14: $2f
	add sp, -$59                                     ; $4d15: $e8 $a7
	add hl, bc                                       ; $4d17: $09
	ld [$a81e], a                                    ; $4d18: $ea $1e $a8
	ldh a, [rAUD4ENV]                                ; $4d1b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4d1d: $f0 $23
	jr c, jr_08d_4d6b                                ; $4d1f: $38 $4a

	ld d, c                                          ; $4d21: $51
	ld c, h                                          ; $4d22: $4c
	and b                                            ; $4d23: $a0
	ld b, b                                          ; $4d24: $40
	add hl, sp                                       ; $4d25: $39
	ld a, [hl-]                                      ; $4d26: $3a
	ld c, [hl]                                       ; $4d27: $4e
	ld c, c                                          ; $4d28: $49
	xor h                                            ; $4d29: $ac
	ldh a, [$ce]                                     ; $4d2a: $f0 $ce
	ld h, e                                          ; $4d2c: $63
	ld c, [hl]                                       ; $4d2d: $4e
	ld b, c                                          ; $4d2e: $41
	ld c, d                                          ; $4d2f: $4a
	ld d, c                                          ; $4d30: $51
	ld c, h                                          ; $4d31: $4c
	and b                                            ; $4d32: $a0
	ld [$a01e], a                                    ; $4d33: $ea $1e $a0
	cpl                                              ; $4d36: $2f
	ld [$094e], a                                    ; $4d37: $ea $4e $09
	ld b, b                                          ; $4d3a: $40
	ld b, c                                          ; $4d3b: $41
	ld a, [hl-]                                      ; $4d3c: $3a
	ldh a, [$c0]                                     ; $4d3d: $f0 $c0
	pop af                                           ; $4d3f: $f1
	sbc b                                            ; $4d40: $98
	ldh a, [$5c]                                     ; $4d41: $f0 $5c
	xor h                                            ; $4d43: $ac
	ld a, $3a                                        ; $4d44: $3e $3a
	jr c, jr_08d_4d92                                ; $4d46: $38 $4a

	ld d, l                                          ; $4d48: $55
	ld b, h                                          ; $4d49: $44
	ld e, b                                          ; $4d4a: $58
	jr c, jr_08d_4d95                                ; $4d4b: $38 $48

	and b                                            ; $4d4d: $a0
	ld b, b                                          ; $4d4e: $40
	ld b, c                                          ; $4d4f: $41
	ld a, [hl-]                                      ; $4d50: $3a
	sbc d                                            ; $4d51: $9a
	add d                                            ; $4d52: $82
	ld h, e                                          ; $4d53: $63
	ld a, [hl-]                                      ; $4d54: $3a
	jr c, jr_08d_4da1                                ; $4d55: $38 $4a

	xor h                                            ; $4d57: $ac
	db $ec                                           ; $4d58: $ec
	db $ed                                           ; $4d59: $ed
	ld d, l                                          ; $4d5a: $55
	ld b, h                                          ; $4d5b: $44
	ld e, b                                          ; $4d5c: $58
	jr c, jr_08d_4cff                                ; $4d5d: $38 $a0

	ld b, b                                          ; $4d5f: $40
	ld c, l                                          ; $4d60: $4d
	ld a, [hl-]                                      ; $4d61: $3a
	ld d, b                                          ; $4d62: $50
	jr c, @+$3a                                      ; $4d63: $38 $38

	ld c, d                                          ; $4d65: $4a
	ld d, c                                          ; $4d66: $51
	xor b                                            ; $4d67: $a8
	db $ec                                           ; $4d68: $ec
	pop af                                           ; $4d69: $f1
	ld c, d                                          ; $4d6a: $4a

jr_08d_4d6b:
	ldh a, [$75]                                     ; $4d6b: $f0 $75
	ldh a, [$8c]                                     ; $4d6d: $f0 $8c
	ld d, d                                          ; $4d6f: $52
	ld d, c                                          ; $4d70: $51
	and b                                            ; $4d71: $a0
	cpl                                              ; $4d72: $2f
	ld [$096e], a                                    ; $4d73: $ea $6e $09
	ld [$a91e], a                                    ; $4d76: $ea $1e $a9
	ldh a, [$2d]                                     ; $4d79: $f0 $2d
	dec sp                                           ; $4d7b: $3b
	ccf                                              ; $4d7c: $3f
	ld c, [hl]                                       ; $4d7d: $4e
	ld c, c                                          ; $4d7e: $49
	ld a, e                                          ; $4d7f: $7b
	inc a                                            ; $4d80: $3c
	ld d, a                                          ; $4d81: $57
	inc de                                           ; $4d82: $13
	ld [hl], a                                       ; $4d83: $77
	dec sp                                           ; $4d84: $3b
	ccf                                              ; $4d85: $3f
	ld d, d                                          ; $4d86: $52
	ld a, $3d                                        ; $4d87: $3e $3d
	ld c, b                                          ; $4d89: $48
	and b                                            ; $4d8a: $a0
	ld [$a81e], a                                    ; $4d8b: $ea $1e $a8
	ld [hl], d                                       ; $4d8e: $72
	ccf                                              ; $4d8f: $3f
	ccf                                              ; $4d90: $3f
	sub b                                            ; $4d91: $90

jr_08d_4d92:
	ld a, $38                                        ; $4d92: $3e $38
	ld c, d                                          ; $4d94: $4a

jr_08d_4d95:
	ld d, c                                          ; $4d95: $51
	inc a                                            ; $4d96: $3c
	and c                                            ; $4d97: $a1
	ld b, b                                          ; $4d98: $40
	ld c, l                                          ; $4d99: $4d
	ld a, [hl-]                                      ; $4d9a: $3a
	ld d, b                                          ; $4d9b: $50
	jr c, jr_08d_4dd6                                ; $4d9c: $38 $38

	ld c, d                                          ; $4d9e: $4a
	ld d, c                                          ; $4d9f: $51
	and b                                            ; $4da0: $a0

jr_08d_4da1:
	ld b, [hl]                                       ; $4da1: $46
	ld b, c                                          ; $4da2: $41
	ld a, [hl-]                                      ; $4da3: $3a
	sbc d                                            ; $4da4: $9a
	ld a, $3f                                        ; $4da5: $3e $3f
	xor h                                            ; $4da7: $ac
	pop af                                           ; $4da8: $f1
	ld a, [hl-]                                      ; $4da9: $3a
	ld d, l                                          ; $4daa: $55
	ld a, [hl-]                                      ; $4dab: $3a
	jr c, jr_08d_4def                                ; $4dac: $38 $41

	ld c, d                                          ; $4dae: $4a
	ld d, c                                          ; $4daf: $51
	inc a                                            ; $4db0: $3c
	and c                                            ; $4db1: $a1
	cpl                                              ; $4db2: $2f
	add sp, $16                                      ; $4db3: $e8 $16
	add hl, bc                                       ; $4db5: $09
	ld [$a81e], a                                    ; $4db6: $ea $1e $a8
	ld c, d                                          ; $4db9: $4a
	ld c, a                                          ; $4dba: $4f
	inc [hl]                                         ; $4dbb: $34
	pop af                                           ; $4dbc: $f1
	ld a, [hl-]                                      ; $4dbd: $3a
	or [hl]                                          ; $4dbe: $b6
	and b                                            ; $4dbf: $a0
	ld [$3bfb], a                                    ; $4dc0: $ea $fb $3b
	ccf                                              ; $4dc3: $3f
	inc de                                           ; $4dc4: $13
	ld d, c                                          ; $4dc5: $51
	ld [hl], b                                       ; $4dc6: $70
	jr c, jr_08d_4e13                                ; $4dc7: $38 $4a

	ld d, c                                          ; $4dc9: $51
	ld c, h                                          ; $4dca: $4c
	and b                                            ; $4dcb: $a0
	ld e, d                                          ; $4dcc: $5a
	add hl, sp                                       ; $4dcd: $39
	pop af                                           ; $4dce: $f1
	cp e                                             ; $4dcf: $bb
	ld e, [hl]                                       ; $4dd0: $5e
	ld c, [hl]                                       ; $4dd1: $4e
	ld c, c                                          ; $4dd2: $49
	xor h                                            ; $4dd3: $ac
	pop af                                           ; $4dd4: $f1
	ld a, [hl-]                                      ; $4dd5: $3a

jr_08d_4dd6:
	ld d, l                                          ; $4dd6: $55
	ld a, [hl-]                                      ; $4dd7: $3a
	ld d, l                                          ; $4dd8: $55
	ld a, [hl-]                                      ; $4dd9: $3a
	ld c, [hl]                                       ; $4dda: $4e
	ld b, c                                          ; $4ddb: $41
	ld c, d                                          ; $4ddc: $4a
	ld a, $66                                        ; $4ddd: $3e $66
	add hl, sp                                       ; $4ddf: $39
	and c                                            ; $4de0: $a1
	cpl                                              ; $4de1: $2f
	ld [$0963], a                                    ; $4de2: $ea $63 $09
	ld c, d                                          ; $4de5: $4a
	ld c, a                                          ; $4de6: $4f
	inc [hl]                                         ; $4de7: $34
	db $ec                                           ; $4de8: $ec
	dec hl                                           ; $4de9: $2b
	inc de                                           ; $4dea: $13
	pop af                                           ; $4deb: $f1
	ld a, [hl-]                                      ; $4dec: $3a
	ld b, b                                          ; $4ded: $40
	add hl, sp                                       ; $4dee: $39

jr_08d_4def:
	ld a, [hl-]                                      ; $4def: $3a
	ldh a, [$d2]                                     ; $4df0: $f0 $d2
	ld a, $3f                                        ; $4df2: $3e $3f
	ld d, d                                          ; $4df4: $52
	ld d, c                                          ; $4df5: $51
	ld b, l                                          ; $4df6: $45
	and b                                            ; $4df7: $a0
	ldh a, [$d4]                                     ; $4df8: $f0 $d4
	ldh a, [c]                                       ; $4dfa: $f2
	inc hl                                           ; $4dfb: $23
	ld c, d                                          ; $4dfc: $4a
	ld c, a                                          ; $4dfd: $4f
	pop af                                           ; $4dfe: $f1
	inc d                                            ; $4dff: $14
	ld c, l                                          ; $4e00: $4d
	ccf                                              ; $4e01: $3f
	ld a, [hl-]                                      ; $4e02: $3a
	jr c, jr_08d_4e18                                ; $4e03: $38 $13

	di                                               ; $4e05: $f3
	rst $38                                          ; $4e06: $ff
	ld d, a                                          ; $4e07: $57
	inc [hl]                                         ; $4e08: $34
	pop af                                           ; $4e09: $f1
	ld a, [hl-]                                      ; $4e0a: $3a
	jr c, jr_08d_4e56                                ; $4e0b: $38 $49

	ld [hl], a                                       ; $4e0d: $77
	jr c, jr_08d_4e62                                ; $4e0e: $38 $52

	ld d, c                                          ; $4e10: $51
	ld e, l                                          ; $4e11: $5d
	ld e, d                                          ; $4e12: $5a

jr_08d_4e13:
	ld c, b                                          ; $4e13: $48
	and b                                            ; $4e14: $a0
	ld b, b                                          ; $4e15: $40
	ld c, l                                          ; $4e16: $4d
	inc [hl]                                         ; $4e17: $34

jr_08d_4e18:
	adc b                                            ; $4e18: $88
	sub c                                            ; $4e19: $91
	ld a, [hl-]                                      ; $4e1a: $3a
	ld b, c                                          ; $4e1b: $41
	ld c, d                                          ; $4e1c: $4a
	ld d, c                                          ; $4e1d: $51
	inc a                                            ; $4e1e: $3c
	and c                                            ; $4e1f: $a1
	cpl                                              ; $4e20: $2f
	add sp, -$5e                                     ; $4e21: $e8 $a2
	add hl, bc                                       ; $4e23: $09
	ld b, b                                          ; $4e24: $40
	add hl, sp                                       ; $4e25: $39
	ld d, c                                          ; $4e26: $51
	ld c, [hl]                                       ; $4e27: $4e
	ld c, c                                          ; $4e28: $49
	xor h                                            ; $4e29: $ac
	xor $1e                                          ; $4e2a: $ee $1e
	ldh a, [c]                                       ; $4e2c: $f2
	rla                                              ; $4e2d: $17
	ld c, a                                          ; $4e2e: $4f
	push af                                          ; $4e2f: $f5
	sub c                                            ; $4e30: $91
	ldh a, [$2c]                                     ; $4e31: $f0 $2c
	ld c, d                                          ; $4e33: $4a
	ld d, c                                          ; $4e34: $51
	ld c, h                                          ; $4e35: $4c
	and b                                            ; $4e36: $a0
	ld b, b                                          ; $4e37: $40
	ld c, l                                          ; $4e38: $4d
	ld a, [hl-]                                      ; $4e39: $3a
	ld d, b                                          ; $4e3a: $50
	xor h                                            ; $4e3b: $ac
	pop af                                           ; $4e3c: $f1
	ld a, [hl-]                                      ; $4e3d: $3a
	ld d, l                                          ; $4e3e: $55
	ld a, [hl-]                                      ; $4e3f: $3a
	jr c, jr_08d_4e8c                                ; $4e40: $38 $4a

	ld d, c                                          ; $4e42: $51
	ld c, h                                          ; $4e43: $4c
	and b                                            ; $4e44: $a0
	ld [$acd8], a                                    ; $4e45: $ea $d8 $ac
	ld d, c                                          ; $4e48: $51
	ld [hl], b                                       ; $4e49: $70
	ld d, l                                          ; $4e4a: $55
	db $ed                                           ; $4e4b: $ed
	xor h                                            ; $4e4c: $ac
	ld b, h                                          ; $4e4d: $44
	ld c, c                                          ; $4e4e: $49
	inc de                                           ; $4e4f: $13
	ld [hl], a                                       ; $4e50: $77
	jr c, jr_08d_4ea5                                ; $4e51: $38 $52

	ld a, c                                          ; $4e53: $79
	ld b, c                                          ; $4e54: $41
	inc a                                            ; $4e55: $3c

jr_08d_4e56:
	and c                                            ; $4e56: $a1
	cpl                                              ; $4e57: $2f
	ld b, b                                          ; $4e58: $40
	add hl, sp                                       ; $4e59: $39
	ld [hl], a                                       ; $4e5a: $77
	add hl, sp                                       ; $4e5b: $39
	ld e, l                                          ; $4e5c: $5d
	ld e, d                                          ; $4e5d: $5a
	inc [hl]                                         ; $4e5e: $34
	adc e                                            ; $4e5f: $8b
	ld e, h                                          ; $4e60: $5c
	ld b, h                                          ; $4e61: $44

jr_08d_4e62:
	ld b, l                                          ; $4e62: $45
	add hl, bc                                       ; $4e63: $09
	cp [hl]                                          ; $4e64: $be
	xor b                                            ; $4e65: $a8
	ld c, d                                          ; $4e66: $4a
	ld c, a                                          ; $4e67: $4f
	inc [hl]                                         ; $4e68: $34
	pop af                                           ; $4e69: $f1
	jp nz, $76f0                                     ; $4e6a: $c2 $f0 $76

	ld a, $3d                                        ; $4e6d: $3e $3d
	ld d, a                                          ; $4e6f: $57
	inc de                                           ; $4e70: $13
	ld a, $3a                                        ; $4e71: $3e $3a
	jr c, jr_08d_4ebf                                ; $4e73: $38 $4a

	ld d, l                                          ; $4e75: $55
	ld b, h                                          ; $4e76: $44
	ld e, b                                          ; $4e77: $58
	jr c, jr_08d_4ec6                                ; $4e78: $38 $4c

	and b                                            ; $4e7a: $a0
	db $ec                                           ; $4e7b: $ec
	reti                                             ; $4e7c: $d9


	xor h                                            ; $4e7d: $ac
	ldh a, [$ab]                                     ; $4e7e: $f0 $ab
	ld b, d                                          ; $4e80: $42
	adc h                                            ; $4e81: $8c
	ld c, d                                          ; $4e82: $4a
	ld d, c                                          ; $4e83: $51
	ld c, h                                          ; $4e84: $4c
	and b                                            ; $4e85: $a0
	db $ec                                           ; $4e86: $ec
	reti                                             ; $4e87: $d9


	xor h                                            ; $4e88: $ac
	ld b, b                                          ; $4e89: $40
	add hl, sp                                       ; $4e8a: $39
	add d                                            ; $4e8b: $82

jr_08d_4e8c:
	add hl, sp                                       ; $4e8c: $39
	ld c, c                                          ; $4e8d: $49
	inc de                                           ; $4e8e: $13
	ld [hl], a                                       ; $4e8f: $77
	dec sp                                           ; $4e90: $3b
	ccf                                              ; $4e91: $3f
	ld d, d                                          ; $4e92: $52
	ld a, $3d                                        ; $4e93: $3e $3d
	and b                                            ; $4e95: $a0
	cpl                                              ; $4e96: $2f
	ldh a, [rAUD2ENV]                                ; $4e97: $f0 $17
	ld b, a                                          ; $4e99: $47
	ld c, e                                          ; $4e9a: $4b
	ldh a, [rTAC]                                    ; $4e9b: $f0 $07
	inc a                                            ; $4e9d: $3c
	ld b, c                                          ; $4e9e: $41
	ld a, [hl-]                                      ; $4e9f: $3a
	jr c, jr_08d_4ee7                                ; $4ea0: $38 $45

	add hl, bc                                       ; $4ea2: $09
	ld b, b                                          ; $4ea3: $40
	add hl, sp                                       ; $4ea4: $39

jr_08d_4ea5:
	inc a                                            ; $4ea5: $3c
	ld c, a                                          ; $4ea6: $4f
	ld a, $4d                                        ; $4ea7: $3e $4d
	ld d, d                                          ; $4ea9: $52
	ld a, c                                          ; $4eaa: $79
	ld b, c                                          ; $4eab: $41
	ld e, l                                          ; $4eac: $5d
	ld e, d                                          ; $4ead: $5a
	xor h                                            ; $4eae: $ac
	db $ec                                           ; $4eaf: $ec
	reti                                             ; $4eb0: $d9


	db $ed                                           ; $4eb1: $ed
	xor h                                            ; $4eb2: $ac
	ld b, h                                          ; $4eb3: $44
	ld c, c                                          ; $4eb4: $49
	inc de                                           ; $4eb5: $13
	ld [hl], a                                       ; $4eb6: $77
	jr c, jr_08d_4f0b                                ; $4eb7: $38 $52

	ld d, c                                          ; $4eb9: $51
	and b                                            ; $4eba: $a0
	ld b, b                                          ; $4ebb: $40
	ld b, c                                          ; $4ebc: $41
	ld a, [hl-]                                      ; $4ebd: $3a
	pop af                                           ; $4ebe: $f1

jr_08d_4ebf:
	ld a, a                                          ; $4ebf: $7f
	ld b, a                                          ; $4ec0: $47
	add d                                            ; $4ec1: $82
	ld h, e                                          ; $4ec2: $63
	ld a, [hl-]                                      ; $4ec3: $3a
	ld d, l                                          ; $4ec4: $55
	ccf                                              ; $4ec5: $3f

jr_08d_4ec6:
	ld c, a                                          ; $4ec6: $4f
	inc de                                           ; $4ec7: $13
	jr c, jr_08d_4f02                                ; $4ec8: $38 $38

	ld c, c                                          ; $4eca: $49
	ld [hl], a                                       ; $4ecb: $77
	jr c, jr_08d_4f20                                ; $4ecc: $38 $52

	ld d, c                                          ; $4ece: $51
	and b                                            ; $4ecf: $a0
	or [hl]                                          ; $4ed0: $b6
	xor b                                            ; $4ed1: $a8
	ldh a, [rTAC]                                    ; $4ed2: $f0 $07
	inc a                                            ; $4ed4: $3c
	ld d, a                                          ; $4ed5: $57
	dec a                                            ; $4ed6: $3d
	ld d, l                                          ; $4ed7: $55
	ld a, [hl-]                                      ; $4ed8: $3a
	jr c, jr_08d_4f25                                ; $4ed9: $38 $4a

	ld d, c                                          ; $4edb: $51
	and b                                            ; $4edc: $a0
	cpl                                              ; $4edd: $2f
	ld b, b                                          ; $4ede: $40
	ld b, d                                          ; $4edf: $42
	add hl, sp                                       ; $4ee0: $39
	ld h, c                                          ; $4ee1: $61
	pop af                                           ; $4ee2: $f1
	sbc e                                            ; $4ee3: $9b
	ld c, l                                          ; $4ee4: $4d
	ld c, [hl]                                       ; $4ee5: $4e
	ld b, l                                          ; $4ee6: $45

jr_08d_4ee7:
	add hl, bc                                       ; $4ee7: $09
	rst JumpTable                                          ; $4ee8: $c7
	ld c, d                                          ; $4ee9: $4a
	ld d, c                                          ; $4eea: $51
	inc a                                            ; $4eeb: $3c
	xor c                                            ; $4eec: $a9
	ld b, [hl]                                       ; $4eed: $46
	ld d, d                                          ; $4eee: $52
	ld d, a                                          ; $4eef: $57
	pop af                                           ; $4ef0: $f1
	sbc e                                            ; $4ef1: $9b
	ld c, l                                          ; $4ef2: $4d
	ld c, [hl]                                       ; $4ef3: $4e
	ld b, d                                          ; $4ef4: $42
	ld c, a                                          ; $4ef5: $4f
	xor h                                            ; $4ef6: $ac
	pop af                                           ; $4ef7: $f1
	sbc $57                                          ; $4ef8: $de $57
	ld d, d                                          ; $4efa: $52
	ld d, c                                          ; $4efb: $51
	ld c, h                                          ; $4efc: $4c
	and b                                            ; $4efd: $a0
	ld b, [hl]                                       ; $4efe: $46
	ld d, d                                          ; $4eff: $52
	ld d, a                                          ; $4f00: $57
	pop af                                           ; $4f01: $f1

jr_08d_4f02:
	sbc e                                            ; $4f02: $9b
	ld c, l                                          ; $4f03: $4d
	ld a, [hl-]                                      ; $4f04: $3a
	ld d, l                                          ; $4f05: $55
	ccf                                              ; $4f06: $3f
	ld c, a                                          ; $4f07: $4f
	xor h                                            ; $4f08: $ac
	jr c, jr_08d_4f43                                ; $4f09: $38 $38

jr_08d_4f0b:
	ld c, d                                          ; $4f0b: $4a
	ld d, c                                          ; $4f0c: $51
	and b                                            ; $4f0d: $a0
	cp [hl]                                          ; $4f0e: $be
	xor c                                            ; $4f0f: $a9
	ld c, d                                          ; $4f10: $4a
	ld c, a                                          ; $4f11: $4f
	xor h                                            ; $4f12: $ac
	pop af                                           ; $4f13: $f1
	sbc e                                            ; $4f14: $9b
	ld c, l                                          ; $4f15: $4d
	ld a, [hl-]                                      ; $4f16: $3a
	ld d, l                                          ; $4f17: $55
	ccf                                              ; $4f18: $3f
	ld c, a                                          ; $4f19: $4f
	jr c, jr_08d_4f54                                ; $4f1a: $38 $38

	ld c, d                                          ; $4f1c: $4a
	ld d, c                                          ; $4f1d: $51
	and b                                            ; $4f1e: $a0
	ld c, a                                          ; $4f1f: $4f

jr_08d_4f20:
	add hl, sp                                       ; $4f20: $39
	db $ec                                           ; $4f21: $ec
	ld a, $4a                                        ; $4f22: $3e $4a
	ld d, c                                          ; $4f24: $51

jr_08d_4f25:
	ld b, l                                          ; $4f25: $45
	xor b                                            ; $4f26: $a8
	ldh a, [$0a]                                     ; $4f27: $f0 $0a
	ld d, l                                          ; $4f29: $55
	ldh a, [rAUD2HIGH]                               ; $4f2a: $f0 $19
	ld b, a                                          ; $4f2c: $47
	sub [hl]                                         ; $4f2d: $96
	ld d, a                                          ; $4f2e: $57
	ld d, d                                          ; $4f2f: $52
	ld a, $66                                        ; $4f30: $3e $66
	add hl, sp                                       ; $4f32: $39
	and b                                            ; $4f33: $a0
	cpl                                              ; $4f34: $2f
	ld b, e                                          ; $4f35: $43
	ld b, b                                          ; $4f36: $40
	add hl, sp                                       ; $4f37: $39
	ld b, h                                          ; $4f38: $44
	ld c, h                                          ; $4f39: $4c
	xor b                                            ; $4f3a: $a8
	ldh a, [$0a]                                     ; $4f3b: $f0 $0a
	ld d, l                                          ; $4f3d: $55
	sub [hl]                                         ; $4f3e: $96
	ld e, a                                          ; $4f3f: $5f
	add hl, sp                                       ; $4f40: $39
	and b                                            ; $4f41: $a0
	ld b, [hl]                                       ; $4f42: $46

jr_08d_4f43:
	ld b, b                                          ; $4f43: $40
	ld d, h                                          ; $4f44: $54
	ld d, e                                          ; $4f45: $53
	ldh a, [$c9]                                     ; $4f46: $f0 $c9
	jr c, jr_08d_4f89                                ; $4f48: $38 $3f

	ld c, [hl]                                       ; $4f4a: $4e
	inc de                                           ; $4f4b: $13
	ld l, h                                          ; $4f4c: $6c
	dec a                                            ; $4f4d: $3d
	jr c, jr_08d_4f9a                                ; $4f4e: $38 $4a

	ld d, c                                          ; $4f50: $51
	ld c, h                                          ; $4f51: $4c
	and b                                            ; $4f52: $a0
	cpl                                              ; $4f53: $2f

jr_08d_4f54:
	ld [hl-], a                                      ; $4f54: $32
	db $f4                                           ; $4f55: $f4
	sub e                                            ; $4f56: $93
	ldh a, [rHDMA2]                                  ; $4f57: $f0 $52
	pop af                                           ; $4f59: $f1
	add hl, de                                       ; $4f5a: $19
	pop af                                           ; $4f5b: $f1
	dec c                                            ; $4f5c: $0d
	ldh a, [rSVBK]                                   ; $4f5d: $f0 $70
	ld c, e                                          ; $4f5f: $4b
	inc de                                           ; $4f60: $13
	ldh a, [$5d]                                     ; $4f61: $f0 $5d
	ld h, e                                          ; $4f63: $63
	dec sp                                           ; $4f64: $3b
	dec a                                            ; $4f65: $3d
	ldh a, [$ab]                                     ; $4f66: $f0 $ab
	ld d, e                                          ; $4f68: $53
	di                                               ; $4f69: $f3
	add d                                            ; $4f6a: $82
	add h                                            ; $4f6b: $84
	pop af                                           ; $4f6c: $f1
	jr z, jr_08d_4fb1                                ; $4f6d: $28 $42

	xor h                                            ; $4f6f: $ac
	ldh a, [$08]                                     ; $4f70: $f0 $08
	ld b, d                                          ; $4f72: $42
	pop af                                           ; $4f73: $f1
	halt                                             ; $4f74: $76
	ld b, d                                          ; $4f75: $42
	ld [$44c1], a                                    ; $4f76: $ea $c1 $44
	and e                                            ; $4f79: $a3
	cpl                                              ; $4f7a: $2f
	add sp, -$75                                     ; $4f7b: $e8 $8b
	and c                                            ; $4f7d: $a1
	ld d, c                                          ; $4f7e: $51
	ld [hl], b                                       ; $4f7f: $70
	ld d, l                                          ; $4f80: $55
	cp e                                             ; $4f81: $bb
	inc de                                           ; $4f82: $13
	ld c, d                                          ; $4f83: $4a
	ld d, c                                          ; $4f84: $51
	ld c, h                                          ; $4f85: $4c
	xor b                                            ; $4f86: $a8
	ld b, b                                          ; $4f87: $40
	ld c, l                                          ; $4f88: $4d

jr_08d_4f89:
	ld b, a                                          ; $4f89: $47
	ld c, b                                          ; $4f8a: $48
	inc [hl]                                         ; $4f8b: $34
	xor $1e                                          ; $4f8c: $ee $1e

jr_08d_4f8e:
	xor l                                            ; $4f8e: $ad
	xor $06                                          ; $4f8f: $ee $06
	ld b, h                                          ; $4f91: $44
	dec sp                                           ; $4f92: $3b
	dec a                                            ; $4f93: $3d
	inc a                                            ; $4f94: $3c
	ld d, b                                          ; $4f95: $50
	ld c, b                                          ; $4f96: $48
	and b                                            ; $4f97: $a0
	ldh a, [rAUD4ENV]                                ; $4f98: $f0 $21

jr_08d_4f9a:
	ldh a, [rAUD4GO]                                 ; $4f9a: $f0 $23
	jr c, jr_08d_4f8e                                ; $4f9c: $38 $f0

	ld [hl], h                                       ; $4f9e: $74
	ldh a, [$7a]                                     ; $4f9f: $f0 $7a
	ld c, d                                          ; $4fa1: $4a
	ld a, $3d                                        ; $4fa2: $3e $3d
	ld c, h                                          ; $4fa4: $4c
	xor b                                            ; $4fa5: $a8
	db $ed                                           ; $4fa6: $ed
	ld h, l                                          ; $4fa7: $65
	ld a, $52                                        ; $4fa8: $3e $52
	ld a, $3d                                        ; $4faa: $3e $3d
	and b                                            ; $4fac: $a0
	ld d, c                                          ; $4fad: $51
	ld [hl], b                                       ; $4fae: $70
	ld d, l                                          ; $4faf: $55
	cp e                                             ; $4fb0: $bb

jr_08d_4fb1:
	inc de                                           ; $4fb1: $13
	ld c, d                                          ; $4fb2: $4a
	ld d, c                                          ; $4fb3: $51
	ld c, h                                          ; $4fb4: $4c
	and b                                            ; $4fb5: $a0
	cpl                                              ; $4fb6: $2f
	add sp, $2c                                      ; $4fb7: $e8 $2c
	and c                                            ; $4fb9: $a1
	rst JumpTable                                          ; $4fba: $c7
	ld c, d                                          ; $4fbb: $4a
	ld d, c                                          ; $4fbc: $51
	inc a                                            ; $4fbd: $3c
	ld c, b                                          ; $4fbe: $48
	dec [hl]                                         ; $4fbf: $35
	rla                                              ; $4fc0: $17
	ld l, a                                          ; $4fc1: $6f
	ld c, e                                          ; $4fc2: $4b
	inc [hl]                                         ; $4fc3: $34
	adc e                                            ; $4fc4: $8b
	ld e, h                                          ; $4fc5: $5c
	ld a, [hl-]                                      ; $4fc6: $3a
	ld b, c                                          ; $4fc7: $41
	ld c, d                                          ; $4fc8: $4a

jr_08d_4fc9:
	ld d, c                                          ; $4fc9: $51
	inc de                                           ; $4fca: $13
	ld e, l                                          ; $4fcb: $5d
	ld c, l                                          ; $4fcc: $4d
	ld e, d                                          ; $4fcd: $5a
	ld c, b                                          ; $4fce: $48
	and b                                            ; $4fcf: $a0
	ld l, a                                          ; $4fd0: $6f
	ld c, e                                          ; $4fd1: $4b
	inc [hl]                                         ; $4fd2: $34
	ldh a, [rAUD4ENV]                                ; $4fd3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4fd5: $f0 $23
	jr c, jr_08d_4fc9                                ; $4fd7: $38 $f0

	ld [hl], h                                       ; $4fd9: $74
	ldh a, [$7a]                                     ; $4fda: $f0 $7a
	ld b, h                                          ; $4fdc: $44
	ld c, c                                          ; $4fdd: $49
	inc de                                           ; $4fde: $13
	ld [hl], a                                       ; $4fdf: $77
	jr c, jr_08d_5034                                ; $4fe0: $38 $52

	ld a, $3d                                        ; $4fe2: $3e $3d
	ld e, l                                          ; $4fe4: $5d
	ld e, d                                          ; $4fe5: $5a
	xor l                                            ; $4fe6: $ad
	ldh a, [$64]                                     ; $4fe7: $f0 $64
	jr c, jr_08d_5025                                ; $4fe9: $38 $3a

	ld b, c                                          ; $4feb: $41
	ld c, d                                          ; $4fec: $4a
	ld d, c                                          ; $4fed: $51

jr_08d_4fee:
	ld c, h                                          ; $4fee: $4c
	ld c, b                                          ; $4fef: $48
	and b                                            ; $4ff0: $a0
	cp [hl]                                          ; $4ff1: $be
	ld c, b                                          ; $4ff2: $48
	dec [hl]                                         ; $4ff3: $35
	rla                                              ; $4ff4: $17
	ld l, a                                          ; $4ff5: $6f
	ld c, e                                          ; $4ff6: $4b
	inc [hl]                                         ; $4ff7: $34
	ldh a, [rAUD4ENV]                                ; $4ff8: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4ffa: $f0 $23
	jr c, jr_08d_4fee                                ; $4ffc: $38 $f0

	ld [hl], h                                       ; $4ffe: $74
	ldh a, [$7a]                                     ; $4fff: $f0 $7a
	ld b, h                                          ; $5001: $44
	ld c, c                                          ; $5002: $49
	inc de                                           ; $5003: $13
	ld [hl], a                                       ; $5004: $77
	jr c, jr_08d_5059                                ; $5005: $38 $52

	ld a, $3d                                        ; $5007: $3e $3d
	ld e, l                                          ; $5009: $5d
	ld e, d                                          ; $500a: $5a
	ld c, b                                          ; $500b: $48
	and b                                            ; $500c: $a0
	cpl                                              ; $500d: $2f
	add sp, $2d                                      ; $500e: $e8 $2d
	and c                                            ; $5010: $a1
	ld l, a                                          ; $5011: $6f
	ld c, e                                          ; $5012: $4b
	inc [hl]                                         ; $5013: $34
	ld h, e                                          ; $5014: $63
	ld d, a                                          ; $5015: $57
	ld c, c                                          ; $5016: $49
	jr c, jr_08d_5051                                ; $5017: $38 $38

	ld c, c                                          ; $5019: $49
	inc de                                           ; $501a: $13
	ld [hl], a                                       ; $501b: $77
	jr c, jr_08d_5070                                ; $501c: $38 $52

	ld a, $3d                                        ; $501e: $3e $3d
	ld e, l                                          ; $5020: $5d
	ld e, d                                          ; $5021: $5a
	xor l                                            ; $5022: $ad
	xor $06                                          ; $5023: $ee $06

jr_08d_5025:
	ld c, d                                          ; $5025: $4a
	ld a, $3d                                        ; $5026: $3e $3d
	ld a, $48                                        ; $5028: $3e $48
	and b                                            ; $502a: $a0
	cp [hl]                                          ; $502b: $be
	ld c, b                                          ; $502c: $48
	dec [hl]                                         ; $502d: $35
	rla                                              ; $502e: $17
	ld c, d                                          ; $502f: $4a
	ld c, a                                          ; $5030: $4f
	inc [hl]                                         ; $5031: $34
	ld l, a                                          ; $5032: $6f
	ld c, e                                          ; $5033: $4b

jr_08d_5034:
	ldh a, [rAUD4ENV]                                ; $5034: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5036: $f0 $23
	jr c, jr_08d_5083                                ; $5038: $38 $49

	inc de                                           ; $503a: $13
	ld [hl], a                                       ; $503b: $77
	jr c, jr_08d_5090                                ; $503c: $38 $52

	ld a, $3d                                        ; $503e: $3e $3d
	and b                                            ; $5040: $a0
	ld l, a                                          ; $5041: $6f
	ld c, e                                          ; $5042: $4b
	inc [hl]                                         ; $5043: $34
	ldh a, [rAUD4ENV]                                ; $5044: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5046: $f0 $23
	jr c, jr_08d_5093                                ; $5048: $38 $49

	inc de                                           ; $504a: $13
	ld [hl], a                                       ; $504b: $77
	jr c, jr_08d_50a0                                ; $504c: $38 $52

	ld a, $3d                                        ; $504e: $3e $3d
	ld e, l                                          ; $5050: $5d

jr_08d_5051:
	ld e, d                                          ; $5051: $5a
	ld c, b                                          ; $5052: $48
	and b                                            ; $5053: $a0
	rst JumpTable                                          ; $5054: $c7
	ld c, d                                          ; $5055: $4a
	ld d, c                                          ; $5056: $51
	ld c, h                                          ; $5057: $4c
	ld c, b                                          ; $5058: $48

jr_08d_5059:
	dec [hl]                                         ; $5059: $35
	rla                                              ; $505a: $17
	xor $06                                          ; $505b: $ee $06
	ld b, a                                          ; $505d: $47
	ld [hl], d                                       ; $505e: $72
	ld c, l                                          ; $505f: $4d
	dec a                                            ; $5060: $3d
	ld b, d                                          ; $5061: $42
	ld d, e                                          ; $5062: $53
	xor h                                            ; $5063: $ac
	db $ec                                           ; $5064: $ec
	cp c                                             ; $5065: $b9
	ld c, d                                          ; $5066: $4a
	ld d, c                                          ; $5067: $51
	and b                                            ; $5068: $a0
	ld l, a                                          ; $5069: $6f
	inc [hl]                                         ; $506a: $34
	ld h, e                                          ; $506b: $63
	ld d, a                                          ; $506c: $57
	ld c, c                                          ; $506d: $49
	inc de                                           ; $506e: $13
	db $ed                                           ; $506f: $ed

jr_08d_5070:
	ld h, l                                          ; $5070: $65
	ld c, d                                          ; $5071: $4a
	ld e, h                                          ; $5072: $5c
	ld c, [hl]                                       ; $5073: $4e
	ldh a, [$74]                                     ; $5074: $f0 $74
	ldh a, [$7a]                                     ; $5076: $f0 $7a
	ld d, e                                          ; $5078: $53
	inc de                                           ; $5079: $13
	adc e                                            ; $507a: $8b
	ld e, h                                          ; $507b: $5c
	ld a, [hl-]                                      ; $507c: $3a
	ld b, c                                          ; $507d: $41
	ld c, d                                          ; $507e: $4a
	ld d, c                                          ; $507f: $51
	ld c, b                                          ; $5080: $48
	and b                                            ; $5081: $a0
	cp [hl]                                          ; $5082: $be

jr_08d_5083:
	ld c, b                                          ; $5083: $48
	dec [hl]                                         ; $5084: $35
	rla                                              ; $5085: $17
	ld l, a                                          ; $5086: $6f
	ld c, e                                          ; $5087: $4b
	inc [hl]                                         ; $5088: $34
	db $ed                                           ; $5089: $ed
	ld h, l                                          ; $508a: $65
	ld c, d                                          ; $508b: $4a
	ld e, h                                          ; $508c: $5c
	ld c, [hl]                                       ; $508d: $4e
	ldh a, [$74]                                     ; $508e: $f0 $74

jr_08d_5090:
	ldh a, [$7a]                                     ; $5090: $f0 $7a
	ld d, e                                          ; $5092: $53

jr_08d_5093:
	inc de                                           ; $5093: $13
	adc e                                            ; $5094: $8b
	ld e, h                                          ; $5095: $5c
	ld c, d                                          ; $5096: $4a
	ld d, c                                          ; $5097: $51
	ld e, l                                          ; $5098: $5d
	ld e, d                                          ; $5099: $5a
	ld c, b                                          ; $509a: $48
	and b                                            ; $509b: $a0
	db $ec                                           ; $509c: $ec
	cp c                                             ; $509d: $b9
	dec [hl]                                         ; $509e: $35
	rla                                              ; $509f: $17

jr_08d_50a0:
	ldh a, [$31]                                     ; $50a0: $f0 $31
	ld c, e                                          ; $50a2: $4b
	ld l, a                                          ; $50a3: $6f
	ld c, a                                          ; $50a4: $4f
	xor h                                            ; $50a5: $ac
	ld b, b                                          ; $50a6: $40
	add hl, sp                                       ; $50a7: $39
	ld [hl], a                                       ; $50a8: $77
	dec sp                                           ; $50a9: $3b
	ccf                                              ; $50aa: $3f
	dec a                                            ; $50ab: $3d
	ld b, c                                          ; $50ac: $41
	ld c, d                                          ; $50ad: $4a
	ld d, c                                          ; $50ae: $51
	and b                                            ; $50af: $a0
	jp hl                                            ; $50b0: $e9


	ld [hl], e                                       ; $50b1: $73
	dec [hl]                                         ; $50b2: $35
	rla                                              ; $50b3: $17
	ld c, a                                          ; $50b4: $4f
	dec sp                                           ; $50b5: $3b
	ld c, c                                          ; $50b6: $49
	db $ed                                           ; $50b7: $ed
	ld h, l                                          ; $50b8: $65
	sub h                                            ; $50b9: $94
	ld a, b                                          ; $50ba: $78
	ld c, [hl]                                       ; $50bb: $4e
	ldh a, [$74]                                     ; $50bc: $f0 $74
	ldh a, [$7a]                                     ; $50be: $f0 $7a
	ld b, d                                          ; $50c0: $42
	ldh a, [$38]                                     ; $50c1: $f0 $38
	ld d, e                                          ; $50c3: $53
	inc de                                           ; $50c4: $13
	jr c, jr_08d_50ff                                ; $50c5: $38 $38

	ld c, d                                          ; $50c7: $4a
	ld d, c                                          ; $50c8: $51
	ld b, l                                          ; $50c9: $45
	ld c, h                                          ; $50ca: $4c
	and b                                            ; $50cb: $a0
	jp hl                                            ; $50cc: $e9


	ld [hl], e                                       ; $50cd: $73
	and b                                            ; $50ce: $a0
	or [hl]                                          ; $50cf: $b6
	dec [hl]                                         ; $50d0: $35
	rla                                              ; $50d1: $17
	ld c, d                                          ; $50d2: $4a
	ld c, a                                          ; $50d3: $4f
	inc [hl]                                         ; $50d4: $34
	ld b, [hl]                                       ; $50d5: $46
	ld d, d                                          ; $50d6: $52
	ld d, a                                          ; $50d7: $57
	adc e                                            ; $50d8: $8b
	ld e, h                                          ; $50d9: $5c
	ld a, [hl-]                                      ; $50da: $3a
	ldh a, [$38]                                     ; $50db: $f0 $38
	ld c, d                                          ; $50dd: $4a
	ld c, e                                          ; $50de: $4b
	inc de                                           ; $50df: $13
	ld a, [hl-]                                      ; $50e0: $3a
	jr c, @+$4c                                      ; $50e1: $38 $4a

	ld d, c                                          ; $50e3: $51
	ld c, h                                          ; $50e4: $4c
	and b                                            ; $50e5: $a0
	ld l, a                                          ; $50e6: $6f
	ld c, e                                          ; $50e7: $4b
	inc [hl]                                         ; $50e8: $34
	ld e, d                                          ; $50e9: $5a
	ld h, c                                          ; $50ea: $61
	ld d, b                                          ; $50eb: $50
	inc a                                            ; $50ec: $3c
	ld c, c                                          ; $50ed: $49
	add d                                            ; $50ee: $82
	add hl, sp                                       ; $50ef: $39
	inc de                                           ; $50f0: $13
	ld c, c                                          ; $50f1: $49
	inc [hl]                                         ; $50f2: $34
	adc e                                            ; $50f3: $8b
	ld e, h                                          ; $50f4: $5c
	ld a, [hl-]                                      ; $50f5: $3a
	ldh a, [$38]                                     ; $50f6: $f0 $38
	db $ec                                           ; $50f8: $ec
	ret c                                            ; $50f9: $d8

	ld c, d                                          ; $50fa: $4a
	ld d, c                                          ; $50fb: $51
	ld c, h                                          ; $50fc: $4c
	and b                                            ; $50fd: $a0
	ld l, a                                          ; $50fe: $6f

jr_08d_50ff:
	ld c, e                                          ; $50ff: $4b
	ld b, [hl]                                       ; $5100: $46
	ld d, d                                          ; $5101: $52
	ld d, a                                          ; $5102: $57
	adc e                                            ; $5103: $8b
	ld e, h                                          ; $5104: $5c
	ld c, d                                          ; $5105: $4a
	ld c, e                                          ; $5106: $4b
	xor h                                            ; $5107: $ac
	ld a, [hl-]                                      ; $5108: $3a
	jr c, jr_08d_5155                                ; $5109: $38 $4a

	ld d, c                                          ; $510b: $51
	ld e, l                                          ; $510c: $5d
	ld e, d                                          ; $510d: $5a
	xor h                                            ; $510e: $ac
	db $ed                                           ; $510f: $ed
	inc d                                            ; $5110: $14
	add e                                            ; $5111: $83
	ld a, [hl-]                                      ; $5112: $3a
	ld d, b                                          ; $5113: $50
	ld c, b                                          ; $5114: $48
	and b                                            ; $5115: $a0
	or [hl]                                          ; $5116: $b6
	ld c, b                                          ; $5117: $48
	dec [hl]                                         ; $5118: $35
	rla                                              ; $5119: $17
	xor $06                                          ; $511a: $ee $06
	ld b, a                                          ; $511c: $47
	ld [hl], d                                       ; $511d: $72
	ld c, l                                          ; $511e: $4d
	dec a                                            ; $511f: $3d
	ld b, d                                          ; $5120: $42
	ld d, e                                          ; $5121: $53
	xor h                                            ; $5122: $ac
	db $ec                                           ; $5123: $ec
	cp c                                             ; $5124: $b9
	ld c, d                                          ; $5125: $4a
	ld d, c                                          ; $5126: $51
	and b                                            ; $5127: $a0
	or [hl]                                          ; $5128: $b6
	xor b                                            ; $5129: $a8
	ld l, a                                          ; $512a: $6f
	ld c, a                                          ; $512b: $4f
	ldh a, [$64]                                     ; $512c: $f0 $64
	jr c, jr_08d_517a                                ; $512e: $38 $4a

	ld c, e                                          ; $5130: $4b
	ld a, [hl-]                                      ; $5131: $3a
	jr c, jr_08d_517e                                ; $5132: $38 $4a

	ld d, c                                          ; $5134: $51
	and b                                            ; $5135: $a0
	ld c, a                                          ; $5136: $4f
	add hl, sp                                       ; $5137: $39
	ldh a, [rHDMA4]                                  ; $5138: $f0 $54
	ld a, $34                                        ; $513a: $3e $34
	ldh a, [rVBK]                                    ; $513c: $f0 $4f
	ld b, a                                          ; $513e: $47
	ldh a, [$8d]                                     ; $513f: $f0 $8d
	ld c, [hl]                                       ; $5141: $4e
	inc de                                           ; $5142: $13
	ld h, h                                          ; $5143: $64
	ldh a, [rAUDVOL]                                 ; $5144: $f0 $24
	ld d, e                                          ; $5146: $53
	adc e                                            ; $5147: $8b
	ld e, h                                          ; $5148: $5c
	ld c, d                                          ; $5149: $4a
	ld d, c                                          ; $514a: $51
	ld c, h                                          ; $514b: $4c
	ld c, b                                          ; $514c: $48
	and b                                            ; $514d: $a0
	or [hl]                                          ; $514e: $b6
	ld c, b                                          ; $514f: $48
	dec [hl]                                         ; $5150: $35
	rla                                              ; $5151: $17
	ld c, d                                          ; $5152: $4a
	ld c, a                                          ; $5153: $4f
	inc [hl]                                         ; $5154: $34

jr_08d_5155:
	xor $06                                          ; $5155: $ee $06
	ld b, a                                          ; $5157: $47
	inc de                                           ; $5158: $13
	ld [hl], d                                       ; $5159: $72
	ld c, l                                          ; $515a: $4d
	ld d, d                                          ; $515b: $52
	ld a, $3d                                        ; $515c: $3e $3d
	inc a                                            ; $515e: $3c
	ld d, b                                          ; $515f: $50
	ld c, b                                          ; $5160: $48
	and b                                            ; $5161: $a0
	or [hl]                                          ; $5162: $b6
	xor b                                            ; $5163: $a8
	ld l, a                                          ; $5164: $6f
	ld c, a                                          ; $5165: $4f
	adc e                                            ; $5166: $8b
	ld e, h                                          ; $5167: $5c
	ld c, d                                          ; $5168: $4a
	ld c, e                                          ; $5169: $4b
	ld a, [hl-]                                      ; $516a: $3a
	jr c, jr_08d_51b7                                ; $516b: $38 $4a

	ld d, c                                          ; $516d: $51
	and b                                            ; $516e: $a0
	ld b, b                                          ; $516f: $40
	ld b, c                                          ; $5170: $41
	ld a, [hl-]                                      ; $5171: $3a
	ld b, a                                          ; $5172: $47
	ldh a, [$5c]                                     ; $5173: $f0 $5c
	jr c, jr_08d_51c0                                ; $5175: $38 $49

	ld c, a                                          ; $5177: $4f
	xor h                                            ; $5178: $ac
	ld [hl], a                                       ; $5179: $77

jr_08d_517a:
	ld e, [hl]                                       ; $517a: $5e
	ld a, [hl-]                                      ; $517b: $3a
	inc a                                            ; $517c: $3c
	dec sp                                           ; $517d: $3b

jr_08d_517e:
	dec a                                            ; $517e: $3d
	ld c, d                                          ; $517f: $4a
	ld d, c                                          ; $5180: $51
	ld e, l                                          ; $5181: $5d
	ld e, d                                          ; $5182: $5a
	ld c, b                                          ; $5183: $48
	and b                                            ; $5184: $a0
	db $ec                                           ; $5185: $ec
	cp c                                             ; $5186: $b9
	xor b                                            ; $5187: $a8
	ld l, a                                          ; $5188: $6f
	ld c, c                                          ; $5189: $49
	ldh a, [$cd]                                     ; $518a: $f0 $cd
	ld e, e                                          ; $518c: $5b
	db $ed                                           ; $518d: $ed
	pop bc                                           ; $518e: $c1
	ld c, d                                          ; $518f: $4a
	ld d, c                                          ; $5190: $51
	ld c, h                                          ; $5191: $4c
	and b                                            ; $5192: $a0
	or [hl]                                          ; $5193: $b6
	xor b                                            ; $5194: $a8
	ld l, a                                          ; $5195: $6f
	ld c, a                                          ; $5196: $4f
	ld b, b                                          ; $5197: $40
	add hl, sp                                       ; $5198: $39
	ld [hl], a                                       ; $5199: $77
	jr c, jr_08d_51ee                                ; $519a: $38 $52

	ld d, c                                          ; $519c: $51
	ld c, b                                          ; $519d: $48
	and b                                            ; $519e: $a0
	ld d, l                                          ; $519f: $55
	ld d, c                                          ; $51a0: $51
	ld b, c                                          ; $51a1: $41
	ld c, b                                          ; $51a2: $48
	and b                                            ; $51a3: $a0
	cpl                                              ; $51a4: $2f
	ld [hl-], a                                      ; $51a5: $32
	ld b, c                                          ; $51a6: $41
	xor c                                            ; $51a7: $a9
	db $ec                                           ; $51a8: $ec
	rst SubAFromDE                                          ; $51a9: $df
	ldh a, [c]                                       ; $51aa: $f2
	adc c                                            ; $51ab: $89
	jr c, jr_08d_51ed                                ; $51ac: $38 $3f

	ld c, [hl]                                       ; $51ae: $4e
	ld b, d                                          ; $51af: $42
	inc a                                            ; $51b0: $3c
	ld [hl], $33                                     ; $51b1: $36 $33
	add hl, bc                                       ; $51b3: $09
	ld d, l                                          ; $51b4: $55
	ld d, c                                          ; $51b5: $51
	ld b, c                                          ; $51b6: $41

jr_08d_51b7:
	xor l                                            ; $51b7: $ad
	db $ed                                           ; $51b8: $ed
	dec bc                                           ; $51b9: $0b
	ld c, b                                          ; $51ba: $48
	and b                                            ; $51bb: $a0
	cpl                                              ; $51bc: $2f
	ld [hl-], a                                      ; $51bd: $32
	db $ec                                           ; $51be: $ec
	rst SubAFromDE                                          ; $51bf: $df

jr_08d_51c0:
	ccf                                              ; $51c0: $3f
	inc [hl]                                         ; $51c1: $34
	ldh a, [$78]                                     ; $51c2: $f0 $78
	or $ab                                           ; $51c4: $f6 $ab
	ld h, d                                          ; $51c6: $62
	inc de                                           ; $51c7: $13
	pop af                                           ; $51c8: $f1
	ld c, d                                          ; $51c9: $4a
	ld e, l                                          ; $51ca: $5d
	ld l, [hl]                                       ; $51cb: $6e
	ld d, c                                          ; $51cc: $51
	jr c, jr_08d_5210                                ; $51cd: $38 $41

	ld b, h                                          ; $51cf: $44
	ld a, [hl-]                                      ; $51d0: $3a
	ld c, b                                          ; $51d1: $48
	and e                                            ; $51d2: $a3
	cpl                                              ; $51d3: $2f
	push af                                          ; $51d4: $f5
	ld [hl], c                                       ; $51d5: $71
	add sp, -$2b                                     ; $51d6: $e8 $d5
	xor h                                            ; $51d8: $ac
	adc b                                            ; $51d9: $88
	ld l, b                                          ; $51da: $68
	ld b, d                                          ; $51db: $42
	ldh a, [$3e]                                     ; $51dc: $f0 $3e
	ldh a, [$74]                                     ; $51de: $f0 $74
	ld h, d                                          ; $51e0: $62
	inc de                                           ; $51e1: $13
	ldh a, [$ce]                                     ; $51e2: $f0 $ce
	ldh a, [c]                                       ; $51e4: $f2
	ld e, b                                          ; $51e5: $58
	jr c, @+$3f                                      ; $51e6: $38 $3d

	ld a, $52                                        ; $51e8: $3e $52
	ld d, c                                          ; $51ea: $51
	and b                                            ; $51eb: $a0
	ld l, d                                          ; $51ec: $6a

jr_08d_51ed:
	ld b, d                                          ; $51ed: $42

jr_08d_51ee:
	ldh a, [$74]                                     ; $51ee: $f0 $74
	ldh a, [$7a]                                     ; $51f0: $f0 $7a
	xor h                                            ; $51f2: $ac
	ld c, c                                          ; $51f3: $49
	ccf                                              ; $51f4: $3f
	ld c, a                                          ; $51f5: $4f
	db $ec                                           ; $51f6: $ec
	cp c                                             ; $51f7: $b9
	ld c, d                                          ; $51f8: $4a
	ld d, c                                          ; $51f9: $51
	ld c, h                                          ; $51fa: $4c
	and b                                            ; $51fb: $a0
	cpl                                              ; $51fc: $2f
	ld b, e                                          ; $51fd: $43
	db $ec                                           ; $51fe: $ec
	ld bc, $ec34                                     ; $51ff: $01 $34 $ec
	rst SubAFromDE                                          ; $5202: $df
	xor b                                            ; $5203: $a8
	db $ed                                           ; $5204: $ed
	xor l                                            ; $5205: $ad
	ld c, d                                          ; $5206: $4a
	ldh a, [c]                                       ; $5207: $f2
	adc c                                            ; $5208: $89
	jr c, jr_08d_524a                                ; $5209: $38 $3f

	dec a                                            ; $520b: $3d
	ld c, d                                          ; $520c: $4a
	ld a, $66                                        ; $520d: $3e $66
	add hl, sp                                       ; $520f: $39

jr_08d_5210:
	and b                                            ; $5210: $a0
	ld e, [hl]                                       ; $5211: $5e
	dec sp                                           ; $5212: $3b
	xor l                                            ; $5213: $ad
	ld [hl], d                                       ; $5214: $72
	ccf                                              ; $5215: $3f
	dec a                                            ; $5216: $3d
	ld b, c                                          ; $5217: $41
	ld c, d                                          ; $5218: $4a
	ld d, c                                          ; $5219: $51
	inc a                                            ; $521a: $3c
	xor c                                            ; $521b: $a9
	db $eb                                           ; $521c: $eb
	ld c, a                                          ; $521d: $4f
	ld c, b                                          ; $521e: $48
	and b                                            ; $521f: $a0
	cpl                                              ; $5220: $2f
	ld b, e                                          ; $5221: $43
	db $ed                                           ; $5222: $ed
	call nz, $f062                                   ; $5223: $c4 $62 $f0
	ldh a, [$3e]                                     ; $5226: $f0 $3e
	dec a                                            ; $5228: $3d
	ldh a, [$d2]                                     ; $5229: $f0 $d2
	xor h                                            ; $522b: $ac
	ldh a, [$8a]                                     ; $522c: $f0 $8a
	ldh a, [rHDMA2]                                  ; $522e: $f0 $52
	inc a                                            ; $5230: $3c
	dec sp                                           ; $5231: $3b
	dec a                                            ; $5232: $3d
	ld b, l                                          ; $5233: $45
	and b                                            ; $5234: $a0
	ld b, b                                          ; $5235: $40
	ld b, c                                          ; $5236: $41
	ld a, [hl-]                                      ; $5237: $3a
	xor h                                            ; $5238: $ac
	ldh a, [$8a]                                     ; $5239: $f0 $8a
	ldh a, [rHDMA2]                                  ; $523b: $f0 $52
	jr c, jr_08d_5283                                ; $523d: $38 $44

	ld a, [hl-]                                      ; $523f: $3a
	ld b, c                                          ; $5240: $41
	ccf                                              ; $5241: $3f
	xor l                                            ; $5242: $ad
	ld l, a                                          ; $5243: $6f
	ld c, b                                          ; $5244: $48
	inc [hl]                                         ; $5245: $34
	db $ed                                           ; $5246: $ed
	call nz, $3e62                                   ; $5247: $c4 $62 $3e

jr_08d_524a:
	ccf                                              ; $524a: $3f
	ld a, [hl-]                                      ; $524b: $3a
	jr c, @-$0e                                      ; $524c: $38 $f0

	ld [$5339], sp                                   ; $524e: $08 $39 $53
	inc de                                           ; $5251: $13
	jr c, jr_08d_528c                                ; $5252: $38 $38

	ld c, d                                          ; $5254: $4a
	ld d, c                                          ; $5255: $51
	inc a                                            ; $5256: $3c
	and c                                            ; $5257: $a1
	cpl                                              ; $5258: $2f
	ld b, b                                          ; $5259: $40
	add hl, sp                                       ; $525a: $39
	ld b, h                                          ; $525b: $44
	ld c, h                                          ; $525c: $4c
	dec [hl]                                         ; $525d: $35
	pop af                                           ; $525e: $f1
	rra                                              ; $525f: $1f

jr_08d_5260:
	ld d, e                                          ; $5260: $53
	jr c, jr_08d_529b                                ; $5261: $38 $38

	inc a                                            ; $5263: $3c
	ld d, b                                          ; $5264: $50
	ld c, h                                          ; $5265: $4c
	add hl, bc                                       ; $5266: $09
	cp [hl]                                          ; $5267: $be
	ld c, b                                          ; $5268: $48
	and b                                            ; $5269: $a0
	cpl                                              ; $526a: $2f
	ld b, e                                          ; $526b: $43
	ld [hl], a                                       ; $526c: $77
	jr c, jr_08d_5260                                ; $526d: $38 $f1

	inc d                                            ; $526f: $14
	dec sp                                           ; $5270: $3b
	ccf                                              ; $5271: $3f
	xor h                                            ; $5272: $ac
	db $eb                                           ; $5273: $eb
	call nc, $3e47                                   ; $5274: $d4 $47 $3e
	ccf                                              ; $5277: $3f
	ld l, h                                          ; $5278: $6c
	dec a                                            ; $5279: $3d
	ld d, b                                          ; $527a: $50
	xor c                                            ; $527b: $a9
	ld l, h                                          ; $527c: $6c
	ld b, c                                          ; $527d: $41
	ld a, [hl-]                                      ; $527e: $3a
	db $ec                                           ; $527f: $ec
	ld de, $4e51                                     ; $5280: $11 $51 $4e

jr_08d_5283:
	ld b, l                                          ; $5283: $45
	and b                                            ; $5284: $a0
	db $eb                                           ; $5285: $eb
	call nc, $c94b                                   ; $5286: $d4 $4b $c9
	xor h                                            ; $5289: $ac
	ldh a, [$71]                                     ; $528a: $f0 $71

jr_08d_528c:
	jr c, jr_08d_52d8                                ; $528c: $38 $4a

	ld d, c                                          ; $528e: $51
	inc a                                            ; $528f: $3c
	ld d, b                                          ; $5290: $50
	ld c, b                                          ; $5291: $48
	and b                                            ; $5292: $a0
	cpl                                              ; $5293: $2f
	ld b, e                                          ; $5294: $43
	ld c, d                                          ; $5295: $4a
	ld c, a                                          ; $5296: $4f
	inc [hl]                                         ; $5297: $34
	ld l, d                                          ; $5298: $6a
	ld b, d                                          ; $5299: $42
	ld d, d                                          ; $529a: $52

jr_08d_529b:
	ld d, d                                          ; $529b: $52
	ld c, d                                          ; $529c: $4a
	ld c, a                                          ; $529d: $4f
	xor h                                            ; $529e: $ac
	db $ed                                           ; $529f: $ed

Call_08d_52a0:
	ld [hl], e                                       ; $52a0: $73
	ld b, a                                          ; $52a1: $47
	ldh a, [$8a]                                     ; $52a2: $f0 $8a
	ldh a, [rHDMA2]                                  ; $52a4: $f0 $52
	jr c, jr_08d_52e4                                ; $52a6: $38 $3c

Call_08d_52a8:
	ld d, b                                          ; $52a8: $50
	ld c, b                                          ; $52a9: $48
	and b                                            ; $52aa: $a0
	ld h, h                                          ; $52ab: $64
	db $ed                                           ; $52ac: $ed
	sbc d                                            ; $52ad: $9a
	ld c, d                                          ; $52ae: $4a
	ld c, a                                          ; $52af: $4f
	xor h                                            ; $52b0: $ac
	ldh a, [$29]                                     ; $52b1: $f0 $29
	ld a, $38                                        ; $52b3: $3e $38
	ld c, d                                          ; $52b5: $4a
	ld d, c                                          ; $52b6: $51
	ld c, b                                          ; $52b7: $48
	and b                                            ; $52b8: $a0
	cpl                                              ; $52b9: $2f
	ld b, b                                          ; $52ba: $40
	ld b, c                                          ; $52bb: $41
	ld a, [hl-]                                      ; $52bc: $3a
	sbc d                                            ; $52bd: $9a
	ld c, e                                          ; $52be: $4b
	ld a, [hl-]                                      ; $52bf: $3a
	jr c, jr_08d_5307                                ; $52c0: $38 $45

	add hl, bc                                       ; $52c2: $09
	cp [hl]                                          ; $52c3: $be
	xor c                                            ; $52c4: $a9
	ld h, h                                          ; $52c5: $64
	db $ed                                           ; $52c6: $ed
	sbc d                                            ; $52c7: $9a
	ld c, d                                          ; $52c8: $4a
	ld c, a                                          ; $52c9: $4f
	xor h                                            ; $52ca: $ac
	ldh a, [$29]                                     ; $52cb: $f0 $29
	ld a, $38                                        ; $52cd: $3e $38
	ld c, d                                          ; $52cf: $4a
	ld d, c                                          ; $52d0: $51
	ld c, b                                          ; $52d1: $48
	and b                                            ; $52d2: $a0
	ld b, [hl]                                       ; $52d3: $46
	dec sp                                           ; $52d4: $3b
	inc [hl]                                         ; $52d5: $34
	ld c, a                                          ; $52d6: $4f
	add hl, sp                                       ; $52d7: $39

jr_08d_52d8:
	db $ec                                           ; $52d8: $ec
	ccf                                              ; $52d9: $3f
	inc de                                           ; $52da: $13
	ld c, d                                          ; $52db: $4a
	ld d, c                                          ; $52dc: $51
	dec [hl]                                         ; $52dd: $35
	ldh a, [$0a]                                     ; $52de: $f0 $0a
	ld d, l                                          ; $52e0: $55
	ldh a, [rAUD2HIGH]                               ; $52e1: $f0 $19
	ld b, a                                          ; $52e3: $47

jr_08d_52e4:
	sub [hl]                                         ; $52e4: $96
	ld d, b                                          ; $52e5: $50
	ld a, [hl-]                                      ; $52e6: $3a
	jr c, jr_08d_5332                                ; $52e7: $38 $49

	ld c, b                                          ; $52e9: $48
	and b                                            ; $52ea: $a0
	ld l, a                                          ; $52eb: $6f
	ldh a, [rSTAT]                                   ; $52ec: $f0 $41
	ld b, d                                          ; $52ee: $42
	ldh a, [$e7]                                     ; $52ef: $f0 $e7
	ldh a, [c]                                       ; $52f1: $f2
	ld h, h                                          ; $52f2: $64
	ld c, e                                          ; $52f3: $4b
	ld c, b                                          ; $52f4: $48
	and b                                            ; $52f5: $a0
	cpl                                              ; $52f6: $2f
	ld b, e                                          ; $52f7: $43
	ldh a, [$08]                                     ; $52f8: $f0 $08
	ld d, b                                          ; $52fa: $50
	inc [hl]                                         ; $52fb: $34
	db $ec                                           ; $52fc: $ec
	rst SubAFromDE                                          ; $52fd: $df
	inc de                                           ; $52fe: $13
	db $ec                                           ; $52ff: $ec
	xor $ec                                          ; $5300: $ee $ec
	xor $a0                                          ; $5302: $ee $a0
	cpl                                              ; $5304: $2f
	add sp, -$74                                     ; $5305: $e8 $8c

jr_08d_5307:
	and c                                            ; $5307: $a1
	ld [$1337], a                                    ; $5308: $ea $37 $13
	ld c, d                                          ; $530b: $4a
	ld a, $3d                                        ; $530c: $3e $3d
	xor b                                            ; $530e: $a8
	ld b, b                                          ; $530f: $40
	ld c, l                                          ; $5310: $4d
	ld b, a                                          ; $5311: $47
	ld c, b                                          ; $5312: $48
	inc [hl]                                         ; $5313: $34
	xor $1e                                          ; $5314: $ee $1e
	xor l                                            ; $5316: $ad
	xor $06                                          ; $5317: $ee $06
	ld b, h                                          ; $5319: $44
	dec sp                                           ; $531a: $3b
	dec a                                            ; $531b: $3d
	inc a                                            ; $531c: $3c
	ld d, b                                          ; $531d: $50
	ld c, b                                          ; $531e: $48
	and b                                            ; $531f: $a0
	ld [$1337], a                                    ; $5320: $ea $37 $13
	ld c, d                                          ; $5323: $4a
	ld a, $3d                                        ; $5324: $3e $3d
	ld c, h                                          ; $5326: $4c
	dec [hl]                                         ; $5327: $35
	db $ed                                           ; $5328: $ed
	ld h, l                                          ; $5329: $65
	ld a, $52                                        ; $532a: $3e $52
	ld a, $3d                                        ; $532c: $3e $3d
	and b                                            ; $532e: $a0
	ld d, c                                          ; $532f: $51
	ld [hl], b                                       ; $5330: $70
	ld d, l                                          ; $5331: $55

jr_08d_5332:
	db $ec                                           ; $5332: $ec
	cp c                                             ; $5333: $b9
	ld c, d                                          ; $5334: $4a
	ld d, c                                          ; $5335: $51
	ld c, h                                          ; $5336: $4c
	and b                                            ; $5337: $a0
	cpl                                              ; $5338: $2f
	add sp, $0e                                      ; $5339: $e8 $0e
	and c                                            ; $533b: $a1
	ld l, a                                          ; $533c: $6f
	ld c, e                                          ; $533d: $4b
	inc [hl]                                         ; $533e: $34
	db $eb                                           ; $533f: $eb
	ld d, h                                          ; $5340: $54
	inc de                                           ; $5341: $13
	xor $2b                                          ; $5342: $ee $2b
	ld b, h                                          ; $5344: $44
	ld c, c                                          ; $5345: $49
	ld [hl], a                                       ; $5346: $77
	jr c, jr_08d_539b                                ; $5347: $38 $52

	ld a, $3d                                        ; $5349: $3e $3d
	ld e, l                                          ; $534b: $5d
	ld e, d                                          ; $534c: $5a
	xor l                                            ; $534d: $ad
	ldh a, [$64]                                     ; $534e: $f0 $64
	jr c, jr_08d_538c                                ; $5350: $38 $3a

	ld b, c                                          ; $5352: $41
	ld c, d                                          ; $5353: $4a
	ld d, c                                          ; $5354: $51
	ld c, h                                          ; $5355: $4c
	ld c, b                                          ; $5356: $48
	and b                                            ; $5357: $a0
	cp [hl]                                          ; $5358: $be
	ld c, b                                          ; $5359: $48
	dec [hl]                                         ; $535a: $35
	rla                                              ; $535b: $17
	ld l, a                                          ; $535c: $6f
	ld c, e                                          ; $535d: $4b
	inc [hl]                                         ; $535e: $34
	ld [$4437], a                                    ; $535f: $ea $37 $44
	ld c, c                                          ; $5362: $49
	inc de                                           ; $5363: $13
	ld [hl], a                                       ; $5364: $77
	jr c, jr_08d_53b9                                ; $5365: $38 $52

	ld a, $3d                                        ; $5367: $3e $3d
	ld e, l                                          ; $5369: $5d
	ld e, d                                          ; $536a: $5a
	ld c, b                                          ; $536b: $48
	and b                                            ; $536c: $a0
	cpl                                              ; $536d: $2f
	add sp, $0f                                      ; $536e: $e8 $0f
	and c                                            ; $5370: $a1
	cp [hl]                                          ; $5371: $be
	ld c, b                                          ; $5372: $48
	dec [hl]                                         ; $5373: $35
	rla                                              ; $5374: $17
	ld c, d                                          ; $5375: $4a
	ld c, a                                          ; $5376: $4f
	inc [hl]                                         ; $5377: $34
	ld l, a                                          ; $5378: $6f
	ld c, e                                          ; $5379: $4b
	db $eb                                           ; $537a: $eb
	ld d, h                                          ; $537b: $54
	ld c, c                                          ; $537c: $49
	inc de                                           ; $537d: $13
	ld [hl], a                                       ; $537e: $77
	jr c, jr_08d_53d3                                ; $537f: $38 $52

	ld a, $3d                                        ; $5381: $3e $3d
	and b                                            ; $5383: $a0
	ld l, a                                          ; $5384: $6f
	ld c, e                                          ; $5385: $4b
	inc [hl]                                         ; $5386: $34
	db $eb                                           ; $5387: $eb
	ld d, h                                          ; $5388: $54
	ld c, c                                          ; $5389: $49
	inc de                                           ; $538a: $13
	ld [hl], a                                       ; $538b: $77

jr_08d_538c:
	jr c, jr_08d_53e0                                ; $538c: $38 $52

	ld a, $3d                                        ; $538e: $3e $3d
	ld e, l                                          ; $5390: $5d
	ld e, d                                          ; $5391: $5a
	ld c, b                                          ; $5392: $48
	and b                                            ; $5393: $a0
	rst JumpTable                                          ; $5394: $c7
	ld c, d                                          ; $5395: $4a
	ld d, c                                          ; $5396: $51
	ld c, h                                          ; $5397: $4c
	ld c, b                                          ; $5398: $48
	dec [hl]                                         ; $5399: $35
	rla                                              ; $539a: $17

jr_08d_539b:
	xor $06                                          ; $539b: $ee $06
	ld b, a                                          ; $539d: $47
	pop af                                           ; $539e: $f1
	ld h, [hl]                                       ; $539f: $66
	ld e, l                                          ; $53a0: $5d
	dec a                                            ; $53a1: $3d
	ld b, d                                          ; $53a2: $42
	ld d, e                                          ; $53a3: $53
	xor h                                            ; $53a4: $ac
	db $ec                                           ; $53a5: $ec
	cp c                                             ; $53a6: $b9
	ld c, d                                          ; $53a7: $4a
	ld d, c                                          ; $53a8: $51
	and b                                            ; $53a9: $a0
	ld l, a                                          ; $53aa: $6f
	ld c, e                                          ; $53ab: $4b
	inc [hl]                                         ; $53ac: $34
	db $eb                                           ; $53ad: $eb
	ld h, l                                          ; $53ae: $65
	pop af                                           ; $53af: $f1
	inc bc                                           ; $53b0: $03
	ld a, [hl-]                                      ; $53b1: $3a
	inc de                                           ; $53b2: $13
	ldh a, [$99]                                     ; $53b3: $f0 $99
	sub b                                            ; $53b5: $90
	ld d, e                                          ; $53b6: $53
	adc e                                            ; $53b7: $8b
	ld e, h                                          ; $53b8: $5c

jr_08d_53b9:
	ld c, d                                          ; $53b9: $4a
	ld d, c                                          ; $53ba: $51
	ld e, l                                          ; $53bb: $5d
	ld e, d                                          ; $53bc: $5a
	ld c, b                                          ; $53bd: $48
	and b                                            ; $53be: $a0
	cp [hl]                                          ; $53bf: $be
	ld c, b                                          ; $53c0: $48
	dec [hl]                                         ; $53c1: $35
	rla                                              ; $53c2: $17
	ld l, a                                          ; $53c3: $6f
	ld c, e                                          ; $53c4: $4b
	inc [hl]                                         ; $53c5: $34
	ld [$535a], a                                    ; $53c6: $ea $5a $53
	inc de                                           ; $53c9: $13
	adc e                                            ; $53ca: $8b
	ld e, h                                          ; $53cb: $5c
	ld c, d                                          ; $53cc: $4a
	ld d, c                                          ; $53cd: $51
	ld e, l                                          ; $53ce: $5d
	ld e, d                                          ; $53cf: $5a
	ld c, b                                          ; $53d0: $48
	and b                                            ; $53d1: $a0
	jp hl                                            ; $53d2: $e9


jr_08d_53d3:
	ld [hl], e                                       ; $53d3: $73
	dec [hl]                                         ; $53d4: $35
	rla                                              ; $53d5: $17
	ld c, a                                          ; $53d6: $4f
	dec sp                                           ; $53d7: $3b
	ld c, c                                          ; $53d8: $49
	pop af                                           ; $53d9: $f1
	add c                                            ; $53da: $81
	ld h, c                                          ; $53db: $61
	ldh a, [$ac]                                     ; $53dc: $f0 $ac
	jr c, jr_08d_541d                                ; $53de: $38 $3d

jr_08d_53e0:
	ldh a, [$99]                                     ; $53e0: $f0 $99
	sub b                                            ; $53e2: $90
	ld b, d                                          ; $53e3: $42
	ldh a, [$38]                                     ; $53e4: $f0 $38
	ld d, e                                          ; $53e6: $53
	inc de                                           ; $53e7: $13
	jr c, jr_08d_5422                                ; $53e8: $38 $38

	ld c, d                                          ; $53ea: $4a
	ld d, c                                          ; $53eb: $51
	ld b, l                                          ; $53ec: $45
	ld c, h                                          ; $53ed: $4c
	and b                                            ; $53ee: $a0
	ld l, a                                          ; $53ef: $6f
	ld c, e                                          ; $53f0: $4b
	inc [hl]                                         ; $53f1: $34
	ld e, d                                          ; $53f2: $5a
	ld h, c                                          ; $53f3: $61
	ld d, b                                          ; $53f4: $50
	inc a                                            ; $53f5: $3c
	ld c, c                                          ; $53f6: $49
	add d                                            ; $53f7: $82
	add hl, sp                                       ; $53f8: $39
	ld c, c                                          ; $53f9: $49
	inc de                                           ; $53fa: $13
	adc e                                            ; $53fb: $8b
	ld e, h                                          ; $53fc: $5c
	ld a, [hl-]                                      ; $53fd: $3a
	ldh a, [$38]                                     ; $53fe: $f0 $38
	db $ec                                           ; $5400: $ec
	ret c                                            ; $5401: $d8

	ld c, d                                          ; $5402: $4a
	ld d, c                                          ; $5403: $51
	ld c, h                                          ; $5404: $4c
	and b                                            ; $5405: $a0
	ld l, a                                          ; $5406: $6f
	ld c, e                                          ; $5407: $4b
	ld b, [hl]                                       ; $5408: $46
	ld d, d                                          ; $5409: $52
	ld d, a                                          ; $540a: $57
	adc e                                            ; $540b: $8b
	ld e, h                                          ; $540c: $5c
	ld c, d                                          ; $540d: $4a
	ld c, e                                          ; $540e: $4b
	xor h                                            ; $540f: $ac
	ld a, [hl-]                                      ; $5410: $3a
	jr c, @+$4c                                      ; $5411: $38 $4a

	ld d, c                                          ; $5413: $51
	ld c, h                                          ; $5414: $4c
	xor b                                            ; $5415: $a8
	db $eb                                           ; $5416: $eb
	ld h, l                                          ; $5417: $65
	ld a, [hl-]                                      ; $5418: $3a
	ld d, b                                          ; $5419: $50
	ld c, b                                          ; $541a: $48
	and b                                            ; $541b: $a0
	or [hl]                                          ; $541c: $b6

jr_08d_541d:
	ld c, b                                          ; $541d: $48
	dec [hl]                                         ; $541e: $35
	rla                                              ; $541f: $17
	xor $06                                          ; $5420: $ee $06

jr_08d_5422:
	ld b, a                                          ; $5422: $47
	pop af                                           ; $5423: $f1
	ld h, [hl]                                       ; $5424: $66
	ld e, l                                          ; $5425: $5d
	dec a                                            ; $5426: $3d
	ld b, d                                          ; $5427: $42
	ld d, e                                          ; $5428: $53
	xor h                                            ; $5429: $ac
	db $ec                                           ; $542a: $ec
	cp c                                             ; $542b: $b9
	ld c, d                                          ; $542c: $4a
	ld d, c                                          ; $542d: $51
	and b                                            ; $542e: $a0
	ld c, a                                          ; $542f: $4f
	add hl, sp                                       ; $5430: $39
	ldh a, [rHDMA4]                                  ; $5431: $f0 $54
	ld a, $34                                        ; $5433: $3e $34
	ldh a, [rVBK]                                    ; $5435: $f0 $4f
	ld b, a                                          ; $5437: $47
	ldh a, [$8d]                                     ; $5438: $f0 $8d
	ld c, [hl]                                       ; $543a: $4e
	inc de                                           ; $543b: $13
	xor $2b                                          ; $543c: $ee $2b
	ld d, e                                          ; $543e: $53
	adc e                                            ; $543f: $8b
	ld e, h                                          ; $5440: $5c
	ld c, d                                          ; $5441: $4a
	ld d, c                                          ; $5442: $51
	ld c, h                                          ; $5443: $4c

jr_08d_5444:
	ld c, b                                          ; $5444: $48
	and b                                            ; $5445: $a0
	or [hl]                                          ; $5446: $b6
	ld c, b                                          ; $5447: $48
	dec [hl]                                         ; $5448: $35
	rla                                              ; $5449: $17
	ld c, d                                          ; $544a: $4a
	ld c, a                                          ; $544b: $4f
	inc [hl]                                         ; $544c: $34
	xor $06                                          ; $544d: $ee $06
	ld b, a                                          ; $544f: $47
	inc de                                           ; $5450: $13
	pop af                                           ; $5451: $f1
	ld h, [hl]                                       ; $5452: $66
	ld e, l                                          ; $5453: $5d
	ld d, d                                          ; $5454: $52
	ld a, $3d                                        ; $5455: $3e $3d
	inc a                                            ; $5457: $3c
	ld d, b                                          ; $5458: $50
	ld c, b                                          ; $5459: $48
	and b                                            ; $545a: $a0
	jp z, $96ac                                      ; $545b: $ca $ac $96

	ld d, a                                          ; $545e: $57
	ld d, d                                          ; $545f: $52

jr_08d_5460:
	ld a, $66                                        ; $5460: $3e $66
	add hl, sp                                       ; $5462: $39
	and b                                            ; $5463: $a0
	cpl                                              ; $5464: $2f
	jp hl                                            ; $5465: $e9


	cp d                                             ; $5466: $ba
	add hl, bc                                       ; $5467: $09
	jp hl                                            ; $5468: $e9


	inc d                                            ; $5469: $14
	xor b                                            ; $546a: $a8
	ld c, d                                          ; $546b: $4a
	ld c, a                                          ; $546c: $4f
	inc [hl]                                         ; $546d: $34
	ret                                              ; $546e: $c9


	inc de                                           ; $546f: $13
	db $eb                                           ; $5470: $eb
	ld c, a                                          ; $5471: $4f
	ld c, d                                          ; $5472: $4a
	ld d, c                                          ; $5473: $51
	ld c, h                                          ; $5474: $4c
	and b                                            ; $5475: $a0
	jp hl                                            ; $5476: $e9


	inc d                                            ; $5477: $14
	xor b                                            ; $5478: $a8
	ldh a, [$29]                                     ; $5479: $f0 $29
	ld a, $38                                        ; $547b: $3e $38
	ld c, d                                          ; $547d: $4a
	ld d, c                                          ; $547e: $51
	ld e, l                                          ; $547f: $5d
	ld e, d                                          ; $5480: $5a
	xor h                                            ; $5481: $ac
	db $eb                                           ; $5482: $eb
	ld c, a                                          ; $5483: $4f
	ld c, d                                          ; $5484: $4a
	ld d, c                                          ; $5485: $51
	ld c, h                                          ; $5486: $4c
	and b                                            ; $5487: $a0
	cpl                                              ; $5488: $2f
	add sp, -$1e                                     ; $5489: $e8 $e2
	add hl, bc                                       ; $548b: $09
	ld e, [hl]                                       ; $548c: $5e
	dec sp                                           ; $548d: $3b
	xor c                                            ; $548e: $a9
	db $eb                                           ; $548f: $eb
	ld c, a                                          ; $5490: $4f
	inc a                                            ; $5491: $3c
	ld d, b                                          ; $5492: $50
	inc [hl]                                         ; $5493: $34
	ld b, b                                          ; $5494: $40
	ld b, c                                          ; $5495: $41
	ld a, [hl-]                                      ; $5496: $3a
	di                                               ; $5497: $f3
	scf                                              ; $5498: $37
	ld c, d                                          ; $5499: $4a
	inc de                                           ; $549a: $13
	ld [hl], d                                       ; $549b: $72
	ld a, [hl-]                                      ; $549c: $3a
	jr c, jr_08d_54e9                                ; $549d: $38 $4a

	ld d, l                                          ; $549f: $55

Call_08d_54a0:
	ld b, h                                          ; $54a0: $44
	ld e, b                                          ; $54a1: $58
	jr c, jr_08d_5444                                ; $54a2: $38 $a0

	ld b, b                                          ; $54a4: $40
	ld b, c                                          ; $54a5: $41
	ld a, [hl-]                                      ; $54a6: $3a
	xor l                                            ; $54a7: $ad

Call_08d_54a8:
	ld d, c                                          ; $54a8: $51
	ld [hl], b                                       ; $54a9: $70
	ld d, l                                          ; $54aa: $55
	db $eb                                           ; $54ab: $eb
	ld c, a                                          ; $54ac: $4f
	ld c, d                                          ; $54ad: $4a
	ld d, c                                          ; $54ae: $51
	and b                                            ; $54af: $a0
	ld c, e                                          ; $54b0: $4b
	inc [hl]                                         ; $54b1: $34
	db $eb                                           ; $54b2: $eb
	ld c, a                                          ; $54b3: $4f
	ld c, d                                          ; $54b4: $4a
	ld d, c                                          ; $54b5: $51
	xor b                                            ; $54b6: $a8
	ld [hl], d                                       ; $54b7: $72
	ld a, [hl-]                                      ; $54b8: $3a
	jr c, jr_08d_5505                                ; $54b9: $38 $4a

	ld d, l                                          ; $54bb: $55
	ld b, h                                          ; $54bc: $44
	ld e, b                                          ; $54bd: $58
	jr c, jr_08d_5460                                ; $54be: $38 $a0

	cpl                                              ; $54c0: $2f
	jp hl                                            ; $54c1: $e9


	dec sp                                           ; $54c2: $3b
	add hl, bc                                       ; $54c3: $09
	ld l, a                                          ; $54c4: $6f
	ld c, a                                          ; $54c5: $4f
	ld b, [hl]                                       ; $54c6: $46
	ld d, d                                          ; $54c7: $52
	ld d, a                                          ; $54c8: $57
	xor h                                            ; $54c9: $ac
	ldh a, [rPCM12]                                  ; $54ca: $f0 $76
	ldh a, [rTMA]                                    ; $54cc: $f0 $06
	ld h, e                                          ; $54ce: $63
	ld a, [hl-]                                      ; $54cf: $3a
	jr c, jr_08d_551b                                ; $54d0: $38 $49

	inc de                                           ; $54d2: $13
	ld [hl], a                                       ; $54d3: $77
	dec sp                                           ; $54d4: $3b
	ccf                                              ; $54d5: $3f
	ld d, d                                          ; $54d6: $52
	ld d, c                                          ; $54d7: $51
	inc a                                            ; $54d8: $3c
	ld d, b                                          ; $54d9: $50
	ld c, b                                          ; $54da: $48
	and b                                            ; $54db: $a0
	or [hl]                                          ; $54dc: $b6
	xor b                                            ; $54dd: $a8
	ld l, a                                          ; $54de: $6f
	ld c, a                                          ; $54df: $4f
	ld b, b                                          ; $54e0: $40
	add hl, sp                                       ; $54e1: $39
	ld [hl], a                                       ; $54e2: $77
	jr c, jr_08d_5537                                ; $54e3: $38 $52

	ld d, c                                          ; $54e5: $51
	ld e, l                                          ; $54e6: $5d
	ld e, d                                          ; $54e7: $5a
	ld c, b                                          ; $54e8: $48

jr_08d_54e9:
	and b                                            ; $54e9: $a0
	ld l, a                                          ; $54ea: $6f
	ld c, a                                          ; $54eb: $4f
	ld b, b                                          ; $54ec: $40
	add hl, sp                                       ; $54ed: $39
	ld [hl], a                                       ; $54ee: $77
	jr c, jr_08d_5543                                ; $54ef: $38 $52

	ld d, c                                          ; $54f1: $51
	xor b                                            ; $54f2: $a8
	ld c, d                                          ; $54f3: $4a
	ld c, a                                          ; $54f4: $4f
	inc [hl]                                         ; $54f5: $34
	ret                                              ; $54f6: $c9


	ld c, b                                          ; $54f7: $48
	and b                                            ; $54f8: $a0
	ld l, a                                          ; $54f9: $6f
	xor h                                            ; $54fa: $ac
	db $ed                                           ; $54fb: $ed
	ld e, [hl]                                       ; $54fc: $5e
	ldh a, [hDisp1_SCY]                                     ; $54fd: $f0 $90
	ldh a, [rSB]                                     ; $54ff: $f0 $01
	ld a, [hl-]                                      ; $5501: $3a
	jr c, jr_08d_5545                                ; $5502: $38 $41

	ld c, d                                          ; $5504: $4a

jr_08d_5505:
	ld d, c                                          ; $5505: $51
	and b                                            ; $5506: $a0
	cpl                                              ; $5507: $2f
	jp hl                                            ; $5508: $e9


	ld e, d                                          ; $5509: $5a
	add hl, bc                                       ; $550a: $09
	adc b                                            ; $550b: $88
	sub c                                            ; $550c: $91
	ld c, d                                          ; $550d: $4a
	ld d, c                                          ; $550e: $51
	inc a                                            ; $550f: $3c
	xor c                                            ; $5510: $a9
	ldh a, [$29]                                     ; $5511: $f0 $29
	ld a, $38                                        ; $5513: $3e $38
	ld c, d                                          ; $5515: $4a
	ld d, c                                          ; $5516: $51

jr_08d_5517:
	xor b                                            ; $5517: $a8
	db $ec                                           ; $5518: $ec
	jr jr_08d_5505                                   ; $5519: $18 $ea

jr_08d_551b:
	or [hl]                                          ; $551b: $b6
	and b                                            ; $551c: $a0
	db $ec                                           ; $551d: $ec
	cp c                                             ; $551e: $b9
	xor b                                            ; $551f: $a8
	jp z, $ed34                                      ; $5520: $ca $34 $ed

	nop                                              ; $5523: $00
	ld d, d                                          ; $5524: $52
	ld d, c                                          ; $5525: $51
	and b                                            ; $5526: $a0
	xor $2d                                          ; $5527: $ee $2d
	xor b                                            ; $5529: $a8
	db $ec                                           ; $552a: $ec
	jr jr_08d_5517                                   ; $552b: $18 $ea

	or [hl]                                          ; $552d: $b6
	and b                                            ; $552e: $a0
	cpl                                              ; $552f: $2f

jr_08d_5530:
	halt                                             ; $5530: $76
	ld c, a                                          ; $5531: $4f
	ld a, [hl-]                                      ; $5532: $3a
	ld b, c                                          ; $5533: $41
	ld b, h                                          ; $5534: $44
	ld c, b                                          ; $5535: $48
	add hl, bc                                       ; $5536: $09

jr_08d_5537:
	cp [hl]                                          ; $5537: $be
	xor b                                            ; $5538: $a8
	db $ec                                           ; $5539: $ec
	db $ed                                           ; $553a: $ed
	ld c, a                                          ; $553b: $4f
	ld d, b                                          ; $553c: $50
	ld e, [hl]                                       ; $553d: $5e
	ld c, [hl]                                       ; $553e: $4e
	ld c, c                                          ; $553f: $49
	xor h                                            ; $5540: $ac
	ld [hl], a                                       ; $5541: $77
	dec sp                                           ; $5542: $3b

jr_08d_5543:
	dec a                                            ; $5543: $3d
	ld b, c                                          ; $5544: $41

jr_08d_5545:
	ld c, d                                          ; $5545: $4a
	ld d, c                                          ; $5546: $51
	ld e, l                                          ; $5547: $5d
	ld e, d                                          ; $5548: $5a
	ld c, b                                          ; $5549: $48
	and b                                            ; $554a: $a0
	pop af                                           ; $554b: $f1
	sbc $57                                          ; $554c: $de $57
	ld d, d                                          ; $554e: $52
	ld a, $3d                                        ; $554f: $3e $3d
	ld c, h                                          ; $5551: $4c
	xor b                                            ; $5552: $a8
	db $ec                                           ; $5553: $ec
	db $db                                           ; $5554: $db
	ldh a, [hDisp1_SCY]                                     ; $5555: $f0 $90
	ldh a, [rSB]                                     ; $5557: $f0 $01
	ld a, [hl-]                                      ; $5559: $3a
	jr c, jr_08d_559d                                ; $555a: $38 $41

	ld e, e                                          ; $555c: $5b
	ld d, [hl]                                       ; $555d: $56
	ld c, b                                          ; $555e: $48
	and b                                            ; $555f: $a0
	ldh a, [hDisp1_SCY]                                     ; $5560: $f0 $90
	ldh a, [rSB]                                     ; $5562: $f0 $01
	ld a, [hl-]                                      ; $5564: $3a
	jr c, @+$43                                      ; $5565: $38 $41

	ld c, d                                          ; $5567: $4a
	ld d, c                                          ; $5568: $51
	inc a                                            ; $5569: $3c
	xor c                                            ; $556a: $a9
	ld [$481e], a                                    ; $556b: $ea $1e $48
	and b                                            ; $556e: $a0
	cpl                                              ; $556f: $2f
	pop af                                           ; $5570: $f1
	nop                                              ; $5571: $00
	ld e, [hl]                                       ; $5572: $5e
	ld c, l                                          ; $5573: $4d
	ld c, [hl]                                       ; $5574: $4e
	inc a                                            ; $5575: $3c
	ld a, [hl-]                                      ; $5576: $3a
	ld c, b                                          ; $5577: $48
	and c                                            ; $5578: $a1
	ld e, h                                          ; $5579: $5c
	dec sp                                           ; $557a: $3b
	ld c, c                                          ; $557b: $49
	sub h                                            ; $557c: $94
	ld a, b                                          ; $557d: $78
	ld d, d                                          ; $557e: $52
	ld d, c                                          ; $557f: $51
	ld b, l                                          ; $5580: $45
	xor b                                            ; $5581: $a8
	xor $05                                          ; $5582: $ee $05
	ld a, [hl-]                                      ; $5584: $3a
	ld c, c                                          ; $5585: $49
	ld e, h                                          ; $5586: $5c
	ld c, e                                          ; $5587: $4b
	xor h                                            ; $5588: $ac
	xor $06                                          ; $5589: $ee $06
	ld b, a                                          ; $558b: $47
	xor $19                                          ; $558c: $ee $19
	ld a, $52                                        ; $558e: $3e $52
	ld a, $66                                        ; $5590: $3e $66
	add hl, sp                                       ; $5592: $39
	and b                                            ; $5593: $a0
	add a                                            ; $5594: $87
	ldh a, [$5b]                                     ; $5595: $f0 $5b
	ldh a, [$5e]                                     ; $5597: $f0 $5e
	ld b, h                                          ; $5599: $44
	ld c, c                                          ; $559a: $49
	inc de                                           ; $559b: $13
	ld [hl], a                                       ; $559c: $77

jr_08d_559d:
	jr c, @+$54                                      ; $559d: $38 $52

	ld d, c                                          ; $559f: $51
	ld b, l                                          ; $55a0: $45
	xor b                                            ; $55a1: $a8
	ld l, a                                          ; $55a2: $6f
	ld b, l                                          ; $55a3: $45
	ld d, a                                          ; $55a4: $57
	ldh a, [hDisp1_SCY]                                     ; $55a5: $f0 $90
	ldh a, [rSB]                                     ; $55a7: $f0 $01
	ld a, [hl-]                                      ; $55a9: $3a
	jr c, jr_08d_5530                                ; $55aa: $38 $84

	ld c, e                                          ; $55ac: $4b
	inc de                                           ; $55ad: $13
	ld b, b                                          ; $55ae: $40
	ld b, c                                          ; $55af: $41
	ld a, [hl-]                                      ; $55b0: $3a
	ld b, a                                          ; $55b1: $47
	jr c, jr_08d_5606                                ; $55b2: $38 $52

	ld a, c                                          ; $55b4: $79
	ld b, c                                          ; $55b5: $41
	inc a                                            ; $55b6: $3c
	ld d, b                                          ; $55b7: $50
	and b                                            ; $55b8: $a0
	ld l, a                                          ; $55b9: $6f
	ld b, l                                          ; $55ba: $45
	ld d, a                                          ; $55bb: $57
	ld c, e                                          ; $55bc: $4b
	ldh a, [hDisp1_SCY]                                     ; $55bd: $f0 $90
	ldh a, [rSB]                                     ; $55bf: $f0 $01
	ld c, [hl]                                       ; $55c1: $4e
	ld c, c                                          ; $55c2: $49
	inc de                                           ; $55c3: $13
	ld [hl], a                                       ; $55c4: $77
	jr c, jr_08d_5619                                ; $55c5: $38 $52

	ld d, c                                          ; $55c7: $51
	inc a                                            ; $55c8: $3c
	ld d, b                                          ; $55c9: $50
	xor h                                            ; $55ca: $ac
	db $eb                                           ; $55cb: $eb
	ld l, b                                          ; $55cc: $68
	ld b, l                                          ; $55cd: $45
	and b                                            ; $55ce: $a0
	jp z, $edac                                      ; $55cf: $ca $ac $ed

	and b                                            ; $55d2: $a0
	ld e, [hl]                                       ; $55d3: $5e
	ccf                                              ; $55d4: $3f
	ld a, b                                          ; $55d5: $78
	ld d, d                                          ; $55d6: $52
	ld d, c                                          ; $55d7: $51
	ld c, h                                          ; $55d8: $4c
	and b                                            ; $55d9: $a0
	xor $1e                                          ; $55da: $ee $1e
	inc [hl]                                         ; $55dc: $34
	ld l, a                                          ; $55dd: $6f
	inc [hl]                                         ; $55de: $34
	db $ec                                           ; $55df: $ec
	ld [hl], h                                       ; $55e0: $74
	ld c, e                                          ; $55e1: $4b
	inc de                                           ; $55e2: $13
	pop af                                           ; $55e3: $f1
	ld de, $65f0                                     ; $55e4: $11 $f0 $65
	ld b, a                                          ; $55e7: $47
	ld a, [hl]                                       ; $55e8: $7e
	ld d, l                                          ; $55e9: $55
	ld a, [hl-]                                      ; $55ea: $3a
	jr c, jr_08d_562f                                ; $55eb: $38 $42

	ld c, d                                          ; $55ed: $4a
	xor h                                            ; $55ee: $ac
	db $ed                                           ; $55ef: $ed
	jp nz, $f04a                                     ; $55f0: $c2 $4a $f0

	adc a                                            ; $55f3: $8f
	ld b, c                                          ; $55f4: $41
	ld c, d                                          ; $55f5: $4a
	ld d, d                                          ; $55f6: $52
	ld d, c                                          ; $55f7: $51
	and b                                            ; $55f8: $a0
	cpl                                              ; $55f9: $2f
	ld b, e                                          ; $55fa: $43
	rst JumpTable                                          ; $55fb: $c7
	xor b                                            ; $55fc: $a8
	ld e, e                                          ; $55fd: $5b
	ld d, [hl]                                       ; $55fe: $56
	ld b, [hl]                                       ; $55ff: $46
	inc [hl]                                         ; $5600: $34
	halt                                             ; $5601: $76
	ld c, a                                          ; $5602: $4f
	ldh a, [$9a]                                     ; $5603: $f0 $9a
	ld e, h                                          ; $5605: $5c

jr_08d_5606:
	ldh a, [rTMA]                                    ; $5606: $f0 $06
	add hl, sp                                       ; $5608: $39
	ld b, l                                          ; $5609: $45
	and b                                            ; $560a: $a0
	db $ed                                           ; $560b: $ed
	ld c, [hl]                                       ; $560c: $4e
	inc [hl]                                         ; $560d: $34
	ld l, a                                          ; $560e: $6f
	ld b, d                                          ; $560f: $42
	ld d, h                                          ; $5610: $54
	ld c, c                                          ; $5611: $49
	ld a, [hl-]                                      ; $5612: $3a
	ld d, b                                          ; $5613: $50
	xor h                                            ; $5614: $ac
	ldh a, [c]                                       ; $5615: $f2
	dec l                                            ; $5616: $2d
	dec sp                                           ; $5617: $3b
	ccf                                              ; $5618: $3f

jr_08d_5619:
	ld h, h                                          ; $5619: $64
	jr c, jr_08d_565b                                ; $561a: $38 $3f

	inc de                                           ; $561c: $13
	ldh a, [$c5]                                     ; $561d: $f0 $c5
	jr c, jr_08d_5673                                ; $561f: $38 $52

	ld a, c                                          ; $5621: $79
	ld b, c                                          ; $5622: $41
	ld b, l                                          ; $5623: $45
	and b                                            ; $5624: $a0
	cpl                                              ; $5625: $2f
	ld b, e                                          ; $5626: $43
	ld b, b                                          ; $5627: $40
	ld b, c                                          ; $5628: $41
	ld a, [hl-]                                      ; $5629: $3a
	pop af                                           ; $562a: $f1
	dec bc                                           ; $562b: $0b
	ld b, a                                          ; $562c: $47
	jr c, jr_08d_566b                                ; $562d: $38 $3c

jr_08d_562f:
	ld a, [hl-]                                      ; $562f: $3a
	jr c, jr_08d_5677                                ; $5630: $38 $45

	and b                                            ; $5632: $a0
	db $ec                                           ; $5633: $ec
	add hl, bc                                       ; $5634: $09
	xor h                                            ; $5635: $ac
	pop af                                           ; $5636: $f1
	cpl                                              ; $5637: $2f
	ld b, a                                          ; $5638: $47
	ld a, b                                          ; $5639: $78
	dec a                                            ; $563a: $3d
	ld b, c                                          ; $563b: $41
	ld c, d                                          ; $563c: $4a
	ld d, c                                          ; $563d: $51
	inc a                                            ; $563e: $3c
	ld d, b                                          ; $563f: $50
	xor h                                            ; $5640: $ac
	ld l, a                                          ; $5641: $6f
	ld b, a                                          ; $5642: $47
	ldh a, [rTMA]                                    ; $5643: $f0 $06
	ld h, e                                          ; $5645: $63
	ld a, c                                          ; $5646: $79
	ld a, [hl-]                                      ; $5647: $3a
	ld d, l                                          ; $5648: $55
	ccf                                              ; $5649: $3f
	ld c, a                                          ; $564a: $4f
	ld c, b                                          ; $564b: $48
	and b                                            ; $564c: $a0
	cpl                                              ; $564d: $2f
	ld b, e                                          ; $564e: $43
	halt                                             ; $564f: $76
	ld c, e                                          ; $5650: $4b
	ld c, h                                          ; $5651: $4c
	xor h                                            ; $5652: $ac
	dec a                                            ; $5653: $3d
	ld b, h                                          ; $5654: $44
	pop af                                           ; $5655: $f1
	cpl                                              ; $5656: $2f
	ld b, a                                          ; $5657: $47
	ld a, b                                          ; $5658: $78
	dec a                                            ; $5659: $3d
	inc a                                            ; $565a: $3c

jr_08d_565b:
	dec sp                                           ; $565b: $3b
	dec a                                            ; $565c: $3d
	inc de                                           ; $565d: $13
	ld h, e                                          ; $565e: $63
	ld e, l                                          ; $565f: $5d
	db $ec                                           ; $5660: $ec
	ret c                                            ; $5661: $d8

	ld b, d                                          ; $5662: $42
	and b                                            ; $5663: $a0
	ld [$a91e], a                                    ; $5664: $ea $1e $a9
	ld b, h                                          ; $5667: $44
	ld c, c                                          ; $5668: $49
	ld d, c                                          ; $5669: $51
	ld c, [hl]                                       ; $566a: $4e

jr_08d_566b:
	ld c, c                                          ; $566b: $49
	ld c, b                                          ; $566c: $48
	and b                                            ; $566d: $a0
	cpl                                              ; $566e: $2f
	ld b, e                                          ; $566f: $43
	db $ec                                           ; $5670: $ec
	rst SubAFromDE                                          ; $5671: $df

jr_08d_5672:
	ld c, c                                          ; $5672: $49

jr_08d_5673:
	xor $06                                          ; $5673: $ee $06
	ld b, a                                          ; $5675: $47
	inc de                                           ; $5676: $13

jr_08d_5677:
	pop af                                           ; $5677: $f1
	cpl                                              ; $5678: $2f
	ld b, a                                          ; $5679: $47
	ld a, b                                          ; $567a: $78
	dec a                                            ; $567b: $3d
	inc a                                            ; $567c: $3c
	dec sp                                           ; $567d: $3b
	dec a                                            ; $567e: $3d
	ld b, c                                          ; $567f: $41
	ld b, h                                          ; $5680: $44
	ld b, l                                          ; $5681: $45
	xor b                                            ; $5682: $a8
	db $ec                                           ; $5683: $ec
	jr nz, jr_08d_5672                               ; $5684: $20 $ec

	rst SubAFromDE                                          ; $5686: $df

jr_08d_5687:
	ld d, e                                          ; $5687: $53
	inc de                                           ; $5688: $13
	db $ed                                           ; $5689: $ed
	jp nz, $3847                                     ; $568a: $c2 $47 $38

	ld c, [hl]                                       ; $568d: $4e
	ld a, [hl-]                                      ; $568e: $3a
	ld d, b                                          ; $568f: $50
	xor h                                            ; $5690: $ac
	halt                                             ; $5691: $76
	ld c, a                                          ; $5692: $4f
	inc [hl]                                         ; $5693: $34
	ldh a, [$66]                                     ; $5694: $f0 $66
	ld b, c                                          ; $5696: $41
	ld c, d                                          ; $5697: $4a
	ld b, b                                          ; $5698: $40
	add hl, sp                                       ; $5699: $39
	ld d, c                                          ; $569a: $51
	ld c, [hl]                                       ; $569b: $4e
	ld b, l                                          ; $569c: $45
	and b                                            ; $569d: $a0

jr_08d_569e:
	ld e, [hl]                                       ; $569e: $5e
	dec sp                                           ; $569f: $3b
	inc [hl]                                         ; $56a0: $34
	ldh a, [$29]                                     ; $56a1: $f0 $29
	ld a, $38                                        ; $56a3: $3e $38
	ld c, d                                          ; $56a5: $4a
	ld d, c                                          ; $56a6: $51
	xor l                                            ; $56a7: $ad
	ld c, d                                          ; $56a8: $4a
	ld c, a                                          ; $56a9: $4f
	inc [hl]                                         ; $56aa: $34
	db $eb                                           ; $56ab: $eb
	ccf                                              ; $56ac: $3f
	xor b                                            ; $56ad: $a8
	pop af                                           ; $56ae: $f1
	ld de, $65f0                                     ; $56af: $11 $f0 $65
	ld d, e                                          ; $56b2: $53
	ldh a, [$5b]                                     ; $56b3: $f0 $5b
	ldh a, [$5e]                                     ; $56b5: $f0 $5e
	ld a, [hl-]                                      ; $56b7: $3a
	ld d, b                                          ; $56b8: $50
	ld c, b                                          ; $56b9: $48
	and b                                            ; $56ba: $a0
	cpl                                              ; $56bb: $2f
	ld b, e                                          ; $56bc: $43
	jr c, @+$3a                                      ; $56bd: $38 $38

	ld b, d                                          ; $56bf: $42
	inc [hl]                                         ; $56c0: $34
	jr c, jr_08d_56fb                                ; $56c1: $38 $38

	ld b, d                                          ; $56c3: $42
	xor b                                            ; $56c4: $a8
	db $ec                                           ; $56c5: $ec
	rst SubAFromDE                                          ; $56c6: $df
	ld b, d                                          ; $56c7: $42
	inc de                                           ; $56c8: $13
	ldh a, [rPCM34]                                  ; $56c9: $f0 $77
	ldh a, [$ac]                                     ; $56cb: $f0 $ac
	di                                               ; $56cd: $f3
	add hl, de                                       ; $56ce: $19
	ld c, a                                          ; $56cf: $4f
	ld [hl], d                                       ; $56d0: $72
	ld c, l                                          ; $56d1: $4d
	dec a                                            ; $56d2: $3d
	ld a, $4c                                        ; $56d3: $3e $4c
	and b                                            ; $56d5: $a0
	ld e, [hl]                                       ; $56d6: $5e
	dec sp                                           ; $56d7: $3b
	inc [hl]                                         ; $56d8: $34
	jp nc, Jump_08d_7213                             ; $56d9: $d2 $13 $72

	ld a, [hl-]                                      ; $56dc: $3a
	jr c, @+$4c                                      ; $56dd: $38 $4a

	ld d, l                                          ; $56df: $55
	ld b, h                                          ; $56e0: $44
	ld e, b                                          ; $56e1: $58
	jr c, jr_08d_5730                                ; $56e2: $38 $4c

	xor b                                            ; $56e4: $a8
	db $eb                                           ; $56e5: $eb
	ld c, a                                          ; $56e6: $4f
	ld c, d                                          ; $56e7: $4a
	ld d, c                                          ; $56e8: $51
	ld c, b                                          ; $56e9: $48
	and b                                            ; $56ea: $a0
	cpl                                              ; $56eb: $2f
	ld [hl-], a                                      ; $56ec: $32
	db $ec                                           ; $56ed: $ec
	rst SubAFromDE                                          ; $56ee: $df
	dec sp                                           ; $56ef: $3b
	ccf                                              ; $56f0: $3f
	xor h                                            ; $56f1: $ac
	db $ec                                           ; $56f2: $ec
	reti                                             ; $56f3: $d9


	ldh a, [$8a]                                     ; $56f4: $f0 $8a
	ldh a, [rHDMA2]                                  ; $56f6: $f0 $52
	jr c, jr_08d_5687                                ; $56f8: $38 $8d

	ld c, b                                          ; $56fa: $48

jr_08d_56fb:
	and e                                            ; $56fb: $a3
	db $eb                                           ; $56fc: $eb
	ccf                                              ; $56fd: $3f
	xor b                                            ; $56fe: $a8
	ld l, a                                          ; $56ff: $6f
	ld c, e                                          ; $5700: $4b
	inc [hl]                                         ; $5701: $34
	ld d, d                                          ; $5702: $52
	dec a                                            ; $5703: $3d
	inc de                                           ; $5704: $13
	db $ed                                           ; $5705: $ed
	jp nz, Jump_08d_6747                             ; $5706: $c2 $47 $67

jr_08d_5709:
	ld e, h                                          ; $5709: $5c
	ld d, d                                          ; $570a: $52
	ld d, c                                          ; $570b: $51
	ld b, d                                          ; $570c: $42
	ld c, d                                          ; $570d: $4a
	ld c, b                                          ; $570e: $48
	and b                                            ; $570f: $a0
	cpl                                              ; $5710: $2f
	sub c                                            ; $5711: $91
	ldh a, [$59]                                     ; $5712: $f0 $59
	inc [hl]                                         ; $5714: $34
	xor $06                                          ; $5715: $ee $06
	ld b, a                                          ; $5717: $47
	ld h, a                                          ; $5718: $67
	ld d, l                                          ; $5719: $55
	ld b, l                                          ; $571a: $45
	add hl, bc                                       ; $571b: $09
	jr c, jr_08d_569e                                ; $571c: $38 $80

	ld c, a                                          ; $571e: $4f
	inc [hl]                                         ; $571f: $34
	db $eb                                           ; $5720: $eb
	ld d, a                                          ; $5721: $57
	xor b                                            ; $5722: $a8
	ld c, d                                          ; $5723: $4a
	ld c, a                                          ; $5724: $4f
	inc [hl]                                         ; $5725: $34
	ldh a, [$29]                                     ; $5726: $f0 $29
	ld a, $38                                        ; $5728: $3e $38
	ld c, d                                          ; $572a: $4a
	ld d, c                                          ; $572b: $51
	ld c, b                                          ; $572c: $48
	and b                                            ; $572d: $a0
	jp hl                                            ; $572e: $e9


	inc d                                            ; $572f: $14

jr_08d_5730:
	xor b                                            ; $5730: $a8
	ldh a, [$4e]                                     ; $5731: $f0 $4e
	ld a, $38                                        ; $5733: $3e $38
	ld c, d                                          ; $5735: $4a
	ld d, c                                          ; $5736: $51
	ld c, h                                          ; $5737: $4c
	and b                                            ; $5738: $a0
	jp hl                                            ; $5739: $e9


	inc d                                            ; $573a: $14
	xor b                                            ; $573b: $a8
	jr c, @-$7e                                      ; $573c: $38 $80

	ld c, a                                          ; $573e: $4f
	inc [hl]                                         ; $573f: $34
	db $eb                                           ; $5740: $eb
	ld d, a                                          ; $5741: $57
	and b                                            ; $5742: $a0
	cpl                                              ; $5743: $2f
	db $ec                                           ; $5744: $ec
	ld a, [de]                                       ; $5745: $1a
	inc [hl]                                         ; $5746: $34
	pop af                                           ; $5747: $f1
	ld de, $65f0                                     ; $5748: $11 $f0 $65
	ld h, d                                          ; $574b: $62
	pop af                                           ; $574c: $f1
	cp h                                             ; $574d: $bc
	ld d, h                                          ; $574e: $54
	add hl, sp                                       ; $574f: $39
	ld b, l                                          ; $5750: $45
	add hl, bc                                       ; $5751: $09
	ld e, [hl]                                       ; $5752: $5e
	dec sp                                           ; $5753: $3b
	xor c                                            ; $5754: $a9
	ld b, b                                          ; $5755: $40
	ld b, c                                          ; $5756: $41
	ld a, [hl-]                                      ; $5757: $3a
	sbc d                                            ; $5758: $9a
	add d                                            ; $5759: $82
	dec sp                                           ; $575a: $3b
	ccf                                              ; $575b: $3f
	xor h                                            ; $575c: $ac
	pop af                                           ; $575d: $f1
	sbc $50                                          ; $575e: $de $50
	ld a, c                                          ; $5760: $79
	ld a, [hl-]                                      ; $5761: $3a

jr_08d_5762:
	jr c, jr_08d_57ae                                ; $5762: $38 $4a

	ld d, l                                          ; $5764: $55
	ld b, h                                          ; $5765: $44
	ld e, b                                          ; $5766: $58
	jr c, jr_08d_5709                                ; $5767: $38 $a0

	db $ec                                           ; $5769: $ec
	ld [hl], h                                       ; $576a: $74
	ld b, a                                          ; $576b: $47
	ldh a, [c]                                       ; $576c: $f2
	ld e, c                                          ; $576d: $59
	jr c, jr_08d_57b2                                ; $576e: $38 $42

	ld h, d                                          ; $5770: $62
	inc de                                           ; $5771: $13
	ldh a, [$2d]                                     ; $5772: $f0 $2d
	dec sp                                           ; $5774: $3b

jr_08d_5775:
	ccf                                              ; $5775: $3f
	ld c, [hl]                                       ; $5776: $4e
	ld c, e                                          ; $5777: $4b
	sbc h                                            ; $5778: $9c
	ld a, [hl-]                                      ; $5779: $3a
	ld b, d                                          ; $577a: $42
	ld b, a                                          ; $577b: $47
	inc de                                           ; $577c: $13
	db $ec                                           ; $577d: $ec
	db $d3                                           ; $577e: $d3
	ld b, b                                          ; $577f: $40
	ld b, c                                          ; $5780: $41
	ld a, [hl-]                                      ; $5781: $3a
	sbc d                                            ; $5782: $9a
	ld h, d                                          ; $5783: $62
	ld c, b                                          ; $5784: $48
	and b                                            ; $5785: $a0
	db $ec                                           ; $5786: $ec
	db $d3                                           ; $5787: $d3
	xor h                                            ; $5788: $ac
	ld b, b                                          ; $5789: $40
	ld b, c                                          ; $578a: $41
	ld a, [hl-]                                      ; $578b: $3a
	ldh a, [$c0]                                     ; $578c: $f0 $c0
	pop af                                           ; $578e: $f1
	sbc b                                            ; $578f: $98
	ldh a, [$5c]                                     ; $5790: $f0 $5c
	ld a, [hl-]                                      ; $5792: $3a
	ld d, h                                          ; $5793: $54
	ld c, c                                          ; $5794: $49
	ld h, d                                          ; $5795: $62
	inc de                                           ; $5796: $13
	add d                                            ; $5797: $82
	xor $1f                                          ; $5798: $ee $1f
	ld c, d                                          ; $579a: $4a
	ld d, c                                          ; $579b: $51
	inc a                                            ; $579c: $3c
	ld c, b                                          ; $579d: $48
	and c                                            ; $579e: $a1
	cpl                                              ; $579f: $2f
	ldh a, [$bc]                                     ; $57a0: $f0 $bc
	ld b, a                                          ; $57a2: $47
	ld h, a                                          ; $57a3: $67
	dec sp                                           ; $57a4: $3b
	ccf                                              ; $57a5: $3f
	ccf                                              ; $57a6: $3f
	ld d, l                                          ; $57a7: $55
	ld c, l                                          ; $57a8: $4d
	ld c, [hl]                                       ; $57a9: $4e
	inc a                                            ; $57aa: $3c
	ld a, [hl-]                                      ; $57ab: $3a
	and c                                            ; $57ac: $a1
	db $ec                                           ; $57ad: $ec

jr_08d_57ae:
	add hl, bc                                       ; $57ae: $09
	ld a, b                                          ; $57af: $78
	dec a                                            ; $57b0: $3d
	ld b, c                                          ; $57b1: $41

jr_08d_57b2:
	ld c, d                                          ; $57b2: $4a
	ld d, c                                          ; $57b3: $51
	inc a                                            ; $57b4: $3c
	ld d, b                                          ; $57b5: $50
	xor h                                            ; $57b6: $ac
	sub b                                            ; $57b7: $90
	ld a, $41                                        ; $57b8: $3e $41
	ld c, d                                          ; $57ba: $4a
	ld e, h                                          ; $57bb: $5c
	ccf                                              ; $57bc: $3f
	ld d, l                                          ; $57bd: $55
	ld b, h                                          ; $57be: $44
	ld e, b                                          ; $57bf: $58
	jr c, jr_08d_5762                                ; $57c0: $38 $a0

	ldh a, [rTAC]                                    ; $57c2: $f0 $07
	inc a                                            ; $57c4: $3c
	ld d, a                                          ; $57c5: $57
	ld d, d                                          ; $57c6: $52
	ld a, $3d                                        ; $57c7: $3e $3d
	xor b                                            ; $57c9: $a8
	sub b                                            ; $57ca: $90
	ld a, $41                                        ; $57cb: $3e $41
	ld c, d                                          ; $57cd: $4a
	ld e, h                                          ; $57ce: $5c
	ccf                                              ; $57cf: $3f
	ld d, l                                          ; $57d0: $55
	ld b, h                                          ; $57d1: $44
	ld e, b                                          ; $57d2: $58
	jr c, jr_08d_5775                                ; $57d3: $38 $a0

	ldh a, [rTAC]                                    ; $57d5: $f0 $07
	inc a                                            ; $57d7: $3c
	ld d, a                                          ; $57d8: $57
	ld d, d                                          ; $57d9: $52
	ld a, $3d                                        ; $57da: $3e $3d
	xor b                                            ; $57dc: $a8
	ldh a, [$bc]                                     ; $57dd: $f0 $bc
	ld b, a                                          ; $57df: $47
	ld h, a                                          ; $57e0: $67
	dec sp                                           ; $57e1: $3b
	ccf                                              ; $57e2: $3f
	ld d, d                                          ; $57e3: $52
	ld d, c                                          ; $57e4: $51
	ld c, h                                          ; $57e5: $4c
	and b                                            ; $57e6: $a0
	ld d, c                                          ; $57e7: $51
	ld [hl], b                                       ; $57e8: $70
	ld d, l                                          ; $57e9: $55
	di                                               ; $57ea: $f3
	ld c, [hl]                                       ; $57eb: $4e
	ld l, [hl]                                       ; $57ec: $6e
	inc a                                            ; $57ed: $3c
	ld c, d                                          ; $57ee: $4a
	ld d, c                                          ; $57ef: $51
	ld c, h                                          ; $57f0: $4c
	and b                                            ; $57f1: $a0
	cpl                                              ; $57f2: $2f
	ld [$09d6], a                                    ; $57f3: $ea $d6 $09
	cpl                                              ; $57f6: $2f
	ld b, e                                          ; $57f7: $43
	db $ed                                           ; $57f8: $ed
	ld [de], a                                       ; $57f9: $12
	ld d, c                                          ; $57fa: $51
	ld [hl], b                                       ; $57fb: $70
	ld d, l                                          ; $57fc: $55
	inc de                                           ; $57fd: $13
	db $ec                                           ; $57fe: $ec
	ld c, a                                          ; $57ff: $4f
	dec [hl]                                         ; $5800: $35
	ldh a, [$8a]                                     ; $5801: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5803: $f0 $52
	jr c, @+$47                                      ; $5805: $38 $45

	and b                                            ; $5807: $a0
	ld b, [hl]                                       ; $5808: $46
	inc [hl]                                         ; $5809: $34
	ld b, [hl]                                       ; $580a: $46
	ld d, a                                          ; $580b: $57
	ld d, e                                          ; $580c: $53
	ld c, c                                          ; $580d: $49
	add hl, sp                                       ; $580e: $39
	inc de                                           ; $580f: $13
	ld [hl], b                                       ; $5810: $70
	ldh a, [rAUD1SWEEP]                              ; $5811: $f0 $10
	jr c, jr_08d_5867                                ; $5813: $38 $52

	ld d, c                                          ; $5815: $51
	xor b                                            ; $5816: $a8
	ret                                              ; $5817: $c9


	inc [hl]                                         ; $5818: $34
	db $eb                                           ; $5819: $eb
	ld c, a                                          ; $581a: $4f
	ld c, d                                          ; $581b: $4a
	ld d, c                                          ; $581c: $51
	ld c, h                                          ; $581d: $4c
	ld c, b                                          ; $581e: $48
	and b                                            ; $581f: $a0
	cpl                                              ; $5820: $2f
	ld [$09d7], a                                    ; $5821: $ea $d7 $09
	cpl                                              ; $5824: $2f
	ld b, e                                          ; $5825: $43
	or h                                             ; $5826: $b4
	xor h                                            ; $5827: $ac
	ld [$344f], a                                    ; $5828: $ea $4f $34
	db $ec                                           ; $582b: $ec
	inc c                                            ; $582c: $0c
	and c                                            ; $582d: $a1
	sub d                                            ; $582e: $92
	adc [hl]                                         ; $582f: $8e
	dec sp                                           ; $5830: $3b
	ccf                                              ; $5831: $3f
	ld d, l                                          ; $5832: $55
	ld b, h                                          ; $5833: $44
	ld e, b                                          ; $5834: $58
	jr c, @+$4e                                      ; $5835: $38 $4c

	and b                                            ; $5837: $a0
	cpl                                              ; $5838: $2f
	ld b, e                                          ; $5839: $43
	xor $2d                                          ; $583a: $ee $2d
	xor h                                            ; $583c: $ac
	db $ec                                           ; $583d: $ec
	rst SubAFromDE                                          ; $583e: $df
	ld b, a                                          ; $583f: $47
	rst SubAFromDE                                          ; $5840: $df
	ld b, l                                          ; $5841: $45
	and b                                            ; $5842: $a0
	cpl                                              ; $5843: $2f
	ld b, e                                          ; $5844: $43

jr_08d_5845:
	or h                                             ; $5845: $b4
	xor h                                            ; $5846: $ac
	ldh a, [c]                                       ; $5847: $f2
	inc [hl]                                         ; $5848: $34
	ldh a, [c]                                       ; $5849: $f2
	ld h, d                                          ; $584a: $62
	ldh a, [rSB]                                     ; $584b: $f0 $01
	ld c, d                                          ; $584d: $4a
	ld c, a                                          ; $584e: $4f
	db $ec                                           ; $584f: $ec
	inc c                                            ; $5850: $0c
	and c                                            ; $5851: $a1
	ld a, [hl]                                       ; $5852: $7e
	jr c, jr_08d_5845                                ; $5853: $38 $f0

	inc l                                            ; $5855: $2c
	ld d, e                                          ; $5856: $53
	pop af                                           ; $5857: $f1
	inc b                                            ; $5858: $04
	ld c, l                                          ; $5859: $4d
	ld c, [hl]                                       ; $585a: $4e
	ld c, c                                          ; $585b: $49
	inc de                                           ; $585c: $13
	jr c, jr_08d_5897                                ; $585d: $38 $38

	ld c, d                                          ; $585f: $4a
	ld d, c                                          ; $5860: $51
	ld c, h                                          ; $5861: $4c
	and b                                            ; $5862: $a0
	cpl                                              ; $5863: $2f
	ld b, e                                          ; $5864: $43
	pop af                                           ; $5865: $f1
	inc b                                            ; $5866: $04

jr_08d_5867:
	ld c, l                                          ; $5867: $4d
	dec a                                            ; $5868: $3d
	ld d, b                                          ; $5869: $50
	xor h                                            ; $586a: $ac
	db $ec                                           ; $586b: $ec
	rst SubAFromDE                                          ; $586c: $df
	ld b, a                                          ; $586d: $47
	rst SubAFromDE                                          ; $586e: $df
	ld c, h                                          ; $586f: $4c
	and b                                            ; $5870: $a0
	cpl                                              ; $5871: $2f
	ld b, e                                          ; $5872: $43
	xor $2d                                          ; $5873: $ee $2d
	inc [hl]                                         ; $5875: $34
	db $ec                                           ; $5876: $ec
	rst SubAFromDE                                          ; $5877: $df
	and b                                            ; $5878: $a0
	ld b, [hl]                                       ; $5879: $46
	inc [hl]                                         ; $587a: $34
	ld b, [hl]                                       ; $587b: $46
	ld d, a                                          ; $587c: $57
	ld d, e                                          ; $587d: $53
	ld c, c                                          ; $587e: $49
	add hl, sp                                       ; $587f: $39
	inc de                                           ; $5880: $13
	ld [hl], b                                       ; $5881: $70
	ldh a, [rAUD1SWEEP]                              ; $5882: $f0 $10
	jr c, jr_08d_58d8                                ; $5884: $38 $52

	ld d, c                                          ; $5886: $51
	dec [hl]                                         ; $5887: $35
	ldh a, [$29]                                     ; $5888: $f0 $29
	ld a, $38                                        ; $588a: $3e $38
	ld c, d                                          ; $588c: $4a
	ld d, c                                          ; $588d: $51
	and b                                            ; $588e: $a0
	cpl                                              ; $588f: $2f
	ld b, e                                          ; $5890: $43
	ld [hl], b                                       ; $5891: $70
	ld [hl], c                                       ; $5892: $71
	ld b, c                                          ; $5893: $41
	ld c, b                                          ; $5894: $48
	inc [hl]                                         ; $5895: $34
	db $ec                                           ; $5896: $ec

jr_08d_5897:
	rst SubAFromDE                                          ; $5897: $df
	xor b                                            ; $5898: $a8
	ld l, e                                          ; $5899: $6b
	ld c, a                                          ; $589a: $4f
	pop af                                           ; $589b: $f1
	inc b                                            ; $589c: $04
	ld c, l                                          ; $589d: $4d
	ld a, [hl-]                                      ; $589e: $3a
	inc a                                            ; $589f: $3c
	dec sp                                           ; $58a0: $3b
	dec a                                            ; $58a1: $3d
	ld b, l                                          ; $58a2: $45
	and b                                            ; $58a3: $a0
	db $ed                                           ; $58a4: $ed
	xor a                                            ; $58a5: $af
	ld b, [hl]                                       ; $58a6: $46
	ld d, a                                          ; $58a7: $57
	ld d, d                                          ; $58a8: $52
	ld a, c                                          ; $58a9: $79
	ld b, c                                          ; $58aa: $41
	ld b, l                                          ; $58ab: $45
	xor b                                            ; $58ac: $a8
	ld b, [hl]                                       ; $58ad: $46
	ld c, l                                          ; $58ae: $4d
	ld c, e                                          ; $58af: $4b
	pop af                                           ; $58b0: $f1
	ld a, [$be3e]                                    ; $58b1: $fa $3e $be
	ld d, b                                          ; $58b4: $50
	and b                                            ; $58b5: $a0
	cpl                                              ; $58b6: $2f
	ld b, e                                          ; $58b7: $43
	ld l, d                                          ; $58b8: $6a
	ldh a, [rAUD1HIGH]                               ; $58b9: $f0 $14
	ld c, e                                          ; $58bb: $4b
	xor h                                            ; $58bc: $ac
	jp hl                                            ; $58bd: $e9


	dec [hl]                                         ; $58be: $35
	xor b                                            ; $58bf: $a8
	ld [$a038], a                                    ; $58c0: $ea $38 $a0
	xor $2d                                          ; $58c3: $ee $2d
	inc [hl]                                         ; $58c5: $34
	ld [$a0a9], a                                    ; $58c6: $ea $a9 $a0
	db $ec                                           ; $58c9: $ec
	inc de                                           ; $58ca: $13
	db $ed                                           ; $58cb: $ed
	adc l                                            ; $58cc: $8d
	ld c, d                                          ; $58cd: $4a
	ld a, $3d                                        ; $58ce: $3e $3d
	ld c, h                                          ; $58d0: $4c
	and b                                            ; $58d1: $a0
	cpl                                              ; $58d2: $2f
	add sp, $2e                                      ; $58d3: $e8 $2e
	add hl, bc                                       ; $58d5: $09
	ld b, b                                          ; $58d6: $40
	add hl, sp                                       ; $58d7: $39

jr_08d_58d8:
	jr c, jr_08d_5913                                ; $58d8: $38 $39

	db $ed                                           ; $58da: $ed
	ld [hl], c                                       ; $58db: $71
	ld c, d                                          ; $58dc: $4a
	ld d, c                                          ; $58dd: $51
	inc a                                            ; $58de: $3c
	xor b                                            ; $58df: $a8
	ld [$edab], a                                    ; $58e0: $ea $ab $ed
	ld c, c                                          ; $58e3: $49
	ld c, d                                          ; $58e4: $4a
	ld d, c                                          ; $58e5: $51
	ld c, h                                          ; $58e6: $4c
	xor l                                            ; $58e7: $ad
	xor $06                                          ; $58e8: $ee $06
	ld b, a                                          ; $58ea: $47
	ld [hl], d                                       ; $58eb: $72
	ld c, l                                          ; $58ec: $4d
	ccf                                              ; $58ed: $3f
	db $ec                                           ; $58ee: $ec
	cp c                                             ; $58ef: $b9
	ld c, b                                          ; $58f0: $48
	and b                                            ; $58f1: $a0
	db $ed                                           ; $58f2: $ed
	ld [hl], c                                       ; $58f3: $71
	ld h, d                                          ; $58f4: $62
	ldh a, [$2d]                                     ; $58f5: $f0 $2d
	dec sp                                           ; $58f7: $3b
	ccf                                              ; $58f8: $3f
	ld c, [hl]                                       ; $58f9: $4e
	ld b, c                                          ; $58fa: $41
	inc de                                           ; $58fb: $13
	ld c, d                                          ; $58fc: $4a
	ld d, c                                          ; $58fd: $51
	inc a                                            ; $58fe: $3c
	ld [hl], $ed                                     ; $58ff: $36 $ed
	or h                                             ; $5901: $b4
	ld d, a                                          ; $5902: $57
	ld a, [hl-]                                      ; $5903: $3a
	ld b, c                                          ; $5904: $41
	ld c, d                                          ; $5905: $4a
	ld d, c                                          ; $5906: $51
	ld c, h                                          ; $5907: $4c
	and b                                            ; $5908: $a0
	ld a, [hl]                                       ; $5909: $7e
	ld d, l                                          ; $590a: $55
	ldh a, [$2d]                                     ; $590b: $f0 $2d
	dec sp                                           ; $590d: $3b
	ccf                                              ; $590e: $3f
	ld d, d                                          ; $590f: $52
	ld d, c                                          ; $5910: $51
	ld c, h                                          ; $5911: $4c
	xor l                                            ; $5912: $ad

jr_08d_5913:
	db $ed                                           ; $5913: $ed
	adc l                                            ; $5914: $8d
	ldh a, [rOCPS]                                   ; $5915: $f0 $6a
	ld a, [hl-]                                      ; $5917: $3a
	ld b, c                                          ; $5918: $41
	ld c, d                                          ; $5919: $4a
	ld d, c                                          ; $591a: $51
	ld c, h                                          ; $591b: $4c
	and b                                            ; $591c: $a0
	cpl                                              ; $591d: $2f
	add sp, -$25                                     ; $591e: $e8 $db
	add hl, bc                                       ; $5920: $09
	ld l, a                                          ; $5921: $6f
	ld c, a                                          ; $5922: $4f
	inc [hl]                                         ; $5923: $34
	db $ec                                           ; $5924: $ec
	ld d, d                                          ; $5925: $52
	ld c, e                                          ; $5926: $4b
	inc de                                           ; $5927: $13
	adc e                                            ; $5928: $8b
	ld e, h                                          ; $5929: $5c
	ld c, d                                          ; $592a: $4a
	ld d, c                                          ; $592b: $51
	ld b, l                                          ; $592c: $45
	xor b                                            ; $592d: $a8
	ld c, d                                          ; $592e: $4a
	ld c, a                                          ; $592f: $4f
	ld c, b                                          ; $5930: $48
	and b                                            ; $5931: $a0
	db $ec                                           ; $5932: $ec
	ld d, d                                          ; $5933: $52
	ld c, a                                          ; $5934: $4f
	inc de                                           ; $5935: $13
	jr c, jr_08d_5970                                ; $5936: $38 $38

	ld c, d                                          ; $5938: $4a
	ld d, c                                          ; $5939: $51
	ld e, l                                          ; $593a: $5d
	ld e, d                                          ; $593b: $5a
	ld c, b                                          ; $593c: $48
	xor h                                            ; $593d: $ac
	ld [hl], d                                       ; $593e: $72
	ld c, [hl]                                       ; $593f: $4e
	ld b, h                                          ; $5940: $44
	ld e, l                                          ; $5941: $5d
	ld a, [hl-]                                      ; $5942: $3a
	ld d, b                                          ; $5943: $50
	inc [hl]                                         ; $5944: $34
	db $ec                                           ; $5945: $ec
	xor $42                                          ; $5946: $ee $42
	ldh a, [$38]                                     ; $5948: $f0 $38
	ld d, e                                          ; $594a: $53
	inc de                                           ; $594b: $13
	adc e                                            ; $594c: $8b
	ld e, h                                          ; $594d: $5c
	ld c, d                                          ; $594e: $4a
	ld d, c                                          ; $594f: $51
	and b                                            ; $5950: $a0
	ld l, a                                          ; $5951: $6f
	ld c, e                                          ; $5952: $4b
	xor h                                            ; $5953: $ac
	push af                                          ; $5954: $f5
	ld e, e                                          ; $5955: $5b
	ldh a, [$38]                                     ; $5956: $f0 $38
	adc e                                            ; $5958: $8b
	ld e, h                                          ; $5959: $5c
	ld c, d                                          ; $595a: $4a
	ld d, c                                          ; $595b: $51
	inc a                                            ; $595c: $3c
	ld d, b                                          ; $595d: $50
	ld c, b                                          ; $595e: $48
	and b                                            ; $595f: $a0
	cpl                                              ; $5960: $2f
	jp hl                                            ; $5961: $e9


	or a                                             ; $5962: $b7
	add hl, bc                                       ; $5963: $09
	xor $06                                          ; $5964: $ee $06
	ld b, a                                          ; $5966: $47
	ld [hl], d                                       ; $5967: $72
	ld c, l                                          ; $5968: $4d
	ld c, [hl]                                       ; $5969: $4e
	ld a, [hl-]                                      ; $596a: $3a
	ld b, c                                          ; $596b: $41
	ccf                                              ; $596c: $3f
	xor h                                            ; $596d: $ac
	pop af                                           ; $596e: $f1
	and d                                            ; $596f: $a2

jr_08d_5970:
	ld a, c                                          ; $5970: $79
	ld c, d                                          ; $5971: $4a
	ld d, c                                          ; $5972: $51
	ld c, b                                          ; $5973: $48
	and b                                            ; $5974: $a0
	ld [hl], d                                       ; $5975: $72
	ld b, a                                          ; $5976: $47
	ld a, b                                          ; $5977: $78
	ld c, l                                          ; $5978: $4d
	ccf                                              ; $5979: $3f
	xor h                                            ; $597a: $ac
	db $ec                                           ; $597b: $ec
	cp c                                             ; $597c: $b9
	ld c, b                                          ; $597d: $48
	and b                                            ; $597e: $a0
	ldh a, [$57]                                     ; $597f: $f0 $57
	ldh a, [$ae]                                     ; $5981: $f0 $ae
	ld c, d                                          ; $5983: $4a
	ld d, c                                          ; $5984: $51
	ld c, h                                          ; $5985: $4c
	ld c, b                                          ; $5986: $48
	and b                                            ; $5987: $a0
	jp z, $ecac                                      ; $5988: $ca $ac $ec

	push bc                                          ; $598b: $c5
	inc de                                           ; $598c: $13
	ldh a, [rAUD2HIGH]                               ; $598d: $f0 $19
	ld b, a                                          ; $598f: $47
	sub [hl]                                         ; $5990: $96
	ld d, a                                          ; $5991: $57
	ld d, d                                          ; $5992: $52
	ld a, $66                                        ; $5993: $3e $66
	add hl, sp                                       ; $5995: $39
	and b                                            ; $5996: $a0
	ld l, a                                          ; $5997: $6f
	inc [hl]                                         ; $5998: $34
	pop af                                           ; $5999: $f1
	ld e, e                                          ; $599a: $5b
	ld c, l                                          ; $599b: $4d
	ld a, [hl-]                                      ; $599c: $3a
	jr c, jr_08d_59e0                                ; $599d: $38 $41

	ld c, d                                          ; $599f: $4a
	ld d, c                                          ; $59a0: $51
	ld c, b                                          ; $59a1: $48
	and b                                            ; $59a2: $a0
	db $ec                                           ; $59a3: $ec
	cp c                                             ; $59a4: $b9
	xor b                                            ; $59a5: $a8
	pop af                                           ; $59a6: $f1
	ld [hl], $f0                                     ; $59a7: $36 $f0
	ld c, l                                          ; $59a9: $4d
	ld b, b                                          ; $59aa: $40
	add hl, sp                                       ; $59ab: $39
	ld b, a                                          ; $59ac: $47
	ld a, [hl-]                                      ; $59ad: $3a
	dec sp                                           ; $59ae: $3b
	dec a                                            ; $59af: $3d
	ld d, b                                          ; $59b0: $50
	xor h                                            ; $59b1: $ac
	pop af                                           ; $59b2: $f1

jr_08d_59b3:
	jp hl                                            ; $59b3: $e9


	ld e, l                                          ; $59b4: $5d
	ccf                                              ; $59b5: $3f
	ld d, l                                          ; $59b6: $55
	ld b, h                                          ; $59b7: $44
	ld e, b                                          ; $59b8: $58
	jr c, jr_08d_5a07                                ; $59b9: $38 $4c

	and b                                            ; $59bb: $a0
	jp hl                                            ; $59bc: $e9


	inc d                                            ; $59bd: $14
	xor b                                            ; $59be: $a8
	ld [$4cb6], a                                    ; $59bf: $ea $b6 $4c
	and b                                            ; $59c2: $a0
	jp hl                                            ; $59c3: $e9


	inc d                                            ; $59c4: $14
	xor b                                            ; $59c5: $a8
	db $ec                                           ; $59c6: $ec
	jr jr_08d_59b3                                   ; $59c7: $18 $ea

	or [hl]                                          ; $59c9: $b6
	and b                                            ; $59ca: $a0
	cpl                                              ; $59cb: $2f
	ldh a, [c]                                       ; $59cc: $f2
	ld d, e                                          ; $59cd: $53
	ld b, d                                          ; $59ce: $42
	ldh a, [$3e]                                     ; $59cf: $f0 $3e
	ld a, [hl-]                                      ; $59d1: $3a
	ld b, c                                          ; $59d2: $41
	ccf                                              ; $59d3: $3f
	inc [hl]                                         ; $59d4: $34
	sbc h                                            ; $59d5: $9c
	ld c, [hl]                                       ; $59d6: $4e
	jr c, jr_08d_5a1e                                ; $59d7: $38 $45

	ld c, h                                          ; $59d9: $4c
	add hl, bc                                       ; $59da: $09
	ld e, [hl]                                       ; $59db: $5e
	dec sp                                           ; $59dc: $3b
	inc [hl]                                         ; $59dd: $34
	or [hl]                                          ; $59de: $b6
	xor l                                            ; $59df: $ad

jr_08d_59e0:
	db $ec                                           ; $59e0: $ec
	db $db                                           ; $59e1: $db
	pop af                                           ; $59e2: $f1
	ld e, e                                          ; $59e3: $5b
	ld c, l                                          ; $59e4: $4d
	ld a, [hl-]                                      ; $59e5: $3a
	jr c, jr_08d_5a22                                ; $59e6: $38 $3a

	ld b, c                                          ; $59e8: $41
	ccf                                              ; $59e9: $3f
	inc de                                           ; $59ea: $13
	pop af                                           ; $59eb: $f1
	sbc $57                                          ; $59ec: $de $57
	ld d, d                                          ; $59ee: $52
	ld a, $3d                                        ; $59ef: $3e $3d
	ld c, h                                          ; $59f1: $4c
	and b                                            ; $59f2: $a0
	pop af                                           ; $59f3: $f1
	ld e, e                                          ; $59f4: $5b
	ld c, l                                          ; $59f5: $4d
	ld a, [hl-]                                      ; $59f6: $3a
	jr c, jr_08d_5a3a                                ; $59f7: $38 $41

	ld c, d                                          ; $59f9: $4a
	ld d, c                                          ; $59fa: $51
	inc a                                            ; $59fb: $3c
	xor c                                            ; $59fc: $a9
	db $ec                                           ; $59fd: $ec
	db $ed                                           ; $59fe: $ed
	ld c, a                                          ; $59ff: $4f
	ld d, b                                          ; $5a00: $50
	ld e, [hl]                                       ; $5a01: $5e
	ld c, [hl]                                       ; $5a02: $4e
	ld c, c                                          ; $5a03: $49
	inc de                                           ; $5a04: $13
	ld [hl], a                                       ; $5a05: $77
	dec sp                                           ; $5a06: $3b

jr_08d_5a07:
	dec a                                            ; $5a07: $3d
	ld b, c                                          ; $5a08: $41
	ld c, d                                          ; $5a09: $4a
	ld d, c                                          ; $5a0a: $51
	ld e, l                                          ; $5a0b: $5d
	ld e, d                                          ; $5a0c: $5a
	ld c, b                                          ; $5a0d: $48
	and b                                            ; $5a0e: $a0
	pop af                                           ; $5a0f: $f1
	ld e, e                                          ; $5a10: $5b
	ld c, l                                          ; $5a11: $4d
	ld c, [hl]                                       ; $5a12: $4e
	ld c, c                                          ; $5a13: $49
	ld [hl], a                                       ; $5a14: $77
	dec sp                                           ; $5a15: $3b
	ccf                                              ; $5a16: $3f
	dec a                                            ; $5a17: $3d
	ld b, c                                          ; $5a18: $41
	inc de                                           ; $5a19: $13
	ld c, d                                          ; $5a1a: $4a
	ld d, c                                          ; $5a1b: $51
	ld e, l                                          ; $5a1c: $5d
	ld e, d                                          ; $5a1d: $5a

jr_08d_5a1e:
	xor l                                            ; $5a1e: $ad
	pop af                                           ; $5a1f: $f1
	ld e, e                                          ; $5a20: $5b
	ld c, l                                          ; $5a21: $4d

jr_08d_5a22:
	ld a, [hl-]                                      ; $5a22: $3a
	jr c, jr_08d_5a66                                ; $5a23: $38 $41

	ld c, d                                          ; $5a25: $4a
	ld d, c                                          ; $5a26: $51
	inc a                                            ; $5a27: $3c
	ld c, b                                          ; $5a28: $48
	and b                                            ; $5a29: $a0
	cpl                                              ; $5a2a: $2f
	xor $06                                          ; $5a2b: $ee $06
	ld b, a                                          ; $5a2d: $47
	xor $19                                          ; $5a2e: $ee $19
	ld a, $45                                        ; $5a30: $3e $45
	add hl, sp                                       ; $5a32: $39
	ld b, l                                          ; $5a33: $45
	add hl, bc                                       ; $5a34: $09
	or [hl]                                          ; $5a35: $b6
	xor b                                            ; $5a36: $a8
	ld c, d                                          ; $5a37: $4a
	ld c, a                                          ; $5a38: $4f
	inc [hl]                                         ; $5a39: $34

jr_08d_5a3a:
	di                                               ; $5a3a: $f3
	ld d, [hl]                                       ; $5a3b: $56
	ld e, [hl]                                       ; $5a3c: $5e
	ccf                                              ; $5a3d: $3f
	ccf                                              ; $5a3e: $3f
	db $ec                                           ; $5a3f: $ec
	rst FarCall                                          ; $5a40: $f7
	ld c, h                                          ; $5a41: $4c
	and b                                            ; $5a42: $a0
	or [hl]                                          ; $5a43: $b6
	xor b                                            ; $5a44: $a8
	xor $06                                          ; $5a45: $ee $06
	ld b, a                                          ; $5a47: $47
	xor $19                                          ; $5a48: $ee $19
	ld a, $52                                        ; $5a4a: $3e $52
	ld a, $66                                        ; $5a4c: $3e $66
	add hl, sp                                       ; $5a4e: $39
	and b                                            ; $5a4f: $a0
	pop af                                           ; $5a50: $f1
	ld e, e                                          ; $5a51: $5b
	ld c, l                                          ; $5a52: $4d
	ld c, [hl]                                       ; $5a53: $4e
	ld b, l                                          ; $5a54: $45
	add hl, sp                                       ; $5a55: $39
	ld b, a                                          ; $5a56: $47
	ld a, [hl-]                                      ; $5a57: $3a
	ld c, [hl]                                       ; $5a58: $4e
	ld c, c                                          ; $5a59: $49
	inc de                                           ; $5a5a: $13
	jr c, jr_08d_5a95                                ; $5a5b: $38 $38

	ld c, d                                          ; $5a5d: $4a
	ld d, c                                          ; $5a5e: $51
	ld c, h                                          ; $5a5f: $4c
	and b                                            ; $5a60: $a0
	db $eb                                           ; $5a61: $eb
	sub l                                            ; $5a62: $95
	ld d, d                                          ; $5a63: $52
	ld d, c                                          ; $5a64: $51
	ld c, h                                          ; $5a65: $4c

jr_08d_5a66:
	xor b                                            ; $5a66: $a8
	pop af                                           ; $5a67: $f1
	ld [hl], $41                                     ; $5a68: $36 $41
	ld b, h                                          ; $5a6a: $44
	ld d, b                                          ; $5a6b: $50
	add a                                            ; $5a6c: $87
	ldh a, [$5d]                                     ; $5a6d: $f0 $5d
	and b                                            ; $5a6f: $a0
	cpl                                              ; $5a70: $2f
	add sp, -$4a                                     ; $5a71: $e8 $b6
	add hl, bc                                       ; $5a73: $09
	adc b                                            ; $5a74: $88
	sub c                                            ; $5a75: $91
	ld c, d                                          ; $5a76: $4a
	ld d, c                                          ; $5a77: $51
	inc a                                            ; $5a78: $3c
	xor c                                            ; $5a79: $a9
	ld c, c                                          ; $5a7a: $49
	ccf                                              ; $5a7b: $3f
	ld c, a                                          ; $5a7c: $4f
	ldh a, [$29]                                     ; $5a7d: $f0 $29
	ld a, $38                                        ; $5a7f: $3e $38
	ld c, d                                          ; $5a81: $4a
	ld d, c                                          ; $5a82: $51
	and b                                            ; $5a83: $a0
	xor $2d                                          ; $5a84: $ee $2d
	xor b                                            ; $5a86: $a8
	ldh a, [$9f]                                     ; $5a87: $f0 $9f
	ld e, e                                          ; $5a89: $5b
	ccf                                              ; $5a8a: $3f
	ld d, d                                          ; $5a8b: $52
	ld d, c                                          ; $5a8c: $51
	ld c, h                                          ; $5a8d: $4c
	and b                                            ; $5a8e: $a0
	ldh a, [$9f]                                     ; $5a8f: $f0 $9f
	ld e, e                                          ; $5a91: $5b
	ccf                                              ; $5a92: $3f
	ld d, d                                          ; $5a93: $52
	ld d, c                                          ; $5a94: $51

jr_08d_5a95:
	inc a                                            ; $5a95: $3c
	ld d, b                                          ; $5a96: $50
	ld c, b                                          ; $5a97: $48
	and b                                            ; $5a98: $a0
	cpl                                              ; $5a99: $2f
	pop af                                           ; $5a9a: $f1
	ld [hl], $7b                                     ; $5a9b: $36 $7b
	ld a, [hl-]                                      ; $5a9d: $3a
	ld e, h                                          ; $5a9e: $5c
	ld d, [hl]                                       ; $5a9f: $56
	jr c, jr_08d_5ada                                ; $5aa0: $38 $38

	ld b, h                                          ; $5aa2: $44
	ld e, l                                          ; $5aa3: $5d
	ld b, d                                          ; $5aa4: $42
	ldh a, [rAUDVOL]                                 ; $5aa5: $f0 $24
	ld b, h                                          ; $5aa7: $44
	ld b, l                                          ; $5aa8: $45
	add hl, bc                                       ; $5aa9: $09
	ld b, b                                          ; $5aaa: $40
	inc [hl]                                         ; $5aab: $34
	ld b, b                                          ; $5aac: $40
	ld c, l                                          ; $5aad: $4d
	ld c, e                                          ; $5aae: $4b
	inc de                                           ; $5aaf: $13
	ldh a, [rTAC]                                    ; $5ab0: $f0 $07
	inc a                                            ; $5ab2: $3c
	dec sp                                           ; $5ab3: $3b
	ccf                                              ; $5ab4: $3f
	ld d, d                                          ; $5ab5: $52
	ld d, c                                          ; $5ab6: $51
	ld e, l                                          ; $5ab7: $5d
	ld e, d                                          ; $5ab8: $5a
	ld c, b                                          ; $5ab9: $48
	and b                                            ; $5aba: $a0
	ld l, a                                          ; $5abb: $6f
	ld b, a                                          ; $5abc: $47
	ld b, b                                          ; $5abd: $40
	ld b, c                                          ; $5abe: $41
	ld a, [hl-]                                      ; $5abf: $3a
	sbc d                                            ; $5ac0: $9a
	add d                                            ; $5ac1: $82
	dec sp                                           ; $5ac2: $3b
	ccf                                              ; $5ac3: $3f
	ld c, a                                          ; $5ac4: $4f
	xor h                                            ; $5ac5: $ac
	ldh a, [rAUD1LOW]                                ; $5ac6: $f0 $13
	ldh a, [$63]                                     ; $5ac8: $f0 $63
	ld b, h                                          ; $5aca: $44
	ld c, c                                          ; $5acb: $49
	ld [hl], a                                       ; $5acc: $77
	jr c, jr_08d_5b21                                ; $5acd: $38 $52

	ld d, c                                          ; $5acf: $51
	and b                                            ; $5ad0: $a0
	ld b, b                                          ; $5ad1: $40
	ld c, l                                          ; $5ad2: $4d
	ld c, e                                          ; $5ad3: $4b
	ldh a, [rAUD1LOW]                                ; $5ad4: $f0 $13
	ldh a, [$63]                                     ; $5ad6: $f0 $63
	ld c, d                                          ; $5ad8: $4a
	ld d, c                                          ; $5ad9: $51

jr_08d_5ada:
	and b                                            ; $5ada: $a0
	cpl                                              ; $5adb: $2f
	db $ed                                           ; $5adc: $ed
	and b                                            ; $5add: $a0
	ld e, [hl]                                       ; $5ade: $5e
	ldh a, [rHDMA1]                                  ; $5adf: $f0 $51
	dec sp                                           ; $5ae1: $3b
	ccf                                              ; $5ae2: $3f
	ld e, h                                          ; $5ae3: $5c
	ccf                                              ; $5ae4: $3f
	ld a, [hl-]                                      ; $5ae5: $3a
	jr c, jr_08d_5b2d                                ; $5ae6: $38 $45

	add hl, bc                                       ; $5ae8: $09
	ld l, a                                          ; $5ae9: $6f
	ld c, a                                          ; $5aea: $4f
	ld c, d                                          ; $5aeb: $4a
	ld d, c                                          ; $5aec: $51
	xor b                                            ; $5aed: $a8
	ld e, d                                          ; $5aee: $5a
	add hl, sp                                       ; $5aef: $39
	ld a, $52                                        ; $5af0: $3e $52
	ld a, $66                                        ; $5af2: $3e $66
	add hl, sp                                       ; $5af4: $39
	ld c, b                                          ; $5af5: $48
	and b                                            ; $5af6: $a0
	ld l, a                                          ; $5af7: $6f
	ld c, a                                          ; $5af8: $4f
	ld b, b                                          ; $5af9: $40
	add hl, sp                                       ; $5afa: $39
	ld c, d                                          ; $5afb: $4a
	ld d, c                                          ; $5afc: $51
	xor b                                            ; $5afd: $a8
	pop af                                           ; $5afe: $f1
	sbc $57                                          ; $5aff: $de $57
	ld d, d                                          ; $5b01: $52
	ld a, $3d                                        ; $5b02: $3e $3d
	ld c, h                                          ; $5b04: $4c
	ld c, b                                          ; $5b05: $48
	and b                                            ; $5b06: $a0
	pop af                                           ; $5b07: $f1
	sbc $57                                          ; $5b08: $de $57
	ld d, d                                          ; $5b0a: $52
	ld a, $3d                                        ; $5b0b: $3e $3d
	ld c, h                                          ; $5b0d: $4c
	ld c, b                                          ; $5b0e: $48
	and b                                            ; $5b0f: $a0
	add hl, bc                                       ; $5b10: $09
	db $ed                                           ; $5b11: $ed
	ld d, a                                          ; $5b12: $57
	xor h                                            ; $5b13: $ac
	ldh a, [$9a]                                     ; $5b14: $f0 $9a
	ld e, h                                          ; $5b16: $5c
	ldh a, [rTMA]                                    ; $5b17: $f0 $06
	dec sp                                           ; $5b19: $3b
	ccf                                              ; $5b1a: $3f
	ld d, l                                          ; $5b1b: $55
	ld c, l                                          ; $5b1c: $4d
	ccf                                              ; $5b1d: $3f
	xor h                                            ; $5b1e: $ac
	add sp, -$80                                     ; $5b1f: $e8 $80

jr_08d_5b21:
	and b                                            ; $5b21: $a0
	cpl                                              ; $5b22: $2f
	ld b, e                                          ; $5b23: $43
	ld l, d                                          ; $5b24: $6a
	ldh a, [$0d]                                     ; $5b25: $f0 $0d
	ld c, e                                          ; $5b27: $4b
	inc [hl]                                         ; $5b28: $34
	halt                                             ; $5b29: $76
	inc a                                            ; $5b2a: $3c
	ld d, b                                          ; $5b2b: $50
	inc de                                           ; $5b2c: $13

jr_08d_5b2d:
	ldh a, [$3b]                                     ; $5b2d: $f0 $3b
	dec sp                                           ; $5b2f: $3b
	ccf                                              ; $5b30: $3f
	db $ec                                           ; $5b31: $ec
	ld a, [bc]                                       ; $5b32: $0a
	and c                                            ; $5b33: $a1
	xor $2d                                          ; $5b34: $ee $2d
	inc [hl]                                         ; $5b36: $34
	jr c, @+$3a                                      ; $5b37: $38 $38

	ld c, d                                          ; $5b39: $4a
	ld d, c                                          ; $5b3a: $51
	ld b, l                                          ; $5b3b: $45
	dec [hl]                                         ; $5b3c: $35
	inc hl                                           ; $5b3d: $23
	inc de                                           ; $5b3e: $13
	sbc c                                            ; $5b3f: $99
	dec sp                                           ; $5b40: $3b
	ccf                                              ; $5b41: $3f
	jr c, jr_08d_5b96                                ; $5b42: $38 $52

	ld d, c                                          ; $5b44: $51
	inc a                                            ; $5b45: $3c
	ld d, b                                          ; $5b46: $50
	and b                                            ; $5b47: $a0
	or [hl]                                          ; $5b48: $b6
	xor b                                            ; $5b49: $a8
	ld d, d                                          ; $5b4a: $52
	dec a                                            ; $5b4b: $3d
	inc [hl]                                         ; $5b4c: $34
	ld l, d                                          ; $5b4d: $6a
	ldh a, [$0d]                                     ; $5b4e: $f0 $0d
	and b                                            ; $5b50: $a0
	cpl                                              ; $5b51: $2f
	ld b, e                                          ; $5b52: $43
	ld e, e                                          ; $5b53: $5b
	ld d, [hl]                                       ; $5b54: $56
	ld b, [hl]                                       ; $5b55: $46
	inc [hl]                                         ; $5b56: $34
	ld b, b                                          ; $5b57: $40
	add hl, sp                                       ; $5b58: $39
	ld d, c                                          ; $5b59: $51
	ld c, [hl]                                       ; $5b5a: $4e
	ld b, l                                          ; $5b5b: $45
	and b                                            ; $5b5c: $a0
	pop af                                           ; $5b5d: $f1
	add d                                            ; $5b5e: $82
	inc a                                            ; $5b5f: $3c
	inc [hl]                                         ; $5b60: $34
	db $ec                                           ; $5b61: $ec
	rst AddAOntoHL                                          ; $5b62: $ef
	ld c, a                                          ; $5b63: $4f
	inc de                                           ; $5b64: $13
	ld d, h                                          ; $5b65: $54
	ld d, h                                          ; $5b66: $54
	ld b, a                                          ; $5b67: $47
	ld a, b                                          ; $5b68: $78
	ld d, d                                          ; $5b69: $52
	ld a, $3d                                        ; $5b6a: $3e $3d
	ld c, h                                          ; $5b6c: $4c
	and b                                            ; $5b6d: $a0
	cpl                                              ; $5b6e: $2f
	ld b, e                                          ; $5b6f: $43
	ld [$36af], a                                    ; $5b70: $ea $af $36
	rla                                              ; $5b73: $17
	add sp, $50                                      ; $5b74: $e8 $50
	inc de                                           ; $5b76: $13
	add sp, -$7a                                     ; $5b77: $e8 $86
	and e                                            ; $5b79: $a3
	db $ed                                           ; $5b7a: $ed
	ld d, a                                          ; $5b7b: $57
	xor h                                            ; $5b7c: $ac
	ld c, c                                          ; $5b7d: $49
	ccf                                              ; $5b7e: $3f
	ld c, a                                          ; $5b7f: $4f
	ld [$a827], a                                    ; $5b80: $ea $27 $a8
	ld l, d                                          ; $5b83: $6a
	ldh a, [$0d]                                     ; $5b84: $f0 $0d
	inc [hl]                                         ; $5b86: $34
	ld d, d                                          ; $5b87: $52
	dec a                                            ; $5b88: $3d
	ld c, b                                          ; $5b89: $48
	and b                                            ; $5b8a: $a0
	cpl                                              ; $5b8b: $2f
	ld b, e                                          ; $5b8c: $43
	ld l, d                                          ; $5b8d: $6a
	ldh a, [$0d]                                     ; $5b8e: $f0 $0d
	ld d, d                                          ; $5b90: $52
	dec a                                            ; $5b91: $3d
	xor h                                            ; $5b92: $ac
	jp hl                                            ; $5b93: $e9


	or b                                             ; $5b94: $b0
	and c                                            ; $5b95: $a1

jr_08d_5b96:
	ld c, e                                          ; $5b96: $4b
	inc [hl]                                         ; $5b97: $34
	xor $2d                                          ; $5b98: $ee $2d
	xor b                                            ; $5b9a: $a8
	ld [$a0f8], a                                    ; $5b9b: $ea $f8 $a0
	cpl                                              ; $5b9e: $2f
	ld b, e                                          ; $5b9f: $43
	or h                                             ; $5ba0: $b4
	xor h                                            ; $5ba1: $ac
	ld d, d                                          ; $5ba2: $52
	dec a                                            ; $5ba3: $3d
	db $ec                                           ; $5ba4: $ec
	inc l                                            ; $5ba5: $2c
	ld c, h                                          ; $5ba6: $4c
	and b                                            ; $5ba7: $a0
	db $ed                                           ; $5ba8: $ed
	ld d, a                                          ; $5ba9: $57
	xor h                                            ; $5baa: $ac
	ld [$a827], a                                    ; $5bab: $ea $27 $a8
	ld l, d                                          ; $5bae: $6a
	ldh a, [$0d]                                     ; $5baf: $f0 $0d
	inc [hl]                                         ; $5bb1: $34
	ld d, d                                          ; $5bb2: $52
	dec a                                            ; $5bb3: $3d
	ld c, b                                          ; $5bb4: $48
	and b                                            ; $5bb5: $a0
	db $ed                                           ; $5bb6: $ed
	ld d, a                                          ; $5bb7: $57
	ret                                              ; $5bb8: $c9


	inc de                                           ; $5bb9: $13
	ldh a, [$f3]                                     ; $5bba: $f0 $f3
	ld c, l                                          ; $5bbc: $4d
	ld h, c                                          ; $5bbd: $61
	ld d, [hl]                                       ; $5bbe: $56
	jr c, jr_08d_5c13                                ; $5bbf: $38 $52

	ld a, $3d                                        ; $5bc1: $3e $3d
	ld e, l                                          ; $5bc3: $5d
	ld e, d                                          ; $5bc4: $5a
	xor l                                            ; $5bc5: $ad
	ld l, d                                          ; $5bc6: $6a
	ldh a, [$0d]                                     ; $5bc7: $f0 $0d
	inc [hl]                                         ; $5bc9: $34
	ld d, d                                          ; $5bca: $52
	dec a                                            ; $5bcb: $3d
	ld c, b                                          ; $5bcc: $48
	and b                                            ; $5bcd: $a0
	cpl                                              ; $5bce: $2f
	ld b, e                                          ; $5bcf: $43
	ld [hl], b                                       ; $5bd0: $70
	ld [hl], c                                       ; $5bd1: $71
	ld b, c                                          ; $5bd2: $41
	ld c, h                                          ; $5bd3: $4c
	xor b                                            ; $5bd4: $a8
	ld c, d                                          ; $5bd5: $4a
	ld c, a                                          ; $5bd6: $4f
	inc [hl]                                         ; $5bd7: $34
	ld d, d                                          ; $5bd8: $52
	dec a                                            ; $5bd9: $3d
	ldh a, [$3b]                                     ; $5bda: $f0 $3b
	dec sp                                           ; $5bdc: $3b
	ccf                                              ; $5bdd: $3f
	ld c, a                                          ; $5bde: $4f
	inc de                                           ; $5bdf: $13
	db $ec                                           ; $5be0: $ec
	ld a, [bc]                                       ; $5be1: $0a
	and c                                            ; $5be2: $a1
	ld c, a                                          ; $5be3: $4f
	inc [hl]                                         ; $5be4: $34
	ld [$a0f8], a                                    ; $5be5: $ea $f8 $a0
	db $ed                                           ; $5be8: $ed
	ld d, a                                          ; $5be9: $57
	ld c, c                                          ; $5bea: $49
	ccf                                              ; $5beb: $3f
	ld c, a                                          ; $5bec: $4f
	inc de                                           ; $5bed: $13
	ld [$4c27], a                                    ; $5bee: $ea $27 $4c
	and b                                            ; $5bf1: $a0
	cpl                                              ; $5bf2: $2f
	ld b, e                                          ; $5bf3: $43
	ld l, d                                          ; $5bf4: $6a
	ldh a, [$0d]                                     ; $5bf5: $f0 $0d
	xor h                                            ; $5bf7: $ac
	ld d, d                                          ; $5bf8: $52
	dec a                                            ; $5bf9: $3d
	jp hl                                            ; $5bfa: $e9


	or b                                             ; $5bfb: $b0
	and b                                            ; $5bfc: $a0
	xor $2d                                          ; $5bfd: $ee $2d
	inc [hl]                                         ; $5bff: $34
	ld a, [hl]                                       ; $5c00: $7e
	jr c, jr_08d_5c4d                                ; $5c01: $38 $4a

	ld d, c                                          ; $5c03: $51
	ld b, l                                          ; $5c04: $45
	and b                                            ; $5c05: $a0
	cpl                                              ; $5c06: $2f
	ld b, e                                          ; $5c07: $43
	or h                                             ; $5c08: $b4
	xor h                                            ; $5c09: $ac
	ld d, d                                          ; $5c0a: $52
	dec a                                            ; $5c0b: $3d
	db $ec                                           ; $5c0c: $ec
	inc l                                            ; $5c0d: $2c
	ld b, l                                          ; $5c0e: $45
	and b                                            ; $5c0f: $a0
	db $ed                                           ; $5c10: $ed
	ld d, a                                          ; $5c11: $57
	inc de                                           ; $5c12: $13

jr_08d_5c13:
	ld [$4c27], a                                    ; $5c13: $ea $27 $4c
	and b                                            ; $5c16: $a0
	or [hl]                                          ; $5c17: $b6
	xor b                                            ; $5c18: $a8
	ld a, [hl]                                       ; $5c19: $7e
	jr c, jr_08d_5c66                                ; $5c1a: $38 $4a

	ld d, c                                          ; $5c1c: $51
	ld b, l                                          ; $5c1d: $45
	and b                                            ; $5c1e: $a0
	db $ed                                           ; $5c1f: $ed
	ld d, a                                          ; $5c20: $57
	ret                                              ; $5c21: $c9


	inc de                                           ; $5c22: $13
	ldh a, [$f3]                                     ; $5c23: $f0 $f3
	ld c, l                                          ; $5c25: $4d
	ld h, c                                          ; $5c26: $61
	ld d, [hl]                                       ; $5c27: $56
	jr c, jr_08d_5c7c                                ; $5c28: $38 $52

	ld a, $3d                                        ; $5c2a: $3e $3d
	ld c, h                                          ; $5c2c: $4c
	and b                                            ; $5c2d: $a0
	cpl                                              ; $5c2e: $2f
	ld b, e                                          ; $5c2f: $43
	rst JumpTable                                          ; $5c30: $c7
	ld c, b                                          ; $5c31: $48
	and b                                            ; $5c32: $a0
	db $ed                                           ; $5c33: $ed
	ld d, a                                          ; $5c34: $57
	ld c, c                                          ; $5c35: $49
	ccf                                              ; $5c36: $3f
	ld c, a                                          ; $5c37: $4f
	inc de                                           ; $5c38: $13
	ld [$a027], a                                    ; $5c39: $ea $27 $a0
	cpl                                              ; $5c3c: $2f
	ld b, e                                          ; $5c3d: $43
	db $ec                                           ; $5c3e: $ec
	cp c                                             ; $5c3f: $b9
	xor b                                            ; $5c40: $a8
	ld d, d                                          ; $5c41: $52
	dec a                                            ; $5c42: $3d
	jp hl                                            ; $5c43: $e9


	or b                                             ; $5c44: $b0
	and b                                            ; $5c45: $a0
	db $ed                                           ; $5c46: $ed
	ld d, a                                          ; $5c47: $57
	ld [$a027], a                                    ; $5c48: $ea $27 $a0
	cpl                                              ; $5c4b: $2f
	ld b, e                                          ; $5c4c: $43

jr_08d_5c4d:
	ld b, b                                          ; $5c4d: $40
	add hl, sp                                       ; $5c4e: $39
	inc [hl]                                         ; $5c4f: $34
	db $ec                                           ; $5c50: $ec
	cp c                                             ; $5c51: $b9
	and b                                            ; $5c52: $a0
	db $ed                                           ; $5c53: $ed
	ld d, a                                          ; $5c54: $57
	ret                                              ; $5c55: $c9


	inc de                                           ; $5c56: $13
	ldh a, [$f3]                                     ; $5c57: $f0 $f3
	ld c, l                                          ; $5c59: $4d
	ld h, c                                          ; $5c5a: $61
	ld d, [hl]                                       ; $5c5b: $56
	jr c, jr_08d_5cb0                                ; $5c5c: $38 $52

	ld a, $3d                                        ; $5c5e: $3e $3d
	and b                                            ; $5c60: $a0
	ld c, e                                          ; $5c61: $4b
	ld [hl], h                                       ; $5c62: $74
	inc [hl]                                         ; $5c63: $34
	ld a, b                                          ; $5c64: $78
	dec a                                            ; $5c65: $3d

jr_08d_5c66:
	ld b, d                                          ; $5c66: $42
	ld d, e                                          ; $5c67: $53
	inc de                                           ; $5c68: $13
	ldh a, [$2a]                                     ; $5c69: $f0 $2a
	ldh a, [$f5]                                     ; $5c6b: $f0 $f5
	jr c, jr_08d_5cb9                                ; $5c6d: $38 $4a

	ld a, $3d                                        ; $5c6f: $3e $3d
	ld c, b                                          ; $5c71: $48
	and b                                            ; $5c72: $a0
	cpl                                              ; $5c73: $2f
	ld b, e                                          ; $5c74: $43
	xor $10                                          ; $5c75: $ee $10
	xor b                                            ; $5c77: $a8
	add sp, -$72                                     ; $5c78: $e8 $8e
	and e                                            ; $5c7a: $a3
	ld b, [hl]                                       ; $5c7b: $46

jr_08d_5c7c:
	dec sp                                           ; $5c7c: $3b
	inc [hl]                                         ; $5c7d: $34
	ld b, b                                          ; $5c7e: $40
	add hl, sp                                       ; $5c7f: $39
	ld c, d                                          ; $5c80: $4a
	ld a, $3d                                        ; $5c81: $3e $3d
	and b                                            ; $5c83: $a0
	cpl                                              ; $5c84: $2f
	ld b, e                                          ; $5c85: $43
	db $eb                                           ; $5c86: $eb
	rst FarCall                                          ; $5c87: $f7
	and c                                            ; $5c88: $a1
	cpl                                              ; $5c89: $2f
	ld b, e                                          ; $5c8a: $43
	ld b, [hl]                                       ; $5c8b: $46
	ld d, a                                          ; $5c8c: $57
	ld d, e                                          ; $5c8d: $53
	ld c, c                                          ; $5c8e: $49
	add hl, sp                                       ; $5c8f: $39
	xor b                                            ; $5c90: $a8
	ldh a, [$29]                                     ; $5c91: $f0 $29
	ld a, $38                                        ; $5c93: $3e $38
	ld b, l                                          ; $5c95: $45
	xor b                                            ; $5c96: $a8
	ld [hl-], a                                      ; $5c97: $32
	db $ec                                           ; $5c98: $ec
	rst SubAFromDE                                          ; $5c99: $df
	ld b, a                                          ; $5c9a: $47
	db $eb                                           ; $5c9b: $eb
	dec a                                            ; $5c9c: $3d
	inc de                                           ; $5c9d: $13
	ld c, a                                          ; $5c9e: $4f
	ld d, b                                          ; $5c9f: $50
	ld e, [hl]                                       ; $5ca0: $5e
	ld c, [hl]                                       ; $5ca1: $4e
	ld a, [hl-]                                      ; $5ca2: $3a
	ld b, c                                          ; $5ca3: $41
	ccf                                              ; $5ca4: $3f
	xor h                                            ; $5ca5: $ac
	halt                                             ; $5ca6: $76
	ld c, e                                          ; $5ca7: $4b
	pop af                                           ; $5ca8: $f1
	and d                                            ; $5ca9: $a2
	ld a, c                                          ; $5caa: $79
	pop af                                           ; $5cab: $f1
	ld b, d                                          ; $5cac: $42
	ld b, h                                          ; $5cad: $44
	ld e, c                                          ; $5cae: $59
	scf                                              ; $5caf: $37

jr_08d_5cb0:
	inc sp                                           ; $5cb0: $33
	add hl, bc                                       ; $5cb1: $09
	ld d, $a8                                        ; $5cb2: $16 $a8
	ld c, c                                          ; $5cb4: $49
	inc [hl]                                         ; $5cb5: $34
	db $ed                                           ; $5cb6: $ed
	xor l                                            ; $5cb7: $ad
	ld d, d                                          ; $5cb8: $52

jr_08d_5cb9:
	ld c, d                                          ; $5cb9: $4a
	xor h                                            ; $5cba: $ac
	xor $06                                          ; $5cbb: $ee $06
	ld b, a                                          ; $5cbd: $47
	ld a, d                                          ; $5cbe: $7a
	ld d, a                                          ; $5cbf: $57
	ld d, d                                          ; $5cc0: $52
	ld a, c                                          ; $5cc1: $79
	ld b, c                                          ; $5cc2: $41
	inc a                                            ; $5cc3: $3c
	and c                                            ; $5cc4: $a1
	cpl                                              ; $5cc5: $2f
	ld b, e                                          ; $5cc6: $43
	jr c, jr_08d_5d01                                ; $5cc7: $38 $38

	ld b, l                                          ; $5cc9: $45
	xor b                                            ; $5cca: $a8
	ld a, d                                          ; $5ccb: $7a
	ld e, a                                          ; $5ccc: $5f
	add hl, sp                                       ; $5ccd: $39
	and b                                            ; $5cce: $a0
	db $ec                                           ; $5ccf: $ec
	cp c                                             ; $5cd0: $b9
	ld c, b                                          ; $5cd1: $48
	and b                                            ; $5cd2: $a0
	ld d, $a8                                        ; $5cd3: $16 $a8
	db $ec                                           ; $5cd5: $ec
	push bc                                          ; $5cd6: $c5
	xor h                                            ; $5cd7: $ac
	or b                                             ; $5cd8: $b0
	and b                                            ; $5cd9: $a0
	jp z, $ebac                                      ; $5cda: $ca $ac $eb

	ld e, d                                          ; $5cdd: $5a
	and b                                            ; $5cde: $a0
	add hl, bc                                       ; $5cdf: $09
	xor $10                                          ; $5ce0: $ee $10
	and b                                            ; $5ce2: $a0
	cpl                                              ; $5ce3: $2f
	ld b, e                                          ; $5ce4: $43
	ld h, h                                          ; $5ce5: $64
	ld e, c                                          ; $5ce6: $59
	jr c, jr_08d_5d1d                                ; $5ce7: $38 $34

	db $ed                                           ; $5ce9: $ed
	or d                                             ; $5cea: $b2
	ld e, b                                          ; $5ceb: $58
	ld e, c                                          ; $5cec: $59
	ld b, c                                          ; $5ced: $41
	xor b                                            ; $5cee: $a8
	sbc c                                            ; $5cef: $99
	dec sp                                           ; $5cf0: $3b
	ccf                                              ; $5cf1: $3f
	ld d, l                                          ; $5cf2: $55
	ld c, l                                          ; $5cf3: $4d
	ld e, c                                          ; $5cf4: $59
	and b                                            ; $5cf5: $a0
	cpl                                              ; $5cf6: $2f
	ld b, e                                          ; $5cf7: $43
	db $ec                                           ; $5cf8: $ec
	reti                                             ; $5cf9: $d9


	xor h                                            ; $5cfa: $ac
	ld d, h                                          ; $5cfb: $54
	ld b, d                                          ; $5cfc: $42
	pop af                                           ; $5cfd: $f1
	ld de, $573a                                     ; $5cfe: $11 $3a $57

jr_08d_5d01:
	ld e, e                                          ; $5d01: $5b
	ld d, [hl]                                       ; $5d02: $56
	xor h                                            ; $5d03: $ac
	ldh a, [$e1]                                     ; $5d04: $f0 $e1
	ldh a, [rSB]                                     ; $5d06: $f0 $01
	ld d, b                                          ; $5d08: $50
	ld c, l                                          ; $5d09: $4d
	ld c, [hl]                                       ; $5d0a: $4e
	ld b, l                                          ; $5d0b: $45
	ld a, [hl-]                                      ; $5d0c: $3a
	ld [hl], h                                       ; $5d0d: $74
	and b                                            ; $5d0e: $a0
	cpl                                              ; $5d0f: $2f
	ld b, e                                          ; $5d10: $43
	db $eb                                           ; $5d11: $eb
	inc [hl]                                         ; $5d12: $34
	xor h                                            ; $5d13: $ac
	ldh a, [rSVBK]                                   ; $5d14: $f0 $70
	ld b, a                                          ; $5d16: $47
	db $ed                                           ; $5d17: $ed
	ld e, b                                          ; $5d18: $58
	and b                                            ; $5d19: $a0
	cpl                                              ; $5d1a: $2f
	ld b, e                                          ; $5d1b: $43
	db $ec                                           ; $5d1c: $ec

jr_08d_5d1d:
	ldh [rWX], a                                     ; $5d1d: $e0 $4b
	xor h                                            ; $5d1f: $ac
	ld c, c                                          ; $5d20: $49
	add hl, sp                                       ; $5d21: $39
	ld c, c                                          ; $5d22: $49
	add hl, sp                                       ; $5d23: $39
	ld a, b                                          ; $5d24: $78
	ld a, [hl-]                                      ; $5d25: $3a
	inc a                                            ; $5d26: $3c
	dec sp                                           ; $5d27: $3b
	dec a                                            ; $5d28: $3d
	ld a, [hl-]                                      ; $5d29: $3a
	and b                                            ; $5d2a: $a0
	cpl                                              ; $5d2b: $2f
	ld b, e                                          ; $5d2c: $43
	ld e, d                                          ; $5d2d: $5a
	add hl, sp                                       ; $5d2e: $39
	ld a, $3d                                        ; $5d2f: $3e $3d
	ld b, c                                          ; $5d31: $41
	ld b, h                                          ; $5d32: $44
	ld e, a                                          ; $5d33: $5f
	add hl, sp                                       ; $5d34: $39
	xor c                                            ; $5d35: $a9
	db $eb                                           ; $5d36: $eb
	inc [hl]                                         ; $5d37: $34
	xor h                                            ; $5d38: $ac
	ldh a, [rSVBK]                                   ; $5d39: $f0 $70
	ld b, a                                          ; $5d3b: $47
	db $ed                                           ; $5d3c: $ed
	ld e, b                                          ; $5d3d: $58
	and b                                            ; $5d3e: $a0
	cpl                                              ; $5d3f: $2f
	ld b, e                                          ; $5d40: $43
	db $ec                                           ; $5d41: $ec
	ldh [$34], a                                     ; $5d42: $e0 $34
	ld [hl], b                                       ; $5d44: $70
	ld [hl], c                                       ; $5d45: $71
	ld b, c                                          ; $5d46: $41
	ld c, h                                          ; $5d47: $4c
	xor b                                            ; $5d48: $a8
	add sp, -$21                                     ; $5d49: $e8 $df
	xor h                                            ; $5d4b: $ac
	jp hl                                            ; $5d4c: $e9


	xor [hl]                                         ; $5d4d: $ae
	and b                                            ; $5d4e: $a0
	ld d, d                                          ; $5d4f: $52

jr_08d_5d50:
	inc [hl]                                         ; $5d50: $34
	db $eb                                           ; $5d51: $eb
	inc [hl]                                         ; $5d52: $34
	ld h, e                                          ; $5d53: $63
	ld c, h                                          ; $5d54: $4c
	xor b                                            ; $5d55: $a8
	ld b, [hl]                                       ; $5d56: $46
	ld a, [hl-]                                      ; $5d57: $3a
	dec a                                            ; $5d58: $3d
	ld b, a                                          ; $5d59: $47
	inc a                                            ; $5d5a: $3c
	ld b, c                                          ; $5d5b: $41
	di                                               ; $5d5c: $f3
	ld e, a                                          ; $5d5d: $5f
	ld e, h                                          ; $5d5e: $5c
	ld e, b                                          ; $5d5f: $58
	ld h, d                                          ; $5d60: $62
	inc de                                           ; $5d61: $13
	di                                               ; $5d62: $f3
	sub $fb                                          ; $5d63: $d6 $fb
	cpl                                              ; $5d65: $2f
	ld d, c                                          ; $5d66: $51
	ld c, [hl]                                       ; $5d67: $4e
	ld b, d                                          ; $5d68: $42
	ld c, e                                          ; $5d69: $4b
	ldh a, [rAUD1LOW]                                ; $5d6a: $f0 $13
	ldh a, [$63]                                     ; $5d6c: $f0 $63
	ld b, h                                          ; $5d6e: $44
	inc a                                            ; $5d6f: $3c
	ld d, b                                          ; $5d70: $50
	and b                                            ; $5d71: $a0
	cpl                                              ; $5d72: $2f
	ld b, e                                          ; $5d73: $43
	db $ec                                           ; $5d74: $ec
	cp c                                             ; $5d75: $b9

jr_08d_5d76:
	dec [hl]                                         ; $5d76: $35
	rla                                              ; $5d77: $17
	ld [hl-], a                                      ; $5d78: $32
	ld c, a                                          ; $5d79: $4f
	dec sp                                           ; $5d7a: $3b
	ld c, c                                          ; $5d7b: $49
	pop af                                           ; $5d7c: $f1
	ld [hl-], a                                      ; $5d7d: $32
	ld d, b                                          ; $5d7e: $50
	ld c, l                                          ; $5d7f: $4d
	ld c, [hl]                                       ; $5d80: $4e
	ld c, c                                          ; $5d81: $49
	inc de                                           ; $5d82: $13
	ld [hl], a                                       ; $5d83: $77
	dec sp                                           ; $5d84: $3b
	ccf                                              ; $5d85: $3f
	dec a                                            ; $5d86: $3d
	ld b, l                                          ; $5d87: $45
	and e                                            ; $5d88: $a3
	ld l, a                                          ; $5d89: $6f
	ld h, d                                          ; $5d8a: $62
	sbc c                                            ; $5d8b: $99
	dec a                                            ; $5d8c: $3d
	ld a, c                                          ; $5d8d: $79
	ld c, [hl]                                       ; $5d8e: $4e
	ld a, [hl-]                                      ; $5d8f: $3a
	ld b, c                                          ; $5d90: $41
	ccf                                              ; $5d91: $3f
	xor h                                            ; $5d92: $ac
	ld l, [hl]                                       ; $5d93: $6e
	dec sp                                           ; $5d94: $3b
	ccf                                              ; $5d95: $3f
	ld d, l                                          ; $5d96: $55
	ld c, l                                          ; $5d97: $4d
	ld c, [hl]                                       ; $5d98: $4e
	db $ec                                           ; $5d99: $ec
	ret c                                            ; $5d9a: $d8

	xor b                                            ; $5d9b: $a8

jr_08d_5d9c:
	ldh a, [c]                                       ; $5d9c: $f2
	ld bc, $7963                                     ; $5d9d: $01 $63 $79
	ld c, [hl]                                       ; $5da0: $4e
	ld h, e                                          ; $5da1: $63
	ld c, h                                          ; $5da2: $4c
	and b                                            ; $5da3: $a0
	cpl                                              ; $5da4: $2f
	ld b, e                                          ; $5da5: $43
	ld [hl], b                                       ; $5da6: $70
	ld [hl], c                                       ; $5da7: $71
	ld b, c                                          ; $5da8: $41
	xor b                                            ; $5da9: $a8
	ldh a, [$5c]                                     ; $5daa: $f0 $5c
	inc a                                            ; $5dac: $3c
	dec sp                                           ; $5dad: $3b
	dec a                                            ; $5dae: $3d
	and b                                            ; $5daf: $a0
	ldh a, [rAUD4ENV]                                ; $5db0: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5db2: $f0 $23
	jr c, jr_08d_5d50                                ; $5db4: $38 $9a

	ld a, $3f                                        ; $5db6: $3e $3f
	ld d, l                                          ; $5db8: $55
	ld c, l                                          ; $5db9: $4d
	ld c, [hl]                                       ; $5dba: $4e
	ld h, e                                          ; $5dbb: $63
	inc de                                           ; $5dbc: $13
	ld c, h                                          ; $5dbd: $4c
	dec [hl]                                         ; $5dbe: $35
	ldh a, [$e5]                                     ; $5dbf: $f0 $e5
	ldh a, [c]                                       ; $5dc1: $f2
	ld [hl], c                                       ; $5dc2: $71
	ldh a, [rTAC]                                    ; $5dc3: $f0 $07
	ldh a, [c]                                       ; $5dc5: $f2
	adc h                                            ; $5dc6: $8c
	pop af                                           ; $5dc7: $f1
	pop de                                           ; $5dc8: $d1
	db $f4                                           ; $5dc9: $f4
	sbc b                                            ; $5dca: $98
	pop af                                           ; $5dcb: $f1
	inc l                                            ; $5dcc: $2c
	ldh a, [c]                                       ; $5dcd: $f2
	adc h                                            ; $5dce: $8c
	ld b, d                                          ; $5dcf: $42
	ldh a, [$c7]                                     ; $5dd0: $f0 $c7
	ldh a, [c]                                       ; $5dd2: $f2
	call $a045                                       ; $5dd3: $cd $45 $a0
	ldh a, [rAUD4ENV]                                ; $5dd6: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5dd8: $f0 $23
	jr c, jr_08d_5d76                                ; $5dda: $38 $9a

	ld a, $3f                                        ; $5ddc: $3e $3f
	ld d, l                                          ; $5dde: $55
	ld c, l                                          ; $5ddf: $4d
	ld c, [hl]                                       ; $5de0: $4e
	ld h, e                                          ; $5de1: $63
	inc de                                           ; $5de2: $13
	ld c, h                                          ; $5de3: $4c
	dec [hl]                                         ; $5de4: $35
	ldh a, [c]                                       ; $5de5: $f2
	adc h                                            ; $5de6: $8c
	pop af                                           ; $5de7: $f1
	inc l                                            ; $5de8: $2c
	ldh a, [rTAC]                                    ; $5de9: $f0 $07
	ldh a, [$58]                                     ; $5deb: $f0 $58
	pop af                                           ; $5ded: $f1
	sbc [hl]                                         ; $5dee: $9e
	db $f4                                           ; $5def: $f4
	sbc b                                            ; $5df0: $98
	pop af                                           ; $5df1: $f1
	pop de                                           ; $5df2: $d1
	ldh a, [c]                                       ; $5df3: $f2
	ld [$f042], a                                    ; $5df4: $ea $42 $f0
	rst JumpTable                                          ; $5df7: $c7
	ldh a, [c]                                       ; $5df8: $f2
	call $a045                                       ; $5df9: $cd $45 $a0
	ldh a, [rAUD4ENV]                                ; $5dfc: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5dfe: $f0 $23
	jr c, jr_08d_5d9c                                ; $5e00: $38 $9a

	ld a, $3f                                        ; $5e02: $3e $3f
	ld d, l                                          ; $5e04: $55
	ld c, l                                          ; $5e05: $4d
	ld c, [hl]                                       ; $5e06: $4e
	ld h, e                                          ; $5e07: $63
	inc de                                           ; $5e08: $13
	ld c, h                                          ; $5e09: $4c

jr_08d_5e0a:
	dec [hl]                                         ; $5e0a: $35
	ldh a, [$58]                                     ; $5e0b: $f0 $58
	di                                               ; $5e0d: $f3
	ld d, e                                          ; $5e0e: $53
	ldh a, [rTAC]                                    ; $5e0f: $f0 $07
	pop af                                           ; $5e11: $f1
	pop de                                           ; $5e12: $d1
	ldh a, [c]                                       ; $5e13: $f2
	jr c, jr_08d_5e0a                                ; $5e14: $38 $f4

	sbc b                                            ; $5e16: $98
	pop af                                           ; $5e17: $f1
	sbc [hl]                                         ; $5e18: $9e
	ldh a, [$58]                                     ; $5e19: $f0 $58
	ld b, d                                          ; $5e1b: $42
	ldh a, [$c7]                                     ; $5e1c: $f0 $c7
	ldh a, [c]                                       ; $5e1e: $f2
	call $a045                                       ; $5e1f: $cd $45 $a0
	cpl                                              ; $5e22: $2f
	ld b, e                                          ; $5e23: $43
	ld [hl], b                                       ; $5e24: $70
	ld [hl], c                                       ; $5e25: $71
	ld b, c                                          ; $5e26: $41
	ld b, l                                          ; $5e27: $45
	xor b                                            ; $5e28: $a8
	ld c, a                                          ; $5e29: $4f
	add hl, sp                                       ; $5e2a: $39
	ldh a, [hDisp0_SCX]                                     ; $5e2b: $f0 $84
	ldh a, [$0d]                                     ; $5e2d: $f0 $0d
	ld c, c                                          ; $5e2f: $49
	ld a, $3a                                        ; $5e30: $3e $3a
	jr c, jr_08d_5e70                                ; $5e32: $38 $3c

	ld d, b                                          ; $5e34: $50
	xor b                                            ; $5e35: $a8
	ld [hl-], a                                      ; $5e36: $32
	ld b, b                                          ; $5e37: $40
	ld b, c                                          ; $5e38: $41
	ld a, [hl-]                                      ; $5e39: $3a
	ld b, a                                          ; $5e3a: $47
	ld a, [$3c36]                                    ; $5e3b: $fa $36 $3c
	jr c, jr_08d_5e89                                ; $5e3e: $38 $49

	ld d, h                                          ; $5e40: $54
	ld d, d                                          ; $5e41: $52
	ld c, d                                          ; $5e42: $4a
	inc de                                           ; $5e43: $13
	add d                                            ; $5e44: $82
	ld h, e                                          ; $5e45: $63
	ld a, [hl-]                                      ; $5e46: $3a
	ld d, l                                          ; $5e47: $55
	ccf                                              ; $5e48: $3f
	ld c, a                                          ; $5e49: $4f
	and e                                            ; $5e4a: $a3
	cpl                                              ; $5e4b: $2f
	ld b, e                                          ; $5e4c: $43
	sbc c                                            ; $5e4d: $99
	dec sp                                           ; $5e4e: $3b
	dec a                                            ; $5e4f: $3d
	and c                                            ; $5e50: $a1
	ldh a, [$34]                                     ; $5e51: $f0 $34
	ld b, a                                          ; $5e53: $47
	inc [hl]                                         ; $5e54: $34
	sbc c                                            ; $5e55: $99
	dec sp                                           ; $5e56: $3b
	ccf                                              ; $5e57: $3f
	ld a, [hl-]                                      ; $5e58: $3a
	jr c, jr_08d_5ebe                                ; $5e59: $38 $63

	xor b                                            ; $5e5b: $a8
	ldh a, [rBGP]                                    ; $5e5c: $f0 $47
	ldh a, [$2a]                                     ; $5e5e: $f0 $2a
	ldh a, [rOCPS]                                   ; $5e60: $f0 $6a
	ld d, a                                          ; $5e62: $57
	ld b, h                                          ; $5e63: $44
	inc a                                            ; $5e64: $3c
	ld d, b                                          ; $5e65: $50
	and b                                            ; $5e66: $a0
	cpl                                              ; $5e67: $2f
	ld b, e                                          ; $5e68: $43
	jp hl                                            ; $5e69: $e9


	dec h                                            ; $5e6a: $25
	ld b, l                                          ; $5e6b: $45
	and b                                            ; $5e6c: $a0
	ldh a, [$34]                                     ; $5e6d: $f0 $34
	ld b, a                                          ; $5e6f: $47

jr_08d_5e70:
	xor b                                            ; $5e70: $a8
	ldh a, [rBGP]                                    ; $5e71: $f0 $47
	ldh a, [$2a]                                     ; $5e73: $f0 $2a
	ldh a, [rOCPS]                                   ; $5e75: $f0 $6a
	ld d, a                                          ; $5e77: $57
	ld c, h                                          ; $5e78: $4c
	and b                                            ; $5e79: $a0
	cpl                                              ; $5e7a: $2f
	ld b, e                                          ; $5e7b: $43
	jp hl                                            ; $5e7c: $e9


	dec h                                            ; $5e7d: $25
	and b                                            ; $5e7e: $a0
	ldh a, [$34]                                     ; $5e7f: $f0 $34
	ld b, a                                          ; $5e81: $47
	inc [hl]                                         ; $5e82: $34
	sbc c                                            ; $5e83: $99
	dec sp                                           ; $5e84: $3b
	ccf                                              ; $5e85: $3f
	ld a, [hl-]                                      ; $5e86: $3a
	jr c, jr_08d_5eec                                ; $5e87: $38 $63

jr_08d_5e89:
	and b                                            ; $5e89: $a0
	db $ec                                           ; $5e8a: $ec
	push bc                                          ; $5e8b: $c5
	xor h                                            ; $5e8c: $ac
	xor $2a                                          ; $5e8d: $ee $2a
	ld b, d                                          ; $5e8f: $42
	ldh a, [c]                                       ; $5e90: $f2
	ld a, e                                          ; $5e91: $7b
	ldh a, [c]                                       ; $5e92: $f2
	ld a, h                                          ; $5e93: $7c
	ld c, h                                          ; $5e94: $4c
	and b                                            ; $5e95: $a0
	cpl                                              ; $5e96: $2f
	ld b, e                                          ; $5e97: $43
	ld b, b                                          ; $5e98: $40
	inc [hl]                                         ; $5e99: $34
	ld b, b                                          ; $5e9a: $40
	ld b, c                                          ; $5e9b: $41
	ld a, [hl-]                                      ; $5e9c: $3a
	inc de                                           ; $5e9d: $13
	ldh a, [c]                                       ; $5e9e: $f2
	ld a, e                                          ; $5e9f: $7b
	ldh a, [c]                                       ; $5ea0: $f2
	ld a, h                                          ; $5ea1: $7c
	ld b, [hl]                                       ; $5ea2: $46
	ld c, [hl]                                       ; $5ea3: $4e
	ld b, d                                          ; $5ea4: $42
	and c                                            ; $5ea5: $a1
	ld [$acab], a                                    ; $5ea6: $ea $ab $ac
	db $ed                                           ; $5ea9: $ed
	ld l, h                                          ; $5eaa: $6c
	ld h, e                                          ; $5eab: $63
	ld c, h                                          ; $5eac: $4c
	and b                                            ; $5ead: $a0
	cpl                                              ; $5eae: $2f
	ld b, e                                          ; $5eaf: $43
	ld b, b                                          ; $5eb0: $40
	add hl, sp                                       ; $5eb1: $39
	ld b, h                                          ; $5eb2: $44
	ld c, h                                          ; $5eb3: $4c
	xor b                                            ; $5eb4: $a8
	ld d, c                                          ; $5eb5: $51
	ld [hl], b                                       ; $5eb6: $70
	ld d, l                                          ; $5eb7: $55
	db $ed                                           ; $5eb8: $ed
	ld l, h                                          ; $5eb9: $6c
	ld c, h                                          ; $5eba: $4c
	and b                                            ; $5ebb: $a0
	ld c, a                                          ; $5ebc: $4f
	add hl, sp                                       ; $5ebd: $39

jr_08d_5ebe:
	di                                               ; $5ebe: $f3
	ld b, a                                          ; $5ebf: $47
	ld b, l                                          ; $5ec0: $45
	ld c, h                                          ; $5ec1: $4c
	and b                                            ; $5ec2: $a0
	cpl                                              ; $5ec3: $2f
	ld b, e                                          ; $5ec4: $43
	ld b, b                                          ; $5ec5: $40
	add hl, sp                                       ; $5ec6: $39
	ld b, h                                          ; $5ec7: $44
	ld c, h                                          ; $5ec8: $4c
	and b                                            ; $5ec9: $a0
	db $ec                                           ; $5eca: $ec
	add d                                            ; $5ecb: $82
	ld b, d                                          ; $5ecc: $42
	ldh a, [c]                                       ; $5ecd: $f2
	ld a, e                                          ; $5ece: $7b
	ldh a, [c]                                       ; $5ecf: $f2
	ld a, h                                          ; $5ed0: $7c
	ld c, h                                          ; $5ed1: $4c
	and b                                            ; $5ed2: $a0
	cpl                                              ; $5ed3: $2f
	ld b, e                                          ; $5ed4: $43
	ld b, b                                          ; $5ed5: $40
	ld c, b                                          ; $5ed6: $48
	inc [hl]                                         ; $5ed7: $34
	inc hl                                           ; $5ed8: $23
	ld b, b                                          ; $5ed9: $40
	add hl, sp                                       ; $5eda: $39
	ld b, h                                          ; $5edb: $44
	ld c, h                                          ; $5edc: $4c
	ld c, b                                          ; $5edd: $48
	and b                                            ; $5ede: $a0
	db $eb                                           ; $5edf: $eb
	ld d, c                                          ; $5ee0: $51
	xor h                                            ; $5ee1: $ac
	ld [$ac13], a                                    ; $5ee2: $ea $13 $ac
	db $ec                                           ; $5ee5: $ec
	sub $4c                                          ; $5ee6: $d6 $4c
	and b                                            ; $5ee8: $a0
	cpl                                              ; $5ee9: $2f
	ld b, e                                          ; $5eea: $43
	jp hl                                            ; $5eeb: $e9


jr_08d_5eec:
	xor l                                            ; $5eec: $ad
	xor b                                            ; $5eed: $a8
	ld b, [hl]                                       ; $5eee: $46
	ld d, a                                          ; $5eef: $57
	ld d, e                                          ; $5ef0: $53
	ld c, c                                          ; $5ef1: $49
	add hl, sp                                       ; $5ef2: $39
	and b                                            ; $5ef3: $a0
	db $eb                                           ; $5ef4: $eb
	ld d, c                                          ; $5ef5: $51
	xor h                                            ; $5ef6: $ac
	ld [$ac13], a                                    ; $5ef7: $ea $13 $ac
	db $ec                                           ; $5efa: $ec
	reti                                             ; $5efb: $d9


	db $eb                                           ; $5efc: $eb
	ld d, e                                          ; $5efd: $53
	ld h, e                                          ; $5efe: $63
	and b                                            ; $5eff: $a0
	cpl                                              ; $5f00: $2f
	ld b, e                                          ; $5f01: $43
	rst JumpTable                                          ; $5f02: $c7
	xor b                                            ; $5f03: $a8
	ld c, d                                          ; $5f04: $4a
	ld c, a                                          ; $5f05: $4f
	inc [hl]                                         ; $5f06: $34
	jp hl                                            ; $5f07: $e9


	xor l                                            ; $5f08: $ad
	xor b                                            ; $5f09: $a8
	ld b, [hl]                                       ; $5f0a: $46
	ld d, a                                          ; $5f0b: $57
	ld d, e                                          ; $5f0c: $53
	ld c, c                                          ; $5f0d: $49
	add hl, sp                                       ; $5f0e: $39
	and b                                            ; $5f0f: $a0
	db $eb                                           ; $5f10: $eb
	ld d, c                                          ; $5f11: $51
	xor h                                            ; $5f12: $ac
	pop af                                           ; $5f13: $f1
	ld sp, $4268                                     ; $5f14: $31 $68 $42
	db $ed                                           ; $5f17: $ed
	add l                                            ; $5f18: $85
	xor h                                            ; $5f19: $ac
	add b                                            ; $5f1a: $80
	ld d, d                                          ; $5f1b: $52
	ld d, b                                          ; $5f1c: $50
	ld a, [hl-]                                      ; $5f1d: $3a
	inc a                                            ; $5f1e: $3c
	dec sp                                           ; $5f1f: $3b
	dec a                                            ; $5f20: $3d
	ld h, e                                          ; $5f21: $63
	and b                                            ; $5f22: $a0
	db $eb                                           ; $5f23: $eb
	ld d, c                                          ; $5f24: $51
	xor h                                            ; $5f25: $ac
	ld [$ac14], a                                    ; $5f26: $ea $14 $ac
	db $ec                                           ; $5f29: $ec
	sub $4c                                          ; $5f2a: $d6 $4c
	and b                                            ; $5f2c: $a0
	db $eb                                           ; $5f2d: $eb
	ld d, c                                          ; $5f2e: $51
	xor h                                            ; $5f2f: $ac
	ld [$ac14], a                                    ; $5f30: $ea $14 $ac
	db $ec                                           ; $5f33: $ec
	reti                                             ; $5f34: $d9


	db $eb                                           ; $5f35: $eb
	ld d, e                                          ; $5f36: $53
	ld h, e                                          ; $5f37: $63
	and b                                            ; $5f38: $a0
	db $eb                                           ; $5f39: $eb
	ld d, c                                          ; $5f3a: $51
	xor h                                            ; $5f3b: $ac
	pop af                                           ; $5f3c: $f1
	ld sp, $4268                                     ; $5f3d: $31 $68 $42
	ldh a, [rSCX]                                    ; $5f40: $f0 $43
	ldh a, [rAUDTERM]                                ; $5f42: $f0 $25
	xor h                                            ; $5f44: $ac
	add b                                            ; $5f45: $80
	ld d, d                                          ; $5f46: $52
	ld d, b                                          ; $5f47: $50
	ld a, [hl-]                                      ; $5f48: $3a
	inc a                                            ; $5f49: $3c
	dec sp                                           ; $5f4a: $3b
	dec a                                            ; $5f4b: $3d
	ld h, e                                          ; $5f4c: $63
	and b                                            ; $5f4d: $a0
	ld [$acab], a                                    ; $5f4e: $ea $ab $ac
	pop af                                           ; $5f51: $f1
	or $38                                           ; $5f52: $f6 $38
	ld h, e                                          ; $5f54: $63
	ld c, h                                          ; $5f55: $4c
	and b                                            ; $5f56: $a0
	cpl                                              ; $5f57: $2f
	ld b, e                                          ; $5f58: $43
	adc b                                            ; $5f59: $88
	sub c                                            ; $5f5a: $91
	inc [hl]                                         ; $5f5b: $34
	pop af                                           ; $5f5c: $f1
	or $38                                           ; $5f5d: $f6 $38
	ld c, h                                          ; $5f5f: $4c
	and b                                            ; $5f60: $a0
	add hl, bc                                       ; $5f61: $09
	ld d, d                                          ; $5f62: $52
	inc [hl]                                         ; $5f63: $34
	db $ec                                           ; $5f64: $ec
	ld a, [de]                                       ; $5f65: $1a

jr_08d_5f66:
	xor h                                            ; $5f66: $ac
	ld d, h                                          ; $5f67: $54
	ld b, c                                          ; $5f68: $41
	ld a, [hl-]                                      ; $5f69: $3a
	ldh a, [$28]                                     ; $5f6a: $f0 $28
	ld c, a                                          ; $5f6c: $4f
	db $ec                                           ; $5f6d: $ec
	ld [$54a0], sp                                   ; $5f6e: $08 $a0 $54
	ld b, c                                          ; $5f71: $41
	ld a, [hl-]                                      ; $5f72: $3a
	pop af                                           ; $5f73: $f1
	jr z, jr_08d_5f66                                ; $5f74: $28 $f0

	ld b, h                                          ; $5f76: $44
	ld b, a                                          ; $5f77: $47
	xor h                                            ; $5f78: $ac
	ld l, e                                          ; $5f79: $6b
	ld h, d                                          ; $5f7a: $62
	ld a, $47                                        ; $5f7b: $3e $47
	ld a, b                                          ; $5f7d: $78
	dec a                                            ; $5f7e: $3d
	ld b, d                                          ; $5f7f: $42
	and c                                            ; $5f80: $a1
	ld l, e                                          ; $5f81: $6b
	ld h, d                                          ; $5f82: $62
	ld d, c                                          ; $5f83: $51
	ld c, [hl]                                       ; $5f84: $4e
	dec a                                            ; $5f85: $3d
	ld [hl], c                                       ; $5f86: $71
	ld b, a                                          ; $5f87: $47
	ld a, b                                          ; $5f88: $78
	dec a                                            ; $5f89: $3d
	ld b, d                                          ; $5f8a: $42
	inc a                                            ; $5f8b: $3c
	inc de                                           ; $5f8c: $13
	ldh a, [rTAC]                                    ; $5f8d: $f0 $07
	inc a                                            ; $5f8f: $3c
	ld d, b                                          ; $5f90: $50
	ld a, [hl-]                                      ; $5f91: $3a
	jr c, jr_08d_5ff7                                ; $5f92: $38 $63

	and b                                            ; $5f94: $a0
	cpl                                              ; $5f95: $2f
	ld [hl-], a                                      ; $5f96: $32
	ld l, e                                          ; $5f97: $6b
	ld h, d                                          ; $5f98: $62
	ldh a, [rAUDVOL]                                 ; $5f99: $f0 $24
	db $ec                                           ; $5f9b: $ec
	ld d, $36                                        ; $5f9c: $16 $36
	inc sp                                           ; $5f9e: $33
	add hl, bc                                       ; $5f9f: $09
	cpl                                              ; $5fa0: $2f
	add sp, $0c                                      ; $5fa1: $e8 $0c
	add hl, bc                                       ; $5fa3: $09
	cpl                                              ; $5fa4: $2f
	add sp, $27                                      ; $5fa5: $e8 $27
	add hl, bc                                       ; $5fa7: $09
	cpl                                              ; $5fa8: $2f
	ld [hl-], a                                      ; $5fa9: $32
	pop af                                           ; $5faa: $f1
	ld a, e                                          ; $5fab: $7b
	ldh a, [hDisp1_WY]                                     ; $5fac: $f0 $95
	ld c, e                                          ; $5fae: $4b
	xor $17                                          ; $5faf: $ee $17
	ld h, d                                          ; $5fb1: $62
	ld d, c                                          ; $5fb2: $51
	ld c, [hl]                                       ; $5fb3: $4e
	inc de                                           ; $5fb4: $13
	ld d, h                                          ; $5fb5: $54
	ld c, c                                          ; $5fb6: $49
	ld d, b                                          ; $5fb7: $50
	ld a, $38                                        ; $5fb8: $3e $38
	xor b                                            ; $5fba: $a8
	ld l, e                                          ; $5fbb: $6b
	ld b, d                                          ; $5fbc: $42
	xor $17                                          ; $5fbd: $ee $17
	ld h, d                                          ; $5fbf: $62
	ld a, $3f                                        ; $5fc0: $3e $3f
	ld c, [hl]                                       ; $5fc2: $4e

jr_08d_5fc3:
	ld b, c                                          ; $5fc3: $41
	ld b, h                                          ; $5fc4: $44
	ld e, a                                          ; $5fc5: $5f
	add hl, sp                                       ; $5fc6: $39
	ld [hl], $33                                     ; $5fc7: $36 $33
	add hl, bc                                       ; $5fc9: $09
	cpl                                              ; $5fca: $2f
	ld [hl-], a                                      ; $5fcb: $32
	adc e                                            ; $5fcc: $8b
	ld e, h                                          ; $5fcd: $5c
	ld a, [hl-]                                      ; $5fce: $3a
	db $ed                                           ; $5fcf: $ed
	jr jr_08d_5fc3                                   ; $5fd0: $18 $f1

	sub $f4                                          ; $5fd2: $d6 $f4
	or c                                             ; $5fd4: $b1
	ld b, a                                          ; $5fd5: $47
	inc de                                           ; $5fd6: $13
	ldh a, [$4e]                                     ; $5fd7: $f0 $4e
	ld a, $38                                        ; $5fd9: $3e $38
	db $eb                                           ; $5fdb: $eb
	ld h, l                                          ; $5fdc: $65
	xor b                                            ; $5fdd: $a8
	xor a                                            ; $5fde: $af
	or l                                             ; $5fdf: $b5
	and e                                            ; $5fe0: $a3
	cpl                                              ; $5fe1: $2f
	ld [hl-], a                                      ; $5fe2: $32
	adc e                                            ; $5fe3: $8b
	ld e, h                                          ; $5fe4: $5c
	ld a, [hl-]                                      ; $5fe5: $3a
	ldh a, [$74]                                     ; $5fe6: $f0 $74
	ldh a, [$7a]                                     ; $5fe8: $f0 $7a
	ld c, e                                          ; $5fea: $4b
	inc de                                           ; $5feb: $13
	db $eb                                           ; $5fec: $eb
	add e                                            ; $5fed: $83
	ld a, [hl-]                                      ; $5fee: $3a
	ld e, d                                          ; $5fef: $5a
	ld b, d                                          ; $5ff0: $42
	db $ed                                           ; $5ff1: $ed
	sbc b                                            ; $5ff2: $98
	pop af                                           ; $5ff3: $f1
	inc bc                                           ; $5ff4: $03
	ld a, [hl-]                                      ; $5ff5: $3a
	ld c, a                                          ; $5ff6: $4f

jr_08d_5ff7:
	ld b, d                                          ; $5ff7: $42
	xor b                                            ; $5ff8: $a8
	xor a                                            ; $5ff9: $af
	or l                                             ; $5ffa: $b5
	and e                                            ; $5ffb: $a3
	cpl                                              ; $5ffc: $2f
	db $ed                                           ; $5ffd: $ed
	ld l, [hl]                                       ; $5ffe: $6e
	inc [hl]                                         ; $5fff: $34
	ldh a, [rAUD3LOW]                                ; $6000: $f0 $1d
	ld a, l                                          ; $6002: $7d
	sub e                                            ; $6003: $93
	ldh a, [$1f]                                     ; $6004: $f0 $1f
	ldh a, [$2b]                                     ; $6006: $f0 $2b
	ld [hl], e                                       ; $6008: $73
	add c                                            ; $6009: $81
	ld b, d                                          ; $600a: $42
	inc de                                           ; $600b: $13
	xor $17                                          ; $600c: $ee $17
	ld h, d                                          ; $600e: $62
	ld a, $3f                                        ; $600f: $3e $3f
	jr c, jr_08d_6061                                ; $6011: $38 $4e

	ld d, b                                          ; $6013: $50
	ld a, $38                                        ; $6014: $3e $38
	xor b                                            ; $6016: $a8
	xor a                                            ; $6017: $af
	or l                                             ; $6018: $b5
	and e                                            ; $6019: $a3
	cpl                                              ; $601a: $2f
	db $ed                                           ; $601b: $ed
	ld l, [hl]                                       ; $601c: $6e
	inc [hl]                                         ; $601d: $34
	ld l, e                                          ; $601e: $6b
	ld l, [hl]                                       ; $601f: $6e
	ld d, b                                          ; $6020: $50
	rst FarCall                                          ; $6021: $f7
	ld [de], a                                       ; $6022: $12
	di                                               ; $6023: $f3
	add e                                            ; $6024: $83
	ld a, [hl-]                                      ; $6025: $3a
	inc de                                           ; $6026: $13
	ldh a, [$a8]                                     ; $6027: $f0 $a8
	db $f4                                           ; $6029: $f4
	ld [hl], c                                       ; $602a: $71
	ldh a, [$63]                                     ; $602b: $f0 $63
	pop af                                           ; $602d: $f1
	ldh [rSCY], a                                    ; $602e: $e0 $42
	xor $17                                          ; $6030: $ee $17
	ld h, d                                          ; $6032: $62
	ld a, $3f                                        ; $6033: $3e $3f
	jr c, jr_08d_6085                                ; $6035: $38 $4e

	xor b                                            ; $6037: $a8
	xor a                                            ; $6038: $af
	or l                                             ; $6039: $b5
	and e                                            ; $603a: $a3
	cpl                                              ; $603b: $2f
	db $ed                                           ; $603c: $ed
	ld l, [hl]                                       ; $603d: $6e
	inc [hl]                                         ; $603e: $34
	ldh a, [$d6]                                     ; $603f: $f0 $d6
	ldh a, [$f6]                                     ; $6041: $f0 $f6
	pop af                                           ; $6043: $f1
	call $ea13                                       ; $6044: $cd $13 $ea
	di                                               ; $6047: $f3
	ld b, d                                          ; $6048: $42
	xor $17                                          ; $6049: $ee $17
	ld h, d                                          ; $604b: $62
	ld a, $3f                                        ; $604c: $3e $3f
	jr c, jr_08d_609e                                ; $604e: $38 $4e

	xor b                                            ; $6050: $a8
	xor a                                            ; $6051: $af
	or l                                             ; $6052: $b5
	and e                                            ; $6053: $a3
	cpl                                              ; $6054: $2f
	ld [hl-], a                                      ; $6055: $32
	ld l, l                                          ; $6056: $6d
	ldh a, [hDisp0_BGP]                                     ; $6057: $f0 $85
	pop af                                           ; $6059: $f1
	ld a, l                                          ; $605a: $7d
	ldh a, [hDisp0_LCDC]                                     ; $605b: $f0 $82
	ld h, d                                          ; $605d: $62
	ldh a, [c]                                       ; $605e: $f2
	ret                                              ; $605f: $c9


	dec sp                                           ; $6060: $3b

jr_08d_6061:
	ccf                                              ; $6061: $3f
	inc de                                           ; $6062: $13
	jr c, @+$50                                      ; $6063: $38 $4e

	xor b                                            ; $6065: $a8
	xor a                                            ; $6066: $af
	or l                                             ; $6067: $b5
	xor b                                            ; $6068: $a8
	db $ec                                           ; $6069: $ec
	ldh [hDisp0_OBP1], a                                     ; $606a: $e0 $87
	adc c                                            ; $606c: $89
	ld h, a                                          ; $606d: $67
	inc a                                            ; $606e: $3c
	ld a, [hl-]                                      ; $606f: $3a
	jr c, @+$43                                      ; $6070: $38 $41

	ld b, h                                          ; $6072: $44
	and e                                            ; $6073: $a3
	cpl                                              ; $6074: $2f
	ld [hl-], a                                      ; $6075: $32
	xor $16                                          ; $6076: $ee $16
	ld a, [hl-]                                      ; $6078: $3a
	xor $2a                                          ; $6079: $ee $2a
	ld h, d                                          ; $607b: $62

jr_08d_607c:
	inc de                                           ; $607c: $13
	ld a, $3f                                        ; $607d: $3e $3f
	jr c, jr_08d_60cf                                ; $607f: $38 $4e

	ld b, l                                          ; $6081: $45
	add hl, sp                                       ; $6082: $39
	ld b, h                                          ; $6083: $44
	ld d, e                                          ; $6084: $53

jr_08d_6085:
	inc [hl]                                         ; $6085: $34
	di                                               ; $6086: $f3
	nop                                              ; $6087: $00
	ld a, $38                                        ; $6088: $3e $38
	ld d, h                                          ; $608a: $54
	ld c, c                                          ; $608b: $49
	ld c, e                                          ; $608c: $4b
	inc de                                           ; $608d: $13
	ldh a, [$0c]                                     ; $608e: $f0 $0c
	ld e, h                                          ; $6090: $5c
	sub h                                            ; $6091: $94
	ld a, c                                          ; $6092: $79
	ld a, [hl-]                                      ; $6093: $3a
	inc a                                            ; $6094: $3c
	dec sp                                           ; $6095: $3b
	dec a                                            ; $6096: $3d
	and e                                            ; $6097: $a3
	cpl                                              ; $6098: $2f
	ld [hl-], a                                      ; $6099: $32
	add e                                            ; $609a: $83
	ldh a, [$2f]                                     ; $609b: $f0 $2f
	ld e, c                                          ; $609d: $59

jr_08d_609e:
	ld c, e                                          ; $609e: $4b
	ld c, c                                          ; $609f: $49

jr_08d_60a0:
	ccf                                              ; $60a0: $3f
	ld c, a                                          ; $60a1: $4f
	ldh a, [$64]                                     ; $60a2: $f0 $64
	jr c, jr_08d_60b9                                ; $60a4: $38 $13

	ld a, [hl-]                                      ; $60a6: $3a
	ld b, d                                          ; $60a7: $42
	ld c, d                                          ; $60a8: $4a
	inc [hl]                                         ; $60a9: $34
	pop af                                           ; $60aa: $f1
	ld a, [de]                                       ; $60ab: $1a
	pop af                                           ; $60ac: $f1
	inc c                                            ; $60ad: $0c
	ld b, a                                          ; $60ae: $47
	ld h, a                                          ; $60af: $67
	inc a                                            ; $60b0: $3c
	ld a, [hl-]                                      ; $60b1: $3a
	jr c, @-$56                                      ; $60b2: $38 $a8

	xor a                                            ; $60b4: $af
	or l                                             ; $60b5: $b5
	and e                                            ; $60b6: $a3
	cpl                                              ; $60b7: $2f
	ld [hl-], a                                      ; $60b8: $32

jr_08d_60b9:
	db $eb                                           ; $60b9: $eb
	add c                                            ; $60ba: $81
	db $ec                                           ; $60bb: $ec
	add hl, hl                                       ; $60bc: $29
	inc de                                           ; $60bd: $13
	xor a                                            ; $60be: $af
	or l                                             ; $60bf: $b5
	and e                                            ; $60c0: $a3
	cpl                                              ; $60c1: $2f
	ld [hl-], a                                      ; $60c2: $32
	db $ec                                           ; $60c3: $ec
	ld c, b                                          ; $60c4: $48
	ld h, d                                          ; $60c5: $62
	inc de                                           ; $60c6: $13
	pop af                                           ; $60c7: $f1
	push bc                                          ; $60c8: $c5
	ldh a, [$fc]                                     ; $60c9: $f0 $fc
	ld d, c                                          ; $60cb: $51
	ld c, [hl]                                       ; $60cc: $4e
	ld b, d                                          ; $60cd: $42
	ld c, e                                          ; $60ce: $4b

jr_08d_60cf:
	add a                                            ; $60cf: $87
	ldh a, [$64]                                     ; $60d0: $f0 $64
	jr c, jr_08d_607c                                ; $60d2: $38 $a8

	xor a                                            ; $60d4: $af
	or l                                             ; $60d5: $b5
	and e                                            ; $60d6: $a3
	cpl                                              ; $60d7: $2f
	ld [hl-], a                                      ; $60d8: $32
	add e                                            ; $60d9: $83
	ldh a, [$c2]                                     ; $60da: $f0 $c2
	ld e, c                                          ; $60dc: $59
	ld l, c                                          ; $60dd: $69
	ld c, e                                          ; $60de: $4b
	adc e                                            ; $60df: $8b
	ld e, h                                          ; $60e0: $5c
	db $ec                                           ; $60e1: $ec
	ret c                                            ; $60e2: $d8

	inc de                                           ; $60e3: $13
	xor a                                            ; $60e4: $af
	or l                                             ; $60e5: $b5
	and e                                            ; $60e6: $a3
	cpl                                              ; $60e7: $2f
	ld [hl-], a                                      ; $60e8: $32
	ldh a, [$b2]                                     ; $60e9: $f0 $b2
	ldh a, [rLY]                                     ; $60eb: $f0 $44
	pop af                                           ; $60ed: $f1
	sbc b                                            ; $60ee: $98
	ld c, e                                          ; $60ef: $4b
	adc e                                            ; $60f0: $8b
	ld e, h                                          ; $60f1: $5c
	ld e, e                                          ; $60f2: $5b
	ld d, [hl]                                       ; $60f3: $56
	inc de                                           ; $60f4: $13
	ld a, [hl-]                                      ; $60f5: $3a
	jr c, jr_08d_60a0                                ; $60f6: $38 $a8

	xor a                                            ; $60f8: $af
	or l                                             ; $60f9: $b5
	and e                                            ; $60fa: $a3
	ld c, a                                          ; $60fb: $4f
	add hl, sp                                       ; $60fc: $39
	ldh a, [c]                                       ; $60fd: $f2
	ld d, h                                          ; $60fe: $54
	ld d, e                                          ; $60ff: $53
	ldh a, [c]                                       ; $6100: $f2
	ld c, l                                          ; $6101: $4d
	jr c, jr_08d_6143                                ; $6102: $38 $3f

	ld c, [hl]                                       ; $6104: $4e
	ld b, d                                          ; $6105: $42
	ld c, h                                          ; $6106: $4c
	and b                                            ; $6107: $a0
	cpl                                              ; $6108: $2f
	ld b, e                                          ; $6109: $43
	jp hl                                            ; $610a: $e9


	inc [hl]                                         ; $610b: $34
	and b                                            ; $610c: $a0
	ld d, d                                          ; $610d: $52
	inc [hl]                                         ; $610e: $34
	db $ec                                           ; $610f: $ec
	ld a, [de]                                       ; $6110: $1a
	xor h                                            ; $6111: $ac
	ld d, h                                          ; $6112: $54
	add hl, sp                                       ; $6113: $39
	jr c, jr_08d_614f                                ; $6114: $38 $39

	ld b, d                                          ; $6116: $42
	ld h, d                                          ; $6117: $62
	sub b                                            ; $6118: $90
	ld a, $f0                                        ; $6119: $3e $f0
	cp [hl]                                          ; $611b: $be
	ld b, d                                          ; $611c: $42
	ld c, a                                          ; $611d: $4f
	inc de                                           ; $611e: $13
	jr c, jr_08d_6159                                ; $611f: $38 $38

	ld h, e                                          ; $6121: $63
	ld c, h                                          ; $6122: $4c
	and b                                            ; $6123: $a0
	ld d, h                                          ; $6124: $54
	add hl, sp                                       ; $6125: $39
	jr c, jr_08d_6161                                ; $6126: $38 $39

	ldh a, [$30]                                     ; $6128: $f0 $30
	ldh a, [$28]                                     ; $612a: $f0 $28
	ld c, a                                          ; $612c: $4f
	inc de                                           ; $612d: $13
	pop af                                           ; $612e: $f1
	sub $62                                          ; $612f: $d6 $62
	ldh a, [hDisp1_LCDC]                                     ; $6131: $f0 $8f
	ld [hl], c                                       ; $6133: $71
	ld c, [hl]                                       ; $6134: $4e
	ld b, a                                          ; $6135: $47
	ld c, e                                          ; $6136: $4b
	inc de                                           ; $6137: $13
	ld d, d                                          ; $6138: $52
	inc [hl]                                         ; $6139: $34
	jr c, jr_08d_6174                                ; $613a: $38 $38

	inc a                                            ; $613c: $3c
	ld c, a                                          ; $613d: $4f
	ld c, h                                          ; $613e: $4c
	and b                                            ; $613f: $a0
	cpl                                              ; $6140: $2f
	ld b, e                                          ; $6141: $43
	db $ed                                           ; $6142: $ed

jr_08d_6143:
	ld d, a                                          ; $6143: $57
	xor h                                            ; $6144: $ac
	ld [$cdca], a                                    ; $6145: $ea $ca $cd
	and b                                            ; $6148: $a0
	db $eb                                           ; $6149: $eb
	inc [hl]                                         ; $614a: $34
	ld h, e                                          ; $614b: $63
	ld c, h                                          ; $614c: $4c
	and b                                            ; $614d: $a0
	cpl                                              ; $614e: $2f

jr_08d_614f:
	ld b, e                                          ; $614f: $43
	db $ed                                           ; $6150: $ed
	ld d, a                                          ; $6151: $57
	xor h                                            ; $6152: $ac
	db $ec                                           ; $6153: $ec
	ld c, [hl]                                       ; $6154: $4e
	call Call_08d_63a0                               ; $6155: $cd $a0 $63
	ld d, a                                          ; $6158: $57

jr_08d_6159:
	ld c, c                                          ; $6159: $49
	jr c, jr_08d_6194                                ; $615a: $38 $38

	di                                               ; $615c: $f3
	ld h, l                                          ; $615d: $65
	pop af                                           ; $615e: $f1
	ld l, [hl]                                       ; $615f: $6e
	ld c, h                                          ; $6160: $4c

jr_08d_6161:
	xor b                                            ; $6161: $a8
	jr c, jr_08d_619c                                ; $6162: $38 $38

	ldh a, [$a4]                                     ; $6164: $f0 $a4
	ld e, [hl]                                       ; $6166: $5e
	ld d, e                                          ; $6167: $53
	inc de                                           ; $6168: $13
	db $f4                                           ; $6169: $f4
	adc c                                            ; $616a: $89
	inc a                                            ; $616b: $3c
	ld b, c                                          ; $616c: $41
	ld c, d                                          ; $616d: $4a
	ld e, h                                          ; $616e: $5c
	db $ec                                           ; $616f: $ec
	db $f4                                           ; $6170: $f4
	and b                                            ; $6171: $a0
	cpl                                              ; $6172: $2f
	ld e, e                                          ; $6173: $5b

jr_08d_6174:
	ld d, [hl]                                       ; $6174: $56
	inc [hl]                                         ; $6175: $34
	pop af                                           ; $6176: $f1
	ld e, b                                          ; $6177: $58
	inc a                                            ; $6178: $3c
	ld b, a                                          ; $6179: $47
	ld a, $3f                                        ; $617a: $3e $3f
	ld c, [hl]                                       ; $617c: $4e
	ld b, l                                          ; $617d: $45
	add hl, bc                                       ; $617e: $09
	ld h, e                                          ; $617f: $63
	ld d, a                                          ; $6180: $57
	ld c, c                                          ; $6181: $49
	inc [hl]                                         ; $6182: $34
	ld a, a                                          ; $6183: $7f
	ld d, e                                          ; $6184: $53
	di                                               ; $6185: $f3
	call nz, Call_08d_6355                           ; $6186: $c4 $55 $63
	ld c, h                                          ; $6189: $4c
	and b                                            ; $618a: $a0
	cpl                                              ; $618b: $2f
	add sp, $32                                      ; $618c: $e8 $32
	add hl, bc                                       ; $618e: $09
	ld l, e                                          ; $618f: $6b
	add d                                            ; $6190: $82
	dec sp                                           ; $6191: $3b
	ccf                                              ; $6192: $3f
	ld c, [hl]                                       ; $6193: $4e

jr_08d_6194:
	ld b, d                                          ; $6194: $42
	xor c                                            ; $6195: $a9
	db $eb                                           ; $6196: $eb
	ld d, l                                          ; $6197: $55
	ld h, e                                          ; $6198: $63
	ld c, h                                          ; $6199: $4c
	and b                                            ; $619a: $a0
	cpl                                              ; $619b: $2f

jr_08d_619c:
	add sp, $33                                      ; $619c: $e8 $33
	add hl, bc                                       ; $619e: $09
	pop af                                           ; $619f: $f1
	ld b, b                                          ; $61a0: $40
	ldh a, [$09]                                     ; $61a1: $f0 $09
	ldh a, [$03]                                     ; $61a3: $f0 $03
	pop af                                           ; $61a5: $f1
	ld [hl], h                                       ; $61a6: $74
	ld e, c                                          ; $61a7: $59
	ld h, d                                          ; $61a8: $62
	inc de                                           ; $61a9: $13
	ldh a, [c]                                       ; $61aa: $f2
	adc d                                            ; $61ab: $8a
	di                                               ; $61ac: $f3
	ld a, a                                          ; $61ad: $7f
	ld d, c                                          ; $61ae: $51
	ld c, [hl]                                       ; $61af: $4e
	inc a                                            ; $61b0: $3c
	ld d, b                                          ; $61b1: $50
	ld c, h                                          ; $61b2: $4c
	and b                                            ; $61b3: $a0
	ldh a, [c]                                       ; $61b4: $f2
	db $10                                           ; $61b5: $10
	ld h, d                                          ; $61b6: $62
	ld [hl], d                                       ; $61b7: $72
	ccf                                              ; $61b8: $3f
	ld c, [hl]                                       ; $61b9: $4e
	ld c, c                                          ; $61ba: $49
	xor h                                            ; $61bb: $ac
	ldh a, [hDisp0_BGP]                                     ; $61bc: $f0 $85
	ldh a, [$65]                                     ; $61be: $f0 $65
	ldh a, [$7f]                                     ; $61c0: $f0 $7f
	adc c                                            ; $61c2: $89
	ld h, d                                          ; $61c3: $62
	ldh a, [$dd]                                     ; $61c4: $f0 $dd
	ldh a, [$9c]                                     ; $61c6: $f0 $9c
	ld a, $3d                                        ; $61c8: $3e $3d
	ld d, l                                          ; $61ca: $55
	inc de                                           ; $61cb: $13
	ld a, [hl-]                                      ; $61cc: $3a
	dec sp                                           ; $61cd: $3b
	ccf                                              ; $61ce: $3f
	ld d, l                                          ; $61cf: $55
	ld c, [hl]                                       ; $61d0: $4e
	ld h, e                                          ; $61d1: $63
	and b                                            ; $61d2: $a0
	cpl                                              ; $61d3: $2f
	ld e, b                                          ; $61d4: $58
	ld d, c                                          ; $61d5: $51
	ld d, e                                          ; $61d6: $53
	inc [hl]                                         ; $61d7: $34
	ldh a, [$a4]                                     ; $61d8: $f0 $a4
	ld e, [hl]                                       ; $61da: $5e
	ld c, [hl]                                       ; $61db: $4e
	ld d, h                                          ; $61dc: $54
	ld c, c                                          ; $61dd: $49
	ld d, e                                          ; $61de: $53
	ldh a, [$f5]                                     ; $61df: $f0 $f5
	add hl, sp                                       ; $61e1: $39
	add hl, bc                                       ; $61e2: $09
	ld b, b                                          ; $61e3: $40
	add hl, sp                                       ; $61e4: $39
	xor c                                            ; $61e5: $a9
	pop af                                           ; $61e6: $f1
	db $fc                                           ; $61e7: $fc
	ldh a, [rOCPS]                                   ; $61e8: $f0 $6a
	ld b, l                                          ; $61ea: $45
	and b                                            ; $61eb: $a0
	db $eb                                           ; $61ec: $eb
	add $a8                                          ; $61ed: $c6 $a8
	db $ed                                           ; $61ef: $ed
	di                                               ; $61f0: $f3
	ld c, c                                          ; $61f1: $49
	di                                               ; $61f2: $f3
	rla                                              ; $61f3: $17
	ldh a, [$8c]                                     ; $61f4: $f0 $8c
	ccf                                              ; $61f6: $3f
	ld c, a                                          ; $61f7: $4f
	ld d, b                                          ; $61f8: $50
	dec sp                                           ; $61f9: $3b
	dec a                                            ; $61fa: $3d
	ld d, b                                          ; $61fb: $50
	xor h                                            ; $61fc: $ac
	pop af                                           ; $61fd: $f1
	sbc $4e                                          ; $61fe: $de $4e
	ld h, e                                          ; $6200: $63
	and b                                            ; $6201: $a0
	sub c                                            ; $6202: $91
	ldh a, [$59]                                     ; $6203: $f0 $59
	ld c, h                                          ; $6205: $4c
	xor b                                            ; $6206: $a8
	di                                               ; $6207: $f3
	rla                                              ; $6208: $17
	ei                                               ; $6209: $fb
	and a                                            ; $620a: $a7
	ld b, a                                          ; $620b: $47
	ld a, [hl-]                                      ; $620c: $3a
	ld d, b                                          ; $620d: $50
	ld a, [hl-]                                      ; $620e: $3a
	jr c, jr_08d_6274                                ; $620f: $38 $63

	and b                                            ; $6211: $a0
	cpl                                              ; $6212: $2f
	ld b, b                                          ; $6213: $40
	ld b, c                                          ; $6214: $41
	ld a, [hl-]                                      ; $6215: $3a
	sbc d                                            ; $6216: $9a
	inc [hl]                                         ; $6217: $34
	ldh a, [$a4]                                     ; $6218: $f0 $a4
	ld e, [hl]                                       ; $621a: $5e
	ld c, [hl]                                       ; $621b: $4e
	ld a, [hl-]                                      ; $621c: $3a
	ld b, l                                          ; $621d: $45
	add hl, bc                                       ; $621e: $09
	db $ed                                           ; $621f: $ed
	sbc a                                            ; $6220: $9f
	xor c                                            ; $6221: $a9
	call nc, $d8ec                                   ; $6222: $d4 $ec $d8
	and b                                            ; $6225: $a0
	pop af                                           ; $6226: $f1
	xor d                                            ; $6227: $aa
	pop af                                           ; $6228: $f1
	and e                                            ; $6229: $a3
	ld c, e                                          ; $622a: $4b
	xor h                                            ; $622b: $ac
	ldh a, [$a4]                                     ; $622c: $f0 $a4
	ld e, [hl]                                       ; $622e: $5e
	dec a                                            ; $622f: $3d
	ld d, l                                          ; $6230: $55
	ld a, [hl-]                                      ; $6231: $3a
	ld d, l                                          ; $6232: $55
	ccf                                              ; $6233: $3f
	ld c, a                                          ; $6234: $4f
	xor h                                            ; $6235: $ac
	ldh a, [$a4]                                     ; $6236: $f0 $a4
	ld e, [hl]                                       ; $6238: $5e
	ccf                                              ; $6239: $3f
	ld a, $52                                        ; $623a: $3e $52
	add hl, sp                                       ; $623c: $39
	ld b, d                                          ; $623d: $42
	ld b, l                                          ; $623e: $45
	and b                                            ; $623f: $a0
	ld l, a                                          ; $6240: $6f
	ld b, d                                          ; $6241: $42
	ldh a, [$6f]                                     ; $6242: $f0 $6f
	ldh a, [$0b]                                     ; $6244: $f0 $0b
	ld b, l                                          ; $6246: $45
	and b                                            ; $6247: $a0
	cpl                                              ; $6248: $2f
	halt                                             ; $6249: $76
	ld b, a                                          ; $624a: $47
	ld c, e                                          ; $624b: $4b
	ret                                              ; $624c: $c9


	pop af                                           ; $624d: $f1
	ld a, [$383e]                                    ; $624e: $fa $3e $38
	ld c, h                                          ; $6251: $4c
	add hl, bc                                       ; $6252: $09
	ld d, d                                          ; $6253: $52
	inc [hl]                                         ; $6254: $34
	call c, $46a0                                    ; $6255: $dc $a0 $46
	ld a, [hl-]                                      ; $6258: $3a
	dec a                                            ; $6259: $3d
	ld b, d                                          ; $625a: $42
	pop af                                           ; $625b: $f1
	sub $4a                                          ; $625c: $d6 $4a
	ld c, e                                          ; $625e: $4b
	xor h                                            ; $625f: $ac
	ldh a, [rAUD1LOW]                                ; $6260: $f0 $13
	ldh a, [$63]                                     ; $6262: $f0 $63
	ld c, h                                          ; $6264: $4c
	and b                                            ; $6265: $a0
	ldh a, [$dd]                                     ; $6266: $f0 $dd
	ldh a, [$9c]                                     ; $6268: $f0 $9c
	ld d, e                                          ; $626a: $53
	pop af                                           ; $626b: $f1
	cp [hl]                                          ; $626c: $be
	ld d, a                                          ; $626d: $57
	ld a, [hl-]                                      ; $626e: $3a
	jr c, jr_08d_62d4                                ; $626f: $38 $63

	and b                                            ; $6271: $a0
	pop de                                           ; $6272: $d1
	xor h                                            ; $6273: $ac

jr_08d_6274:
	db $ed                                           ; $6274: $ed
	ld c, c                                          ; $6275: $49
	db $ec                                           ; $6276: $ec
	ret c                                            ; $6277: $d8

	and b                                            ; $6278: $a0
	cpl                                              ; $6279: $2f
	ldh a, [$d7]                                     ; $627a: $f0 $d7
	ld c, d                                          ; $627c: $4a
	inc [hl]                                         ; $627d: $34
	add sp, -$60                                     ; $627e: $e8 $a0
	add hl, bc                                       ; $6280: $09
	call c, $38a8                                    ; $6281: $dc $a8 $38
	jr c, jr_08d_62cf                                ; $6284: $38 $49

	ld d, h                                          ; $6286: $54
	ld e, a                                          ; $6287: $5f
	ld b, a                                          ; $6288: $47
	inc de                                           ; $6289: $13
	ldh a, [rAUD3LEVEL]                              ; $628a: $f0 $1c
	ld h, d                                          ; $628c: $62
	ldh a, [$9a]                                     ; $628d: $f0 $9a
	ld e, l                                          ; $628f: $5d
	ld c, [hl]                                       ; $6290: $4e
	db $ec                                           ; $6291: $ec
	ret c                                            ; $6292: $d8

	and b                                            ; $6293: $a0
	ld h, e                                          ; $6294: $63
	ld d, a                                          ; $6295: $57
	ld c, c                                          ; $6296: $49
	jr c, jr_08d_62d1                                ; $6297: $38 $38

	ld c, c                                          ; $6299: $49
	ld d, h                                          ; $629a: $54
	ld e, a                                          ; $629b: $5f
	ld b, a                                          ; $629c: $47
	inc de                                           ; $629d: $13
	ldh a, [rAUD3LEVEL]                              ; $629e: $f0 $1c
	ld h, d                                          ; $62a0: $62
	ldh a, [$9a]                                     ; $62a1: $f0 $9a
	ld e, l                                          ; $62a3: $5d
	ld c, [hl]                                       ; $62a4: $4e
	ld h, e                                          ; $62a5: $63
	ld c, h                                          ; $62a6: $4c
	and b                                            ; $62a7: $a0
	call c, Call_08d_52a8                            ; $62a8: $dc $a8 $52
	ld e, b                                          ; $62ab: $58
	ld b, a                                          ; $62ac: $47
	ldh a, [hDisp0_SCX]                                     ; $62ad: $f0 $84
	ldh a, [rAUD4ENV]                                ; $62af: $f0 $21
	pop af                                           ; $62b1: $f1
	ld a, [bc]                                       ; $62b2: $0a
	ld c, h                                          ; $62b3: $4c
	and b                                            ; $62b4: $a0
	cpl                                              ; $62b5: $2f
	db $ec                                           ; $62b6: $ec
	ldh [$50], a                                     ; $62b7: $e0 $50
	ld a, $55                                        ; $62b9: $3e $55
	ld a, [hl-]                                      ; $62bb: $3a
	jr c, jr_08d_6303                                ; $62bc: $38 $45

	add hl, bc                                       ; $62be: $09
	db $ed                                           ; $62bf: $ed
	sub [hl]                                         ; $62c0: $96
	ld a, [hl-]                                      ; $62c1: $3a

jr_08d_62c2:
	ld h, h                                          ; $62c2: $64
	ldh a, [$f6]                                     ; $62c3: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $62c5: $f0 $24
	ld b, l                                          ; $62c7: $45
	xor b                                            ; $62c8: $a8
	ld l, a                                          ; $62c9: $6f
	ld b, d                                          ; $62ca: $42
	sbc d                                            ; $62cb: $9a
	ld a, [hl-]                                      ; $62cc: $3a
	ld b, c                                          ; $62cd: $41
	ccf                                              ; $62ce: $3f

jr_08d_62cf:
	xor h                                            ; $62cf: $ac
	ld l, e                                          ; $62d0: $6b

jr_08d_62d1:
	ld c, a                                          ; $62d1: $4f
	db $ec                                           ; $62d2: $ec
	dec b                                            ; $62d3: $05

jr_08d_62d4:
	ld d, l                                          ; $62d4: $55
	ld a, c                                          ; $62d5: $79
	ld b, a                                          ; $62d6: $47
	and b                                            ; $62d7: $a0
	db $ed                                           ; $62d8: $ed
	sub [hl]                                         ; $62d9: $96
	ld a, [hl-]                                      ; $62da: $3a
	ld h, h                                          ; $62db: $64
	ldh a, [$f6]                                     ; $62dc: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $62de: $f0 $24
	ld b, l                                          ; $62e0: $45
	and b                                            ; $62e1: $a0
	ld b, b                                          ; $62e2: $40
	ld c, l                                          ; $62e3: $4d
	ld c, e                                          ; $62e4: $4b
	inc [hl]                                         ; $62e5: $34
	ld e, d                                          ; $62e6: $5a
	add hl, sp                                       ; $62e7: $39
	jr c, jr_08d_6323                                ; $62e8: $38 $39

	db $ed                                           ; $62ea: $ed
	add a                                            ; $62eb: $87
	and c                                            ; $62ec: $a1
	cpl                                              ; $62ed: $2f
	ld e, b                                          ; $62ee: $58
	ld d, c                                          ; $62ef: $51
	ld d, e                                          ; $62f0: $53
	db $ed                                           ; $62f1: $ed
	sub a                                            ; $62f2: $97
	ld h, d                                          ; $62f3: $62
	pop af                                           ; $62f4: $f1
	call $a5f1                                       ; $62f5: $cd $f1 $a5
	ld d, c                                          ; $62f8: $51
	ld c, [hl]                                       ; $62f9: $4e
	ldh a, [hDisp0_OBP0]                                     ; $62fa: $f0 $86
	ld b, h                                          ; $62fc: $44
	ld c, h                                          ; $62fd: $4c
	add hl, bc                                       ; $62fe: $09
	ld d, d                                          ; $62ff: $52
	inc [hl]                                         ; $6300: $34
	ld b, b                                          ; $6301: $40
	ld b, d                                          ; $6302: $42

jr_08d_6303:
	add hl, sp                                       ; $6303: $39
	ld h, c                                          ; $6304: $61
	inc de                                           ; $6305: $13
	ld l, a                                          ; $6306: $6f
	ld b, d                                          ; $6307: $42
	ldh a, [hDisp0_OBP0]                                     ; $6308: $f0 $86
	ld b, a                                          ; $630a: $47
	ld a, [hl-]                                      ; $630b: $3a
	ld c, [hl]                                       ; $630c: $4e
	ld e, l                                          ; $630d: $5d
	ld e, d                                          ; $630e: $5a
	and b                                            ; $630f: $a0
	ld d, d                                          ; $6310: $52
	inc [hl]                                         ; $6311: $34
	ld l, d                                          ; $6312: $6a
	ld b, d                                          ; $6313: $42
	pop af                                           ; $6314: $f1
	ld [hl], a                                       ; $6315: $77
	ld b, a                                          ; $6316: $47
	inc de                                           ; $6317: $13
	sub b                                            ; $6318: $90
	ld a, $41                                        ; $6319: $3e $41
	ld c, d                                          ; $631b: $4a
	ld h, h                                          ; $631c: $64
	ld e, h                                          ; $631d: $5c
	ld a, [hl-]                                      ; $631e: $3a
	ld e, b                                          ; $631f: $58
	jr c, jr_08d_62c2                                ; $6320: $38 $a0

	ld d, d                                          ; $6322: $52

jr_08d_6323:
	inc [hl]                                         ; $6323: $34
	ld l, d                                          ; $6324: $6a
	ld b, d                                          ; $6325: $42
	pop af                                           ; $6326: $f1
	ld [hl], a                                       ; $6327: $77
	ld c, e                                          ; $6328: $4b
	ld c, h                                          ; $6329: $4c
	and b                                            ; $632a: $a0
	ld b, b                                          ; $632b: $40
	ld c, l                                          ; $632c: $4d
	ld e, e                                          ; $632d: $5b
	ld d, [hl]                                       ; $632e: $56
	xor h                                            ; $632f: $ac
	ld e, d                                          ; $6330: $5a
	ld d, h                                          ; $6331: $54
	ld b, a                                          ; $6332: $47
	pop af                                           ; $6333: $f1
	ld c, $38                                        ; $6334: $0e $38
	ldh a, [$2c]                                     ; $6336: $f0 $2c
	ld b, a                                          ; $6338: $47
	ld h, a                                          ; $6339: $67
	ld d, l                                          ; $633a: $55
	ld b, d                                          ; $633b: $42
	and c                                            ; $633c: $a1
	cpl                                              ; $633d: $2f
	add sp, -$29                                     ; $633e: $e8 $d7
	add hl, bc                                       ; $6340: $09
	ld d, d                                          ; $6341: $52
	inc [hl]                                         ; $6342: $34
	db $ec                                           ; $6343: $ec
	ld [$a048], sp                                   ; $6344: $08 $48 $a0
	cpl                                              ; $6347: $2f
	add sp, -$28                                     ; $6348: $e8 $d8
	add hl, bc                                       ; $634a: $09
	cpl                                              ; $634b: $2f
	add sp, -$27                                     ; $634c: $e8 $d9
	add hl, bc                                       ; $634e: $09
	ld [$a0a0], a                                    ; $634f: $ea $a0 $a0
	ld d, h                                          ; $6352: $54
	ld b, c                                          ; $6353: $41
	ld a, [hl-]                                      ; $6354: $3a

Call_08d_6355:
	ldh a, [c]                                       ; $6355: $f2
	ret z                                            ; $6356: $c8

	ld b, h                                          ; $6357: $44
	ld e, l                                          ; $6358: $5d
	ld b, d                                          ; $6359: $42
	pop af                                           ; $635a: $f1
	ld a, d                                          ; $635b: $7a
	ld b, d                                          ; $635c: $42
	inc de                                           ; $635d: $13
	ld e, d                                          ; $635e: $5a
	ld d, h                                          ; $635f: $54
	ld d, e                                          ; $6360: $53
	jr c, jr_08d_639b                                ; $6361: $38 $38

	ld b, d                                          ; $6363: $42
	inc a                                            ; $6364: $3c
	ld a, $50                                        ; $6365: $3e $50
	and c                                            ; $6367: $a1
	cpl                                              ; $6368: $2f
	halt                                             ; $6369: $76
	ld c, a                                          ; $636a: $4f
	inc [hl]                                         ; $636b: $34
	ld b, b                                          ; $636c: $40
	add hl, sp                                       ; $636d: $39
	ld [hl], a                                       ; $636e: $77
	add hl, sp                                       ; $636f: $39
	ld b, l                                          ; $6370: $45
	add hl, bc                                       ; $6371: $09
	ldh a, [c]                                       ; $6372: $f2
	ret z                                            ; $6373: $c8

	ld b, l                                          ; $6374: $45
	ld d, a                                          ; $6375: $57
	ld c, a                                          ; $6376: $4f
	xor h                                            ; $6377: $ac
	ldh a, [$c6]                                     ; $6378: $f0 $c6
	pop af                                           ; $637a: $f1
	ld [hl], d                                       ; $637b: $72
	ld d, e                                          ; $637c: $53
	db $ed                                           ; $637d: $ed
	sub $44                                          ; $637e: $d6 $44
	ld h, e                                          ; $6380: $63
	and b                                            ; $6381: $a0
	ldh a, [$c6]                                     ; $6382: $f0 $c6
	pop af                                           ; $6384: $f1
	ld [hl], d                                       ; $6385: $72
	ld h, d                                          ; $6386: $62
	ldh a, [$a4]                                     ; $6387: $f0 $a4
	ld e, [hl]                                       ; $6389: $5e
	ld c, [hl]                                       ; $638a: $4e
	ld c, c                                          ; $638b: $49
	xor h                                            ; $638c: $ac
	ldh a, [rAUD4GO]                                 ; $638d: $f0 $23
	ldh a, [c]                                       ; $638f: $f2
	jr nz, jr_08d_63e5                               ; $6390: $20 $53

	db $ed                                           ; $6392: $ed
	ld [hl], d                                       ; $6393: $72
	ld c, h                                          ; $6394: $4c
	and b                                            ; $6395: $a0
	pop af                                           ; $6396: $f1
	ld a, d                                          ; $6397: $7a
	ld a, [hl-]                                      ; $6398: $3a
	ld b, c                                          ; $6399: $41
	ccf                                              ; $639a: $3f

jr_08d_639b:
	xor h                                            ; $639b: $ac
	ldh a, [$ac]                                     ; $639c: $f0 $ac
	ld c, l                                          ; $639e: $4d
	ld c, l                                          ; $639f: $4d

Call_08d_63a0:
	ld a, e                                          ; $63a0: $7b
	jr c, @+$3a                                      ; $63a1: $38 $38

	ld b, d                                          ; $63a3: $42
	ld b, l                                          ; $63a4: $45
	and b                                            ; $63a5: $a0
	cpl                                              ; $63a6: $2f
	db $ec                                           ; $63a7: $ec

Call_08d_63a8:
	ld a, [de]                                       ; $63a8: $1a
	inc [hl]                                         ; $63a9: $34
	ld h, h                                          ; $63aa: $64
	ld a, $56                                        ; $63ab: $3e $56
	ld c, l                                          ; $63ad: $4d
	ld c, d                                          ; $63ae: $4a
	ld c, a                                          ; $63af: $4f
	ld a, $3d                                        ; $63b0: $3e $3d
	ld d, b                                          ; $63b2: $50
	add hl, bc                                       ; $63b3: $09
	ldh a, [rHDMA5]                                  ; $63b4: $f0 $55
	ldh a, [rBCPS]                                   ; $63b6: $f0 $68
	ld c, h                                          ; $63b8: $4c
	xor b                                            ; $63b9: $a8

jr_08d_63ba:
	ld l, a                                          ; $63ba: $6f
	db $ed                                           ; $63bb: $ed
	ld b, e                                          ; $63bc: $43
	inc [hl]                                         ; $63bd: $34
	ld h, h                                          ; $63be: $64
	ld a, $56                                        ; $63bf: $3e $56
	ld c, l                                          ; $63c1: $4d
	sbc l                                            ; $63c2: $9d
	ld d, b                                          ; $63c3: $50
	jr c, @+$15                                      ; $63c4: $38 $13

	ld d, c                                          ; $63c6: $51
	ld c, [hl]                                       ; $63c7: $4e
	ld h, e                                          ; $63c8: $63
	ld b, l                                          ; $63c9: $45
	and b                                            ; $63ca: $a0
	ldh a, [c]                                       ; $63cb: $f2
	ret z                                            ; $63cc: $c8

	ld b, h                                          ; $63cd: $44
	ld e, l                                          ; $63ce: $5d
	ld b, d                                          ; $63cf: $42
	pop af                                           ; $63d0: $f1
	ld a, d                                          ; $63d1: $7a
	ld a, [hl-]                                      ; $63d2: $3a
	ld b, c                                          ; $63d3: $41
	ccf                                              ; $63d4: $3f
	xor h                                            ; $63d5: $ac
	pop af                                           ; $63d6: $f1
	jp nz, Jump_08d_6442                             ; $63d7: $c2 $42 $64

	ld a, $56                                        ; $63da: $3e $56
	ld c, l                                          ; $63dc: $4d
	db $ec                                           ; $63dd: $ec
	ret c                                            ; $63de: $d8

	ld h, e                                          ; $63df: $63
	and b                                            ; $63e0: $a0
	ld d, d                                          ; $63e1: $52
	inc [hl]                                         ; $63e2: $34
	ld b, [hl]                                       ; $63e3: $46
	ld a, [hl-]                                      ; $63e4: $3a

jr_08d_63e5:
	dec a                                            ; $63e5: $3d
	ld b, a                                          ; $63e6: $47
	ld c, e                                          ; $63e7: $4b

jr_08d_63e8:
	xor h                                            ; $63e8: $ac
	pop af                                           ; $63e9: $f1
	jp nz, Jump_08d_6442                             ; $63ea: $c2 $42 $64

	ld a, $56                                        ; $63ed: $3e $56
	ld c, l                                          ; $63ef: $4d
	ld a, [hl-]                                      ; $63f0: $3a
	ld b, c                                          ; $63f1: $41

Call_08d_63f2:
	ccf                                              ; $63f2: $3f
	xor h                                            ; $63f3: $ac
	ldh a, [rTAC]                                    ; $63f4: $f0 $07
	inc a                                            ; $63f6: $3c
	ld d, b                                          ; $63f7: $50
	db $ec                                           ; $63f8: $ec
	dec bc                                           ; $63f9: $0b
	and b                                            ; $63fa: $a0
	cpl                                              ; $63fb: $2f
	db $ec                                           ; $63fc: $ec
	ldh [rBGP], a                                    ; $63fd: $e0 $47
	ldh a, [rPCM12]                                  ; $63ff: $f0 $76
	ldh a, [rTMA]                                    ; $6401: $f0 $06
	add hl, sp                                       ; $6403: $39
	inc a                                            ; $6404: $3c
	ld c, a                                          ; $6405: $4f
	ld b, l                                          ; $6406: $45
	add hl, bc                                       ; $6407: $09
	rst JumpTable                                          ; $6408: $c7
	xor c                                            ; $6409: $a9
	ld c, c                                          ; $640a: $49
	ld d, a                                          ; $640b: $57
	ld b, [hl]                                       ; $640c: $46
	ld e, [hl]                                       ; $640d: $5e
	sbc h                                            ; $640e: $9c
	xor h                                            ; $640f: $ac
	ld l, e                                          ; $6410: $6b
	ld h, d                                          ; $6411: $62
	ldh a, [$ac]                                     ; $6412: $f0 $ac
	ccf                                              ; $6414: $3f
	ld c, a                                          ; $6415: $4f
	ldh a, [rPCM12]                                  ; $6416: $f0 $76
	ldh a, [rTMA]                                    ; $6418: $f0 $06
	add hl, sp                                       ; $641a: $39
	ld b, d                                          ; $641b: $42
	ld c, h                                          ; $641c: $4c
	and b                                            ; $641d: $a0
	ld b, b                                          ; $641e: $40
	add hl, sp                                       ; $641f: $39
	xor c                                            ; $6420: $a9
	xor $2a                                          ; $6421: $ee $2a
	ld a, $47                                        ; $6423: $3e $47
	ld d, l                                          ; $6425: $55
	call c, Call_08d_6fa0                            ; $6426: $dc $a0 $6f
	ld c, e                                          ; $6429: $4b
	xor h                                            ; $642a: $ac
	ldh a, [rAUD4GO]                                 ; $642b: $f0 $23
	ldh a, [c]                                       ; $642d: $f2
	jr nz, jr_08d_6472                               ; $642e: $20 $42

	ldh a, [$38]                                     ; $6430: $f0 $38
	ld d, e                                          ; $6432: $53
	jr c, jr_08d_646d                                ; $6433: $38 $38

	ld h, e                                          ; $6435: $63
	and b                                            ; $6436: $a0
	add b                                            ; $6437: $80
	jr c, jr_08d_63ba                                ; $6438: $38 $80

	jr c, jr_08d_63e8                                ; $643a: $38 $ac

	adc $f1                                          ; $643c: $ce $f1
	ld c, $3b                                        ; $643e: $0e $3b
	ld h, c                                          ; $6440: $61
	ld d, [hl]                                       ; $6441: $56

Jump_08d_6442:
	dec sp                                           ; $6442: $3b
	dec a                                            ; $6443: $3d
	ld h, e                                          ; $6444: $63
	and b                                            ; $6445: $a0
	cpl                                              ; $6446: $2f
	ld [$0947], a                                    ; $6447: $ea $47 $09
	ld b, b                                          ; $644a: $40
	add hl, sp                                       ; $644b: $39
	xor c                                            ; $644c: $a9
	sub c                                            ; $644d: $91
	ldh a, [$59]                                     ; $644e: $f0 $59
	ld c, h                                          ; $6450: $4c
	and b                                            ; $6451: $a0
	cpl                                              ; $6452: $2f
	ldh a, [rAUD4GO]                                 ; $6453: $f0 $23
	ldh a, [c]                                       ; $6455: $f2
	jr nz, jr_08d_64d3                               ; $6456: $20 $7b

	dec sp                                           ; $6458: $3b
	inc a                                            ; $6459: $3c
	ld d, a                                          ; $645a: $57
	ld d, h                                          ; $645b: $54
	ld b, c                                          ; $645c: $41
	ld a, [hl-]                                      ; $645d: $3a
	ld b, a                                          ; $645e: $47
	ld c, b                                          ; $645f: $48
	add hl, bc                                       ; $6460: $09
	ldh a, [rAUD4GO]                                 ; $6461: $f0 $23
	ldh a, [c]                                       ; $6463: $f2
	jr nz, jr_08d_64c8                               ; $6464: $20 $62

	inc de                                           ; $6466: $13
	pop af                                           ; $6467: $f1
	or d                                             ; $6468: $b2
	pop af                                           ; $6469: $f1
	ld c, b                                          ; $646a: $48
	ld b, a                                          ; $646b: $47
	ld d, c                                          ; $646c: $51

jr_08d_646d:
	ld c, [hl]                                       ; $646d: $4e
	ld a, a                                          ; $646e: $7f
	ld c, h                                          ; $646f: $4c
	and b                                            ; $6470: $a0
	cpl                                              ; $6471: $2f

jr_08d_6472:
	add sp, $60                                      ; $6472: $e8 $60
	add hl, bc                                       ; $6474: $09
	ld l, e                                          ; $6475: $6b
	ld a, $3f                                        ; $6476: $3e $3f
	ld c, [hl]                                       ; $6478: $4e
	ld b, d                                          ; $6479: $42
	xor b                                            ; $647a: $a8
	ldh a, [$0a]                                     ; $647b: $f0 $0a
	ld d, l                                          ; $647d: $55
	inc [hl]                                         ; $647e: $34
	pop af                                           ; $647f: $f1
	ld h, e                                          ; $6480: $63
	ldh a, [rKEY1]                                   ; $6481: $f0 $4d
	ld a, [hl-]                                      ; $6483: $3a
	ld e, b                                          ; $6484: $58
	jr c, @-$5e                                      ; $6485: $38 $a0

	ld d, h                                          ; $6487: $54
	ld b, c                                          ; $6488: $41
	ld a, [hl-]                                      ; $6489: $3a
	ldh a, [$28]                                     ; $648a: $f0 $28
	inc [hl]                                         ; $648c: $34
	ld e, d                                          ; $648d: $5a
	ld d, h                                          ; $648e: $54
	ld d, e                                          ; $648f: $53
	inc de                                           ; $6490: $13
	ldh a, [rAUD4ENV]                                ; $6491: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6493: $f0 $23
	jr c, jr_08d_64d9                                ; $6495: $38 $42

	inc a                                            ; $6497: $3c
	ldh a, [rTAC]                                    ; $6498: $f0 $07
	inc a                                            ; $649a: $3c
	ld d, b                                          ; $649b: $50
	ld a, [hl-]                                      ; $649c: $3a
	jr c, jr_08d_6502                                ; $649d: $38 $63

	and b                                            ; $649f: $a0
	cpl                                              ; $64a0: $2f
	db $ec                                           ; $64a1: $ec
	ldh [rWX], a                                     ; $64a2: $e0 $4b
	inc [hl]                                         ; $64a4: $34
	ldh a, [$64]                                     ; $64a5: $f0 $64
	jr c, jr_08d_64e3                                ; $64a7: $38 $3a

	ld b, c                                          ; $64a9: $41
	ld b, h                                          ; $64aa: $44
	add hl, bc                                       ; $64ab: $09
	ldh a, [$c6]                                     ; $64ac: $f0 $c6
	pop af                                           ; $64ae: $f1
	ld [hl], d                                       ; $64af: $72
	pop af                                           ; $64b0: $f1
	inc bc                                           ; $64b1: $03
	db $ec                                           ; $64b2: $ec
	ret c                                            ; $64b3: $d8

	ld c, a                                          ; $64b4: $4f
	ld b, d                                          ; $64b5: $42
	ld c, e                                          ; $64b6: $4b
	inc de                                           ; $64b7: $13
	ldh a, [rAUD1LOW]                                ; $64b8: $f0 $13
	ldh a, [$af]                                     ; $64ba: $f0 $af
	ld b, l                                          ; $64bc: $45
	and b                                            ; $64bd: $a0
	ld d, h                                          ; $64be: $54
	ld b, c                                          ; $64bf: $41
	ld a, [hl-]                                      ; $64c0: $3a
	ldh a, [$28]                                     ; $64c1: $f0 $28
	ld b, a                                          ; $64c3: $47
	inc [hl]                                         ; $64c4: $34
	ld a, b                                          ; $64c5: $78
	ld c, [hl]                                       ; $64c6: $4e
	add h                                            ; $64c7: $84

jr_08d_64c8:
	ld b, d                                          ; $64c8: $42
	inc de                                           ; $64c9: $13
	ld a, a                                          ; $64ca: $7f
	ld d, e                                          ; $64cb: $53
	ldh a, [$2d]                                     ; $64cc: $f0 $2d
	ld c, l                                          ; $64ce: $4d
	ld a, [hl-]                                      ; $64cf: $3a
	jr c, jr_08d_6535                                ; $64d0: $38 $63

	and b                                            ; $64d2: $a0

jr_08d_64d3:
	call c, Call_08d_4ba8                            ; $64d3: $dc $a8 $4b
	dec sp                                           ; $64d6: $3b
	ld e, h                                          ; $64d7: $5c
	ld d, a                                          ; $64d8: $57

jr_08d_64d9:
	add d                                            ; $64d9: $82
	dec sp                                           ; $64da: $3b
	ccf                                              ; $64db: $3f
	inc [hl]                                         ; $64dc: $34
	ldh a, [$64]                                     ; $64dd: $f0 $64
	jr c, jr_08d_652d                                ; $64df: $38 $4c

	and b                                            ; $64e1: $a0
	cpl                                              ; $64e2: $2f

jr_08d_64e3:
	ld d, c                                          ; $64e3: $51
	ld [hl], b                                       ; $64e4: $70
	ld d, l                                          ; $64e5: $55
	inc [hl]                                         ; $64e6: $34
	ldh a, [$8a]                                     ; $64e7: $f0 $8a
	ldh a, [rHDMA2]                                  ; $64e9: $f0 $52
	jr c, jr_08d_64d9                                ; $64eb: $38 $ec

	ret c                                            ; $64ed: $d8

jr_08d_64ee:
	inc a                                            ; $64ee: $3c
	add hl, bc                                       ; $64ef: $09
	ld a, [hl-]                                      ; $64f0: $3a
	ld d, b                                          ; $64f1: $50
	inc [hl]                                         ; $64f2: $34
	ld b, [hl]                                       ; $64f3: $46
	ld a, [hl-]                                      ; $64f4: $3a
	dec a                                            ; $64f5: $3d
	xor $08                                          ; $64f6: $ee $08
	ld c, d                                          ; $64f8: $4a
	inc de                                           ; $64f9: $13
	ld [hl], d                                       ; $64fa: $72
	ld c, l                                          ; $64fb: $4d
	ld a, e                                          ; $64fc: $7b
	and c                                            ; $64fd: $a1
	ldh a, [$ab]                                     ; $64fe: $f0 $ab
	ld b, d                                          ; $6500: $42
	ld d, l                                          ; $6501: $55

jr_08d_6502:
	ld a, c                                          ; $6502: $79
	ld b, a                                          ; $6503: $47
	xor h                                            ; $6504: $ac
	db $ed                                           ; $6505: $ed
	ld l, a                                          ; $6506: $6f
	ld h, c                                          ; $6507: $61
	ldh a, [$5c]                                     ; $6508: $f0 $5c
	jr c, jr_08d_656f                                ; $650a: $38 $63

	ld c, h                                          ; $650c: $4c
	and b                                            ; $650d: $a0
	pop af                                           ; $650e: $f1
	sub $64                                          ; $650f: $d6 $64
	inc a                                            ; $6511: $3c
	ld a, $38                                        ; $6512: $3e $38
	ld b, c                                          ; $6514: $41
	ld e, e                                          ; $6515: $5b
	ld d, [hl]                                       ; $6516: $56
	inc de                                           ; $6517: $13
	ld a, [hl-]                                      ; $6518: $3a
	jr c, jr_08d_655d                                ; $6519: $38 $42

	and c                                            ; $651b: $a1
	cpl                                              ; $651c: $2f
	rst JumpTable                                          ; $651d: $c7
	ld b, h                                          ; $651e: $44
	ld c, h                                          ; $651f: $4c
	dec [hl]                                         ; $6520: $35
	halt                                             ; $6521: $76
	ld c, a                                          ; $6522: $4f
	ld b, b                                          ; $6523: $40
	add hl, sp                                       ; $6524: $39
	ld [hl], a                                       ; $6525: $77
	add hl, sp                                       ; $6526: $39
	ld b, l                                          ; $6527: $45
	add hl, bc                                       ; $6528: $09
	ld b, b                                          ; $6529: $40
	add hl, sp                                       ; $652a: $39
	ld [hl], a                                       ; $652b: $77
	add hl, sp                                       ; $652c: $39

jr_08d_652d:
	ld a, [hl-]                                      ; $652d: $3a
	ld d, b                                          ; $652e: $50
	xor h                                            ; $652f: $ac
	db $ec                                           ; $6530: $ec
	ld [hl-], a                                      ; $6531: $32
	and b                                            ; $6532: $a0
	ld b, h                                          ; $6533: $44
	dec sp                                           ; $6534: $3b

jr_08d_6535:
	dec a                                            ; $6535: $3d
	ld d, b                                          ; $6536: $50
	xor h                                            ; $6537: $ac
	ld l, e                                          ; $6538: $6b
	ld a, $47                                        ; $6539: $3e $47
	ld a, b                                          ; $653b: $78
	dec a                                            ; $653c: $3d
	ld b, d                                          ; $653d: $42
	and c                                            ; $653e: $a1
	ld l, e                                          ; $653f: $6b
	ld a, $47                                        ; $6540: $3e $47
	ld a, b                                          ; $6542: $78
	dec a                                            ; $6543: $3d
	ld b, d                                          ; $6544: $42
	xor c                                            ; $6545: $a9
	pop af                                           ; $6546: $f1
	or d                                             ; $6547: $b2
	pop af                                           ; $6548: $f1
	ld c, b                                          ; $6549: $48
	ld l, h                                          ; $654a: $6c
	dec a                                            ; $654b: $3d
	jr c, jr_08d_64ee                                ; $654c: $38 $a0

	ld d, h                                          ; $654e: $54
	ld c, l                                          ; $654f: $4d
	ld a, [hl-]                                      ; $6550: $3a
	ld b, c                                          ; $6551: $41
	ccf                                              ; $6552: $3f
	ld h, e                                          ; $6553: $63
	ld d, a                                          ; $6554: $57
	ld c, c                                          ; $6555: $49
	xor h                                            ; $6556: $ac
	jr c, jr_08d_6591                                ; $6557: $38 $38

	ld h, e                                          ; $6559: $63
	ld c, h                                          ; $655a: $4c
	and b                                            ; $655b: $a0
	cpl                                              ; $655c: $2f

jr_08d_655d:
	ld e, [hl]                                       ; $655d: $5e
	dec sp                                           ; $655e: $3b
	inc [hl]                                         ; $655f: $34
	ld d, h                                          ; $6560: $54
	ld b, d                                          ; $6561: $42
	di                                               ; $6562: $f3
	db $eb                                           ; $6563: $eb
	di                                               ; $6564: $f3
	db $ec                                           ; $6565: $ec
	ld d, e                                          ; $6566: $53
	ldh a, [$9a]                                     ; $6567: $f0 $9a
	jr c, jr_08d_65a8                                ; $6569: $38 $3d

	ld l, [hl]                                       ; $656b: $6e
	add b                                            ; $656c: $80
	and c                                            ; $656d: $a1
	ld d, h                                          ; $656e: $54

jr_08d_656f:
	ld c, l                                          ; $656f: $4d
	ld a, [hl-]                                      ; $6570: $3a
	ld d, b                                          ; $6571: $50
	inc [hl]                                         ; $6572: $34
	add b                                            ; $6573: $80
	ld e, l                                          ; $6574: $5d
	ld c, l                                          ; $6575: $4d
	call c, $f0a8                                    ; $6576: $dc $a8 $f0
	ld sp, $ebf3                                     ; $6579: $31 $f3 $eb
	db $ec                                           ; $657c: $ec
	ret c                                            ; $657d: $d8

	ld b, d                                          ; $657e: $42
	ld d, e                                          ; $657f: $53
	inc de                                           ; $6580: $13
	ld a, l                                          ; $6581: $7d
	ldh a, [rAUD3LOW]                                ; $6582: $f0 $1d
	ld a, l                                          ; $6584: $7d
	ldh a, [$2b]                                     ; $6585: $f0 $2b
	ld b, h                                          ; $6587: $44
	ld e, l                                          ; $6588: $5d
	ld e, d                                          ; $6589: $5a
	and b                                            ; $658a: $a0
	cpl                                              ; $658b: $2f
	ld e, [hl]                                       ; $658c: $5e
	dec sp                                           ; $658d: $3b
	inc [hl]                                         ; $658e: $34
	ld d, h                                          ; $658f: $54
	ld b, d                                          ; $6590: $42

jr_08d_6591:
	db $ec                                           ; $6591: $ec
	ld a, [$6e42]                                    ; $6592: $fa $42 $6e
	add b                                            ; $6595: $80
	and c                                            ; $6596: $a1
	db $f4                                           ; $6597: $f4
	or c                                             ; $6598: $b1
	ldh a, [hDisp1_WY]                                     ; $6599: $f0 $95
	ld hl, sp-$10                                    ; $659b: $f8 $f0
	xor h                                            ; $659d: $ac
	rst FarCall                                          ; $659e: $f7
	ld sp, $3f3b                                     ; $659f: $31 $3b $3f
	ld c, [hl]                                       ; $65a2: $4e
	ld b, c                                          ; $65a3: $41
	db $ec                                           ; $65a4: $ec
	ret c                                            ; $65a5: $d8

	and c                                            ; $65a6: $a1
	cpl                                              ; $65a7: $2f

jr_08d_65a8:
	ld e, [hl]                                       ; $65a8: $5e
	dec sp                                           ; $65a9: $3b
	inc [hl]                                         ; $65aa: $34
	ld d, h                                          ; $65ab: $54
	ld b, d                                          ; $65ac: $42
	ldh a, [$35]                                     ; $65ad: $f0 $35
	ldh a, [rSC]                                     ; $65af: $f0 $02
	ldh a, [$8e]                                     ; $65b1: $f0 $8e
	ldh a, [$03]                                     ; $65b3: $f0 $03
	ld a, [hl-]                                      ; $65b5: $3a
	ld l, [hl]                                       ; $65b6: $6e
	add b                                            ; $65b7: $80
	and c                                            ; $65b8: $a1
	ld b, b                                          ; $65b9: $40
	ld c, l                                          ; $65ba: $4d
	db $ec                                           ; $65bb: $ec
	ret c                                            ; $65bc: $d8

	ld h, e                                          ; $65bd: $63
	xor b                                            ; $65be: $a8
	db $ed                                           ; $65bf: $ed
	db $f4                                           ; $65c0: $f4
	ccf                                              ; $65c1: $3f
	dec a                                            ; $65c2: $3d
	ld b, d                                          ; $65c3: $42
	and c                                            ; $65c4: $a1
	db $ec                                           ; $65c5: $ec
	reti                                             ; $65c6: $d9


	xor h                                            ; $65c7: $ac
	db $eb                                           ; $65c8: $eb
	inc de                                           ; $65c9: $13
	ld c, c                                          ; $65ca: $49
	add d                                            ; $65cb: $82
	ld e, [hl]                                       ; $65cc: $5e
	ld a, e                                          ; $65cd: $7b
	inc de                                           ; $65ce: $13
	ld d, h                                          ; $65cf: $54
	ld d, h                                          ; $65d0: $54
	ld c, h                                          ; $65d1: $4c
	and b                                            ; $65d2: $a0
	cpl                                              ; $65d3: $2f
	ld d, h                                          ; $65d4: $54
	ld b, d                                          ; $65d5: $42
	db $ec                                           ; $65d6: $ec
	cp $53                                           ; $65d7: $fe $53
	dec a                                            ; $65d9: $3d
	ld d, d                                          ; $65da: $52
	ld d, b                                          ; $65db: $50
	ld a, [hl-]                                      ; $65dc: $3a
	jr c, jr_08d_662b                                ; $65dd: $38 $4c

	add hl, bc                                       ; $65df: $09
	ld d, h                                          ; $65e0: $54
	ld b, d                                          ; $65e1: $42
	inc [hl]                                         ; $65e2: $34
	pop af                                           ; $65e3: $f1
	or b                                             ; $65e4: $b0
	ld b, d                                          ; $65e5: $42
	rst FarCall                                          ; $65e6: $f7
	call nz, $4938                                   ; $65e7: $c4 $38 $49
	xor h                                            ; $65ea: $ac
	db $ed                                           ; $65eb: $ed
	dec [hl]                                         ; $65ec: $35
	ld d, e                                          ; $65ed: $53
	pop af                                           ; $65ee: $f1
	cp h                                             ; $65ef: $bc
	ld e, l                                          ; $65f0: $5d
	ld c, [hl]                                       ; $65f1: $4e
	rst FarCall                                          ; $65f2: $f7
	call nz, $1338                                   ; $65f3: $c4 $38 $13
	dec a                                            ; $65f6: $3d
	ld d, d                                          ; $65f7: $52
	ld d, b                                          ; $65f8: $50
	ld a, [hl-]                                      ; $65f9: $3a
	jr c, jr_08d_665f                                ; $65fa: $38 $63

	and b                                            ; $65fc: $a0
	ld b, [hl]                                       ; $65fd: $46
	ld a, [hl-]                                      ; $65fe: $3a
	dec a                                            ; $65ff: $3d
	ld b, a                                          ; $6600: $47
	ld c, a                                          ; $6601: $4f
	inc de                                           ; $6602: $13
	ld d, h                                          ; $6603: $54
	ld b, d                                          ; $6604: $42
	ld a, [hl]                                       ; $6605: $7e
	ld e, b                                          ; $6606: $58
	ld d, e                                          ; $6607: $53
	ldh a, [rTAC]                                    ; $6608: $f0 $07
	inc a                                            ; $660a: $3c
	ld c, [hl]                                       ; $660b: $4e
	ld a, [hl-]                                      ; $660c: $3a
	ld b, c                                          ; $660d: $41

jr_08d_660e:
	ccf                                              ; $660e: $3f
	inc de                                           ; $660f: $13
	ldh a, [$c0]                                     ; $6610: $f0 $c0
	ldh a, [$f0]                                     ; $6612: $f0 $f0
	ld c, h                                          ; $6614: $4c
	and b                                            ; $6615: $a0
	sub c                                            ; $6616: $91
	ldh a, [$59]                                     ; $6617: $f0 $59
	ld b, l                                          ; $6619: $45
	xor b                                            ; $661a: $a8
	sub c                                            ; $661b: $91
	dec a                                            ; $661c: $3d
	ld d, a                                          ; $661d: $57
	sbc [hl]                                         ; $661e: $9e
	ld b, d                                          ; $661f: $42
	ld d, h                                          ; $6620: $54
	ld c, c                                          ; $6621: $49
	inc de                                           ; $6622: $13
	add d                                            ; $6623: $82
	ld h, e                                          ; $6624: $63
	ld a, [hl-]                                      ; $6625: $3a
	jr c, jr_08d_6672                                ; $6626: $38 $4a

	and b                                            ; $6628: $a0
	cpl                                              ; $6629: $2f
	pop hl                                           ; $662a: $e1

jr_08d_662b:
	ld b, d                                          ; $662b: $42
	ld d, l                                          ; $662c: $55
	ld a, c                                          ; $662d: $79
	ld b, a                                          ; $662e: $47
	ld h, h                                          ; $662f: $64
	inc a                                            ; $6630: $3c
	ld a, $38                                        ; $6631: $3e $38
	ld b, l                                          ; $6633: $45
	add hl, bc                                       ; $6634: $09
	pop de                                           ; $6635: $d1
	add d                                            ; $6636: $82
	add hl, sp                                       ; $6637: $39
	db $ec                                           ; $6638: $ec
	ret c                                            ; $6639: $d8

	xor b                                            ; $663a: $a8
	ld b, b                                          ; $663b: $40
	ld b, d                                          ; $663c: $42
	ldh a, [$0d]                                     ; $663d: $f0 $0d
	di                                               ; $663f: $f3
	ld l, l                                          ; $6640: $6d
	ld b, a                                          ; $6641: $47
	db $f4                                           ; $6642: $f4
	dec de                                           ; $6643: $1b
	ld e, e                                          ; $6644: $5b
	ccf                                              ; $6645: $3f
	xor h                                            ; $6646: $ac
	db $ed                                           ; $6647: $ed
	push af                                          ; $6648: $f5
	ld b, a                                          ; $6649: $47
	ld [hl], d                                       ; $664a: $72
	ccf                                              ; $664b: $3f
	rst SubAFromDE                                          ; $664c: $df
	ld h, e                                          ; $664d: $63
	and b                                            ; $664e: $a0
	db $ed                                           ; $664f: $ed
	di                                               ; $6650: $f3
	ld b, d                                          ; $6651: $42
	ld d, l                                          ; $6652: $55
	ld a, c                                          ; $6653: $79
	ld b, a                                          ; $6654: $47
	ldh a, [rHDMA5]                                  ; $6655: $f0 $55
	ldh a, [rBCPS]                                   ; $6657: $f0 $68
	ld c, h                                          ; $6659: $4c
	xor b                                            ; $665a: $a8
	ldh a, [$d0]                                     ; $665b: $f0 $d0
	push af                                          ; $665d: $f5
	add hl, hl                                       ; $665e: $29

jr_08d_665f:
	db $f4                                           ; $665f: $f4
	ld a, e                                          ; $6660: $7b
	ld b, h                                          ; $6661: $44
	ld h, e                                          ; $6662: $63
	and b                                            ; $6663: $a0
	ldh a, [$d0]                                     ; $6664: $f0 $d0
	push af                                          ; $6666: $f5
	add hl, hl                                       ; $6667: $29
	db $f4                                           ; $6668: $f4
	ld a, e                                          ; $6669: $7b
	ld b, h                                          ; $666a: $44
	ld h, e                                          ; $666b: $63
	and b                                            ; $666c: $a0
	cpl                                              ; $666d: $2f
	rst JumpTable                                          ; $666e: $c7
	ld b, h                                          ; $666f: $44
	ld b, l                                          ; $6670: $45
	ld c, h                                          ; $6671: $4c

jr_08d_6672:
	add hl, bc                                       ; $6672: $09
	db $eb                                           ; $6673: $eb
	add $a8                                          ; $6674: $c6 $a8
	pop af                                           ; $6676: $f1
	ld l, a                                          ; $6677: $6f
	ld b, a                                          ; $6678: $47
	pop af                                           ; $6679: $f1
	ld c, $39                                        ; $667a: $0e $39
	ldh a, [$2c]                                     ; $667c: $f0 $2c
	ld d, e                                          ; $667e: $53
	ld b, [hl]                                       ; $667f: $46
	ld c, [hl]                                       ; $6680: $4e
	and c                                            ; $6681: $a1
	sub c                                            ; $6682: $91
	dec a                                            ; $6683: $3d
	ld d, a                                          ; $6684: $57

jr_08d_6685:
	sbc [hl]                                         ; $6685: $9e
	db $ec                                           ; $6686: $ec
	ret c                                            ; $6687: $d8

	and b                                            ; $6688: $a0
	db $eb                                           ; $6689: $eb
	add $a0                                          ; $668a: $c6 $a0
	jr c, jr_08d_660e                                ; $668c: $38 $80

	ld a, b                                          ; $668e: $78
	ccf                                              ; $668f: $3f
	ld c, a                                          ; $6690: $4f
	xor h                                            ; $6691: $ac
	jr c, jr_08d_66cc                                ; $6692: $38 $38

	ld c, c                                          ; $6694: $49
	ld d, h                                          ; $6695: $54
	ld e, a                                          ; $6696: $5f
	ld c, h                                          ; $6697: $4c
	and b                                            ; $6698: $a0
	cpl                                              ; $6699: $2f
	ld c, a                                          ; $669a: $4f
	dec sp                                           ; $669b: $3b
	ld c, c                                          ; $669c: $49
	jr c, jr_08d_66d7                                ; $669d: $38 $38

	ldh a, [$28]                                     ; $669f: $f0 $28
	ld d, e                                          ; $66a1: $53
	ld b, [hl]                                       ; $66a2: $46
	ld c, [hl]                                       ; $66a3: $4e

jr_08d_66a4:
	ld b, c                                          ; $66a4: $41
	ld b, h                                          ; $66a5: $44
	add hl, bc                                       ; $66a6: $09
	ld c, a                                          ; $66a7: $4f
	dec sp                                           ; $66a8: $3b
	ld c, c                                          ; $66a9: $49
	xor h                                            ; $66aa: $ac
	ld d, c                                          ; $66ab: $51
	ld [hl], b                                       ; $66ac: $70
	jr c, jr_08d_66a4                                ; $66ad: $38 $f5

	ld e, b                                          ; $66af: $58
	ldh a, [$30]                                     ; $66b0: $f0 $30
	ld d, e                                          ; $66b2: $53
	ld b, [hl]                                       ; $66b3: $46
	ld c, [hl]                                       ; $66b4: $4e
	ld b, d                                          ; $66b5: $42
	xor c                                            ; $66b6: $a9

jr_08d_66b7:
	ld l, [hl]                                       ; $66b7: $6e
	ld c, [hl]                                       ; $66b8: $4e
	db $ec                                           ; $66b9: $ec
	ret c                                            ; $66ba: $d8

	and b                                            ; $66bb: $a0
	ld b, b                                          ; $66bc: $40
	ld b, c                                          ; $66bd: $41
	ld a, [hl-]                                      ; $66be: $3a
	ldh a, [$28]                                     ; $66bf: $f0 $28
	ld h, d                                          ; $66c1: $62
	ldh a, [$2d]                                     ; $66c2: $f0 $2d
	dec sp                                           ; $66c4: $3b
	ccf                                              ; $66c5: $3f
	ld c, [hl]                                       ; $66c6: $4e
	inc de                                           ; $66c7: $13
	ld a, [hl-]                                      ; $66c8: $3a
	ld b, c                                          ; $66c9: $41
	ccf                                              ; $66ca: $3f
	inc [hl]                                         ; $66cb: $34

jr_08d_66cc:
	pop de                                           ; $66cc: $d1
	ld c, h                                          ; $66cd: $4c
	and b                                            ; $66ce: $a0
	ld b, b                                          ; $66cf: $40
	ld b, c                                          ; $66d0: $41
	ld a, [hl-]                                      ; $66d1: $3a
	ldh a, [$28]                                     ; $66d2: $f0 $28
	ld d, e                                          ; $66d4: $53
	ld b, [hl]                                       ; $66d5: $46
	ld c, [hl]                                       ; $66d6: $4e

jr_08d_66d7:
	ld b, d                                          ; $66d7: $42
	xor b                                            ; $66d8: $a8
	ld e, b                                          ; $66d9: $58
	ld b, [hl]                                       ; $66da: $46
	inc [hl]                                         ; $66db: $34
	ldh a, [c]                                       ; $66dc: $f2
	sub e                                            ; $66dd: $93
	pop af                                           ; $66de: $f1
	ld [hl], a                                       ; $66df: $77
	ld a, $3a                                        ; $66e0: $3e $3a
	ld e, b                                          ; $66e2: $58
	jr c, jr_08d_6685                                ; $66e3: $38 $a0

	cpl                                              ; $66e5: $2f
	ld b, b                                          ; $66e6: $40
	add hl, sp                                       ; $66e7: $39
	ld [hl], $db                                     ; $66e8: $36 $db
	ld a, [hl-]                                      ; $66ea: $3a
	jr c, jr_08d_6732                                ; $66eb: $38 $45

	add hl, bc                                       ; $66ed: $09
	ld d, h                                          ; $66ee: $54
	ld d, h                                          ; $66ef: $54
	ld b, d                                          ; $66f0: $42
	ld a, [hl]                                       ; $66f1: $7e
	ld e, b                                          ; $66f2: $58
	ld d, e                                          ; $66f3: $53
	inc de                                           ; $66f4: $13
	ldh a, [rTAC]                                    ; $66f5: $f0 $07
	inc a                                            ; $66f7: $3c
	ld d, b                                          ; $66f8: $50
	ld a, [hl-]                                      ; $66f9: $3a
	jr c, @+$3c                                      ; $66fa: $38 $3a

	ld b, c                                          ; $66fc: $41
	ccf                                              ; $66fd: $3f
	xor h                                            ; $66fe: $ac
	ldh a, [rAUD1LOW]                                ; $66ff: $f0 $13
	ldh a, [$2d]                                     ; $6701: $f0 $2d
	ld c, e                                          ; $6703: $4b
	ldh a, [$64]                                     ; $6704: $f0 $64
	ld c, h                                          ; $6706: $4c
	and b                                            ; $6707: $a0
	ld b, h                                          ; $6708: $44
	dec sp                                           ; $6709: $3b
	dec a                                            ; $670a: $3d
	ld d, b                                          ; $670b: $50
	xor h                                            ; $670c: $ac
	ld a, d                                          ; $670d: $7a
	ld c, l                                          ; $670e: $4d
	ld a, e                                          ; $670f: $7b
	and c                                            ; $6710: $a1
	ld a, d                                          ; $6711: $7a
	ld d, a                                          ; $6712: $57
	ld a, [hl-]                                      ; $6713: $3a
	ld e, b                                          ; $6714: $58
	jr c, jr_08d_66b7                                ; $6715: $38 $a0

	cpl                                              ; $6717: $2f
	db $ec                                           ; $6718: $ec
	sub $48                                          ; $6719: $d6 $48
	inc [hl]                                         ; $671b: $34
	inc a                                            ; $671c: $3c
	ld a, [hl-]                                      ; $671d: $3a
	add hl, bc                                       ; $671e: $09
	ld b, b                                          ; $671f: $40
	ld b, d                                          ; $6720: $42

jr_08d_6721:
	add hl, sp                                       ; $6721: $39
	ld h, c                                          ; $6722: $61
	xor h                                            ; $6723: $ac
	ld d, h                                          ; $6724: $54
	ld d, h                                          ; $6725: $54
	ld b, d                                          ; $6726: $42
	ld a, [hl]                                       ; $6727: $7e
	ld e, b                                          ; $6728: $58
	ld h, d                                          ; $6729: $62
	inc de                                           ; $672a: $13
	db $ec                                           ; $672b: $ec
	db $ed                                           ; $672c: $ed
	rst SubAFromDE                                          ; $672d: $df
	ld h, e                                          ; $672e: $63
	and b                                            ; $672f: $a0
	ld b, b                                          ; $6730: $40
	ld b, d                                          ; $6731: $42

jr_08d_6732:
	add hl, sp                                       ; $6732: $39
	ld h, c                                          ; $6733: $61
	inc [hl]                                         ; $6734: $34
	ldh a, [rTAC]                                    ; $6735: $f0 $07
	inc a                                            ; $6737: $3c
	ld c, [hl]                                       ; $6738: $4e
	ld h, e                                          ; $6739: $63
	and b                                            ; $673a: $a0
	ldh a, [$34]                                     ; $673b: $f0 $34
	ld b, a                                          ; $673d: $47
	ldh a, [rTAC]                                    ; $673e: $f0 $07
	inc a                                            ; $6740: $3c
	ld d, b                                          ; $6741: $50
	ld a, [hl-]                                      ; $6742: $3a
	ld d, l                                          ; $6743: $55
	ccf                                              ; $6744: $3f
	ld c, a                                          ; $6745: $4f
	inc de                                           ; $6746: $13

Jump_08d_6747:
	jr c, jr_08d_6781                                ; $6747: $38 $38

	ld h, e                                          ; $6749: $63
	and b                                            ; $674a: $a0
	cpl                                              ; $674b: $2f
	ld b, e                                          ; $674c: $43
	ldh a, [$b6]                                     ; $674d: $f0 $b6
	ldh a, [$34]                                     ; $674f: $f0 $34
	add a                                            ; $6751: $87
	pop af                                           ; $6752: $f1
	cp c                                             ; $6753: $b9
	db $f4                                           ; $6754: $f4
	xor $57                                          ; $6755: $ee $57
	ld h, d                                          ; $6757: $62
	inc de                                           ; $6758: $13
	ld a, $3f                                        ; $6759: $3e $3f
	ld c, [hl]                                       ; $675b: $4e
	ld l, h                                          ; $675c: $6c
	dec a                                            ; $675d: $3d
	jr c, jr_08d_67a4                                ; $675e: $38 $44

	ld c, h                                          ; $6760: $4c
	and b                                            ; $6761: $a0
	add a                                            ; $6762: $87
	pop af                                           ; $6763: $f1
	cp c                                             ; $6764: $b9
	db $f4                                           ; $6765: $f4
	xor $57                                          ; $6766: $ee $57
	ld c, d                                          ; $6768: $4a
	ld d, c                                          ; $6769: $51
	dec sp                                           ; $676a: $3b
	ccf                                              ; $676b: $3f
	xor c                                            ; $676c: $a9
	pop af                                           ; $676d: $f1
	ld c, $38                                        ; $676e: $0e $38
	ld b, h                                          ; $6770: $44
	ld [hl], c                                       ; $6771: $71
	ld b, l                                          ; $6772: $45
	xor b                                            ; $6773: $a8
	ldh a, [$08]                                     ; $6774: $f0 $08
	ld d, b                                          ; $6776: $50
	inc [hl]                                         ; $6777: $34
	ldh a, [$0b]                                     ; $6778: $f0 $0b
	pop af                                           ; $677a: $f1
	ld [hl], c                                       ; $677b: $71
	jr c, jr_08d_67b8                                ; $677c: $38 $3a

	ld e, b                                          ; $677e: $58
	jr c, jr_08d_6721                                ; $677f: $38 $a0

jr_08d_6781:
	cpl                                              ; $6781: $2f
	ld b, e                                          ; $6782: $43
	ld c, e                                          ; $6783: $4b
	inc [hl]                                         ; $6784: $34
	xor $2d                                          ; $6785: $ee $2d
	xor b                                            ; $6787: $a8
	ld [hl-], a                                      ; $6788: $32
	ld b, b                                          ; $6789: $40
	ld b, c                                          ; $678a: $41
	ld a, [hl-]                                      ; $678b: $3a
	ld b, a                                          ; $678c: $47
	pop af                                           ; $678d: $f1
	ld d, $53                                        ; $678e: $16 $53
	ld a, [hl-]                                      ; $6790: $3a
	ld d, l                                          ; $6791: $55
	dec a                                            ; $6792: $3d
	dec sp                                           ; $6793: $3b
	ccf                                              ; $6794: $3f
	xor h                                            ; $6795: $ac
	db $f4                                           ; $6796: $f4
	xor $57                                          ; $6797: $ee $57
	pop af                                           ; $6799: $f1
	inc d                                            ; $679a: $14
	ld c, l                                          ; $679b: $4d
	ld a, [hl-]                                      ; $679c: $3a
	jr c, jr_08d_67e4                                ; $679d: $38 $45

	and e                                            ; $679f: $a3
	ld d, h                                          ; $67a0: $54
	ld c, l                                          ; $67a1: $4d
	ld c, a                                          ; $67a2: $4f
	inc [hl]                                         ; $67a3: $34

jr_08d_67a4:
	ld d, h                                          ; $67a4: $54
	ld c, l                                          ; $67a5: $4d
	ld c, a                                          ; $67a6: $4f
	xor h                                            ; $67a7: $ac
	ld l, h                                          ; $67a8: $6c
	ld b, c                                          ; $67a9: $41
	ld a, [hl-]                                      ; $67aa: $3a
	pop af                                           ; $67ab: $f1
	cp c                                             ; $67ac: $b9
	jr c, jr_08d_6812                                ; $67ad: $38 $63

	xor b                                            ; $67af: $a8
	db $ed                                           ; $67b0: $ed
	adc b                                            ; $67b1: $88
	inc [hl]                                         ; $67b2: $34
	pop af                                           ; $67b3: $f1
	ld c, $38                                        ; $67b4: $0e $38
	di                                               ; $67b6: $f3
	ld l, e                                          ; $67b7: $6b

jr_08d_67b8:
	ld [hl], c                                       ; $67b8: $71
	ld b, l                                          ; $67b9: $45
	and b                                            ; $67ba: $a0
	cpl                                              ; $67bb: $2f
	ld [hl-], a                                      ; $67bc: $32
	db $ec                                           ; $67bd: $ec
	ldh [$a8], a                                     ; $67be: $e0 $a8
	pop af                                           ; $67c0: $f1
	ld c, $3b                                        ; $67c1: $0e $3b
	ccf                                              ; $67c3: $3f
	ld c, [hl]                                       ; $67c4: $4e
	di                                               ; $67c5: $f3
	add hl, de                                       ; $67c6: $19
	ld d, e                                          ; $67c7: $53
	ldh a, [$71]                                     ; $67c8: $f0 $71

jr_08d_67ca:
	jr c, jr_08d_6811                                ; $67ca: $38 $45

	ld c, b                                          ; $67cc: $48
	and e                                            ; $67cd: $a3
	ldh a, [$80]                                     ; $67ce: $f0 $80
	ldh a, [$c5]                                     ; $67d0: $f0 $c5
	inc [hl]                                         ; $67d2: $34
	adc $13                                          ; $67d3: $ce $13
	pop af                                           ; $67d5: $f1
	ld c, $3b                                        ; $67d6: $0e $3b
	ldh [$a0], a                                     ; $67d8: $e0 $a0
	cpl                                              ; $67da: $2f
	ld b, e                                          ; $67db: $43
	ld b, b                                          ; $67dc: $40
	add hl, sp                                       ; $67dd: $39
	ld b, h                                          ; $67de: $44
	ld c, h                                          ; $67df: $4c
	xor b                                            ; $67e0: $a8
	ld c, a                                          ; $67e1: $4f
	add hl, sp                                       ; $67e2: $39
	inc [hl]                                         ; $67e3: $34

jr_08d_67e4:
	db $ec                                           ; $67e4: $ec
	rrca                                             ; $67e5: $0f
	ld [hl], $32                                     ; $67e6: $36 $32
	ldh a, [$f3]                                     ; $67e8: $f0 $f3
	ld c, l                                          ; $67ea: $4d
	dec a                                            ; $67eb: $3d
	ld c, b                                          ; $67ec: $48
	inc sp                                           ; $67ed: $33
	add hl, bc                                       ; $67ee: $09
	ld d, d                                          ; $67ef: $52
	ld b, h                                          ; $67f0: $44
	ld b, l                                          ; $67f1: $45
	dec [hl]                                         ; $67f2: $35
	rla                                              ; $67f3: $17
	pop af                                           ; $67f4: $f1
	ld l, a                                          ; $67f5: $6f
	ld b, d                                          ; $67f6: $42
	di                                               ; $67f7: $f3
	cp l                                             ; $67f8: $bd
	ld c, a                                          ; $67f9: $4f
	pop af                                           ; $67fa: $f1
	cp c                                             ; $67fb: $b9
	db $f4                                           ; $67fc: $f4
	xor $57                                          ; $67fd: $ee $57
	ld h, d                                          ; $67ff: $62
	inc de                                           ; $6800: $13
	ld a, $3f                                        ; $6801: $3e $3f
	ld c, [hl]                                       ; $6803: $4e
	db $eb                                           ; $6804: $eb
	dec [hl]                                         ; $6805: $35
	and b                                            ; $6806: $a0
	cpl                                              ; $6807: $2f
	ld b, e                                          ; $6808: $43
	ld e, [hl]                                       ; $6809: $5e
	ld e, c                                          ; $680a: $59
	dec sp                                           ; $680b: $3b
	xor b                                            ; $680c: $a8
	ld d, d                                          ; $680d: $52
	ld b, h                                          ; $680e: $44
	ld h, a                                          ; $680f: $67
	ld d, l                                          ; $6810: $55

jr_08d_6811:
	ld b, d                                          ; $6811: $42

jr_08d_6812:
	and c                                            ; $6812: $a1
	ldh a, [$08]                                     ; $6813: $f0 $08
	ld d, b                                          ; $6815: $50
	inc [hl]                                         ; $6816: $34
	add b                                            ; $6817: $80
	ldh a, [$8c]                                     ; $6818: $f0 $8c
	ld d, h                                          ; $681a: $54
	ldh a, [$8c]                                     ; $681b: $f0 $8c
	add d                                            ; $681d: $82
	ld h, e                                          ; $681e: $63
	sbc h                                            ; $681f: $9c
	ld b, a                                          ; $6820: $47
	xor h                                            ; $6821: $ac
	add b                                            ; $6822: $80
	jr c, @+$41                                      ; $6823: $38 $3f

	ld e, h                                          ; $6825: $5c
	ld a, [hl-]                                      ; $6826: $3a
	ld e, b                                          ; $6827: $58
	jr c, jr_08d_67ca                                ; $6828: $38 $a0

	cpl                                              ; $682a: $2f
	ld b, e                                          ; $682b: $43
	xor $2d                                          ; $682c: $ee $2d
	inc [hl]                                         ; $682e: $34
	xor $2d                                          ; $682f: $ee $2d
	xor b                                            ; $6831: $a8
	ld [hl-], a                                      ; $6832: $32
	ld c, a                                          ; $6833: $4f
	add hl, sp                                       ; $6834: $39
	ld a, d                                          ; $6835: $7a
	ld d, a                                          ; $6836: $57
	dec a                                            ; $6837: $3d
	jr c, jr_08d_6882                                ; $6838: $38 $48

	and e                                            ; $683a: $a3
	ld b, b                                          ; $683b: $40
	ld c, l                                          ; $683c: $4d
	ld e, e                                          ; $683d: $5b
	ld d, [hl]                                       ; $683e: $56
	xor h                                            ; $683f: $ac
	ld [$a0cd], a                                    ; $6840: $ea $cd $a0
	cpl                                              ; $6843: $2f
	ld b, e                                          ; $6844: $43
	ld b, b                                          ; $6845: $40
	add hl, sp                                       ; $6846: $39
	ld b, h                                          ; $6847: $44
	ld c, h                                          ; $6848: $4c
	xor b                                            ; $6849: $a8
	db $eb                                           ; $684a: $eb
	ld d, d                                          ; $684b: $52
	inc a                                            ; $684c: $3c
	and b                                            ; $684d: $a0
	xor $17                                          ; $684e: $ee $17
	ldh a, [rAUD2LEN]                                ; $6850: $f0 $16
	ld b, a                                          ; $6852: $47
	ld d, h                                          ; $6853: $54
	ld b, d                                          ; $6854: $42
	sbc l                                            ; $6855: $9d
	ld d, b                                          ; $6856: $50
	jr c, jr_08d_686c                                ; $6857: $38 $13

	db $ec                                           ; $6859: $ec
	push af                                          ; $685a: $f5
	ld h, e                                          ; $685b: $63
	ld c, h                                          ; $685c: $4c
	and b                                            ; $685d: $a0
	cpl                                              ; $685e: $2f
	ld d, h                                          ; $685f: $54
	ld c, l                                          ; $6860: $4d
	ld b, h                                          ; $6861: $44
	ld e, l                                          ; $6862: $5d
	jr c, jr_08d_68b2                                ; $6863: $38 $4d

	ld a, e                                          ; $6865: $7b
	inc [hl]                                         ; $6866: $34
	db $ed                                           ; $6867: $ed
	ld [hl], e                                       ; $6868: $73
	ld b, h                                          ; $6869: $44
	ld c, h                                          ; $686a: $4c
	add hl, bc                                       ; $686b: $09

jr_08d_686c:
	call c, $3da8                                    ; $686c: $dc $a8 $3d
	ld b, h                                          ; $686f: $44
	inc [hl]                                         ; $6870: $34
	push af                                          ; $6871: $f5
	ld l, c                                          ; $6872: $69
	ldh a, [rHDMA1]                                  ; $6873: $f0 $51
	di                                               ; $6875: $f3
	ld a, a                                          ; $6876: $7f
	ld b, h                                          ; $6877: $44
	ld e, l                                          ; $6878: $5d
	ld c, d                                          ; $6879: $4a
	inc de                                           ; $687a: $13
	xor $17                                          ; $687b: $ee $17
	di                                               ; $687d: $f3
	ld a, a                                          ; $687e: $7f
	ld d, e                                          ; $687f: $53
	ldh a, [rAUD1LOW]                                ; $6880: $f0 $13

jr_08d_6882:
	ld d, l                                          ; $6882: $55
	ld a, [hl-]                                      ; $6883: $3a
	ld c, [hl]                                       ; $6884: $4e
	ld e, l                                          ; $6885: $5d
	ld e, d                                          ; $6886: $5a
	ld c, h                                          ; $6887: $4c
	and b                                            ; $6888: $a0
	call c, $f4a8                                    ; $6889: $dc $a8 $f4
	sub a                                            ; $688c: $97
	ld b, l                                          ; $688d: $45
	ld d, a                                          ; $688e: $57
	ld c, a                                          ; $688f: $4f
	di                                               ; $6890: $f3
	set 6, e                                         ; $6891: $cb $f3
	inc b                                            ; $6893: $04
	ld b, d                                          ; $6894: $42
	pop af                                           ; $6895: $f1
	sub d                                            ; $6896: $92
	ld e, b                                          ; $6897: $58
	ld d, e                                          ; $6898: $53
	inc de                                           ; $6899: $13
	db $ed                                           ; $689a: $ed
	ld [hl], $4c                                     ; $689b: $36 $4c
	and b                                            ; $689d: $a0
	ld d, h                                          ; $689e: $54
	ld c, l                                          ; $689f: $4d
	ld b, h                                          ; $68a0: $44
	ld e, l                                          ; $68a1: $5d
	jr c, jr_08d_68f1                                ; $68a2: $38 $4d

	ld a, e                                          ; $68a4: $7b
	xor h                                            ; $68a5: $ac
	inc a                                            ; $68a6: $3c
	ld a, [hl-]                                      ; $68a7: $3a
	ld d, a                                          ; $68a8: $57
	ld b, d                                          ; $68a9: $42
	xor $2a                                          ; $68aa: $ee $2a
	ld d, e                                          ; $68ac: $53
	sub h                                            ; $68ad: $94
	ld a, b                                          ; $68ae: $78
	ld c, [hl]                                       ; $68af: $4e
	ld h, e                                          ; $68b0: $63
	and b                                            ; $68b1: $a0

jr_08d_68b2:
	cpl                                              ; $68b2: $2f
	ld d, h                                          ; $68b3: $54
	ld b, c                                          ; $68b4: $41
	ld a, [hl-]                                      ; $68b5: $3a
	ld b, a                                          ; $68b6: $47
	db $ec                                           ; $68b7: $ec
	inc de                                           ; $68b8: $13
	ld b, d                                          ; $68b9: $42
	ld b, a                                          ; $68ba: $47
	and c                                            ; $68bb: $a1
	ld b, b                                          ; $68bc: $40
	add hl, sp                                       ; $68bd: $39
	xor c                                            ; $68be: $a9
	ld [hl], d                                       ; $68bf: $72
	dec a                                            ; $68c0: $3d
	ldh a, [rAUD3LEVEL]                              ; $68c1: $f0 $1c
	ld b, h                                          ; $68c3: $44
	ld e, l                                          ; $68c4: $5d
	ld b, a                                          ; $68c5: $47
	xor h                                            ; $68c6: $ac
	ld [hl], b                                       ; $68c7: $70
	ld d, d                                          ; $68c8: $52
	inc a                                            ; $68c9: $3c
	ld e, b                                          ; $68ca: $58
	ld c, l                                          ; $68cb: $4d
	ccf                                              ; $68cc: $3f
	ld c, [hl]                                       ; $68cd: $4e
	ld h, e                                          ; $68ce: $63
	ld c, h                                          ; $68cf: $4c
	and b                                            ; $68d0: $a0
	pop af                                           ; $68d1: $f1
	xor c                                            ; $68d2: $a9
	db $ed                                           ; $68d3: $ed
	ld b, e                                          ; $68d4: $43
	xor h                                            ; $68d5: $ac
	ldh a, [$aa]                                     ; $68d6: $f0 $aa
	adc c                                            ; $68d8: $89
	ld b, d                                          ; $68d9: $42
	pop af                                           ; $68da: $f1
	xor l                                            ; $68db: $ad
	ldh a, [$c1]                                     ; $68dc: $f0 $c1
	ld b, a                                          ; $68de: $47
	ld sp, hl                                        ; $68df: $f9
	ld c, [hl]                                       ; $68e0: $4e
	ld d, l                                          ; $68e1: $55
	ld d, c                                          ; $68e2: $51
	ldh a, [$38]                                     ; $68e3: $f0 $38
	ld d, e                                          ; $68e5: $53
	inc de                                           ; $68e6: $13
	jr c, jr_08d_6921                                ; $68e7: $38 $38

	ld b, a                                          ; $68e9: $47
	ldh a, [$ec]                                     ; $68ea: $f0 $ec
	ld d, d                                          ; $68ec: $52
	dec sp                                           ; $68ed: $3b
	ccf                                              ; $68ee: $3f
	ld c, [hl]                                       ; $68ef: $4e
	ld h, e                                          ; $68f0: $63

jr_08d_68f1:
	and b                                            ; $68f1: $a0
	ld b, b                                          ; $68f2: $40
	ld b, c                                          ; $68f3: $41
	ld a, [hl-]                                      ; $68f4: $3a
	sbc d                                            ; $68f5: $9a
	ld b, l                                          ; $68f6: $45

jr_08d_68f7:
	ld d, a                                          ; $68f7: $57
	ld c, a                                          ; $68f8: $4f
	xor h                                            ; $68f9: $ac
	ld l, a                                          ; $68fa: $6f
	ld b, d                                          ; $68fb: $42
	xor $17                                          ; $68fc: $ee $17
	ld b, d                                          ; $68fe: $42
	ldh a, [$38]                                     ; $68ff: $f0 $38
	ld d, e                                          ; $6901: $53
	xor h                                            ; $6902: $ac
	add a                                            ; $6903: $87
	pop af                                           ; $6904: $f1
	inc d                                            ; $6905: $14
	ld b, l                                          ; $6906: $45
	and b                                            ; $6907: $a0
	cpl                                              ; $6908: $2f
	add sp, -$20                                     ; $6909: $e8 $e0
	add hl, bc                                       ; $690b: $09
	ld c, a                                          ; $690c: $4f
	dec sp                                           ; $690d: $3b
	ld c, c                                          ; $690e: $49
	ldh a, [$2d]                                     ; $690f: $f0 $2d
	pop af                                           ; $6911: $f1
	inc bc                                           ; $6912: $03
	ld a, [hl-]                                      ; $6913: $3a
	pop af                                           ; $6914: $f1
	xor l                                            ; $6915: $ad
	pop af                                           ; $6916: $f1
	ld c, h                                          ; $6917: $4c
	ld h, d                                          ; $6918: $62
	xor h                                            ; $6919: $ac
	ld a, $3f                                        ; $691a: $3e $3f
	db $ec                                           ; $691c: $ec
	push af                                          ; $691d: $f5
	ld h, e                                          ; $691e: $63
	xor b                                            ; $691f: $a8
	ld d, d                                          ; $6920: $52

jr_08d_6921:
	inc [hl]                                         ; $6921: $34
	db $eb                                           ; $6922: $eb
	inc [hl]                                         ; $6923: $34
	ld e, l                                          ; $6924: $5d
	ld e, d                                          ; $6925: $5a
	and b                                            ; $6926: $a0
	db $f4                                           ; $6927: $f4
	or c                                             ; $6928: $b1
	ld b, l                                          ; $6929: $45
	ld d, a                                          ; $692a: $57
	ld c, a                                          ; $692b: $4f
	xor h                                            ; $692c: $ac
	db $fc                                           ; $692d: $fc
	dec a                                            ; $692e: $3d
	di                                               ; $692f: $f3
	ld a, [$f153]                                    ; $6930: $fa $53 $f1
	xor l                                            ; $6933: $ad
	ldh a, [rSTAT]                                   ; $6934: $f0 $41
	ld a, $3f                                        ; $6936: $3e $3f
	ld c, [hl]                                       ; $6938: $4e
	ld b, d                                          ; $6939: $42
	ld c, h                                          ; $693a: $4c
	and b                                            ; $693b: $a0
	ret                                              ; $693c: $c9


	di                                               ; $693d: $f3
	dec de                                           ; $693e: $1b
	pop af                                           ; $693f: $f1
	ld [hl], d                                       ; $6940: $72
	ld c, h                                          ; $6941: $4c
	xor b                                            ; $6942: $a8
	ldh a, [$34]                                     ; $6943: $f0 $34
	ld b, a                                          ; $6945: $47
	db $ec                                           ; $6946: $ec
	ld [$f3a0], sp                                   ; $6947: $08 $a0 $f3
	ld b, [hl]                                       ; $694a: $46
	dec sp                                           ; $694b: $3b
	ccf                                              ; $694c: $3f
	xor h                                            ; $694d: $ac
	jr c, @+$3a                                      ; $694e: $38 $38

	ld c, c                                          ; $6950: $49
	ld [hl], a                                       ; $6951: $77
	ld h, e                                          ; $6952: $63
	ld a, [hl-]                                      ; $6953: $3a
	jr c, jr_08d_68f7                                ; $6954: $38 $a1

	cpl                                              ; $6956: $2f
	ld c, d                                          ; $6957: $4a
	ld c, a                                          ; $6958: $4f
	inc [hl]                                         ; $6959: $34
	di                                               ; $695a: $f3
	ld b, [hl]                                       ; $695b: $46
	dec sp                                           ; $695c: $3b
	ccf                                              ; $695d: $3f
	ldh a, [$71]                                     ; $695e: $f0 $71
	jr c, jr_08d_69a7                                ; $6960: $38 $45

	ld c, h                                          ; $6962: $4c
	add hl, bc                                       ; $6963: $09
	ld b, b                                          ; $6964: $40
	ld c, l                                          ; $6965: $4d
	ld d, e                                          ; $6966: $53
	jr c, @+$3a                                      ; $6967: $38 $38

	ld b, d                                          ; $6969: $42
	ld b, l                                          ; $696a: $45
	xor b                                            ; $696b: $a8
	ld d, h                                          ; $696c: $54
	ld b, d                                          ; $696d: $42
	db $ed                                           ; $696e: $ed
	inc l                                            ; $696f: $2c
	ld h, d                                          ; $6970: $62
	pop af                                           ; $6971: $f1
	sbc l                                            ; $6972: $9d
	ld e, [hl]                                       ; $6973: $5e
	ld a, e                                          ; $6974: $7b
	xor h                                            ; $6975: $ac
	pop af                                           ; $6976: $f1
	cpl                                              ; $6977: $2f
	ld c, d                                          ; $6978: $4a
	ld c, e                                          ; $6979: $4b
	ldh a, [rAUD1LOW]                                ; $697a: $f0 $13
	ldh a, [$ae]                                     ; $697c: $f0 $ae
	ld c, h                                          ; $697e: $4c
	and b                                            ; $697f: $a0
	cpl                                              ; $6980: $2f
	ld l, e                                          ; $6981: $6b
	ld d, e                                          ; $6982: $53
	jr c, jr_08d_69bd                                ; $6983: $38 $38

	ld b, d                                          ; $6985: $42
	inc a                                            ; $6986: $3c
	ldh a, [rTAC]                                    ; $6987: $f0 $07
	inc a                                            ; $6989: $3c
	ld b, c                                          ; $698a: $41
	ld a, [hl-]                                      ; $698b: $3a
	jr c, jr_08d_69d3                                ; $698c: $38 $45

	add hl, bc                                       ; $698e: $09
	ld b, b                                          ; $698f: $40
	add hl, sp                                       ; $6990: $39
	xor b                                            ; $6991: $a8
	ldh a, [rTAC]                                    ; $6992: $f0 $07
	inc a                                            ; $6994: $3c
	ld d, b                                          ; $6995: $50
	ld a, [hl-]                                      ; $6996: $3a
	jr c, jr_08d_69d3                                ; $6997: $38 $3a

	ld d, b                                          ; $6999: $50
	xor h                                            ; $699a: $ac
	jr c, jr_08d_69d5                                ; $699b: $38 $38

	ld h, e                                          ; $699d: $63
	and b                                            ; $699e: $a0
	cpl                                              ; $699f: $2f
	jr c, jr_08d_69da                                ; $69a0: $38 $38

	ld c, c                                          ; $69a2: $49
	ld [hl], a                                       ; $69a3: $77
	add hl, sp                                       ; $69a4: $39
	ld b, l                                          ; $69a5: $45
	add hl, bc                                       ; $69a6: $09

jr_08d_69a7:
	ld b, b                                          ; $69a7: $40
	ld c, l                                          ; $69a8: $4d
	ld a, [hl-]                                      ; $69a9: $3a
	ld d, b                                          ; $69aa: $50
	xor h                                            ; $69ab: $ac
	ld h, e                                          ; $69ac: $63
	dec a                                            ; $69ad: $3d
	ld a, $42                                        ; $69ae: $3e $42
	ldh a, [$a4]                                     ; $69b0: $f0 $a4
	ld e, [hl]                                       ; $69b2: $5e
	ld c, a                                          ; $69b3: $4f
	pop af                                           ; $69b4: $f1

jr_08d_69b5:
	dec sp                                           ; $69b5: $3b
	ld c, [hl]                                       ; $69b6: $4e
	ld h, e                                          ; $69b7: $63
	ld c, h                                          ; $69b8: $4c
	and b                                            ; $69b9: $a0
	ld l, d                                          ; $69ba: $6a
	ld [hl], d                                       ; $69bb: $72
	ccf                                              ; $69bc: $3f

jr_08d_69bd:
	ld e, h                                          ; $69bd: $5c
	dec a                                            ; $69be: $3d
	ld a, l                                          ; $69bf: $7d
	ldh a, [$03]                                     ; $69c0: $f0 $03
	ldh a, [$35]                                     ; $69c2: $f0 $35
	ld b, d                                          ; $69c4: $42
	inc de                                           ; $69c5: $13
	db $ec                                           ; $69c6: $ec
	ldh a, [c]                                       ; $69c7: $f2
	xor b                                            ; $69c8: $a8
	xor $1e                                          ; $69c9: $ee $1e
	db $f4                                           ; $69cb: $f4
	call $fef2                                       ; $69cc: $cd $f2 $fe
	ld e, b                                          ; $69cf: $58
	ld d, e                                          ; $69d0: $53
	inc de                                           ; $69d1: $13
	db $ec                                           ; $69d2: $ec

jr_08d_69d3:
	cp c                                             ; $69d3: $b9
	ld h, e                                          ; $69d4: $63

jr_08d_69d5:
	ld c, h                                          ; $69d5: $4c
	and b                                            ; $69d6: $a0
	cpl                                              ; $69d7: $2f
	add sp, -$6f                                     ; $69d8: $e8 $91

jr_08d_69da:
	and c                                            ; $69da: $a1
	ld h, e                                          ; $69db: $63
	ld d, a                                          ; $69dc: $57
	ld c, c                                          ; $69dd: $49
	db $ed                                           ; $69de: $ed
	sub $3a                                          ; $69df: $d6 $3a
	ld c, c                                          ; $69e1: $49
	ld d, h                                          ; $69e2: $54
	ld e, a                                          ; $69e3: $5f
	ld h, d                                          ; $69e4: $62
	inc de                                           ; $69e5: $13
	ld [hl], d                                       ; $69e6: $72
	ccf                                              ; $69e7: $3f
	ld c, [hl]                                       ; $69e8: $4e
	db $ec                                           ; $69e9: $ec
	ret c                                            ; $69ea: $d8

	and b                                            ; $69eb: $a0
	cpl                                              ; $69ec: $2f
	add sp, $2f                                      ; $69ed: $e8 $2f
	add hl, bc                                       ; $69ef: $09
	jr c, @+$54                                      ; $69f0: $38 $52

	ld e, b                                          ; $69f2: $58
	ld d, b                                          ; $69f3: $50
	ld l, e                                          ; $69f4: $6b
	add d                                            ; $69f5: $82
	dec sp                                           ; $69f6: $3b
	ccf                                              ; $69f7: $3f
	ld c, [hl]                                       ; $69f8: $4e
	ld b, d                                          ; $69f9: $42
	xor c                                            ; $69fa: $a9
	ld h, h                                          ; $69fb: $64
	inc a                                            ; $69fc: $3c
	ld a, $38                                        ; $69fd: $3e $38
	ld b, c                                          ; $69ff: $41
	db $ec                                           ; $6a00: $ec
	ret c                                            ; $6a01: $d8

	and c                                            ; $6a02: $a1
	cpl                                              ; $6a03: $2f
	add sp, -$1a                                     ; $6a04: $e8 $e6
	add hl, bc                                       ; $6a06: $09
	pop af                                           ; $6a07: $f1
	sub $7e                                          ; $6a08: $d6 $7e
	jr c, jr_08d_69b5                                ; $6a0a: $38 $a9

	adc b                                            ; $6a0c: $88
	ld a, a                                          ; $6a0d: $7f
	ld c, d                                          ; $6a0e: $4a
	ld b, b                                          ; $6a0f: $40
	add hl, sp                                       ; $6a10: $39
	ld [hl], a                                       ; $6a11: $77
	dec sp                                           ; $6a12: $3b

jr_08d_6a13:
	ccf                                              ; $6a13: $3f
	ld c, [hl]                                       ; $6a14: $4e
	ld b, d                                          ; $6a15: $42
	and c                                            ; $6a16: $a1
	xor $17                                          ; $6a17: $ee $17
	ldh a, [rAUD2LEN]                                ; $6a19: $f0 $16
	ld b, a                                          ; $6a1b: $47
	inc de                                           ; $6a1c: $13
	ld d, h                                          ; $6a1d: $54
	ld b, d                                          ; $6a1e: $42
	sbc l                                            ; $6a1f: $9d
	ld d, b                                          ; $6a20: $50
	jr c, jr_08d_6a13                                ; $6a21: $38 $f0

	ld c, b                                          ; $6a23: $48
	ldh a, [$2c]                                     ; $6a24: $f0 $2c
	ld d, e                                          ; $6a26: $53
	inc de                                           ; $6a27: $13
	db $ec                                           ; $6a28: $ec
	push af                                          ; $6a29: $f5
	ld h, e                                          ; $6a2a: $63
	ld c, h                                          ; $6a2b: $4c
	and b                                            ; $6a2c: $a0
	cpl                                              ; $6a2d: $2f
	ld d, h                                          ; $6a2e: $54
	ld c, l                                          ; $6a2f: $4d
	ld b, h                                          ; $6a30: $44
	ld e, l                                          ; $6a31: $5d
	jr c, jr_08d_6a81                                ; $6a32: $38 $4d

	ld a, e                                          ; $6a34: $7b
	inc [hl]                                         ; $6a35: $34
	db $ed                                           ; $6a36: $ed
	ld [hl], e                                       ; $6a37: $73
	ld b, h                                          ; $6a38: $44
	ld e, a                                          ; $6a39: $5f
	add hl, sp                                       ; $6a3a: $39
	ld c, h                                          ; $6a3b: $4c
	add hl, bc                                       ; $6a3c: $09
	ld d, d                                          ; $6a3d: $52
	inc [hl]                                         ; $6a3e: $34
	ld d, h                                          ; $6a3f: $54
	ld c, l                                          ; $6a40: $4d
	ld b, h                                          ; $6a41: $44
	ld e, l                                          ; $6a42: $5d
	jr c, jr_08d_6a92                                ; $6a43: $38 $4d

	ld a, e                                          ; $6a45: $7b
	xor h                                            ; $6a46: $ac
	pop af                                           ; $6a47: $f1
	ld l, [hl]                                       ; $6a48: $6e
	ldh a, [$cf]                                     ; $6a49: $f0 $cf
	ld a, [hl-]                                      ; $6a4b: $3a
	ld d, h                                          ; $6a4c: $54
	ld c, c                                          ; $6a4d: $49
	ld d, e                                          ; $6a4e: $53
	inc de                                           ; $6a4f: $13
	sub h                                            ; $6a50: $94
	ld a, b                                          ; $6a51: $78
	call c, Call_08d_54a0                            ; $6a52: $dc $a0 $54
	ld c, l                                          ; $6a55: $4d
	ld b, h                                          ; $6a56: $44
	ld e, l                                          ; $6a57: $5d
	ld b, d                                          ; $6a58: $42
	inc de                                           ; $6a59: $13
	ldh a, [rOBP0]                                   ; $6a5a: $f0 $48
	ldh a, [$2c]                                     ; $6a5c: $f0 $2c
	ld d, e                                          ; $6a5e: $53
	jr c, jr_08d_6aae                                ; $6a5f: $38 $4d

	ld a, e                                          ; $6a61: $7b
	xor h                                            ; $6a62: $ac
	db $ed                                           ; $6a63: $ed
	cp h                                             ; $6a64: $bc
	ldh a, [$bc]                                     ; $6a65: $f0 $bc
	ld b, d                                          ; $6a67: $42
	xor $2a                                          ; $6a68: $ee $2a
	ld d, e                                          ; $6a6a: $53
	sub h                                            ; $6a6b: $94
	ld a, b                                          ; $6a6c: $78
	ld c, [hl]                                       ; $6a6d: $4e
	ld h, e                                          ; $6a6e: $63
	and b                                            ; $6a6f: $a0
	ld d, d                                          ; $6a70: $52
	inc [hl]                                         ; $6a71: $34
	ld d, h                                          ; $6a72: $54
	ld c, l                                          ; $6a73: $4d
	ld b, h                                          ; $6a74: $44
	ld e, l                                          ; $6a75: $5d
	jr c, jr_08d_6ac5                                ; $6a76: $38 $4d

	ld a, e                                          ; $6a78: $7b
	ld c, h                                          ; $6a79: $4c
	and b                                            ; $6a7a: $a0
	cpl                                              ; $6a7b: $2f

jr_08d_6a7c:
	ld b, b                                          ; $6a7c: $40
	ld b, c                                          ; $6a7d: $41
	ld a, [hl-]                                      ; $6a7e: $3a
	inc [hl]                                         ; $6a7f: $34
	db $ed                                           ; $6a80: $ed

jr_08d_6a81:
	dec bc                                           ; $6a81: $0b
	ld b, h                                          ; $6a82: $44
	ld b, l                                          ; $6a83: $45
	add hl, bc                                       ; $6a84: $09
	ld b, b                                          ; $6a85: $40
	ld b, c                                          ; $6a86: $41
	ld a, [hl-]                                      ; $6a87: $3a
	di                                               ; $6a88: $f3
	ld c, d                                          ; $6a89: $4a
	jr c, jr_08d_6a7c                                ; $6a8a: $38 $f0

	and h                                            ; $6a8c: $a4
	ld e, [hl]                                       ; $6a8d: $5e
	ld c, e                                          ; $6a8e: $4b
	xor h                                            ; $6a8f: $ac
	di                                               ; $6a90: $f3
	ld b, d                                          ; $6a91: $42

jr_08d_6a92:
	ccf                                              ; $6a92: $3f
	dec a                                            ; $6a93: $3d
	ldh a, [$08]                                     ; $6a94: $f0 $08
	add hl, sp                                       ; $6a96: $39
	ld d, e                                          ; $6a97: $53
	jr c, @+$3a                                      ; $6a98: $38 $38

	ld h, e                                          ; $6a9a: $63
	xor b                                            ; $6a9b: $a8
	ldh a, [$aa]                                     ; $6a9c: $f0 $aa
	adc c                                            ; $6a9e: $89
	ld b, d                                          ; $6a9f: $42
	pop af                                           ; $6aa0: $f1
	dec hl                                           ; $6aa1: $2b
	pop af                                           ; $6aa2: $f1
	ld h, $42                                        ; $6aa3: $26 $42
	dec a                                            ; $6aa5: $3d
	ld [hl], c                                       ; $6aa6: $71
	ld b, l                                          ; $6aa7: $45
	and b                                            ; $6aa8: $a0
	di                                               ; $6aa9: $f3
	ld c, d                                          ; $6aaa: $4a
	ld d, c                                          ; $6aab: $51
	ldh a, [$cb]                                     ; $6aac: $f0 $cb

jr_08d_6aae:
	ld c, [hl]                                       ; $6aae: $4e
	ld h, e                                          ; $6aaf: $63
	xor b                                            ; $6ab0: $a8
	db $ed                                           ; $6ab1: $ed
	call z, $8442                                    ; $6ab2: $cc $42 $84
	ldh a, [$2a]                                     ; $6ab5: $f0 $2a
	pop af                                           ; $6ab7: $f1
	ld a, [hl+]                                      ; $6ab8: $2a
	ldh a, [rHDMA3]                                  ; $6ab9: $f0 $53
	ld c, e                                          ; $6abb: $4b
	xor h                                            ; $6abc: $ac
	ld d, h                                          ; $6abd: $54
	add hl, sp                                       ; $6abe: $39
	jr c, jr_08d_6afa                                ; $6abf: $38 $39

	ei                                               ; $6ac1: $fb
	ld c, c                                          ; $6ac2: $49
	ld sp, hl                                        ; $6ac3: $f9
	dec d                                            ; $6ac4: $15

jr_08d_6ac5:
	ld b, d                                          ; $6ac5: $42
	ldh a, [$3e]                                     ; $6ac6: $f0 $3e
	ld b, a                                          ; $6ac8: $47
	inc de                                           ; $6ac9: $13
	pop af                                           ; $6aca: $f1
	ld d, e                                          ; $6acb: $53
	ld d, a                                          ; $6acc: $57
	ldh a, [$d9]                                     ; $6acd: $f0 $d9
	dec sp                                           ; $6acf: $3b
	ccf                                              ; $6ad0: $3f
	jr c, jr_08d_6b21                                ; $6ad1: $38 $4e

	ld b, d                                          ; $6ad3: $42
	ld b, l                                          ; $6ad4: $45
	and b                                            ; $6ad5: $a0
	ldh a, [$a4]                                     ; $6ad6: $f0 $a4
	ld e, [hl]                                       ; $6ad8: $5e
	ld d, e                                          ; $6ad9: $53
	di                                               ; $6ada: $f3
	ld c, d                                          ; $6adb: $4a
	ld d, c                                          ; $6adc: $51
	ldh a, [$cb]                                     ; $6add: $f0 $cb
	ccf                                              ; $6adf: $3f
	xor h                                            ; $6ae0: $ac
	ld l, e                                          ; $6ae1: $6b
	ld c, a                                          ; $6ae2: $4f
	ldh a, [rAUDVOL]                                 ; $6ae3: $f0 $24
	ld d, c                                          ; $6ae5: $51
	ld a, a                                          ; $6ae6: $7f
	ld b, a                                          ; $6ae7: $47
	ld a, [hl-]                                      ; $6ae8: $3a
	ld c, l                                          ; $6ae9: $4d
	ld a, [hl-]                                      ; $6aea: $3a
	jr c, jr_08d_6b50                                ; $6aeb: $38 $63

	and b                                            ; $6aed: $a0
	cpl                                              ; $6aee: $2f
	ld d, h                                          ; $6aef: $54
	ld b, c                                          ; $6af0: $41
	ld a, [hl-]                                      ; $6af1: $3a
	ld b, a                                          ; $6af2: $47
	di                                               ; $6af3: $f3
	or b                                             ; $6af4: $b0
	ld e, [hl]                                       ; $6af5: $5e
	ld c, [hl]                                       ; $6af6: $4e
	ld b, d                                          ; $6af7: $42
	and c                                            ; $6af8: $a1
	ld b, b                                          ; $6af9: $40

jr_08d_6afa:
	inc [hl]                                         ; $6afa: $34
	ld b, b                                          ; $6afb: $40
	ld b, c                                          ; $6afc: $41
	ld a, [hl-]                                      ; $6afd: $3a
	sbc d                                            ; $6afe: $9a
	ld c, e                                          ; $6aff: $4b
	xor h                                            ; $6b00: $ac
	db $eb                                           ; $6b01: $eb
	ld [hl], h                                       ; $6b02: $74
	ld h, e                                          ; $6b03: $63
	ld b, l                                          ; $6b04: $45
	and b                                            ; $6b05: $a0
	ld d, d                                          ; $6b06: $52
	inc [hl]                                         ; $6b07: $34
	ld l, d                                          ; $6b08: $6a
	ld c, e                                          ; $6b09: $4b
	ldh a, [rAUD1LOW]                                ; $6b0a: $f0 $13
	ldh a, [$63]                                     ; $6b0c: $f0 $63
	ld b, h                                          ; $6b0e: $44
	ld e, l                                          ; $6b0f: $5d
	ld e, d                                          ; $6b10: $5a
	ld c, h                                          ; $6b11: $4c
	and b                                            ; $6b12: $a0
	ld c, c                                          ; $6b13: $49
	ld d, a                                          ; $6b14: $57
	ld b, [hl]                                       ; $6b15: $46
	ld e, [hl]                                       ; $6b16: $5e
	sbc h                                            ; $6b17: $9c
	ld c, e                                          ; $6b18: $4b
	xor h                                            ; $6b19: $ac
	xor $05                                          ; $6b1a: $ee $05
	ld c, h                                          ; $6b1c: $4c
	and b                                            ; $6b1d: $a0
	ldh a, [rSC]                                     ; $6b1e: $f0 $02
	ld a, l                                          ; $6b20: $7d

jr_08d_6b21:
	ldh a, [$c3]                                     ; $6b21: $f0 $c3
	ld h, l                                          ; $6b23: $65
	dec sp                                           ; $6b24: $3b
	ccf                                              ; $6b25: $3f
	ld e, d                                          ; $6b26: $5a
	add hl, sp                                       ; $6b27: $39
	ld [hl], a                                       ; $6b28: $77
	add hl, sp                                       ; $6b29: $39
	and c                                            ; $6b2a: $a1
	cpl                                              ; $6b2b: $2f
	ldh a, [$5f]                                     ; $6b2c: $f0 $5f
	ldh a, [$9c]                                     ; $6b2e: $f0 $9c
	ld b, d                                          ; $6b30: $42
	ldh a, [rOBP0]                                   ; $6b31: $f0 $48
	ldh a, [$2c]                                     ; $6b33: $f0 $2c
	inc a                                            ; $6b35: $3c
	ld a, [hl-]                                      ; $6b36: $3a
	ld c, b                                          ; $6b37: $48
	add hl, bc                                       ; $6b38: $09
	db $ec                                           ; $6b39: $ec
	reti                                             ; $6b3a: $d9


	inc [hl]                                         ; $6b3b: $34
	call c, Call_08d_54a8                            ; $6b3c: $dc $a8 $54
	ld b, d                                          ; $6b3f: $42
	db $ed                                           ; $6b40: $ed
	inc l                                            ; $6b41: $2c
	ld h, d                                          ; $6b42: $62
	inc de                                           ; $6b43: $13
	ldh a, [rTMA]                                    ; $6b44: $f0 $06
	pop af                                           ; $6b46: $f1
	ld d, e                                          ; $6b47: $53
	ld a, $3f                                        ; $6b48: $3e $3f
	ld l, h                                          ; $6b4a: $6c
	dec a                                            ; $6b4b: $3d
	jr c, jr_08d_6bb1                                ; $6b4c: $38 $63

	and b                                            ; $6b4e: $a0
	cpl                                              ; $6b4f: $2f

jr_08d_6b50:
	ldh a, [$34]                                     ; $6b50: $f0 $34
	ld b, a                                          ; $6b52: $47
	ld l, e                                          ; $6b53: $6b
	ld c, a                                          ; $6b54: $4f
	ld c, b                                          ; $6b55: $48
	add hl, bc                                       ; $6b56: $09
	ld b, b                                          ; $6b57: $40
	add hl, sp                                       ; $6b58: $39
	xor b                                            ; $6b59: $a8
	ld a, [hl-]                                      ; $6b5a: $3a
	ld d, b                                          ; $6b5b: $50
	inc [hl]                                         ; $6b5c: $34
	call nc, $a063                                   ; $6b5d: $d4 $63 $a0
	cpl                                              ; $6b60: $2f
	ldh a, [$09]                                     ; $6b61: $f0 $09
	ldh a, [rAUD1LEN]                                ; $6b63: $f0 $11
	ldh a, [$aa]                                     ; $6b65: $f0 $aa
	ld b, d                                          ; $6b67: $42
	ldh a, [rOBP0]                                   ; $6b68: $f0 $48
	ldh a, [$2c]                                     ; $6b6a: $f0 $2c
	add hl, bc                                       ; $6b6c: $09
	ld b, b                                          ; $6b6d: $40
	ld c, l                                          ; $6b6e: $4d
	ld c, e                                          ; $6b6f: $4b
	inc [hl]                                         ; $6b70: $34
	db $ec                                           ; $6b71: $ec
	db $f4                                           ; $6b72: $f4
	and b                                            ; $6b73: $a0
	ld l, d                                          ; $6b74: $6a
	ld [hl], d                                       ; $6b75: $72
	ccf                                              ; $6b76: $3f
	ld e, h                                          ; $6b77: $5c
	dec a                                            ; $6b78: $3d
	xor h                                            ; $6b79: $ac
	db $ec                                           ; $6b7a: $ec
	ld a, [$395a]                                    ; $6b7b: $fa $5a $39
	ld [hl], a                                       ; $6b7e: $77
	dec sp                                           ; $6b7f: $3b
	dec a                                            ; $6b80: $3d
	and c                                            ; $6b81: $a1
	cpl                                              ; $6b82: $2f
	ldh a, [rAUD3LEVEL]                              ; $6b83: $f0 $1c
	ld d, e                                          ; $6b85: $53
	ldh a, [$71]                                     ; $6b86: $f0 $71
	inc a                                            ; $6b88: $3c
	dec sp                                           ; $6b89: $3b
	dec a                                            ; $6b8a: $3d
	ld b, l                                          ; $6b8b: $45
	add hl, bc                                       ; $6b8c: $09
	ld b, b                                          ; $6b8d: $40
	ld c, l                                          ; $6b8e: $4d
	ld d, e                                          ; $6b8f: $53
	xor h                                            ; $6b90: $ac
	ldh a, [$f8]                                     ; $6b91: $f0 $f8
	db $f4                                           ; $6b93: $f4
	ld h, $42                                        ; $6b94: $26 $42
	adc b                                            ; $6b96: $88
	pop af                                           ; $6b97: $f1
	ld a, [bc]                                       ; $6b98: $0a
	ld b, l                                          ; $6b99: $45
	and b                                            ; $6b9a: $a0
	cpl                                              ; $6b9b: $2f
	ldh a, [$8a]                                     ; $6b9c: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6b9e: $f0 $52
	jr c, @+$47                                      ; $6ba0: $38 $45

	ld c, h                                          ; $6ba2: $4c
	add hl, bc                                       ; $6ba3: $09
	pop af                                           ; $6ba4: $f1
	ld l, c                                          ; $6ba5: $69
	ldh a, [hDisp1_OBP0]                                     ; $6ba6: $f0 $93
	ldh a, [$6e]                                     ; $6ba8: $f0 $6e
	ldh a, [$c2]                                     ; $6baa: $f0 $c2
	ld a, $3f                                        ; $6bac: $3e $3f
	ld c, [hl]                                       ; $6bae: $4e
	ld h, e                                          ; $6baf: $63
	ld c, h                                          ; $6bb0: $4c

jr_08d_6bb1:
	and b                                            ; $6bb1: $a0
	cpl                                              ; $6bb2: $2f
	jp hl                                            ; $6bb3: $e9


	add hl, sp                                       ; $6bb4: $39
	add hl, bc                                       ; $6bb5: $09
	ldh a, [rHDMA4]                                  ; $6bb6: $f0 $54
	ld a, $4b                                        ; $6bb8: $3e $4b
	xor h                                            ; $6bba: $ac
	adc b                                            ; $6bbb: $88
	pop af                                           ; $6bbc: $f1
	call z, Call_08d_7253                            ; $6bbd: $cc $53 $72
	ld e, [hl]                                       ; $6bc0: $5e
	ccf                                              ; $6bc1: $3f
	ld c, [hl]                                       ; $6bc2: $4e
	db $ec                                           ; $6bc3: $ec
	ld [de], a                                       ; $6bc4: $12
	and b                                            ; $6bc5: $a0
	ldh a, [rOBP0]                                   ; $6bc6: $f0 $48
	ldh a, [$2c]                                     ; $6bc8: $f0 $2c
	ldh a, [rLY]                                     ; $6bca: $f0 $44
	ld b, a                                          ; $6bcc: $47
	ld a, b                                          ; $6bcd: $78
	ld c, [hl]                                       ; $6bce: $4e
	ld c, c                                          ; $6bcf: $49
	xor h                                            ; $6bd0: $ac
	db $ed                                           ; $6bd1: $ed
	inc l                                            ; $6bd2: $2c
	db $f4                                           ; $6bd3: $f4
	sbc l                                            ; $6bd4: $9d
	ldh a, [$a5]                                     ; $6bd5: $f0 $a5
	xor $2a                                          ; $6bd7: $ee $2a
	ld h, d                                          ; $6bd9: $62
	inc de                                           ; $6bda: $13
	ld a, $3d                                        ; $6bdb: $3e $3d
	ld d, l                                          ; $6bdd: $55
	ld a, [hl-]                                      ; $6bde: $3a
	ld c, [hl]                                       ; $6bdf: $4e
	ld h, e                                          ; $6be0: $63
	ld c, h                                          ; $6be1: $4c
	and b                                            ; $6be2: $a0
	cpl                                              ; $6be3: $2f
	ld b, e                                          ; $6be4: $43
	rst JumpTable                                          ; $6be5: $c7
	ld [hl], $17                                     ; $6be6: $36 $17
	ld [hl-], a                                      ; $6be8: $32
	ld b, b                                          ; $6be9: $40
	ld b, c                                          ; $6bea: $41
	ld a, [hl-]                                      ; $6beb: $3a
	ld d, h                                          ; $6bec: $54
	ld c, c                                          ; $6bed: $49
	ld [hl], a                                       ; $6bee: $77
	add hl, sp                                       ; $6bef: $39
	add h                                            ; $6bf0: $84
	inc de                                           ; $6bf1: $13
	jr c, jr_08d_6c2e                                ; $6bf2: $38 $3a

	jr c, jr_08d_6c31                                ; $6bf4: $38 $3b

	ccf                                              ; $6bf6: $3f
	ld c, b                                          ; $6bf7: $48
	and e                                            ; $6bf8: $a3
	ld e, h                                          ; $6bf9: $5c
	ld d, [hl]                                       ; $6bfa: $56
	ld e, c                                          ; $6bfb: $59
	dec sp                                           ; $6bfc: $3b
	scf                                              ; $6bfd: $37
	and d                                            ; $6bfe: $a2
	cpl                                              ; $6bff: $2f
	ld b, e                                          ; $6c00: $43
	ld e, d                                          ; $6c01: $5a
	inc [hl]                                         ; $6c02: $34
	db $eb                                           ; $6c03: $eb
	rst FarCall                                          ; $6c04: $f7
	xor c                                            ; $6c05: $a9
	db $ec                                           ; $6c06: $ec
	ldh [$a0], a                                     ; $6c07: $e0 $a0
	pop af                                           ; $6c09: $f1
	ld [bc], a                                       ; $6c0a: $02
	pop af                                           ; $6c0b: $f1
	db $e3                                           ; $6c0c: $e3
	ldh a, [rP1]                                     ; $6c0d: $f0 $00
	and b                                            ; $6c0f: $a0
	cpl                                              ; $6c10: $2f
	ld b, e                                          ; $6c11: $43
	ld a, [hl-]                                      ; $6c12: $3a
	ld b, c                                          ; $6c13: $41
	ld b, h                                          ; $6c14: $44
	xor c                                            ; $6c15: $a9
	ld l, d                                          ; $6c16: $6a
	ld b, d                                          ; $6c17: $42
	db $ec                                           ; $6c18: $ec
	ld a, [$a04b]                                    ; $6c19: $fa $4b $a0
	db $ed                                           ; $6c1c: $ed
	ldh a, [rSCY]                                    ; $6c1d: $f0 $42
	ldh a, [rTIMA]                                   ; $6c1f: $f0 $05
	ldh a, [$2c]                                     ; $6c21: $f0 $2c
	push af                                          ; $6c23: $f5
	ld hl, $3cf2                                     ; $6c24: $21 $f2 $3c
	ld c, h                                          ; $6c27: $4c
	xor b                                            ; $6c28: $a8
	ldh a, [$98]                                     ; $6c29: $f0 $98
	ld b, d                                          ; $6c2b: $42
	db $f4                                           ; $6c2c: $f4
	ld a, [bc]                                       ; $6c2d: $0a

jr_08d_6c2e:
	ld a, $f1                                        ; $6c2e: $3e $f1
	add [hl]                                         ; $6c30: $86

jr_08d_6c31:
	inc a                                            ; $6c31: $3c
	db $ec                                           ; $6c32: $ec
	dec b                                            ; $6c33: $05
	ld e, l                                          ; $6c34: $5d
	ld e, d                                          ; $6c35: $5a
	xor h                                            ; $6c36: $ac
	db $eb                                           ; $6c37: $eb
	ld [de], a                                       ; $6c38: $12
	ld b, l                                          ; $6c39: $45
	and b                                            ; $6c3a: $a0
	cpl                                              ; $6c3b: $2f
	ld b, e                                          ; $6c3c: $43
	db $ec                                           ; $6c3d: $ec
	rra                                              ; $6c3e: $1f
	xor b                                            ; $6c3f: $a8
	db $ec                                           ; $6c40: $ec
	ldh [$a8], a                                     ; $6c41: $e0 $a8
	ld l, e                                          ; $6c43: $6b
	add d                                            ; $6c44: $82
	dec sp                                           ; $6c45: $3b
	ccf                                              ; $6c46: $3f
	ld c, [hl]                                       ; $6c47: $4e
	ld b, d                                          ; $6c48: $42
	and c                                            ; $6c49: $a1
	db $ed                                           ; $6c4a: $ed
	sub c                                            ; $6c4b: $91
	pop af                                           ; $6c4c: $f1
	ld b, d                                          ; $6c4d: $42
	ld c, e                                          ; $6c4e: $4b
	inc de                                           ; $6c4f: $13
	ld hl, sp-$63                                    ; $6c50: $f8 $9d
	ld e, h                                          ; $6c52: $5c
	add b                                            ; $6c53: $80
	ldh a, [$fe]                                     ; $6c54: $f0 $fe
	ld d, c                                          ; $6c56: $51
	ld b, d                                          ; $6c57: $42
	ld l, h                                          ; $6c58: $6c
	ld b, l                                          ; $6c59: $45
	xor b                                            ; $6c5a: $a8
	ld b, [hl]                                       ; $6c5b: $46
	ld [hl], h                                       ; $6c5c: $74
	inc [hl]                                         ; $6c5d: $34
	db $f4                                           ; $6c5e: $f4
	and d                                            ; $6c5f: $a2
	ld e, [hl]                                       ; $6c60: $5e
	ccf                                              ; $6c61: $3f
	ld e, h                                          ; $6c62: $5c
	dec a                                            ; $6c63: $3d
	ld h, e                                          ; $6c64: $63
	and b                                            ; $6c65: $a0
	cpl                                              ; $6c66: $2f
	ld b, e                                          ; $6c67: $43
	xor $10                                          ; $6c68: $ee $10
	dec [hl]                                         ; $6c6a: $35
	rla                                              ; $6c6b: $17
	ld [hl-], a                                      ; $6c6c: $32
	add h                                            ; $6c6d: $84
	ld b, d                                          ; $6c6e: $42
	ldh a, [rAUDVOL]                                 ; $6c6f: $f0 $24
	ld a, [hl-]                                      ; $6c71: $3a
	ld b, c                                          ; $6c72: $41
	inc a                                            ; $6c73: $3c
	xor h                                            ; $6c74: $ac
	ldh a, [$0c]                                     ; $6c75: $f0 $0c
	jr c, jr_08d_6cda                                ; $6c77: $38 $61

	ld d, [hl]                                       ; $6c79: $56
	jr c, jr_08d_6cc8                                ; $6c7a: $38 $4c

	add l                                            ; $6c7c: $85
	and e                                            ; $6c7d: $a3
	xor $17                                          ; $6c7e: $ee $17
	ldh a, [rAUD2LEN]                                ; $6c80: $f0 $16
	ld b, a                                          ; $6c82: $47
	inc [hl]                                         ; $6c83: $34
	ld d, h                                          ; $6c84: $54
	ld b, d                                          ; $6c85: $42
	sbc l                                            ; $6c86: $9d
	ld d, b                                          ; $6c87: $50
	jr c, jr_08d_6c9d                                ; $6c88: $38 $13

	pop af                                           ; $6c8a: $f1
	xor a                                            ; $6c8b: $af
	ccf                                              ; $6c8c: $3f
	ccf                                              ; $6c8d: $3f
	ld h, h                                          ; $6c8e: $64
	ld e, h                                          ; $6c8f: $5c
	dec a                                            ; $6c90: $3d
	jr c, jr_08d_6cf6                                ; $6c91: $38 $63

	ld c, h                                          ; $6c93: $4c
	and b                                            ; $6c94: $a0
	cpl                                              ; $6c95: $2f
	ld l, e                                          ; $6c96: $6b
	ld b, d                                          ; $6c97: $42
	xor $17                                          ; $6c98: $ee $17
	ld b, a                                          ; $6c9a: $47
	pop af                                           ; $6c9b: $f1
	sbc l                                            ; $6c9c: $9d

jr_08d_6c9d:
	add hl, sp                                       ; $6c9d: $39
	ld b, d                                          ; $6c9e: $42
	and c                                            ; $6c9f: $a1
	pop af                                           ; $6ca0: $f1
	ld l, [hl]                                       ; $6ca1: $6e
	ldh a, [$cf]                                     ; $6ca2: $f0 $cf
	ld b, [hl]                                       ; $6ca4: $46
	ld c, [hl]                                       ; $6ca5: $4e
	ld h, e                                          ; $6ca6: $63
	ld c, h                                          ; $6ca7: $4c
	xor b                                            ; $6ca8: $a8
	ret                                              ; $6ca9: $c9


	pop af                                           ; $6caa: $f1
	sub d                                            ; $6cab: $92
	jr c, jr_08d_6cea                                ; $6cac: $38 $3c

	ld d, b                                          ; $6cae: $50
	xor h                                            ; $6caf: $ac
	ldh a, [$d7]                                     ; $6cb0: $f0 $d7
	ld c, d                                          ; $6cb2: $4a
	pop af                                           ; $6cb3: $f1
	dec c                                            ; $6cb4: $0d
	ldh a, [$79]                                     ; $6cb5: $f0 $79
	ld a, $3f                                        ; $6cb7: $3e $3f
	rst SubAFromDE                                          ; $6cb9: $df
	ld h, e                                          ; $6cba: $63
	and b                                            ; $6cbb: $a0
	ld b, b                                          ; $6cbc: $40
	ld c, l                                          ; $6cbd: $4d
	ld c, e                                          ; $6cbe: $4b
	inc [hl]                                         ; $6cbf: $34
	db $ed                                           ; $6cc0: $ed
	inc c                                            ; $6cc1: $0c
	xor b                                            ; $6cc2: $a8
	ld l, [hl]                                       ; $6cc3: $6e
	ld d, a                                          ; $6cc4: $57
	dec a                                            ; $6cc5: $3d
	jr c, jr_08d_6d1c                                ; $6cc6: $38 $54

jr_08d_6cc8:
	ld c, c                                          ; $6cc8: $49
	ld d, e                                          ; $6cc9: $53
	pop af                                           ; $6cca: $f1
	sub d                                            ; $6ccb: $92
	ld d, l                                          ; $6ccc: $55
	ccf                                              ; $6ccd: $3f
	xor h                                            ; $6cce: $ac
	pop af                                           ; $6ccf: $f1
	sbc $4e                                          ; $6cd0: $de $4e
	ld h, e                                          ; $6cd2: $63
	and b                                            ; $6cd3: $a0
	ld b, b                                          ; $6cd4: $40
	ld c, l                                          ; $6cd5: $4d
	ld c, e                                          ; $6cd6: $4b
	inc [hl]                                         ; $6cd7: $34
	db $ed                                           ; $6cd8: $ed
	inc c                                            ; $6cd9: $0c

jr_08d_6cda:
	and b                                            ; $6cda: $a0
	cpl                                              ; $6cdb: $2f
	db $ec                                           ; $6cdc: $ec
	inc de                                           ; $6cdd: $13
	ldh a, [hDisp0_OBP0]                                     ; $6cde: $f0 $86
	ld c, e                                          ; $6ce0: $4b
	ld [hl], d                                       ; $6ce1: $72
	ccf                                              ; $6ce2: $3f
	sub b                                            ; $6ce3: $90
	ld a, $4f                                        ; $6ce4: $3e $4f
	add hl, sp                                       ; $6ce6: $39
	ld b, l                                          ; $6ce7: $45
	add hl, bc                                       ; $6ce8: $09
	ld b, b                                          ; $6ce9: $40

jr_08d_6cea:
	ld c, l                                          ; $6cea: $4d
	ld b, h                                          ; $6ceb: $44
	ld e, l                                          ; $6cec: $5d
	ld e, e                                          ; $6ced: $5b
	ld d, [hl]                                       ; $6cee: $56
	xor h                                            ; $6cef: $ac
	pop af                                           ; $6cf0: $f1
	xor a                                            ; $6cf1: $af
	ccf                                              ; $6cf2: $3f
	ccf                                              ; $6cf3: $3f
	ld h, h                                          ; $6cf4: $64
	ld d, l                                          ; $6cf5: $55

jr_08d_6cf6:
	inc de                                           ; $6cf6: $13
	ldh a, [c]                                       ; $6cf7: $f2
	adc e                                            ; $6cf8: $8b
	di                                               ; $6cf9: $f3
	ld c, $53                                        ; $6cfa: $0e $53
	db $ec                                           ; $6cfc: $ec
	dec bc                                           ; $6cfd: $0b
	and b                                            ; $6cfe: $a0
	ldh a, [$aa]                                     ; $6cff: $f0 $aa
	adc c                                            ; $6d01: $89
	ld b, d                                          ; $6d02: $42
	dec a                                            ; $6d03: $3d
	ld [hl], c                                       ; $6d04: $71
	ld b, a                                          ; $6d05: $47
	inc de                                           ; $6d06: $13
	pop af                                           ; $6d07: $f1
	sbc l                                            ; $6d08: $9d
	ld h, e                                          ; $6d09: $63
	ld c, l                                          ; $6d0a: $4d
	dec a                                            ; $6d0b: $3d
	ldh a, [$38]                                     ; $6d0c: $f0 $38
	ld d, e                                          ; $6d0e: $53
	inc [hl]                                         ; $6d0f: $34
	ldh a, [hDisp0_OBP0]                                     ; $6d10: $f0 $86
	db $ed                                           ; $6d12: $ed
	ld b, e                                          ; $6d13: $43
	inc de                                           ; $6d14: $13
	ldh a, [$66]                                     ; $6d15: $f0 $66
	ldh a, [$fe]                                     ; $6d17: $f0 $fe
	ld b, a                                          ; $6d19: $47
	ldh a, [$ec]                                     ; $6d1a: $f0 $ec

jr_08d_6d1c:
	ld d, d                                          ; $6d1c: $52
	dec sp                                           ; $6d1d: $3b
	ccf                                              ; $6d1e: $3f
	ld c, [hl]                                       ; $6d1f: $4e
	ld h, e                                          ; $6d20: $63
	and b                                            ; $6d21: $a0
	ld [hl], d                                       ; $6d22: $72
	ld c, [hl]                                       ; $6d23: $4e
	ld b, h                                          ; $6d24: $44
	ld e, l                                          ; $6d25: $5d
	ld e, e                                          ; $6d26: $5b
	ld d, [hl]                                       ; $6d27: $56
	xor h                                            ; $6d28: $ac
	ld l, e                                          ; $6d29: $6b
	ld b, d                                          ; $6d2a: $42
	ldh a, [c]                                       ; $6d2b: $f2
	reti                                             ; $6d2c: $d9


	ld b, a                                          ; $6d2d: $47
	ld c, a                                          ; $6d2e: $4f
	ldh a, [$d9]                                     ; $6d2f: $f0 $d9
	dec a                                            ; $6d31: $3d
	ld a, [hl-]                                      ; $6d32: $3a
	jr c, jr_08d_6d98                                ; $6d33: $38 $63

	and b                                            ; $6d35: $a0
	cpl                                              ; $6d36: $2f
	ld [$0948], a                                    ; $6d37: $ea $48 $09
	ldh a, [$b7]                                     ; $6d3a: $f0 $b7
	ldh a, [$8c]                                     ; $6d3c: $f0 $8c
	ccf                                              ; $6d3e: $3f
	ld l, h                                          ; $6d3f: $6c
	dec a                                            ; $6d40: $3d
	ld d, b                                          ; $6d41: $50
	pop af                                           ; $6d42: $f1
	dec sp                                           ; $6d43: $3b
	ld c, [hl]                                       ; $6d44: $4e
	ld h, e                                          ; $6d45: $63
	ld b, l                                          ; $6d46: $45
	xor b                                            ; $6d47: $a8
	ld e, b                                          ; $6d48: $58
	ld b, [hl]                                       ; $6d49: $46
	inc [hl]                                         ; $6d4a: $34
	ld e, d                                          ; $6d4b: $5a
	add hl, sp                                       ; $6d4c: $39
	sub a                                            ; $6d4d: $97
	and b                                            ; $6d4e: $a0
	db $ed                                           ; $6d4f: $ed
	sub h                                            ; $6d50: $94
	ld b, a                                          ; $6d51: $47
	xor h                                            ; $6d52: $ac
	ldh a, [$b7]                                     ; $6d53: $f0 $b7
	ldh a, [$8c]                                     ; $6d55: $f0 $8c
	ccf                                              ; $6d57: $3f
	ld l, h                                          ; $6d58: $6c
	dec a                                            ; $6d59: $3d
	ld d, b                                          ; $6d5a: $50
	ld e, d                                          ; $6d5b: $5a
	add hl, sp                                       ; $6d5c: $39
	and c                                            ; $6d5d: $a1
	ld b, h                                          ; $6d5e: $44
	dec sp                                           ; $6d5f: $3b
	dec a                                            ; $6d60: $3d
	ld d, b                                          ; $6d61: $50
	inc [hl]                                         ; $6d62: $34
	ldh a, [$b7]                                     ; $6d63: $f0 $b7
	ldh a, [$8c]                                     ; $6d65: $f0 $8c
	ccf                                              ; $6d67: $3f
	ld l, h                                          ; $6d68: $6c
	ld c, l                                          ; $6d69: $4d
	ld a, e                                          ; $6d6a: $7b
	and b                                            ; $6d6b: $a0
	ldh a, [$b7]                                     ; $6d6c: $f0 $b7
	di                                               ; $6d6e: $f3
	ld a, h                                          ; $6d6f: $7c
	pop af                                           ; $6d70: $f1
	jp c, $2cf0                                      ; $6d71: $da $f0 $2c

	ld h, d                                          ; $6d74: $62
	ldh a, [c]                                       ; $6d75: $f2
	xor b                                            ; $6d76: $a8
	di                                               ; $6d77: $f3
	ld a, [de]                                       ; $6d78: $1a
	ld a, $3f                                        ; $6d79: $3e $3f
	inc de                                           ; $6d7b: $13
	ld l, h                                          ; $6d7c: $6c
	dec a                                            ; $6d7d: $3d
	jr c, jr_08d_6de3                                ; $6d7e: $38 $63

	ld c, h                                          ; $6d80: $4c
	and b                                            ; $6d81: $a0
	cpl                                              ; $6d82: $2f
	ld l, e                                          ; $6d83: $6b
	ld h, d                                          ; $6d84: $62
	di                                               ; $6d85: $f3
	ld a, [de]                                       ; $6d86: $1a
	ld c, [hl]                                       ; $6d87: $4e
	ld a, a                                          ; $6d88: $7f
	and c                                            ; $6d89: $a1
	ld d, d                                          ; $6d8a: $52
	ld b, h                                          ; $6d8b: $44
	xor h                                            ; $6d8c: $ac
	ldh a, [$b6]                                     ; $6d8d: $f0 $b6
	ld b, a                                          ; $6d8f: $47
	ldh a, [$a4]                                     ; $6d90: $f0 $a4
	ld e, [hl]                                       ; $6d92: $5e
	ccf                                              ; $6d93: $3f
	ld a, [hl-]                                      ; $6d94: $3a
	jr c, jr_08d_6dfa                                ; $6d95: $38 $63

	xor b                                            ; $6d97: $a8

jr_08d_6d98:
	ld l, d                                          ; $6d98: $6a
	ld c, e                                          ; $6d99: $4b
	pop af                                           ; $6d9a: $f1
	ld l, a                                          ; $6d9b: $6f
	ld b, a                                          ; $6d9c: $47
	ld l, [hl]                                       ; $6d9d: $6e
	ld c, [hl]                                       ; $6d9e: $4e
	ld d, h                                          ; $6d9f: $54
	ld c, c                                          ; $6da0: $49
	db $eb                                           ; $6da1: $eb
	ld l, l                                          ; $6da2: $6d
	and b                                            ; $6da3: $a0
	cpl                                              ; $6da4: $2f
	sub h                                            ; $6da5: $94
	ld a, b                                          ; $6da6: $78
	ld c, [hl]                                       ; $6da7: $4e
	ld h, e                                          ; $6da8: $63
	ld e, l                                          ; $6da9: $5d
	ld a, [hl-]                                      ; $6daa: $3a
	jr c, jr_08d_6df2                                ; $6dab: $38 $45

	add hl, bc                                       ; $6dad: $09
	ldh a, [rHDMA5]                                  ; $6dae: $f0 $55
	ldh a, [rBCPS]                                   ; $6db0: $f0 $68
	ld c, h                                          ; $6db2: $4c
	xor b                                            ; $6db3: $a8
	ld l, a                                          ; $6db4: $6f
	ld h, d                                          ; $6db5: $62
	ldh a, [$98]                                     ; $6db6: $f0 $98
	ld b, h                                          ; $6db8: $44
	ld c, c                                          ; $6db9: $49
	ld [hl], a                                       ; $6dba: $77
	dec sp                                           ; $6dbb: $3b
	ccf                                              ; $6dbc: $3f
	ld c, [hl]                                       ; $6dbd: $4e
	ld b, d                                          ; $6dbe: $42
	and c                                            ; $6dbf: $a1
	cpl                                              ; $6dc0: $2f
	adc e                                            ; $6dc1: $8b
	ld e, h                                          ; $6dc2: $5c
	ld b, a                                          ; $6dc3: $47
	ld a, $3d                                        ; $6dc4: $3e $3d
	ld d, b                                          ; $6dc6: $50
	and c                                            ; $6dc7: $a1
	call c, $8ba8                                    ; $6dc8: $dc $a8 $8b
	ld e, h                                          ; $6dcb: $5c
	ld b, a                                          ; $6dcc: $47
	ld d, c                                          ; $6dcd: $51
	ld c, [hl]                                       ; $6dce: $4e
	ld h, e                                          ; $6dcf: $63
	and b                                            ; $6dd0: $a0
	ldh a, [$0a]                                     ; $6dd1: $f0 $0a
	ld d, l                                          ; $6dd3: $55
	ldh a, [$e7]                                     ; $6dd4: $f0 $e7
	ld d, a                                          ; $6dd6: $57
	ld a, [hl-]                                      ; $6dd7: $3a
	ld e, b                                          ; $6dd8: $58
	jr c, jr_08d_6e20                                ; $6dd9: $38 $45

	and b                                            ; $6ddb: $a0
	jr c, @-$62                                      ; $6ddc: $38 $9c

	ld c, l                                          ; $6dde: $4d
	ld c, e                                          ; $6ddf: $4b
	xor h                                            ; $6de0: $ac
	ld d, h                                          ; $6de1: $54
	ld b, d                                          ; $6de2: $42

jr_08d_6de3:
	pop af                                           ; $6de3: $f1
	ld h, l                                          ; $6de4: $65
	ldh a, [$cf]                                     ; $6de5: $f0 $cf
	ld c, a                                          ; $6de7: $4f
	ld l, a                                          ; $6de8: $6f
	ld b, d                                          ; $6de9: $42
	ld c, a                                          ; $6dea: $4f
	ld b, d                                          ; $6deb: $42
	ld c, b                                          ; $6dec: $48
	and b                                            ; $6ded: $a0
	cpl                                              ; $6dee: $2f
	rst JumpTable                                          ; $6def: $c7
	ld a, [hl-]                                      ; $6df0: $3a
	ld c, [hl]                                       ; $6df1: $4e

jr_08d_6df2:
	ld c, c                                          ; $6df2: $49
	jr c, jr_08d_6e2d                                ; $6df3: $38 $38

	ld c, h                                          ; $6df5: $4c
	add hl, bc                                       ; $6df6: $09
	ld b, b                                          ; $6df7: $40
	add hl, sp                                       ; $6df8: $39
	ld a, [hl-]                                      ; $6df9: $3a

jr_08d_6dfa:
	ld c, [hl]                                       ; $6dfa: $4e
	ld b, d                                          ; $6dfb: $42
	ld b, l                                          ; $6dfc: $45
	xor b                                            ; $6dfd: $a8
	ld b, [hl]                                       ; $6dfe: $46
	ld [hl], h                                       ; $6dff: $74
	inc [hl]                                         ; $6e00: $34
	sub b                                            ; $6e01: $90
	ld a, $6c                                        ; $6e02: $3e $6c
	ld b, h                                          ; $6e04: $44
	ld h, e                                          ; $6e05: $63
	and b                                            ; $6e06: $a0
	cpl                                              ; $6e07: $2f
	ld l, e                                          ; $6e08: $6b
	inc [hl]                                         ; $6e09: $34
	pop af                                           ; $6e0a: $f1
	or d                                             ; $6e0b: $b2
	pop af                                           ; $6e0c: $f1
	ld c, b                                          ; $6e0d: $48
	add d                                            ; $6e0e: $82
	dec sp                                           ; $6e0f: $3b
	ccf                                              ; $6e10: $3f
	ld c, [hl]                                       ; $6e11: $4e
	ld b, d                                          ; $6e12: $42
	and c                                            ; $6e13: $a1
	ldh a, [rSCY]                                    ; $6e14: $f0 $42
	ld b, c                                          ; $6e16: $41
	xor b                                            ; $6e17: $a8
	ld b, [hl]                                       ; $6e18: $46
	ld a, [hl-]                                      ; $6e19: $3a
	dec a                                            ; $6e1a: $3d
	ld c, c                                          ; $6e1b: $49
	ld c, e                                          ; $6e1c: $4b
	inc de                                           ; $6e1d: $13
	ldh a, [rAUDVOL]                                 ; $6e1e: $f0 $24

jr_08d_6e20:
	ld a, $3d                                        ; $6e20: $3e $3d
	ld d, l                                          ; $6e22: $55
	ld c, a                                          ; $6e23: $4f
	ld a, [hl-]                                      ; $6e24: $3a
	jr c, jr_08d_6e8a                                ; $6e25: $38 $63

	and b                                            ; $6e27: $a0
	cpl                                              ; $6e28: $2f
	ld c, e                                          ; $6e29: $4b
	ld [hl], h                                       ; $6e2a: $74
	ld c, b                                          ; $6e2b: $48
	inc [hl]                                         ; $6e2c: $34

jr_08d_6e2d:
	cp [hl]                                          ; $6e2d: $be
	add hl, bc                                       ; $6e2e: $09
	db $ec                                           ; $6e2f: $ec
	db $f4                                           ; $6e30: $f4
	and b                                            ; $6e31: $a0
	ld b, [hl]                                       ; $6e32: $46
	ld c, l                                          ; $6e33: $4d
	ld c, e                                          ; $6e34: $4b
	ld l, e                                          ; $6e35: $6b
	dec sp                                           ; $6e36: $3b
	ccf                                              ; $6e37: $3f
	jr c, jr_08d_6e73                                ; $6e38: $38 $39

	pop af                                           ; $6e3a: $f1
	ld h, l                                          ; $6e3b: $65
	ldh a, [$e7]                                     ; $6e3c: $f0 $e7
	inc a                                            ; $6e3e: $3c
	inc de                                           ; $6e3f: $13
	ldh a, [rTAC]                                    ; $6e40: $f0 $07
	inc a                                            ; $6e42: $3c
	ld c, [hl]                                       ; $6e43: $4e
	and c                                            ; $6e44: $a1
	cpl                                              ; $6e45: $2f
	ld b, [hl]                                       ; $6e46: $46
	ld c, l                                          ; $6e47: $4d
	ld c, e                                          ; $6e48: $4b
	inc [hl]                                         ; $6e49: $34
	ldh a, [c]                                       ; $6e4a: $f2
	sub a                                            ; $6e4b: $97
	ldh a, [$e7]                                     ; $6e4c: $f0 $e7
	ld c, d                                          ; $6e4e: $4a
	ld a, $66                                        ; $6e4f: $3e $66
	add hl, sp                                       ; $6e51: $39
	and c                                            ; $6e52: $a1
	ld b, l                                          ; $6e53: $45
	ld d, l                                          ; $6e54: $55
	ldh a, [$2d]                                     ; $6e55: $f0 $2d
	dec sp                                           ; $6e57: $3b
	ccf                                              ; $6e58: $3f
	ld c, [hl]                                       ; $6e59: $4e
	db $ec                                           ; $6e5a: $ec
	ret c                                            ; $6e5b: $d8

	xor b                                            ; $6e5c: $a8
	ldh a, [c]                                       ; $6e5d: $f2
	ld [hl], e                                       ; $6e5e: $73
	pop af                                           ; $6e5f: $f1
	dec sp                                           ; $6e60: $3b
	ld b, l                                          ; $6e61: $45
	and b                                            ; $6e62: $a0
	cpl                                              ; $6e63: $2f
	ld b, [hl]                                       ; $6e64: $46
	ld c, l                                          ; $6e65: $4d
	ld c, e                                          ; $6e66: $4b
	inc [hl]                                         ; $6e67: $34
	ldh a, [rAUD4GO]                                 ; $6e68: $f0 $23
	ldh a, [c]                                       ; $6e6a: $f2
	rrca                                             ; $6e6b: $0f
	ldh a, [$e7]                                     ; $6e6c: $f0 $e7
	ld c, d                                          ; $6e6e: $4a
	ld a, $66                                        ; $6e6f: $3e $66
	add hl, sp                                       ; $6e71: $39
	and c                                            ; $6e72: $a1

jr_08d_6e73:
	ld b, [hl]                                       ; $6e73: $46
	ld c, l                                          ; $6e74: $4d
	ld d, e                                          ; $6e75: $53
	inc [hl]                                         ; $6e76: $34
	ldh a, [rAUD4GO]                                 ; $6e77: $f0 $23
	ldh a, [c]                                       ; $6e79: $f2
	rrca                                             ; $6e7a: $0f
	ldh a, [$e7]                                     ; $6e7b: $f0 $e7
	xor c                                            ; $6e7d: $a9
	ldh a, [c]                                       ; $6e7e: $f2
	ld bc, $7963                                     ; $6e7f: $01 $63 $79
	ld c, [hl]                                       ; $6e82: $4e
	ld h, e                                          ; $6e83: $63
	ld c, h                                          ; $6e84: $4c
	and b                                            ; $6e85: $a0
	cpl                                              ; $6e86: $2f
	add sp, $28                                      ; $6e87: $e8 $28
	add hl, bc                                       ; $6e89: $09

jr_08d_6e8a:
	ld l, a                                          ; $6e8a: $6f
	ld c, e                                          ; $6e8b: $4b
	xor h                                            ; $6e8c: $ac
	ld b, [hl]                                       ; $6e8d: $46
	ld a, [hl-]                                      ; $6e8e: $3a
	dec a                                            ; $6e8f: $3d
	ld b, a                                          ; $6e90: $47
	ldh a, [$0c]                                     ; $6e91: $f0 $0c
	jr c, jr_08d_6ed4                                ; $6e93: $38 $3f

	ld c, [hl]                                       ; $6e95: $4e
	ld b, d                                          ; $6e96: $42
	ld b, l                                          ; $6e97: $45
	and b                                            ; $6e98: $a0
	cpl                                              ; $6e99: $2f
	jp hl                                            ; $6e9a: $e9


	ld a, [hl-]                                      ; $6e9b: $3a
	and c                                            ; $6e9c: $a1
	ld b, b                                          ; $6e9d: $40
	add hl, sp                                       ; $6e9e: $39
	xor b                                            ; $6e9f: $a8
	db $ec                                           ; $6ea0: $ec
	dec b                                            ; $6ea1: $05
	ld b, d                                          ; $6ea2: $42
	ld c, h                                          ; $6ea3: $4c
	and b                                            ; $6ea4: $a0
	ld e, b                                          ; $6ea5: $58
	ld [hl], h                                       ; $6ea6: $74
	inc [hl]                                         ; $6ea7: $34
	sub [hl]                                         ; $6ea8: $96
	ld c, [hl]                                       ; $6ea9: $4e
	ld h, e                                          ; $6eaa: $63
	ld b, l                                          ; $6eab: $45
	and b                                            ; $6eac: $a0
	pop af                                           ; $6ead: $f1
	jp nz, $f142                                     ; $6eae: $c2 $42 $f1

	xor d                                            ; $6eb1: $aa
	pop af                                           ; $6eb2: $f1
	and e                                            ; $6eb3: $a3
	ld c, e                                          ; $6eb4: $4b
	xor h                                            ; $6eb5: $ac
	db $ed                                           ; $6eb6: $ed
	ld e, a                                          ; $6eb7: $5f
	ld h, d                                          ; $6eb8: $62
	sub b                                            ; $6eb9: $90
	ld a, $f0                                        ; $6eba: $3e $f0
	cp [hl]                                          ; $6ebc: $be
	ldh a, [rVBK]                                    ; $6ebd: $f0 $4f
	ld h, d                                          ; $6ebf: $62
	inc de                                           ; $6ec0: $13
	ldh a, [rHDMA1]                                  ; $6ec1: $f0 $51
	dec a                                            ; $6ec3: $3d
	ld a, [hl-]                                      ; $6ec4: $3a
	ld d, l                                          ; $6ec5: $55
	ccf                                              ; $6ec6: $3f
	xor $2d                                          ; $6ec7: $ee $2d
	ld e, l                                          ; $6ec9: $5d
	ld a, [hl-]                                      ; $6eca: $3a
	jr c, jr_08d_6f30                                ; $6ecb: $38 $63

	and b                                            ; $6ecd: $a0
	cpl                                              ; $6ece: $2f
	ld d, h                                          ; $6ecf: $54
	ld b, d                                          ; $6ed0: $42
	ldh a, [$3f]                                     ; $6ed1: $f0 $3f
	inc [hl]                                         ; $6ed3: $34

jr_08d_6ed4:
	db $eb                                           ; $6ed4: $eb
	ld d, h                                          ; $6ed5: $54
	ld c, h                                          ; $6ed6: $4c
	add hl, bc                                       ; $6ed7: $09
	call c, $d1a8                                    ; $6ed8: $dc $a8 $d1
	xor h                                            ; $6edb: $ac
	jr c, jr_08d_6f16                                ; $6edc: $38 $38

	db $ec                                           ; $6ede: $ec
	ret c                                            ; $6edf: $d8

	and b                                            ; $6ee0: $a0
	call c, Call_08d_6fa8                            ; $6ee1: $dc $a8 $6f
	db $ed                                           ; $6ee4: $ed
	dec b                                            ; $6ee5: $05
	inc de                                           ; $6ee6: $13
	ldh a, [c]                                       ; $6ee7: $f2
	ld [$f24e], sp                                   ; $6ee8: $08 $4e $f2
	adc e                                            ; $6eeb: $8b
	di                                               ; $6eec: $f3
	ld c, $53                                        ; $6eed: $0e $53
	ld b, [hl]                                       ; $6eef: $46
	ld c, [hl]                                       ; $6ef0: $4e
	ld h, e                                          ; $6ef1: $63
	and b                                            ; $6ef2: $a0
	call c, Call_08d_63a8                            ; $6ef3: $dc $a8 $63
	ld d, a                                          ; $6ef6: $57
	ld c, c                                          ; $6ef7: $49
	jr c, jr_08d_6f32                                ; $6ef8: $38 $38

	ld h, e                                          ; $6efa: $63
	ld c, h                                          ; $6efb: $4c
	and b                                            ; $6efc: $a0
	cpl                                              ; $6efd: $2f
	jp hl                                            ; $6efe: $e9


	ld c, a                                          ; $6eff: $4f
	ld c, b                                          ; $6f00: $48
	add hl, bc                                       ; $6f01: $09
	ld d, h                                          ; $6f02: $54
	ld c, l                                          ; $6f03: $4d
	ld b, h                                          ; $6f04: $44
	inc a                                            ; $6f05: $3c
	ld d, b                                          ; $6f06: $50
	xor h                                            ; $6f07: $ac
	di                                               ; $6f08: $f3
	dec de                                           ; $6f09: $1b
	pop af                                           ; $6f0a: $f1
	ld [hl], d                                       ; $6f0b: $72
	ld b, d                                          ; $6f0c: $42
	ldh a, [$ab]                                     ; $6f0d: $f0 $ab
	ld c, e                                          ; $6f0f: $4b
	ldh a, [$64]                                     ; $6f10: $f0 $64
	ld c, h                                          ; $6f12: $4c
	and b                                            ; $6f13: $a0
	ld b, b                                          ; $6f14: $40
	add hl, sp                                       ; $6f15: $39

jr_08d_6f16:
	xor b                                            ; $6f16: $a8
	db $ec                                           ; $6f17: $ec
	cp c                                             ; $6f18: $b9
	ld h, e                                          ; $6f19: $63
	ld c, h                                          ; $6f1a: $4c
	and b                                            ; $6f1b: $a0
	ld b, [hl]                                       ; $6f1c: $46
	dec sp                                           ; $6f1d: $3b
	inc [hl]                                         ; $6f1e: $34
	ld b, b                                          ; $6f1f: $40
	add hl, sp                                       ; $6f20: $39
	and b                                            ; $6f21: $a0
	cpl                                              ; $6f22: $2f
	ld d, h                                          ; $6f23: $54
	ld b, d                                          ; $6f24: $42
	ldh a, [$3f]                                     ; $6f25: $f0 $3f
	inc [hl]                                         ; $6f27: $34
	db $ec                                           ; $6f28: $ec
	ldh [$6c], a                                     ; $6f29: $e0 $6c
	dec a                                            ; $6f2b: $3d
	jr c, jr_08d_6f37                                ; $6f2c: $38 $09

	ld d, d                                          ; $6f2e: $52
	inc [hl]                                         ; $6f2f: $34

jr_08d_6f30:
	ld h, e                                          ; $6f30: $63
	ld d, a                                          ; $6f31: $57

jr_08d_6f32:
	ld c, c                                          ; $6f32: $49
	ldh a, [rPCM12]                                  ; $6f33: $f0 $76
	ccf                                              ; $6f35: $3f
	ld c, [hl]                                       ; $6f36: $4e

jr_08d_6f37:
	inc a                                            ; $6f37: $3c
	ld c, a                                          ; $6f38: $4f
	inc de                                           ; $6f39: $13
	ld [$a0df], a                                    ; $6f3a: $ea $df $a0
	ld l, a                                          ; $6f3d: $6f
	ld b, d                                          ; $6f3e: $42
	ld b, l                                          ; $6f3f: $45
	add hl, sp                                       ; $6f40: $39
	ld a, [hl-]                                      ; $6f41: $3a
	ldh a, [$2d]                                     ; $6f42: $f0 $2d
	pop af                                           ; $6f44: $f1
	inc bc                                           ; $6f45: $03
	ld a, [hl-]                                      ; $6f46: $3a
	ldh a, [$d2]                                     ; $6f47: $f0 $d2
	ld d, e                                          ; $6f49: $53
	inc de                                           ; $6f4a: $13
	ld d, h                                          ; $6f4b: $54
	ld b, d                                          ; $6f4c: $42
	ldh a, [$f6]                                     ; $6f4d: $f0 $f6
	ld b, a                                          ; $6f4f: $47
	ld b, b                                          ; $6f50: $40
	add hl, sp                                       ; $6f51: $39
	ld b, [hl]                                       ; $6f52: $46
	ld c, [hl]                                       ; $6f53: $4e
	ld c, c                                          ; $6f54: $49
	ld c, e                                          ; $6f55: $4b
	inc de                                           ; $6f56: $13

jr_08d_6f57:
	ld [hl], a                                       ; $6f57: $77
	ld e, [hl]                                       ; $6f58: $5e
	ld a, [hl-]                                      ; $6f59: $3a
	jr c, jr_08d_6fbf                                ; $6f5a: $38 $63

	and b                                            ; $6f5c: $a0
	ldh a, [$2d]                                     ; $6f5d: $f0 $2d
	pop af                                           ; $6f5f: $f1
	ld a, [bc]                                       ; $6f60: $0a
	ld d, e                                          ; $6f61: $53
	ld b, a                                          ; $6f62: $47
	ld e, e                                          ; $6f63: $5b
	ld l, h                                          ; $6f64: $6c
	sub h                                            ; $6f65: $94
	ccf                                              ; $6f66: $3f
	inc de                                           ; $6f67: $13
	ld a, [hl-]                                      ; $6f68: $3a
	jr c, jr_08d_6f57                                ; $6f69: $38 $ec

	ret c                                            ; $6f6b: $d8

	ld b, d                                          ; $6f6c: $42
	and b                                            ; $6f6d: $a0
	ldh a, [$3f]                                     ; $6f6e: $f0 $3f
	ld h, d                                          ; $6f70: $62
	ldh a, [$bd]                                     ; $6f71: $f0 $bd
	ld d, l                                          ; $6f73: $55
	ld b, d                                          ; $6f74: $42
	ld c, a                                          ; $6f75: $4f
	jr c, @+$3a                                      ; $6f76: $38 $38

	ld h, e                                          ; $6f78: $63
	ld c, h                                          ; $6f79: $4c
	and b                                            ; $6f7a: $a0
	cpl                                              ; $6f7b: $2f
	jr c, jr_08d_6fb6                                ; $6f7c: $38 $38

	ld c, h                                          ; $6f7e: $4c
	dec [hl]                                         ; $6f7f: $35
	ld [hl], d                                       ; $6f80: $72
	ccf                                              ; $6f81: $3f
	ld l, h                                          ; $6f82: $6c
	dec a                                            ; $6f83: $3d
	jr c, jr_08d_6fcb                                ; $6f84: $38 $45

	add hl, bc                                       ; $6f86: $09
	ld c, d                                          ; $6f87: $4a
	ld c, a                                          ; $6f88: $4f
	inc [hl]                                         ; $6f89: $34
	pop af                                           ; $6f8a: $f1
	jr nc, jr_08d_6ffe                               ; $6f8b: $30 $71

	ccf                                              ; $6f8d: $3f
	ld h, h                                          ; $6f8e: $64
	ld d, l                                          ; $6f8f: $55
	ld h, e                                          ; $6f90: $63
	xor b                                            ; $6f91: $a8
	ldh a, [$3f]                                     ; $6f92: $f0 $3f
	ld c, e                                          ; $6f94: $4b
	add h                                            ; $6f95: $84
	ld b, a                                          ; $6f96: $47
	ldh a, [$bd]                                     ; $6f97: $f0 $bd
	inc a                                            ; $6f99: $3c
	ld a, c                                          ; $6f9a: $79
	ld c, [hl]                                       ; $6f9b: $4e
	ld b, d                                          ; $6f9c: $42
	ld d, e                                          ; $6f9d: $53
	inc de                                           ; $6f9e: $13
	db $ed                                           ; $6f9f: $ed

Call_08d_6fa0:
	ld [hl], d                                       ; $6fa0: $72
	ld c, h                                          ; $6fa1: $4c
	and b                                            ; $6fa2: $a0
	cpl                                              ; $6fa3: $2f
	pop af                                           ; $6fa4: $f1
	jr nc, jr_08d_7018                               ; $6fa5: $30 $71

	ccf                                              ; $6fa7: $3f

Call_08d_6fa8:
	ld h, h                                          ; $6fa8: $64
	jr c, jr_08d_6fe8                                ; $6fa9: $38 $3d

	ldh a, [$08]                                     ; $6fab: $f0 $08
	add hl, sp                                       ; $6fad: $39
	ld d, e                                          ; $6fae: $53
	jr c, jr_08d_6fe9                                ; $6faf: $38 $38

	ld b, l                                          ; $6fb1: $45
	add hl, bc                                       ; $6fb2: $09
	cpl                                              ; $6fb3: $2f
	db $ed                                           ; $6fb4: $ed
	and [hl]                                         ; $6fb5: $a6

jr_08d_6fb6:
	ld d, c                                          ; $6fb6: $51

jr_08d_6fb7:
	ld c, [hl]                                       ; $6fb7: $4e
	ld b, h                                          ; $6fb8: $44
	ld e, l                                          ; $6fb9: $5d
	inc a                                            ; $6fba: $3c
	ld c, c                                          ; $6fbb: $49
	ld [hl], a                                       ; $6fbc: $77
	dec sp                                           ; $6fbd: $3b
	ccf                                              ; $6fbe: $3f

jr_08d_6fbf:
	dec a                                            ; $6fbf: $3d
	ld b, l                                          ; $6fc0: $45
	add hl, bc                                       ; $6fc1: $09
	db $ec                                           ; $6fc2: $ec
	ld a, [de]                                       ; $6fc3: $1a
	inc [hl]                                         ; $6fc4: $34
	jr c, jr_08d_6fff                                ; $6fc5: $38 $38

	inc a                                            ; $6fc7: $3c
	ld c, c                                          ; $6fc8: $49
	inc de                                           ; $6fc9: $13
	ld [hl], a                                       ; $6fca: $77

jr_08d_6fcb:
	dec sp                                           ; $6fcb: $3b
	dec a                                            ; $6fcc: $3d
	ld b, h                                          ; $6fcd: $44
	ld e, l                                          ; $6fce: $5d
	ld b, l                                          ; $6fcf: $45
	and b                                            ; $6fd0: $a0
	pop de                                           ; $6fd1: $d1
	pop af                                           ; $6fd2: $f1
	add c                                            ; $6fd3: $81
	ld h, c                                          ; $6fd4: $61
	ldh a, [$ac]                                     ; $6fd5: $f0 $ac
	ld d, l                                          ; $6fd7: $55
	ldh a, [$3f]                                     ; $6fd8: $f0 $3f
	ld c, h                                          ; $6fda: $4c
	and b                                            ; $6fdb: $a0
	cpl                                              ; $6fdc: $2f
	ld h, e                                          ; $6fdd: $63
	ld d, a                                          ; $6fde: $57
	ld c, c                                          ; $6fdf: $49
	ldh a, [$3f]                                     ; $6fe0: $f0 $3f
	ld b, d                                          ; $6fe2: $42
	pop af                                           ; $6fe3: $f1
	ld a, e                                          ; $6fe4: $7b
	ldh a, [hDisp1_WY]                                     ; $6fe5: $f0 $95
	ldh a, [c]                                       ; $6fe7: $f2

jr_08d_6fe8:
	cp l                                             ; $6fe8: $bd

jr_08d_6fe9:
	jr c, jr_08d_7037                                ; $6fe9: $38 $4c

	add hl, bc                                       ; $6feb: $09
	ld d, d                                          ; $6fec: $52
	inc [hl]                                         ; $6fed: $34
	pop af                                           ; $6fee: $f1
	xor d                                            ; $6fef: $aa
	pop af                                           ; $6ff0: $f1
	and e                                            ; $6ff1: $a3
	ld c, c                                          ; $6ff2: $49
	add d                                            ; $6ff3: $82
	add hl, sp                                       ; $6ff4: $39
	ld b, d                                          ; $6ff5: $42
	ld c, e                                          ; $6ff6: $4b
	inc de                                           ; $6ff7: $13
	ld b, b                                          ; $6ff8: $40
	add hl, sp                                       ; $6ff9: $39
	jr c, jr_08d_7035                                ; $6ffa: $38 $39

	ld c, a                                          ; $6ffc: $4f
	ld b, d                                          ; $6ffd: $42

jr_08d_6ffe:
	ld b, l                                          ; $6ffe: $45

jr_08d_6fff:
	and b                                            ; $6fff: $a0
	cpl                                              ; $7000: $2f
	ld d, h                                          ; $7001: $54
	ld c, l                                          ; $7002: $4d
	ld b, d                                          ; $7003: $42
	ld e, d                                          ; $7004: $5a
	ld d, h                                          ; $7005: $54
	ld d, e                                          ; $7006: $53
	pop af                                           ; $7007: $f1
	add c                                            ; $7008: $81
	ld h, c                                          ; $7009: $61
	ldh a, [$ac]                                     ; $700a: $f0 $ac
	ld d, l                                          ; $700c: $55
	ld b, c                                          ; $700d: $41
	ld b, h                                          ; $700e: $44
	and c                                            ; $700f: $a1
	db $f4                                           ; $7010: $f4
	ld h, h                                          ; $7011: $64
	ld d, a                                          ; $7012: $57
	ld a, [hl-]                                      ; $7013: $3a
	ld e, b                                          ; $7014: $58
	jr c, jr_08d_6fb7                                ; $7015: $38 $a0

	cpl                                              ; $7017: $2f

jr_08d_7018:
	db $ed                                           ; $7018: $ed
	call z, $3df0                                    ; $7019: $cc $f0 $3d
	ld e, c                                          ; $701c: $59
	ld l, c                                          ; $701d: $69
	ld c, a                                          ; $701e: $4f
	adc e                                            ; $701f: $8b
	ld e, h                                          ; $7020: $5c
	ld a, [hl-]                                      ; $7021: $3a
	ld b, c                                          ; $7022: $41
	ld b, h                                          ; $7023: $44
	add hl, bc                                       ; $7024: $09
	ldh a, [$34]                                     ; $7025: $f0 $34
	ld b, a                                          ; $7027: $47
	inc [hl]                                         ; $7028: $34
	ld b, b                                          ; $7029: $40
	ld b, c                                          ; $702a: $41
	ld a, [hl-]                                      ; $702b: $3a
	sbc d                                            ; $702c: $9a
	ld c, e                                          ; $702d: $4b
	inc de                                           ; $702e: $13
	db $ed                                           ; $702f: $ed
	ld a, a                                          ; $7030: $7f
	ld a, [hl-]                                      ; $7031: $3a
	jr c, jr_08d_7097                                ; $7032: $38 $63

	and b                                            ; $7034: $a0

jr_08d_7035:
	ld l, a                                          ; $7035: $6f
	ld b, d                                          ; $7036: $42

jr_08d_7037:
	db $f4                                           ; $7037: $f4
	xor d                                            ; $7038: $aa
	ldh a, [$61]                                     ; $7039: $f0 $61
	ld c, a                                          ; $703b: $4f
	inc [hl]                                         ; $703c: $34
	ld d, h                                          ; $703d: $54
	ld b, c                                          ; $703e: $41
	ld a, [hl-]                                      ; $703f: $3a
	inc de                                           ; $7040: $13
	ldh a, [$78]                                     ; $7041: $f0 $78
	ld e, e                                          ; $7043: $5b
	ld b, a                                          ; $7044: $47
	db $ec                                           ; $7045: $ec
	inc c                                            ; $7046: $0c
	ld a, $50                                        ; $7047: $3e $50
	and b                                            ; $7049: $a0
	cpl                                              ; $704a: $2f
	sub h                                            ; $704b: $94
	ld a, b                                          ; $704c: $78
	dec a                                            ; $704d: $3d
	ld d, b                                          ; $704e: $50
	inc [hl]                                         ; $704f: $34
	db $eb                                           ; $7050: $eb
	ld [hl], c                                       ; $7051: $71
	ld b, h                                          ; $7052: $44
	ld e, a                                          ; $7053: $5f
	add hl, sp                                       ; $7054: $39
	ld c, h                                          ; $7055: $4c
	add hl, bc                                       ; $7056: $09
	call c, $eba8                                    ; $7057: $dc $a8 $eb
	ld d, h                                          ; $705a: $54
	db $ed                                           ; $705b: $ed
	ld e, a                                          ; $705c: $5f
	ld b, a                                          ; $705d: $47
	inc de                                           ; $705e: $13
	ld a, [hl-]                                      ; $705f: $3a
	ld d, a                                          ; $7060: $57
	call c, $91a0                                    ; $7061: $dc $a0 $91
	ldh a, [$59]                                     ; $7064: $f0 $59
	ld b, l                                          ; $7066: $45
	xor b                                            ; $7067: $a8
	ld l, a                                          ; $7068: $6f
	ld b, a                                          ; $7069: $47
	ldh a, [rSCY]                                    ; $706a: $f0 $42
	ld e, b                                          ; $706c: $58
	ld h, e                                          ; $706d: $63
	ld a, $55                                        ; $706e: $3e $55
	inc de                                           ; $7070: $13
	ld a, [hl-]                                      ; $7071: $3a
	ld d, a                                          ; $7072: $57
	call c, Call_08d_52a0                            ; $7073: $dc $a0 $52
	inc [hl]                                         ; $7076: $34
	sub c                                            ; $7077: $91
	ldh a, [$59]                                     ; $7078: $f0 $59
	ld c, h                                          ; $707a: $4c
	and b                                            ; $707b: $a0
	cpl                                              ; $707c: $2f
	ld l, e                                          ; $707d: $6b
	ld b, b                                          ; $707e: $40
	ld c, l                                          ; $707f: $4d
	inc [hl]                                         ; $7080: $34
	ld b, b                                          ; $7081: $40
	ld b, c                                          ; $7082: $41
	ld a, [hl-]                                      ; $7083: $3a
	ld c, a                                          ; $7084: $4f
	ld b, d                                          ; $7085: $42
	ldh a, [$a5]                                     ; $7086: $f0 $a5
	ld c, [hl]                                       ; $7088: $4e
	ld b, d                                          ; $7089: $42
	and c                                            ; $708a: $a1
	db $ec                                           ; $708b: $ec
	db $f4                                           ; $708c: $f4
	xor b                                            ; $708d: $a8
	ld l, e                                          ; $708e: $6b
	inc a                                            ; $708f: $3c
	ldh a, [rSCX]                                    ; $7090: $f0 $43
	db $f4                                           ; $7092: $f4
	add c                                            ; $7093: $81
	ld c, d                                          ; $7094: $4a
	ld c, a                                          ; $7095: $4f
	ld b, [hl]                                       ; $7096: $46

jr_08d_7097:
	ld c, [hl]                                       ; $7097: $4e
	ld b, d                                          ; $7098: $42
	and c                                            ; $7099: $a1
	ld b, b                                          ; $709a: $40
	ld b, c                                          ; $709b: $41
	ld a, [hl-]                                      ; $709c: $3a
	ld c, a                                          ; $709d: $4f
	ld b, d                                          ; $709e: $42
	ld c, c                                          ; $709f: $49
	ld c, e                                          ; $70a0: $4b
	xor h                                            ; $70a1: $ac
	ldh a, [rHDMA5]                                  ; $70a2: $f0 $55
	ldh a, [rBCPS]                                   ; $70a4: $f0 $68
	ld c, h                                          ; $70a6: $4c
	and b                                            ; $70a7: $a0
	ld b, b                                          ; $70a8: $40
	inc [hl]                                         ; $70a9: $34
	ld b, b                                          ; $70aa: $40
	ld b, c                                          ; $70ab: $41
	ld a, [hl-]                                      ; $70ac: $3a
	ld c, a                                          ; $70ad: $4f
	ld b, d                                          ; $70ae: $42
	ld c, b                                          ; $70af: $48
	and c                                            ; $70b0: $a1
	cpl                                              ; $70b1: $2f
	ld c, e                                          ; $70b2: $4b
	ld c, e                                          ; $70b3: $4b
	ld c, e                                          ; $70b4: $4b
	inc [hl]                                         ; $70b5: $34
	jr c, jr_08d_70f0                                ; $70b6: $38 $38

	ld b, c                                          ; $70b8: $41
	db $ec                                           ; $70b9: $ec
	ret c                                            ; $70ba: $d8

	add hl, bc                                       ; $70bb: $09
	pop af                                           ; $70bc: $f1
	or d                                             ; $70bd: $b2
	pop af                                           ; $70be: $f1
	ld c, b                                          ; $70bf: $48
	ld b, a                                          ; $70c0: $47
	ld e, b                                          ; $70c1: $58
	ld c, l                                          ; $70c2: $4d
	ccf                                              ; $70c3: $3f
	ld c, [hl]                                       ; $70c4: $4e
	inc de                                           ; $70c5: $13
	ld l, h                                          ; $70c6: $6c
	dec a                                            ; $70c7: $3d
	jr c, jr_08d_710e                                ; $70c8: $38 $44

	ld e, l                                          ; $70ca: $5d
	ld e, d                                          ; $70cb: $5a
	xor h                                            ; $70cc: $ac
	ld d, d                                          ; $70cd: $52
	inc [hl]                                         ; $70ce: $34
	jr c, jr_08d_7109                                ; $70cf: $38 $38

	ld h, e                                          ; $70d1: $63
	and b                                            ; $70d2: $a0
	ld l, e                                          ; $70d3: $6b
	xor c                                            ; $70d4: $a9
	pop af                                           ; $70d5: $f1
	or d                                             ; $70d6: $b2
	pop af                                           ; $70d7: $f1
	ld c, b                                          ; $70d8: $48
	ld b, a                                          ; $70d9: $47
	ld a, $3f                                        ; $70da: $3e $3f
	ld c, [hl]                                       ; $70dc: $4e
	ld b, d                                          ; $70dd: $42
	and c                                            ; $70de: $a1
	pop af                                           ; $70df: $f1
	or d                                             ; $70e0: $b2
	pop af                                           ; $70e1: $f1
	ld c, b                                          ; $70e2: $48
	ld b, a                                          ; $70e3: $47
	ld a, $3f                                        ; $70e4: $3e $3f
	ld c, [hl]                                       ; $70e6: $4e
	ld b, c                                          ; $70e7: $41
	ld e, e                                          ; $70e8: $5b
	ld d, [hl]                                       ; $70e9: $56
	inc de                                           ; $70ea: $13
	ld a, [hl-]                                      ; $70eb: $3a
	jr c, jr_08d_7138                                ; $70ec: $38 $4a

	ld a, $66                                        ; $70ee: $3e $66

jr_08d_70f0:
	add hl, sp                                       ; $70f0: $39
	ld c, h                                          ; $70f1: $4c
	and c                                            ; $70f2: $a1
	ld d, h                                          ; $70f3: $54
	ld b, d                                          ; $70f4: $42
	add h                                            ; $70f5: $84
	ld b, d                                          ; $70f6: $42
	ldh a, [$3f]                                     ; $70f7: $f0 $3f
	ld b, d                                          ; $70f9: $42
	pop af                                           ; $70fa: $f1
	and e                                            ; $70fb: $a3
	pop af                                           ; $70fc: $f1
	ld [hl], d                                       ; $70fd: $72
	ld b, a                                          ; $70fe: $47
	xor h                                            ; $70ff: $ac
	ld l, a                                          ; $7100: $6f
	ld c, c                                          ; $7101: $49
	db $f4                                           ; $7102: $f4
	ld [hl-], a                                      ; $7103: $32
	ldh a, [rOCPS]                                   ; $7104: $f0 $6a
	ld d, c                                          ; $7106: $51
	ld c, [hl]                                       ; $7107: $4e
	ld c, a                                          ; $7108: $4f

jr_08d_7109:
	ld b, d                                          ; $7109: $42
	ld h, d                                          ; $710a: $62
	inc de                                           ; $710b: $13
	ldh a, [$78]                                     ; $710c: $f0 $78

jr_08d_710e:
	ld e, e                                          ; $710e: $5b
	ld c, [hl]                                       ; $710f: $4e
	ld h, e                                          ; $7110: $63
	and b                                            ; $7111: $a0
	cpl                                              ; $7112: $2f
	push af                                          ; $7113: $f5
	ld e, e                                          ; $7114: $5b
	ldh a, [$38]                                     ; $7115: $f0 $38
	ld c, c                                          ; $7117: $49
	ld c, a                                          ; $7118: $4f
	inc [hl]                                         ; $7119: $34
	pop af                                           ; $711a: $f1
	xor d                                            ; $711b: $aa
	pop af                                           ; $711c: $f1
	and e                                            ; $711d: $a3
	ld b, h                                          ; $711e: $44
	ld c, a                                          ; $711f: $4f
	ld b, c                                          ; $7120: $41
	ld c, h                                          ; $7121: $4c
	add hl, bc                                       ; $7122: $09
	ld d, d                                          ; $7123: $52
	inc [hl]                                         ; $7124: $34
	ld b, b                                          ; $7125: $40
	ld b, c                                          ; $7126: $41
	ld a, [hl-]                                      ; $7127: $3a
	ldh a, [$28]                                     ; $7128: $f0 $28
	ld c, h                                          ; $712a: $4c
	and b                                            ; $712b: $a0
	ld b, b                                          ; $712c: $40
	add hl, sp                                       ; $712d: $39
	xor b                                            ; $712e: $a8
	ld b, b                                          ; $712f: $40
	ld b, d                                          ; $7130: $42
	ldh a, [rOCPS]                                   ; $7131: $f0 $6a
	ld d, a                                          ; $7133: $57
	ld b, l                                          ; $7134: $45
	xor b                                            ; $7135: $a8
	ld b, l                                          ; $7136: $45
	ld d, l                                          ; $7137: $55

jr_08d_7138:
	db $eb                                           ; $7138: $eb
	ld [hl], h                                       ; $7139: $74
	db $ec                                           ; $713a: $ec
	ret c                                            ; $713b: $d8

	and b                                            ; $713c: $a0
	ld b, l                                          ; $713d: $45
	ld d, l                                          ; $713e: $55
	db $eb                                           ; $713f: $eb
	ld [hl], h                                       ; $7140: $74
	db $ec                                           ; $7141: $ec
	ret c                                            ; $7142: $d8

	and b                                            ; $7143: $a0
	cpl                                              ; $7144: $2f
	ld d, h                                          ; $7145: $54
	ld b, d                                          ; $7146: $42
	ldh a, [$7a]                                     ; $7147: $f0 $7a
	ldh a, [rSVBK]                                   ; $7149: $f0 $70
	ld c, e                                          ; $714b: $4b
	ldh a, [$5d]                                     ; $714c: $f0 $5d
	add h                                            ; $714e: $84
	ld c, d                                          ; $714f: $4a
	pop af                                           ; $7150: $f1
	adc d                                            ; $7151: $8a
	ldh a, [$fb]                                     ; $7152: $f0 $fb
	ld b, h                                          ; $7154: $44
	ld c, h                                          ; $7155: $4c
	add hl, bc                                       ; $7156: $09
	ld l, e                                          ; $7157: $6b
	xor c                                            ; $7158: $a9
	ld l, e                                          ; $7159: $6b
	ld d, e                                          ; $715a: $53
	add d                                            ; $715b: $82
	jr c, jr_08d_719b                                ; $715c: $38 $3d

	jr c, jr_08d_71a2                                ; $715e: $38 $42

	and c                                            ; $7160: $a1
	ld l, a                                          ; $7161: $6f
	ld d, e                                          ; $7162: $53
	ldh a, [$5d]                                     ; $7163: $f0 $5d
	add h                                            ; $7165: $84
	ld b, h                                          ; $7166: $44
	ld c, c                                          ; $7167: $49
	ld c, d                                          ; $7168: $4a
	ld c, a                                          ; $7169: $4f
	inc de                                           ; $716a: $13
	add d                                            ; $716b: $82
	jr c, jr_08d_71ab                                ; $716c: $38 $3d

	jr c, jr_08d_71b2                                ; $716e: $38 $42

	and c                                            ; $7170: $a1
	ldh a, [rHDMA5]                                  ; $7171: $f0 $55
	ldh a, [rBCPS]                                   ; $7173: $f0 $68
	ld c, h                                          ; $7175: $4c
	xor b                                            ; $7176: $a8
	ldh a, [$d0]                                     ; $7177: $f0 $d0
	push af                                          ; $7179: $f5
	add hl, hl                                       ; $717a: $29
	db $f4                                           ; $717b: $f4
	ld a, e                                          ; $717c: $7b
	ld b, h                                          ; $717d: $44
	ld h, e                                          ; $717e: $63
	and b                                            ; $717f: $a0
	cpl                                              ; $7180: $2f
	ld l, e                                          ; $7181: $6b
	ld b, h                                          ; $7182: $44
	ld e, a                                          ; $7183: $5f
	add hl, sp                                       ; $7184: $39
	ld [hl], $45                                     ; $7185: $36 $45
	ld d, l                                          ; $7187: $55
	ldh a, [rTAC]                                    ; $7188: $f0 $07
	inc a                                            ; $718a: $3c
	ld b, c                                          ; $718b: $41
	ld a, [hl-]                                      ; $718c: $3a
	jr c, jr_08d_71d4                                ; $718d: $38 $45

	add hl, bc                                       ; $718f: $09
	ld d, d                                          ; $7190: $52
	inc [hl]                                         ; $7191: $34
	ld b, [hl]                                       ; $7192: $46
	ld a, [hl-]                                      ; $7193: $3a
	dec a                                            ; $7194: $3d

jr_08d_7195:
	ld d, e                                          ; $7195: $53
	inc de                                           ; $7196: $13
	ldh a, [rTAC]                                    ; $7197: $f0 $07
	inc a                                            ; $7199: $3c
	ld d, b                                          ; $719a: $50

jr_08d_719b:
	ld a, [hl-]                                      ; $719b: $3a
	jr c, @+$44                                      ; $719c: $38 $42

	ld c, e                                          ; $719e: $4b
	xor h                                            ; $719f: $ac
	ld a, $3c                                        ; $71a0: $3e $3c

jr_08d_71a2:
	dec a                                            ; $71a2: $3d
	db $ec                                           ; $71a3: $ec
	dec bc                                           ; $71a4: $0b
	and b                                            ; $71a5: $a0
	ld d, d                                          ; $71a6: $52
	inc [hl]                                         ; $71a7: $34
	ld b, [hl]                                       ; $71a8: $46
	ld a, [hl-]                                      ; $71a9: $3a
	dec a                                            ; $71aa: $3d

jr_08d_71ab:
	ld b, a                                          ; $71ab: $47
	inc de                                           ; $71ac: $13
	ldh a, [rTAC]                                    ; $71ad: $f0 $07
	inc a                                            ; $71af: $3c
	ld d, b                                          ; $71b0: $50
	ld a, [hl-]                                      ; $71b1: $3a

jr_08d_71b2:
	jr c, jr_08d_71f6                                ; $71b2: $38 $42

	ld c, e                                          ; $71b4: $4b

jr_08d_71b5:
	sub c                                            ; $71b5: $91
	ldh a, [$59]                                     ; $71b6: $f0 $59
	ld c, h                                          ; $71b8: $4c
	and b                                            ; $71b9: $a0
	db $ec                                           ; $71ba: $ec
	rst AddAOntoHL                                          ; $71bb: $ef
	ld [hl], d                                       ; $71bc: $72
	ldh [$a0], a                                     ; $71bd: $e0 $a0
	ld d, h                                          ; $71bf: $54
	ld c, l                                          ; $71c0: $4d
	db $ec                                           ; $71c1: $ec
	rst AddAOntoHL                                          ; $71c2: $ef
	xor h                                            ; $71c3: $ac
	ld [hl], d                                       ; $71c4: $72
	dec a                                            ; $71c5: $3d
	ld h, e                                          ; $71c6: $63
	ld b, l                                          ; $71c7: $45
	and b                                            ; $71c8: $a0
	ldh a, [$cd]                                     ; $71c9: $f0 $cd
	ld e, e                                          ; $71cb: $5b
	ld b, d                                          ; $71cc: $42
	ld c, e                                          ; $71cd: $4b
	inc de                                           ; $71ce: $13
	ld [hl], d                                       ; $71cf: $72
	ld a, [hl-]                                      ; $71d0: $3a
	ld d, l                                          ; $71d1: $55
	ccf                                              ; $71d2: $3f
	ld c, a                                          ; $71d3: $4f

jr_08d_71d4:
	jr c, jr_08d_720e                                ; $71d4: $38 $38

	ld h, e                                          ; $71d6: $63
	and b                                            ; $71d7: $a0
	ld l, a                                          ; $71d8: $6f
	ld c, e                                          ; $71d9: $4b
	xor h                                            ; $71da: $ac
	ldh a, [$75]                                     ; $71db: $f0 $75
	ldh a, [$8c]                                     ; $71dd: $f0 $8c
	ldh a, [$2c]                                     ; $71df: $f0 $2c
	db $eb                                           ; $71e1: $eb
	ld l, l                                          ; $71e2: $6d
	xor h                                            ; $71e3: $ac
	ldh a, [$6f]                                     ; $71e4: $f0 $6f
	ldh a, [$0b]                                     ; $71e6: $f0 $0b
	ld b, a                                          ; $71e8: $47
	adc b                                            ; $71e9: $88
	ld c, d                                          ; $71ea: $4a
	ld c, a                                          ; $71eb: $4f
	inc de                                           ; $71ec: $13
	ldh a, [$fa]                                     ; $71ed: $f0 $fa
	ld b, c                                          ; $71ef: $41
	ld c, d                                          ; $71f0: $4a
	ld a, [hl-]                                      ; $71f1: $3a
	ld e, b                                          ; $71f2: $58
	jr c, jr_08d_7195                                ; $71f3: $38 $a0

	cpl                                              ; $71f5: $2f

jr_08d_71f6:
	halt                                             ; $71f6: $76
	ld c, a                                          ; $71f7: $4f
	inc [hl]                                         ; $71f8: $34
	ldh a, [$0b]                                     ; $71f9: $f0 $0b
	pop af                                           ; $71fb: $f1
	ld [hl], c                                       ; $71fc: $71
	add hl, sp                                       ; $71fd: $39
	ld b, l                                          ; $71fe: $45
	add hl, bc                                       ; $71ff: $09
	ld b, b                                          ; $7200: $40
	add hl, sp                                       ; $7201: $39
	xor b                                            ; $7202: $a8
	ld b, b                                          ; $7203: $40
	ld c, l                                          ; $7204: $4d
	ld e, e                                          ; $7205: $5b
	ld d, [hl]                                       ; $7206: $56
	inc [hl]                                         ; $7207: $34
	ld d, h                                          ; $7208: $54
	ld b, d                                          ; $7209: $42
	adc b                                            ; $720a: $88
	ld h, d                                          ; $720b: $62
	inc de                                           ; $720c: $13
	db $ed                                           ; $720d: $ed

jr_08d_720e:
	ld bc, $6661                                     ; $720e: $01 $61 $66
	add hl, sp                                       ; $7211: $39
	ld b, h                                          ; $7212: $44

Jump_08d_7213:
	jr c, jr_08d_71b5                                ; $7213: $38 $a0

	ld b, b                                          ; $7215: $40
	add hl, sp                                       ; $7216: $39
	xor b                                            ; $7217: $a8
	ld c, d                                          ; $7218: $4a
	ld c, a                                          ; $7219: $4f
	inc [hl]                                         ; $721a: $34
	xor $08                                          ; $721b: $ee $08
	ld c, d                                          ; $721d: $4a
	db $ed                                           ; $721e: $ed
	ld [hl], e                                       ; $721f: $73
	ld b, l                                          ; $7220: $45
	and b                                            ; $7221: $a0
	ld b, b                                          ; $7222: $40
	add hl, sp                                       ; $7223: $39
	xor b                                            ; $7224: $a8
	ld c, d                                          ; $7225: $4a
	ld c, a                                          ; $7226: $4f
	inc [hl]                                         ; $7227: $34
	call nc, $a063                                   ; $7228: $d4 $63 $a0
	cpl                                              ; $722b: $2f
	ldh a, [$75]                                     ; $722c: $f0 $75
	ldh a, [$8c]                                     ; $722e: $f0 $8c
	ldh a, [$2c]                                     ; $7230: $f0 $2c
	ld a, [hl-]                                      ; $7232: $3a
	ld b, c                                          ; $7233: $41
	ccf                                              ; $7234: $3f
	inc [hl]                                         ; $7235: $34
	ldh a, [$d7]                                     ; $7236: $f0 $d7
	ld c, d                                          ; $7238: $4a
	jr c, jr_08d_7273                                ; $7239: $38 $38

	ld b, l                                          ; $723b: $45
	add hl, bc                                       ; $723c: $09
	db $ec                                           ; $723d: $ec
	pop af                                           ; $723e: $f1
	ld b, a                                          ; $723f: $47
	ld a, b                                          ; $7240: $78
	ccf                                              ; $7241: $3f
	xor h                                            ; $7242: $ac

jr_08d_7243:
	pop af                                           ; $7243: $f1
	ld l, a                                          ; $7244: $6f
	ld b, a                                          ; $7245: $47
	ld l, e                                          ; $7246: $6b
	ld h, d                                          ; $7247: $62
	ld d, c                                          ; $7248: $51
	ld c, [hl]                                       ; $7249: $4e
	ld c, c                                          ; $724a: $49
	add d                                            ; $724b: $82
	add hl, sp                                       ; $724c: $39
	ld b, d                                          ; $724d: $42
	and c                                            ; $724e: $a1
	ldh a, [$75]                                     ; $724f: $f0 $75
	ldh a, [$8c]                                     ; $7251: $f0 $8c

Call_08d_7253:
	ldh a, [$2c]                                     ; $7253: $f0 $2c
	ld d, e                                          ; $7255: $53
	xor h                                            ; $7256: $ac
	db $ed                                           ; $7257: $ed
	ld [hl], d                                       ; $7258: $72
	add a                                            ; $7259: $87
	sbc d                                            ; $725a: $9a
	ld a, [hl-]                                      ; $725b: $3a
	ld b, d                                          ; $725c: $42
	ld b, l                                          ; $725d: $45
	and b                                            ; $725e: $a0
	pop af                                           ; $725f: $f1
	ld l, a                                          ; $7260: $6f
	ld b, d                                          ; $7261: $42
	sbc d                                            ; $7262: $9a
	ld b, d                                          ; $7263: $42
	ldh a, [$38]                                     ; $7264: $f0 $38
	ld d, e                                          ; $7266: $53
	xor h                                            ; $7267: $ac
	ldh a, [$d7]                                     ; $7268: $f0 $d7
	ldh a, [$d3]                                     ; $726a: $f0 $d3
	ld a, $45                                        ; $726c: $3e $45
	and b                                            ; $726e: $a0
	cpl                                              ; $726f: $2f
	ld b, b                                          ; $7270: $40
	add hl, sp                                       ; $7271: $39
	ld e, b                                          ; $7272: $58

jr_08d_7273:
	ld a, c                                          ; $7273: $79
	ccf                                              ; $7274: $3f
	ld c, a                                          ; $7275: $4f
	ld d, b                                          ; $7276: $50
	add hl, sp                                       ; $7277: $39
	ld b, l                                          ; $7278: $45
	add hl, bc                                       ; $7279: $09
	ld b, b                                          ; $727a: $40
	ld c, l                                          ; $727b: $4d
	ld e, e                                          ; $727c: $5b
	ld d, [hl]                                       ; $727d: $56
	xor h                                            ; $727e: $ac
	db $ec                                           ; $727f: $ec
	db $eb                                           ; $7280: $eb
	inc a                                            ; $7281: $3c
	inc a                                            ; $7282: $3c
	ld c, [hl]                                       ; $7283: $4e
	inc a                                            ; $7284: $3c
	ld d, b                                          ; $7285: $50
	xor h                                            ; $7286: $ac
	db $ed                                           ; $7287: $ed
	sub c                                            ; $7288: $91
	ld a, $3a                                        ; $7289: $3e $3a
	jr c, jr_08d_72d7                                ; $728b: $38 $4a

	ld c, h                                          ; $728d: $4c
	and b                                            ; $728e: $a0
	ld b, b                                          ; $728f: $40
	ld c, l                                          ; $7290: $4d
	ld e, e                                          ; $7291: $5b
	ld d, [hl]                                       ; $7292: $56
	xor h                                            ; $7293: $ac
	db $ed                                           ; $7294: $ed
	sub c                                            ; $7295: $91
	ld a, $3a                                        ; $7296: $3e $3a
	jr c, @+$4c                                      ; $7298: $38 $4a

	ld c, h                                          ; $729a: $4c
	and b                                            ; $729b: $a0
	ld b, b                                          ; $729c: $40
	add hl, sp                                       ; $729d: $39
	ld a, $3a                                        ; $729e: $3e $3a
	ld e, b                                          ; $72a0: $58
	jr c, jr_08d_7243                                ; $72a1: $38 $a0

	ld d, h                                          ; $72a3: $54
	ld b, d                                          ; $72a4: $42
	db $ec                                           ; $72a5: $ec
	pop af                                           ; $72a6: $f1
	ld c, d                                          ; $72a7: $4a
	ld c, e                                          ; $72a8: $4b
	xor h                                            ; $72a9: $ac
	db $ed                                           ; $72aa: $ed
	or $53                                           ; $72ab: $f6 $53
	pop af                                           ; $72ad: $f1
	cp [hl]                                          ; $72ae: $be
	ld d, a                                          ; $72af: $57
	ld a, [hl-]                                      ; $72b0: $3a
	jr c, jr_08d_7316                                ; $72b1: $38 $63

	and b                                            ; $72b3: $a0
	cpl                                              ; $72b4: $2f
	ld e, d                                          ; $72b5: $5a
	ld b, c                                          ; $72b6: $41
	ld a, [hl-]                                      ; $72b7: $3a
	db $ed                                           ; $72b8: $ed
	or $53                                           ; $72b9: $f6 $53
	pop af                                           ; $72bb: $f1
	cp [hl]                                          ; $72bc: $be
	ld d, a                                          ; $72bd: $57
	ld a, [hl-]                                      ; $72be: $3a
	jr c, jr_08d_7303                                ; $72bf: $38 $42

	and c                                            ; $72c1: $a1
	ld b, [hl]                                       ; $72c2: $46
	ld a, [hl-]                                      ; $72c3: $3a
	dec a                                            ; $72c4: $3d
	ld b, a                                          ; $72c5: $47
	ld c, e                                          ; $72c6: $4b
	xor h                                            ; $72c7: $ac
	ld [$63de], a                                    ; $72c8: $ea $de $63
	and b                                            ; $72cb: $a0
	cpl                                              ; $72cc: $2f
	ld c, a                                          ; $72cd: $4f
	dec sp                                           ; $72ce: $3b
	ld c, c                                          ; $72cf: $49
	inc [hl]                                         ; $72d0: $34
	ld b, l                                          ; $72d1: $45
	ld d, l                                          ; $72d2: $55
	pop af                                           ; $72d3: $f1
	adc l                                            ; $72d4: $8d
	ld e, b                                          ; $72d5: $58
	ld a, [hl-]                                      ; $72d6: $3a

jr_08d_72d7:
	ld e, h                                          ; $72d7: $5c
	ld d, [hl]                                       ; $72d8: $56
	add hl, bc                                       ; $72d9: $09
	ld d, h                                          ; $72da: $54
	ld b, d                                          ; $72db: $42
	ld l, a                                          ; $72dc: $6f
	ld d, e                                          ; $72dd: $53
	xor h                                            ; $72de: $ac
	ld [hl], d                                       ; $72df: $72
	pop af                                           ; $72e0: $f1
	add c                                            ; $72e1: $81
	ld c, c                                          ; $72e2: $49
	ld a, $3d                                        ; $72e3: $3e $3d
	ld c, c                                          ; $72e5: $49
	ld c, d                                          ; $72e6: $4a
	ld c, a                                          ; $72e7: $4f
	add d                                            ; $72e8: $82
	add hl, sp                                       ; $72e9: $39
	ld b, d                                          ; $72ea: $42
	and c                                            ; $72eb: $a1
	cpl                                              ; $72ec: $2f
	ldh a, [$34]                                     ; $72ed: $f0 $34
	ld b, d                                          ; $72ef: $42
	db $ec                                           ; $72f0: $ec
	pop af                                           ; $72f1: $f1
	ld b, h                                          ; $72f2: $44
	ld c, c                                          ; $72f3: $49
	ld b, [hl]                                       ; $72f4: $46
	ld c, [hl]                                       ; $72f5: $4e
	inc a                                            ; $72f6: $3c
	ld a, [hl-]                                      ; $72f7: $3a
	and c                                            ; $72f8: $a1
	pop af                                           ; $72f9: $f1
	sub d                                            ; $72fa: $92
	ldh a, [rTAC]                                    ; $72fb: $f0 $07
	db $ec                                           ; $72fd: $ec
	dec bc                                           ; $72fe: $0b
	xor b                                            ; $72ff: $a8
	call nc, $a063                                   ; $7300: $d4 $63 $a0

jr_08d_7303:
	ld d, h                                          ; $7303: $54
	ld b, c                                          ; $7304: $41
	ld a, [hl-]                                      ; $7305: $3a
	ldh a, [$28]                                     ; $7306: $f0 $28
	ld b, a                                          ; $7308: $47
	xor h                                            ; $7309: $ac
	sub [hl]                                         ; $730a: $96
	ld c, [hl]                                       ; $730b: $4e
	ld b, d                                          ; $730c: $42
	ld c, h                                          ; $730d: $4c
	and b                                            ; $730e: $a0
	ld d, d                                          ; $730f: $52
	dec a                                            ; $7310: $3d
	ld d, h                                          ; $7311: $54
	ld d, h                                          ; $7312: $54
	ld b, a                                          ; $7313: $47
	xor h                                            ; $7314: $ac
	sub [hl]                                         ; $7315: $96

jr_08d_7316:
	ld c, [hl]                                       ; $7316: $4e
	ld b, d                                          ; $7317: $42
	ld c, h                                          ; $7318: $4c
	and b                                            ; $7319: $a0
	cpl                                              ; $731a: $2f
	ld b, e                                          ; $731b: $43
	ld e, b                                          ; $731c: $58
	ld b, [hl]                                       ; $731d: $46
	inc [hl]                                         ; $731e: $34
	db $eb                                           ; $731f: $eb
	ld d, d                                          ; $7320: $52
	and b                                            ; $7321: $a0
	cpl                                              ; $7322: $2f
	add sp, $29                                      ; $7323: $e8 $29
	add hl, bc                                       ; $7325: $09
	cpl                                              ; $7326: $2f
	add sp, $2a                                      ; $7327: $e8 $2a
	add hl, bc                                       ; $7329: $09
	db $eb                                           ; $732a: $eb
	ld e, b                                          ; $732b: $58
	xor h                                            ; $732c: $ac
	db $eb                                           ; $732d: $eb
	ld d, l                                          ; $732e: $55
	ld h, e                                          ; $732f: $63
	ld c, h                                          ; $7330: $4c
	and b                                            ; $7331: $a0
	cpl                                              ; $7332: $2f
	ld b, b                                          ; $7333: $40
	inc [hl]                                         ; $7334: $34
	ld b, b                                          ; $7335: $40
	ld c, l                                          ; $7336: $4d
	ld e, e                                          ; $7337: $5b
	ld d, [hl]                                       ; $7338: $56
	inc [hl]                                         ; $7339: $34
	db $ec                                           ; $733a: $ec
	rrca                                             ; $733b: $0f
	ld c, b                                          ; $733c: $48
	add hl, bc                                       ; $733d: $09
	ld b, b                                          ; $733e: $40
	ld c, l                                          ; $733f: $4d
	ld d, e                                          ; $7340: $53
	inc [hl]                                         ; $7341: $34
	db $f4                                           ; $7342: $f4
	push bc                                          ; $7343: $c5
	ldh a, [$79]                                     ; $7344: $f0 $79
	ld c, h                                          ; $7346: $4c
	and b                                            ; $7347: $a0
	call c, Call_08d_54a8                            ; $7348: $dc $a8 $54
	ld d, h                                          ; $734b: $54
	ld b, a                                          ; $734c: $47
	jr c, jr_08d_738e                                ; $734d: $38 $3f

	ld c, a                                          ; $734f: $4f
	xor h                                            ; $7350: $ac
	ldh a, [rBGP]                                    ; $7351: $f0 $47
	ldh a, [$2a]                                     ; $7353: $f0 $2a
	ld b, d                                          ; $7355: $42
	ldh a, [rAUD1LOW]                                ; $7356: $f0 $13
	ldh a, [$af]                                     ; $7358: $f0 $af
	ld c, h                                          ; $735a: $4c
	and b                                            ; $735b: $a0
	call c, $f0a8                                    ; $735c: $dc $a8 $f0
	ld b, a                                          ; $735f: $47
	ldh a, [$2a]                                     ; $7360: $f0 $2a
	ld b, d                                          ; $7362: $42
	ldh a, [rAUD1LOW]                                ; $7363: $f0 $13
	ldh a, [$af]                                     ; $7365: $f0 $af
	ld c, h                                          ; $7367: $4c
	and b                                            ; $7368: $a0
	cpl                                              ; $7369: $2f
	ldh a, [$5f]                                     ; $736a: $f0 $5f
	ldh a, [$9b]                                     ; $736c: $f0 $9b
	ld c, e                                          ; $736e: $4b
	inc [hl]                                         ; $736f: $34
	pop hl                                           ; $7370: $e1
	ld c, a                                          ; $7371: $4f
	pop af                                           ; $7372: $f1
	sub d                                            ; $7373: $92
	jr c, jr_08d_73b7                                ; $7374: $38 $41

	ld b, h                                          ; $7376: $44
	ld b, l                                          ; $7377: $45
	add hl, bc                                       ; $7378: $09
	ld b, b                                          ; $7379: $40
	ld c, l                                          ; $737a: $4d
	ld d, e                                          ; $737b: $53
	xor h                                            ; $737c: $ac
	ld l, e                                          ; $737d: $6b
	ld b, d                                          ; $737e: $42
	db $ed                                           ; $737f: $ed
	ld a, a                                          ; $7380: $7f
	ld d, e                                          ; $7381: $53
	ld b, [hl]                                       ; $7382: $46
	ld c, [hl]                                       ; $7383: $4e
	ld b, d                                          ; $7384: $42
	and c                                            ; $7385: $a1
	ld b, b                                          ; $7386: $40
	ld b, c                                          ; $7387: $41
	ld a, [hl-]                                      ; $7388: $3a
	ld b, d                                          ; $7389: $42
	xor h                                            ; $738a: $ac
	db $ed                                           ; $738b: $ed
	ld e, [hl]                                       ; $738c: $5e
	db $ed                                           ; $738d: $ed

jr_08d_738e:
	ld a, a                                          ; $738e: $7f
	ld a, [hl-]                                      ; $738f: $3a
	jr c, jr_08d_73f5                                ; $7390: $38 $63

	and b                                            ; $7392: $a0
	ld b, b                                          ; $7393: $40
	ld c, l                                          ; $7394: $4d
	ld d, e                                          ; $7395: $53
	xor h                                            ; $7396: $ac
	db $eb                                           ; $7397: $eb
	rst FarCall                                          ; $7398: $f7
	and c                                            ; $7399: $a1
	cpl                                              ; $739a: $2f
	db $ec                                           ; $739b: $ec
	ldh [rWX], a                                     ; $739c: $e0 $4b
	inc [hl]                                         ; $739e: $34
	ldh a, [$64]                                     ; $739f: $f0 $64
	jr c, jr_08d_73dd                                ; $73a1: $38 $3a

	ld b, d                                          ; $73a3: $42
	and c                                            ; $73a4: $a1
	call c, $f0a8                                    ; $73a5: $dc $a8 $f0
	ld h, h                                          ; $73a8: $64
	jr c, jr_08d_73f0                                ; $73a9: $38 $45

	and b                                            ; $73ab: $a0
	ldh a, [$64]                                     ; $73ac: $f0 $64
	jr c, jr_08d_73f5                                ; $73ae: $38 $45

	and b                                            ; $73b0: $a0
	ld e, d                                          ; $73b1: $5a
	ld b, c                                          ; $73b2: $41
	ld a, [hl-]                                      ; $73b3: $3a
	ldh a, [$6d]                                     ; $73b4: $f0 $6d
	ld e, c                                          ; $73b6: $59

jr_08d_73b7:
	ldh a, [$27]                                     ; $73b7: $f0 $27
	ld d, e                                          ; $73b9: $53
	inc de                                           ; $73ba: $13
	ldh a, [rAUD4ENV]                                ; $73bb: $f0 $21
	ldh a, [rAUD4GO]                                 ; $73bd: $f0 $23
	jr c, jr_08d_740a                                ; $73bf: $38 $49

	ld [hl], a                                       ; $73c1: $77
	dec sp                                           ; $73c2: $3b
	ccf                                              ; $73c3: $3f
	ld c, [hl]                                       ; $73c4: $4e
	ld b, d                                          ; $73c5: $42
	and c                                            ; $73c6: $a1
	cpl                                              ; $73c7: $2f
	jp hl                                            ; $73c8: $e9


	ld b, c                                          ; $73c9: $41
	add hl, bc                                       ; $73ca: $09
	ld d, h                                          ; $73cb: $54
	ld c, l                                          ; $73cc: $4d
	ld a, [hl-]                                      ; $73cd: $3a
	ld d, b                                          ; $73ce: $50
	xor h                                            ; $73cf: $ac
	add h                                            ; $73d0: $84
	ldh a, [$2a]                                     ; $73d1: $f0 $2a
	ld b, d                                          ; $73d3: $42
	db $ed                                           ; $73d4: $ed
	sbc b                                            ; $73d5: $98
	pop af                                           ; $73d6: $f1
	inc bc                                           ; $73d7: $03
	pop af                                           ; $73d8: $f1
	add hl, hl                                       ; $73d9: $29
	ei                                               ; $73da: $fb
	cpl                                              ; $73db: $2f
	ld h, d                                          ; $73dc: $62

jr_08d_73dd:
	xor h                                            ; $73dd: $ac
	ldh a, [c]                                       ; $73de: $f2
	adc [hl]                                         ; $73df: $8e
	dec a                                            ; $73e0: $3d
	ld d, c                                          ; $73e1: $51
	sbc l                                            ; $73e2: $9d
	ld d, b                                          ; $73e3: $50
	jr c, jr_08d_7431                                ; $73e4: $38 $4b

	inc de                                           ; $73e6: $13
	sub h                                            ; $73e7: $94
	ld a, b                                          ; $73e8: $78
	call c, $2fa0                                    ; $73e9: $dc $a0 $2f
	add sp, $55                                      ; $73ec: $e8 $55
	and c                                            ; $73ee: $a1
	db $eb                                           ; $73ef: $eb

jr_08d_73f0:
	ld e, b                                          ; $73f0: $58
	pop af                                           ; $73f1: $f1
	inc b                                            ; $73f2: $04
	dec sp                                           ; $73f3: $3b
	ccf                                              ; $73f4: $3f

jr_08d_73f5:
	ld c, a                                          ; $73f5: $4f
	xor h                                            ; $73f6: $ac
	ldh a, [$29]                                     ; $73f7: $f0 $29
	ld a, $55                                        ; $73f9: $3e $55
	ld c, c                                          ; $73fb: $49
	ld c, a                                          ; $73fc: $4f
	db $ec                                           ; $73fd: $ec
	db $ec                                           ; $73fe: $ec
	ld c, a                                          ; $73ff: $4f
	inc de                                           ; $7400: $13
	ld a, [hl-]                                      ; $7401: $3a
	jr c, jr_08d_73f0                                ; $7402: $38 $ec

	ret c                                            ; $7404: $d8

	and b                                            ; $7405: $a0
	cpl                                              ; $7406: $2f
	add sp, $34                                      ; $7407: $e8 $34
	add hl, bc                                       ; $7409: $09

jr_08d_740a:
	ld d, h                                          ; $740a: $54
	ld b, c                                          ; $740b: $41
	ld a, [hl-]                                      ; $740c: $3a
	sbc d                                            ; $740d: $9a
	ld b, a                                          ; $740e: $47
	xor h                                            ; $740f: $ac
	pop af                                           ; $7410: $f1
	sub $62                                          ; $7411: $d6 $62
	pop af                                           ; $7413: $f1
	sbc l                                            ; $7414: $9d
	dec sp                                           ; $7415: $3b
	ccf                                              ; $7416: $3f
	ld c, a                                          ; $7417: $4f
	inc de                                           ; $7418: $13
	db $eb                                           ; $7419: $eb
	inc [hl]                                         ; $741a: $34
	ld h, e                                          ; $741b: $63
	and b                                            ; $741c: $a0
	adc b                                            ; $741d: $88
	ldh a, [$2c]                                     ; $741e: $f0 $2c
	ld b, d                                          ; $7420: $42
	ld h, h                                          ; $7421: $64
	pop af                                           ; $7422: $f1
	add [hl]                                         ; $7423: $86
	db $ec                                           ; $7424: $ec
	ret c                                            ; $7425: $d8

	inc de                                           ; $7426: $13
	ld b, d                                          ; $7427: $42
	ld b, a                                          ; $7428: $47
	inc [hl]                                         ; $7429: $34
	sub b                                            ; $742a: $90
	ld a, $38                                        ; $742b: $3e $38
	ld b, d                                          ; $742d: $42
	and c                                            ; $742e: $a1
	cpl                                              ; $742f: $2f
	ld d, h                                          ; $7430: $54

jr_08d_7431:
	add hl, sp                                       ; $7431: $39
	jr c, jr_08d_746d                                ; $7432: $38 $39

	ld h, a                                          ; $7434: $67
	di                                               ; $7435: $f3
	ld b, e                                          ; $7436: $43
	ld d, e                                          ; $7437: $53
	sub b                                            ; $7438: $90
	ld a, $38                                        ; $7439: $3e $38
	ld b, c                                          ; $743b: $41
	ld b, h                                          ; $743c: $44
	ld b, l                                          ; $743d: $45
	add hl, bc                                       ; $743e: $09
	ld d, d                                          ; $743f: $52
	inc [hl]                                         ; $7440: $34
	ldh a, [rTAC]                                    ; $7441: $f0 $07
	inc a                                            ; $7443: $3c
	ld d, b                                          ; $7444: $50
	ld a, [hl-]                                      ; $7445: $3a
	jr c, jr_08d_7492                                ; $7446: $38 $4a

	ld c, a                                          ; $7448: $4f
	inc de                                           ; $7449: $13
	db $ec                                           ; $744a: $ec
	dec bc                                           ; $744b: $0b
	and b                                            ; $744c: $a0
	cpl                                              ; $744d: $2f
	pop hl                                           ; $744e: $e1
	ld b, a                                          ; $744f: $47
	ld h, e                                          ; $7450: $63
	ld d, a                                          ; $7451: $57
	ld c, c                                          ; $7452: $49
	db $ed                                           ; $7453: $ed
	ld l, c                                          ; $7454: $69
	ld b, [hl]                                       ; $7455: $46
	ld c, [hl]                                       ; $7456: $4e
	ld b, c                                          ; $7457: $41
	ld b, h                                          ; $7458: $44
	ld b, l                                          ; $7459: $45
	add hl, bc                                       ; $745a: $09
	ld b, h                                          ; $745b: $44
	inc a                                            ; $745c: $3c
	ld d, b                                          ; $745d: $50
	xor c                                            ; $745e: $a9
	pop af                                           ; $745f: $f1
	call z, Call_08d_63f2                            ; $7460: $cc $f2 $63
	ld b, d                                          ; $7463: $42
	di                                               ; $7464: $f3
	inc bc                                           ; $7465: $03
	ld e, [hl]                                       ; $7466: $5e
	ld b, a                                          ; $7467: $47
	inc de                                           ; $7468: $13
	ld a, [hl-]                                      ; $7469: $3a
	dec sp                                           ; $746a: $3b
	ccf                                              ; $746b: $3f
	ld a, [hl-]                                      ; $746c: $3a

jr_08d_746d:
	jr c, jr_08d_74d2                                ; $746d: $38 $63

	and b                                            ; $746f: $a0
	cpl                                              ; $7470: $2f
	ld d, h                                          ; $7471: $54
	ld b, d                                          ; $7472: $42
	db $ec                                           ; $7473: $ec
	cp $53                                           ; $7474: $fe $53
	jr c, jr_08d_74b0                                ; $7476: $38 $38

	ld b, c                                          ; $7478: $41
	ld b, h                                          ; $7479: $44
	ld b, l                                          ; $747a: $45
	add hl, bc                                       ; $747b: $09
	db $ec                                           ; $747c: $ec
	ldh a, [$a8]                                     ; $747d: $f0 $a8
	ld b, b                                          ; $747f: $40
	add hl, sp                                       ; $7480: $39
	and b                                            ; $7481: $a0
	db $eb                                           ; $7482: $eb
	ld e, b                                          ; $7483: $58
	inc [hl]                                         ; $7484: $34
	ldh a, [$3d]                                     ; $7485: $f0 $3d
	ldh a, [$03]                                     ; $7487: $f0 $03
	pop af                                           ; $7489: $f1
	ld c, c                                          ; $748a: $49
	inc de                                           ; $748b: $13
	db $ed                                           ; $748c: $ed
	ld b, $62                                        ; $748d: $06 $62
	pop af                                           ; $748f: $f1
	dec sp                                           ; $7490: $3b
	ld sp, hl                                        ; $7491: $f9

jr_08d_7492:
	db $10                                           ; $7492: $10
	ld d, c                                          ; $7493: $51
	ld c, l                                          ; $7494: $4d
	ld a, e                                          ; $7495: $7b
	db $ed                                           ; $7496: $ed
	rst FarCall                                          ; $7497: $f7
	ld b, l                                          ; $7498: $45
	and b                                            ; $7499: $a0
	cpl                                              ; $749a: $2f
	db $ec                                           ; $749b: $ec
	ldh a, [$35]                                     ; $749c: $f0 $35
	ret nz                                           ; $749e: $c0

	add hl, bc                                       ; $749f: $09
	db $ec                                           ; $74a0: $ec
	db $f4                                           ; $74a1: $f4
	xor b                                            ; $74a2: $a8
	db $ed                                           ; $74a3: $ed
	ld [hl], h                                       ; $74a4: $74
	ld d, e                                          ; $74a5: $53
	ldh a, [rAUD1LOW]                                ; $74a6: $f0 $13
	jr c, jr_08d_74e6                                ; $74a8: $38 $3c

	ld d, b                                          ; $74aa: $50
	inc de                                           ; $74ab: $13
	ld a, $3a                                        ; $74ac: $3e $3a
	jr c, jr_08d_750d                                ; $74ae: $38 $5d

jr_08d_74b0:
	ld e, d                                          ; $74b0: $5a
	and b                                            ; $74b1: $a0
	cpl                                              ; $74b2: $2f
	sbc $f1                                          ; $74b3: $de $f1
	dec sp                                           ; $74b5: $3b
	ld sp, hl                                        ; $74b6: $f9
	db $10                                           ; $74b7: $10
	ld c, d                                          ; $74b8: $4a
	ld e, h                                          ; $74b9: $5c
	ld c, [hl]                                       ; $74ba: $4e
	ld b, d                                          ; $74bb: $42
	and c                                            ; $74bc: $a1
	sub c                                            ; $74bd: $91
	dec a                                            ; $74be: $3d
	ld d, a                                          ; $74bf: $57
	sbc [hl]                                         ; $74c0: $9e
	db $ec                                           ; $74c1: $ec
	ret c                                            ; $74c2: $d8

	xor b                                            ; $74c3: $a8
	ld l, a                                          ; $74c4: $6f
	ld h, d                                          ; $74c5: $62
	pop af                                           ; $74c6: $f1
	or d                                             ; $74c7: $b2
	pop af                                           ; $74c8: $f1
	ld c, b                                          ; $74c9: $48
	ld b, a                                          ; $74ca: $47
	ld a, $3f                                        ; $74cb: $3e $3f
	ld c, [hl]                                       ; $74cd: $4e
	ld h, e                                          ; $74ce: $63
	ld c, h                                          ; $74cf: $4c
	and b                                            ; $74d0: $a0
	cpl                                              ; $74d1: $2f

jr_08d_74d2:
	ld e, e                                          ; $74d2: $5b
	ld d, [hl]                                       ; $74d3: $56
	ld b, [hl]                                       ; $74d4: $46
	inc [hl]                                         ; $74d5: $34
	ld l, [hl]                                       ; $74d6: $6e
	dec sp                                           ; $74d7: $3b
	ccf                                              ; $74d8: $3f
	ld l, h                                          ; $74d9: $6c
	ccf                                              ; $74da: $3f
	ld b, l                                          ; $74db: $45
	add hl, bc                                       ; $74dc: $09
	db $ed                                           ; $74dd: $ed
	xor [hl]                                         ; $74de: $ae
	ld d, l                                          ; $74df: $55
	ld e, b                                          ; $74e0: $58
	jr c, jr_08d_751f                                ; $74e1: $38 $3c

	ld d, b                                          ; $74e3: $50
	xor h                                            ; $74e4: $ac
	ld l, [hl]                                       ; $74e5: $6e

jr_08d_74e6:
	ld d, b                                          ; $74e6: $50
	ld a, [hl-]                                      ; $74e7: $3a
	jr c, jr_08d_754d                                ; $74e8: $38 $63

	and b                                            ; $74ea: $a0
	cpl                                              ; $74eb: $2f
	ld b, e                                          ; $74ec: $43
	db $ec                                           ; $74ed: $ec
	ldh [$a8], a                                     ; $74ee: $e0 $a8
	ret                                              ; $74f0: $c9


	db $ed                                           ; $74f1: $ed
	scf                                              ; $74f2: $37
	ld b, a                                          ; $74f3: $47
	inc de                                           ; $74f4: $13
	ld h, a                                          ; $74f5: $67
	dec sp                                           ; $74f6: $3b
	ccf                                              ; $74f7: $3f
	ld d, l                                          ; $74f8: $55
	ld c, [hl]                                       ; $74f9: $4e
	ld c, h                                          ; $74fa: $4c
	and b                                            ; $74fb: $a0
	ldh a, [$6f]                                     ; $74fc: $f0 $6f
	ldh a, [$0b]                                     ; $74fe: $f0 $0b
	ld b, a                                          ; $7500: $47
	inc [hl]                                         ; $7501: $34
	ld e, d                                          ; $7502: $5a
	add hl, sp                                       ; $7503: $39
	sub a                                            ; $7504: $97
	and b                                            ; $7505: $a0
	cpl                                              ; $7506: $2f
	ld b, e                                          ; $7507: $43
	ld b, [hl]                                       ; $7508: $46
	ld e, c                                          ; $7509: $59
	dec sp                                           ; $750a: $3b
	inc [hl]                                         ; $750b: $34
	ld d, c                                          ; $750c: $51

jr_08d_750d:
	dec sp                                           ; $750d: $3b
	ld e, h                                          ; $750e: $5c
	ld d, a                                          ; $750f: $57
	ld a, $3d                                        ; $7510: $3e $3d
	xor b                                            ; $7512: $a8
	ld a, [hl-]                                      ; $7513: $3a
	ld b, c                                          ; $7514: $41
	ld b, h                                          ; $7515: $44
	xor c                                            ; $7516: $a9
	xor $1e                                          ; $7517: $ee $1e
	add h                                            ; $7519: $84
	ld b, h                                          ; $751a: $44
	inc a                                            ; $751b: $3c
	ld d, a                                          ; $751c: $57
	ld c, e                                          ; $751d: $4b
	and b                                            ; $751e: $a0

jr_08d_751f:
	cpl                                              ; $751f: $2f
	ld b, e                                          ; $7520: $43
	ldh a, [$d8]                                     ; $7521: $f0 $d8
	inc [hl]                                         ; $7523: $34
	db $ec                                           ; $7524: $ec
	ldh [$a8], a                                     ; $7525: $e0 $a8
	db $eb                                           ; $7527: $eb
	rst FarCall                                          ; $7528: $f7
	xor c                                            ; $7529: $a9
	ld d, h                                          ; $752a: $54
	ld b, d                                          ; $752b: $42
	ldh a, [rAUD1LEN]                                ; $752c: $f0 $11
	ld a, l                                          ; $752e: $7d
	ld h, l                                          ; $752f: $65
	ld b, d                                          ; $7530: $42
	ldh a, [c]                                       ; $7531: $f2
	ld c, c                                          ; $7532: $49
	ld c, e                                          ; $7533: $4b
	ld c, b                                          ; $7534: $48
	and b                                            ; $7535: $a0
	ldh a, [$ec]                                     ; $7536: $f0 $ec
	ld d, d                                          ; $7538: $52
	dec sp                                           ; $7539: $3b
	ccf                                              ; $753a: $3f
	ld c, [hl]                                       ; $753b: $4e
	ld h, e                                          ; $753c: $63
	xor b                                            ; $753d: $a8
	ld l, a                                          ; $753e: $6f
	ld b, d                                          ; $753f: $42
	ldh a, [$31]                                     ; $7540: $f0 $31
	ldh a, [$7f]                                     ; $7542: $f0 $7f
	ld b, l                                          ; $7544: $45
	and b                                            ; $7545: $a0
	cpl                                              ; $7546: $2f
	ld b, e                                          ; $7547: $43
	xor $1e                                          ; $7548: $ee $1e
	ld e, b                                          ; $754a: $58
	ld c, b                                          ; $754b: $48
	and c                                            ; $754c: $a1

jr_08d_754d:
	ld l, e                                          ; $754d: $6b
	ld b, l                                          ; $754e: $45
	and b                                            ; $754f: $a0
	cpl                                              ; $7550: $2f
	ld b, e                                          ; $7551: $43
	ldh a, [$5d]                                     ; $7552: $f0 $5d
	ld a, [hl-]                                      ; $7554: $3a
	ldh a, [$c6]                                     ; $7555: $f0 $c6
	ldh a, [c]                                       ; $7557: $f2
	xor d                                            ; $7558: $aa
	inc de                                           ; $7559: $13
	add b                                            ; $755a: $80
	ld a, [hl-]                                      ; $755b: $3a
	jr c, jr_08d_75a8                                ; $755c: $38 $4a

	ld c, [hl]                                       ; $755e: $4e
	ld c, d                                          ; $755f: $4a
	ld a, $66                                        ; $7560: $3e $66
	add hl, sp                                       ; $7562: $39
	and b                                            ; $7563: $a0
	ld l, e                                          ; $7564: $6b
	ld b, b                                          ; $7565: $40
	ld c, l                                          ; $7566: $4d
	xor c                                            ; $7567: $a9
	db $ec                                           ; $7568: $ec
	dec b                                            ; $7569: $05
	ld h, e                                          ; $756a: $63
	and b                                            ; $756b: $a0
	cpl                                              ; $756c: $2f
	ld b, e                                          ; $756d: $43
	ldh a, [$34]                                     ; $756e: $f0 $34
	ld b, a                                          ; $7570: $47
	inc [hl]                                         ; $7571: $34
	db $ec                                           ; $7572: $ec
	ld [$4858], sp                                   ; $7573: $08 $58 $48
	dec [hl]                                         ; $7576: $35
	rla                                              ; $7577: $17
	ld [hl-], a                                      ; $7578: $32
	ldh a, [$5d]                                     ; $7579: $f0 $5d
	ld a, [hl-]                                      ; $757b: $3a
	db $ed                                           ; $757c: $ed
	dec [hl]                                         ; $757d: $35
	ld d, e                                          ; $757e: $53
	inc de                                           ; $757f: $13
	ld [hl], d                                       ; $7580: $72
	ld e, [hl]                                       ; $7581: $5e
	ccf                                              ; $7582: $3f
	ld c, [hl]                                       ; $7583: $4e
	ld b, c                                          ; $7584: $41
	ld b, h                                          ; $7585: $44
	ld b, l                                          ; $7586: $45
	and e                                            ; $7587: $a3
	ld b, [hl]                                       ; $7588: $46

jr_08d_7589:
	ld e, c                                          ; $7589: $59
	ld [hl], h                                       ; $758a: $74
	inc [hl]                                         ; $758b: $34
	pop af                                           ; $758c: $f1
	cp a                                             ; $758d: $bf
	ld h, a                                          ; $758e: $67
	ld b, d                                          ; $758f: $42
	ldh a, [$c6]                                     ; $7590: $f0 $c6
	ldh a, [c]                                       ; $7592: $f2
	xor d                                            ; $7593: $aa
	ld c, a                                          ; $7594: $4f
	inc de                                           ; $7595: $13
	ld d, h                                          ; $7596: $54
	ld b, d                                          ; $7597: $42
	sbc l                                            ; $7598: $9d
	ld d, b                                          ; $7599: $50
	jr c, jr_08d_7589                                ; $759a: $38 $ed

	cp c                                             ; $759c: $b9
	ld b, a                                          ; $759d: $47
	sub h                                            ; $759e: $94
	ld a, c                                          ; $759f: $79
	ld c, l                                          ; $75a0: $4d
	ld a, e                                          ; $75a1: $7b
	xor h                                            ; $75a2: $ac
	xor $17                                          ; $75a3: $ee $17
	push af                                          ; $75a5: $f5
	db $fc                                           ; $75a6: $fc
	pop af                                           ; $75a7: $f1

jr_08d_75a8:
	add [hl]                                         ; $75a8: $86
	ld b, a                                          ; $75a9: $47
	pop af                                           ; $75aa: $f1
	sbc $50                                          ; $75ab: $de $50
	ld a, [hl-]                                      ; $75ad: $3a
	jr c, jr_08d_75f2                                ; $75ae: $38 $42

	ld b, a                                          ; $75b0: $47
	ld c, b                                          ; $75b1: $48
	and b                                            ; $75b2: $a0
	cpl                                              ; $75b3: $2f
	ld b, e                                          ; $75b4: $43
	xor $10                                          ; $75b5: $ee $10
	dec [hl]                                         ; $75b7: $35
	rla                                              ; $75b8: $17
	ld [hl-], a                                      ; $75b9: $32
	ld l, e                                          ; $75ba: $6b
	ccf                                              ; $75bb: $3f
	ld d, h                                          ; $75bc: $54
	ld c, c                                          ; $75bd: $49
	ldh a, [$a4]                                     ; $75be: $f0 $a4
	ld e, [hl]                                       ; $75c0: $5e
	ccf                                              ; $75c1: $3f
	ld c, [hl]                                       ; $75c2: $4e
	ld b, c                                          ; $75c3: $41
	ld b, h                                          ; $75c4: $44
	inc de                                           ; $75c5: $13
	ld d, h                                          ; $75c6: $54
	ld b, d                                          ; $75c7: $42
	pop af                                           ; $75c8: $f1
	ld b, [hl]                                       ; $75c9: $46
	ld c, e                                          ; $75ca: $4b
	ld c, b                                          ; $75cb: $48
	and e                                            ; $75cc: $a3
	add hl, bc                                       ; $75cd: $09
	ld e, b                                          ; $75ce: $58
	ld [hl], h                                       ; $75cf: $74
	inc [hl]                                         ; $75d0: $34
	sub [hl]                                         ; $75d1: $96
	ld c, [hl]                                       ; $75d2: $4e
	ld h, e                                          ; $75d3: $63
	ld b, l                                          ; $75d4: $45
	and b                                            ; $75d5: $a0
	cpl                                              ; $75d6: $2f
	ld b, e                                          ; $75d7: $43
	ld b, b                                          ; $75d8: $40
	add hl, sp                                       ; $75d9: $39
	ld b, h                                          ; $75da: $44
	ld c, h                                          ; $75db: $4c
	xor b                                            ; $75dc: $a8
	db $eb                                           ; $75dd: $eb
	ld d, d                                          ; $75de: $52
	inc a                                            ; $75df: $3c
	and b                                            ; $75e0: $a0
	db $f4                                           ; $75e1: $f4
	ld l, $f4                                        ; $75e2: $2e $f4
	dec l                                            ; $75e4: $2d
	ld b, a                                          ; $75e5: $47
	ldh a, [rTAC]                                    ; $75e6: $f0 $07
	inc a                                            ; $75e8: $3c
	ld c, l                                          ; $75e9: $4d
	ld h, c                                          ; $75ea: $61
	ld d, [hl]                                       ; $75eb: $56
	dec sp                                           ; $75ec: $3b
	dec a                                            ; $75ed: $3d
	inc de                                           ; $75ee: $13
	ld h, e                                          ; $75ef: $63
	ld c, h                                          ; $75f0: $4c
	and b                                            ; $75f1: $a0

jr_08d_75f2:
	cpl                                              ; $75f2: $2f
	db $ec                                           ; $75f3: $ec
	ldh [$ea], a                                     ; $75f4: $e0 $ea
	ld h, d                                          ; $75f6: $62
	add hl, bc                                       ; $75f7: $09
	di                                               ; $75f8: $f3
	inc d                                            ; $75f9: $14
	ld b, d                                          ; $75fa: $42
	ldh a, [$d3]                                     ; $75fb: $f0 $d3
	pop af                                           ; $75fd: $f1
	ld [hl], $f1                                     ; $75fe: $36 $f1
	dec b                                            ; $7600: $05
	ld e, c                                          ; $7601: $59
	ldh a, [$9d]                                     ; $7602: $f0 $9d
	ld h, l                                          ; $7604: $65
	ld l, c                                          ; $7605: $69
	ld c, c                                          ; $7606: $49
	xor h                                            ; $7607: $ac
	ld b, b                                          ; $7608: $40
	ld c, l                                          ; $7609: $4d
	ld b, a                                          ; $760a: $47
	rst FarCall                                          ; $760b: $f7
	ld a, d                                          ; $760c: $7a
	add hl, sp                                       ; $760d: $39
	db $ed                                           ; $760e: $ed
	rst JumpTable                                          ; $760f: $c7
	ld b, d                                          ; $7610: $42
	inc de                                           ; $7611: $13
	ldh a, [c]                                       ; $7612: $f2
	ldh [c], a                                       ; $7613: $e2
	di                                               ; $7614: $f3
	ld h, c                                          ; $7615: $61
	ld h, d                                          ; $7616: $62
	ldh a, [c]                                       ; $7617: $f2
	ld [bc], a                                       ; $7618: $02

jr_08d_7619:
	db $f4                                           ; $7619: $f4
	ld [hl], c                                       ; $761a: $71
	ld a, $3f                                        ; $761b: $3e $3f
	ld c, b                                          ; $761d: $48
	and b                                            ; $761e: $a0
	di                                               ; $761f: $f3
	inc d                                            ; $7620: $14
	ld b, d                                          ; $7621: $42
	ldh a, [$d3]                                     ; $7622: $f0 $d3
	pop af                                           ; $7624: $f1
	ld [hl], $f1                                     ; $7625: $36 $f1
	jr jr_08d_7619                                   ; $7627: $18 $f0

	dec c                                            ; $7629: $0d
	ld c, c                                          ; $762a: $49
	inc de                                           ; $762b: $13
	ldh a, [c]                                       ; $762c: $f2
	sbc h                                            ; $762d: $9c
	or $36                                           ; $762e: $f6 $36
	inc [hl]                                         ; $7630: $34
	ld [hl], l                                       ; $7631: $75
	ld e, c                                          ; $7632: $59
	ld h, l                                          ; $7633: $65
	ld b, d                                          ; $7634: $42
	push af                                          ; $7635: $f5
	add h                                            ; $7636: $84
	ld a, [$f21c]                                    ; $7637: $fa $1c $f2
	ld de, $97f4                                     ; $763a: $11 $f4 $97
	ld c, c                                          ; $763d: $49
	inc de                                           ; $763e: $13
	ldh a, [hDisp1_OBP1]                                     ; $763f: $f0 $94
	pop af                                           ; $7641: $f1
	jr jr_08d_7680                                   ; $7642: $18 $3c

	ld d, b                                          ; $7644: $50
	inc [hl]                                         ; $7645: $34
	ldh a, [c]                                       ; $7646: $f2
	ld h, d                                          ; $7647: $62
	ldh a, [$dc]                                     ; $7648: $f0 $dc
	db $f4                                           ; $764a: $f4
	ld c, c                                          ; $764b: $49
	ldh a, [$0d]                                     ; $764c: $f0 $0d
	ld c, e                                          ; $764e: $4b
	ld c, b                                          ; $764f: $48
	and b                                            ; $7650: $a0
	cpl                                              ; $7651: $2f
	db $ec                                           ; $7652: $ec
	ldh [$e9], a                                     ; $7653: $e0 $e9
	ld e, c                                          ; $7655: $59
	add hl, bc                                       ; $7656: $09
	ldh a, [rHDMA5]                                  ; $7657: $f0 $55
	ldh a, [rBCPS]                                   ; $7659: $f0 $68
	ld c, h                                          ; $765b: $4c
	xor b                                            ; $765c: $a8
	ldh a, [$d0]                                     ; $765d: $f0 $d0
	push af                                          ; $765f: $f5
	add hl, hl                                       ; $7660: $29
	db $f4                                           ; $7661: $f4
	ld a, e                                          ; $7662: $7b
	ld b, h                                          ; $7663: $44
	ld h, e                                          ; $7664: $63
	and b                                            ; $7665: $a0
	cpl                                              ; $7666: $2f
	add sp, -$11                                     ; $7667: $e8 $ef
	add hl, bc                                       ; $7669: $09
	ld a, $3b                                        ; $766a: $3e $3b
	inc a                                            ; $766c: $3c
	ld d, a                                          ; $766d: $57
	ldh a, [c]                                       ; $766e: $f2
	ld [bc], a                                       ; $766f: $02
	db $f4                                           ; $7670: $f4
	ld [hl], c                                       ; $7671: $71
	ld a, $3a                                        ; $7672: $3e $3a
	jr c, jr_08d_76bf                                ; $7674: $38 $49

	inc de                                           ; $7676: $13
	pop af                                           ; $7677: $f1
	inc b                                            ; $7678: $04
	ld c, l                                          ; $7679: $4d
	ld a, [hl-]                                      ; $767a: $3a
	jr c, @+$65                                      ; $767b: $38 $63

	and b                                            ; $767d: $a0
	dec a                                            ; $767e: $3d
	ld d, d                                          ; $767f: $52

jr_08d_7680:
	ld b, a                                          ; $7680: $47
	inc [hl]                                         ; $7681: $34
	pop af                                           ; $7682: $f1
	ld de, $65f0                                     ; $7683: $11 $f0 $65
	ld h, d                                          ; $7686: $62
	ldh a, [rOBP0]                                   ; $7687: $f0 $48
	inc a                                            ; $7689: $3c
	ld d, c                                          ; $768a: $51
	inc de                                           ; $768b: $13
	ld b, d                                          ; $768c: $42
	ld c, e                                          ; $768d: $4b
	inc [hl]                                         ; $768e: $34
	pop af                                           ; $768f: $f1
	sub $42                                          ; $7690: $d6 $42
	ldh a, [$d3]                                     ; $7692: $f0 $d3
	pop af                                           ; $7694: $f1
	ld [hl], $47                                     ; $7695: $36 $47
	jr c, @+$3a                                      ; $7697: $38 $38

	ld h, e                                          ; $7699: $63
	ld c, h                                          ; $769a: $4c
	and b                                            ; $769b: $a0
	cpl                                              ; $769c: $2f
	ld b, b                                          ; $769d: $40
	add hl, sp                                       ; $769e: $39
	ld b, b                                          ; $769f: $40
	add hl, sp                                       ; $76a0: $39
	inc [hl]                                         ; $76a1: $34
	db $ec                                           ; $76a2: $ec
	ld a, [de]                                       ; $76a3: $1a
	ld c, h                                          ; $76a4: $4c
	add hl, bc                                       ; $76a5: $09
	ld d, h                                          ; $76a6: $54
	ld c, l                                          ; $76a7: $4d
	pop af                                           ; $76a8: $f1
	ld c, e                                          ; $76a9: $4b
	ldh a, [$3e]                                     ; $76aa: $f0 $3e
	xor h                                            ; $76ac: $ac
	pop af                                           ; $76ad: $f1
	sub $42                                          ; $76ae: $d6 $42
	ldh a, [$d3]                                     ; $76b0: $f0 $d3
	pop af                                           ; $76b2: $f1
	ld [hl], $62                                     ; $76b3: $36 $62
	ld a, [hl]                                       ; $76b5: $7e
	ld d, l                                          ; $76b6: $55
	ld a, $3f                                        ; $76b7: $3e $3f
	ld c, a                                          ; $76b9: $4f
	inc de                                           ; $76ba: $13
	db $eb                                           ; $76bb: $eb
	inc [hl]                                         ; $76bc: $34
	ld e, l                                          ; $76bd: $5d
	ld e, d                                          ; $76be: $5a

jr_08d_76bf:
	ld c, h                                          ; $76bf: $4c
	and b                                            ; $76c0: $a0
	cpl                                              ; $76c1: $2f
	ld c, a                                          ; $76c2: $4f
	dec sp                                           ; $76c3: $3b
	ld c, c                                          ; $76c4: $49
	inc [hl]                                         ; $76c5: $34
	db $ed                                           ; $76c6: $ed
	add [hl]                                         ; $76c7: $86
	ld a, $3a                                        ; $76c8: $3e $3a
	ld e, h                                          ; $76ca: $5c
	ld d, [hl]                                       ; $76cb: $56
	add hl, bc                                       ; $76cc: $09
	ld b, b                                          ; $76cd: $40
	ld b, c                                          ; $76ce: $41
	ld a, [hl-]                                      ; $76cf: $3a
	ldh a, [$ea]                                     ; $76d0: $f0 $ea
	ld c, e                                          ; $76d2: $4b
	ld a, [hl-]                                      ; $76d3: $3a
	jr c, jr_08d_7718                                ; $76d4: $38 $42

	ld b, l                                          ; $76d6: $45
	and b                                            ; $76d7: $a0
	cpl                                              ; $76d8: $2f
	db $ec                                           ; $76d9: $ec
	halt                                             ; $76da: $76
	ld b, a                                          ; $76db: $47
	ld c, a                                          ; $76dc: $4f
	ld a, [hl-]                                      ; $76dd: $3a
	ld c, [hl]                                       ; $76de: $4e
	ld a, $4c                                        ; $76df: $3e $4c
	add hl, bc                                       ; $76e1: $09
	call c, $2fa0                                    ; $76e2: $dc $a0 $2f
	ld b, e                                          ; $76e5: $43
	ldh a, [$d8]                                     ; $76e6: $f0 $d8
	inc [hl]                                         ; $76e8: $34
	db $ec                                           ; $76e9: $ec
	ldh [$a8], a                                     ; $76ea: $e0 $a8
	ld d, h                                          ; $76ec: $54
	ld b, d                                          ; $76ed: $42
	add e                                            ; $76ee: $83
	ldh a, [rAUD1LEN]                                ; $76ef: $f0 $11
	ldh a, [$3d]                                     ; $76f1: $f0 $3d
	ld c, e                                          ; $76f3: $4b
	ld l, e                                          ; $76f4: $6b
	and c                                            ; $76f5: $a1
	ldh a, [rSCY]                                    ; $76f6: $f0 $42
	ldh a, [rSCY]                                    ; $76f8: $f0 $42
	ld b, c                                          ; $76fa: $41
	inc [hl]                                         ; $76fb: $34
	ld e, d                                          ; $76fc: $5a
	add hl, sp                                       ; $76fd: $39
	xor c                                            ; $76fe: $a9
	pop af                                           ; $76ff: $f1
	xor d                                            ; $7700: $aa
	pop af                                           ; $7701: $f1
	and e                                            ; $7702: $a3
	ld c, e                                          ; $7703: $4b
	inc de                                           ; $7704: $13
	ld l, e                                          ; $7705: $6b
	ld h, d                                          ; $7706: $62
	ld l, [hl]                                       ; $7707: $6e
	dec sp                                           ; $7708: $3b
	ccf                                              ; $7709: $3f
	ld c, a                                          ; $770a: $4f
	pop af                                           ; $770b: $f1
	xor d                                            ; $770c: $aa
	pop af                                           ; $770d: $f1
	and e                                            ; $770e: $a3
	ld c, h                                          ; $770f: $4c
	and b                                            ; $7710: $a0
	cpl                                              ; $7711: $2f
	ld b, e                                          ; $7712: $43
	xor $1e                                          ; $7713: $ee $1e
	ld e, b                                          ; $7715: $58
	inc [hl]                                         ; $7716: $34
	db $ec                                           ; $7717: $ec

jr_08d_7718:
	ldh [rOBP0], a                                   ; $7718: $e0 $48
	and b                                            ; $771a: $a0
	ld l, e                                          ; $771b: $6b
	ld b, l                                          ; $771c: $45
	and b                                            ; $771d: $a0
	cpl                                              ; $771e: $2f
	ld b, e                                          ; $771f: $43
	ld d, h                                          ; $7720: $54
	ld b, d                                          ; $7721: $42
	di                                               ; $7722: $f3
	sub h                                            ; $7723: $94
	db $f4                                           ; $7724: $f4
	sub a                                            ; $7725: $97
	dec sp                                           ; $7726: $3b
	ccf                                              ; $7727: $3f
	xor h                                            ; $7728: $ac
	db $ed                                           ; $7729: $ed
	adc b                                            ; $772a: $88
	db $eb                                           ; $772b: $eb
	xor [hl]                                         ; $772c: $ae
	db $ec                                           ; $772d: $ec
	ret c                                            ; $772e: $d8

	ld c, c                                          ; $772f: $49
	inc de                                           ; $7730: $13
	sub h                                            ; $7731: $94
	ld a, [hl-]                                      ; $7732: $3a
	jr c, jr_08d_7776                                ; $7733: $38 $41

	ld b, h                                          ; $7735: $44
	ld b, l                                          ; $7736: $45
	and b                                            ; $7737: $a0
	ld b, b                                          ; $7738: $40
	ld c, l                                          ; $7739: $4d
	ld d, e                                          ; $773a: $53
	inc [hl]                                         ; $773b: $34
	db $eb                                           ; $773c: $eb
	rst FarCall                                          ; $773d: $f7
	and c                                            ; $773e: $a1
	cpl                                              ; $773f: $2f
	ld b, e                                          ; $7740: $43
	db $ec                                           ; $7741: $ec
	ldh [rWX], a                                     ; $7742: $e0 $4b

jr_08d_7744:
	inc [hl]                                         ; $7744: $34
	db $eb                                           ; $7745: $eb
	xor [hl]                                         ; $7746: $ae
	inc de                                           ; $7747: $13
	ld a, [hl-]                                      ; $7748: $3a
	ld b, c                                          ; $7749: $41
	ccf                                              ; $774a: $3f
	inc [hl]                                         ; $774b: $34
	ldh a, [$08]                                     ; $774c: $f0 $08
	ld c, c                                          ; $774e: $49
	ld b, c                                          ; $774f: $41
	ld e, d                                          ; $7750: $5a
	inc de                                           ; $7751: $13
	sub h                                            ; $7752: $94
	ld a, $3f                                        ; $7753: $3e $3f
	ld a, [hl-]                                      ; $7755: $3a
	jr c, jr_08d_7744                                ; $7756: $38 $ec

	ret c                                            ; $7758: $d8

	inc a                                            ; $7759: $3c
	and b                                            ; $775a: $a0
	ld c, d                                          ; $775b: $4a
	ld c, a                                          ; $775c: $4f
	inc [hl]                                         ; $775d: $34
	ldh a, [$08]                                     ; $775e: $f0 $08
	ld d, b                                          ; $7760: $50
	ld [hl], d                                       ; $7761: $72
	ld a, [hl-]                                      ; $7762: $3a
	ld e, b                                          ; $7763: $58
	jr c, jr_08d_77ab                                ; $7764: $38 $45

	xor b                                            ; $7766: $a8
	ld d, h                                          ; $7767: $54
	ld b, d                                          ; $7768: $42
	di                                               ; $7769: $f3
	sub h                                            ; $776a: $94
	db $f4                                           ; $776b: $f4
	sub a                                            ; $776c: $97
	and b                                            ; $776d: $a0
	cpl                                              ; $776e: $2f
	ld b, e                                          ; $776f: $43
	ldh a, [$c6]                                     ; $7770: $f0 $c6
	ldh a, [c]                                       ; $7772: $f2
	xor d                                            ; $7773: $aa
	ld d, e                                          ; $7774: $53
	ldh a, [c]                                       ; $7775: $f2

jr_08d_7776:
	inc sp                                           ; $7776: $33
	ld c, l                                          ; $7777: $4d
	ccf                                              ; $7778: $3f
	ld c, [hl]                                       ; $7779: $4e
	ld b, c                                          ; $777a: $41
	ld b, h                                          ; $777b: $44
	ld b, l                                          ; $777c: $45
	xor b                                            ; $777d: $a8
	ld b, b                                          ; $777e: $40
	ld c, l                                          ; $777f: $4d
	ld c, d                                          ; $7780: $4a
	ld a, [hl-]                                      ; $7781: $3a
	ld e, h                                          ; $7782: $5c
	ld d, [hl]                                       ; $7783: $56
	ld c, b                                          ; $7784: $48
	and b                                            ; $7785: $a0
	ldh a, [rHDMA5]                                  ; $7786: $f0 $55
	ldh a, [rBCPS]                                   ; $7788: $f0 $68
	ld c, h                                          ; $778a: $4c
	xor b                                            ; $778b: $a8
	ld [$4bf3], a                                    ; $778c: $ea $f3 $4b
	pop af                                           ; $778f: $f1
	ld a, [de]                                       ; $7790: $1a
	pop af                                           ; $7791: $f1
	inc c                                            ; $7792: $0c
	ld b, l                                          ; $7793: $45
	and b                                            ; $7794: $a0
	cpl                                              ; $7795: $2f
	ld b, e                                          ; $7796: $43
	ld b, [hl]                                       ; $7797: $46
	dec sp                                           ; $7798: $3b
	xor h                                            ; $7799: $ac
	ldh a, [$7a]                                     ; $779a: $f0 $7a
	ldh a, [rAUD4ENV]                                ; $779c: $f0 $21
	ld d, e                                          ; $779e: $53
	ldh a, [$9d]                                     ; $779f: $f0 $9d
	ldh a, [$2b]                                     ; $77a1: $f0 $2b
	ldh a, [$7c]                                     ; $77a3: $f0 $7c
	sub e                                            ; $77a5: $93
	ldh a, [$2b]                                     ; $77a6: $f0 $2b
	ldh a, [$7c]                                     ; $77a8: $f0 $7c
	ld b, a                                          ; $77aa: $47

jr_08d_77ab:
	inc de                                           ; $77ab: $13
	ld a, [hl-]                                      ; $77ac: $3a
	dec sp                                           ; $77ad: $3b
	ccf                                              ; $77ae: $3f
	ld e, h                                          ; $77af: $5c
	dec a                                            ; $77b0: $3d
	sub a                                            ; $77b1: $97
	and b                                            ; $77b2: $a0
	ld b, b                                          ; $77b3: $40
	add hl, sp                                       ; $77b4: $39
	xor c                                            ; $77b5: $a9
	ld e, b                                          ; $77b6: $58
	ld b, [hl]                                       ; $77b7: $46
	inc [hl]                                         ; $77b8: $34
	db $ec                                           ; $77b9: $ec
	ld [hl-], a                                      ; $77ba: $32
	and b                                            ; $77bb: $a0
	cpl                                              ; $77bc: $2f
	ld b, e                                          ; $77bd: $43
	db $ec                                           ; $77be: $ec
	ldh [$ac], a                                     ; $77bf: $e0 $ac
	ld l, e                                          ; $77c1: $6b
	inc a                                            ; $77c2: $3c
	db $ed                                           ; $77c3: $ed
	ld d, l                                          ; $77c4: $55
	ld b, c                                          ; $77c5: $41
	ld e, e                                          ; $77c6: $5b
	ld d, [hl]                                       ; $77c7: $56
	ld c, b                                          ; $77c8: $48
	and b                                            ; $77c9: $a0
	ldh a, [$08]                                     ; $77ca: $f0 $08
	ld d, b                                          ; $77cc: $50
	inc [hl]                                         ; $77cd: $34
	db $ec                                           ; $77ce: $ec
	ld [hl-], a                                      ; $77cf: $32
	and b                                            ; $77d0: $a0
	cpl                                              ; $77d1: $2f
	ld b, e                                          ; $77d2: $43
	xor $10                                          ; $77d3: $ee $10
	and b                                            ; $77d5: $a0
	ld l, a                                          ; $77d6: $6f
	ld c, e                                          ; $77d7: $4b
	inc [hl]                                         ; $77d8: $34
	pop af                                           ; $77d9: $f1
	xor e                                            ; $77da: $ab
	ld h, e                                          ; $77db: $63
	ld a, [hl-]                                      ; $77dc: $3a
	jr c, jr_08d_781b                                ; $77dd: $38 $3c

	ld d, b                                          ; $77df: $50
	xor b                                            ; $77e0: $a8
	ldh a, [$6f]                                     ; $77e1: $f0 $6f
	ldh a, [$0b]                                     ; $77e3: $f0 $0b
	ld b, a                                          ; $77e5: $47
	pop af                                           ; $77e6: $f1
	xor e                                            ; $77e7: $ab
	dec sp                                           ; $77e8: $3b
	ccf                                              ; $77e9: $3f
	ret nc                                           ; $77ea: $d0

	and b                                            ; $77eb: $a0
	cpl                                              ; $77ec: $2f
	ld b, b                                          ; $77ed: $40
	ld c, l                                          ; $77ee: $4d
	ld e, e                                          ; $77ef: $5b
	ld d, [hl]                                       ; $77f0: $56
	inc [hl]                                         ; $77f1: $34
	ld l, [hl]                                       ; $77f2: $6e
	ld [hl], c                                       ; $77f3: $71
	ld b, l                                          ; $77f4: $45
	add hl, sp                                       ; $77f5: $39
	add hl, bc                                       ; $77f6: $09
	ld b, b                                          ; $77f7: $40
	add hl, sp                                       ; $77f8: $39
	xor c                                            ; $77f9: $a9
	ldh a, [$34]                                     ; $77fa: $f0 $34
	ld b, a                                          ; $77fc: $47
	pop af                                           ; $77fd: $f1
	xor e                                            ; $77fe: $ab
	dec sp                                           ; $77ff: $3b
	ccf                                              ; $7800: $3f
	ccf                                              ; $7801: $3f
	jr c, jr_08d_783c                                ; $7802: $38 $38

	ld b, d                                          ; $7804: $42
	ld b, l                                          ; $7805: $45
	and b                                            ; $7806: $a0
	call c, Call_08d_40a8                            ; $7807: $dc $a8 $40
	ld c, l                                          ; $780a: $4d
	ld d, e                                          ; $780b: $53
	jr c, jr_08d_7846                                ; $780c: $38 $38

	ld h, e                                          ; $780e: $63
	ld c, h                                          ; $780f: $4c
	and b                                            ; $7810: $a0
	cpl                                              ; $7811: $2f
	db $ec                                           ; $7812: $ec
	ldh [$34], a                                     ; $7813: $e0 $34
	jr c, @+$3a                                      ; $7815: $38 $38

	inc a                                            ; $7817: $3c
	ld d, b                                          ; $7818: $50
	pop af                                           ; $7819: $f1
	xor e                                            ; $781a: $ab

jr_08d_781b:
	jr c, jr_08d_7857                                ; $781b: $38 $3a

	ld b, l                                          ; $781d: $45
	add hl, bc                                       ; $781e: $09
	ld b, [hl]                                       ; $781f: $46
	ld a, [hl-]                                      ; $7820: $3a
	dec a                                            ; $7821: $3d
	ld b, a                                          ; $7822: $47
	pop af                                           ; $7823: $f1
	ld h, [hl]                                       ; $7824: $66
	inc a                                            ; $7825: $3c
	ld a, c                                          ; $7826: $79
	ld c, [hl]                                       ; $7827: $4e
	ld b, d                                          ; $7828: $42
	ld c, e                                          ; $7829: $4b
	xor h                                            ; $782a: $ac
	ld c, a                                          ; $782b: $4f
	dec sp                                           ; $782c: $3b
	dec a                                            ; $782d: $3d
	jr c, jr_08d_786a                                ; $782e: $38 $3a

	ld e, b                                          ; $7830: $58
	ld d, c                                          ; $7831: $51
	ldh a, [$cb]                                     ; $7832: $f0 $cb
	ld c, [hl]                                       ; $7834: $4e
	ld h, e                                          ; $7835: $63
	and b                                            ; $7836: $a0
	ld l, a                                          ; $7837: $6f
	ld b, d                                          ; $7838: $42
	pop af                                           ; $7839: $f1
	xor e                                            ; $783a: $ab
	ld h, d                                          ; $783b: $62

jr_08d_783c:
	pop af                                           ; $783c: $f1
	ld h, [hl]                                       ; $783d: $66
	ld e, h                                          ; $783e: $5c
	dec a                                            ; $783f: $3d
	jr c, jr_08d_7855                                ; $7840: $38 $13

	ld a, [hl-]                                      ; $7842: $3a
	ld b, c                                          ; $7843: $41
	ccf                                              ; $7844: $3f
	inc [hl]                                         ; $7845: $34

jr_08d_7846:
	pop af                                           ; $7846: $f1
	inc l                                            ; $7847: $2c
	pop af                                           ; $7848: $f1
	sbc [hl]                                         ; $7849: $9e
	ldh a, [rAUD1HIGH]                               ; $784a: $f0 $14
	ldh a, [$0a]                                     ; $784c: $f0 $0a
	jr c, jr_08d_78b3                                ; $784e: $38 $63

	ld b, l                                          ; $7850: $45
	and b                                            ; $7851: $a0
	pop af                                           ; $7852: $f1
	ld a, [de]                                       ; $7853: $1a
	pop af                                           ; $7854: $f1

jr_08d_7855:
	inc c                                            ; $7855: $0c
	inc [hl]                                         ; $7856: $34

jr_08d_7857:
	ldh a, [$64]                                     ; $7857: $f0 $64
	ld b, l                                          ; $7859: $45
	and b                                            ; $785a: $a0
	cpl                                              ; $785b: $2f
	ld b, b                                          ; $785c: $40
	ld c, l                                          ; $785d: $4d
	ld e, e                                          ; $785e: $5b
	ld d, [hl]                                       ; $785f: $56
	ld h, h                                          ; $7860: $64
	add d                                            ; $7861: $82
	pop af                                           ; $7862: $f1
	adc h                                            ; $7863: $8c
	ld b, a                                          ; $7864: $47
	di                                               ; $7865: $f3
	ld c, d                                          ; $7866: $4a
	ld e, [hl]                                       ; $7867: $5e
	ccf                                              ; $7868: $3f
	add hl, bc                                       ; $7869: $09

jr_08d_786a:
	ld c, c                                          ; $786a: $49
	ld d, a                                          ; $786b: $57
	ld b, [hl]                                       ; $786c: $46
	ld e, [hl]                                       ; $786d: $5e
	sbc h                                            ; $786e: $9c
	xor h                                            ; $786f: $ac
	pop af                                           ; $7870: $f1
	ld h, [hl]                                       ; $7871: $66
	jr c, jr_08d_78b3                                ; $7872: $38 $3f

	ccf                                              ; $7874: $3f
	rst SubAFromDE                                          ; $7875: $df
	ld h, e                                          ; $7876: $63
	and b                                            ; $7877: $a0
	ld e, d                                          ; $7878: $5a
	add hl, sp                                       ; $7879: $39
	sub a                                            ; $787a: $97
	inc [hl]                                         ; $787b: $34
	ldh a, [$bf]                                     ; $787c: $f0 $bf
	ldh a, [$6f]                                     ; $787e: $f0 $6f
	ldh a, [$0b]                                     ; $7880: $f0 $0b
	ld b, a                                          ; $7882: $47
	and b                                            ; $7883: $a0
	ld e, d                                          ; $7884: $5a
	add hl, sp                                       ; $7885: $39
	sub a                                            ; $7886: $97
	and b                                            ; $7887: $a0
	db $f4                                           ; $7888: $f4
	or c                                             ; $7889: $b1
	ld d, e                                          ; $788a: $53
	ldh a, [c]                                       ; $788b: $f2
	xor c                                            ; $788c: $a9
	ld e, l                                          ; $788d: $5d
	ld b, b                                          ; $788e: $40
	add hl, sp                                       ; $788f: $39
	ld a, [hl-]                                      ; $7890: $3a
	inc de                                           ; $7891: $13
	ldh a, [$99]                                     ; $7892: $f0 $99
	sub b                                            ; $7894: $90
	ld a, e                                          ; $7895: $7b
	inc a                                            ; $7896: $3c
	ld d, a                                          ; $7897: $57
	ld c, h                                          ; $7898: $4c
	and b                                            ; $7899: $a0
	cpl                                              ; $789a: $2f
	ldh a, [rAUD4LEN]                                ; $789b: $f0 $20
	ldh a, [rSC]                                     ; $789d: $f0 $02
	ld e, c                                          ; $789f: $59
	ldh a, [$32]                                     ; $78a0: $f0 $32
	ldh a, [c]                                       ; $78a2: $f2
	ld e, $3a                                        ; $78a3: $1e $3a
	ld d, b                                          ; $78a5: $50
	ld e, d                                          ; $78a6: $5a
	add hl, sp                                       ; $78a7: $39
	inc a                                            ; $78a8: $3c
	ld a, [hl-]                                      ; $78a9: $3a
	and c                                            ; $78aa: $a1
	ld d, d                                          ; $78ab: $52
	inc [hl]                                         ; $78ac: $34
	ld b, b                                          ; $78ad: $40
	ld c, l                                          ; $78ae: $4d
	ld a, [hl-]                                      ; $78af: $3a
	ld d, b                                          ; $78b0: $50
	pop af                                           ; $78b1: $f1
	ld h, [hl]                                       ; $78b2: $66

jr_08d_78b3:
	ld e, l                                          ; $78b3: $5d
	call c, $2fa0                                    ; $78b4: $dc $a0 $2f
	db $ed                                           ; $78b7: $ed
	ld e, l                                          ; $78b8: $5d
	ld c, d                                          ; $78b9: $4a
	inc [hl]                                         ; $78ba: $34
	adc e                                            ; $78bb: $8b
	ld e, h                                          ; $78bc: $5c
	ld a, [hl-]                                      ; $78bd: $3a
	ld b, d                                          ; $78be: $42
	pop af                                           ; $78bf: $f1
	xor e                                            ; $78c0: $ab
	ld e, [hl]                                       ; $78c1: $5e
	ld b, l                                          ; $78c2: $45
	add hl, bc                                       ; $78c3: $09
	ld l, a                                          ; $78c4: $6f
	ld c, e                                          ; $78c5: $4b
	inc [hl]                                         ; $78c6: $34
	pop af                                           ; $78c7: $f1
	xor e                                            ; $78c8: $ab
	ld h, e                                          ; $78c9: $63
	ld a, [hl-]                                      ; $78ca: $3a
	jr c, jr_08d_7930                                ; $78cb: $38 $63

	and b                                            ; $78cd: $a0
	cpl                                              ; $78ce: $2f
	ld e, d                                          ; $78cf: $5a
	ld b, c                                          ; $78d0: $41
	ld a, [hl-]                                      ; $78d1: $3a
	ld b, d                                          ; $78d2: $42
	ld d, e                                          ; $78d3: $53
	db $ec                                           ; $78d4: $ec
	ld a, [bc]                                       ; $78d5: $0a
	and c                                            ; $78d6: $a1
	db $ed                                           ; $78d7: $ed
	ld e, l                                          ; $78d8: $5d
	ld c, d                                          ; $78d9: $4a
	ldh a, [$a4]                                     ; $78da: $f0 $a4
	ld e, [hl]                                       ; $78dc: $5e
	ld a, [hl-]                                      ; $78dd: $3a
	ld e, b                                          ; $78de: $58
	jr c, @-$5e                                      ; $78df: $38 $a0

	ld b, b                                          ; $78e1: $40
	ld c, l                                          ; $78e2: $4d
	ld e, e                                          ; $78e3: $5b
	ld d, [hl]                                       ; $78e4: $56
	xor h                                            ; $78e5: $ac
	ld [$a0cd], a                                    ; $78e6: $ea $cd $a0
	cpl                                              ; $78e9: $2f
	ld b, e                                          ; $78ea: $43
	ld b, b                                          ; $78eb: $40
	add hl, sp                                       ; $78ec: $39
	ld b, h                                          ; $78ed: $44
	ld c, h                                          ; $78ee: $4c
	and b                                            ; $78ef: $a0
	cpl                                              ; $78f0: $2f
	jp hl                                            ; $78f1: $e9


	cp e                                             ; $78f2: $bb
	xor h                                            ; $78f3: $ac
	ld [$6222], a                                    ; $78f4: $ea $22 $62
	inc de                                           ; $78f7: $13
	db $eb                                           ; $78f8: $eb
	adc a                                            ; $78f9: $8f
	and e                                            ; $78fa: $a3
	cpl                                              ; $78fb: $2f
	db $ec                                           ; $78fc: $ec
	ldh [$e9], a                                     ; $78fd: $e0 $e9
	cp b                                             ; $78ff: $b8
	add hl, bc                                       ; $7900: $09
	cpl                                              ; $7901: $2f
	ld b, e                                          ; $7902: $43
	db $ec                                           ; $7903: $ec
	ldh [$ac], a                                     ; $7904: $e0 $ac
	ld [$1322], a                                    ; $7906: $ea $22 $13
	ld [hl], d                                       ; $7909: $72
	ld b, a                                          ; $790a: $47
	db $eb                                           ; $790b: $eb
	ld e, h                                          ; $790c: $5c
	and c                                            ; $790d: $a1
	ld b, b                                          ; $790e: $40
	ld b, c                                          ; $790f: $41
	ld a, [hl-]                                      ; $7910: $3a
	ld b, d                                          ; $7911: $42
	ld [hl], d                                       ; $7912: $72
	dec a                                            ; $7913: $3d
	ld d, l                                          ; $7914: $55
	ld a, [hl-]                                      ; $7915: $3a
	jr c, @+$65                                      ; $7916: $38 $63

	and b                                            ; $7918: $a0
	cpl                                              ; $7919: $2f
	jp hl                                            ; $791a: $e9


	rst GetHLinHL                                          ; $791b: $cf
	add hl, bc                                       ; $791c: $09
	db $eb                                           ; $791d: $eb
	inc [hl]                                         ; $791e: $34
	ld h, e                                          ; $791f: $63
	ld c, h                                          ; $7920: $4c
	and b                                            ; $7921: $a0
	cpl                                              ; $7922: $2f
	jp hl                                            ; $7923: $e9


	ret nc                                           ; $7924: $d0

	add hl, bc                                       ; $7925: $09
	cpl                                              ; $7926: $2f
	add sp, $51                                      ; $7927: $e8 $51
	add hl, bc                                       ; $7929: $09
	ld b, b                                          ; $792a: $40
	ld c, l                                          ; $792b: $4d
	ld e, e                                          ; $792c: $5b
	ld d, [hl]                                       ; $792d: $56
	xor h                                            ; $792e: $ac
	ld e, d                                          ; $792f: $5a

jr_08d_7930:
	ld d, h                                          ; $7930: $54
	ld b, a                                          ; $7931: $47
	ld h, a                                          ; $7932: $67
	ld d, l                                          ; $7933: $55
	ld b, d                                          ; $7934: $42
	and c                                            ; $7935: $a1
	cpl                                              ; $7936: $2f
	add sp, $0d                                      ; $7937: $e8 $0d
	add hl, bc                                       ; $7939: $09
	cpl                                              ; $793a: $2f
	add sp, $2b                                      ; $793b: $e8 $2b
	add hl, bc                                       ; $793d: $09
	cpl                                              ; $793e: $2f
	add sp, $52                                      ; $793f: $e8 $52
	add hl, bc                                       ; $7941: $09
	cpl                                              ; $7942: $2f
	add sp, -$76                                     ; $7943: $e8 $8a
	add hl, bc                                       ; $7945: $09
	cpl                                              ; $7946: $2f
	jp hl                                            ; $7947: $e9


	cp c                                             ; $7948: $b9
	add hl, bc                                       ; $7949: $09
	add b                                            ; $794a: $80
	ld d, d                                          ; $794b: $52
	ld d, b                                          ; $794c: $50
	ld a, [hl-]                                      ; $794d: $3a
	ld e, b                                          ; $794e: $58
	ld b, b                                          ; $794f: $40
	add hl, sp                                       ; $7950: $39
	ld a, [hl-]                                      ; $7951: $3a
	xor h                                            ; $7952: $ac
	ldh a, [rLCDC]                                   ; $7953: $f0 $40
	ld d, a                                          ; $7955: $57
	ldh a, [$2c]                                     ; $7956: $f0 $2c
	ld c, h                                          ; $7958: $4c
	and b                                            ; $7959: $a0
	db $ed                                           ; $795a: $ed
	ld e, [hl]                                       ; $795b: $5e
	db $eb                                           ; $795c: $eb
	ld d, e                                          ; $795d: $53
	ld h, e                                          ; $795e: $63
	and b                                            ; $795f: $a0
	cpl                                              ; $7960: $2f
	ld b, [hl]                                       ; $7961: $46
	ld b, c                                          ; $7962: $41
	ld a, [hl-]                                      ; $7963: $3a
	ld b, d                                          ; $7964: $42
	db $eb                                           ; $7965: $eb
	add b                                            ; $7966: $80
	ld b, h                                          ; $7967: $44
	ld c, h                                          ; $7968: $4c
	add hl, bc                                       ; $7969: $09
	call c, Call_08d_6fa8                            ; $796a: $dc $a8 $6f
	ld c, a                                          ; $796d: $4f
	ld b, b                                          ; $796e: $40
	add hl, sp                                       ; $796f: $39
	ld [hl], a                                       ; $7970: $77
	add hl, sp                                       ; $7971: $39
	ld h, e                                          ; $7972: $63
	and b                                            ; $7973: $a0
	call c, $eba8                                    ; $7974: $dc $a8 $eb
	add b                                            ; $7977: $80
	ld c, a                                          ; $7978: $4f
	inc de                                           ; $7979: $13
	jr c, jr_08d_79b4                                ; $797a: $38 $38

	ld c, c                                          ; $797c: $49
	ld d, h                                          ; $797d: $54
	ld c, h                                          ; $797e: $4c
	and b                                            ; $797f: $a0
	ld b, b                                          ; $7980: $40
	ld b, c                                          ; $7981: $41
	ld a, [hl-]                                      ; $7982: $3a
	sbc d                                            ; $7983: $9a
	xor h                                            ; $7984: $ac
	ldh a, [$5f]                                     ; $7985: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $7987: $f0 $94
	inc a                                            ; $7989: $3c
	ld d, b                                          ; $798a: $50
	db $eb                                           ; $798b: $eb
	ld [hl], h                                       ; $798c: $74
	ld h, e                                          ; $798d: $63
	and b                                            ; $798e: $a0
	cpl                                              ; $798f: $2f
	jp hl                                            ; $7990: $e9


	ld h, b                                          ; $7991: $60
	add hl, bc                                       ; $7992: $09
	ld b, [hl]                                       ; $7993: $46
	ld c, l                                          ; $7994: $4d
	ld c, d                                          ; $7995: $4a
	xor c                                            ; $7996: $a9
	ret                                              ; $7997: $c9


	di                                               ; $7998: $f3
	ld [bc], a                                       ; $7999: $02
	pop af                                           ; $799a: $f1
	ld [$f051], a                                    ; $799b: $ea $51 $f0
	bit 1, [hl]                                      ; $799e: $cb $4e
	ld h, e                                          ; $79a0: $63
	ld c, h                                          ; $79a1: $4c
	and b                                            ; $79a2: $a0
	ld e, d                                          ; $79a3: $5a
	add hl, sp                                       ; $79a4: $39
	jr c, jr_08d_79e0                                ; $79a5: $38 $39

	ldh a, [$d4]                                     ; $79a7: $f0 $d4
	ldh a, [c]                                       ; $79a9: $f2
	inc hl                                           ; $79aa: $23
	ld a, $3f                                        ; $79ab: $3e $3f
	ld c, [hl]                                       ; $79ad: $4e
	ld b, d                                          ; $79ae: $42
	and c                                            ; $79af: $a1
	pop af                                           ; $79b0: $f1
	ldh [c], a                                       ; $79b1: $e2
	ld e, l                                          ; $79b2: $5d
	db $ec                                           ; $79b3: $ec

jr_08d_79b4:
	dec bc                                           ; $79b4: $0b
	and b                                            ; $79b5: $a0
	cpl                                              ; $79b6: $2f
	add sp, $63                                      ; $79b7: $e8 $63
	add hl, bc                                       ; $79b9: $09
	ld b, b                                          ; $79ba: $40
	add hl, sp                                       ; $79bb: $39
	xor c                                            ; $79bc: $a9
	pop af                                           ; $79bd: $f1
	ld e, h                                          ; $79be: $5c
	push af                                          ; $79bf: $f5
	or b                                             ; $79c0: $b0
	ldh a, [c]                                       ; $79c1: $f2
	ld c, $42                                        ; $79c2: $0e $42
	ldh a, [$38]                                     ; $79c4: $f0 $38
	ld d, e                                          ; $79c6: $53
	pop af                                           ; $79c7: $f1
	jr jr_08d_7a02                                   ; $79c8: $18 $38

	ld h, e                                          ; $79ca: $63

jr_08d_79cb:
	and b                                            ; $79cb: $a0
	ld b, b                                          ; $79cc: $40
	ld b, c                                          ; $79cd: $41
	ld a, [hl-]                                      ; $79ce: $3a
	ld b, a                                          ; $79cf: $47
	xor h                                            ; $79d0: $ac
	add a                                            ; $79d1: $87
	ld a, $3d                                        ; $79d2: $3e $3d
	sbc d                                            ; $79d4: $9a
	ld a, [hl-]                                      ; $79d5: $3a
	jr c, jr_08d_7a3b                                ; $79d6: $38 $63

	and b                                            ; $79d8: $a0
	ld b, [hl]                                       ; $79d9: $46
	ld a, [hl-]                                      ; $79da: $3a
	dec a                                            ; $79db: $3d
	ld b, a                                          ; $79dc: $47
	ld c, e                                          ; $79dd: $4b
	xor h                                            ; $79de: $ac
	db $ec                                           ; $79df: $ec

jr_08d_79e0:
	db $10                                           ; $79e0: $10
	jr c, jr_08d_7a1b                                ; $79e1: $38 $38

	ld h, e                                          ; $79e3: $63
	ld c, h                                          ; $79e4: $4c
	and b                                            ; $79e5: $a0
	db $ed                                           ; $79e6: $ed
	ld h, c                                          ; $79e7: $61
	inc [hl]                                         ; $79e8: $34
	ldh a, [rLCDC]                                   ; $79e9: $f0 $40
	dec sp                                           ; $79eb: $3b
	ccf                                              ; $79ec: $3f
	ld c, a                                          ; $79ed: $4f
	inc de                                           ; $79ee: $13
	db $eb                                           ; $79ef: $eb
	ld d, e                                          ; $79f0: $53
	ld h, e                                          ; $79f1: $63
	and b                                            ; $79f2: $a0
	cpl                                              ; $79f3: $2f
	rst JumpTable                                          ; $79f4: $c7
	dec [hl]                                         ; $79f5: $35
	ld [hl], b                                       ; $79f6: $70
	ld [hl], c                                       ; $79f7: $71
	ld b, c                                          ; $79f8: $41
	ld c, h                                          ; $79f9: $4c
	add hl, bc                                       ; $79fa: $09
	ldh a, [rTAC]                                    ; $79fb: $f0 $07
	inc a                                            ; $79fd: $3c
	ld c, l                                          ; $79fe: $4d
	ld a, e                                          ; $79ff: $7b
	jr c, jr_08d_7a3a                                ; $7a00: $38 $38

jr_08d_7a02:
	ld b, d                                          ; $7a02: $42
	ld b, l                                          ; $7a03: $45
	and b                                            ; $7a04: $a0
	cpl                                              ; $7a05: $2f
	ld b, b                                          ; $7a06: $40
	add hl, sp                                       ; $7a07: $39
	ld b, h                                          ; $7a08: $44
	ld c, c                                          ; $7a09: $49
	ld [hl], a                                       ; $7a0a: $77
	dec sp                                           ; $7a0b: $3b
	dec a                                            ; $7a0c: $3d
	ld b, l                                          ; $7a0d: $45
	add hl, bc                                       ; $7a0e: $09
	ldh a, [rTAC]                                    ; $7a0f: $f0 $07
	inc a                                            ; $7a11: $3c
	dec sp                                           ; $7a12: $3b
	ccf                                              ; $7a13: $3f
	dec a                                            ; $7a14: $3d
	ld d, l                                          ; $7a15: $55
	ld a, c                                          ; $7a16: $79
	ld b, a                                          ; $7a17: $47
	xor h                                            ; $7a18: $ac
	ldh a, [rLCDC]                                   ; $7a19: $f0 $40

jr_08d_7a1b:
	dec sp                                           ; $7a1b: $3b
	dec a                                            ; $7a1c: $3d
	ld h, e                                          ; $7a1d: $63
	ld e, l                                          ; $7a1e: $5d
	ld c, h                                          ; $7a1f: $4c
	and b                                            ; $7a20: $a0
	cpl                                              ; $7a21: $2f
	db $ed                                           ; $7a22: $ed
	ld l, a                                          ; $7a23: $6f
	ld h, c                                          ; $7a24: $61
	ld a, [hl]                                       ; $7a25: $7e
	ld d, l                                          ; $7a26: $55
	ld a, [hl-]                                      ; $7a27: $3a
	jr c, jr_08d_79cb                                ; $7a28: $38 $a1

	ld b, b                                          ; $7a2a: $40
	add hl, sp                                       ; $7a2b: $39
	ld c, e                                          ; $7a2c: $4b
	inc [hl]                                         ; $7a2d: $34
	ld [hl], a                                       ; $7a2e: $77
	ld h, e                                          ; $7a2f: $63
	ld a, [hl-]                                      ; $7a30: $3a
	jr c, jr_08d_7a96                                ; $7a31: $38 $63

	and b                                            ; $7a33: $a0
	ld e, d                                          ; $7a34: $5a

jr_08d_7a35:
	add hl, sp                                       ; $7a35: $39
	ld a, c                                          ; $7a36: $79
	xor h                                            ; $7a37: $ac
	db $eb                                           ; $7a38: $eb
	ld d, e                                          ; $7a39: $53

jr_08d_7a3a:
	ld c, d                                          ; $7a3a: $4a

jr_08d_7a3b:
	ld a, $66                                        ; $7a3b: $3e $66
	add hl, sp                                       ; $7a3d: $39
	ld e, l                                          ; $7a3e: $5d
	ld e, d                                          ; $7a3f: $5a
	xor h                                            ; $7a40: $ac
	sub [hl]                                         ; $7a41: $96
	ld c, [hl]                                       ; $7a42: $4e
	ld h, e                                          ; $7a43: $63
	ld b, l                                          ; $7a44: $45
	and b                                            ; $7a45: $a0
	db $ec                                           ; $7a46: $ec
	reti                                             ; $7a47: $d9


	xor h                                            ; $7a48: $ac
	add b                                            ; $7a49: $80
	ld d, d                                          ; $7a4a: $52
	ld d, b                                          ; $7a4b: $50
	ld a, [hl-]                                      ; $7a4c: $3a
	inc a                                            ; $7a4d: $3c
	dec sp                                           ; $7a4e: $3b
	ldh [$a0], a                                     ; $7a4f: $e0 $a0
	cpl                                              ; $7a51: $2f
	halt                                             ; $7a52: $76
	ld c, a                                          ; $7a53: $4f
	inc [hl]                                         ; $7a54: $34
	ld b, b                                          ; $7a55: $40
	add hl, sp                                       ; $7a56: $39
	ld [hl], a                                       ; $7a57: $77
	add hl, sp                                       ; $7a58: $39
	ld b, l                                          ; $7a59: $45
	add hl, bc                                       ; $7a5a: $09
	db $ec                                           ; $7a5b: $ec
	add hl, bc                                       ; $7a5c: $09
	ld b, d                                          ; $7a5d: $42
	pop af                                           ; $7a5e: $f1
	ld [$73f0], sp                                   ; $7a5f: $08 $f0 $73
	ld h, d                                          ; $7a62: $62
	inc de                                           ; $7a63: $13
	ld d, h                                          ; $7a64: $54
	ld b, c                                          ; $7a65: $41
	ld a, [hl-]                                      ; $7a66: $3a
	db $ec                                           ; $7a67: $ec
	adc c                                            ; $7a68: $89
	ld a, [hl-]                                      ; $7a69: $3a
	ld c, a                                          ; $7a6a: $4f
	ld b, d                                          ; $7a6b: $42
	ld b, a                                          ; $7a6c: $47
	inc de                                           ; $7a6d: $13
	pop af                                           ; $7a6e: $f1
	sbc l                                            ; $7a6f: $9d
	add hl, sp                                       ; $7a70: $39
	ld a, [hl-]                                      ; $7a71: $3a
	ld b, c                                          ; $7a72: $41
	ccf                                              ; $7a73: $3f
	and b                                            ; $7a74: $a0
	ld d, d                                          ; $7a75: $52
	xor h                                            ; $7a76: $ac
	sub c                                            ; $7a77: $91
	ldh a, [$59]                                     ; $7a78: $f0 $59
	ld b, b                                          ; $7a7a: $40
	add hl, sp                                       ; $7a7b: $39
	ld [hl], a                                       ; $7a7c: $77
	add hl, sp                                       ; $7a7d: $39
	ld h, e                                          ; $7a7e: $63
	ld b, l                                          ; $7a7f: $45
	ld c, h                                          ; $7a80: $4c
	and b                                            ; $7a81: $a0
	sub c                                            ; $7a82: $91
	dec a                                            ; $7a83: $3d
	ld d, a                                          ; $7a84: $57
	sbc [hl]                                         ; $7a85: $9e
	ld b, d                                          ; $7a86: $42
	ld d, h                                          ; $7a87: $54
	ld c, c                                          ; $7a88: $49
	ld b, l                                          ; $7a89: $45
	and b                                            ; $7a8a: $a0
	cpl                                              ; $7a8b: $2f
	ldh a, [$c0]                                     ; $7a8c: $f0 $c0
	ldh a, [$f0]                                     ; $7a8e: $f0 $f0
	ld c, c                                          ; $7a90: $49
	inc [hl]                                         ; $7a91: $34
	ldh a, [$71]                                     ; $7a92: $f0 $71
	inc a                                            ; $7a94: $3c
	dec sp                                           ; $7a95: $3b

jr_08d_7a96:
	dec a                                            ; $7a96: $3d
	ld b, l                                          ; $7a97: $45
	ld c, h                                          ; $7a98: $4c
	add hl, bc                                       ; $7a99: $09
	di                                               ; $7a9a: $f3
	dec e                                            ; $7a9b: $1d
	ldh a, [rTAC]                                    ; $7a9c: $f0 $07
	ld c, c                                          ; $7a9e: $49
	ldh a, [rAUD4ENV]                                ; $7a9f: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7aa1: $f0 $23
	jr c, jr_08d_7ab8                                ; $7aa3: $38 $13

	db $ed                                           ; $7aa5: $ed
	ld a, h                                          ; $7aa6: $7c
	ld c, h                                          ; $7aa7: $4c
	and b                                            ; $7aa8: $a0
	ld c, e                                          ; $7aa9: $4b
	dec sp                                           ; $7aaa: $3b
	inc [hl]                                         ; $7aab: $34
	ld [hl], c                                       ; $7aac: $71
	ld c, d                                          ; $7aad: $4a
	dec a                                            ; $7aae: $3d
	jr c, jr_08d_7a35                                ; $7aaf: $38 $84

	ld c, h                                          ; $7ab1: $4c
	xor b                                            ; $7ab2: $a8
	ld b, b                                          ; $7ab3: $40
	ld b, d                                          ; $7ab4: $42
	add hl, sp                                       ; $7ab5: $39
	ld h, c                                          ; $7ab6: $61
	inc [hl]                                         ; $7ab7: $34

jr_08d_7ab8:
	pop af                                           ; $7ab8: $f1
	jp nz, $f042                                     ; $7ab9: $c2 $42 $f0

	ld [hl], c                                       ; $7abc: $71
	pop af                                           ; $7abd: $f1
	ld [hl], l                                       ; $7abe: $75
	ld h, d                                          ; $7abf: $62
	inc de                                           ; $7ac0: $13
	db $ec                                           ; $7ac1: $ec
	db $ed                                           ; $7ac2: $ed
	rst SubAFromDE                                          ; $7ac3: $df
	ld h, e                                          ; $7ac4: $63
	and b                                            ; $7ac5: $a0
	cpl                                              ; $7ac6: $2f
	db $ec                                           ; $7ac7: $ec
	inc sp                                           ; $7ac8: $33
	ld d, e                                          ; $7ac9: $53
	db $ed                                           ; $7aca: $ed
	ld c, c                                          ; $7acb: $49
	ld b, h                                          ; $7acc: $44
	dec sp                                           ; $7acd: $3b
	dec a                                            ; $7ace: $3d
	ld b, l                                          ; $7acf: $45
	add hl, bc                                       ; $7ad0: $09
	ld b, b                                          ; $7ad1: $40
	ld c, l                                          ; $7ad2: $4d
	ld c, e                                          ; $7ad3: $4b
	ldh a, [c]                                       ; $7ad4: $f2
	sbc a                                            ; $7ad5: $9f
	ld [hl], c                                       ; $7ad6: $71
	ld c, [hl]                                       ; $7ad7: $4e
	ld e, l                                          ; $7ad8: $5d
	ld e, d                                          ; $7ad9: $5a
	xor h                                            ; $7ada: $ac
	xor $1e                                          ; $7adb: $ee $1e
	pop af                                           ; $7add: $f1
	ld [$73f0], sp                                   ; $7ade: $08 $f0 $73
	ld b, a                                          ; $7ae1: $47
	ld c, e                                          ; $7ae2: $4b
	inc [hl]                                         ; $7ae3: $34
	ld c, a                                          ; $7ae4: $4f
	dec sp                                           ; $7ae5: $3b
	ld c, c                                          ; $7ae6: $49
	pop af                                           ; $7ae7: $f1
	adc d                                            ; $7ae8: $8a
	di                                               ; $7ae9: $f3
	jp $133a                                         ; $7aea: $c3 $3a $13


	di                                               ; $7aed: $f3
	call nz, $16f0                                   ; $7aee: $c4 $f0 $16
	di                                               ; $7af1: $f3
	jp nc, $4653                                     ; $7af2: $d2 $53 $46

	ld c, [hl]                                       ; $7af5: $4e
	ld h, e                                          ; $7af6: $63
	and b                                            ; $7af7: $a0
	xor $1e                                          ; $7af8: $ee $1e
	pop af                                           ; $7afa: $f1
	ld [$73f0], sp                                   ; $7afb: $08 $f0 $73
	ld c, e                                          ; $7afe: $4b
	xor h                                            ; $7aff: $ac
	ld b, [hl]                                       ; $7b00: $46
	ld b, c                                          ; $7b01: $41
	ld a, [hl-]                                      ; $7b02: $3a
	sbc d                                            ; $7b03: $9a
	ld b, a                                          ; $7b04: $47
	pop af                                           ; $7b05: $f1
	sbc l                                            ; $7b06: $9d
	dec sp                                           ; $7b07: $3b
	ccf                                              ; $7b08: $3f
	inc de                                           ; $7b09: $13
	pop af                                           ; $7b0a: $f1
	add hl, hl                                       ; $7b0b: $29
	ld a, $55                                        ; $7b0c: $3e $55
	ld a, [hl-]                                      ; $7b0e: $3a
	jr c, jr_08d_7b74                                ; $7b0f: $38 $63

	and b                                            ; $7b11: $a0
	ld b, [hl]                                       ; $7b12: $46
	ld b, c                                          ; $7b13: $41
	ld a, [hl-]                                      ; $7b14: $3a
	inc de                                           ; $7b15: $13
	db $ec                                           ; $7b16: $ec
	and h                                            ; $7b17: $a4
	ld a, [hl-]                                      ; $7b18: $3a
	ldh a, [$2c]                                     ; $7b19: $f0 $2c
	ld h, d                                          ; $7b1b: $62
	xor h                                            ; $7b1c: $ac
	ld h, e                                          ; $7b1d: $63
	ldh a, [rAUD1SWEEP]                              ; $7b1e: $f0 $10
	ld h, e                                          ; $7b20: $63
	ldh a, [rAUD1SWEEP]                              ; $7b21: $f0 $10
	ldh a, [$a5]                                     ; $7b23: $f0 $a5
	ld c, [hl]                                       ; $7b25: $4e
	ld a, [hl-]                                      ; $7b26: $3a
	ld b, c                                          ; $7b27: $41
	ccf                                              ; $7b28: $3f
	xor h                                            ; $7b29: $ac
	db $eb                                           ; $7b2a: $eb
	ld a, d                                          ; $7b2b: $7a
	jr c, jr_08d_7b91                                ; $7b2c: $38 $63

	and b                                            ; $7b2e: $a0
	db $ed                                           ; $7b2f: $ed
	ld h, c                                          ; $7b30: $61
	ld [hl], d                                       ; $7b31: $72
	ccf                                              ; $7b32: $3f
	ld c, a                                          ; $7b33: $4f
	xor h                                            ; $7b34: $ac
	db $eb                                           ; $7b35: $eb
	ld d, e                                          ; $7b36: $53
	ld h, e                                          ; $7b37: $63
	and b                                            ; $7b38: $a0
	cpl                                              ; $7b39: $2f
	ld b, b                                          ; $7b3a: $40
	add hl, sp                                       ; $7b3b: $39
	ld b, h                                          ; $7b3c: $44
	ld c, c                                          ; $7b3d: $49
	inc [hl]                                         ; $7b3e: $34
	ld [hl], a                                       ; $7b3f: $77
	dec sp                                           ; $7b40: $3b
	dec a                                            ; $7b41: $3d
	ld b, l                                          ; $7b42: $45
	add hl, bc                                       ; $7b43: $09
	ldh a, [rTAC]                                    ; $7b44: $f0 $07
	inc a                                            ; $7b46: $3c
	dec sp                                           ; $7b47: $3b
	ccf                                              ; $7b48: $3f
	dec a                                            ; $7b49: $3d
	ld d, l                                          ; $7b4a: $55
	ld a, c                                          ; $7b4b: $79
	ld b, a                                          ; $7b4c: $47
	xor h                                            ; $7b4d: $ac
	sub [hl]                                         ; $7b4e: $96
	dec sp                                           ; $7b4f: $3b
	dec a                                            ; $7b50: $3d
	ld b, d                                          ; $7b51: $42
	ld c, h                                          ; $7b52: $4c
	and b                                            ; $7b53: $a0
	cpl                                              ; $7b54: $2f
	db $ec                                           ; $7b55: $ec
	inc sp                                           ; $7b56: $33
	ld c, e                                          ; $7b57: $4b
	db $ed                                           ; $7b58: $ed
	ld c, c                                          ; $7b59: $49
	ld b, h                                          ; $7b5a: $44
	dec sp                                           ; $7b5b: $3b
	dec a                                            ; $7b5c: $3d
	ld b, l                                          ; $7b5d: $45
	ld c, h                                          ; $7b5e: $4c
	and c                                            ; $7b5f: $a1
	ld b, b                                          ; $7b60: $40
	ld c, l                                          ; $7b61: $4d
	ld b, h                                          ; $7b62: $44
	ld e, l                                          ; $7b63: $5d
	ld c, h                                          ; $7b64: $4c
	and b                                            ; $7b65: $a0
	db $eb                                           ; $7b66: $eb
	ld e, b                                          ; $7b67: $58
	ld b, a                                          ; $7b68: $47
	ldh a, [rLCDC]                                   ; $7b69: $f0 $40
	ld c, [hl]                                       ; $7b6b: $4e
	ld b, d                                          ; $7b6c: $42
	xor c                                            ; $7b6d: $a9
	ld d, d                                          ; $7b6e: $52
	inc [hl]                                         ; $7b6f: $34
	db $ec                                           ; $7b70: $ec
	ld [$51a0], sp                                   ; $7b71: $08 $a0 $51

jr_08d_7b74:
	ld [hl], b                                       ; $7b74: $70
	ld d, l                                          ; $7b75: $55
	ldh a, [rBGP]                                    ; $7b76: $f0 $47
	ldh a, [$2a]                                     ; $7b78: $f0 $2a
	ld h, d                                          ; $7b7a: $62
	ldh a, [rAUD1LOW]                                ; $7b7b: $f0 $13
	ldh a, [$af]                                     ; $7b7d: $f0 $af
	ld b, a                                          ; $7b7f: $47
	inc de                                           ; $7b80: $13
	ld a, $3d                                        ; $7b81: $3e $3d
	ld a, a                                          ; $7b83: $7f
	ldh a, [rTAC]                                    ; $7b84: $f0 $07
	ld c, h                                          ; $7b86: $4c
	and b                                            ; $7b87: $a0
	cpl                                              ; $7b88: $2f
	adc b                                            ; $7b89: $88
	sub c                                            ; $7b8a: $91
	inc [hl]                                         ; $7b8b: $34
	pop af                                           ; $7b8c: $f1
	cp d                                             ; $7b8d: $ba
	inc a                                            ; $7b8e: $3c
	dec sp                                           ; $7b8f: $3b
	dec a                                            ; $7b90: $3d

jr_08d_7b91:
	ld b, l                                          ; $7b91: $45
	add hl, bc                                       ; $7b92: $09
	ld d, d                                          ; $7b93: $52
	inc [hl]                                         ; $7b94: $34
	ld b, b                                          ; $7b95: $40
	ld c, l                                          ; $7b96: $4d
	ld c, e                                          ; $7b97: $4b
	sub c                                            ; $7b98: $91
	ldh a, [$59]                                     ; $7b99: $f0 $59
	ld c, h                                          ; $7b9b: $4c
	xor b                                            ; $7b9c: $a8
	ld l, d                                          ; $7b9d: $6a
	ldh a, [$d3]                                     ; $7b9e: $f0 $d3
	ld c, e                                          ; $7ba0: $4b
	ldh a, [c]                                       ; $7ba1: $f2
	ld a, b                                          ; $7ba2: $78
	ld a, $3f                                        ; $7ba3: $3e $3f
	rst SubAFromDE                                          ; $7ba5: $df
	ld h, e                                          ; $7ba6: $63
	and b                                            ; $7ba7: $a0
	ldh a, [$5f]                                     ; $7ba8: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $7baa: $f0 $94
	inc a                                            ; $7bac: $3c
	ld d, b                                          ; $7bad: $50
	ldh a, [rLCDC]                                   ; $7bae: $f0 $40
	ld d, b                                          ; $7bb0: $50
	ld a, [hl-]                                      ; $7bb1: $3a
	ld e, l                                          ; $7bb2: $5d
	ld c, l                                          ; $7bb3: $4d
	ld a, e                                          ; $7bb4: $7b
	xor h                                            ; $7bb5: $ac
	db $ec                                           ; $7bb6: $ec
	cp c                                             ; $7bb7: $b9
	ld h, e                                          ; $7bb8: $63
	ld c, h                                          ; $7bb9: $4c
	and b                                            ; $7bba: $a0
	ld d, h                                          ; $7bbb: $54
	ld b, d                                          ; $7bbc: $42
	ldh a, [$d6]                                     ; $7bbd: $f0 $d6
	ld c, e                                          ; $7bbf: $4b
	db $eb                                           ; $7bc0: $eb
	ld e, b                                          ; $7bc1: $58
	inc de                                           ; $7bc2: $13
	ldh a, [rLCDC]                                   ; $7bc3: $f0 $40
	ld d, b                                          ; $7bc5: $50
	ld a, [hl-]                                      ; $7bc6: $3a
	jr c, jr_08d_7c2c                                ; $7bc7: $38 $63

	ld b, l                                          ; $7bc9: $45
	and b                                            ; $7bca: $a0
	cpl                                              ; $7bcb: $2f
	jr c, jr_08d_7c06                                ; $7bcc: $38 $38

	pop af                                           ; $7bce: $f1
	db $eb                                           ; $7bcf: $eb
	ld [hl], c                                       ; $7bd0: $71
	ld e, e                                          ; $7bd1: $5b
	ld d, [hl]                                       ; $7bd2: $56
	ld a, [hl-]                                      ; $7bd3: $3a
	inc a                                            ; $7bd4: $3c
	dec sp                                           ; $7bd5: $3b
	dec a                                            ; $7bd6: $3d
	and c                                            ; $7bd7: $a1
	ldh a, [$34]                                     ; $7bd8: $f0 $34
	ld b, a                                          ; $7bda: $47
	xor h                                            ; $7bdb: $ac
	ld b, b                                          ; $7bdc: $40
	add hl, sp                                       ; $7bdd: $39
	ld c, e                                          ; $7bde: $4b
	ld [hl], a                                       ; $7bdf: $77
	ld h, e                                          ; $7be0: $63
	ld a, [hl-]                                      ; $7be1: $3a
	jr c, jr_08d_7c47                                ; $7be2: $38 $63

	and b                                            ; $7be4: $a0
	di                                               ; $7be5: $f3
	ld e, [hl]                                       ; $7be6: $5e
	pop af                                           ; $7be7: $f1
	ld h, l                                          ; $7be8: $65
	ld [hl], l                                       ; $7be9: $75
	pop af                                           ; $7bea: $f1
	dec e                                            ; $7beb: $1d
	ldh a, [$03]                                     ; $7bec: $f0 $03
	ld c, d                                          ; $7bee: $4a
	ld a, [hl-]                                      ; $7bef: $3a
	ld d, b                                          ; $7bf0: $50
	xor h                                            ; $7bf1: $ac
	ld [hl], d                                       ; $7bf2: $72
	ld c, [hl]                                       ; $7bf3: $4e
	ld a, a                                          ; $7bf4: $7f
	ld b, a                                          ; $7bf5: $47
	ld c, a                                          ; $7bf6: $4f
	ld a, [hl-]                                      ; $7bf7: $3a
	ld c, [hl]                                       ; $7bf8: $4e
	ld e, l                                          ; $7bf9: $5d
	ld e, d                                          ; $7bfa: $5a
	and b                                            ; $7bfb: $a0
	ld d, h                                          ; $7bfc: $54
	ld b, d                                          ; $7bfd: $42
	pop af                                           ; $7bfe: $f1
	rst SubAFromHL                                          ; $7bff: $d7
	ldh a, [$0d]                                     ; $7c00: $f0 $0d
	ld b, d                                          ; $7c02: $42
	di                                               ; $7c03: $f3
	ld h, l                                          ; $7c04: $65
	pop af                                           ; $7c05: $f1

jr_08d_7c06:
	ld l, [hl]                                       ; $7c06: $6e
	ld a, [hl-]                                      ; $7c07: $3a
	ld d, b                                          ; $7c08: $50
	xor h                                            ; $7c09: $ac
	ld [hl], d                                       ; $7c0a: $72
	ccf                                              ; $7c0b: $3f
	ld c, a                                          ; $7c0c: $4f
	db $eb                                           ; $7c0d: $eb
	inc [hl]                                         ; $7c0e: $34
	ld h, e                                          ; $7c0f: $63
	ld c, h                                          ; $7c10: $4c
	and b                                            ; $7c11: $a0
	cpl                                              ; $7c12: $2f
	db $ec                                           ; $7c13: $ec
	ldh [rSCY], a                                    ; $7c14: $e0 $42
	ldh a, [$d2]                                     ; $7c16: $f0 $d2
	ld h, d                                          ; $7c18: $62
	ld [hl], d                                       ; $7c19: $72
	ccf                                              ; $7c1a: $3f
	dec a                                            ; $7c1b: $3d
	inc a                                            ; $7c1c: $3c
	ld d, b                                          ; $7c1d: $50
	ld c, b                                          ; $7c1e: $48
	add hl, bc                                       ; $7c1f: $09
	ld a, [hl-]                                      ; $7c20: $3a
	ld b, c                                          ; $7c21: $41
	ld b, d                                          ; $7c22: $42
	dec a                                            ; $7c23: $3d
	ld [hl], c                                       ; $7c24: $71
	ld b, a                                          ; $7c25: $47
	xor h                                            ; $7c26: $ac
	ld d, h                                          ; $7c27: $54
	ld b, c                                          ; $7c28: $41
	ld a, [hl-]                                      ; $7c29: $3a
	db $eb                                           ; $7c2a: $eb
	ld d, l                                          ; $7c2b: $55

jr_08d_7c2c:
	ld c, a                                          ; $7c2c: $4f
	ld b, d                                          ; $7c2d: $42
	ld b, a                                          ; $7c2e: $47
	inc de                                           ; $7c2f: $13
	ldh a, [rLCDC]                                   ; $7c30: $f0 $40
	dec sp                                           ; $7c32: $3b
	dec a                                            ; $7c33: $3d
	ld b, d                                          ; $7c34: $42
	and c                                            ; $7c35: $a1
	ld l, e                                          ; $7c36: $6b
	add d                                            ; $7c37: $82
	dec sp                                           ; $7c38: $3b
	ccf                                              ; $7c39: $3f
	ld c, [hl]                                       ; $7c3a: $4e
	ld b, d                                          ; $7c3b: $42
	xor c                                            ; $7c3c: $a9
	ret                                              ; $7c3d: $c9


	xor h                                            ; $7c3e: $ac
	ld h, h                                          ; $7c3f: $64
	inc a                                            ; $7c40: $3c
	ld a, $38                                        ; $7c41: $3e $38
	ld b, c                                          ; $7c43: $41
	db $ec                                           ; $7c44: $ec
	ret c                                            ; $7c45: $d8

	and c                                            ; $7c46: $a1

jr_08d_7c47:
	ld b, [hl]                                       ; $7c47: $46
	ld e, h                                          ; $7c48: $5c
	ld c, l                                          ; $7c49: $4d
	ld c, [hl]                                       ; $7c4a: $4e
	ld h, e                                          ; $7c4b: $63
	ld c, h                                          ; $7c4c: $4c
	xor b                                            ; $7c4d: $a8
	ld l, e                                          ; $7c4e: $6b
	ld h, d                                          ; $7c4f: $62
	ldh a, [$a4]                                     ; $7c50: $f0 $a4
	ld e, [hl]                                       ; $7c52: $5e
	ccf                                              ; $7c53: $3f
	dec a                                            ; $7c54: $3d
	ld b, d                                          ; $7c55: $42
	and c                                            ; $7c56: $a1
	ld l, e                                          ; $7c57: $6b
	ld c, a                                          ; $7c58: $4f
	ld d, c                                          ; $7c59: $51
	ld c, [hl]                                       ; $7c5a: $4e
	ld d, h                                          ; $7c5b: $54
	ld c, c                                          ; $7c5c: $49
	ld d, e                                          ; $7c5d: $53
	db $ec                                           ; $7c5e: $ec
	dec bc                                           ; $7c5f: $0b
	and b                                            ; $7c60: $a0

jr_08d_7c61:
	cpl                                              ; $7c61: $2f
	pop af                                           ; $7c62: $f1
	sub $62                                          ; $7c63: $d6 $62
	ldh a, [hDisp1_LCDC]                                     ; $7c65: $f0 $8f
	ld [hl], c                                       ; $7c67: $71
	dec a                                            ; $7c68: $3d
	ld d, b                                          ; $7c69: $50
	and c                                            ; $7c6a: $a1
	ld b, b                                          ; $7c6b: $40
	ld c, l                                          ; $7c6c: $4d
	xor $2d                                          ; $7c6d: $ee $2d
	jr c, jr_08d_7c61                                ; $7c6f: $38 $f0

	and h                                            ; $7c71: $a4
	ld e, [hl]                                       ; $7c72: $5e
	ld c, h                                          ; $7c73: $4c
	and b                                            ; $7c74: $a0
	cpl                                              ; $7c75: $2f
	di                                               ; $7c76: $f3
	ld h, l                                          ; $7c77: $65
	pop af                                           ; $7c78: $f1
	ld l, [hl]                                       ; $7c79: $6e
	ld c, d                                          ; $7c7a: $4a
	ld c, a                                          ; $7c7b: $4f
	ld [hl], d                                       ; $7c7c: $72
	dec a                                            ; $7c7d: $3d
	ld d, b                                          ; $7c7e: $50
	and c                                            ; $7c7f: $a1
	db $eb                                           ; $7c80: $eb
	ld d, e                                          ; $7c81: $53
	ld c, a                                          ; $7c82: $4f
	ld b, d                                          ; $7c83: $42
	ld [hl], d                                       ; $7c84: $72
	ccf                                              ; $7c85: $3f
	ld c, a                                          ; $7c86: $4f
	inc de                                           ; $7c87: $13
	db $eb                                           ; $7c88: $eb
	inc [hl]                                         ; $7c89: $34
	ld h, e                                          ; $7c8a: $63
	and b                                            ; $7c8b: $a0
	cpl                                              ; $7c8c: $2f
	db $ec                                           ; $7c8d: $ec
	ldh [rOBP1], a                                   ; $7c8e: $e0 $49
	xor $06                                          ; $7c90: $ee $06
	ld b, h                                          ; $7c92: $44
	inc a                                            ; $7c93: $3c
	ld d, b                                          ; $7c94: $50
	sub b                                            ; $7c95: $90
	ld a, $38                                        ; $7c96: $3e $38
	ld b, l                                          ; $7c98: $45
	add hl, bc                                       ; $7c99: $09
	ld l, e                                          ; $7c9a: $6b
	ld a, [hl-]                                      ; $7c9b: $3a
	ld b, d                                          ; $7c9c: $42
	xor c                                            ; $7c9d: $a9
	ld l, a                                          ; $7c9e: $6f
	ld b, a                                          ; $7c9f: $47
	ld c, e                                          ; $7ca0: $4b
	inc [hl]                                         ; $7ca1: $34
	ld [$63de], a                                    ; $7ca2: $ea $de $63
	and b                                            ; $7ca5: $a0
	di                                               ; $7ca6: $f3
	dec e                                            ; $7ca7: $1d
	ldh a, [rTAC]                                    ; $7ca8: $f0 $07
	ld c, c                                          ; $7caa: $49
	xor h                                            ; $7cab: $ac
	ld [hl], b                                       ; $7cac: $70
	dec a                                            ; $7cad: $3d
	jr c, jr_08d_7cf0                                ; $7cae: $38 $40

	add hl, sp                                       ; $7cb0: $39
	ld a, [hl-]                                      ; $7cb1: $3a
	ldh a, [$c6]                                     ; $7cb2: $f0 $c6
	ldh a, [c]                                       ; $7cb4: $f2
	xor d                                            ; $7cb5: $aa
	ld c, h                                          ; $7cb6: $4c
	and b                                            ; $7cb7: $a0
	cpl                                              ; $7cb8: $2f
	ld b, e                                          ; $7cb9: $43
	ld e, b                                          ; $7cba: $58
	ld b, [hl]                                       ; $7cbb: $46
	inc [hl]                                         ; $7cbc: $34
	ldh a, [rLCDC]                                   ; $7cbd: $f0 $40
	ld e, a                                          ; $7cbf: $5f
	add hl, sp                                       ; $7cc0: $39
	and b                                            ; $7cc1: $a0
	ld b, b                                          ; $7cc2: $40
	ld b, c                                          ; $7cc3: $41
	ld a, [hl-]                                      ; $7cc4: $3a
	ld b, a                                          ; $7cc5: $47
	ldh a, [$71]                                     ; $7cc6: $f0 $71
	ld d, l                                          ; $7cc8: $55
	ld c, a                                          ; $7cc9: $4f
	ld a, [hl-]                                      ; $7cca: $3a
	jr c, jr_08d_7d0b                                ; $7ccb: $38 $3e

	xor h                                            ; $7ccd: $ac
	ldh a, [rAUD4ENV]                                ; $7cce: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7cd0: $f0 $23
	ld d, l                                          ; $7cd2: $55
	ld c, a                                          ; $7cd3: $4f
	db $ec                                           ; $7cd4: $ec
	dec bc                                           ; $7cd5: $0b
	and b                                            ; $7cd6: $a0
	cpl                                              ; $7cd7: $2f
	adc l                                            ; $7cd8: $8d
	inc [hl]                                         ; $7cd9: $34
	db $ed                                           ; $7cda: $ed
	ld e, [hl]                                       ; $7cdb: $5e
	ldh a, [$71]                                     ; $7cdc: $f0 $71
	ld d, l                                          ; $7cde: $55
	ld a, [hl-]                                      ; $7cdf: $3a
	inc a                                            ; $7ce0: $3c
	dec sp                                           ; $7ce1: $3b
	dec a                                            ; $7ce2: $3d
	ld c, h                                          ; $7ce3: $4c
	add hl, bc                                       ; $7ce4: $09
	call c, Call_08d_54a8                            ; $7ce5: $dc $a8 $54
	ld b, d                                          ; $7ce8: $42
	sbc l                                            ; $7ce9: $9d
	ld d, b                                          ; $7cea: $50
	jr c, jr_08d_7d37                                ; $7ceb: $38 $4a

	db $eb                                           ; $7ced: $eb
	db $d3                                           ; $7cee: $d3
	ld h, d                                          ; $7cef: $62

jr_08d_7cf0:
	inc de                                           ; $7cf0: $13
	ldh a, [$fb]                                     ; $7cf1: $f0 $fb
	ldh a, [rLCDC]                                   ; $7cf3: $f0 $40
	ld d, b                                          ; $7cf5: $50
	ld a, [hl-]                                      ; $7cf6: $3a
	jr c, jr_08d_7d43                                ; $7cf7: $38 $4a

	db $ec                                           ; $7cf9: $ec
	push af                                          ; $7cfa: $f5
	ld h, e                                          ; $7cfb: $63
	and b                                            ; $7cfc: $a0
	sub c                                            ; $7cfd: $91
	dec a                                            ; $7cfe: $3d
	ld d, a                                          ; $7cff: $57
	sbc [hl]                                         ; $7d00: $9e
	ld c, h                                          ; $7d01: $4c
	xor h                                            ; $7d02: $ac
	ld e, b                                          ; $7d03: $58
	dec sp                                           ; $7d04: $3b
	ld e, h                                          ; $7d05: $5c
	add d                                            ; $7d06: $82
	dec sp                                           ; $7d07: $3b
	dec a                                            ; $7d08: $3d
	ld c, c                                          ; $7d09: $49
	ld h, h                                          ; $7d0a: $64

jr_08d_7d0b:
	ld d, a                                          ; $7d0b: $57
	ld b, l                                          ; $7d0c: $45
	and b                                            ; $7d0d: $a0
	ld b, b                                          ; $7d0e: $40
	ld c, l                                          ; $7d0f: $4d
	ld c, e                                          ; $7d10: $4b
	xor h                                            ; $7d11: $ac
	ld e, b                                          ; $7d12: $58
	dec sp                                           ; $7d13: $3b
	ld e, h                                          ; $7d14: $5c

jr_08d_7d15:
	add d                                            ; $7d15: $82
	dec sp                                           ; $7d16: $3b
	dec a                                            ; $7d17: $3d
	ld h, e                                          ; $7d18: $63
	and b                                            ; $7d19: $a0
	cpl                                              ; $7d1a: $2f
	ld d, c                                          ; $7d1b: $51
	ld [hl], b                                       ; $7d1c: $70
	ld d, l                                          ; $7d1d: $55
	inc [hl]                                         ; $7d1e: $34
	add e                                            ; $7d1f: $83
	ldh a, [rP1]                                     ; $7d20: $f0 $00
	ldh a, [$03]                                     ; $7d22: $f0 $03
	ld b, [hl]                                       ; $7d24: $46
	dec sp                                           ; $7d25: $3b
	dec a                                            ; $7d26: $3d
	ld b, l                                          ; $7d27: $45
	add hl, bc                                       ; $7d28: $09
	xor $1e                                          ; $7d29: $ee $1e
	pop af                                           ; $7d2b: $f1
	rst SubAFromHL                                          ; $7d2c: $d7
	ldh a, [$0d]                                     ; $7d2d: $f0 $0d
	ld c, d                                          ; $7d2f: $4a
	ldh a, [$71]                                     ; $7d30: $f0 $71
	ld d, e                                          ; $7d32: $53
	ld c, [hl]                                       ; $7d33: $4e
	ld d, h                                          ; $7d34: $54
	ld c, c                                          ; $7d35: $49
	ld d, e                                          ; $7d36: $53

jr_08d_7d37:
	inc de                                           ; $7d37: $13
	sub h                                            ; $7d38: $94
	ld a, b                                          ; $7d39: $78
	ld c, [hl]                                       ; $7d3a: $4e
	ld a, [hl-]                                      ; $7d3b: $3a
	ld b, c                                          ; $7d3c: $41
	ccf                                              ; $7d3d: $3f
	inc [hl]                                         ; $7d3e: $34
	pop af                                           ; $7d3f: $f1
	and d                                            ; $7d40: $a2
	ld a, c                                          ; $7d41: $79
	ld c, h                                          ; $7d42: $4c

jr_08d_7d43:
	and b                                            ; $7d43: $a0
	ldh a, [rAUD4ENV]                                ; $7d44: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7d46: $f0 $23
	jr c, jr_08d_7d37                                ; $7d48: $38 $ed

	ld a, h                                          ; $7d4a: $7c
	ld c, h                                          ; $7d4b: $4c
	and b                                            ; $7d4c: $a0
	cpl                                              ; $7d4d: $2f
	halt                                             ; $7d4e: $76
	ld c, e                                          ; $7d4f: $4b
	inc [hl]                                         ; $7d50: $34
	ld h, e                                          ; $7d51: $63
	ld d, a                                          ; $7d52: $57
	ld c, c                                          ; $7d53: $49
	adc e                                            ; $7d54: $8b
	ld e, h                                          ; $7d55: $5c
	ld b, h                                          ; $7d56: $44
	ld e, l                                          ; $7d57: $5d
	ld e, d                                          ; $7d58: $5a
	ld a, [hl-]                                      ; $7d59: $3a
	ld c, b                                          ; $7d5a: $48
	add hl, bc                                       ; $7d5b: $09
	ld d, d                                          ; $7d5c: $52
	inc [hl]                                         ; $7d5d: $34
	ld b, b                                          ; $7d5e: $40
	ld c, l                                          ; $7d5f: $4d
	ld c, a                                          ; $7d60: $4f
	jr c, jr_08d_7d9b                                ; $7d61: $38 $38

	ld h, e                                          ; $7d63: $63
	xor b                                            ; $7d64: $a8
	ld l, d                                          ; $7d65: $6a
	ld b, d                                          ; $7d66: $42
	pop af                                           ; $7d67: $f1
	ld [hl], a                                       ; $7d68: $77
	ld b, a                                          ; $7d69: $47
	inc de                                           ; $7d6a: $13
	sub b                                            ; $7d6b: $90
	ld a, $41                                        ; $7d6c: $3e $41
	ld c, d                                          ; $7d6e: $4a
	ld h, h                                          ; $7d6f: $64
	ld e, h                                          ; $7d70: $5c
	ld a, [hl-]                                      ; $7d71: $3a
	ld e, b                                          ; $7d72: $58
	jr c, jr_08d_7d15                                ; $7d73: $38 $a0

	pop af                                           ; $7d75: $f1
	jp nz, $f042                                     ; $7d76: $c2 $42 $f0

	ld [hl], c                                       ; $7d79: $71
	pop af                                           ; $7d7a: $f1
	ld [hl], l                                       ; $7d7b: $75
	ld h, d                                          ; $7d7c: $62
	ldh a, [$2d]                                     ; $7d7d: $f0 $2d
	dec sp                                           ; $7d7f: $3b
	dec a                                            ; $7d80: $3d
	ld d, b                                          ; $7d81: $50
	xor h                                            ; $7d82: $ac
	adc e                                            ; $7d83: $8b
	ld e, h                                          ; $7d84: $5c
	ld e, e                                          ; $7d85: $5b
	ld d, [hl]                                       ; $7d86: $56
	ld a, [hl-]                                      ; $7d87: $3a
	ld d, l                                          ; $7d88: $55
	ld a, [hl-]                                      ; $7d89: $3a
	ld c, [hl]                                       ; $7d8a: $4e
	ld h, e                                          ; $7d8b: $63
	and b                                            ; $7d8c: $a0
	ld b, b                                          ; $7d8d: $40
	ld c, l                                          ; $7d8e: $4d
	ld c, e                                          ; $7d8f: $4b
	xor h                                            ; $7d90: $ac
	ld b, [hl]                                       ; $7d91: $46
	ld a, [hl-]                                      ; $7d92: $3a
	dec a                                            ; $7d93: $3d
	ld b, d                                          ; $7d94: $42
	ldh a, [$6f]                                     ; $7d95: $f0 $6f
	ldh a, [$0b]                                     ; $7d97: $f0 $0b
	ld c, h                                          ; $7d99: $4c
	and b                                            ; $7d9a: $a0

jr_08d_7d9b:
	ld l, a                                          ; $7d9b: $6f
	ld b, d                                          ; $7d9c: $42
	xor $2a                                          ; $7d9d: $ee $2a
	ld b, d                                          ; $7d9f: $42
	ldh a, [$38]                                     ; $7da0: $f0 $38
	ld d, e                                          ; $7da2: $53
	xor h                                            ; $7da3: $ac
	add e                                            ; $7da4: $83
	ldh a, [rP1]                                     ; $7da5: $f0 $00
	ldh a, [$03]                                     ; $7da7: $f0 $03
	ld d, e                                          ; $7da9: $53
	ld b, [hl]                                       ; $7daa: $46
	ld c, [hl]                                       ; $7dab: $4e
	ld h, e                                          ; $7dac: $63
	and b                                            ; $7dad: $a0
	cpl                                              ; $7dae: $2f
	ld b, b                                          ; $7daf: $40
	ld c, l                                          ; $7db0: $4d
	ld c, e                                          ; $7db1: $4b
	inc [hl]                                         ; $7db2: $34
	ldh a, [rAUD4ENV]                                ; $7db3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7db5: $f0 $23
	ld b, b                                          ; $7db7: $40
	add hl, sp                                       ; $7db8: $39
	ld b, h                                          ; $7db9: $44
	ld c, h                                          ; $7dba: $4c
	add hl, bc                                       ; $7dbb: $09
	ld l, d                                          ; $7dbc: $6a
	ldh a, [$0d]                                     ; $7dbd: $f0 $0d
	inc [hl]                                         ; $7dbf: $34
	ld [hl], d                                       ; $7dc0: $72
	adc c                                            ; $7dc1: $89
	ld b, a                                          ; $7dc2: $47
	inc de                                           ; $7dc3: $13
	ld a, b                                          ; $7dc4: $78
	ld a, [hl-]                                      ; $7dc5: $3a
	ld e, b                                          ; $7dc6: $58
	jr c, jr_08d_7dfe                                ; $7dc7: $38 $35

jr_08d_7dc9:
	ldh a, [c]                                       ; $7dc9: $f2
	ld a, b                                          ; $7dca: $78
	ldh a, [$8a]                                     ; $7dcb: $f0 $8a
	ld d, c                                          ; $7dcd: $51
	ld c, [hl]                                       ; $7dce: $4e
	ld h, e                                          ; $7dcf: $63
	and b                                            ; $7dd0: $a0
	cpl                                              ; $7dd1: $2f
	ld b, b                                          ; $7dd2: $40
	ld b, c                                          ; $7dd3: $41
	ld a, [hl-]                                      ; $7dd4: $3a
	inc [hl]                                         ; $7dd5: $34
	pop af                                           ; $7dd6: $f1
	adc $3a                                          ; $7dd7: $ce $3a
	jr c, jr_08d_7dc9                                ; $7dd9: $38 $ee

	ld a, [hl+]                                      ; $7ddb: $2a
	pop af                                           ; $7ddc: $f1
	jr nc, jr_08d_7e50                               ; $7ddd: $30 $71

	ld e, a                                          ; $7ddf: $5f
	ld b, l                                          ; $7de0: $45
	add hl, bc                                       ; $7de1: $09
	ld b, [hl]                                       ; $7de2: $46
	ld a, [hl-]                                      ; $7de3: $3a
	dec a                                            ; $7de4: $3d
	ld b, a                                          ; $7de5: $47
	ld c, e                                          ; $7de6: $4b
	xor h                                            ; $7de7: $ac
	db $ed                                           ; $7de8: $ed
	ld a, a                                          ; $7de9: $7f
	ld a, [hl-]                                      ; $7dea: $3a
	jr c, jr_08d_7e50                                ; $7deb: $38 $63

	and b                                            ; $7ded: $a0
	cpl                                              ; $7dee: $2f
	rst JumpTable                                          ; $7def: $c7
	ld a, [hl-]                                      ; $7df0: $3a
	ld b, c                                          ; $7df1: $41
	ld b, h                                          ; $7df2: $44
	add hl, bc                                       ; $7df3: $09
	db $ec                                           ; $7df4: $ec
	db $f4                                           ; $7df5: $f4
	xor b                                            ; $7df6: $a8
	db $ed                                           ; $7df7: $ed
	ld a, [de]                                       ; $7df8: $1a
	ld b, a                                          ; $7df9: $47
	ld e, h                                          ; $7dfa: $5c
	dec a                                            ; $7dfb: $3d
	ld d, b                                          ; $7dfc: $50
	and c                                            ; $7dfd: $a1

jr_08d_7dfe:
	ld e, b                                          ; $7dfe: $58
	ld b, [hl]                                       ; $7dff: $46
	inc [hl]                                         ; $7e00: $34
	ld e, b                                          ; $7e01: $58
	dec sp                                           ; $7e02: $3b
	ld e, b                                          ; $7e03: $58
	ld c, c                                          ; $7e04: $49
	ldh a, [rLCDC]                                   ; $7e05: $f0 $40
	ld c, [hl]                                       ; $7e07: $4e
	ld h, e                                          ; $7e08: $63
	ld b, l                                          ; $7e09: $45
	and b                                            ; $7e0a: $a0
	ret                                              ; $7e0b: $c9


	xor h                                            ; $7e0c: $ac
	db $eb                                           ; $7e0d: $eb
	dec h                                            ; $7e0e: $25
	ld b, a                                          ; $7e0f: $47
	inc de                                           ; $7e10: $13
	push af                                          ; $7e11: $f5
	ld b, b                                          ; $7e12: $40
	ld e, l                                          ; $7e13: $5d
	ld c, [hl]                                       ; $7e14: $4e
	ld h, e                                          ; $7e15: $63
	ld c, h                                          ; $7e16: $4c
	and b                                            ; $7e17: $a0
	cpl                                              ; $7e18: $2f
	ld e, [hl]                                       ; $7e19: $5e
	dec sp                                           ; $7e1a: $3b
	ld [hl], $40                                     ; $7e1b: $36 $40
	add hl, sp                                       ; $7e1d: $39
	and c                                            ; $7e1e: $a1
	db $ec                                           ; $7e1f: $ec
	db $f4                                           ; $7e20: $f4
	xor b                                            ; $7e21: $a8
	xor $17                                          ; $7e22: $ee $17
	ld a, $3f                                        ; $7e24: $3e $3f
	ld l, h                                          ; $7e26: $6c
	ld c, l                                          ; $7e27: $4d
	ld a, e                                          ; $7e28: $7b
	ldh a, [rTAC]                                    ; $7e29: $f0 $07
	inc a                                            ; $7e2b: $3c
	ld c, [hl]                                       ; $7e2c: $4e
	ld h, e                                          ; $7e2d: $63
	and b                                            ; $7e2e: $a0
	cpl                                              ; $7e2f: $2f
	ld b, b                                          ; $7e30: $40
	ld b, c                                          ; $7e31: $41
	ld a, [hl-]                                      ; $7e32: $3a
	ld d, h                                          ; $7e33: $54
	ld c, c                                          ; $7e34: $49
	ld a, [hl-]                                      ; $7e35: $3a
	jr c, jr_08d_7e7d                                ; $7e36: $38 $45

	add hl, bc                                       ; $7e38: $09
	ld b, [hl]                                       ; $7e39: $46
	ld a, [hl-]                                      ; $7e3a: $3a
	dec a                                            ; $7e3b: $3d
	ldh a, [c]                                       ; $7e3c: $f2
	ld e, d                                          ; $7e3d: $5a
	ldh a, [c]                                       ; $7e3e: $f2
	ld e, e                                          ; $7e3f: $5b
	db $f4                                           ; $7e40: $f4
	sub d                                            ; $7e41: $92
	ld b, a                                          ; $7e42: $47
	inc de                                           ; $7e43: $13
	ldh a, [rLCDC]                                   ; $7e44: $f0 $40
	dec sp                                           ; $7e46: $3b
	dec a                                            ; $7e47: $3d
	ld d, h                                          ; $7e48: $54
	ld c, c                                          ; $7e49: $49
	ld b, [hl]                                       ; $7e4a: $46
	ld c, [hl]                                       ; $7e4b: $4e
	ld b, d                                          ; $7e4c: $42
	and c                                            ; $7e4d: $a1
	cpl                                              ; $7e4e: $2f
	ld c, d                                          ; $7e4f: $4a

jr_08d_7e50:
	ld c, a                                          ; $7e50: $4f
	inc [hl]                                         ; $7e51: $34
	cp e                                             ; $7e52: $bb
	ld b, l                                          ; $7e53: $45
	add hl, bc                                       ; $7e54: $09
	ld d, d                                          ; $7e55: $52
	inc [hl]                                         ; $7e56: $34
	ld b, b                                          ; $7e57: $40
	ld c, l                                          ; $7e58: $4d
	ld c, e                                          ; $7e59: $4b
	ld b, b                                          ; $7e5a: $40
	add hl, sp                                       ; $7e5b: $39
	ld b, h                                          ; $7e5c: $44
	ld e, l                                          ; $7e5d: $5d
	ld e, d                                          ; $7e5e: $5a
	and b                                            ; $7e5f: $a0
	ld d, h                                          ; $7e60: $54
	ld b, c                                          ; $7e61: $41
	ld a, [hl-]                                      ; $7e62: $3a
	ldh a, [$c6]                                     ; $7e63: $f0 $c6
	ldh a, [c]                                       ; $7e65: $f2
	xor d                                            ; $7e66: $aa
	ld c, d                                          ; $7e67: $4a
	xor h                                            ; $7e68: $ac
	ld b, h                                          ; $7e69: $44
	ld d, d                                          ; $7e6a: $52
	ld e, b                                          ; $7e6b: $58
	ld c, l                                          ; $7e6c: $4d
	ld c, [hl]                                       ; $7e6d: $4e
	db $ed                                           ; $7e6e: $ed
	ld e, l                                          ; $7e6f: $5d
	ld d, e                                          ; $7e70: $53
	inc de                                           ; $7e71: $13
	ldh a, [c]                                       ; $7e72: $f2
	add h                                            ; $7e73: $84
	ldh a, [$d9]                                     ; $7e74: $f0 $d9
	dec a                                            ; $7e76: $3d
	ld a, $38                                        ; $7e77: $3e $38
	ld h, e                                          ; $7e79: $63
	and b                                            ; $7e7a: $a0

jr_08d_7e7b:
	cpl                                              ; $7e7b: $2f
	db $ed                                           ; $7e7c: $ed

jr_08d_7e7d:
	ld d, a                                          ; $7e7d: $57
	ldh a, [$65]                                     ; $7e7e: $f0 $65
	ldh a, [$75]                                     ; $7e80: $f0 $75
	ld d, e                                          ; $7e82: $53
	ldh a, [$5c]                                     ; $7e83: $f0 $5c
	inc a                                            ; $7e85: $3c
	dec sp                                           ; $7e86: $3b
	dec a                                            ; $7e87: $3d

jr_08d_7e88:
	ld b, c                                          ; $7e88: $41
	ld b, h                                          ; $7e89: $44
	ld b, l                                          ; $7e8a: $45
	add hl, bc                                       ; $7e8b: $09
	call c, Call_08d_40a8                            ; $7e8c: $dc $a8 $40
	ld b, d                                          ; $7e8f: $42
	ldh a, [rOCPS]                                   ; $7e90: $f0 $6a
	ld d, a                                          ; $7e92: $57
	ld b, l                                          ; $7e93: $45
	and b                                            ; $7e94: $a0
	cpl                                              ; $7e95: $2f
	ldh a, [$34]                                     ; $7e96: $f0 $34
	ld b, a                                          ; $7e98: $47
	ld a, [hl]                                       ; $7e99: $7e
	jr c, jr_08d_7e88                                ; $7e9a: $38 $ec

	ret c                                            ; $7e9c: $d8

	add hl, bc                                       ; $7e9d: $09
	ld a, [hl]                                       ; $7e9e: $7e
	ld d, l                                          ; $7e9f: $55
	ld a, [hl-]                                      ; $7ea0: $3a
	jr c, jr_08d_7f06                                ; $7ea1: $38 $63

	xor b                                            ; $7ea3: $a8
	ld d, h                                          ; $7ea4: $54
	ld b, d                                          ; $7ea5: $42
	ld l, a                                          ; $7ea6: $6f
	ld d, e                                          ; $7ea7: $53
	ld d, h                                          ; $7ea8: $54
	ld b, c                                          ; $7ea9: $41
	ld a, [hl-]                                      ; $7eaa: $3a
	ldh a, [$c6]                                     ; $7eab: $f0 $c6
	ldh a, [c]                                       ; $7ead: $f2
	xor d                                            ; $7eae: $aa
	ld b, a                                          ; $7eaf: $47
	ld c, b                                          ; $7eb0: $48
	and b                                            ; $7eb1: $a0
	cpl                                              ; $7eb2: $2f
	ldh a, [rLCDC]                                   ; $7eb3: $f0 $40
	dec sp                                           ; $7eb5: $3b
	ccf                                              ; $7eb6: $3f
	ld c, [hl]                                       ; $7eb7: $4e
	ldh a, [$78]                                     ; $7eb8: $f0 $78
	ldh a, [$f4]                                     ; $7eba: $f0 $f4
	ld b, a                                          ; $7ebc: $47
	ld a, [hl-]                                      ; $7ebd: $3a
	dec sp                                           ; $7ebe: $3b
	dec a                                            ; $7ebf: $3d
	ld b, c                                          ; $7ec0: $41
	ld b, h                                          ; $7ec1: $44
	add hl, bc                                       ; $7ec2: $09
	add hl, sp                                       ; $7ec3: $39
	inc [hl]                                         ; $7ec4: $34
	ld [$48ce], a                                    ; $7ec5: $ea $ce $48
	and b                                            ; $7ec8: $a0
	db $ec                                           ; $7ec9: $ec
	reti                                             ; $7eca: $d9


	db $eb                                           ; $7ecb: $eb
	ld d, e                                          ; $7ecc: $53
	ld h, e                                          ; $7ecd: $63
	xor b                                            ; $7ece: $a8
	db $ec                                           ; $7ecf: $ec
	ld [hl-], a                                      ; $7ed0: $32
	and b                                            ; $7ed1: $a0
	cpl                                              ; $7ed2: $2f
	ld b, e                                          ; $7ed3: $43
	db $ec                                           ; $7ed4: $ec
	add hl, bc                                       ; $7ed5: $09
	ld a, b                                          ; $7ed6: $78
	dec a                                            ; $7ed7: $3d
	ld b, d                                          ; $7ed8: $42
	ld b, a                                          ; $7ed9: $47
	and b                                            ; $7eda: $a0
	ret                                              ; $7edb: $c9


	inc [hl]                                         ; $7edc: $34
	sbc c                                            ; $7edd: $99
	dec sp                                           ; $7ede: $3b
	ccf                                              ; $7edf: $3f
	xor b                                            ; $7ee0: $a8
	ldh a, [rAUD2LEN]                                ; $7ee1: $f0 $16
	ld h, d                                          ; $7ee3: $62
	ld [hl], a                                       ; $7ee4: $77
	jr c, jr_08d_7e7b                                ; $7ee5: $38 $94

	ld a, $3d                                        ; $7ee7: $3e $3d
	ld h, e                                          ; $7ee9: $63
	and b                                            ; $7eea: $a0
	cpl                                              ; $7eeb: $2f
	ld b, e                                          ; $7eec: $43
	db $ec                                           ; $7eed: $ec
	ldh [$ac], a                                     ; $7eee: $e0 $ac
	add sp, -$0e                                     ; $7ef0: $e8 $f2
	ld c, b                                          ; $7ef2: $48
	and c                                            ; $7ef3: $a1
	sbc c                                            ; $7ef4: $99
	dec a                                            ; $7ef5: $3d
	ld a, c                                          ; $7ef6: $79
	ldh [$a8], a                                     ; $7ef7: $e0 $a8
	ld [$a0a0], a                                    ; $7ef9: $ea $a0 $a0
	dec a                                            ; $7efc: $3d
	inc [hl]                                         ; $7efd: $34
	add a                                            ; $7efe: $87
	ldh a, [$5d]                                     ; $7eff: $f0 $5d
	ld b, h                                          ; $7f01: $44
	xor b                                            ; $7f02: $a8
	db $ec                                           ; $7f03: $ec
	ld e, h                                          ; $7f04: $5c
	ld d, e                                          ; $7f05: $53

jr_08d_7f06:
	ld a, a                                          ; $7f06: $7f
	pop af                                           ; $7f07: $f1
	ld a, [de]                                       ; $7f08: $1a
	ld a, $3f                                        ; $7f09: $3e $3f
	ld c, [hl]                                       ; $7f0b: $4e
	sub a                                            ; $7f0c: $97
	and b                                            ; $7f0d: $a0
	cpl                                              ; $7f0e: $2f
	ld b, e                                          ; $7f0f: $43
	ld l, e                                          ; $7f10: $6b
	inc a                                            ; $7f11: $3c
	inc [hl]                                         ; $7f12: $34
	db $ed                                           ; $7f13: $ed
	ld [hl], b                                       ; $7f14: $70
	di                                               ; $7f15: $f3
	xor h                                            ; $7f16: $ac
	ld c, d                                          ; $7f17: $4a
	inc de                                           ; $7f18: $13
	di                                               ; $7f19: $f3
	ld d, $38                                        ; $7f1a: $16 $38
	ld c, d                                          ; $7f1c: $4a
	ld c, [hl]                                       ; $7f1d: $4e
	ld l, h                                          ; $7f1e: $6c
	dec a                                            ; $7f1f: $3d
	jr c, jr_08d_7f66                                ; $7f20: $38 $44

	ld e, l                                          ; $7f22: $5d
	ld e, d                                          ; $7f23: $5a
	ld c, b                                          ; $7f24: $48
	and b                                            ; $7f25: $a0
	db $ed                                           ; $7f26: $ed
	ld a, a                                          ; $7f27: $7f
	ld a, [hl-]                                      ; $7f28: $3a
	jr c, jr_08d_7f8e                                ; $7f29: $38 $63

	xor b                                            ; $7f2b: $a8
	ldh a, [$0a]                                     ; $7f2c: $f0 $0a
	ld d, l                                          ; $7f2e: $55
	inc [hl]                                         ; $7f2f: $34
	ld h, a                                          ; $7f30: $67
	ld d, l                                          ; $7f31: $55
	ld h, e                                          ; $7f32: $63
	ld b, l                                          ; $7f33: $45
	and b                                            ; $7f34: $a0
	cpl                                              ; $7f35: $2f
	ld [hl-], a                                      ; $7f36: $32
	db $ec                                           ; $7f37: $ec
	ldh [$a8], a                                     ; $7f38: $e0 $a8
	ld l, e                                          ; $7f3a: $6b
	ld l, [hl]                                       ; $7f3b: $6e
	dec sp                                           ; $7f3c: $3b
	db $ec                                           ; $7f3d: $ec
	add hl, de                                       ; $7f3e: $19
	ld e, a                                          ; $7f3f: $5f
	add hl, sp                                       ; $7f40: $39
	ld [hl], $33                                     ; $7f41: $36 $33
	add hl, bc                                       ; $7f43: $09
	ld l, e                                          ; $7f44: $6b
	inc a                                            ; $7f45: $3c
	ld l, [hl]                                       ; $7f46: $6e
	dec sp                                           ; $7f47: $3b
	ccf                                              ; $7f48: $3f
	ld c, [hl]                                       ; $7f49: $4e
	ld h, e                                          ; $7f4a: $63
	ld c, h                                          ; $7f4b: $4c
	and b                                            ; $7f4c: $a0
	cpl                                              ; $7f4d: $2f
	ld [$acc9], a                                    ; $7f4e: $ea $c9 $ac
	db $ed                                           ; $7f51: $ed
	ld d, a                                          ; $7f52: $57
	db $ec                                           ; $7f53: $ec
	dec e                                            ; $7f54: $1d
	ld h, d                                          ; $7f55: $62
	inc de                                           ; $7f56: $13
	ld [$a33f], a                                    ; $7f57: $ea $3f $a3
	cpl                                              ; $7f5a: $2f
	jp hl                                            ; $7f5b: $e9


	ld sp, $f109                                     ; $7f5c: $31 $09 $f1
	inc de                                           ; $7f5f: $13
	ld a, a                                          ; $7f60: $7f
	ld b, d                                          ; $7f61: $42
	ldh a, [rAUD1LOW]                                ; $7f62: $f0 $13
	ldh a, [$af]                                     ; $7f64: $f0 $af

jr_08d_7f66:
	push af                                          ; $7f66: $f5
	rst $38                                          ; $7f67: $ff
	jr c, jr_08d_7fb6                                ; $7f68: $38 $4c

	xor b                                            ; $7f6a: $a8
	ld c, a                                          ; $7f6b: $4f
	dec sp                                           ; $7f6c: $3b
	ld c, c                                          ; $7f6d: $49
	inc [hl]                                         ; $7f6e: $34
	ldh a, [$2d]                                     ; $7f6f: $f0 $2d
	pop af                                           ; $7f71: $f1
	inc bc                                           ; $7f72: $03
	ld a, [hl-]                                      ; $7f73: $3a
	ldh a, [$2c]                                     ; $7f74: $f0 $2c
	ld h, d                                          ; $7f76: $62
	inc de                                           ; $7f77: $13
	di                                               ; $7f78: $f3
	ld a, [de]                                       ; $7f79: $1a
	dec sp                                           ; $7f7a: $3b
	ccf                                              ; $7f7b: $3f
	db $ec                                           ; $7f7c: $ec
	push af                                          ; $7f7d: $f5
	ld h, e                                          ; $7f7e: $63
	and b                                            ; $7f7f: $a0
	db $ed                                           ; $7f80: $ed
	ld h, c                                          ; $7f81: $61
	ld [hl], d                                       ; $7f82: $72
	ccf                                              ; $7f83: $3f
	ld c, a                                          ; $7f84: $4f
	inc de                                           ; $7f85: $13
	ldh a, [rAUD1LOW]                                ; $7f86: $f0 $13
	ldh a, [$af]                                     ; $7f88: $f0 $af
	ld a, [hl-]                                      ; $7f8a: $3a
	db $ec                                           ; $7f8b: $ec
	dec e                                            ; $7f8c: $1d
	ld c, h                                          ; $7f8d: $4c

jr_08d_7f8e:
	and b                                            ; $7f8e: $a0
	cpl                                              ; $7f8f: $2f
	ld b, e                                          ; $7f90: $43
	xor $10                                          ; $7f91: $ee $10
	xor b                                            ; $7f93: $a8
	rst JumpTable                                          ; $7f94: $c7
	ld b, h                                          ; $7f95: $44
	ld c, h                                          ; $7f96: $4c
	xor b                                            ; $7f97: $a8
	ld [hl-], a                                      ; $7f98: $32
	adc e                                            ; $7f99: $8b
	ld e, h                                          ; $7f9a: $5c
	db $ec                                           ; $7f9b: $ec
	ret c                                            ; $7f9c: $d8

	ld l, h                                          ; $7f9d: $6c
	dec a                                            ; $7f9e: $3d
	jr c, jr_08d_7fe9                                ; $7f9f: $38 $48

	and e                                            ; $7fa1: $a3
	cpl                                              ; $7fa2: $2f
	add sp, -$26                                     ; $7fa3: $e8 $da
	add hl, bc                                       ; $7fa5: $09
	cpl                                              ; $7fa6: $2f
	ld b, e                                          ; $7fa7: $43
	ld b, b                                          ; $7fa8: $40
	add hl, sp                                       ; $7fa9: $39
	ld b, h                                          ; $7faa: $44
	ld c, h                                          ; $7fab: $4c
	xor b                                            ; $7fac: $a8
	db $eb                                           ; $7fad: $eb
	ld d, d                                          ; $7fae: $52
	inc a                                            ; $7faf: $3c
	and c                                            ; $7fb0: $a1
	ldh a, [rAUD2LOW]                                ; $7fb1: $f0 $18
	ldh a, [$dc]                                     ; $7fb3: $f0 $dc
	ld b, d                                          ; $7fb5: $42

jr_08d_7fb6:
	ld e, d                                          ; $7fb6: $5a
	ld d, h                                          ; $7fb7: $54
	ld d, e                                          ; $7fb8: $53
	inc de                                           ; $7fb9: $13
	ldh a, [rAUD4ENV]                                ; $7fba: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7fbc: $f0 $23
	jr c, @+$44                                      ; $7fbe: $38 $42

	and c                                            ; $7fc0: $a1
	cpl                                              ; $7fc1: $2f
	db $ec                                           ; $7fc2: $ec
	ldh [rWX], a                                     ; $7fc3: $e0 $4b
	ldh a, [$64]                                     ; $7fc5: $f0 $64
	jr c, @+$3c                                      ; $7fc7: $38 $3a

	ld b, d                                          ; $7fc9: $42
	and c                                            ; $7fca: $a1
	ld l, a                                          ; $7fcb: $6f
	ld d, e                                          ; $7fcc: $53
	ldh a, [rAUD4ENV]                                ; $7fcd: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7fcf: $f0 $23
	jr c, @+$4b                                      ; $7fd1: $38 $49

	ld [hl], a                                       ; $7fd3: $77
	add hl, sp                                       ; $7fd4: $39
	inc de                                           ; $7fd5: $13
	di                                               ; $7fd6: $f3
	sub $f0                                          ; $7fd7: $d6 $f0
	ld d, a                                          ; $7fd9: $57
	ld d, e                                          ; $7fda: $53
	db $ec                                           ; $7fdb: $ec
	dec bc                                           ; $7fdc: $0b
	and b                                            ; $7fdd: $a0
	ld d, h                                          ; $7fde: $54
	ld b, c                                          ; $7fdf: $41
	ld a, [hl-]                                      ; $7fe0: $3a
	xor h                                            ; $7fe1: $ac
	pop af                                           ; $7fe2: $f1
	rst AddAOntoHL                                          ; $7fe3: $ef
	ld d, e                                          ; $7fe4: $53
	ld e, l                                          ; $7fe5: $5d
	db $ec                                           ; $7fe6: $ec
	ret c                                            ; $7fe7: $d8

	ld c, a                                          ; $7fe8: $4f

jr_08d_7fe9:
	ld b, d                                          ; $7fe9: $42
	ld [hl], d                                       ; $7fea: $72
	ccf                                              ; $7feb: $3f
	ld c, a                                          ; $7fec: $4f
	xor h                                            ; $7fed: $ac
	db $eb                                           ; $7fee: $eb
	ld d, e                                          ; $7fef: $53
	ld h, e                                          ; $7ff0: $63
	and b                                            ; $7ff1: $a0
	call c, $f0a8                                    ; $7ff2: $dc $a8 $f0
	ld h, h                                          ; $7ff5: $64
	jr c, @+$47                                      ; $7ff6: $38 $45

	and b                                            ; $7ff8: $a0
	cpl                                              ; $7ff9: $2f
	ldh a, [$34]                                     ; $7ffa: $f0 $34
	ld b, a                                          ; $7ffc: $47
	inc [hl]                                         ; $7ffd: $34
	ldh a, [rAUD4ENV]                                ; $7ffe: $f0 $21
