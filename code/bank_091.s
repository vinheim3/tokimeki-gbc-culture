; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $091", ROMX[$4000], BANK[$91]

jr_091_4000:
	ld d, h                                          ; $4000: $54
	add hl, sp                                       ; $4001: $39
	inc a                                            ; $4002: $3c
	and c                                            ; $4003: $a1
	ld b, [hl]                                       ; $4004: $46
	ld d, a                                          ; $4005: $57
	ld d, e                                          ; $4006: $53
	ld c, c                                          ; $4007: $49
	add hl, sp                                       ; $4008: $39
	xor b                                            ; $4009: $a8
	ret                                              ; $400a: $c9


	ldh a, [hDisp1_LCDC]                                     ; $400b: $f0 $8f
	ld [hl], c                                       ; $400d: $71
	ld a, e                                          ; $400e: $7b
	add a                                            ; $400f: $87
	ldh a, [$5b]                                     ; $4010: $f0 $5b
	ldh a, [$5e]                                     ; $4012: $f0 $5e
	ld b, l                                          ; $4014: $45
	and b                                            ; $4015: $a0
	cpl                                              ; $4016: $2f
	pop af                                           ; $4017: $f1
	cp e                                             ; $4018: $bb
	ld e, [hl]                                       ; $4019: $5e
	ldh a, [$38]                                     ; $401a: $f0 $38
	ld d, e                                          ; $401c: $53
	pop af                                           ; $401d: $f1
	cp [hl]                                          ; $401e: $be
	ld d, a                                          ; $401f: $57
	ld a, [hl-]                                      ; $4020: $3a
	db $38, $97                                      ; $4021: $38 $97
	add hl, bc                                       ; $4023: $09
	jp hl                                            ; $4024: $e9


	and h                                            ; $4025: $a4
	xor b                                            ; $4026: $a8
	ld c, a                                          ; $4027: $4f
	dec sp                                           ; $4028: $3b
	ld c, c                                          ; $4029: $49
	ldh a, [c]                                       ; $402a: $f2
	and l                                            ; $402b: $a5
	pop af                                           ; $402c: $f1
	dec hl                                           ; $402d: $2b
	ld a, $52                                        ; $402e: $3e $52
	ld d, c                                          ; $4030: $51
	ld c, b                                          ; $4031: $48
	and b                                            ; $4032: $a0
	cpl                                              ; $4033: $2f
	halt                                             ; $4034: $76
	ld c, a                                          ; $4035: $4f
	ld c, b                                          ; $4036: $48
	add hl, bc                                       ; $4037: $09
	ld b, b                                          ; $4038: $40
	ld d, h                                          ; $4039: $54
	ld b, d                                          ; $403a: $42
	db $ed                                           ; $403b: $ed
	ld a, [bc]                                       ; $403c: $0a
	ld c, d                                          ; $403d: $4a
	ldh a, [hDisp1_LCDC]                                     ; $403e: $f0 $8f
	ld c, a                                          ; $4040: $4f
	add hl, sp                                       ; $4041: $39
	ld b, l                                          ; $4042: $45
	and b                                            ; $4043: $a0
	ret nc                                           ; $4044: $d0

	and b                                            ; $4045: $a0
	cpl                                              ; $4046: $2f
	ld b, e                                          ; $4047: $43
	db $dd                                           ; $4048: $dd
	ld e, e                                          ; $4049: $5b
	ld d, [hl]                                       ; $404a: $56
	ld b, [hl]                                       ; $404b: $46
	ld h, a                                          ; $404c: $67
	ld d, h                                          ; $404d: $54
	add hl, sp                                       ; $404e: $39
	and b                                            ; $404f: $a0
	ld b, c                                          ; $4050: $41
	xor c                                            ; $4051: $a9
	ld [$a122], a                                    ; $4052: $ea $22 $a1
	ld l, [hl]                                       ; $4055: $6e
	inc [hl]                                         ; $4056: $34
	ld l, [hl]                                       ; $4057: $6e
	ld a, e                                          ; $4058: $7b
	ld e, c                                          ; $4059: $59
	ld c, b                                          ; $405a: $48
	and b                                            ; $405b: $a0
	cpl                                              ; $405c: $2f
	ld b, e                                          ; $405d: $43
	ld [hl], $a1                                     ; $405e: $36 $a1
	jp hl                                            ; $4060: $e9


	and h                                            ; $4061: $a4
	scf                                              ; $4062: $37
	inc de                                           ; $4063: $13
	db $ed                                           ; $4064: $ed
	ld hl, sp-$12                                    ; $4065: $f8 $ee
	rlca                                             ; $4067: $07
	ld h, d                                          ; $4068: $62
	ld [hl], a                                       ; $4069: $77
	jr c, jr_091_4000                                ; $406a: $38 $94

	ld a, $3d                                        ; $406c: $3e $3d
	ld b, d                                          ; $406e: $42
	scf                                              ; $406f: $37
	inc de                                           ; $4070: $13
	db $ec                                           ; $4071: $ec
	dec h                                            ; $4072: $25
	inc [hl]                                         ; $4073: $34
	db $ed                                           ; $4074: $ed
	ld d, a                                          ; $4075: $57
	ldh a, [rHDMA5]                                  ; $4076: $f0 $55
	ldh a, [rBCPS]                                   ; $4078: $f0 $68
	ld d, c                                          ; $407a: $51
	ld c, [hl]                                       ; $407b: $4e
	ld c, h                                          ; $407c: $4c
	and b                                            ; $407d: $a0
	cpl                                              ; $407e: $2f
	ld b, e                                          ; $407f: $43
	ld e, [hl]                                       ; $4080: $5e
	dec sp                                           ; $4081: $3b
	ld [hl], $6b                                     ; $4082: $36 $6b
	ld c, d                                          ; $4084: $4a
	xor c                                            ; $4085: $a9
	db $eb                                           ; $4086: $eb
	rst FarCall                                          ; $4087: $f7
	and c                                            ; $4088: $a1
	sbc $eb                                          ; $4089: $de $eb
	ccf                                              ; $408b: $3f
	xor b                                            ; $408c: $a8
	pop af                                           ; $408d: $f1
	ld d, $53                                        ; $408e: $16 $53
	ld a, [hl-]                                      ; $4090: $3a
	jr c, jr_091_40dc                                ; $4091: $38 $49

	ld c, b                                          ; $4093: $48
	and b                                            ; $4094: $a0
	ld b, [hl]                                       ; $4095: $46
	ld e, c                                          ; $4096: $59
	dec sp                                           ; $4097: $3b
	scf                                              ; $4098: $37
	scf                                              ; $4099: $37
	inc de                                           ; $409a: $13
	xor $0a                                          ; $409b: $ee $0a
	ld h, c                                          ; $409d: $61
	ld d, [hl]                                       ; $409e: $56
	pop af                                           ; $409f: $f1
	dec [hl]                                         ; $40a0: $35
	ld b, c                                          ; $40a1: $41
	and d                                            ; $40a2: $a2
	jr c, jr_091_40df                                ; $40a3: $38 $3a

	jr c, jr_091_40df                                ; $40a5: $38 $38

	ld a, [hl-]                                      ; $40a7: $3a
	jr c, jr_091_40f3                                ; $40a8: $38 $49

	ld [hl], a                                       ; $40aa: $77
	dec sp                                           ; $40ab: $3b
	dec a                                            ; $40ac: $3d
	ld d, b                                          ; $40ad: $50
	xor h                                            ; $40ae: $ac
	ld d, h                                          ; $40af: $54
	ld b, c                                          ; $40b0: $41
	ld a, [hl-]                                      ; $40b1: $3a
	ldh a, [$28]                                     ; $40b2: $f0 $28
	ld b, a                                          ; $40b4: $47
	jr c, jr_091_4105                                ; $40b5: $38 $4e

	ld b, c                                          ; $40b7: $41
	ld b, h                                          ; $40b8: $44
	ld c, a                                          ; $40b9: $4f
	ld b, c                                          ; $40ba: $41
	ld a, [hl-]                                      ; $40bb: $3a
	ld [hl], h                                       ; $40bc: $74
	and b                                            ; $40bd: $a0
	ld b, [hl]                                       ; $40be: $46
	ld h, c                                          ; $40bf: $61
	ld d, [hl]                                       ; $40c0: $56
	ld e, c                                          ; $40c1: $59
	ld c, b                                          ; $40c2: $48
	and b                                            ; $40c3: $a0
	pop af                                           ; $40c4: $f1
	sbc $4e                                          ; $40c5: $de $4e
	ld b, l                                          ; $40c7: $45
	pop af                                           ; $40c8: $f1
	dec [hl]                                         ; $40c9: $35
	xor b                                            ; $40ca: $a8
	db $ec                                           ; $40cb: $ec
	ld e, h                                          ; $40cc: $5c
	ld d, e                                          ; $40cd: $53
	jr c, jr_091_410a                                ; $40ce: $38 $3a

	ld e, h                                          ; $40d0: $5c
	ld d, [hl]                                       ; $40d1: $56
	inc de                                           ; $40d2: $13
	ldh a, [$bb]                                     ; $40d3: $f0 $bb
	ld d, d                                          ; $40d5: $52
	ld d, b                                          ; $40d6: $50
	ld a, [hl-]                                      ; $40d7: $3a
	jr c, jr_091_4124                                ; $40d8: $38 $4a

	ld a, $66                                        ; $40da: $3e $66

jr_091_40dc:
	pop af                                           ; $40dc: $f1
	dec [hl]                                         ; $40dd: $35
	xor b                                            ; $40de: $a8

jr_091_40df:
	ldh a, [$08]                                     ; $40df: $f0 $08
	ld d, b                                          ; $40e1: $50
	inc [hl]                                         ; $40e2: $34
	db $ed                                           ; $40e3: $ed
	ld h, a                                          ; $40e4: $67
	ldh a, [rSTAT]                                   ; $40e5: $f0 $41
	ld d, e                                          ; $40e7: $53
	sbc c                                            ; $40e8: $99
	dec sp                                           ; $40e9: $3b
	ccf                                              ; $40ea: $3f
	ld c, [hl]                                       ; $40eb: $4e
	ld b, l                                          ; $40ec: $45
	and b                                            ; $40ed: $a0
	cpl                                              ; $40ee: $2f
	ld b, e                                          ; $40ef: $43
	ld a, [hl-]                                      ; $40f0: $3a
	ld b, c                                          ; $40f1: $41
	ld b, h                                          ; $40f2: $44

jr_091_40f3:
	xor c                                            ; $40f3: $a9
	ld d, h                                          ; $40f4: $54
	ld b, d                                          ; $40f5: $42
	ld h, h                                          ; $40f6: $64
	dec sp                                           ; $40f7: $3b
	ld h, c                                          ; $40f8: $61
	ld d, [hl]                                       ; $40f9: $56
	ld b, c                                          ; $40fa: $41
	ld c, e                                          ; $40fb: $4b
	and c                                            ; $40fc: $a1
	db $eb                                           ; $40fd: $eb
	ccf                                              ; $40fe: $3f
	scf                                              ; $40ff: $37
	inc de                                           ; $4100: $13
	ld d, h                                          ; $4101: $54
	ld b, d                                          ; $4102: $42
	push af                                          ; $4103: $f5
	ld c, [hl]                                       ; $4104: $4e

jr_091_4105:
	ld [hl], c                                       ; $4105: $71
	ldh a, [rTMA]                                    ; $4106: $f0 $06
	ld h, e                                          ; $4108: $63
	ld a, c                                          ; $4109: $79

jr_091_410a:
	ld c, e                                          ; $410a: $4b
	ld d, c                                          ; $410b: $51
	ld c, [hl]                                       ; $410c: $4e
	inc a                                            ; $410d: $3c
	ld d, b                                          ; $410e: $50
	xor b                                            ; $410f: $a8
	ld e, e                                          ; $4110: $5b
	ld d, [hl]                                       ; $4111: $56
	and b                                            ; $4112: $a0
	cpl                                              ; $4113: $2f
	ld b, e                                          ; $4114: $43
	ld c, b                                          ; $4115: $48
	inc h                                            ; $4116: $24
	ld c, b                                          ; $4117: $48
	inc hl                                           ; $4118: $23
	pop af                                           ; $4119: $f1
	inc b                                            ; $411a: $04
	ld d, a                                          ; $411b: $57
	ldh a, [$8d]                                     ; $411c: $f0 $8d
	ld e, b                                          ; $411e: $58
	ld c, l                                          ; $411f: $4d
	ccf                                              ; $4120: $3f
	inc de                                           ; $4121: $13
	db $ec                                           ; $4122: $ec
	push de                                          ; $4123: $d5

jr_091_4124:
	xor l                                            ; $4124: $ad
	ld l, e                                          ; $4125: $6b
	ld b, h                                          ; $4126: $44
	dec sp                                           ; $4127: $3b
	dec a                                            ; $4128: $3d
	ld b, c                                          ; $4129: $41
	ld b, h                                          ; $412a: $44
	ld l, l                                          ; $412b: $6d
	ldh a, [$65]                                     ; $412c: $f0 $65
	ld c, b                                          ; $412e: $48
	dec [hl]                                         ; $412f: $35
	inc hl                                           ; $4130: $23
	inc de                                           ; $4131: $13
	ld a, d                                          ; $4132: $7a
	ld e, a                                          ; $4133: $5f
	add hl, sp                                       ; $4134: $39
	ld c, b                                          ; $4135: $48
	and b                                            ; $4136: $a0
	db $ec                                           ; $4137: $ec
	dec e                                            ; $4138: $1d
	ld h, d                                          ; $4139: $62
	inc de                                           ; $413a: $13
	ld [$4c31], a                                    ; $413b: $ea $31 $4c
	and b                                            ; $413e: $a0
	cpl                                              ; $413f: $2f
	ld [$acc9], a                                    ; $4140: $ea $c9 $ac
	db $ed                                           ; $4143: $ed
	ld d, a                                          ; $4144: $57
	db $ec                                           ; $4145: $ec
	dec e                                            ; $4146: $1d
	ld h, d                                          ; $4147: $62
	inc de                                           ; $4148: $13
	ld [$a33f], a                                    ; $4149: $ea $3f $a3
	cpl                                              ; $414c: $2f
	jp hl                                            ; $414d: $e9


	ld sp, $ed09                                     ; $414e: $31 $09 $ed
	ld c, c                                          ; $4151: $49
	ld c, h                                          ; $4152: $4c
	xor l                                            ; $4153: $ad
	xor $06                                          ; $4154: $ee $06
	ld b, a                                          ; $4156: $47
	ld [hl], d                                       ; $4157: $72

Call_091_4158:
	ld c, l                                          ; $4158: $4d
	ccf                                              ; $4159: $3f
	db $ec                                           ; $415a: $ec
	cp c                                             ; $415b: $b9
	ld c, b                                          ; $415c: $48
	and b                                            ; $415d: $a0
	db $ed                                           ; $415e: $ed
	ld h, c                                          ; $415f: $61
	ld [hl], d                                       ; $4160: $72
	ccf                                              ; $4161: $3f
	ld c, a                                          ; $4162: $4f
	db $ed                                           ; $4163: $ed
	ld c, c                                          ; $4164: $49
	ld c, h                                          ; $4165: $4c
	ld c, b                                          ; $4166: $48
	and b                                            ; $4167: $a0
	cpl                                              ; $4168: $2f
	ld b, e                                          ; $4169: $43
	ldh a, [$66]                                     ; $416a: $f0 $66
	ld b, c                                          ; $416c: $41
	ld c, d                                          ; $416d: $4a
	ld c, a                                          ; $416e: $4f
	ld d, b                                          ; $416f: $50
	ld e, [hl]                                       ; $4170: $5e
	dec a                                            ; $4171: $3d
	ld l, h                                          ; $4172: $6c
	dec a                                            ; $4173: $3d
	jr c, jr_091_41c0                                ; $4174: $38 $4a

	inc de                                           ; $4176: $13
	db $eb                                           ; $4177: $eb
	ld e, a                                          ; $4178: $5f
	and b                                            ; $4179: $a0
	cpl                                              ; $417a: $2f
	add sp, -$26                                     ; $417b: $e8 $da
	add hl, bc                                       ; $417d: $09
	ld b, b                                          ; $417e: $40
	ld c, l                                          ; $417f: $4d
	ld e, e                                          ; $4180: $5b
	ld d, [hl]                                       ; $4181: $56
	sub [hl]                                         ; $4182: $96
	ld e, a                                          ; $4183: $5f
	add hl, sp                                       ; $4184: $39
	and b                                            ; $4185: $a0
	cpl                                              ; $4186: $2f
	ld b, e                                          ; $4187: $43
	ld b, b                                          ; $4188: $40
	add hl, sp                                       ; $4189: $39
	ld b, h                                          ; $418a: $44
	ld c, h                                          ; $418b: $4c
	xor b                                            ; $418c: $a8
	sub [hl]                                         ; $418d: $96
	ld e, a                                          ; $418e: $5f
	add hl, sp                                       ; $418f: $39

jr_091_4190:
	inc a                                            ; $4190: $3c
	and c                                            ; $4191: $a1
	ldh a, [rAUD2LOW]                                ; $4192: $f0 $18
	ldh a, [$dc]                                     ; $4194: $f0 $dc
	ld b, d                                          ; $4196: $42
	ldh a, [$03]                                     ; $4197: $f0 $03
	ld e, c                                          ; $4199: $59
	ldh a, [$03]                                     ; $419a: $f0 $03
	dec sp                                           ; $419c: $3b
	ccf                                              ; $419d: $3f
	inc de                                           ; $419e: $13
	ld b, l                                          ; $419f: $45
	ld d, l                                          ; $41a0: $55
	ldh a, [rTAC]                                    ; $41a1: $f0 $07
	inc a                                            ; $41a3: $3c
	ld d, b                                          ; $41a4: $50
	ld a, [hl-]                                      ; $41a5: $3a
	jr c, jr_091_41e2                                ; $41a6: $38 $3a

	and b                                            ; $41a8: $a0
	cpl                                              ; $41a9: $2f
	jp hl                                            ; $41aa: $e9


	ld e, d                                          ; $41ab: $5a

jr_091_41ac:
	add hl, bc                                       ; $41ac: $09
	db $ed                                           ; $41ad: $ed
	ld b, c                                          ; $41ae: $41
	xor c                                            ; $41af: $a9
	ld e, e                                          ; $41b0: $5b
	ld d, [hl]                                       ; $41b1: $56
	inc [hl]                                         ; $41b2: $34
	db $eb                                           ; $41b3: $eb
	xor [hl]                                         ; $41b4: $ae
	dec sp                                           ; $41b5: $3b
	ccf                                              ; $41b6: $3f
	jr c, jr_091_41f2                                ; $41b7: $38 $39

	ld b, d                                          ; $41b9: $42
	ld c, e                                          ; $41ba: $4b
	ld c, b                                          ; $41bb: $48
	add hl, bc                                       ; $41bc: $09
	cpl                                              ; $41bd: $2f
	ld h, c                                          ; $41be: $61
	ld d, [hl]                                       ; $41bf: $56

jr_091_41c0:
	ld b, c                                          ; $41c0: $41
	ld c, c                                          ; $41c1: $49
	ldh a, [$75]                                     ; $41c2: $f0 $75
	ldh a, [$8c]                                     ; $41c4: $f0 $8c
	ccf                                              ; $41c6: $3f
	ld a, b                                          ; $41c7: $78
	jr c, jr_091_420f                                ; $41c8: $38 $45

	ld a, [hl-]                                      ; $41ca: $3a
	add hl, bc                                       ; $41cb: $09
	jp hl                                            ; $41cc: $e9


	and h                                            ; $41cd: $a4
	ld c, b                                          ; $41ce: $48
	and b                                            ; $41cf: $a0
	cpl                                              ; $41d0: $2f
	ldh a, [$2d]                                     ; $41d1: $f0 $2d
	dec sp                                           ; $41d3: $3b
	ccf                                              ; $41d4: $3f
	ld a, [hl-]                                      ; $41d5: $3a
	ld d, l                                          ; $41d6: $55
	ccf                                              ; $41d7: $3f
	ld c, a                                          ; $41d8: $4f
	jr c, jr_091_4213                                ; $41d9: $38 $38

	db $ec                                           ; $41db: $ec
	ret c                                            ; $41dc: $d8

	add hl, bc                                       ; $41dd: $09
	db $ec                                           ; $41de: $ec
	ld d, $48                                        ; $41df: $16 $48
	xor c                                            ; $41e1: $a9

jr_091_41e2:
	ld c, d                                          ; $41e2: $4a
	ld c, a                                          ; $41e3: $4f
	inc [hl]                                         ; $41e4: $34
	ldh a, [$2d]                                     ; $41e5: $f0 $2d
	dec sp                                           ; $41e7: $3b
	ccf                                              ; $41e8: $3f
	dec a                                            ; $41e9: $3d
	ldh a, [$38]                                     ; $41ea: $f0 $38
	ld d, e                                          ; $41ec: $53
	xor h                                            ; $41ed: $ac
	sub b                                            ; $41ee: $90
	ld a, $71                                        ; $41ef: $3e $71
	ld c, [hl]                                       ; $41f1: $4e

jr_091_41f2:
	ld b, l                                          ; $41f2: $45
	ld c, h                                          ; $41f3: $4c
	and c                                            ; $41f4: $a1
	ld l, d                                          ; $41f5: $6a
	ld b, d                                          ; $41f6: $42
	add h                                            ; $41f7: $84
	inc [hl]                                         ; $41f8: $34
	push af                                          ; $41f9: $f5
	ld d, d                                          ; $41fa: $52
	ld b, a                                          ; $41fb: $47
	di                                               ; $41fc: $f3
	sub l                                            ; $41fd: $95
	dec sp                                           ; $41fe: $3b
	ccf                                              ; $41ff: $3f
	inc de                                           ; $4200: $13
	db $ed                                           ; $4201: $ed
	inc hl                                           ; $4202: $23
	ld h, d                                          ; $4203: $62
	pop af                                           ; $4204: $f1
	inc b                                            ; $4205: $04
	dec sp                                           ; $4206: $3b
	dec a                                            ; $4207: $3d
	ld h, e                                          ; $4208: $63
	ld b, l                                          ; $4209: $45
	xor b                                            ; $420a: $a8
	ld d, c                                          ; $420b: $51
	ld [hl], b                                       ; $420c: $70
	jr c, jr_091_4190                                ; $420d: $38 $81

jr_091_420f:
	ld [hl], l                                       ; $420f: $75
	ld e, c                                          ; $4210: $59
	ld c, h                                          ; $4211: $4c
	and b                                            ; $4212: $a0

jr_091_4213:
	cpl                                              ; $4213: $2f
	ld [$0908], a                                    ; $4214: $ea $08 $09
	ret                                              ; $4217: $c9


	inc de                                           ; $4218: $13
	db $ed                                           ; $4219: $ed
	ld h, l                                          ; $421a: $65
	db $eb                                           ; $421b: $eb
	ld d, [hl]                                       ; $421c: $56
	and b                                            ; $421d: $a0
	cpl                                              ; $421e: $2f
	add sp, $75                                      ; $421f: $e8 $75
	add hl, bc                                       ; $4221: $09
	rst JumpTable                                          ; $4222: $c7
	xor c                                            ; $4223: $a9
	ld c, a                                          ; $4224: $4f
	dec sp                                           ; $4225: $3b
	ld c, c                                          ; $4226: $49
	ld d, c                                          ; $4227: $51
	ld [hl], b                                       ; $4228: $70
	jr c, jr_091_41ac                                ; $4229: $38 $81

	ld [hl], l                                       ; $422b: $75
	ld e, c                                          ; $422c: $59
	ld c, d                                          ; $422d: $4a
	ld c, [hl]                                       ; $422e: $4e
	inc a                                            ; $422f: $3c
	ld a, [hl-]                                      ; $4230: $3a
	and c                                            ; $4231: $a1
	cpl                                              ; $4232: $2f
	pop af                                           ; $4233: $f1
	adc $3a                                          ; $4234: $ce $3a
	jr c, jr_091_4272                                ; $4236: $38 $3a

	ld [hl], h                                       ; $4238: $74
	add hl, bc                                       ; $4239: $09
	rst JumpTable                                          ; $423a: $c7
	ld c, h                                          ; $423b: $4c
	ld c, b                                          ; $423c: $48
	xor h                                            ; $423d: $ac
	ld c, d                                          ; $423e: $4a
	ld c, a                                          ; $423f: $4f
	inc [hl]                                         ; $4240: $34
	pop af                                           ; $4241: $f1
	sbc e                                            ; $4242: $9b
	ld c, l                                          ; $4243: $4d
	ccf                                              ; $4244: $3f
	ld c, [hl]                                       ; $4245: $4e
	ld b, c                                          ; $4246: $41
	db $ec                                           ; $4247: $ec
	ret c                                            ; $4248: $d8

	inc a                                            ; $4249: $3c
	ld a, [hl-]                                      ; $424a: $3a
	and b                                            ; $424b: $a0
	jr c, jr_091_4282                                ; $424c: $38 $34

	ld l, d                                          ; $424e: $6a
	ld b, d                                          ; $424f: $42
	pop af                                           ; $4250: $f1
	ld [$7051], sp                                   ; $4251: $08 $51 $70
	jr c, jr_091_42b9                                ; $4254: $38 $63

	ld c, h                                          ; $4256: $4c
	and d                                            ; $4257: $a2
	cpl                                              ; $4258: $2f
	ld e, b                                          ; $4259: $58
	ld d, c                                          ; $425a: $51
	ld d, e                                          ; $425b: $53
	add c                                            ; $425c: $81
	ldh a, [$1f]                                     ; $425d: $f0 $1f
	ld b, h                                          ; $425f: $44
	ld c, h                                          ; $4260: $4c
	add hl, bc                                       ; $4261: $09
	xor $1f                                          ; $4262: $ee $1f
	xor b                                            ; $4264: $a8
	ld l, a                                          ; $4265: $6f
	ld c, a                                          ; $4266: $4f
	inc [hl]                                         ; $4267: $34
	ld b, b                                          ; $4268: $40
	add hl, sp                                       ; $4269: $39
	ld [hl], a                                       ; $426a: $77
	add hl, sp                                       ; $426b: $39
	xor b                                            ; $426c: $a8
	ld l, d                                          ; $426d: $6a
	ldh a, [$0d]                                     ; $426e: $f0 $0d
	pop af                                           ; $4270: $f1
	add hl, sp                                       ; $4271: $39

jr_091_4272:
	ld a, $3f                                        ; $4272: $3e $3f
	ld l, h                                          ; $4274: $6c
	ld b, l                                          ; $4275: $45
	add hl, sp                                       ; $4276: $39
	inc a                                            ; $4277: $3c
	ld a, [hl-]                                      ; $4278: $3a
	and b                                            ; $4279: $a0
	pop af                                           ; $427a: $f1
	add hl, sp                                       ; $427b: $39
	ld d, c                                          ; $427c: $51
	and c                                            ; $427d: $a1
	ld e, [hl]                                       ; $427e: $5e
	dec sp                                           ; $427f: $3b
	ld [hl], $6b                                     ; $4280: $36 $6b

jr_091_4282:
	xor c                                            ; $4282: $a9
	ld l, a                                          ; $4283: $6f
	inc [hl]                                         ; $4284: $34
	ld l, e                                          ; $4285: $6b
	inc a                                            ; $4286: $3c
	add d                                            ; $4287: $82
	dec sp                                           ; $4288: $3b
	dec a                                            ; $4289: $3d
	and c                                            ; $428a: $a1
	cpl                                              ; $428b: $2f
	dec a                                            ; $428c: $3d
	jr c, jr_091_42cd                                ; $428d: $38 $3e

	dec a                                            ; $428f: $3d

jr_091_4290:
	ld d, h                                          ; $4290: $54
	ld c, c                                          ; $4291: $49
	ld a, [hl-]                                      ; $4292: $3a
	jr c, jr_091_42cf                                ; $4293: $38 $3a

	add hl, bc                                       ; $4295: $09
	db $d3                                           ; $4296: $d3
	xor c                                            ; $4297: $a9
	ld c, a                                          ; $4298: $4f
	dec sp                                           ; $4299: $3b
	ld c, c                                          ; $429a: $49
	ld d, c                                          ; $429b: $51
	ld [hl], b                                       ; $429c: $70
	jr c, jr_091_4290                                ; $429d: $38 $f1

	ld [$4e46], sp                                   ; $429f: $08 $46 $4e
	ld b, d                                          ; $42a2: $42
	and c                                            ; $42a3: $a1
	cpl                                              ; $42a4: $2f
	ld [hl], d                                       ; $42a5: $72
	ccf                                              ; $42a6: $3f
	ld a, [hl-]                                      ; $42a7: $3a
	inc a                                            ; $42a8: $3c
	dec sp                                           ; $42a9: $3b
	dec a                                            ; $42aa: $3d
	ld b, l                                          ; $42ab: $45
	add hl, bc                                       ; $42ac: $09
	ld c, a                                          ; $42ad: $4f
	add hl, sp                                       ; $42ae: $39
	inc [hl]                                         ; $42af: $34
	ld e, d                                          ; $42b0: $5a
	ld d, h                                          ; $42b1: $54
	ld [hl], d                                       ; $42b2: $72
	ccf                                              ; $42b3: $3f
	dec a                                            ; $42b4: $3d
	ld b, d                                          ; $42b5: $42
	ld b, l                                          ; $42b6: $45
	and b                                            ; $42b7: $a0
	ld c, a                                          ; $42b8: $4f

jr_091_42b9:
	add hl, sp                                       ; $42b9: $39
	db $ec                                           ; $42ba: $ec
	ld a, $44                                        ; $42bb: $3e $44
	ld b, l                                          ; $42bd: $45
	xor b                                            ; $42be: $a8
	ldh a, [$0a]                                     ; $42bf: $f0 $0a
	ld d, l                                          ; $42c1: $55
	sub [hl]                                         ; $42c2: $96
	ld e, a                                          ; $42c3: $5f
	and b                                            ; $42c4: $a0
	ld b, [hl]                                       ; $42c5: $46
	ld b, b                                          ; $42c6: $40
	ld d, h                                          ; $42c7: $54
	ld d, e                                          ; $42c8: $53
	ldh a, [$c9]                                     ; $42c9: $f0 $c9
	jr c, @+$41                                      ; $42cb: $38 $3f

jr_091_42cd:
	ld c, [hl]                                       ; $42cd: $4e
	ld h, e                                          ; $42ce: $63

jr_091_42cf:
	and b                                            ; $42cf: $a0
	cpl                                              ; $42d0: $2f
	add sp, -$75                                     ; $42d1: $e8 $8b
	and c                                            ; $42d3: $a1
	xor $1f                                          ; $42d4: $ee $1f
	xor b                                            ; $42d6: $a8
	ld d, c                                          ; $42d7: $51
	ld [hl], b                                       ; $42d8: $70
	ld d, l                                          ; $42d9: $55
	cp e                                             ; $42da: $bb
	and b                                            ; $42db: $a0
	cpl                                              ; $42dc: $2f
	add sp, $2c                                      ; $42dd: $e8 $2c
	and c                                            ; $42df: $a1
	ld [$a9af], a                                    ; $42e0: $ea $af $a9
	ld l, a                                          ; $42e3: $6f
	ld c, e                                          ; $42e4: $4b
	adc e                                            ; $42e5: $8b
	ld e, h                                          ; $42e6: $5c
	ld b, h                                          ; $42e7: $44
	ld e, l                                          ; $42e8: $5d
	ld e, d                                          ; $42e9: $5a
	ld c, b                                          ; $42ea: $48
	and b                                            ; $42eb: $a0
	cpl                                              ; $42ec: $2f
	add sp, $2d                                      ; $42ed: $e8 $2d
	and c                                            ; $42ef: $a1
	ld l, a                                          ; $42f0: $6f
	ld c, e                                          ; $42f1: $4b
	inc [hl]                                         ; $42f2: $34
	ld h, e                                          ; $42f3: $63
	ld d, a                                          ; $42f4: $57
	ld c, c                                          ; $42f5: $49
	inc de                                           ; $42f6: $13
	adc e                                            ; $42f7: $8b
	ld e, h                                          ; $42f8: $5c
	ld a, [hl-]                                      ; $42f9: $3a
	ldh a, [$74]                                     ; $42fa: $f0 $74
	ldh a, [$7a]                                     ; $42fc: $f0 $7a
	inc a                                            ; $42fe: $3c
	ld a, [hl-]                                      ; $42ff: $3a
	ld c, b                                          ; $4300: $48
	and b                                            ; $4301: $a0
	rst JumpTable                                          ; $4302: $c7
	ld c, h                                          ; $4303: $4c
	ld c, b                                          ; $4304: $48
	dec [hl]                                         ; $4305: $35
	rla                                              ; $4306: $17
	ld c, a                                          ; $4307: $4f
	add hl, sp                                       ; $4308: $39
	ldh a, [rHDMA4]                                  ; $4309: $f0 $54
	ld a, $34                                        ; $430b: $3e $34
	db $eb                                           ; $430d: $eb
	add e                                            ; $430e: $83
	ld d, e                                          ; $430f: $53
	inc de                                           ; $4310: $13
	pop af                                           ; $4311: $f1
	add hl, hl                                       ; $4312: $29
	ld a, $3c                                        ; $4313: $3e $3c
	dec sp                                           ; $4315: $3b
	dec a                                            ; $4316: $3d
	ld a, [hl-]                                      ; $4317: $3a
	ld c, b                                          ; $4318: $48
	and b                                            ; $4319: $a0
	ld e, [hl]                                       ; $431a: $5e
	ldh a, [$5a]                                     ; $431b: $f0 $5a
	ldh a, [$5a]                                     ; $431d: $f0 $5a
	xor l                                            ; $431f: $ad
	ld l, a                                          ; $4320: $6f
	ld c, a                                          ; $4321: $4f
	inc [hl]                                         ; $4322: $34
	ld b, b                                          ; $4323: $40
	add hl, sp                                       ; $4324: $39
	ld [hl], a                                       ; $4325: $77
	dec sp                                           ; $4326: $3b
	db $ec                                           ; $4327: $ec
	add hl, de                                       ; $4328: $19
	and b                                            ; $4329: $a0
	ld c, a                                          ; $432a: $4f
	add hl, sp                                       ; $432b: $39
	ldh a, [rHDMA4]                                  ; $432c: $f0 $54
	ld a, $ac                                        ; $432e: $3e $ac
	db $ed                                           ; $4330: $ed
	ld a, b                                          ; $4331: $78
	ld a, [hl-]                                      ; $4332: $3a
	ldh a, [$74]                                     ; $4333: $f0 $74
	ldh a, [$7a]                                     ; $4335: $f0 $7a
	ld d, e                                          ; $4337: $53
	db $ec                                           ; $4338: $ec
	cp c                                             ; $4339: $b9
	inc a                                            ; $433a: $3c
	ld a, [hl-]                                      ; $433b: $3a
	and b                                            ; $433c: $a0
	call c, $1735                                    ; $433d: $dc $35 $17
	ld c, a                                          ; $4340: $4f
	add hl, sp                                       ; $4341: $39
	ldh a, [rHDMA4]                                  ; $4342: $f0 $54
	ld a, $ed                                        ; $4344: $3e $ed
	ld a, b                                          ; $4346: $78
	ld a, [hl-]                                      ; $4347: $3a
	ldh a, [$74]                                     ; $4348: $f0 $74
	ldh a, [$7a]                                     ; $434a: $f0 $7a
	ld d, e                                          ; $434c: $53
	inc de                                           ; $434d: $13
	db $ec                                           ; $434e: $ec
	cp c                                             ; $434f: $b9
	ld e, l                                          ; $4350: $5d
	ld e, d                                          ; $4351: $5a
	ld c, b                                          ; $4352: $48
	and b                                            ; $4353: $a0
	rst JumpTable                                          ; $4354: $c7
	ld [hl], $17                                     ; $4355: $36 $17
	ld b, b                                          ; $4357: $40
	ld b, c                                          ; $4358: $41
	ld a, [hl-]                                      ; $4359: $3a
	ld b, a                                          ; $435a: $47
	ldh a, [$5c]                                     ; $435b: $f0 $5c
	ld d, l                                          ; $435d: $55
	ld c, e                                          ; $435e: $4b
	inc de                                           ; $435f: $13
	ld a, [hl-]                                      ; $4360: $3a
	inc a                                            ; $4361: $3c
	dec sp                                           ; $4362: $3b
	dec a                                            ; $4363: $3d
	ld e, l                                          ; $4364: $5d
	ld e, d                                          ; $4365: $5a
	ld c, h                                          ; $4366: $4c
	and b                                            ; $4367: $a0
	ld b, b                                          ; $4368: $40
	add hl, sp                                       ; $4369: $39
	ld b, h                                          ; $436a: $44
	ld c, h                                          ; $436b: $4c
	dec [hl]                                         ; $436c: $35
	rla                                              ; $436d: $17
	ld l, a                                          ; $436e: $6f
	ld c, e                                          ; $436f: $4b
	inc [hl]                                         ; $4370: $34
	ld c, a                                          ; $4371: $4f
	add hl, sp                                       ; $4372: $39
	ldh a, [rHDMA4]                                  ; $4373: $f0 $54
	ld a, $ed                                        ; $4375: $3e $ed
	ld a, b                                          ; $4377: $78
	ld a, [hl-]                                      ; $4378: $3a
	inc de                                           ; $4379: $13
	ldh a, [$74]                                     ; $437a: $f0 $74
	ldh a, [$7a]                                     ; $437c: $f0 $7a
	ld d, e                                          ; $437e: $53
	db $ec                                           ; $437f: $ec
	cp c                                             ; $4380: $b9
	inc a                                            ; $4381: $3c
	ld a, [hl-]                                      ; $4382: $3a
	and b                                            ; $4383: $a0
	ld b, [hl]                                       ; $4384: $46
	dec sp                                           ; $4385: $3b
	inc [hl]                                         ; $4386: $34
	ld c, a                                          ; $4387: $4f
	add hl, sp                                       ; $4388: $39
	db $ec                                           ; $4389: $ec
	ccf                                              ; $438a: $3f
	inc de                                           ; $438b: $13
	ld b, h                                          ; $438c: $44
	ld b, l                                          ; $438d: $45
	dec [hl]                                         ; $438e: $35
	ldh a, [$0a]                                     ; $438f: $f0 $0a
	ld d, l                                          ; $4391: $55
	ldh a, [rAUD2HIGH]                               ; $4392: $f0 $19
	ld b, a                                          ; $4394: $47
	sub [hl]                                         ; $4395: $96
	ld e, a                                          ; $4396: $5f
	and b                                            ; $4397: $a0
	cpl                                              ; $4398: $2f
	ld b, e                                          ; $4399: $43
	ldh a, [$08]                                     ; $439a: $f0 $08
	ld b, c                                          ; $439c: $41
	ld c, c                                          ; $439d: $49
	ld b, h                                          ; $439e: $44
	xor b                                            ; $439f: $a8
	ldh a, [$0a]                                     ; $43a0: $f0 $0a
	ld d, l                                          ; $43a2: $55
	sub [hl]                                         ; $43a3: $96
	ld e, a                                          ; $43a4: $5f
	add hl, sp                                       ; $43a5: $39
	and b                                            ; $43a6: $a0
	ld l, a                                          ; $43a7: $6f
	ldh a, [rSTAT]                                   ; $43a8: $f0 $41
	ld b, d                                          ; $43aa: $42
	ldh a, [$e7]                                     ; $43ab: $f0 $e7
	ldh a, [c]                                       ; $43ad: $f2
	ld h, h                                          ; $43ae: $64
	ld c, e                                          ; $43af: $4b
	ld c, b                                          ; $43b0: $48
	and b                                            ; $43b1: $a0
	cpl                                              ; $43b2: $2f
	ld b, e                                          ; $43b3: $43
	ldh a, [$08]                                     ; $43b4: $f0 $08
	ld d, b                                          ; $43b6: $50
	inc [hl]                                         ; $43b7: $34
	db $ec                                           ; $43b8: $ec
	and $13                                          ; $43b9: $e6 $13
	db $ec                                           ; $43bb: $ec
	xor $ec                                          ; $43bc: $ee $ec
	xor $a0                                          ; $43be: $ee $a0
	cpl                                              ; $43c0: $2f
	add sp, -$74                                     ; $43c1: $e8 $8c
	and c                                            ; $43c3: $a1
	xor $1f                                          ; $43c4: $ee $1f
	xor b                                            ; $43c6: $a8
	ld d, d                                          ; $43c7: $52
	dec a                                            ; $43c8: $3d
	ld a, b                                          ; $43c9: $78
	dec a                                            ; $43ca: $3d
	jr c, jr_091_4419                                ; $43cb: $38 $4c

	and b                                            ; $43cd: $a0
	cpl                                              ; $43ce: $2f
	add sp, $0e                                      ; $43cf: $e8 $0e
	and c                                            ; $43d1: $a1
	rst JumpTable                                          ; $43d2: $c7
	xor c                                            ; $43d3: $a9
	ld l, a                                          ; $43d4: $6f
	ld c, e                                          ; $43d5: $4b
	inc [hl]                                         ; $43d6: $34
	db $ec                                           ; $43d7: $ec
	cp c                                             ; $43d8: $b9
	ld e, l                                          ; $43d9: $5d
	ld e, d                                          ; $43da: $5a
	ld c, b                                          ; $43db: $48
	and b                                            ; $43dc: $a0
	cpl                                              ; $43dd: $2f
	add sp, $0f                                      ; $43de: $e8 $0f
	and c                                            ; $43e0: $a1
	ld l, a                                          ; $43e1: $6f
	ld c, e                                          ; $43e2: $4b
	xor h                                            ; $43e3: $ac
	ld h, e                                          ; $43e4: $63
	ld d, a                                          ; $43e5: $57
	ld c, c                                          ; $43e6: $49
	adc e                                            ; $43e7: $8b
	ld e, h                                          ; $43e8: $5c
	inc a                                            ; $43e9: $3c
	ld a, [hl-]                                      ; $43ea: $3a
	ld c, b                                          ; $43eb: $48
	and b                                            ; $43ec: $a0
	rst JumpTable                                          ; $43ed: $c7
	ld c, h                                          ; $43ee: $4c
	ld c, b                                          ; $43ef: $48
	dec [hl]                                         ; $43f0: $35
	rla                                              ; $43f1: $17
	ld l, d                                          ; $43f2: $6a
	ldh a, [$0d]                                     ; $43f3: $f0 $0d
	ld c, e                                          ; $43f5: $4b
	db $eb                                           ; $43f6: $eb
	rst SubAFromHL                                          ; $43f7: $d7
	ld a, [hl-]                                      ; $43f8: $3a
	ld b, c                                          ; $43f9: $41
	inc a                                            ; $43fa: $3c
	inc de                                           ; $43fb: $13
	ld [hl], d                                       ; $43fc: $72
	ccf                                              ; $43fd: $3f
	ld l, h                                          ; $43fe: $6c
	dec a                                            ; $43ff: $3d
	jr c, jr_091_4465                                ; $4400: $38 $63

	ld c, h                                          ; $4402: $4c
	and b                                            ; $4403: $a0
	db $ec                                           ; $4404: $ec
	cp c                                             ; $4405: $b9
	xor b                                            ; $4406: $a8
	ld l, a                                          ; $4407: $6f
	ld c, a                                          ; $4408: $4f
	ld b, b                                          ; $4409: $40
	add hl, sp                                       ; $440a: $39
	ld [hl], a                                       ; $440b: $77
	dec sp                                           ; $440c: $3b
	ccf                                              ; $440d: $3f
	dec a                                            ; $440e: $3d
	ld b, d                                          ; $440f: $42
	and b                                            ; $4410: $a0
	ret                                              ; $4411: $c9


	adc e                                            ; $4412: $8b
	ld l, h                                          ; $4413: $6c
	ld b, a                                          ; $4414: $47
	inc de                                           ; $4415: $13
	ldh a, [rTMA]                                    ; $4416: $f0 $06
	ld h, e                                          ; $4418: $63

jr_091_4419:
	ld a, [hl-]                                      ; $4419: $3a
	inc a                                            ; $441a: $3c
	dec sp                                           ; $441b: $3b
	ldh [$a0], a                                     ; $441c: $e0 $a0
	rst JumpTable                                          ; $441e: $c7
	ld c, h                                          ; $441f: $4c
	xor b                                            ; $4420: $a8
	db $ec                                           ; $4421: $ec
	sub $44                                          ; $4422: $d6 $44
	dec sp                                           ; $4424: $3b
	dec a                                            ; $4425: $3d
	inc a                                            ; $4426: $3c
	ld a, [hl-]                                      ; $4427: $3a
	ld c, b                                          ; $4428: $48
	and b                                            ; $4429: $a0
	rst JumpTable                                          ; $442a: $c7
	xor c                                            ; $442b: $a9
	ldh a, [$5c]                                     ; $442c: $f0 $5c
	ld d, l                                          ; $442e: $55
	ld c, e                                          ; $442f: $4b
	ld a, [hl-]                                      ; $4430: $3a
	inc a                                            ; $4431: $3c
	dec sp                                           ; $4432: $3b
	dec a                                            ; $4433: $3d
	ld e, l                                          ; $4434: $5d
	ld e, d                                          ; $4435: $5a
	ld c, h                                          ; $4436: $4c
	and b                                            ; $4437: $a0
	ld b, b                                          ; $4438: $40
	ld c, l                                          ; $4439: $4d
	ld e, e                                          ; $443a: $5b
	ld d, [hl]                                       ; $443b: $56
	inc [hl]                                         ; $443c: $34
	sub [hl]                                         ; $443d: $96
	ld e, a                                          ; $443e: $5f
	add hl, sp                                       ; $443f: $39
	inc a                                            ; $4440: $3c
	and b                                            ; $4441: $a0
	ld d, h                                          ; $4442: $54
	ld b, d                                          ; $4443: $42
	ldh a, [rPCM34]                                  ; $4444: $f0 $77
	ldh a, [$ac]                                     ; $4446: $f0 $ac
	ld e, d                                          ; $4448: $5a
	add hl, sp                                       ; $4449: $39
	inc a                                            ; $444a: $3c
	ld a, [hl-]                                      ; $444b: $3a
	and c                                            ; $444c: $a1
	cpl                                              ; $444d: $2f
	jp hl                                            ; $444e: $e9


	cp d                                             ; $444f: $ba
	add hl, bc                                       ; $4450: $09
	inc a                                            ; $4451: $3c
	inc [hl]                                         ; $4452: $34
	ldh a, [$8a]                                     ; $4453: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4455: $f0 $52
	jr c, jr_091_449d                                ; $4457: $38 $44

	ld a, [hl-]                                      ; $4459: $3a
	ld b, c                                          ; $445a: $41
	ccf                                              ; $445b: $3f
	xor e                                            ; $445c: $ab
	ret                                              ; $445d: $c9


	db $eb                                           ; $445e: $eb
	ld c, a                                          ; $445f: $4f
	inc a                                            ; $4460: $3c
	ld a, [hl-]                                      ; $4461: $3a
	and b                                            ; $4462: $a0
	cpl                                              ; $4463: $2f
	jp hl                                            ; $4464: $e9


jr_091_4465:
	dec sp                                           ; $4465: $3b
	add hl, bc                                       ; $4466: $09
	ld d, e                                          ; $4467: $53
	ld e, c                                          ; $4468: $59
	ld b, c                                          ; $4469: $41
	ld c, b                                          ; $446a: $48
	db $ec                                           ; $446b: $ec
	ld h, d                                          ; $446c: $62
	ld c, b                                          ; $446d: $48
	and b                                            ; $446e: $a0
	cpl                                              ; $446f: $2f
	add sp, -$1e                                     ; $4470: $e8 $e2
	add hl, bc                                       ; $4472: $09
	db $ec                                           ; $4473: $ec
	sbc [hl]                                         ; $4474: $9e
	xor c                                            ; $4475: $a9
	ld [$a8af], a                                    ; $4476: $ea $af $a8
	pop af                                           ; $4479: $f1
	sbc c                                            ; $447a: $99
	ld c, l                                          ; $447b: $4d
	ld h, c                                          ; $447c: $61
	ld d, [hl]                                       ; $447d: $56
	add hl, sp                                       ; $447e: $39
	ld h, e                                          ; $447f: $63
	and b                                            ; $4480: $a0
	ld l, a                                          ; $4481: $6f
	xor h                                            ; $4482: $ac
	db $ed                                           ; $4483: $ed
	ld a, d                                          ; $4484: $7a
	ld c, e                                          ; $4485: $4b
	ldh a, [$80]                                     ; $4486: $f0 $80
	ldh a, [$c5]                                     ; $4488: $f0 $c5
	pop af                                           ; $448a: $f1
	ld l, e                                          ; $448b: $6b
	ldh a, [$c0]                                     ; $448c: $f0 $c0
	ld b, l                                          ; $448e: $45
	and b                                            ; $448f: $a0
	cpl                                              ; $4490: $2f
	db $dd                                           ; $4491: $dd
	db $ed                                           ; $4492: $ed
	rst SubAFromHL                                          ; $4493: $d7
	ld b, h                                          ; $4494: $44
	add hl, bc                                       ; $4495: $09
	ld b, l                                          ; $4496: $45
	ld e, c                                          ; $4497: $59
	ld a, $34                                        ; $4498: $3e $34
	ld b, b                                          ; $449a: $40
	ld c, l                                          ; $449b: $4d
	ld e, e                                          ; $449c: $5b

jr_091_449d:
	ld d, [hl]                                       ; $449d: $56
	inc de                                           ; $449e: $13
	pop af                                           ; $449f: $f1
	inc l                                            ; $44a0: $2c
	pop af                                           ; $44a1: $f1
	sbc [hl]                                         ; $44a2: $9e
	pop af                                           ; $44a3: $f1
	sbc [hl]                                         ; $44a4: $9e
	di                                               ; $44a5: $f3
	ld a, [hl+]                                      ; $44a6: $2a
	db $ec                                           ; $44a7: $ec
	db $fc                                           ; $44a8: $fc
	ldh a, [$5a]                                     ; $44a9: $f0 $5a
	ld h, a                                          ; $44ab: $67
	ld d, h                                          ; $44ac: $54
	add hl, sp                                       ; $44ad: $39
	and d                                            ; $44ae: $a2
	cpl                                              ; $44af: $2f
	db $eb                                           ; $44b0: $eb
	sub e                                            ; $44b1: $93
	xor h                                            ; $44b2: $ac
	add sp, -$6e                                     ; $44b3: $e8 $92
	xor b                                            ; $44b5: $a8
	db $eb                                           ; $44b6: $eb
	sub h                                            ; $44b7: $94
	ldh a, [hDisp1_SCY]                                     ; $44b8: $f0 $90
	ldh a, [rSB]                                     ; $44ba: $f0 $01
	ld a, [hl-]                                      ; $44bc: $3a
	jr c, jr_091_4500                                ; $44bd: $38 $41

	ld b, h                                          ; $44bf: $44
	and e                                            ; $44c0: $a3
	cpl                                              ; $44c1: $2f
	halt                                             ; $44c2: $76
	ld c, e                                          ; $44c3: $4b
	db $ed                                           ; $44c4: $ed
	ld e, [hl]                                       ; $44c5: $5e
	ldh a, [$f1]                                     ; $44c6: $f0 $f1
	ldh a, [$9d]                                     ; $44c8: $f0 $9d
	ld a, [hl-]                                      ; $44ca: $3a
	ld b, c                                          ; $44cb: $41
	ld b, h                                          ; $44cc: $44
	add hl, bc                                       ; $44cd: $09
	ld b, b                                          ; $44ce: $40
	inc [hl]                                         ; $44cf: $34
	ld b, b                                          ; $44d0: $40
	ld c, l                                          ; $44d1: $4d
	ld e, e                                          ; $44d2: $5b
	ld d, [hl]                                       ; $44d3: $56
	xor h                                            ; $44d4: $ac
	ld l, a                                          ; $44d5: $6f
	ld d, e                                          ; $44d6: $53
	db $ec                                           ; $44d7: $ec
	db $ed                                           ; $44d8: $ed
	rst SubAFromDE                                          ; $44d9: $df
	and b                                            ; $44da: $a0
	cpl                                              ; $44db: $2f
	ld b, b                                          ; $44dc: $40
	ld b, c                                          ; $44dd: $41
	ld a, [hl-]                                      ; $44de: $3a
	ld d, h                                          ; $44df: $54
	ld c, c                                          ; $44e0: $49
	ldh a, [$67]                                     ; $44e1: $f0 $67
	ldh a, [c]                                       ; $44e3: $f2
	dec h                                            ; $44e4: $25
	ld d, c                                          ; $44e5: $51
	ld c, [hl]                                       ; $44e6: $4e
	ld a, [hl-]                                      ; $44e7: $3a
	ld b, l                                          ; $44e8: $45
	add hl, bc                                       ; $44e9: $09
	ld b, b                                          ; $44ea: $40
	inc [hl]                                         ; $44eb: $34
	ld b, b                                          ; $44ec: $40
	ld b, c                                          ; $44ed: $41
	ld a, [hl-]                                      ; $44ee: $3a
	add b                                            ; $44ef: $80
	ld c, a                                          ; $44f0: $4f
	ld d, a                                          ; $44f1: $57
	ld c, d                                          ; $44f2: $4a
	inc de                                           ; $44f3: $13
	add d                                            ; $44f4: $82
	dec sp                                           ; $44f5: $3b
	dec a                                            ; $44f6: $3d
	ld b, c                                          ; $44f7: $41
	ld e, e                                          ; $44f8: $5b
	ld d, [hl]                                       ; $44f9: $56
	ld c, b                                          ; $44fa: $48
	and b                                            ; $44fb: $a0
	ld b, b                                          ; $44fc: $40
	ld c, l                                          ; $44fd: $4d
	ld e, e                                          ; $44fe: $5b
	ld d, [hl]                                       ; $44ff: $56

jr_091_4500:
	xor h                                            ; $4500: $ac
	db $ed                                           ; $4501: $ed
	and b                                            ; $4502: $a0
	ld e, [hl]                                       ; $4503: $5e
	ccf                                              ; $4504: $3f
	ld a, b                                          ; $4505: $78
	ld c, [hl]                                       ; $4506: $4e
	ld c, h                                          ; $4507: $4c
	and b                                            ; $4508: $a0
	jp nc, $f1ac                                     ; $4509: $d2 $ac $f1

	cp h                                             ; $450c: $bc
	ld e, h                                          ; $450d: $5c
	ld d, c                                          ; $450e: $51
	ldh a, [$cb]                                     ; $450f: $f0 $cb
	ld a, [hl-]                                      ; $4511: $3a
	jr c, jr_091_4559                                ; $4512: $38 $45

	add hl, sp                                       ; $4514: $39
	ld b, a                                          ; $4515: $47
	ld c, h                                          ; $4516: $4c
	and b                                            ; $4517: $a0
	cpl                                              ; $4518: $2f
	xor $1f                                          ; $4519: $ee $1f
	inc [hl]                                         ; $451b: $34
	pop af                                           ; $451c: $f1
	rst SubAFromHL                                          ; $451d: $d7
	ldh a, [$cf]                                     ; $451e: $f0 $cf
	ld b, a                                          ; $4520: $47
	ld a, $3a                                        ; $4521: $3e $3a
	jr c, @+$4b                                      ; $4523: $38 $49

	ld c, h                                          ; $4525: $4c
	add hl, bc                                       ; $4526: $09
	ld b, b                                          ; $4527: $40
	add hl, sp                                       ; $4528: $39
	ld b, b                                          ; $4529: $40
	add hl, sp                                       ; $452a: $39
	xor b                                            ; $452b: $a8
	pop af                                           ; $452c: $f1
	ld d, $47                                        ; $452d: $16 $47
	pop af                                           ; $452f: $f1
	cp h                                             ; $4530: $bc
	ld d, l                                          ; $4531: $55
	ld b, d                                          ; $4532: $42
	ld c, e                                          ; $4533: $4b
	ld a, [hl]                                       ; $4534: $7e
	ld d, l                                          ; $4535: $55
	ld a, [hl-]                                      ; $4536: $3a
	jr c, jr_091_457e                                ; $4537: $38 $45

	and b                                            ; $4539: $a0
	cpl                                              ; $453a: $2f
	halt                                             ; $453b: $76
	ld b, d                                          ; $453c: $42
	ldh a, [$6f]                                     ; $453d: $f0 $6f
	ldh a, [$0b]                                     ; $453f: $f0 $0b
	ld b, h                                          ; $4541: $44
	ld e, a                                          ; $4542: $5f
	add hl, bc                                       ; $4543: $09
	ld a, [hl-]                                      ; $4544: $3a
	inc [hl]                                         ; $4545: $34
	ld a, [hl-]                                      ; $4546: $3a
	ld b, a                                          ; $4547: $47
	ld b, l                                          ; $4548: $45
	ld e, c                                          ; $4549: $59
	xor b                                            ; $454a: $a8
	db $ed                                           ; $454b: $ed
	ld h, h                                          ; $454c: $64
	ld a, $3f                                        ; $454d: $3e $3f
	ld b, [hl]                                       ; $454f: $46
	ldh a, [rSB]                                     ; $4550: $f0 $01
	ccf                                              ; $4552: $3f
	ld c, [hl]                                       ; $4553: $4e
	ld b, d                                          ; $4554: $42
	ld b, a                                          ; $4555: $47
	and b                                            ; $4556: $a0
	cpl                                              ; $4557: $2f
	ld c, a                                          ; $4558: $4f

jr_091_4559:
	add hl, sp                                       ; $4559: $39
	ret                                              ; $455a: $c9


	ld b, h                                          ; $455b: $44
	ld e, l                                          ; $455c: $5d
	ld c, h                                          ; $455d: $4c
	add hl, bc                                       ; $455e: $09
	pop af                                           ; $455f: $f1
	rst SubAFromHL                                          ; $4560: $d7
	ldh a, [$cf]                                     ; $4561: $f0 $cf
	ld b, a                                          ; $4563: $47
	ld c, h                                          ; $4564: $4c
	and b                                            ; $4565: $a0
	cpl                                              ; $4566: $2f
	ld b, e                                          ; $4567: $43
	db $ec                                           ; $4568: $ec
	and $ac                                          ; $4569: $e6 $ac
	jp hl                                            ; $456b: $e9


	ld [$f213], a                                    ; $456c: $ea $13 $f2
	ld l, c                                          ; $456f: $69
	ccf                                              ; $4570: $3f
	ld c, [hl]                                       ; $4571: $4e
	ld b, l                                          ; $4572: $45
	and b                                            ; $4573: $a0
	cpl                                              ; $4574: $2f
	add sp, $5d                                      ; $4575: $e8 $5d
	add hl, bc                                       ; $4577: $09
	cpl                                              ; $4578: $2f
	ld h, $f0                                        ; $4579: $26 $f0
	ld l, [hl]                                       ; $457b: $6e
	ldh a, [$35]                                     ; $457c: $f0 $35

jr_091_457e:
	ld [hl], e                                       ; $457e: $73
	scf                                              ; $457f: $37
	dec h                                            ; $4580: $25
	add hl, bc                                       ; $4581: $09
	cpl                                              ; $4582: $2f
	ld b, e                                          ; $4583: $43
	sbc l                                            ; $4584: $9d

jr_091_4585:
	ld h, h                                          ; $4585: $64
	dec sp                                           ; $4586: $3b

jr_091_4587:
	and d                                            ; $4587: $a2
	ld [hl], b                                       ; $4588: $70
	inc [hl]                                         ; $4589: $34
	ld [hl], b                                       ; $458a: $70
	ld [hl], c                                       ; $458b: $71
	ld b, c                                          ; $458c: $41
	ld c, h                                          ; $458d: $4c
	scf                                              ; $458e: $37
	inc de                                           ; $458f: $13
	add b                                            ; $4590: $80
	jr c, jr_091_4585                                ; $4591: $38 $f2

	ldh [c], a                                       ; $4593: $e2
	di                                               ; $4594: $f3
	ld h, c                                          ; $4595: $61
	pop af                                           ; $4596: $f1
	inc bc                                           ; $4597: $03
	ld b, a                                          ; $4598: $47
	ld c, b                                          ; $4599: $48
	and b                                            ; $459a: $a0
	cpl                                              ; $459b: $2f
	ld b, e                                          ; $459c: $43
	jr c, jr_091_45d3                                ; $459d: $38 $34

	jr c, jr_091_460f                                ; $459f: $38 $6e

	ld c, b                                          ; $45a1: $48
	inc [hl]                                         ; $45a2: $34
	ld [hl], b                                       ; $45a3: $70
	ld [hl], c                                       ; $45a4: $71
	ld b, c                                          ; $45a5: $41
	xor b                                            ; $45a6: $a8
	ldh a, [$5c]                                     ; $45a7: $f0 $5c
	jr c, jr_091_45ed                                ; $45a9: $38 $42

	ld c, e                                          ; $45ab: $4b
	halt                                             ; $45ac: $76
	ld b, h                                          ; $45ad: $44
	ld c, h                                          ; $45ae: $4c
	xor l                                            ; $45af: $ad
	xor $2d                                          ; $45b0: $ee $2d
	inc [hl]                                         ; $45b2: $34
	db $ec                                           ; $45b3: $ec
	ld d, c                                          ; $45b4: $51
	and b                                            ; $45b5: $a0
	ld b, [hl]                                       ; $45b6: $46
	inc [hl]                                         ; $45b7: $34
	ld b, [hl]                                       ; $45b8: $46
	ld d, a                                          ; $45b9: $57
	ld d, e                                          ; $45ba: $53
	ld c, c                                          ; $45bb: $49
	add hl, sp                                       ; $45bc: $39
	and b                                            ; $45bd: $a0
	cpl                                              ; $45be: $2f
	add sp, $5e                                      ; $45bf: $e8 $5e
	and d                                            ; $45c1: $a2
	ld b, [hl]                                       ; $45c2: $46
	ld e, c                                          ; $45c3: $59
	inc [hl]                                         ; $45c4: $34
	ld l, e                                          ; $45c5: $6b
	ccf                                              ; $45c6: $3f
	sbc d                                            ; $45c7: $9a
	ld d, c                                          ; $45c8: $51
	ld c, [hl]                                       ; $45c9: $4e
	ld b, d                                          ; $45ca: $42
	ld b, l                                          ; $45cb: $45
	xor b                                            ; $45cc: $a8
	db $eb                                           ; $45cd: $eb
	ld c, a                                          ; $45ce: $4f
	db $ec                                           ; $45cf: $ec
	ret c                                            ; $45d0: $d8

	and b                                            ; $45d1: $a0
	cpl                                              ; $45d2: $2f

jr_091_45d3:
	add sp, $13                                      ; $45d3: $e8 $13
	add hl, bc                                       ; $45d5: $09
	ld b, [hl]                                       ; $45d6: $46
	dec sp                                           ; $45d7: $3b
	inc [hl]                                         ; $45d8: $34
	ld [hl], b                                       ; $45d9: $70
	ld [hl], c                                       ; $45da: $71
	ld b, c                                          ; $45db: $41
	ld c, h                                          ; $45dc: $4c
	xor b                                            ; $45dd: $a8
	pop af                                           ; $45de: $f1
	cp d                                             ; $45df: $ba
	dec sp                                           ; $45e0: $3b
	ccf                                              ; $45e1: $3f
	dec a                                            ; $45e2: $3d
	ld l, h                                          ; $45e3: $6c
	dec a                                            ; $45e4: $3d
	jr c, jr_091_4587                                ; $45e5: $38 $a0

	ld d, c                                          ; $45e7: $51
	ld [hl], b                                       ; $45e8: $70
	ld d, l                                          ; $45e9: $55
	di                                               ; $45ea: $f3
	ld c, [hl]                                       ; $45eb: $4e
	ld l, [hl]                                       ; $45ec: $6e

jr_091_45ed:
	inc a                                            ; $45ed: $3c
	ld c, h                                          ; $45ee: $4c
	and b                                            ; $45ef: $a0
	cpl                                              ; $45f0: $2f
	ld [$09d6], a                                    ; $45f1: $ea $d6 $09
	cpl                                              ; $45f4: $2f
	ld b, e                                          ; $45f5: $43
	db $ed                                           ; $45f6: $ed
	ld [de], a                                       ; $45f7: $12
	ld d, c                                          ; $45f8: $51
	ld [hl], b                                       ; $45f9: $70
	ld d, l                                          ; $45fa: $55
	inc de                                           ; $45fb: $13
	db $ec                                           ; $45fc: $ec
	ld c, a                                          ; $45fd: $4f
	dec [hl]                                         ; $45fe: $35
	ldh a, [$8a]                                     ; $45ff: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4601: $f0 $52
	jr c, jr_091_464a                                ; $4603: $38 $45

	and b                                            ; $4605: $a0
	rst JumpTable                                          ; $4606: $c7
	xor c                                            ; $4607: $a9
	ld b, [hl]                                       ; $4608: $46
	ld d, a                                          ; $4609: $57
	ld d, e                                          ; $460a: $53
	ld c, c                                          ; $460b: $49
	add hl, sp                                       ; $460c: $39
	xor b                                            ; $460d: $a8
	ld b, b                                          ; $460e: $40

jr_091_460f:
	ld b, c                                          ; $460f: $41
	ld a, [hl-]                                      ; $4610: $3a
	ld d, h                                          ; $4611: $54
	ld c, c                                          ; $4612: $49
	add d                                            ; $4613: $82
	dec sp                                           ; $4614: $3b
	ccf                                              ; $4615: $3f
	ld d, l                                          ; $4616: $55
	ld c, l                                          ; $4617: $4d
	ld c, [hl]                                       ; $4618: $4e
	ld b, d                                          ; $4619: $42
	inc de                                           ; $461a: $13
	ld b, [hl]                                       ; $461b: $46
	ld a, [hl-]                                      ; $461c: $3a
	dec a                                            ; $461d: $3d
	ld b, h                                          ; $461e: $44
	ld e, l                                          ; $461f: $5d
	ld b, l                                          ; $4620: $45
	and b                                            ; $4621: $a0
	cpl                                              ; $4622: $2f
	ld [$09d7], a                                    ; $4623: $ea $d7 $09
	cpl                                              ; $4626: $2f
	ld b, e                                          ; $4627: $43
	or h                                             ; $4628: $b4
	xor h                                            ; $4629: $ac
	ld [$344f], a                                    ; $462a: $ea $4f $34
	db $ec                                           ; $462d: $ec
	inc c                                            ; $462e: $0c
	and c                                            ; $462f: $a1
	ld l, a                                          ; $4630: $6f
	ld c, e                                          ; $4631: $4b
	ld [hl], d                                       ; $4632: $72
	ccf                                              ; $4633: $3f
	ld c, [hl]                                       ; $4634: $4e
	inc a                                            ; $4635: $3c
	ld d, b                                          ; $4636: $50
	xor h                                            ; $4637: $ac
	cp d                                             ; $4638: $ba
	and b                                            ; $4639: $a0
	cpl                                              ; $463a: $2f
	ld b, e                                          ; $463b: $43
	xor $2d                                          ; $463c: $ee $2d
	inc [hl]                                         ; $463e: $34
	db $ec                                           ; $463f: $ec
	and $47                                          ; $4640: $e6 $47
	inc de                                           ; $4642: $13
	rst SubAFromDE                                          ; $4643: $df
	ld b, l                                          ; $4644: $45
	and b                                            ; $4645: $a0
	ld b, [hl]                                       ; $4646: $46
	ld d, a                                          ; $4647: $57
	ld d, e                                          ; $4648: $53
	ld c, c                                          ; $4649: $49

jr_091_464a:
	add hl, sp                                       ; $464a: $39
	xor b                                            ; $464b: $a8
	ldh a, [rSVBK]                                   ; $464c: $f0 $70
	ld b, d                                          ; $464e: $42
	ldh a, [rPCM34]                                  ; $464f: $f0 $77
	ld hl, sp-$27                                    ; $4651: $f8 $d9
	ld b, a                                          ; $4653: $47
	inc de                                           ; $4654: $13
	sub [hl]                                         ; $4655: $96
	ld c, l                                          ; $4656: $4d
	ccf                                              ; $4657: $3f
	ld b, [hl]                                       ; $4658: $46
	ldh a, [rSB]                                     ; $4659: $f0 $01
	ld b, l                                          ; $465b: $45
	add hl, sp                                       ; $465c: $39
	dec sp                                           ; $465d: $3b
	ld c, c                                          ; $465e: $49
	and b                                            ; $465f: $a0
	cpl                                              ; $4660: $2f
	ld b, e                                          ; $4661: $43
	or h                                             ; $4662: $b4
	xor h                                            ; $4663: $ac
	ldh a, [c]                                       ; $4664: $f2
	inc [hl]                                         ; $4665: $34
	ldh a, [c]                                       ; $4666: $f2
	ld h, d                                          ; $4667: $62
	ldh a, [rSB]                                     ; $4668: $f0 $01
	ld c, d                                          ; $466a: $4a
	ld c, a                                          ; $466b: $4f
	db $ec                                           ; $466c: $ec
	inc c                                            ; $466d: $0c
	and c                                            ; $466e: $a1
	pop af                                           ; $466f: $f1
	ld a, [$ec3e]                                    ; $4670: $fa $3e $ec
	db $f4                                           ; $4673: $f4
	and b                                            ; $4674: $a0
	cpl                                              ; $4675: $2f
	ld b, e                                          ; $4676: $43
	pop af                                           ; $4677: $f1
	inc b                                            ; $4678: $04
	ld c, l                                          ; $4679: $4d
	dec a                                            ; $467a: $3d
	ld d, b                                          ; $467b: $50
	xor h                                            ; $467c: $ac
	db $ec                                           ; $467d: $ec
	and $47                                          ; $467e: $e6 $47
	rst SubAFromDE                                          ; $4680: $df
	ld c, h                                          ; $4681: $4c
	and b                                            ; $4682: $a0
	cpl                                              ; $4683: $2f
	ld b, e                                          ; $4684: $43
	xor $2d                                          ; $4685: $ee $2d
	inc [hl]                                         ; $4687: $34
	db $ec                                           ; $4688: $ec
	and $a0                                          ; $4689: $e6 $a0
	ld b, [hl]                                       ; $468b: $46
	ld d, a                                          ; $468c: $57
	ld d, e                                          ; $468d: $53
	ld c, c                                          ; $468e: $49
	add hl, sp                                       ; $468f: $39
	and b                                            ; $4690: $a0
	cpl                                              ; $4691: $2f
	ld b, e                                          ; $4692: $43
	ld [hl], b                                       ; $4693: $70
	ld [hl], c                                       ; $4694: $71
	ld b, c                                          ; $4695: $41
	ld c, b                                          ; $4696: $48
	inc [hl]                                         ; $4697: $34
	db $ec                                           ; $4698: $ec
	and $a8                                          ; $4699: $e6 $a8
	ld l, e                                          ; $469b: $6b
	ld c, a                                          ; $469c: $4f
	pop af                                           ; $469d: $f1
	inc b                                            ; $469e: $04
	ld c, l                                          ; $469f: $4d
	ld a, [hl-]                                      ; $46a0: $3a
	inc a                                            ; $46a1: $3c
	dec sp                                           ; $46a2: $3b
	dec a                                            ; $46a3: $3d
	ld b, l                                          ; $46a4: $45
	and b                                            ; $46a5: $a0
	ld c, d                                          ; $46a6: $4a
	ld a, $66                                        ; $46a7: $3e $66
	xor c                                            ; $46a9: $a9
	ld b, h                                          ; $46aa: $44
	inc a                                            ; $46ab: $3c
	ld d, b                                          ; $46ac: $50
	pop af                                           ; $46ad: $f1
	ld a, [$383e]                                    ; $46ae: $fa $3e $38
	dec sp                                           ; $46b1: $3b
	ccf                                              ; $46b2: $3f
	add d                                            ; $46b3: $82
	dec sp                                           ; $46b4: $3b
	dec a                                            ; $46b5: $3d
	ld b, d                                          ; $46b6: $42
	ld b, l                                          ; $46b7: $45
	and b                                            ; $46b8: $a0
	cpl                                              ; $46b9: $2f
	ld b, e                                          ; $46ba: $43
	ld l, d                                          ; $46bb: $6a
	ldh a, [rAUD1HIGH]                               ; $46bc: $f0 $14
	ld c, e                                          ; $46be: $4b
	xor h                                            ; $46bf: $ac
	jp hl                                            ; $46c0: $e9


	dec [hl]                                         ; $46c1: $35
	xor b                                            ; $46c2: $a8
	ld [$a038], a                                    ; $46c3: $ea $38 $a0
	xor $1f                                          ; $46c6: $ee $1f
	inc [hl]                                         ; $46c8: $34
	ld h, a                                          ; $46c9: $67
	ld d, h                                          ; $46ca: $54
	add hl, sp                                       ; $46cb: $39
	and b                                            ; $46cc: $a0
	db $ec                                           ; $46cd: $ec
	inc de                                           ; $46ce: $13
	db $ed                                           ; $46cf: $ed
	adc l                                            ; $46d0: $8d
	ld b, h                                          ; $46d1: $44
	dec sp                                           ; $46d2: $3b
	dec a                                            ; $46d3: $3d
	ld c, h                                          ; $46d4: $4c
	and b                                            ; $46d5: $a0
	cpl                                              ; $46d6: $2f
	add sp, $2e                                      ; $46d7: $e8 $2e
	add hl, bc                                       ; $46d9: $09
	db $ed                                           ; $46da: $ed
	adc l                                            ; $46db: $8d
	ld b, a                                          ; $46dc: $47
	db $ed                                           ; $46dd: $ed
	ld [hl], c                                       ; $46de: $71
	ld d, e                                          ; $46df: $53
	inc de                                           ; $46e0: $13
	ldh a, [$9a]                                     ; $46e1: $f0 $9a
	jr c, jr_091_4724                                ; $46e3: $38 $3f

	ld c, [hl]                                       ; $46e5: $4e
	ld b, d                                          ; $46e6: $42
	ld [hl], $ea                                     ; $46e7: $36 $ea
	or c                                             ; $46e9: $b1
	ld c, b                                          ; $46ea: $48
	and b                                            ; $46eb: $a0
	cpl                                              ; $46ec: $2f
	add sp, -$25                                     ; $46ed: $e8 $db
	add hl, bc                                       ; $46ef: $09
	call c, $ec34                                    ; $46f0: $dc $34 $ec
	ld d, d                                          ; $46f3: $52
	ld c, a                                          ; $46f4: $4f
	inc de                                           ; $46f5: $13
	adc e                                            ; $46f6: $8b
	ld e, h                                          ; $46f7: $5c
	ld b, h                                          ; $46f8: $44
	ld e, l                                          ; $46f9: $5d
	ld e, d                                          ; $46fa: $5a
	ld c, b                                          ; $46fb: $48
	and b                                            ; $46fc: $a0
	cpl                                              ; $46fd: $2f
	adc b                                            ; $46fe: $88
	sub c                                            ; $46ff: $91
	inc [hl]                                         ; $4700: $34
	db $ed                                           ; $4701: $ed
	ld c, c                                          ; $4702: $49
	ld b, h                                          ; $4703: $44
	dec sp                                           ; $4704: $3b
	dec a                                            ; $4705: $3d
	ld c, h                                          ; $4706: $4c
	add hl, bc                                       ; $4707: $09
	ld d, d                                          ; $4708: $52
	dec a                                            ; $4709: $3d
	ld a, b                                          ; $470a: $78
	ldh a, [rAUD1HIGH]                               ; $470b: $f0 $14
	xor h                                            ; $470d: $ac
	xor $06                                          ; $470e: $ee $06
	ld b, a                                          ; $4710: $47
	ld [hl], d                                       ; $4711: $72
	ld c, l                                          ; $4712: $4d
	ld c, [hl]                                       ; $4713: $4e
	ld c, c                                          ; $4714: $49
	jr c, jr_091_474f                                ; $4715: $38 $38

	ld c, h                                          ; $4717: $4c
	and b                                            ; $4718: $a0
	ld b, b                                          ; $4719: $40
	ld c, l                                          ; $471a: $4d
	ld e, e                                          ; $471b: $5b
	ld d, [hl]                                       ; $471c: $56
	xor h                                            ; $471d: $ac
	ldh a, [rAUD2HIGH]                               ; $471e: $f0 $19
	ld b, a                                          ; $4720: $47
	sub [hl]                                         ; $4721: $96
	ld e, a                                          ; $4722: $5f
	and b                                            ; $4723: $a0

jr_091_4724:
	ld l, a                                          ; $4724: $6f
	xor h                                            ; $4725: $ac
	add e                                            ; $4726: $83
	ldh a, [$c2]                                     ; $4727: $f0 $c2
	ld e, c                                          ; $4729: $59
	ld l, c                                          ; $472a: $69
	ld c, e                                          ; $472b: $4b
	db $ed                                           ; $472c: $ed
	ld l, b                                          ; $472d: $68
	ld a, [hl-]                                      ; $472e: $3a
	ld b, c                                          ; $472f: $41
	ld b, h                                          ; $4730: $44
	and b                                            ; $4731: $a0
	adc b                                            ; $4732: $88
	sub c                                            ; $4733: $91
	xor c                                            ; $4734: $a9
	db $ec                                           ; $4735: $ec
	cp c                                             ; $4736: $b9
	xor b                                            ; $4737: $a8
	ret                                              ; $4738: $c9


	pop af                                           ; $4739: $f1
	rst SubAFromBC                                          ; $473a: $e7
	sbc c                                            ; $473b: $99
	ld a, $ec                                        ; $473c: $3e $ec
	add hl, de                                       ; $473e: $19
	and b                                            ; $473f: $a0
	cpl                                              ; $4740: $2f
	ldh a, [c]                                       ; $4741: $f2
	ld d, e                                          ; $4742: $53
	ld b, d                                          ; $4743: $42
	ldh a, [$3e]                                     ; $4744: $f0 $3e
	ld a, [hl-]                                      ; $4746: $3a
	ld b, c                                          ; $4747: $41
	ccf                                              ; $4748: $3f
	inc [hl]                                         ; $4749: $34
	sbc h                                            ; $474a: $9c
	ld c, [hl]                                       ; $474b: $4e
	jr c, @+$47                                      ; $474c: $38 $45

	ld c, h                                          ; $474e: $4c

jr_091_474f:
	add hl, bc                                       ; $474f: $09
	ld a, [hl-]                                      ; $4750: $3a
	inc [hl]                                         ; $4751: $34
	ld l, e                                          ; $4752: $6b
	ld d, e                                          ; $4753: $53
	sbc h                                            ; $4754: $9c
	ld c, [hl]                                       ; $4755: $4e
	jr c, jr_091_479a                                ; $4756: $38 $42

	inc a                                            ; $4758: $3c
	inc de                                           ; $4759: $13
	ld b, l                                          ; $475a: $45
	ld d, l                                          ; $475b: $55
	ldh a, [rTAC]                                    ; $475c: $f0 $07
	inc a                                            ; $475e: $3c
	ld d, b                                          ; $475f: $50
	ld a, [hl-]                                      ; $4760: $3a
	jr c, jr_091_47c0                                ; $4761: $38 $5d

	ld e, d                                          ; $4763: $5a
	ld c, b                                          ; $4764: $48
	and b                                            ; $4765: $a0
	cpl                                              ; $4766: $2f
	xor $06                                          ; $4767: $ee $06
	ld b, a                                          ; $4769: $47
	xor $19                                          ; $476a: $ee $19
	ld a, $45                                        ; $476c: $3e $45
	add hl, sp                                       ; $476e: $39
	ld b, l                                          ; $476f: $45
	add hl, bc                                       ; $4770: $09
	xor $1f                                          ; $4771: $ee $1f
	xor b                                            ; $4773: $a8
	ldh a, [c]                                       ; $4774: $f2
	ld e, c                                          ; $4775: $59
	di                                               ; $4776: $f3
	sub h                                            ; $4777: $94
	ld c, e                                          ; $4778: $4b
	ld a, [$f155]                                    ; $4779: $fa $55 $f1
	ld a, d                                          ; $477c: $7a
	ld a, $3a                                        ; $477d: $3e $3a
	jr c, jr_091_47ca                                ; $477f: $38 $49

	ld c, h                                          ; $4781: $4c
	and b                                            ; $4782: $a0
	db $eb                                           ; $4783: $eb
	sub l                                            ; $4784: $95
	ld c, [hl]                                       ; $4785: $4e
	ld c, h                                          ; $4786: $4c

jr_091_4787:
	xor b                                            ; $4787: $a8
	pop af                                           ; $4788: $f1
	ld [hl], $41                                     ; $4789: $36 $41
	ld b, h                                          ; $478b: $44
	ld d, b                                          ; $478c: $50
	add a                                            ; $478d: $87
	ldh a, [$5d]                                     ; $478e: $f0 $5d
	and b                                            ; $4790: $a0
	cpl                                              ; $4791: $2f
	add sp, -$4a                                     ; $4792: $e8 $b6
	add hl, bc                                       ; $4794: $09
	ld b, [hl]                                       ; $4795: $46
	inc [hl]                                         ; $4796: $34
	ld b, [hl]                                       ; $4797: $46
	ld d, a                                          ; $4798: $57
	ld d, e                                          ; $4799: $53

jr_091_479a:
	ld c, c                                          ; $479a: $49
	add hl, sp                                       ; $479b: $39
	xor l                                            ; $479c: $ad
	ldh a, [c]                                       ; $479d: $f2
	ld a, a                                          ; $479e: $7f
	ld e, b                                          ; $479f: $58
	ld a, [hl-]                                      ; $47a0: $3a
	jr c, jr_091_47ed                                ; $47a1: $38 $4a

	ld b, l                                          ; $47a3: $45
	and b                                            ; $47a4: $a0
	cpl                                              ; $47a5: $2f
	pop af                                           ; $47a6: $f1
	ld [hl], $7b                                     ; $47a7: $36 $7b
	ld a, [hl-]                                      ; $47a9: $3a
	ld e, h                                          ; $47aa: $5c
	ld d, [hl]                                       ; $47ab: $56
	jr c, jr_091_47e6                                ; $47ac: $38 $38

	ld b, h                                          ; $47ae: $44
	ld e, l                                          ; $47af: $5d
	ld b, d                                          ; $47b0: $42
	ldh a, [rAUDVOL]                                 ; $47b1: $f0 $24
	ld b, h                                          ; $47b3: $44
	ld b, l                                          ; $47b4: $45
	add hl, bc                                       ; $47b5: $09
	ld b, b                                          ; $47b6: $40
	inc [hl]                                         ; $47b7: $34
	ld b, b                                          ; $47b8: $40
	ld c, l                                          ; $47b9: $4d
	ld c, e                                          ; $47ba: $4b
	inc de                                           ; $47bb: $13
	ld [$4c30], a                                    ; $47bc: $ea $30 $4c
	ld c, b                                          ; $47bf: $48

jr_091_47c0:
	and b                                            ; $47c0: $a0
	cpl                                              ; $47c1: $2f
	db $ed                                           ; $47c2: $ed
	and b                                            ; $47c3: $a0
	ld e, [hl]                                       ; $47c4: $5e
	ldh a, [rHDMA1]                                  ; $47c5: $f0 $51
	dec sp                                           ; $47c7: $3b
	ccf                                              ; $47c8: $3f
	ld e, h                                          ; $47c9: $5c

jr_091_47ca:
	dec a                                            ; $47ca: $3d
	inc a                                            ; $47cb: $3c
	and c                                            ; $47cc: $a1
	db $eb                                           ; $47cd: $eb
	ld c, $13                                        ; $47ce: $0e $13
	inc a                                            ; $47d0: $3c
	ld e, l                                          ; $47d1: $5d

jr_091_47d2:
	ld a, [hl-]                                      ; $47d2: $3a
	jr c, jr_091_481f                                ; $47d3: $38 $4a

	ld b, l                                          ; $47d5: $45
	and b                                            ; $47d6: $a0
	ld b, b                                          ; $47d7: $40
	ld c, l                                          ; $47d8: $4d
	ld e, e                                          ; $47d9: $5b
	ld d, [hl]                                       ; $47da: $56
	xor h                                            ; $47db: $ac
	ldh a, [$0a]                                     ; $47dc: $f0 $0a
	pop af                                           ; $47de: $f1
	jr jr_091_47d2                                   ; $47df: $18 $f1

	ld e, e                                          ; $47e1: $5b
	ld d, b                                          ; $47e2: $50
	ld a, [hl-]                                      ; $47e3: $3a
	jr c, jr_091_4787                                ; $47e4: $38 $a1

jr_091_47e6:
	add e                                            ; $47e6: $83
	ldh a, [$2f]                                     ; $47e7: $f0 $2f
	ld e, c                                          ; $47e9: $59
	ld c, e                                          ; $47ea: $4b
	ldh a, [$3e]                                     ; $47eb: $f0 $3e

jr_091_47ed:
	ldh a, [$0b]                                     ; $47ed: $f0 $0b
	ld a, [hl-]                                      ; $47ef: $3a
	ld b, d                                          ; $47f0: $42
	and c                                            ; $47f1: $a1
	cpl                                              ; $47f2: $2f
	add sp, $64                                      ; $47f3: $e8 $64
	add hl, bc                                       ; $47f5: $09
	ld e, e                                          ; $47f6: $5b
	ld d, [hl]                                       ; $47f7: $56
	xor h                                            ; $47f8: $ac
	ldh a, [$2b]                                     ; $47f9: $f0 $2b
	ldh a, [$7c]                                     ; $47fb: $f0 $7c
	ld h, l                                          ; $47fd: $65
	ldh a, [$fd]                                     ; $47fe: $f0 $fd
	ldh a, [$c3]                                     ; $4800: $f0 $c3
	ld h, l                                          ; $4802: $65
	ldh a, [rAUD1LEN]                                ; $4803: $f0 $11
	ld e, c                                          ; $4805: $59
	add e                                            ; $4806: $83
	ldh a, [$5a]                                     ; $4807: $f0 $5a
	call $2fa0                                       ; $4809: $cd $a0 $2f
	db $eb                                           ; $480c: $eb
	sub e                                            ; $480d: $93
	xor h                                            ; $480e: $ac
	add sp, -$6e                                     ; $480f: $e8 $92
	xor b                                            ; $4811: $a8
	db $eb                                           ; $4812: $eb
	sub h                                            ; $4813: $94
	pop af                                           ; $4814: $f1
	ld e, e                                          ; $4815: $5b
	ld c, l                                          ; $4816: $4d
	ld a, [hl-]                                      ; $4817: $3a
	jr c, jr_091_485b                                ; $4818: $38 $41

	ld b, h                                          ; $481a: $44
	and e                                            ; $481b: $a3
	cpl                                              ; $481c: $2f
	pop af                                           ; $481d: $f1
	daa                                              ; $481e: $27

jr_091_481f:
	ldh a, [rP1]                                     ; $481f: $f0 $00
	ld a, [hl-]                                      ; $4821: $3a
	ld d, b                                          ; $4822: $50
	ldh a, [$67]                                     ; $4823: $f0 $67
	ldh a, [$9f]                                     ; $4825: $f0 $9f
	ld b, [hl]                                       ; $4827: $46
	ld c, [hl]                                       ; $4828: $4e
	ld b, c                                          ; $4829: $41
	ld b, h                                          ; $482a: $44
	ld e, l                                          ; $482b: $5d
	ld e, d                                          ; $482c: $5a
	ld a, [hl-]                                      ; $482d: $3a
	add hl, bc                                       ; $482e: $09
	rst JumpTable                                          ; $482f: $c7
	xor l                                            ; $4830: $ad
	ld b, b                                          ; $4831: $40
	ld c, l                                          ; $4832: $4d
	ld e, e                                          ; $4833: $5b
	ld d, [hl]                                       ; $4834: $56
	inc [hl]                                         ; $4835: $34
	db $ec                                           ; $4836: $ec
	ld c, $f1                                        ; $4837: $0e $f1
	ld e, e                                          ; $4839: $5b
	ld c, [hl]                                       ; $483a: $4e
	inc a                                            ; $483b: $3c
	ld d, b                                          ; $483c: $50
	inc de                                           ; $483d: $13
	add b                                            ; $483e: $80
	jr c, jr_091_4880                                ; $483f: $38 $3f

	ld e, h                                          ; $4841: $5c
	ccf                                              ; $4842: $3f
	ld c, h                                          ; $4843: $4c
	and b                                            ; $4844: $a0
	cpl                                              ; $4845: $2f
	ld c, c                                          ; $4846: $49
	ld d, a                                          ; $4847: $57
	ld b, [hl]                                       ; $4848: $46
	ld e, [hl]                                       ; $4849: $5e
	sbc h                                            ; $484a: $9c
	pop af                                           ; $484b: $f1
	ld e, e                                          ; $484c: $5b
	ld c, l                                          ; $484d: $4d
	ld c, [hl]                                       ; $484e: $4e
	ld b, l                                          ; $484f: $45
	add hl, bc                                       ; $4850: $09
	ld e, e                                          ; $4851: $5b
	ld d, [hl]                                       ; $4852: $56
	xor h                                            ; $4853: $ac
	ldh a, [rAUD2HIGH]                               ; $4854: $f0 $19
	pop af                                           ; $4856: $f1
	ret nz                                           ; $4857: $c0

	ldh a, [rAUD1LEN]                                ; $4858: $f0 $11
	ld e, c                                          ; $485a: $59

jr_091_485b:
	add e                                            ; $485b: $83
	ldh a, [$5a]                                     ; $485c: $f0 $5a
	db $ec                                           ; $485e: $ec
	rlca                                             ; $485f: $07
	and b                                            ; $4860: $a0
	ld d, h                                          ; $4861: $54
	ld b, d                                          ; $4862: $42
	ld [$5ae2], a                                    ; $4863: $ea $e2 $5a
	add hl, sp                                       ; $4866: $39
	and c                                            ; $4867: $a1
	cpl                                              ; $4868: $2f
	db $eb                                           ; $4869: $eb
	ld [hl], c                                       ; $486a: $71
	ld b, l                                          ; $486b: $45
	add hl, bc                                       ; $486c: $09

jr_091_486d:
	ld c, d                                          ; $486d: $4a
	ld a, $66                                        ; $486e: $3e $66
	xor c                                            ; $4870: $a9
	di                                               ; $4871: $f3
	ld d, e                                          ; $4872: $53
	ldh a, [c]                                       ; $4873: $f2
	ld [hl], c                                       ; $4874: $71
	di                                               ; $4875: $f3
	ld d, d                                          ; $4876: $52
	di                                               ; $4877: $f3
	ld d, e                                          ; $4878: $53
	ldh a, [c]                                       ; $4879: $f2
	jr c, jr_091_486d                                ; $487a: $38 $f1

	ld [bc], a                                       ; $487c: $02
	ldh a, [$a1]                                     ; $487d: $f0 $a1
	ld e, c                                          ; $487f: $59

jr_091_4880:
	pop af                                           ; $4880: $f1
	dec b                                            ; $4881: $05
	ldh a, [rWY]                                     ; $4882: $f0 $4a
	ldh a, [$03]                                     ; $4884: $f0 $03
	ld b, h                                          ; $4886: $44
	ld b, l                                          ; $4887: $45
	and b                                            ; $4888: $a0
	db $ed                                           ; $4889: $ed
	ld b, c                                          ; $488a: $41
	xor c                                            ; $488b: $a9
	pop af                                           ; $488c: $f1
	db $e4                                           ; $488d: $e4
	ldh a, [$c7]                                     ; $488e: $f0 $c7
	ld c, l                                          ; $4890: $4d
	ld b, h                                          ; $4891: $44
	ld e, l                                          ; $4892: $5d
	ld e, d                                          ; $4893: $5a
	ld c, h                                          ; $4894: $4c
	and b                                            ; $4895: $a0
	cpl                                              ; $4896: $2f
	ldh a, [$8a]                                     ; $4897: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4899: $f0 $52
	jr c, jr_091_48e2                                ; $489b: $38 $45

	add hl, bc                                       ; $489d: $09
	add hl, sp                                       ; $489e: $39
	ld e, c                                          ; $489f: $59
	ld b, c                                          ; $48a0: $41
	inc [hl]                                         ; $48a1: $34
	ldh a, [$8a]                                     ; $48a2: $f0 $8a
	ldh a, [rHDMA2]                                  ; $48a4: $f0 $52
	jr c, jr_091_48f0                                ; $48a6: $38 $48

	inc a                                            ; $48a8: $3c
	xor l                                            ; $48a9: $ad
	ld d, d                                          ; $48aa: $52
	inc [hl]                                         ; $48ab: $34
	jr c, jr_091_48e6                                ; $48ac: $38 $38

	inc a                                            ; $48ae: $3c
	and b                                            ; $48af: $a0
	cpl                                              ; $48b0: $2f
	ld l, e                                          ; $48b1: $6b
	inc a                                            ; $48b2: $3c
	ldh a, [$5d]                                     ; $48b3: $f0 $5d
	ld b, h                                          ; $48b5: $44
	sub a                                            ; $48b6: $97
	add hl, bc                                       ; $48b7: $09
	ld e, [hl]                                       ; $48b8: $5e
	ld [hl], $5a                                     ; $48b9: $36 $5a
	ld d, h                                          ; $48bb: $54
	ld d, e                                          ; $48bc: $53
	ldh a, [$5d]                                     ; $48bd: $f0 $5d
	xor c                                            ; $48bf: $a9
	db $ec                                           ; $48c0: $ec
	db $ed                                           ; $48c1: $ed
	and b                                            ; $48c2: $a0
	add hl, bc                                       ; $48c3: $09
	db $ed                                           ; $48c4: $ed
	ld d, a                                          ; $48c5: $57
	xor h                                            ; $48c6: $ac
	ldh a, [$9a]                                     ; $48c7: $f0 $9a
	ld e, h                                          ; $48c9: $5c
	ldh a, [rTMA]                                    ; $48ca: $f0 $06
	dec sp                                           ; $48cc: $3b
	ccf                                              ; $48cd: $3f
	ld d, l                                          ; $48ce: $55
	ld c, l                                          ; $48cf: $4d
	ccf                                              ; $48d0: $3f
	xor h                                            ; $48d1: $ac
	ld b, [hl]                                       ; $48d2: $46
	ld d, a                                          ; $48d3: $57
	ld d, e                                          ; $48d4: $53
	ld c, c                                          ; $48d5: $49
	add hl, sp                                       ; $48d6: $39
	and b                                            ; $48d7: $a0
	cpl                                              ; $48d8: $2f
	ld b, e                                          ; $48d9: $43
	ld l, d                                          ; $48da: $6a
	ldh a, [$0d]                                     ; $48db: $f0 $0d
	ld c, e                                          ; $48dd: $4b
	inc [hl]                                         ; $48de: $34
	halt                                             ; $48df: $76
	inc a                                            ; $48e0: $3c
	ld d, b                                          ; $48e1: $50

jr_091_48e2:
	inc de                                           ; $48e2: $13
	ldh a, [$3b]                                     ; $48e3: $f0 $3b
	dec sp                                           ; $48e5: $3b

jr_091_48e6:
	ccf                                              ; $48e6: $3f
	db $ec                                           ; $48e7: $ec
	ld a, [bc]                                       ; $48e8: $0a
	and c                                            ; $48e9: $a1
	xor $1f                                          ; $48ea: $ee $1f
	xor b                                            ; $48ec: $a8
	sbc c                                            ; $48ed: $99
	dec sp                                           ; $48ee: $3b
	ccf                                              ; $48ef: $3f

jr_091_48f0:
	ld c, [hl]                                       ; $48f0: $4e
	ld h, e                                          ; $48f1: $63
	and b                                            ; $48f2: $a0
	xor $1f                                          ; $48f3: $ee $1f
	inc [hl]                                         ; $48f5: $34
	jr c, jr_091_4930                                ; $48f6: $38 $38

	ld b, l                                          ; $48f8: $45
	and b                                            ; $48f9: $a0
	cpl                                              ; $48fa: $2f
	ld b, e                                          ; $48fb: $43
	ld e, e                                          ; $48fc: $5b
	ld d, [hl]                                       ; $48fd: $56
	ld b, [hl]                                       ; $48fe: $46
	inc [hl]                                         ; $48ff: $34
	ld b, b                                          ; $4900: $40
	add hl, sp                                       ; $4901: $39
	ld d, c                                          ; $4902: $51
	ld c, [hl]                                       ; $4903: $4e
	ld b, l                                          ; $4904: $45
	and b                                            ; $4905: $a0
	db $ec                                           ; $4906: $ec
	rst AddAOntoHL                                          ; $4907: $ef
	ld c, a                                          ; $4908: $4f
	inc [hl]                                         ; $4909: $34
	ld d, h                                          ; $490a: $54
	ld d, h                                          ; $490b: $54
	ld b, h                                          ; $490c: $44
	dec sp                                           ; $490d: $3b
	dec a                                            ; $490e: $3d
	ld c, h                                          ; $490f: $4c
	xor b                                            ; $4910: $a8
	ret                                              ; $4911: $c9


	ldh a, [c]                                       ; $4912: $f2
	ld a, [hl]                                       ; $4913: $7e
	ld e, h                                          ; $4914: $5c
	ld h, c                                          ; $4915: $61
	ld d, [hl]                                       ; $4916: $56
	dec a                                            ; $4917: $3d
	inc a                                            ; $4918: $3c
	ld a, [hl-]                                      ; $4919: $3a
	and b                                            ; $491a: $a0
	cpl                                              ; $491b: $2f
	ld b, e                                          ; $491c: $43
	ld [$36af], a                                    ; $491d: $ea $af $36
	rla                                              ; $4920: $17
	add sp, $50                                      ; $4921: $e8 $50
	inc de                                           ; $4923: $13
	add sp, -$7a                                     ; $4924: $e8 $86
	and e                                            ; $4926: $a3
	db $ed                                           ; $4927: $ed
	ld d, a                                          ; $4928: $57
	inc de                                           ; $4929: $13
	ld c, c                                          ; $492a: $49
	ccf                                              ; $492b: $3f
	ld c, a                                          ; $492c: $4f
	ld [$a8b7], a                                    ; $492d: $ea $b7 $a8

jr_091_4930:
	ld d, d                                          ; $4930: $52
	dec a                                            ; $4931: $3d
	ldh a, [$3b]                                     ; $4932: $f0 $3b
	dec sp                                           ; $4934: $3b
	ccf                                              ; $4935: $3f
	ld c, h                                          ; $4936: $4c
	and b                                            ; $4937: $a0
	ld [$a8b7], a                                    ; $4938: $ea $b7 $a8
	ld d, d                                          ; $493b: $52
	dec a                                            ; $493c: $3d
	ldh a, [$3b]                                     ; $493d: $f0 $3b
	dec sp                                           ; $493f: $3b
	ccf                                              ; $4940: $3f
	ld c, h                                          ; $4941: $4c
	and b                                            ; $4942: $a0
	db $ed                                           ; $4943: $ed
	ld d, a                                          ; $4944: $57
	inc de                                           ; $4945: $13
	db $eb                                           ; $4946: $eb
	jr c, @+$5f                                      ; $4947: $38 $5d

	ld e, d                                          ; $4949: $5a
	xor h                                            ; $494a: $ac
	ld d, d                                          ; $494b: $52
	dec a                                            ; $494c: $3d
	ldh a, [$3b]                                     ; $494d: $f0 $3b
	dec sp                                           ; $494f: $3b
	ccf                                              ; $4950: $3f
	ld c, h                                          ; $4951: $4c
	and b                                            ; $4952: $a0
	cpl                                              ; $4953: $2f
	ld b, e                                          ; $4954: $43
	ld [$a8c3], a                                    ; $4955: $ea $c3 $a8
	jp hl                                            ; $4958: $e9


	ld b, [hl]                                       ; $4959: $46
	and b                                            ; $495a: $a0
	db $eb                                           ; $495b: $eb
	ld h, e                                          ; $495c: $63
	ld c, h                                          ; $495d: $4c
	xor b                                            ; $495e: $a8
	ld d, d                                          ; $495f: $52
	dec a                                            ; $4960: $3d
	ld l, d                                          ; $4961: $6a
	ldh a, [$0d]                                     ; $4962: $f0 $0d
	ldh a, [$3b]                                     ; $4964: $f0 $3b
	dec sp                                           ; $4966: $3b
	ccf                                              ; $4967: $3f
	ld c, h                                          ; $4968: $4c
	and b                                            ; $4969: $a0
	cpl                                              ; $496a: $2f
	ld b, e                                          ; $496b: $43
	jp hl                                            ; $496c: $e9


	ld b, [hl]                                       ; $496d: $46
	and b                                            ; $496e: $a0
	db $ed                                           ; $496f: $ed
	ld d, a                                          ; $4970: $57
	cp e                                             ; $4971: $bb
	ld c, h                                          ; $4972: $4c
	xor b                                            ; $4973: $a8
	ld d, d                                          ; $4974: $52
	dec a                                            ; $4975: $3d
	ld l, d                                          ; $4976: $6a
	ldh a, [$0d]                                     ; $4977: $f0 $0d
	ldh a, [$3b]                                     ; $4979: $f0 $3b
	dec sp                                           ; $497b: $3b
	ccf                                              ; $497c: $3f
	ld c, h                                          ; $497d: $4c
	and b                                            ; $497e: $a0
	db $ed                                           ; $497f: $ed
	ld d, a                                          ; $4980: $57
	inc de                                           ; $4981: $13
	ret                                              ; $4982: $c9


	ldh a, [$f3]                                     ; $4983: $f0 $f3
	ld c, l                                          ; $4985: $4d
	dec a                                            ; $4986: $3d
	inc a                                            ; $4987: $3c
	ld a, [hl-]                                      ; $4988: $3a
	and b                                            ; $4989: $a0
	cpl                                              ; $498a: $2f
	ld b, e                                          ; $498b: $43
	rst JumpTable                                          ; $498c: $c7
	ld c, b                                          ; $498d: $48
	and b                                            ; $498e: $a0
	ld c, c                                          ; $498f: $49
	ccf                                              ; $4990: $3f
	ld c, a                                          ; $4991: $4f
	ld [$a8b7], a                                    ; $4992: $ea $b7 $a8
	ld d, d                                          ; $4995: $52
	dec a                                            ; $4996: $3d
	ld l, d                                          ; $4997: $6a
	ldh a, [$0d]                                     ; $4998: $f0 $0d
	ldh a, [$3b]                                     ; $499a: $f0 $3b
	dec sp                                           ; $499c: $3b
	ccf                                              ; $499d: $3f
	ld c, h                                          ; $499e: $4c
	and b                                            ; $499f: $a0
	db $ed                                           ; $49a0: $ed
	ld d, a                                          ; $49a1: $57
	inc de                                           ; $49a2: $13
	ldh a, [$80]                                     ; $49a3: $f0 $80
	ldh a, [$c5]                                     ; $49a5: $f0 $c5
	ld [$a0b7], a                                    ; $49a7: $ea $b7 $a0
	cpl                                              ; $49aa: $2f
	ld b, e                                          ; $49ab: $43
	ld b, b                                          ; $49ac: $40
	add hl, sp                                       ; $49ad: $39
	inc [hl]                                         ; $49ae: $34
	db $ec                                           ; $49af: $ec
	cp c                                             ; $49b0: $b9
	and b                                            ; $49b1: $a0
	ret                                              ; $49b2: $c9


	ldh a, [$f3]                                     ; $49b3: $f0 $f3
	ld c, l                                          ; $49b5: $4d
	dec a                                            ; $49b6: $3d
	ld h, e                                          ; $49b7: $63
	and b                                            ; $49b8: $a0
	ldh a, [$f3]                                     ; $49b9: $f0 $f3
	ld c, l                                          ; $49bb: $4d
	dec a                                            ; $49bc: $3d
	xor l                                            ; $49bd: $ad
	ld a, b                                          ; $49be: $78
	ld a, [hl-]                                      ; $49bf: $3a
	ld e, h                                          ; $49c0: $5c
	ld d, [hl]                                       ; $49c1: $56
	ld b, l                                          ; $49c2: $45
	inc a                                            ; $49c3: $3c
	dec sp                                           ; $49c4: $3b
	dec a                                            ; $49c5: $3d
	and b                                            ; $49c6: $a0
	cpl                                              ; $49c7: $2f
	ld b, e                                          ; $49c8: $43
	xor $10                                          ; $49c9: $ee $10
	xor $10                                          ; $49cb: $ee $10
	xor b                                            ; $49cd: $a8
	add sp, -$72                                     ; $49ce: $e8 $8e
	and e                                            ; $49d0: $a3
	ld b, [hl]                                       ; $49d1: $46
	dec sp                                           ; $49d2: $3b
	inc [hl]                                         ; $49d3: $34
	ld b, b                                          ; $49d4: $40
	add hl, sp                                       ; $49d5: $39
	ld b, h                                          ; $49d6: $44
	and b                                            ; $49d7: $a0
	cpl                                              ; $49d8: $2f
	ld b, e                                          ; $49d9: $43
	db $eb                                           ; $49da: $eb
	rst FarCall                                          ; $49db: $f7
	and c                                            ; $49dc: $a1
	cpl                                              ; $49dd: $2f
	ld b, e                                          ; $49de: $43
	ld b, [hl]                                       ; $49df: $46
	ld d, a                                          ; $49e0: $57
	ld d, e                                          ; $49e1: $53
	ld c, c                                          ; $49e2: $49
	add hl, sp                                       ; $49e3: $39
	xor b                                            ; $49e4: $a8
	ldh a, [$29]                                     ; $49e5: $f0 $29
	ld a, $38                                        ; $49e7: $3e $38
	ld b, l                                          ; $49e9: $45
	xor b                                            ; $49ea: $a8
	ld [hl-], a                                      ; $49eb: $32
	db $ec                                           ; $49ec: $ec
	and $47                                          ; $49ed: $e6 $47

jr_091_49ef:
	db $eb                                           ; $49ef: $eb
	dec a                                            ; $49f0: $3d
	inc de                                           ; $49f1: $13
	ld c, a                                          ; $49f2: $4f
	ld d, b                                          ; $49f3: $50
	ld e, [hl]                                       ; $49f4: $5e
	ld c, [hl]                                       ; $49f5: $4e
	ld a, [hl-]                                      ; $49f6: $3a
	ld b, c                                          ; $49f7: $41
	ccf                                              ; $49f8: $3f
	xor h                                            ; $49f9: $ac
	halt                                             ; $49fa: $76
	ld c, e                                          ; $49fb: $4b
	pop af                                           ; $49fc: $f1
	and d                                            ; $49fd: $a2
	ld a, c                                          ; $49fe: $79
	pop af                                           ; $49ff: $f1
	ld b, d                                          ; $4a00: $42
	ld b, h                                          ; $4a01: $44
	ld e, c                                          ; $4a02: $59
	scf                                              ; $4a03: $37
	inc sp                                           ; $4a04: $33
	add hl, bc                                       ; $4a05: $09
	ld e, e                                          ; $4a06: $5b
	ld d, [hl]                                       ; $4a07: $56
	inc [hl]                                         ; $4a08: $34
	db $ec                                           ; $4a09: $ec
	rrca                                             ; $4a0a: $0f
	xor c                                            ; $4a0b: $a9
	ld d, $a0                                        ; $4a0c: $16 $a0
	ld b, b                                          ; $4a0e: $40
	ld c, l                                          ; $4a0f: $4d
	ld e, e                                          ; $4a10: $5b
	ld d, [hl]                                       ; $4a11: $56
	inc [hl]                                         ; $4a12: $34
	ld a, d                                          ; $4a13: $7a
	ld e, a                                          ; $4a14: $5f
	add hl, sp                                       ; $4a15: $39
	ld b, l                                          ; $4a16: $45
	xor b                                            ; $4a17: $a8
	ld d, $a0                                        ; $4a18: $16 $a0
	ld b, b                                          ; $4a1a: $40
	ld c, l                                          ; $4a1b: $4d
	ld e, e                                          ; $4a1c: $5b
	ld d, [hl]                                       ; $4a1d: $56
	and b                                            ; $4a1e: $a0
	add hl, bc                                       ; $4a1f: $09

jr_091_4a20:
	cpl                                              ; $4a20: $2f
	ld h, $f0                                        ; $4a21: $26 $f0
	ld [hl-], a                                      ; $4a23: $32
	ld h, l                                          ; $4a24: $65
	ld [hl], e                                       ; $4a25: $73
	dec h                                            ; $4a26: $25
	add hl, bc                                       ; $4a27: $09
	ccf                                              ; $4a28: $3f
	ld [hl], c                                       ; $4a29: $71
	add l                                            ; $4a2a: $85
	inc [hl]                                         ; $4a2b: $34
	ldh a, [rAUD2ENV]                                ; $4a2c: $f0 $17
	ldh a, [$a7]                                     ; $4a2e: $f0 $a7
	ld c, l                                          ; $4a30: $4d
	ld c, c                                          ; $4a31: $49
	ld c, e                                          ; $4a32: $4b
	xor h                                            ; $4a33: $ac
	jr c, jr_091_4a6e                                ; $4a34: $38 $38

	pop af                                           ; $4a36: $f1

jr_091_4a37:
	ld de, $07f0                                     ; $4a37: $11 $f0 $07
	ld e, e                                          ; $4a3a: $5b
	ld d, [hl]                                       ; $4a3b: $56
	ld c, h                                          ; $4a3c: $4c
	ld e, c                                          ; $4a3d: $59
	inc a                                            ; $4a3e: $3c
	xor b                                            ; $4a3f: $a8
	ret                                              ; $4a40: $c9


	ld b, b                                          ; $4a41: $40
	ld d, h                                          ; $4a42: $54

jr_091_4a43:
	ld b, d                                          ; $4a43: $42
	pop af                                           ; $4a44: $f1
	jr z, jr_091_4a37                                ; $4a45: $28 $f0

	ld b, h                                          ; $4a47: $44
	ld d, d                                          ; $4a48: $52
	ld c, d                                          ; $4a49: $4a
	ld a, b                                          ; $4a4a: $78
	jr c, jr_091_49ef                                ; $4a4b: $38 $a2

	ld h, h                                          ; $4a4d: $64
	jr c, jr_091_4a84                                ; $4a4e: $38 $34

	ld h, h                                          ; $4a50: $64
	sbc [hl]                                         ; $4a51: $9e
	scf                                              ; $4a52: $37
	inc de                                           ; $4a53: $13
	halt                                             ; $4a54: $76
	ldh a, [hDisp0_OBP1]                                     ; $4a55: $f0 $87
	ld b, a                                          ; $4a57: $47
	ldh a, [$fe]                                     ; $4a58: $f0 $fe
	add b                                            ; $4a5a: $80
	inc a                                            ; $4a5b: $3c
	dec sp                                           ; $4a5c: $3b
	ccf                                              ; $4a5d: $3f
	ld h, h                                          ; $4a5e: $64
	ld e, h                                          ; $4a5f: $5c
	ld a, [hl-]                                      ; $4a60: $3a
	ld d, e                                          ; $4a61: $53
	ld d, b                                          ; $4a62: $50
	xor h                                            ; $4a63: $ac
	ld l, l                                          ; $4a64: $6d
	add d                                            ; $4a65: $82
	ld c, a                                          ; $4a66: $4f
	ldh a, [rAUD1LOW]                                ; $4a67: $f0 $13
	ld a, $49                                        ; $4a69: $3e $49
	ld c, e                                          ; $4a6b: $4b
	ld a, [hl-]                                      ; $4a6c: $3a
	ld [hl], h                                       ; $4a6d: $74

jr_091_4a6e:
	dec [hl]                                         ; $4a6e: $35
	inc hl                                           ; $4a6f: $23
	inc de                                           ; $4a70: $13
	ret                                              ; $4a71: $c9


	ld b, b                                          ; $4a72: $40
	ld d, h                                          ; $4a73: $54
	ld b, d                                          ; $4a74: $42
	pop af                                           ; $4a75: $f1
	jr z, @-$0e                                      ; $4a76: $28 $f0

	ld b, h                                          ; $4a78: $44
	ld d, d                                          ; $4a79: $52
	ld c, d                                          ; $4a7a: $4a
	ld a, b                                          ; $4a7b: $78
	jr c, jr_091_4a20                                ; $4a7c: $38 $a2

	ld l, d                                          ; $4a7e: $6a
	inc [hl]                                         ; $4a7f: $34
	ld h, h                                          ; $4a80: $64
	sbc [hl]                                         ; $4a81: $9e
	xor h                                            ; $4a82: $ac
	halt                                             ; $4a83: $76

jr_091_4a84:
	ld b, a                                          ; $4a84: $47
	ldh a, [$a6]                                     ; $4a85: $f0 $a6
	ld h, l                                          ; $4a87: $65
	ld d, l                                          ; $4a88: $55
	ld c, l                                          ; $4a89: $4d
	dec a                                            ; $4a8a: $3d

jr_091_4a8b:
	ld e, a                                          ; $4a8b: $5f
	xor b                                            ; $4a8c: $a8
	pop af                                           ; $4a8d: $f1
	sub $78                                          ; $4a8e: $d6 $78
	dec a                                            ; $4a90: $3d
	scf                                              ; $4a91: $37
	scf                                              ; $4a92: $37
	inc de                                           ; $4a93: $13
	ret                                              ; $4a94: $c9


	ld b, b                                          ; $4a95: $40
	ld d, h                                          ; $4a96: $54
	ld b, d                                          ; $4a97: $42
	pop af                                           ; $4a98: $f1
	jr z, jr_091_4a8b                                ; $4a99: $28 $f0

	ld b, h                                          ; $4a9b: $44
	ld d, d                                          ; $4a9c: $52
	ld c, d                                          ; $4a9d: $4a
	ld a, b                                          ; $4a9e: $78
	jr c, jr_091_4a43                                ; $4a9f: $38 $a2

	add hl, bc                                       ; $4aa1: $09
	cpl                                              ; $4aa2: $2f
	ld b, e                                          ; $4aa3: $43
	db $ed                                           ; $4aa4: $ed
	ld d, a                                          ; $4aa5: $57
	inc [hl]                                         ; $4aa6: $34
	db $ed                                           ; $4aa7: $ed
	db $10                                           ; $4aa8: $10
	ld b, h                                          ; $4aa9: $44
	and b                                            ; $4aaa: $a0
	cpl                                              ; $4aab: $2f
	ld b, e                                          ; $4aac: $43
	db $ec                                           ; $4aad: $ec
	ld h, $ac                                        ; $4aae: $26 $ac
	db $ed                                           ; $4ab0: $ed
	ld l, d                                          ; $4ab1: $6a
	add a                                            ; $4ab2: $87
	ldh a, [rHDMA3]                                  ; $4ab3: $f0 $53
	ld b, h                                          ; $4ab5: $44
	xor b                                            ; $4ab6: $a8
	db $ed                                           ; $4ab7: $ed
	sbc l                                            ; $4ab8: $9d
	ldh a, [$df]                                     ; $4ab9: $f0 $df
	ld c, d                                          ; $4abb: $4a
	inc [hl]                                         ; $4abc: $34
	pop af                                           ; $4abd: $f1
	ld a, c                                          ; $4abe: $79
	pop af                                           ; $4abf: $f1
	ld h, d                                          ; $4ac0: $62
	ld a, $3a                                        ; $4ac1: $3e $3a
	ld e, h                                          ; $4ac3: $5c
	ld d, [hl]                                       ; $4ac4: $56
	and b                                            ; $4ac5: $a0
	cpl                                              ; $4ac6: $2f
	ld b, e                                          ; $4ac7: $43
	db $ec                                           ; $4ac8: $ec
	ld h, $34                                        ; $4ac9: $26 $34
	ldh a, [rSCX]                                    ; $4acb: $f0 $43
	ldh a, [rAUDTERM]                                ; $4acd: $f0 $25
	ld b, d                                          ; $4acf: $42
	inc de                                           ; $4ad0: $13
	ldh a, [$c1]                                     ; $4ad1: $f0 $c1
	ldh a, [$d5]                                     ; $4ad3: $f0 $d5
	ld b, h                                          ; $4ad5: $44
	dec [hl]                                         ; $4ad6: $35
	jp hl                                            ; $4ad7: $e9


	ld [hl], l                                       ; $4ad8: $75
	and b                                            ; $4ad9: $a0
	cpl                                              ; $4ada: $2f
	ld b, e                                          ; $4adb: $43
	db $ec                                           ; $4adc: $ec
	ld h, $34                                        ; $4add: $26 $34
	db $ed                                           ; $4adf: $ed
	add l                                            ; $4ae0: $85
	ld b, d                                          ; $4ae1: $42
	inc de                                           ; $4ae2: $13
	ldh a, [$c1]                                     ; $4ae3: $f0 $c1
	ldh a, [$d5]                                     ; $4ae5: $f0 $d5
	ld b, h                                          ; $4ae7: $44
	dec [hl]                                         ; $4ae8: $35
	jp hl                                            ; $4ae9: $e9


	ld [hl], l                                       ; $4aea: $75
	and b                                            ; $4aeb: $a0
	cpl                                              ; $4aec: $2f
	ld b, e                                          ; $4aed: $43
	ldh a, [$aa]                                     ; $4aee: $f0 $aa
	adc c                                            ; $4af0: $89
	adc a                                            ; $4af1: $8f
	ld c, e                                          ; $4af2: $4b
	inc [hl]                                         ; $4af3: $34
	ldh a, [$c1]                                     ; $4af4: $f0 $c1
	ldh a, [$d5]                                     ; $4af6: $f0 $d5
	pop af                                           ; $4af8: $f1
	ld l, b                                          ; $4af9: $68
	ld c, d                                          ; $4afa: $4a
	inc de                                           ; $4afb: $13
	xor $2a                                          ; $4afc: $ee $2a
	db $ec                                           ; $4afe: $ec
	ldh a, [c]                                       ; $4aff: $f2
	ld b, h                                          ; $4b00: $44
	xor b                                            ; $4b01: $a8
	jp hl                                            ; $4b02: $e9


	ccf                                              ; $4b03: $3f
	and b                                            ; $4b04: $a0
	cpl                                              ; $4b05: $2f
	ld b, e                                          ; $4b06: $43
	ldh a, [$aa]                                     ; $4b07: $f0 $aa
	adc c                                            ; $4b09: $89
	adc a                                            ; $4b0a: $8f
	ld c, e                                          ; $4b0b: $4b
	inc [hl]                                         ; $4b0c: $34
	ldh a, [$c1]                                     ; $4b0d: $f0 $c1
	ldh a, [$d5]                                     ; $4b0f: $f0 $d5
	pop af                                           ; $4b11: $f1
	ld l, b                                          ; $4b12: $68
	ld c, d                                          ; $4b13: $4a
	inc de                                           ; $4b14: $13
	ld [hl], l                                       ; $4b15: $75
	ld e, c                                          ; $4b16: $59
	ldh a, [c]                                       ; $4b17: $f2
	jr jr_091_4b73                                   ; $4b18: $18 $59

	db $ec                                           ; $4b1a: $ec
	ldh a, [c]                                       ; $4b1b: $f2
	ld b, h                                          ; $4b1c: $44
	xor b                                            ; $4b1d: $a8
	jp hl                                            ; $4b1e: $e9


	ccf                                              ; $4b1f: $3f
	and b                                            ; $4b20: $a0
	cpl                                              ; $4b21: $2f
	ld b, e                                          ; $4b22: $43
	ldh a, [$aa]                                     ; $4b23: $f0 $aa
	adc c                                            ; $4b25: $89
	adc a                                            ; $4b26: $8f
	ld c, e                                          ; $4b27: $4b
	inc [hl]                                         ; $4b28: $34
	xor $2a                                          ; $4b29: $ee $2a
	pop af                                           ; $4b2b: $f1
	ld l, b                                          ; $4b2c: $68
	ld c, d                                          ; $4b2d: $4a
	inc de                                           ; $4b2e: $13
	xor $2a                                          ; $4b2f: $ee $2a
	db $ec                                           ; $4b31: $ec
	ldh a, [c]                                       ; $4b32: $f2
	ld b, h                                          ; $4b33: $44
	xor b                                            ; $4b34: $a8
	jp hl                                            ; $4b35: $e9


	ccf                                              ; $4b36: $3f
	and b                                            ; $4b37: $a0
	cpl                                              ; $4b38: $2f
	ld b, e                                          ; $4b39: $43
	db $ec                                           ; $4b3a: $ec
	jr z, jr_091_4b71                                ; $4b3b: $28 $34

	pop af                                           ; $4b3d: $f1
	or b                                             ; $4b3e: $b0
	ldh a, [$3f]                                     ; $4b3f: $f0 $3f
	ld b, d                                          ; $4b41: $42
	inc de                                           ; $4b42: $13
	ldh a, [$c1]                                     ; $4b43: $f0 $c1
	ldh a, [$d5]                                     ; $4b45: $f0 $d5
	ld b, h                                          ; $4b47: $44
	dec [hl]                                         ; $4b48: $35
	jp hl                                            ; $4b49: $e9


	ccf                                              ; $4b4a: $3f
	and b                                            ; $4b4b: $a0
	cpl                                              ; $4b4c: $2f
	ld b, e                                          ; $4b4d: $43
	db $ec                                           ; $4b4e: $ec
	jr z, jr_091_4b85                                ; $4b4f: $28 $34

	ldh a, [$c1]                                     ; $4b51: $f0 $c1
	ldh a, [$d5]                                     ; $4b53: $f0 $d5
	pop af                                           ; $4b55: $f1
	ld l, b                                          ; $4b56: $68
	ld c, d                                          ; $4b57: $4a
	inc de                                           ; $4b58: $13
	ld [$44ec], a                                    ; $4b59: $ea $ec $44
	xor b                                            ; $4b5c: $a8
	jp hl                                            ; $4b5d: $e9


	ccf                                              ; $4b5e: $3f
	and b                                            ; $4b5f: $a0
	cpl                                              ; $4b60: $2f
	ld b, e                                          ; $4b61: $43
	db $ec                                           ; $4b62: $ec
	jr z, jr_091_4b99                                ; $4b63: $28 $34

	ldh a, [$c1]                                     ; $4b65: $f0 $c1
	ldh a, [$d5]                                     ; $4b67: $f0 $d5
	pop af                                           ; $4b69: $f1
	ld l, b                                          ; $4b6a: $68
	ld c, d                                          ; $4b6b: $4a
	inc de                                           ; $4b6c: $13
	db $ec                                           ; $4b6d: $ec
	ld [hl], $5c                                     ; $4b6e: $36 $5c
	ld b, h                                          ; $4b70: $44

jr_091_4b71:
	xor b                                            ; $4b71: $a8
	jp hl                                            ; $4b72: $e9


jr_091_4b73:
	ccf                                              ; $4b73: $3f
	and b                                            ; $4b74: $a0
	cpl                                              ; $4b75: $2f
	ld b, e                                          ; $4b76: $43
	db $ec                                           ; $4b77: $ec
	ret nc                                           ; $4b78: $d0

	ld c, e                                          ; $4b79: $4b
	xor h                                            ; $4b7a: $ac
	db $ed                                           ; $4b7b: $ed
	sbc l                                            ; $4b7c: $9d
	ldh a, [$df]                                     ; $4b7d: $f0 $df
	ld c, d                                          ; $4b7f: $4a
	db $eb                                           ; $4b80: $eb
	rst SubAFromBC                                          ; $4b81: $e7
	ld b, h                                          ; $4b82: $44
	xor b                                            ; $4b83: $a8
	jp hl                                            ; $4b84: $e9


jr_091_4b85:
	ccf                                              ; $4b85: $3f
	and b                                            ; $4b86: $a0
	cpl                                              ; $4b87: $2f
	ld b, e                                          ; $4b88: $43
	db $ec                                           ; $4b89: $ec
	ret nc                                           ; $4b8a: $d0

	ld c, e                                          ; $4b8b: $4b
	xor h                                            ; $4b8c: $ac
	db $ed                                           ; $4b8d: $ed
	sbc l                                            ; $4b8e: $9d
	ldh a, [$df]                                     ; $4b8f: $f0 $df
	ld c, d                                          ; $4b91: $4a
	xor $2b                                          ; $4b92: $ee $2b
	ldh a, [rHDMA3]                                  ; $4b94: $f0 $53
	ld b, h                                          ; $4b96: $44
	xor b                                            ; $4b97: $a8
	jp hl                                            ; $4b98: $e9


jr_091_4b99:
	ccf                                              ; $4b99: $3f
	and b                                            ; $4b9a: $a0
	cpl                                              ; $4b9b: $2f
	ld b, e                                          ; $4b9c: $43
	add hl, sp                                       ; $4b9d: $39
	ld d, d                                          ; $4b9e: $52
	ld d, l                                          ; $4b9f: $55
	pop af                                           ; $4ba0: $f1
	xor l                                            ; $4ba1: $ad
	pop af                                           ; $4ba2: $f1
	and l                                            ; $4ba3: $a5
	ld c, d                                          ; $4ba4: $4a
	ld e, h                                          ; $4ba5: $5c
	ld c, [hl]                                       ; $4ba6: $4e
	inc de                                           ; $4ba7: $13
	inc a                                            ; $4ba8: $3c
	ld a, [hl-]                                      ; $4ba9: $3a
	ld c, b                                          ; $4baa: $48
	dec [hl]                                         ; $4bab: $35
	db $eb                                           ; $4bac: $eb
	nop                                              ; $4bad: $00
	and b                                            ; $4bae: $a0
	cpl                                              ; $4baf: $2f
	ld b, e                                          ; $4bb0: $43
	add hl, sp                                       ; $4bb1: $39
	add hl, sp                                       ; $4bb2: $39
	dec sp                                           ; $4bb3: $3b
	xor h                                            ; $4bb4: $ac
	jp hl                                            ; $4bb5: $e9


	ld h, d                                          ; $4bb6: $62
	and b                                            ; $4bb7: $a0
	cpl                                              ; $4bb8: $2f
	ld b, e                                          ; $4bb9: $43
	add sp, -$0b                                     ; $4bba: $e8 $f5
	and b                                            ; $4bbc: $a0
	cpl                                              ; $4bbd: $2f
	ld b, e                                          ; $4bbe: $43
	jp hl                                            ; $4bbf: $e9


	ld h, c                                          ; $4bc0: $61
	xor h                                            ; $4bc1: $ac
	ldh a, [$ea]                                     ; $4bc2: $f0 $ea
	ld b, h                                          ; $4bc4: $44
	ld a, [hl-]                                      ; $4bc5: $3a
	ld [hl], h                                       ; $4bc6: $74
	and b                                            ; $4bc7: $a0
	cpl                                              ; $4bc8: $2f
	ld b, e                                          ; $4bc9: $43
	ld [$a874], a                                    ; $4bca: $ea $74 $a8
	jp hl                                            ; $4bcd: $e9


	db $ec                                           ; $4bce: $ec
	and b                                            ; $4bcf: $a0
	cpl                                              ; $4bd0: $2f
	ld [hl-], a                                      ; $4bd1: $32
	adc d                                            ; $4bd2: $8a
	ldh a, [$73]                                     ; $4bd3: $f0 $73
	adc a                                            ; $4bd5: $8f
	pop af                                           ; $4bd6: $f1
	ld c, [hl]                                       ; $4bd7: $4e
	ld l, [hl]                                       ; $4bd8: $6e
	dec sp                                           ; $4bd9: $3b
	ccf                                              ; $4bda: $3f
	ccf                                              ; $4bdb: $3f
	inc de                                           ; $4bdc: $13
	ld b, l                                          ; $4bdd: $45
	inc a                                            ; $4bde: $3c
	dec sp                                           ; $4bdf: $3b
	dec a                                            ; $4be0: $3d
	ld c, b                                          ; $4be1: $48
	inc sp                                           ; $4be2: $33
	add hl, bc                                       ; $4be3: $09
	cpl                                              ; $4be4: $2f
	ld b, e                                          ; $4be5: $43
	add h                                            ; $4be6: $84
	sbc [hl]                                         ; $4be7: $9e
	ld c, d                                          ; $4be8: $4a
	xor h                                            ; $4be9: $ac
	ldh a, [hDisp1_OBP1]                                     ; $4bea: $f0 $94
	ld [hl], c                                       ; $4bec: $71
	ccf                                              ; $4bed: $3f
	ld b, d                                          ; $4bee: $42
	xor $2b                                          ; $4bef: $ee $2b
	ld b, h                                          ; $4bf1: $44
	xor b                                            ; $4bf2: $a8
	jp hl                                            ; $4bf3: $e9


	ld c, b                                          ; $4bf4: $48
	xor b                                            ; $4bf5: $a8
	add sp, -$07                                     ; $4bf6: $e8 $f9
	ld c, b                                          ; $4bf8: $48
	and b                                            ; $4bf9: $a0
	cpl                                              ; $4bfa: $2f
	ld b, e                                          ; $4bfb: $43
	jp hl                                            ; $4bfc: $e9


	ld b, a                                          ; $4bfd: $47
	inc de                                           ; $4bfe: $13
	db $ec                                           ; $4bff: $ec
	reti                                             ; $4c00: $d9


	ld [$a0db], a                                    ; $4c01: $ea $db $a0
	cpl                                              ; $4c04: $2f
	ld b, e                                          ; $4c05: $43
	add sp, -$06                                     ; $4c06: $e8 $fa
	and b                                            ; $4c08: $a0
	ld b, [hl]                                       ; $4c09: $46
	dec sp                                           ; $4c0a: $3b
	inc [hl]                                         ; $4c0b: $34
	ld d, $a0                                        ; $4c0c: $16 $a0
	cpl                                              ; $4c0e: $2f
	ld b, e                                          ; $4c0f: $43
	ld l, e                                          ; $4c10: $6b
	ld b, h                                          ; $4c11: $44
	inc [hl]                                         ; $4c12: $34
	db $ed                                           ; $4c13: $ed
	xor c                                            ; $4c14: $a9
	db $ec                                           ; $4c15: $ec
	ret c                                            ; $4c16: $d8

	inc a                                            ; $4c17: $3c
	and b                                            ; $4c18: $a0
	add sp, -$5b                                     ; $4c19: $e8 $a5
	xor h                                            ; $4c1b: $ac
	ldh a, [rSCX]                                    ; $4c1c: $f0 $43
	ldh a, [$b8]                                     ; $4c1e: $f0 $b8
	adc a                                            ; $4c20: $8f
	ld b, a                                          ; $4c21: $47
	ld [$a0c7], a                                    ; $4c22: $ea $c7 $a0
	add sp, -$5b                                     ; $4c25: $e8 $a5
	xor h                                            ; $4c27: $ac
	ldh a, [$aa]                                     ; $4c28: $f0 $aa
	adc c                                            ; $4c2a: $89
	adc a                                            ; $4c2b: $8f
	ld b, a                                          ; $4c2c: $47
	ld [$a0c7], a                                    ; $4c2d: $ea $c7 $a0
	add sp, -$5b                                     ; $4c30: $e8 $a5
	xor h                                            ; $4c32: $ac
	adc d                                            ; $4c33: $8a
	ldh a, [$73]                                     ; $4c34: $f0 $73
	adc a                                            ; $4c36: $8f
	ld b, a                                          ; $4c37: $47
	ld [$a0c7], a                                    ; $4c38: $ea $c7 $a0
	add sp, -$5b                                     ; $4c3b: $e8 $a5
	xor h                                            ; $4c3d: $ac
	db $ec                                           ; $4c3e: $ec
	ret nc                                           ; $4c3f: $d0

	ld b, a                                          ; $4c40: $47
	ld [$a0c7], a                                    ; $4c41: $ea $c7 $a0
	ld c, h                                          ; $4c44: $4c
	ld e, [hl]                                       ; $4c45: $5e
	inc [hl]                                         ; $4c46: $34
	ld l, d                                          ; $4c47: $6a
	ld l, b                                          ; $4c48: $68
	ld b, d                                          ; $4c49: $42
	db $ed                                           ; $4c4a: $ed
	db $10                                           ; $4c4b: $10
	xor h                                            ; $4c4c: $ac
	jp hl                                            ; $4c4d: $e9


	push hl                                          ; $4c4e: $e5
	and c                                            ; $4c4f: $a1
	cpl                                              ; $4c50: $2f
	jp hl                                            ; $4c51: $e9


	ld c, d                                          ; $4c52: $4a
	add hl, bc                                       ; $4c53: $09
	db $ec                                           ; $4c54: $ec
	cp c                                             ; $4c55: $b9
	xor h                                            ; $4c56: $ac
	pop af                                           ; $4c57: $f1
	pop bc                                           ; $4c58: $c1
	ld d, b                                          ; $4c59: $50
	ld c, l                                          ; $4c5a: $4d
	ld a, [hl-]                                      ; $4c5b: $3a
	ld d, l                                          ; $4c5c: $55
	ccf                                              ; $4c5d: $3f
	xor b                                            ; $4c5e: $a8
	ld e, e                                          ; $4c5f: $5b
	ld d, [hl]                                       ; $4c60: $56
	ld b, [hl]                                       ; $4c61: $46
	inc [hl]                                         ; $4c62: $34
	ldh a, [$0a]                                     ; $4c63: $f0 $0a
	ld d, l                                          ; $4c65: $55
	ld h, a                                          ; $4c66: $67
	ld e, h                                          ; $4c67: $5c
	ld d, d                                          ; $4c68: $52
	ld a, $66                                        ; $4c69: $3e $66
	and b                                            ; $4c6b: $a0
	cpl                                              ; $4c6c: $2f
	jp hl                                            ; $4c6d: $e9


	ld d, h                                          ; $4c6e: $54
	add hl, bc                                       ; $4c6f: $09
	cpl                                              ; $4c70: $2f
	xor $1f                                          ; $4c71: $ee $1f
	inc [hl]                                         ; $4c73: $34
	ldh a, [c]                                       ; $4c74: $f2
	ld b, b                                          ; $4c75: $40
	sbc h                                            ; $4c76: $9c
	ld h, a                                          ; $4c77: $67
	ld d, l                                          ; $4c78: $55
	ld b, l                                          ; $4c79: $45
	add hl, bc                                       ; $4c7a: $09
	db $ec                                           ; $4c7b: $ec
	cp c                                             ; $4c7c: $b9
	xor h                                            ; $4c7d: $ac
	pop af                                           ; $4c7e: $f1
	pop bc                                           ; $4c7f: $c1
	ld d, b                                          ; $4c80: $50
	ld c, l                                          ; $4c81: $4d
	ld a, [hl-]                                      ; $4c82: $3a
	ld d, l                                          ; $4c83: $55
	ccf                                              ; $4c84: $3f
	xor b                                            ; $4c85: $a8
	ld e, e                                          ; $4c86: $5b
	ld d, [hl]                                       ; $4c87: $56
	ld b, [hl]                                       ; $4c88: $46
	inc [hl]                                         ; $4c89: $34
	sbc c                                            ; $4c8a: $99
	dec sp                                           ; $4c8b: $3b
	ccf                                              ; $4c8c: $3f
	ld c, [hl]                                       ; $4c8d: $4e
	inc a                                            ; $4c8e: $3c
	ld d, b                                          ; $4c8f: $50
	ld c, h                                          ; $4c90: $4c
	and b                                            ; $4c91: $a0
	cpl                                              ; $4c92: $2f
	db $ec                                           ; $4c93: $ec
	dec h                                            ; $4c94: $25
	ld c, b                                          ; $4c95: $48
	add hl, bc                                       ; $4c96: $09
	ld b, b                                          ; $4c97: $40
	add hl, sp                                       ; $4c98: $39
	xor l                                            ; $4c99: $ad
	db $eb                                           ; $4c9a: $eb
	ccf                                              ; $4c9b: $3f
	inc [hl]                                         ; $4c9c: $34
	ld [$48e4], a                                    ; $4c9d: $ea $e4 $48
	and b                                            ; $4ca0: $a0
	cpl                                              ; $4ca1: $2f
	ld b, e                                          ; $4ca2: $43
	ret                                              ; $4ca3: $c9


	xor h                                            ; $4ca4: $ac
	ld [$a034], a                                    ; $4ca5: $ea $34 $a0
	ld b, [hl]                                       ; $4ca8: $46
	dec sp                                           ; $4ca9: $3b
	inc [hl]                                         ; $4caa: $34
	ld d, $a8                                        ; $4cab: $16 $a8
	jp hl                                            ; $4cad: $e9


	dec hl                                           ; $4cae: $2b
	and b                                            ; $4caf: $a0
	cpl                                              ; $4cb0: $2f
	ld b, e                                          ; $4cb1: $43
	ld h, h                                          ; $4cb2: $64
	ld l, [hl]                                       ; $4cb3: $6e
	inc [hl]                                         ; $4cb4: $34
	db $ec                                           ; $4cb5: $ec
	rst SubAFromDE                                          ; $4cb6: $df
	xor b                                            ; $4cb7: $a8
	ld h, h                                          ; $4cb8: $64
	ld c, e                                          ; $4cb9: $4b
	ld b, l                                          ; $4cba: $45
	add hl, sp                                       ; $4cbb: $39
	and b                                            ; $4cbc: $a0
	ld b, [hl]                                       ; $4cbd: $46
	ld c, l                                          ; $4cbe: $4d
	xor c                                            ; $4cbf: $a9
	ld h, h                                          ; $4cc0: $64
	xor $08                                          ; $4cc1: $ee $08
	ld a, [hl-]                                      ; $4cc3: $3a
	ld b, c                                          ; $4cc4: $41
	ld c, d                                          ; $4cc5: $4a
	ld d, c                                          ; $4cc6: $51
	inc a                                            ; $4cc7: $3c
	and c                                            ; $4cc8: $a1
	cpl                                              ; $4cc9: $2f
	ld b, e                                          ; $4cca: $43
	xor $1f                                          ; $4ccb: $ee $1f
	inc [hl]                                         ; $4ccd: $34
	ld b, b                                          ; $4cce: $40
	add hl, sp                                       ; $4ccf: $39
	ld b, h                                          ; $4cd0: $44
	ld b, l                                          ; $4cd1: $45
	and b                                            ; $4cd2: $a0
	xor $1e                                          ; $4cd3: $ee $1e
	inc [hl]                                         ; $4cd5: $34
	db $ec                                           ; $4cd6: $ec
	cp c                                             ; $4cd7: $b9
	ld d, b                                          ; $4cd8: $50
	xor h                                            ; $4cd9: $ac
	ldh a, [c]                                       ; $4cda: $f2
	and h                                            ; $4cdb: $a4
	ldh a, [c]                                       ; $4cdc: $f2
	ld b, $34                                        ; $4cdd: $06 $34
	ldh a, [rSCX]                                    ; $4cdf: $f0 $43
	ldh a, [$b8]                                     ; $4ce1: $f0 $b8
	adc a                                            ; $4ce3: $8f
	ld b, a                                          ; $4ce4: $47
	inc de                                           ; $4ce5: $13
	ld a, b                                          ; $4ce6: $78
	ccf                                              ; $4ce7: $3f
	db $ec                                           ; $4ce8: $ec
	rst FarCall                                          ; $4ce9: $f7
	ld c, b                                          ; $4cea: $48
	and b                                            ; $4ceb: $a0
	db $ec                                           ; $4cec: $ec
	cp c                                             ; $4ced: $b9
	xor l                                            ; $4cee: $ad
	or h                                             ; $4cef: $b4
	inc [hl]                                         ; $4cf0: $34
	sbc c                                            ; $4cf1: $99
	dec sp                                           ; $4cf2: $3b
	ccf                                              ; $4cf3: $3f
	ld d, d                                          ; $4cf4: $52
	ld d, c                                          ; $4cf5: $51
	and b                                            ; $4cf6: $a0
	cpl                                              ; $4cf7: $2f
	ld [hl], b                                       ; $4cf8: $70
	ld [hl], c                                       ; $4cf9: $71
	ld b, c                                          ; $4cfa: $41
	ld c, b                                          ; $4cfb: $48
	add hl, bc                                       ; $4cfc: $09
	cp [hl]                                          ; $4cfd: $be
	xor l                                            ; $4cfe: $ad
	ldh a, [rAUD1LOW]                                ; $4cff: $f0 $13
	ldh a, [$63]                                     ; $4d01: $f0 $63
	ld b, a                                          ; $4d03: $47
	ld c, c                                          ; $4d04: $49
	ld c, e                                          ; $4d05: $4b
	add d                                            ; $4d06: $82
	jr c, jr_091_4d5b                                ; $4d07: $38 $52

jr_091_4d09:
	ld a, c                                          ; $4d09: $79
	ld b, c                                          ; $4d0a: $41
	ld b, d                                          ; $4d0b: $42
	ld c, d                                          ; $4d0c: $4a
	ld c, b                                          ; $4d0d: $48
	and b                                            ; $4d0e: $a0
	ld d, $a8                                        ; $4d0f: $16 $a8
	ld l, a                                          ; $4d11: $6f
	ld b, a                                          ; $4d12: $47
	di                                               ; $4d13: $f3
	db $fc                                           ; $4d14: $fc
	di                                               ; $4d15: $f3
	db $fd                                           ; $4d16: $fd
	ld c, e                                          ; $4d17: $4b
	and c                                            ; $4d18: $a1
	cpl                                              ; $4d19: $2f
	ld b, e                                          ; $4d1a: $43
	ld e, [hl]                                       ; $4d1b: $5e
	dec sp                                           ; $4d1c: $3b
	inc [hl]                                         ; $4d1d: $34
	ld b, [hl]                                       ; $4d1e: $46
	ld b, [hl]                                       ; $4d1f: $46
	xor b                                            ; $4d20: $a8
	db $ec                                           ; $4d21: $ec
	ldh [$34], a                                     ; $4d22: $e0 $34
	ld h, h                                          ; $4d24: $64
	ld c, e                                          ; $4d25: $4b
	ld b, l                                          ; $4d26: $45
	add hl, sp                                       ; $4d27: $39
	and b                                            ; $4d28: $a0
	ldh a, [c]                                       ; $4d29: $f2
	ld b, b                                          ; $4d2a: $40
	sbc h                                            ; $4d2b: $9c
	inc [hl]                                         ; $4d2c: $34
	ldh a, [$aa]                                     ; $4d2d: $f0 $aa
	adc c                                            ; $4d2f: $89
	adc a                                            ; $4d30: $8f
	ld b, a                                          ; $4d31: $47
	inc de                                           ; $4d32: $13
	ld a, b                                          ; $4d33: $78
	ld a, [hl-]                                      ; $4d34: $3a
	ld e, b                                          ; $4d35: $58
	jr c, jr_091_4d6d                                ; $4d36: $38 $35

	pop af                                           ; $4d38: $f1
	rst AddAOntoHL                                          ; $4d39: $ef
	db $f4                                           ; $4d3a: $f4
	ld a, [de]                                       ; $4d3b: $1a
	ld b, l                                          ; $4d3c: $45
	and b                                            ; $4d3d: $a0
	sub c                                            ; $4d3e: $91
	ldh a, [$59]                                     ; $4d3f: $f0 $59
	ld b, l                                          ; $4d41: $45
	xor b                                            ; $4d42: $a8
	ld a, b                                          ; $4d43: $78
	ld a, [hl-]                                      ; $4d44: $3a
	inc a                                            ; $4d45: $3c
	dec sp                                           ; $4d46: $3b
	dec a                                            ; $4d47: $3d
	ld d, b                                          ; $4d48: $50
	inc [hl]                                         ; $4d49: $34
	ld h, e                                          ; $4d4a: $63
	inc a                                            ; $4d4b: $3c
	dec sp                                           ; $4d4c: $3b
	ccf                                              ; $4d4d: $3f
	ld c, [hl]                                       ; $4d4e: $4e
	ld h, e                                          ; $4d4f: $63
	ld c, h                                          ; $4d50: $4c
	and b                                            ; $4d51: $a0
	cpl                                              ; $4d52: $2f
	ld h, h                                          ; $4d53: $64
	pop af                                           ; $4d54: $f1
	pop bc                                           ; $4d55: $c1
	ld d, a                                          ; $4d56: $57
	ld a, $52                                        ; $4d57: $3e $52
	ld d, c                                          ; $4d59: $51
	add hl, bc                                       ; $4d5a: $09

jr_091_4d5b:
	ld e, d                                          ; $4d5b: $5a
	add hl, sp                                       ; $4d5c: $39
	ld a, [hl-]                                      ; $4d5d: $3a
	ld c, [hl]                                       ; $4d5e: $4e
	inc a                                            ; $4d5f: $3c
	xor h                                            ; $4d60: $ac
	ldh a, [$f4]                                     ; $4d61: $f0 $f4
	ld e, [hl]                                       ; $4d63: $5e
	ccf                                              ; $4d64: $3f
	ld a, [hl-]                                      ; $4d65: $3a
	ld e, b                                          ; $4d66: $58
	jr c, jr_091_4d09                                ; $4d67: $38 $a0

	cpl                                              ; $4d69: $2f
	ld b, e                                          ; $4d6a: $43
	xor $10                                          ; $4d6b: $ee $10

jr_091_4d6d:
	ld h, b                                          ; $4d6d: $60
	and b                                            ; $4d6e: $a0
	ld [$acf5], a                                    ; $4d6f: $ea $f5 $ac
	ld h, h                                          ; $4d72: $64
	ld c, e                                          ; $4d73: $4b
	ld b, l                                          ; $4d74: $45
	add hl, sp                                       ; $4d75: $39
	inc [hl]                                         ; $4d76: $34
	ld d, $a0                                        ; $4d77: $16 $a0
	cpl                                              ; $4d79: $2f
	ld b, e                                          ; $4d7a: $43
	ld b, [hl]                                       ; $4d7b: $46
	dec sp                                           ; $4d7c: $3b
	inc [hl]                                         ; $4d7d: $34
	db $ec                                           ; $4d7e: $ec
	pop hl                                           ; $4d7f: $e1
	xor h                                            ; $4d80: $ac
	ld h, h                                          ; $4d81: $64
	ld c, e                                          ; $4d82: $4b
	ld b, l                                          ; $4d83: $45
	add hl, sp                                       ; $4d84: $39
	and b                                            ; $4d85: $a0
	ld c, h                                          ; $4d86: $4c
	add l                                            ; $4d87: $85
	inc [hl]                                         ; $4d88: $34
	db $ed                                           ; $4d89: $ed
	ld d, a                                          ; $4d8a: $57
	adc d                                            ; $4d8b: $8a
	ldh a, [$73]                                     ; $4d8c: $f0 $73
	adc a                                            ; $4d8e: $8f
	ld b, a                                          ; $4d8f: $47
	inc de                                           ; $4d90: $13
	jp hl                                            ; $4d91: $e9


	inc b                                            ; $4d92: $04
	and b                                            ; $4d93: $a0
	db $ec                                           ; $4d94: $ec
	rla                                              ; $4d95: $17
	xor b                                            ; $4d96: $a8
	ld e, e                                          ; $4d97: $5b
	ld d, [hl]                                       ; $4d98: $56
	ld b, [hl]                                       ; $4d99: $46
	inc [hl]                                         ; $4d9a: $34
	sbc c                                            ; $4d9b: $99
	dec sp                                           ; $4d9c: $3b
	ccf                                              ; $4d9d: $3f
	ld c, [hl]                                       ; $4d9e: $4e
	inc a                                            ; $4d9f: $3c
	ld d, b                                          ; $4da0: $50
	ld c, h                                          ; $4da1: $4c
	and b                                            ; $4da2: $a0
	cpl                                              ; $4da3: $2f
	ld [hl], b                                       ; $4da4: $70
	ld [hl], c                                       ; $4da5: $71
	ld b, c                                          ; $4da6: $41
	add hl, bc                                       ; $4da7: $09
	ld b, b                                          ; $4da8: $40
	add hl, sp                                       ; $4da9: $39
	xor l                                            ; $4daa: $ad
	db $eb                                           ; $4dab: $eb
	xor d                                            ; $4dac: $aa
	db $eb                                           ; $4dad: $eb
	inc [hl]                                         ; $4dae: $34
	ld h, e                                          ; $4daf: $63
	ld c, h                                          ; $4db0: $4c
	and b                                            ; $4db1: $a0
	xor $14                                          ; $4db2: $ee $14
	inc [hl]                                         ; $4db4: $34
	ld d, $13                                        ; $4db5: $16 $13
	db $ec                                           ; $4db7: $ec
	ret c                                            ; $4db8: $d8

	and b                                            ; $4db9: $a0
	cpl                                              ; $4dba: $2f
	ld b, e                                          ; $4dbb: $43
	ld b, [hl]                                       ; $4dbc: $46
	dec sp                                           ; $4dbd: $3b
	inc [hl]                                         ; $4dbe: $34
	db $ed                                           ; $4dbf: $ed
	ld d, e                                          ; $4dc0: $53
	xor h                                            ; $4dc1: $ac
	ld h, h                                          ; $4dc2: $64
	ld c, e                                          ; $4dc3: $4b
	ld b, l                                          ; $4dc4: $45
	add hl, sp                                       ; $4dc5: $39
	and b                                            ; $4dc6: $a0
	ld d, d                                          ; $4dc7: $52
	ld b, h                                          ; $4dc8: $44
	inc [hl]                                         ; $4dc9: $34
	ld h, h                                          ; $4dca: $64
	xor $08                                          ; $4dcb: $ee $08
	and c                                            ; $4dcd: $a1
	cpl                                              ; $4dce: $2f
	ld b, e                                          ; $4dcf: $43
	xor $1f                                          ; $4dd0: $ee $1f
	inc [hl]                                         ; $4dd2: $34
	ld b, b                                          ; $4dd3: $40
	add hl, sp                                       ; $4dd4: $39
	and b                                            ; $4dd5: $a0
	ld l, a                                          ; $4dd6: $6f
	ld d, e                                          ; $4dd7: $53
	inc [hl]                                         ; $4dd8: $34
	ldh a, [$bf]                                     ; $4dd9: $f0 $bf
	xor $06                                          ; $4ddb: $ee $06
	ld a, $3f                                        ; $4ddd: $3e $3f
	inc de                                           ; $4ddf: $13
	ld b, [hl]                                       ; $4de0: $46
	ldh a, [rSB]                                     ; $4de1: $f0 $01
	ccf                                              ; $4de3: $3f
	ld c, a                                          ; $4de4: $4f
	ld b, l                                          ; $4de5: $45
	ld d, l                                          ; $4de6: $55
	ccf                                              ; $4de7: $3f
	ld b, l                                          ; $4de8: $45
	xor b                                            ; $4de9: $a8
	ld [$a0e1], a                                    ; $4dea: $ea $e1 $a0
	cpl                                              ; $4ded: $2f
	xor $1f                                          ; $4dee: $ee $1f
	inc [hl]                                         ; $4df0: $34
	ld h, h                                          ; $4df1: $64
	ldh a, [$c8]                                     ; $4df2: $f0 $c8
	jr c, jr_091_4e47                                ; $4df4: $38 $51

	ld c, [hl]                                       ; $4df6: $4e
	ld b, l                                          ; $4df7: $45
	add hl, bc                                       ; $4df8: $09
	ld d, d                                          ; $4df9: $52
	inc [hl]                                         ; $4dfa: $34
	ld l, a                                          ; $4dfb: $6f
	ld b, d                                          ; $4dfc: $42
	ldh a, [$3b]                                     ; $4dfd: $f0 $3b
	jr c, jr_091_4e63                                ; $4dff: $38 $62

	pop af                                           ; $4e01: $f1
	pop bc                                           ; $4e02: $c1
	ld c, [hl]                                       ; $4e03: $4e
	ldh a, [$ab]                                     ; $4e04: $f0 $ab
	inc de                                           ; $4e06: $13
	ld a, [hl-]                                      ; $4e07: $3a
	ld b, c                                          ; $4e08: $41
	ccf                                              ; $4e09: $3f
	ldh a, [$a4]                                     ; $4e0a: $f0 $a4
	ld e, [hl]                                       ; $4e0c: $5e
	ld d, b                                          ; $4e0d: $50
	ld c, l                                          ; $4e0e: $4d
	ld a, [hl-]                                      ; $4e0f: $3a
	jr c, jr_091_4e6f                                ; $4e10: $38 $5d

	ld e, d                                          ; $4e12: $5a
	xor l                                            ; $4e13: $ad
	ld e, b                                          ; $4e14: $58
	ld b, [hl]                                       ; $4e15: $46
	inc [hl]                                         ; $4e16: $34
	ld e, d                                          ; $4e17: $5a
	ld d, h                                          ; $4e18: $54
	ld b, a                                          ; $4e19: $47
	ld h, a                                          ; $4e1a: $67
	ld d, l                                          ; $4e1b: $55
	ld b, d                                          ; $4e1c: $42
	and c                                            ; $4e1d: $a1
	cpl                                              ; $4e1e: $2f
	jr c, jr_091_4e8f                                ; $4e1f: $38 $6e

	inc [hl]                                         ; $4e21: $34
	jr c, @+$3a                                      ; $4e22: $38 $38

	ld b, l                                          ; $4e24: $45
	add hl, bc                                       ; $4e25: $09
	ld l, e                                          ; $4e26: $6b
	ld b, l                                          ; $4e27: $45
	scf                                              ; $4e28: $37
	inc de                                           ; $4e29: $13
	ld d, h                                          ; $4e2a: $54
	ld b, d                                          ; $4e2b: $42
	ld l, a                                          ; $4e2c: $6f
	ld d, e                                          ; $4e2d: $53
	inc [hl]                                         ; $4e2e: $34
	db $ec                                           ; $4e2f: $ec
	add hl, bc                                       ; $4e30: $09
	inc de                                           ; $4e31: $13
	ldh a, [$3b]                                     ; $4e32: $f0 $3b
	dec sp                                           ; $4e34: $3b
	ccf                                              ; $4e35: $3f
	ld b, [hl]                                       ; $4e36: $46
	ldh a, [rSB]                                     ; $4e37: $f0 $01
	ccf                                              ; $4e39: $3f
	ld c, [hl]                                       ; $4e3a: $4e
	ld b, d                                          ; $4e3b: $42
	ld b, a                                          ; $4e3c: $47
	xor b                                            ; $4e3d: $a8
	ldh a, [rHDMA5]                                  ; $4e3e: $f0 $55
	ldh a, [rBCPS]                                   ; $4e40: $f0 $68
	ld d, c                                          ; $4e42: $51
	ld c, [hl]                                       ; $4e43: $4e
	ld h, e                                          ; $4e44: $63
	ld c, h                                          ; $4e45: $4c
	and b                                            ; $4e46: $a0

jr_091_4e47:
	cpl                                              ; $4e47: $2f
	ld b, e                                          ; $4e48: $43
	ld b, [hl]                                       ; $4e49: $46
	ld d, a                                          ; $4e4a: $57
	ld d, [hl]                                       ; $4e4b: $56
	xor h                                            ; $4e4c: $ac
	pop af                                           ; $4e4d: $f1
	ld [hl-], a                                      ; $4e4e: $32
	ld d, b                                          ; $4e4f: $50
	ld a, c                                          ; $4e50: $79
	ld h, c                                          ; $4e51: $61
	ld d, [hl]                                       ; $4e52: $56
	dec sp                                           ; $4e53: $3b
	dec a                                            ; $4e54: $3d
	ld b, l                                          ; $4e55: $45
	and b                                            ; $4e56: $a0
	ld b, [hl]                                       ; $4e57: $46

jr_091_4e58:
	dec sp                                           ; $4e58: $3b
	inc [hl]                                         ; $4e59: $34
	db $ec                                           ; $4e5a: $ec
	jp nz, $2fa0                                     ; $4e5b: $c2 $a0 $2f

	ld b, e                                          ; $4e5e: $43
	db $eb                                           ; $4e5f: $eb
	ld a, [$6434]                                    ; $4e60: $fa $34 $64

jr_091_4e63:
	ld c, e                                          ; $4e63: $4b
	ld b, l                                          ; $4e64: $45
	add hl, sp                                       ; $4e65: $39
	xor b                                            ; $4e66: $a8
	ld l, e                                          ; $4e67: $6b
	inc a                                            ; $4e68: $3c
	ldh a, [rAUD2LEN]                                ; $4e69: $f0 $16
	and c                                            ; $4e6b: $a1
	ld c, h                                          ; $4e6c: $4c
	ld e, [hl]                                       ; $4e6d: $5e
	inc [hl]                                         ; $4e6e: $34

jr_091_4e6f:
	ld c, h                                          ; $4e6f: $4c
	ld e, [hl]                                       ; $4e70: $5e
	xor h                                            ; $4e71: $ac
	db $eb                                           ; $4e72: $eb
	rst JumpTable                                          ; $4e73: $c7
	ld a, $45                                        ; $4e74: $3e $45
	add hl, sp                                       ; $4e76: $39
	xor c                                            ; $4e77: $a9
	ld c, h                                          ; $4e78: $4c
	add l                                            ; $4e79: $85
	inc [hl]                                         ; $4e7a: $34
	jr c, jr_091_4eb5                                ; $4e7b: $38 $38

	ld c, d                                          ; $4e7d: $4a
	ld a, $66                                        ; $4e7e: $3e $66
	add hl, sp                                       ; $4e80: $39
	and b                                            ; $4e81: $a0
	cpl                                              ; $4e82: $2f

jr_091_4e83:
	xor $1f                                          ; $4e83: $ee $1f
	inc [hl]                                         ; $4e85: $34
	jr c, jr_091_4ec0                                ; $4e86: $38 $38

	ld b, l                                          ; $4e88: $45
	add hl, bc                                       ; $4e89: $09
	ld e, e                                          ; $4e8a: $5b
	ld d, [hl]                                       ; $4e8b: $56
	ld b, [hl]                                       ; $4e8c: $46
	inc [hl]                                         ; $4e8d: $34
	pop af                                           ; $4e8e: $f1

jr_091_4e8f:
	jr jr_091_4e83                                   ; $4e8f: $18 $f2

	sub c                                            ; $4e91: $91
	ld c, d                                          ; $4e92: $4a
	ld h, a                                          ; $4e93: $67
	ld d, h                                          ; $4e94: $54
	add hl, sp                                       ; $4e95: $39
	inc de                                           ; $4e96: $13
	ld b, l                                          ; $4e97: $45
	dec [hl]                                         ; $4e98: $35
	ldh a, [$08]                                     ; $4e99: $f0 $08
	ld d, b                                          ; $4e9b: $50
	inc [hl]                                         ; $4e9c: $34
	ldh a, [$0a]                                     ; $4e9d: $f0 $0a
	ld d, l                                          ; $4e9f: $55
	inc [hl]                                         ; $4ea0: $34
	ldh a, [$0a]                                     ; $4ea1: $f0 $0a
	ld d, l                                          ; $4ea3: $55
	and b                                            ; $4ea4: $a0
	cpl                                              ; $4ea5: $2f
	ld b, e                                          ; $4ea6: $43
	ld b, [hl]                                       ; $4ea7: $46
	inc [hl]                                         ; $4ea8: $34
	ld h, h                                          ; $4ea9: $64
	jr c, jr_091_4e58                                ; $4eaa: $38 $ac

	jp hl                                            ; $4eac: $e9


	ld d, b                                          ; $4ead: $50
	ld b, l                                          ; $4eae: $45
	xor b                                            ; $4eaf: $a8
	ld e, d                                          ; $4eb0: $5a
	ld d, h                                          ; $4eb1: $54
	ld b, a                                          ; $4eb2: $47
	ld h, a                                          ; $4eb3: $67
	ld d, l                                          ; $4eb4: $55

jr_091_4eb5:
	inc a                                            ; $4eb5: $3c
	ldh a, [$ec]                                     ; $4eb6: $f0 $ec
	ld [hl], c                                       ; $4eb8: $71
	ld b, l                                          ; $4eb9: $45
	add hl, sp                                       ; $4eba: $39
	adc l                                            ; $4ebb: $8d
	and b                                            ; $4ebc: $a0
	cpl                                              ; $4ebd: $2f
	jr c, jr_091_4f2e                                ; $4ebe: $38 $6e

jr_091_4ec0:
	inc [hl]                                         ; $4ec0: $34
	ret                                              ; $4ec1: $c9


	ld c, h                                          ; $4ec2: $4c
	ld c, b                                          ; $4ec3: $48
	add hl, bc                                       ; $4ec4: $09
	db $ec                                           ; $4ec5: $ec
	ld b, e                                          ; $4ec6: $43
	inc [hl]                                         ; $4ec7: $34
	ld b, h                                          ; $4ec8: $44
	ld [hl], c                                       ; $4ec9: $71
	ld a, [hl-]                                      ; $4eca: $3a
	ld b, d                                          ; $4ecb: $42
	xor c                                            ; $4ecc: $a9
	pop af                                           ; $4ecd: $f1
	ld d, d                                          ; $4ece: $52
	sub b                                            ; $4ecf: $90
	ld a, $6c                                        ; $4ed0: $3e $6c
	ld b, a                                          ; $4ed2: $47
	ld a, $3f                                        ; $4ed3: $3e $3f
	dec a                                            ; $4ed5: $3d
	ld b, d                                          ; $4ed6: $42
	ld b, a                                          ; $4ed7: $47
	xor l                                            ; $4ed8: $ad
	ld e, e                                          ; $4ed9: $5b
	ld d, [hl]                                       ; $4eda: $56
	ld b, [hl]                                       ; $4edb: $46
	inc [hl]                                         ; $4edc: $34
	ret nc                                           ; $4edd: $d0

	and b                                            ; $4ede: $a0
	ld h, h                                          ; $4edf: $64
	dec sp                                           ; $4ee0: $3b
	ld c, e                                          ; $4ee1: $4b
	ld b, l                                          ; $4ee2: $45
	ld e, c                                          ; $4ee3: $59
	inc de                                           ; $4ee4: $13
	ld [hl], b                                       ; $4ee5: $70
	ldh a, [rAUD1SWEEP]                              ; $4ee6: $f0 $10
	jr c, jr_091_4f3c                                ; $4ee8: $38 $52

	ld e, c                                          ; $4eea: $59
	ld d, c                                          ; $4eeb: $51
	and b                                            ; $4eec: $a0
	cpl                                              ; $4eed: $2f
	ld b, e                                          ; $4eee: $43
	db $eb                                           ; $4eef: $eb
	db $fc                                           ; $4ef0: $fc
	xor h                                            ; $4ef1: $ac
	ldh a, [$7d]                                     ; $4ef2: $f0 $7d
	inc a                                            ; $4ef4: $3c
	ld d, b                                          ; $4ef5: $50
	pop af                                           ; $4ef6: $f1
	rra                                              ; $4ef7: $1f
	ld a, a                                          ; $4ef8: $7f
	ld b, h                                          ; $4ef9: $44
	ld c, h                                          ; $4efa: $4c
	and b                                            ; $4efb: $a0
	ld c, h                                          ; $4efc: $4c
	add l                                            ; $4efd: $85
	inc [hl]                                         ; $4efe: $34
	ld c, h                                          ; $4eff: $4c
	add l                                            ; $4f00: $85
	inc de                                           ; $4f01: $13
	ld l, d                                          ; $4f02: $6a
	ld l, b                                          ; $4f03: $68
	db $eb                                           ; $4f04: $eb
	rst JumpTable                                          ; $4f05: $c7
	ld a, $52                                        ; $4f06: $3e $52
	ld a, c                                          ; $4f08: $79
	ld b, c                                          ; $4f09: $41
	inc a                                            ; $4f0a: $3c
	and c                                            ; $4f0b: $a1
	cpl                                              ; $4f0c: $2f
	ld b, e                                          ; $4f0d: $43
	ld b, [hl]                                       ; $4f0e: $46
	ld c, l                                          ; $4f0f: $4d
	inc [hl]                                         ; $4f10: $34
	adc e                                            ; $4f11: $8b
	ldh a, [$72]                                     ; $4f12: $f0 $72
	ld c, e                                          ; $4f14: $4b
	and c                                            ; $4f15: $a1
	db $eb                                           ; $4f16: $eb
	pop af                                           ; $4f17: $f1
	ld a, [hl-]                                      ; $4f18: $3a
	ld b, c                                          ; $4f19: $41
	ccf                                              ; $4f1a: $3f
	xor h                                            ; $4f1b: $ac
	ld e, d                                          ; $4f1c: $5a
	add hl, sp                                       ; $4f1d: $39
	ld c, d                                          ; $4f1e: $4a
	ld c, a                                          ; $4f1f: $4f
	jr c, jr_091_4f5a                                ; $4f20: $38 $38

	inc a                                            ; $4f22: $3c
	ld d, b                                          ; $4f23: $50
	xor h                                            ; $4f24: $ac
	xor $06                                          ; $4f25: $ee $06
	ld b, a                                          ; $4f27: $47
	ld [$45a9], a                                    ; $4f28: $ea $a9 $45
	ld e, c                                          ; $4f2b: $59
	and b                                            ; $4f2c: $a0
	cpl                                              ; $4f2d: $2f

jr_091_4f2e:
	jr c, @+$3a                                      ; $4f2e: $38 $38

	ld b, l                                          ; $4f30: $45
	inc [hl]                                         ; $4f31: $34
	xor $06                                          ; $4f32: $ee $06
	ld b, a                                          ; $4f34: $47
	ld h, a                                          ; $4f35: $67
	ld d, h                                          ; $4f36: $54
	add hl, sp                                       ; $4f37: $39
	add hl, bc                                       ; $4f38: $09
	db $ed                                           ; $4f39: $ed
	ld d, l                                          ; $4f3a: $55
	ld e, c                                          ; $4f3b: $59

jr_091_4f3c:
	xor b                                            ; $4f3c: $a8
	ld b, b                                          ; $4f3d: $40
	ld c, l                                          ; $4f3e: $4d
	ld e, e                                          ; $4f3f: $5b
	ld d, [hl]                                       ; $4f40: $56
	inc [hl]                                         ; $4f41: $34
	ld e, d                                          ; $4f42: $5a
	ld d, h                                          ; $4f43: $54
	ld b, a                                          ; $4f44: $47
	db $ec                                           ; $4f45: $ec
	rlca                                             ; $4f46: $07
	and c                                            ; $4f47: $a1
	cpl                                              ; $4f48: $2f
	add sp, $3a                                      ; $4f49: $e8 $3a
	add hl, bc                                       ; $4f4b: $09
	ret nc                                           ; $4f4c: $d0

	ld e, c                                          ; $4f4d: $59
	ld b, h                                          ; $4f4e: $44
	xor b                                            ; $4f4f: $a8
	ldh a, [rSCY]                                    ; $4f50: $f0 $42
	ld b, c                                          ; $4f52: $41
	ld b, h                                          ; $4f53: $44
	inc [hl]                                         ; $4f54: $34
	db $eb                                           ; $4f55: $eb
	pop af                                           ; $4f56: $f1
	ld c, c                                          ; $4f57: $49

jr_091_4f58:
	ld h, a                                          ; $4f58: $67
	ld d, l                                          ; $4f59: $55

jr_091_4f5a:
	ld c, a                                          ; $4f5a: $4f
	ld b, c                                          ; $4f5b: $41
	and b                                            ; $4f5c: $a0
	cpl                                              ; $4f5d: $2f
	ld b, e                                          ; $4f5e: $43
	ld b, [hl]                                       ; $4f5f: $46
	dec sp                                           ; $4f60: $3b
	xor h                                            ; $4f61: $ac
	pop af                                           ; $4f62: $f1
	ld b, e                                          ; $4f63: $43
	dec sp                                           ; $4f64: $3b
	ccf                                              ; $4f65: $3f
	ld [$a836], a                                    ; $4f66: $ea $36 $a8
	ld [$a034], a                                    ; $4f69: $ea $34 $a0
	ld h, h                                          ; $4f6c: $64
	ld c, e                                          ; $4f6d: $4b
	ld b, l                                          ; $4f6e: $45
	add hl, sp                                       ; $4f6f: $39
	xor b                                            ; $4f70: $a8
	ld d, $a0                                        ; $4f71: $16 $a0
	cpl                                              ; $4f73: $2f
	ld b, e                                          ; $4f74: $43
	ld b, [hl]                                       ; $4f75: $46
	inc [hl]                                         ; $4f76: $34
	db $ec                                           ; $4f77: $ec
	and $a8                                          ; $4f78: $e6 $a8
	ld h, h                                          ; $4f7a: $64
	ld c, e                                          ; $4f7b: $4b
	ld b, l                                          ; $4f7c: $45
	add hl, sp                                       ; $4f7d: $39
	and b                                            ; $4f7e: $a0
	db $ed                                           ; $4f7f: $ed
	ld d, a                                          ; $4f80: $57
	xor $08                                          ; $4f81: $ee $08
	ld a, [hl-]                                      ; $4f83: $3a
	ld b, d                                          ; $4f84: $42
	and c                                            ; $4f85: $a1
	ld c, a                                          ; $4f86: $4f
	ld a, $45                                        ; $4f87: $3e $45
	inc a                                            ; $4f89: $3c
	dec sp                                           ; $4f8a: $3b
	dec a                                            ; $4f8b: $3d
	ld d, b                                          ; $4f8c: $50
	xor h                                            ; $4f8d: $ac
	jp hl                                            ; $4f8e: $e9


	push hl                                          ; $4f8f: $e5
	and c                                            ; $4f90: $a1
	ld b, l                                          ; $4f91: $45
	inc a                                            ; $4f92: $3c
	dec sp                                           ; $4f93: $3b
	dec a                                            ; $4f94: $3d
	xor b                                            ; $4f95: $a8
	ret                                              ; $4f96: $c9


	ldh a, [$32]                                     ; $4f97: $f0 $32
	ldh a, [$2f]                                     ; $4f99: $f0 $2f
	ldh a, [$32]                                     ; $4f9b: $f0 $32
	ldh a, [$2f]                                     ; $4f9d: $f0 $2f
	db $eb                                           ; $4f9f: $eb
	ld d, [hl]                                       ; $4fa0: $56
	and b                                            ; $4fa1: $a0
	cpl                                              ; $4fa2: $2f
	ld b, e                                          ; $4fa3: $43
	ld e, [hl]                                       ; $4fa4: $5e
	and c                                            ; $4fa5: $a1
	add hl, sp                                       ; $4fa6: $39
	xor $1f                                          ; $4fa7: $ee $1f
	inc [hl]                                         ; $4fa9: $34
	ld l, e                                          ; $4faa: $6b
	ld c, d                                          ; $4fab: $4a
	ld c, a                                          ; $4fac: $4f

Call_091_4fad:
	ld a, [hl-]                                      ; $4fad: $3a
	jr c, jr_091_4f58                                ; $4fae: $38 $a8

	ld e, e                                          ; $4fb0: $5b
	ld d, [hl]                                       ; $4fb1: $56
	inc [hl]                                         ; $4fb2: $34
	ld e, d                                          ; $4fb3: $5a
	ld d, h                                          ; $4fb4: $54
	ld b, a                                          ; $4fb5: $47
	ld h, a                                          ; $4fb6: $67
	ld d, h                                          ; $4fb7: $54
	add hl, sp                                       ; $4fb8: $39
	and c                                            ; $4fb9: $a1
	cpl                                              ; $4fba: $2f
	jr c, jr_091_502b                                ; $4fbb: $38 $6e

	inc [hl]                                         ; $4fbd: $34
	ld l, [hl]                                       ; $4fbe: $6e
	ld [hl], c                                       ; $4fbf: $71
	ccf                                              ; $4fc0: $3f
	ld h, h                                          ; $4fc1: $64
	ld d, l                                          ; $4fc2: $55
	ld b, l                                          ; $4fc3: $45
	add hl, bc                                       ; $4fc4: $09
	rst JumpTable                                          ; $4fc5: $c7
	xor l                                            ; $4fc6: $ad
	ret                                              ; $4fc7: $c9


	ldh a, [$8d]                                     ; $4fc8: $f0 $8d
	ldh a, [$9e]                                     ; $4fca: $f0 $9e
	and b                                            ; $4fcc: $a0
	cpl                                              ; $4fcd: $2f
	ld b, e                                          ; $4fce: $43
	add hl, sp                                       ; $4fcf: $39
	ld e, c                                          ; $4fd0: $59
	ld b, c                                          ; $4fd1: $41
	inc [hl]                                         ; $4fd2: $34
	pop af                                           ; $4fd3: $f1
	sub h                                            ; $4fd4: $94
	dec a                                            ; $4fd5: $3d
	inc a                                            ; $4fd6: $3c
	dec sp                                           ; $4fd7: $3b
	dec a                                            ; $4fd8: $3d
	inc de                                           ; $4fd9: $13
	inc a                                            ; $4fda: $3c
	ld a, [hl-]                                      ; $4fdb: $3a
	ld c, b                                          ; $4fdc: $48
	and b                                            ; $4fdd: $a0
	cpl                                              ; $4fde: $2f
	pop hl                                           ; $4fdf: $e1
	ld c, d                                          ; $4fe0: $4a
	ld c, a                                          ; $4fe1: $4f
	ldh a, [$3b]                                     ; $4fe2: $f0 $3b
	dec sp                                           ; $4fe4: $3b
	ccf                                              ; $4fe5: $3f
	db $eb                                           ; $4fe6: $eb
	adc e                                            ; $4fe7: $8b
	and c                                            ; $4fe8: $a1
	cpl                                              ; $4fe9: $2f
	xor $08                                          ; $4fea: $ee $08
	ld c, d                                          ; $4fec: $4a
	db $eb                                           ; $4fed: $eb
	adc e                                            ; $4fee: $8b
	and c                                            ; $4fef: $a1
	cpl                                              ; $4ff0: $2f
	ld b, e                                          ; $4ff1: $43
	ld e, b                                          ; $4ff2: $58
	ld d, c                                          ; $4ff3: $51
	ld d, e                                          ; $4ff4: $53
	ld b, a                                          ; $4ff5: $47
	inc [hl]                                         ; $4ff6: $34
	db $ed                                           ; $4ff7: $ed
	xor c                                            ; $4ff8: $a9
	ld h, d                                          ; $4ff9: $62
	inc de                                           ; $4ffa: $13
	jp hl                                            ; $4ffb: $e9


	ld hl, $eaad                                     ; $4ffc: $21 $ad $ea
	inc hl                                           ; $4fff: $23
	and b                                            ; $5000: $a0
	cpl                                              ; $5001: $2f
	ld b, e                                          ; $5002: $43
	ld e, b                                          ; $5003: $58
	ld d, c                                          ; $5004: $51
	ld d, e                                          ; $5005: $53
	ld b, a                                          ; $5006: $47
	inc [hl]                                         ; $5007: $34
	db $ec                                           ; $5008: $ec
	rst SubAFromDE                                          ; $5009: $df
	ld h, d                                          ; $500a: $62
	inc de                                           ; $500b: $13
	jp hl                                            ; $500c: $e9


	ld hl, $eaad                                     ; $500d: $21 $ad $ea
	inc hl                                           ; $5010: $23
	and b                                            ; $5011: $a0
	cpl                                              ; $5012: $2f
	ld b, e                                          ; $5013: $43
	ld e, b                                          ; $5014: $58
	ld d, c                                          ; $5015: $51
	ld d, e                                          ; $5016: $53
	ld b, a                                          ; $5017: $47
	inc [hl]                                         ; $5018: $34
	db $ec                                           ; $5019: $ec
	ldh [$62], a                                     ; $501a: $e0 $62
	inc de                                           ; $501c: $13
	jp hl                                            ; $501d: $e9


	ld hl, $eaad                                     ; $501e: $21 $ad $ea
	inc hl                                           ; $5021: $23
	and b                                            ; $5022: $a0
	cpl                                              ; $5023: $2f
	ld b, e                                          ; $5024: $43
	ld e, b                                          ; $5025: $58
	ld d, c                                          ; $5026: $51
	ld d, e                                          ; $5027: $53
	ld b, a                                          ; $5028: $47
	inc [hl]                                         ; $5029: $34
	db $ec                                           ; $502a: $ec

jr_091_502b:
	pop hl                                           ; $502b: $e1
	ld h, d                                          ; $502c: $62
	inc de                                           ; $502d: $13
	jp hl                                            ; $502e: $e9


	ld hl, $eaad                                     ; $502f: $21 $ad $ea
	inc hl                                           ; $5032: $23
	and b                                            ; $5033: $a0
	cpl                                              ; $5034: $2f
	ld b, e                                          ; $5035: $43
	ld e, b                                          ; $5036: $58
	ld d, c                                          ; $5037: $51
	ld d, e                                          ; $5038: $53
	ld b, a                                          ; $5039: $47
	inc [hl]                                         ; $503a: $34
	db $ed                                           ; $503b: $ed
	ld d, e                                          ; $503c: $53
	ld h, d                                          ; $503d: $62
	inc de                                           ; $503e: $13
	jp hl                                            ; $503f: $e9


	ld hl, $eaad                                     ; $5040: $21 $ad $ea
	inc hl                                           ; $5043: $23
	and b                                            ; $5044: $a0
	cpl                                              ; $5045: $2f
	ld b, e                                          ; $5046: $43
	ld e, b                                          ; $5047: $58
	ld d, c                                          ; $5048: $51
	ld d, e                                          ; $5049: $53
	ld b, a                                          ; $504a: $47
	inc [hl]                                         ; $504b: $34
	db $eb                                           ; $504c: $eb
	ld a, [$1362]                                    ; $504d: $fa $62 $13
	jp hl                                            ; $5050: $e9


	ld hl, $eaad                                     ; $5051: $21 $ad $ea
	inc hl                                           ; $5054: $23
	and b                                            ; $5055: $a0
	cpl                                              ; $5056: $2f
	ld b, e                                          ; $5057: $43
	ld e, b                                          ; $5058: $58
	ld d, c                                          ; $5059: $51
	ld d, e                                          ; $505a: $53
	ld b, a                                          ; $505b: $47
	inc [hl]                                         ; $505c: $34
	db $eb                                           ; $505d: $eb
	db $fc                                           ; $505e: $fc
	ld h, d                                          ; $505f: $62
	inc de                                           ; $5060: $13
	jp hl                                            ; $5061: $e9


	ld hl, $eaad                                     ; $5062: $21 $ad $ea
	inc hl                                           ; $5065: $23
	and b                                            ; $5066: $a0
	cpl                                              ; $5067: $2f
	ld b, e                                          ; $5068: $43
	ld e, b                                          ; $5069: $58
	ld d, c                                          ; $506a: $51
	ld d, e                                          ; $506b: $53
	ld b, a                                          ; $506c: $47
	inc [hl]                                         ; $506d: $34
	db $ec                                           ; $506e: $ec
	and $62                                          ; $506f: $e6 $62
	inc de                                           ; $5071: $13
	jp hl                                            ; $5072: $e9


	ld hl, $eaad                                     ; $5073: $21 $ad $ea
	inc hl                                           ; $5076: $23
	and b                                            ; $5077: $a0
	cpl                                              ; $5078: $2f
	ld b, e                                          ; $5079: $43
	db $ec                                           ; $507a: $ec
	reti                                             ; $507b: $d9


	inc [hl]                                         ; $507c: $34
	ld l, [hl]                                       ; $507d: $6e
	ld [hl], c                                       ; $507e: $71
	ld b, l                                          ; $507f: $45
	add hl, sp                                       ; $5080: $39
	and b                                            ; $5081: $a0
	cpl                                              ; $5082: $2f
	ld b, e                                          ; $5083: $43
	ld b, [hl]                                       ; $5084: $46
	dec sp                                           ; $5085: $3b
	inc [hl]                                         ; $5086: $34
	db $ed                                           ; $5087: $ed
	xor d                                            ; $5088: $aa
	jr c, jr_091_50c3                                ; $5089: $38 $38

	ld c, c                                          ; $508b: $49
	ld d, h                                          ; $508c: $54
	ld e, a                                          ; $508d: $5f
	inc de                                           ; $508e: $13
	ld b, a                                          ; $508f: $47
	inc [hl]                                         ; $5090: $34
	db $ed                                           ; $5091: $ed
	xor c                                            ; $5092: $a9
	db $eb                                           ; $5093: $eb
	ld h, [hl]                                       ; $5094: $66
	and b                                            ; $5095: $a0
	cpl                                              ; $5096: $2f
	ld b, e                                          ; $5097: $43
	db $ed                                           ; $5098: $ed
	xor c                                            ; $5099: $a9
	and b                                            ; $509a: $a0
	ld e, [hl]                                       ; $509b: $5e
	dec sp                                           ; $509c: $3b
	ld c, b                                          ; $509d: $48
	dec [hl]                                         ; $509e: $35
	ld [hl+], a                                      ; $509f: $22
	inc de                                           ; $50a0: $13
	jp hl                                            ; $50a1: $e9


	and h                                            ; $50a2: $a4
	xor b                                            ; $50a3: $a8
	jp hl                                            ; $50a4: $e9


	db $ed                                           ; $50a5: $ed
	ld c, b                                          ; $50a6: $48
	and b                                            ; $50a7: $a0
	ld e, [hl]                                       ; $50a8: $5e
	dec sp                                           ; $50a9: $3b
	ld c, b                                          ; $50aa: $48
	dec [hl]                                         ; $50ab: $35
	ld [hl+], a                                      ; $50ac: $22
	inc de                                           ; $50ad: $13
	jp hl                                            ; $50ae: $e9


	and h                                            ; $50af: $a4
	xor b                                            ; $50b0: $a8
	jp hl                                            ; $50b1: $e9


	rst SubAFromHL                                          ; $50b2: $d7
	ld c, b                                          ; $50b3: $48
	and b                                            ; $50b4: $a0
	ld e, [hl]                                       ; $50b5: $5e
	dec sp                                           ; $50b6: $3b
	ld c, b                                          ; $50b7: $48
	dec [hl]                                         ; $50b8: $35
	ld [hl+], a                                      ; $50b9: $22
	inc de                                           ; $50ba: $13
	jp hl                                            ; $50bb: $e9


	and h                                            ; $50bc: $a4
	xor b                                            ; $50bd: $a8
	ld l, a                                          ; $50be: $6f
	inc [hl]                                         ; $50bf: $34
	db $ec                                           ; $50c0: $ec
	ret nc                                           ; $50c1: $d0

	ld b, h                                          ; $50c2: $44

jr_091_50c3:
	inc a                                            ; $50c3: $3c
	ld d, b                                          ; $50c4: $50
	ld c, b                                          ; $50c5: $48
	and b                                            ; $50c6: $a0
	ld e, [hl]                                       ; $50c7: $5e
	dec sp                                           ; $50c8: $3b
	ld c, b                                          ; $50c9: $48
	dec [hl]                                         ; $50ca: $35
	ld [hl+], a                                      ; $50cb: $22
	inc de                                           ; $50cc: $13
	jp hl                                            ; $50cd: $e9


	and h                                            ; $50ce: $a4
	xor b                                            ; $50cf: $a8
	jp hl                                            ; $50d0: $e9


	xor $48                                          ; $50d1: $ee $48
	and b                                            ; $50d3: $a0
	ld e, [hl]                                       ; $50d4: $5e
	dec sp                                           ; $50d5: $3b
	ld c, b                                          ; $50d6: $48
	inc [hl]                                         ; $50d7: $34
	ld [hl+], a                                      ; $50d8: $22
	xor $1f                                          ; $50d9: $ee $1f
	xor b                                            ; $50db: $a8
	ldh a, [$66]                                     ; $50dc: $f0 $66
	ld b, c                                          ; $50de: $41
	ld c, d                                          ; $50df: $4a
	ld c, b                                          ; $50e0: $48
	and b                                            ; $50e1: $a0
	cpl                                              ; $50e2: $2f
	ld b, e                                          ; $50e3: $43
	add sp, -$47                                     ; $50e4: $e8 $b9
	and c                                            ; $50e6: $a1
	db $eb                                           ; $50e7: $eb
	ccf                                              ; $50e8: $3f
	xor b                                            ; $50e9: $a8
	jp hl                                            ; $50ea: $e9


	db $ed                                           ; $50eb: $ed
	ld c, b                                          ; $50ec: $48
	and b                                            ; $50ed: $a0
	db $eb                                           ; $50ee: $eb
	ccf                                              ; $50ef: $3f
	xor b                                            ; $50f0: $a8
	jp hl                                            ; $50f1: $e9


	rst SubAFromHL                                          ; $50f2: $d7
	ld c, b                                          ; $50f3: $48
	and b                                            ; $50f4: $a0
	db $eb                                           ; $50f5: $eb
	ccf                                              ; $50f6: $3f
	xor b                                            ; $50f7: $a8
	ld l, a                                          ; $50f8: $6f
	inc [hl]                                         ; $50f9: $34
	db $ec                                           ; $50fa: $ec
	ret nc                                           ; $50fb: $d0

	ld b, h                                          ; $50fc: $44
	inc a                                            ; $50fd: $3c
	ld d, b                                          ; $50fe: $50
	ld c, b                                          ; $50ff: $48
	and b                                            ; $5100: $a0
	db $eb                                           ; $5101: $eb
	ccf                                              ; $5102: $3f
	xor b                                            ; $5103: $a8
	jp hl                                            ; $5104: $e9


	xor $48                                          ; $5105: $ee $48
	and b                                            ; $5107: $a0
	ret nc                                           ; $5108: $d0

	dec [hl]                                         ; $5109: $35
	rla                                              ; $510a: $17
	ld e, e                                          ; $510b: $5b
	ld d, [hl]                                       ; $510c: $56
	ld b, [hl]                                       ; $510d: $46
	inc [hl]                                         ; $510e: $34
	ld e, d                                          ; $510f: $5a
	ld d, h                                          ; $5110: $54
	ld b, a                                          ; $5111: $47
	inc de                                           ; $5112: $13
	ld [$3ca9], a                                    ; $5113: $ea $a9 $3c
	and c                                            ; $5116: $a1
	jp hl                                            ; $5117: $e9


	db $ed                                           ; $5118: $ed
	xor h                                            ; $5119: $ac
	add sp, -$14                                     ; $511a: $e8 $ec
	and b                                            ; $511c: $a0
	jp hl                                            ; $511d: $e9


	rst SubAFromHL                                          ; $511e: $d7
	xor h                                            ; $511f: $ac
	add sp, -$14                                     ; $5120: $e8 $ec
	and b                                            ; $5122: $a0
	ld l, a                                          ; $5123: $6f
	inc [hl]                                         ; $5124: $34
	db $ec                                           ; $5125: $ec
	ret nc                                           ; $5126: $d0

	ld b, h                                          ; $5127: $44
	inc a                                            ; $5128: $3c
	ld d, b                                          ; $5129: $50
	xor h                                            ; $512a: $ac
	add sp, -$14                                     ; $512b: $e8 $ec
	and b                                            ; $512d: $a0
	jp hl                                            ; $512e: $e9


	xor $ac                                          ; $512f: $ee $ac
	add sp, -$14                                     ; $5131: $e8 $ec
	and b                                            ; $5133: $a0
	ld e, [hl]                                       ; $5134: $5e
	dec sp                                           ; $5135: $3b
	inc [hl]                                         ; $5136: $34
	db $eb                                           ; $5137: $eb
	ld e, c                                          ; $5138: $59
	inc a                                            ; $5139: $3c
	ld a, [hl-]                                      ; $513a: $3a
	ld [hl], $22                                     ; $513b: $36 $22
	ld [hl+], a                                      ; $513d: $22
	ld [hl+], a                                      ; $513e: $22
	inc de                                           ; $513f: $13
	add hl, sp                                       ; $5140: $39
	ld e, c                                          ; $5141: $59
	ld b, c                                          ; $5142: $41
	ld c, b                                          ; $5143: $48
	add hl, bc                                       ; $5144: $09
	ret nc                                           ; $5145: $d0

	and b                                            ; $5146: $a0
	ld b, [hl]                                       ; $5147: $46
	dec sp                                           ; $5148: $3b
	and b                                            ; $5149: $a0
	cpl                                              ; $514a: $2f
	ld b, e                                          ; $514b: $43
	xor $06                                          ; $514c: $ee $06
	ld b, a                                          ; $514e: $47
	xor h                                            ; $514f: $ac
	ld [hl], d                                       ; $5150: $72
	adc c                                            ; $5151: $89
	ld a, $3a                                        ; $5152: $3e $3a
	jr c, jr_091_5192                                ; $5154: $38 $3c

	and c                                            ; $5156: $a1
	ld l, a                                          ; $5157: $6f
	ld c, e                                          ; $5158: $4b
	inc [hl]                                         ; $5159: $34
	ldh a, [rSCX]                                    ; $515a: $f0 $43

jr_091_515c:
	ldh a, [$b8]                                     ; $515c: $f0 $b8
	adc a                                            ; $515e: $8f
	ld a, [hl-]                                      ; $515f: $3a
	ld b, d                                          ; $5160: $42
	ld b, l                                          ; $5161: $45
	xor b                                            ; $5162: $a8
	db $ed                                           ; $5163: $ed
	ld d, a                                          ; $5164: $57
	ld [hl], d                                       ; $5165: $72
	adc c                                            ; $5166: $89
	ld c, d                                          ; $5167: $4a
	ld e, h                                          ; $5168: $5c
	ld c, [hl]                                       ; $5169: $4e
	ld h, e                                          ; $516a: $63
	ld e, l                                          ; $516b: $5d
	inc de                                           ; $516c: $13
	ld a, [hl-]                                      ; $516d: $3a
	jr c, jr_091_515c                                ; $516e: $38 $ec

	ret c                                            ; $5170: $d8

	and b                                            ; $5171: $a0
	ld l, a                                          ; $5172: $6f
	ld c, e                                          ; $5173: $4b
	inc [hl]                                         ; $5174: $34
	adc d                                            ; $5175: $8a

jr_091_5176:
	ldh a, [$73]                                     ; $5176: $f0 $73
	adc a                                            ; $5178: $8f
	ld a, [hl-]                                      ; $5179: $3a
	ld b, d                                          ; $517a: $42
	ld b, l                                          ; $517b: $45
	xor b                                            ; $517c: $a8
	db $ed                                           ; $517d: $ed
	ld d, a                                          ; $517e: $57
	ld [hl], d                                       ; $517f: $72
	adc c                                            ; $5180: $89
	ld c, d                                          ; $5181: $4a
	ld e, h                                          ; $5182: $5c
	ld c, [hl]                                       ; $5183: $4e
	ld h, e                                          ; $5184: $63
	ld e, l                                          ; $5185: $5d
	inc de                                           ; $5186: $13
	ld a, [hl-]                                      ; $5187: $3a
	jr c, jr_091_5176                                ; $5188: $38 $ec

	ret c                                            ; $518a: $d8

	and b                                            ; $518b: $a0
	ld l, a                                          ; $518c: $6f
	ld c, e                                          ; $518d: $4b
	inc [hl]                                         ; $518e: $34

jr_091_518f:
	db $ec                                           ; $518f: $ec
	ret nc                                           ; $5190: $d0

	inc de                                           ; $5191: $13

jr_091_5192:
	ld a, [hl-]                                      ; $5192: $3a
	ld b, d                                          ; $5193: $42
	ld b, l                                          ; $5194: $45
	xor b                                            ; $5195: $a8
	db $ed                                           ; $5196: $ed
	ld d, a                                          ; $5197: $57
	ld [hl], d                                       ; $5198: $72
	adc c                                            ; $5199: $89
	ld c, d                                          ; $519a: $4a
	ld e, h                                          ; $519b: $5c
	ld c, [hl]                                       ; $519c: $4e
	ld h, e                                          ; $519d: $63
	ld e, l                                          ; $519e: $5d
	inc de                                           ; $519f: $13
	ld a, [hl-]                                      ; $51a0: $3a
	jr c, jr_091_518f                                ; $51a1: $38 $ec

	ret c                                            ; $51a3: $d8

	and b                                            ; $51a4: $a0
	ld l, a                                          ; $51a5: $6f
	ld c, e                                          ; $51a6: $4b
	inc [hl]                                         ; $51a7: $34
	ldh a, [$aa]                                     ; $51a8: $f0 $aa

jr_091_51aa:
	adc c                                            ; $51aa: $89
	adc a                                            ; $51ab: $8f
	ld a, [hl-]                                      ; $51ac: $3a
	ld b, d                                          ; $51ad: $42
	ld b, l                                          ; $51ae: $45
	dec [hl]                                         ; $51af: $35
	rla                                              ; $51b0: $17
	db $ed                                           ; $51b1: $ed
	ld d, a                                          ; $51b2: $57
	ld [hl], d                                       ; $51b3: $72
	adc c                                            ; $51b4: $89
	ld c, d                                          ; $51b5: $4a
	ld e, h                                          ; $51b6: $5c
	ld c, [hl]                                       ; $51b7: $4e
	ld h, e                                          ; $51b8: $63
	ld e, l                                          ; $51b9: $5d
	inc de                                           ; $51ba: $13
	ld a, [hl-]                                      ; $51bb: $3a
	jr c, jr_091_51aa                                ; $51bc: $38 $ec

	ret c                                            ; $51be: $d8

	and b                                            ; $51bf: $a0
	ld hl, $a048                                     ; $51c0: $21 $48 $a0
	cpl                                              ; $51c3: $2f
	ld b, e                                          ; $51c4: $43
	ld h, h                                          ; $51c5: $64
	jr c, @+$36                                      ; $51c6: $38 $34

	db $ed                                           ; $51c8: $ed
	xor c                                            ; $51c9: $a9
	xor b                                            ; $51ca: $a8
	sbc c                                            ; $51cb: $99
	ccf                                              ; $51cc: $3f
	ld b, l                                          ; $51cd: $45
	and b                                            ; $51ce: $a0
	cpl                                              ; $51cf: $2f
	ld b, e                                          ; $51d0: $43
	ld b, [hl]                                       ; $51d1: $46
	dec sp                                           ; $51d2: $3b
	inc [hl]                                         ; $51d3: $34
	ld h, a                                          ; $51d4: $67
	dec sp                                           ; $51d5: $3b
	ccf                                              ; $51d6: $3f
	db $ec                                           ; $51d7: $ec
	push de                                          ; $51d8: $d5
	and b                                            ; $51d9: $a0
	cpl                                              ; $51da: $2f
	ld b, e                                          ; $51db: $43
	db $eb                                           ; $51dc: $eb
	ld bc, $40a8                                     ; $51dd: $01 $a8 $40
	ld c, l                                          ; $51e0: $4d
	ld e, e                                          ; $51e1: $5b
	ld d, [hl]                                       ; $51e2: $56
	inc [hl]                                         ; $51e3: $34
	ld [$a069], a                                    ; $51e4: $ea $69 $a0
	db $ec                                           ; $51e7: $ec
	cp c                                             ; $51e8: $b9
	ld d, b                                          ; $51e9: $50
	inc [hl]                                         ; $51ea: $34
	ldh a, [$b2]                                     ; $51eb: $f0 $b2
	ldh a, [rKEY1]                                   ; $51ed: $f0 $4d
	ld b, a                                          ; $51ef: $47
	inc de                                           ; $51f0: $13
	ld a, b                                          ; $51f1: $78
	ccf                                              ; $51f2: $3f
	ld c, h                                          ; $51f3: $4c
	dec [hl]                                         ; $51f4: $35
	or h                                             ; $51f5: $b4
	and b                                            ; $51f6: $a0
	db $ec                                           ; $51f7: $ec
	cp c                                             ; $51f8: $b9
	ld d, b                                          ; $51f9: $50
	inc [hl]                                         ; $51fa: $34
	ldh a, [$b2]                                     ; $51fb: $f0 $b2
	ldh a, [rKEY1]                                   ; $51fd: $f0 $4d
	ld b, a                                          ; $51ff: $47
	inc de                                           ; $5200: $13
	ld a, b                                          ; $5201: $78
	ccf                                              ; $5202: $3f
	ld c, h                                          ; $5203: $4c
	and b                                            ; $5204: $a0
	ld e, e                                          ; $5205: $5b
	ld d, [hl]                                       ; $5206: $56
	ld b, [hl]                                       ; $5207: $46
	ld c, h                                          ; $5208: $4c
	and b                                            ; $5209: $a0
	cpl                                              ; $520a: $2f
	ld b, e                                          ; $520b: $43
	ld [$a0b0], a                                    ; $520c: $ea $b0 $a0
	cpl                                              ; $520f: $2f
	ld b, e                                          ; $5210: $43
	xor $10                                          ; $5211: $ee $10
	ld [$a0b0], a                                    ; $5213: $ea $b0 $a0
	cpl                                              ; $5216: $2f
	ld b, e                                          ; $5217: $43
	ld b, [hl]                                       ; $5218: $46
	dec sp                                           ; $5219: $3b
	inc [hl]                                         ; $521a: $34
	db $ed                                           ; $521b: $ed
	xor d                                            ; $521c: $aa
	jr c, jr_091_5257                                ; $521d: $38 $38

	ld c, c                                          ; $521f: $49
	ld d, h                                          ; $5220: $54
	ld e, a                                          ; $5221: $5f
	inc de                                           ; $5222: $13
	ld b, a                                          ; $5223: $47
	inc [hl]                                         ; $5224: $34
	db $ec                                           ; $5225: $ec
	rst SubAFromDE                                          ; $5226: $df
	db $eb                                           ; $5227: $eb
	ld h, [hl]                                       ; $5228: $66
	and b                                            ; $5229: $a0
	cpl                                              ; $522a: $2f
	ld b, e                                          ; $522b: $43
	db $ec                                           ; $522c: $ec
	rst SubAFromDE                                          ; $522d: $df
	and b                                            ; $522e: $a0
	ld [hl+], a                                      ; $522f: $22
	db $eb                                           ; $5230: $eb
	ccf                                              ; $5231: $3f
	ld c, b                                          ; $5232: $48
	dec [hl]                                         ; $5233: $35
	rla                                              ; $5234: $17
	ld [$ad6a], a                                    ; $5235: $ea $6a $ad
	ldh a, [$3b]                                     ; $5238: $f0 $3b
	dec sp                                           ; $523a: $3b
	ccf                                              ; $523b: $3f
	jr c, jr_091_527b                                ; $523c: $38 $3d

	ld b, h                                          ; $523e: $44
	jr c, jr_091_527e                                ; $523f: $38 $3d

	ld b, d                                          ; $5241: $42
	ld b, a                                          ; $5242: $47
	ld c, b                                          ; $5243: $48
	and b                                            ; $5244: $a0
	cpl                                              ; $5245: $2f
	ld b, e                                          ; $5246: $43
	db $eb                                           ; $5247: $eb
	ld bc, $f0a8                                     ; $5248: $01 $a8 $f0
	inc [hl]                                         ; $524b: $34
	ld b, a                                          ; $524c: $47
	ld a, a                                          ; $524d: $7f
	ld b, a                                          ; $524e: $47
	ld a, $3a                                        ; $524f: $3e $3a
	ld d, l                                          ; $5251: $55
	ccf                                              ; $5252: $3f
	ld c, a                                          ; $5253: $4f
	jr c, @+$3a                                      ; $5254: $38 $38

	ld b, l                                          ; $5256: $45

jr_091_5257:
	and b                                            ; $5257: $a0
	ld b, l                                          ; $5258: $45
	ld e, a                                          ; $5259: $5f
	ld a, $3c                                        ; $525a: $3e $3c
	dec sp                                           ; $525c: $3b
	dec a                                            ; $525d: $3d
	ld d, b                                          ; $525e: $50
	xor h                                            ; $525f: $ac
	ldh a, [rSCX]                                    ; $5260: $f0 $43
	ldh a, [$b8]                                     ; $5262: $f0 $b8
	adc a                                            ; $5264: $8f
	ld b, d                                          ; $5265: $42
	ldh a, [$08]                                     ; $5266: $f0 $08
	add hl, sp                                       ; $5268: $39
	ld b, a                                          ; $5269: $47
	ld c, a                                          ; $526a: $4f
	xor h                                            ; $526b: $ac
	ldh a, [c]                                       ; $526c: $f2
	and h                                            ; $526d: $a4
	ldh a, [c]                                       ; $526e: $f2
	ld b, $34                                        ; $526f: $06 $34
	ld a, b                                          ; $5271: $78
	ccf                                              ; $5272: $3f
	ld d, l                                          ; $5273: $55
	ld b, h                                          ; $5274: $44
	ld e, b                                          ; $5275: $58
	jr c, jr_091_52c0                                ; $5276: $38 $48

	and b                                            ; $5278: $a0
	ld b, [hl]                                       ; $5279: $46
	dec sp                                           ; $527a: $3b

jr_091_527b:
	inc [hl]                                         ; $527b: $34
	ld [hl+], a                                      ; $527c: $22
	db $ed                                           ; $527d: $ed

jr_091_527e:
	ld d, a                                          ; $527e: $57
	inc de                                           ; $527f: $13
	ld [$466a], a                                    ; $5280: $ea $6a $46
	ld c, [hl]                                       ; $5283: $4e
	ld b, d                                          ; $5284: $42
	ld c, d                                          ; $5285: $4a
	ld c, b                                          ; $5286: $48
	and b                                            ; $5287: $a0
	db $eb                                           ; $5288: $eb
	ccf                                              ; $5289: $3f
	xor b                                            ; $528a: $a8
	ld b, l                                          ; $528b: $45
	ld e, a                                          ; $528c: $5f
	ld a, $3c                                        ; $528d: $3e $3c
	dec sp                                           ; $528f: $3b
	dec a                                            ; $5290: $3d
	ld d, b                                          ; $5291: $50
	inc [hl]                                         ; $5292: $34
	ld a, b                                          ; $5293: $78
	ccf                                              ; $5294: $3f
	ld d, l                                          ; $5295: $55
	ld b, h                                          ; $5296: $44
	ld e, b                                          ; $5297: $58
	jr c, jr_091_52e6                                ; $5298: $38 $4c

	and b                                            ; $529a: $a0
	ld [hl+], a                                      ; $529b: $22

jr_091_529c:
	db $eb                                           ; $529c: $eb
	ccf                                              ; $529d: $3f
	xor b                                            ; $529e: $a8
	ld [$ea6a], a                                    ; $529f: $ea $6a $ea
	jp nz, $caa0                                     ; $52a2: $c2 $a0 $ca

	inc [hl]                                         ; $52a5: $34
	db $eb                                           ; $52a6: $eb
	ld e, d                                          ; $52a7: $5a
	and b                                            ; $52a8: $a0
	ld hl, $10ee                                     ; $52a9: $21 $ee $10
	jr nz, jr_091_529c                               ; $52ac: $20 $ee

	dec l                                            ; $52ae: $2d
	and c                                            ; $52af: $a1
	cpl                                              ; $52b0: $2f
	ld b, e                                          ; $52b1: $43
	jp hl                                            ; $52b2: $e9


	ld a, l                                          ; $52b3: $7d
	and c                                            ; $52b4: $a1
	ld [$136a], a                                    ; $52b5: $ea $6a $13
	ld [$35c2], a                                    ; $52b8: $ea $c2 $35
	db $eb                                           ; $52bb: $eb
	ld e, d                                          ; $52bc: $5a
	and b                                            ; $52bd: $a0
	cpl                                              ; $52be: $2f
	ld b, e                                          ; $52bf: $43

jr_091_52c0:
	add sp, -$7f                                     ; $52c0: $e8 $81
	inc de                                           ; $52c2: $13
	db $ec                                           ; $52c3: $ec
	ldh [$eb], a                                     ; $52c4: $e0 $eb
	ld h, [hl]                                       ; $52c6: $66
	and b                                            ; $52c7: $a0
	cpl                                              ; $52c8: $2f
	ld b, e                                          ; $52c9: $43
	db $ec                                           ; $52ca: $ec
	ldh [$a0], a                                     ; $52cb: $e0 $a0
	ld b, [hl]                                       ; $52cd: $46
	dec sp                                           ; $52ce: $3b
	inc [hl]                                         ; $52cf: $34
	ld d, $a8                                        ; $52d0: $16 $a8
	ld l, e                                          ; $52d2: $6b
	inc a                                            ; $52d3: $3c
	ldh a, [rAUD2LEN]                                ; $52d4: $f0 $16
	and c                                            ; $52d6: $a1
	ld l, a                                          ; $52d7: $6f
	ld c, e                                          ; $52d8: $4b
	inc [hl]                                         ; $52d9: $34
	ldh a, [$aa]                                     ; $52da: $f0 $aa
	adc c                                            ; $52dc: $89
	adc a                                            ; $52dd: $8f
	ld b, l                                          ; $52de: $45
	dec [hl]                                         ; $52df: $35
	rla                                              ; $52e0: $17
	ld [hl], d                                       ; $52e1: $72
	adc c                                            ; $52e2: $89
	ld a, [hl-]                                      ; $52e3: $3a
	ld b, c                                          ; $52e4: $41
	ccf                                              ; $52e5: $3f

jr_091_52e6:
	sub h                                            ; $52e6: $94
	ld a, b                                          ; $52e7: $78
	ld c, [hl]                                       ; $52e8: $4e
	ld c, c                                          ; $52e9: $49
	ld c, d                                          ; $52ea: $4a
	ld c, a                                          ; $52eb: $4f
	inc de                                           ; $52ec: $13
	ld [hl], a                                       ; $52ed: $77
	dec sp                                           ; $52ee: $3b
	ccf                                              ; $52ef: $3f
	ld c, [hl]                                       ; $52f0: $4e
	ld b, d                                          ; $52f1: $42
	and c                                            ; $52f2: $a1
	xor $14                                          ; $52f3: $ee $14
	inc [hl]                                         ; $52f5: $34
	ld d, $a0                                        ; $52f6: $16 $a0
	ld l, a                                          ; $52f8: $6f
	ld c, e                                          ; $52f9: $4b
	inc [hl]                                         ; $52fa: $34
	ldh a, [$aa]                                     ; $52fb: $f0 $aa
	adc c                                            ; $52fd: $89
	adc a                                            ; $52fe: $8f
	ld a, [hl-]                                      ; $52ff: $3a
	ld b, d                                          ; $5300: $42
	ld b, l                                          ; $5301: $45
	dec [hl]                                         ; $5302: $35
	rla                                              ; $5303: $17
	xor $06                                          ; $5304: $ee $06
	ld b, a                                          ; $5306: $47
	ld h, a                                          ; $5307: $67
	ld e, l                                          ; $5308: $5d
	ld c, [hl]                                       ; $5309: $4e
	ld h, e                                          ; $530a: $63
	ld e, l                                          ; $530b: $5d
	inc de                                           ; $530c: $13
	ld a, [hl-]                                      ; $530d: $3a
	jr c, @-$12                                      ; $530e: $38 $ec

	ret c                                            ; $5310: $d8

	ld b, d                                          ; $5311: $42
	and b                                            ; $5312: $a0
	xor $14                                          ; $5313: $ee $14
	inc [hl]                                         ; $5315: $34
	ld d, $a8                                        ; $5316: $16 $a8
	ld l, a                                          ; $5318: $6f
	ld b, a                                          ; $5319: $47
	inc [hl]                                         ; $531a: $34
	ld l, e                                          ; $531b: $6b
	ld b, d                                          ; $531c: $42
	ldh a, [rAUD2LEN]                                ; $531d: $f0 $16
	and c                                            ; $531f: $a1
	ld d, d                                          ; $5320: $52
	inc [hl]                                         ; $5321: $34
	ld c, a                                          ; $5322: $4f
	ld c, c                                          ; $5323: $49
	ld c, a                                          ; $5324: $4f
	ld c, c                                          ; $5325: $49
	xor h                                            ; $5326: $ac
	db $ed                                           ; $5327: $ed
	db $10                                           ; $5328: $10
	ld a, [hl-]                                      ; $5329: $3a
	ld b, c                                          ; $532a: $41
	ccf                                              ; $532b: $3f
	db $ed                                           ; $532c: $ed
	ld [hl], h                                       ; $532d: $74
	ldh a, [rAUD1LOW]                                ; $532e: $f0 $13
	jr c, jr_091_538f                                ; $5330: $38 $5d

	ld e, d                                          ; $5332: $5a
	and b                                            ; $5333: $a0
	ld hl, $10ee                                     ; $5334: $21 $ee $10
	and b                                            ; $5337: $a0
	cpl                                              ; $5338: $2f
	ld b, e                                          ; $5339: $43
	db $ed                                           ; $533a: $ed
	ld c, [hl]                                       ; $533b: $4e
	inc [hl]                                         ; $533c: $34
	db $ec                                           ; $533d: $ec
	ldh [$a8], a                                     ; $533e: $e0 $a8
	jp hl                                            ; $5340: $e9


	push hl                                          ; $5341: $e5
	and c                                            ; $5342: $a1
	ld [$acce], a                                    ; $5343: $ea $ce $ac
	ld l, a                                          ; $5346: $6f
	ld c, e                                          ; $5347: $4b
	ldh a, [$aa]                                     ; $5348: $f0 $aa
	adc c                                            ; $534a: $89
	adc a                                            ; $534b: $8f
	ld a, [hl-]                                      ; $534c: $3a
	ld b, d                                          ; $534d: $42
	ld b, l                                          ; $534e: $45
	xor b                                            ; $534f: $a8
	ld h, a                                          ; $5350: $67
	ld e, l                                          ; $5351: $5d
	ld c, [hl]                                       ; $5352: $4e
	ld h, e                                          ; $5353: $63
	ld e, l                                          ; $5354: $5d
	ld a, [hl-]                                      ; $5355: $3a
	jr c, @-$12                                      ; $5356: $38 $ec

	ret c                                            ; $5358: $d8

	and b                                            ; $5359: $a0
	cpl                                              ; $535a: $2f
	ld b, e                                          ; $535b: $43

jr_091_535c:
	xor $10                                          ; $535c: $ee $10
	xor b                                            ; $535e: $a8
	ld [$a0b0], a                                    ; $535f: $ea $b0 $a0
	ld d, d                                          ; $5362: $52
	inc [hl]                                         ; $5363: $34
	ld b, [hl]                                       ; $5364: $46
	ld a, [hl-]                                      ; $5365: $3a
	dec a                                            ; $5366: $3d
	ld d, e                                          ; $5367: $53
	inc [hl]                                         ; $5368: $34
	ld [hl], d                                       ; $5369: $72
	adc c                                            ; $536a: $89
	ld b, a                                          ; $536b: $47
	inc de                                           ; $536c: $13
	ld a, b                                          ; $536d: $78
	ld c, [hl]                                       ; $536e: $4e
	ld b, d                                          ; $536f: $42
	ld c, e                                          ; $5370: $4b
	ldh a, [$6f]                                     ; $5371: $f0 $6f
	ldh a, [$0b]                                     ; $5373: $f0 $0b
	ld b, h                                          ; $5375: $44
	ld e, l                                          ; $5376: $5d
	ld e, d                                          ; $5377: $5a
	ld c, h                                          ; $5378: $4c
	and b                                            ; $5379: $a0
	cpl                                              ; $537a: $2f
	ld b, e                                          ; $537b: $43
	add sp, -$7f                                     ; $537c: $e8 $81
	inc de                                           ; $537e: $13
	db $ec                                           ; $537f: $ec
	pop hl                                           ; $5380: $e1
	db $eb                                           ; $5381: $eb
	ld h, [hl]                                       ; $5382: $66
	and b                                            ; $5383: $a0
	cpl                                              ; $5384: $2f
	ld b, e                                          ; $5385: $43

jr_091_5386:
	db $ec                                           ; $5386: $ec
	pop hl                                           ; $5387: $e1
	and b                                            ; $5388: $a0
	ld b, [hl]                                       ; $5389: $46
	dec sp                                           ; $538a: $3b
	inc [hl]                                         ; $538b: $34
	ld d, $a8                                        ; $538c: $16 $a8
	ld l, a                                          ; $538e: $6f

jr_091_538f:
	ld b, a                                          ; $538f: $47
	ld l, e                                          ; $5390: $6b
	inc a                                            ; $5391: $3c
	ldh a, [rAUD2LEN]                                ; $5392: $f0 $16
	and c                                            ; $5394: $a1
	ld e, [hl]                                       ; $5395: $5e
	dec sp                                           ; $5396: $3b
	inc [hl]                                         ; $5397: $34
	db $eb                                           ; $5398: $eb
	dec hl                                           ; $5399: $2b
	ld c, b                                          ; $539a: $48
	dec [hl]                                         ; $539b: $35
	rla                                              ; $539c: $17
	jp hl                                            ; $539d: $e9


	rst SubAFromHL                                          ; $539e: $d7

jr_091_539f:
	xor h                                            ; $539f: $ac
	ld [hl], d                                       ; $53a0: $72
	adc c                                            ; $53a1: $89
	ld c, d                                          ; $53a2: $4a
	ld e, h                                          ; $53a3: $5c
	ld a, [hl-]                                      ; $53a4: $3a
	jr c, jr_091_53e9                                ; $53a5: $38 $42

	ld b, l                                          ; $53a7: $45
	ld c, b                                          ; $53a8: $48
	and b                                            ; $53a9: $a0
	ld c, a                                          ; $53aa: $4f
	ld a, $34                                        ; $53ab: $3e $34
	ld [$ac9c], a                                    ; $53ad: $ea $9c $ac
	ldh a, [$b2]                                     ; $53b0: $f0 $b2
	ldh a, [rKEY1]                                   ; $53b2: $f0 $4d
	ld b, a                                          ; $53b4: $47
	ld a, b                                          ; $53b5: $78
	ccf                                              ; $53b6: $3f
	ld c, h                                          ; $53b7: $4c
	xor b                                            ; $53b8: $a8
	jp hl                                            ; $53b9: $e9


	jr nz, jr_091_535c                               ; $53ba: $20 $a0

	ld [$34f5], a                                    ; $53bc: $ea $f5 $34
	ld h, h                                          ; $53bf: $64
	ld c, e                                          ; $53c0: $4b
	ld b, l                                          ; $53c1: $45
	add hl, sp                                       ; $53c2: $39
	inc de                                           ; $53c3: $13
	ld d, $a0                                        ; $53c4: $16 $a0
	jp hl                                            ; $53c6: $e9


	rst SubAFromHL                                          ; $53c7: $d7
	xor h                                            ; $53c8: $ac
	ld [hl], d                                       ; $53c9: $72
	adc c                                            ; $53ca: $89
	ld c, d                                          ; $53cb: $4a
	ld e, h                                          ; $53cc: $5c
	ld b, b                                          ; $53cd: $40
	add hl, sp                                       ; $53ce: $39
	ld b, a                                          ; $53cf: $47
	ld a, [hl-]                                      ; $53d0: $3a
	jr c, jr_091_5436                                ; $53d1: $38 $63

	and b                                            ; $53d3: $a0
	ldh a, [rBGP]                                    ; $53d4: $f0 $47
	ldh a, [$2a]                                     ; $53d6: $f0 $2a
	ld h, d                                          ; $53d8: $62
	ldh a, [$c9]                                     ; $53d9: $f0 $c9
	ld e, l                                          ; $53db: $5d
	ccf                                              ; $53dc: $3f
	ld c, d                                          ; $53dd: $4a
	ld c, a                                          ; $53de: $4f
	xor h                                            ; $53df: $ac
	ld [$a80e], a                                    ; $53e0: $ea $0e $a8
	jp hl                                            ; $53e3: $e9


	jr nz, jr_091_5386                               ; $53e4: $20 $a0

	xor $14                                          ; $53e6: $ee $14
	inc [hl]                                         ; $53e8: $34

jr_091_53e9:
	ld d, $a8                                        ; $53e9: $16 $a8
	ld l, e                                          ; $53eb: $6b
	and c                                            ; $53ec: $a1
	jp hl                                            ; $53ed: $e9


	rst SubAFromHL                                          ; $53ee: $d7
	xor h                                            ; $53ef: $ac
	ld [hl], d                                       ; $53f0: $72
	adc c                                            ; $53f1: $89
	ld a, [hl-]                                      ; $53f2: $3a
	ld b, c                                          ; $53f3: $41
	ccf                                              ; $53f4: $3f
	sub h                                            ; $53f5: $94
	ld a, b                                          ; $53f6: $78
	ld a, [hl-]                                      ; $53f7: $3a
	jr c, jr_091_545d                                ; $53f8: $38 $63

	ld b, l                                          ; $53fa: $45
	and b                                            ; $53fb: $a0
	jp hl                                            ; $53fc: $e9


	jr nz, jr_091_539f                               ; $53fd: $20 $a0

	ld hl, $2048                                     ; $53ff: $21 $48 $20
	ld l, e                                          ; $5402: $6b
	and c                                            ; $5403: $a1
	db $ed                                           ; $5404: $ed
	sbc [hl]                                         ; $5405: $9e
	inc [hl]                                         ; $5406: $34
	ldh a, [$64]                                     ; $5407: $f0 $64
	ld b, l                                          ; $5409: $45
	xor b                                            ; $540a: $a8
	ld d, h                                          ; $540b: $54
	ld c, l                                          ; $540c: $4d
	inc a                                            ; $540d: $3c
	ld d, b                                          ; $540e: $50
	ldh a, [rAUD2LEN]                                ; $540f: $f0 $16
	ld d, e                                          ; $5411: $53
	ld b, [hl]                                       ; $5412: $46
	ld c, [hl]                                       ; $5413: $4e
	ld a, $a0                                        ; $5414: $3e $a0
	cpl                                              ; $5416: $2f
	ld b, e                                          ; $5417: $43
	ld b, [hl]                                       ; $5418: $46
	dec sp                                           ; $5419: $3b
	inc [hl]                                         ; $541a: $34
	db $ed                                           ; $541b: $ed
	xor d                                            ; $541c: $aa
	jr c, jr_091_5457                                ; $541d: $38 $38

	ld c, c                                          ; $541f: $49
	ld d, h                                          ; $5420: $54
	ld e, a                                          ; $5421: $5f
	inc de                                           ; $5422: $13
	ld b, a                                          ; $5423: $47
	inc [hl]                                         ; $5424: $34
	db $ed                                           ; $5425: $ed
	ld d, e                                          ; $5426: $53
	db $eb                                           ; $5427: $eb
	ld h, [hl]                                       ; $5428: $66
	and b                                            ; $5429: $a0
	cpl                                              ; $542a: $2f
	ld b, e                                          ; $542b: $43
	db $ed                                           ; $542c: $ed
	ld d, e                                          ; $542d: $53
	and b                                            ; $542e: $a0
	xor $14                                          ; $542f: $ee $14
	inc [hl]                                         ; $5431: $34
	ld h, h                                          ; $5432: $64
	ld c, e                                          ; $5433: $4b
	ld b, l                                          ; $5434: $45
	add hl, sp                                       ; $5435: $39

jr_091_5436:
	xor b                                            ; $5436: $a8
	ld d, $a0                                        ; $5437: $16 $a0
	call c, $4885                                    ; $5439: $dc $85 $48
	dec [hl]                                         ; $543c: $35
	inc h                                            ; $543d: $24
	inc de                                           ; $543e: $13
	ldh a, [$34]                                     ; $543f: $f0 $34
	ld b, a                                          ; $5441: $47
	inc [hl]                                         ; $5442: $34
	ret nc                                           ; $5443: $d0

	xor b                                            ; $5444: $a8
	xor $06                                          ; $5445: $ee $06
	ld b, a                                          ; $5447: $47
	ld h, a                                          ; $5448: $67
	dec sp                                           ; $5449: $3b
	ccf                                              ; $544a: $3f
	rst SubAFromDE                                          ; $544b: $df
	and b                                            ; $544c: $a0
	cpl                                              ; $544d: $2f
	ld b, e                                          ; $544e: $43
	or h                                             ; $544f: $b4
	xor h                                            ; $5450: $ac
	ld e, d                                          ; $5451: $5a
	ld d, h                                          ; $5452: $54
	ld b, a                                          ; $5453: $47
	db $ec                                           ; $5454: $ec
	rlca                                             ; $5455: $07
	and c                                            ; $5456: $a1

jr_091_5457:
	xor $14                                          ; $5457: $ee $14
	inc [hl]                                         ; $5459: $34
	ld d, $a8                                        ; $545a: $16 $a8
	ld l, e                                          ; $545c: $6b

jr_091_545d:
	inc a                                            ; $545d: $3c
	ld a, $50                                        ; $545e: $3e $50
	and c                                            ; $5460: $a1
	call c, $3485                                    ; $5461: $dc $85 $34
	inc hl                                           ; $5464: $23
	inc de                                           ; $5465: $13
	xor $06                                          ; $5466: $ee $06
	ld b, a                                          ; $5468: $47
	ld h, a                                          ; $5469: $67
	dec sp                                           ; $546a: $3b
	ccf                                              ; $546b: $3f
	ld b, [hl]                                       ; $546c: $46
	ldh a, [rSB]                                     ; $546d: $f0 $01
	ccf                                              ; $546f: $3f
	ld c, a                                          ; $5470: $4f
	ld b, l                                          ; $5471: $45
	ld d, l                                          ; $5472: $55
	ccf                                              ; $5473: $3f
	ld b, l                                          ; $5474: $45
	xor b                                            ; $5475: $a8
	ld [$a0e1], a                                    ; $5476: $ea $e1 $a0
	cpl                                              ; $5479: $2f
	ld b, e                                          ; $547a: $43
	xor $10                                          ; $547b: $ee $10
	dec [hl]                                         ; $547d: $35
	rla                                              ; $547e: $17
	ld e, e                                          ; $547f: $5b
	ld d, [hl]                                       ; $5480: $56
	inc [hl]                                         ; $5481: $34
	ld e, e                                          ; $5482: $5b
	ld d, [hl]                                       ; $5483: $56
	ld b, [hl]                                       ; $5484: $46
	ld e, b                                          ; $5485: $58
	xor h                                            ; $5486: $ac
	ld e, d                                          ; $5487: $5a
	ld d, h                                          ; $5488: $54
	ld b, a                                          ; $5489: $47
	db $ec                                           ; $548a: $ec
	rlca                                             ; $548b: $07
	and c                                            ; $548c: $a1
	xor $14                                          ; $548d: $ee $14
	inc [hl]                                         ; $548f: $34
	ld l, e                                          ; $5490: $6b
	ld b, d                                          ; $5491: $42
	ldh a, [rAUD2LEN]                                ; $5492: $f0 $16
	inc a                                            ; $5494: $3c
	ld a, $50                                        ; $5495: $3e $50
	and c                                            ; $5497: $a1
	call c, $3485                                    ; $5498: $dc $85 $34
	ld [hl+], a                                      ; $549b: $22
	inc de                                           ; $549c: $13
	ldh a, [$a4]                                     ; $549d: $f0 $a4
	ld e, [hl]                                       ; $549f: $5e

Call_091_54a0:
	ccf                                              ; $54a0: $3f
	ld b, [hl]                                       ; $54a1: $46
	ldh a, [rSB]                                     ; $54a2: $f0 $01
	ccf                                              ; $54a4: $3f
	ld c, a                                          ; $54a5: $4f
	ld b, l                                          ; $54a6: $45
	ld d, l                                          ; $54a7: $55
	ccf                                              ; $54a8: $3f
	ld b, l                                          ; $54a9: $45
	xor b                                            ; $54aa: $a8
	ld [$a0e1], a                                    ; $54ab: $ea $e1 $a0
	cpl                                              ; $54ae: $2f
	ld b, e                                          ; $54af: $43
	ld e, e                                          ; $54b0: $5b
	ld d, [hl]                                       ; $54b1: $56
	ld b, [hl]                                       ; $54b2: $46
	ld e, b                                          ; $54b3: $58
	xor h                                            ; $54b4: $ac
	db $eb                                           ; $54b5: $eb
	rst JumpTable                                          ; $54b6: $c7
	ld a, $45                                        ; $54b7: $3e $45
	add hl, sp                                       ; $54b9: $39
	ld b, l                                          ; $54ba: $45
	and b                                            ; $54bb: $a0
	ld a, $3f                                        ; $54bc: $3e $3f
	ld d, l                                          ; $54be: $55
	ld b, h                                          ; $54bf: $44
	ld e, b                                          ; $54c0: $58
	jr c, jr_091_54f7                                ; $54c1: $38 $34

	ld c, d                                          ; $54c3: $4a
	ld a, $66                                        ; $54c4: $3e $66
	add hl, sp                                       ; $54c6: $39
	ld [hl], $23                                     ; $54c7: $36 $23
	inc de                                           ; $54c9: $13
	ld l, a                                          ; $54ca: $6f
	ld c, c                                          ; $54cb: $49
	xor $06                                          ; $54cc: $ee $06
	ld b, a                                          ; $54ce: $47
	pop af                                           ; $54cf: $f1
	ld h, $5d                                        ; $54d0: $26 $5d
	ld c, [hl]                                       ; $54d2: $4e
	ld b, d                                          ; $54d3: $42
	ld b, l                                          ; $54d4: $45
	and b                                            ; $54d5: $a0
	cpl                                              ; $54d6: $2f
	ld b, e                                          ; $54d7: $43
	xor $10                                          ; $54d8: $ee $10
	xor b                                            ; $54da: $a8
	xor $06                                          ; $54db: $ee $06
	ld b, a                                          ; $54dd: $47
	inc [hl]                                         ; $54de: $34
	ld [hl], d                                       ; $54df: $72
	adc c                                            ; $54e0: $89
	ld a, $3f                                        ; $54e1: $3e $3f
	ld d, l                                          ; $54e3: $55
	ld b, h                                          ; $54e4: $44

jr_091_54e5:
	ld e, b                                          ; $54e5: $58
	jr c, jr_091_5530                                ; $54e6: $38 $48

	and b                                            ; $54e8: $a0
	ld d, d                                          ; $54e9: $52
	inc [hl]                                         ; $54ea: $34
	jr c, jr_091_5525                                ; $54eb: $38 $38

	ld c, d                                          ; $54ed: $4a
	ld a, $66                                        ; $54ee: $3e $66
	add hl, sp                                       ; $54f0: $39
	dec [hl]                                         ; $54f1: $35
	rla                                              ; $54f2: $17
	or h                                             ; $54f3: $b4
	inc [hl]                                         ; $54f4: $34
	ldh a, [$0a]                                     ; $54f5: $f0 $0a

jr_091_54f7:
	ld d, l                                          ; $54f7: $55
	ld h, a                                          ; $54f8: $67
	ld e, h                                          ; $54f9: $5c
	ldh a, [$bc]                                     ; $54fa: $f0 $bc
	ld h, d                                          ; $54fc: $62
	inc de                                           ; $54fd: $13
	ldh a, [$ec]                                     ; $54fe: $f0 $ec
	ld [hl], c                                       ; $5500: $71
	ccf                                              ; $5501: $3f
	ld d, l                                          ; $5502: $55
	ld b, h                                          ; $5503: $44
	ld e, b                                          ; $5504: $58
	ld c, [hl]                                       ; $5505: $4e
	and c                                            ; $5506: $a1
	ld hl, $20ad                                     ; $5507: $21 $ad $20
	ld l, e                                          ; $550a: $6b
	ld b, d                                          ; $550b: $42
	xor $1c                                          ; $550c: $ee $1c
	and c                                            ; $550e: $a1
	ld l, a                                          ; $550f: $6f
	inc [hl]                                         ; $5510: $34
	ld b, [hl]                                       ; $5511: $46
	ld a, [hl-]                                      ; $5512: $3a
	dec a                                            ; $5513: $3d
	ld b, a                                          ; $5514: $47
	inc de                                           ; $5515: $13
	ldh a, [$3b]                                     ; $5516: $f0 $3b
	dec sp                                           ; $5518: $3b
	ccf                                              ; $5519: $3f
	ld c, a                                          ; $551a: $4f
	ld d, b                                          ; $551b: $50
	add hl, sp                                       ; $551c: $39
	ldh a, [$08]                                     ; $551d: $f0 $08
	ld e, d                                          ; $551f: $5a
	xor h                                            ; $5520: $ac
	ld h, h                                          ; $5521: $64
	ld h, c                                          ; $5522: $61
	ldh a, [$fe]                                     ; $5523: $f0 $fe

jr_091_5525:
	ld c, l                                          ; $5525: $4d
	ccf                                              ; $5526: $3f
	ld h, h                                          ; $5527: $64
	ld d, a                                          ; $5528: $57
	ld d, d                                          ; $5529: $52
	ld a, c                                          ; $552a: $79
	ld b, c                                          ; $552b: $41
	ld b, d                                          ; $552c: $42
	and b                                            ; $552d: $a0
	cpl                                              ; $552e: $2f
	ld b, e                                          ; $552f: $43

jr_091_5530:
	ldh a, [$d8]                                     ; $5530: $f0 $d8
	inc [hl]                                         ; $5532: $34
	ldh a, [$d8]                                     ; $5533: $f0 $d8
	ld e, d                                          ; $5535: $5a
	jr c, jr_091_54e5                                ; $5536: $38 $ad

	ldh a, [$d8]                                     ; $5538: $f0 $d8
	ld e, d                                          ; $553a: $5a
	ld d, c                                          ; $553b: $51
	ldh a, [$cb]                                     ; $553c: $f0 $cb
	ld c, [hl]                                       ; $553e: $4e
	ld c, b                                          ; $553f: $48
	and b                                            ; $5540: $a0
	cpl                                              ; $5541: $2f
	ld [$ac33], a                                    ; $5542: $ea $33 $ac
	jp hl                                            ; $5545: $e9


	ld b, l                                          ; $5546: $45
	and e                                            ; $5547: $a3
	cpl                                              ; $5548: $2f
	ld b, e                                          ; $5549: $43
	add sp, -$7f                                     ; $554a: $e8 $81
	inc de                                           ; $554c: $13
	db $eb                                           ; $554d: $eb
	ld a, [$66eb]                                    ; $554e: $fa $eb $66
	and b                                            ; $5551: $a0
	cpl                                              ; $5552: $2f
	ld b, e                                          ; $5553: $43
	db $eb                                           ; $5554: $eb
	ld a, [$16a0]                                    ; $5555: $fa $a0 $16
	xor b                                            ; $5558: $a8
	ld l, e                                          ; $5559: $6b
	inc [hl]                                         ; $555a: $34
	db $eb                                           ; $555b: $eb
	rst FarCall                                          ; $555c: $f7
	and c                                            ; $555d: $a1
	pop af                                           ; $555e: $f1
	ld a, [hl]                                       ; $555f: $7e
	dec sp                                           ; $5560: $3b
	inc [hl]                                         ; $5561: $34
	ld l, a                                          ; $5562: $6f
	ld c, c                                          ; $5563: $49
	ld c, b                                          ; $5564: $48
	xor c                                            ; $5565: $a9
	xor $1f                                          ; $5566: $ee $1f
	inc [hl]                                         ; $5568: $34
	ld h, a                                          ; $5569: $67
	ld d, l                                          ; $556a: $55
	ld h, a                                          ; $556b: $67
	ld d, l                                          ; $556c: $55
	and b                                            ; $556d: $a0
	ldh a, [$32]                                     ; $556e: $f0 $32
	ldh a, [rAUD1LEN]                                ; $5570: $f0 $11
	ld c, d                                          ; $5572: $4a
	ld c, a                                          ; $5573: $4f
	jr c, jr_091_55ae                                ; $5574: $38 $38

	inc a                                            ; $5576: $3c
	ld d, b                                          ; $5577: $50
	xor h                                            ; $5578: $ac
	ldh a, [$0a]                                     ; $5579: $f0 $0a
	ld d, l                                          ; $557b: $55
	ld h, a                                          ; $557c: $67
	ld e, h                                          ; $557d: $5c
	ld d, d                                          ; $557e: $52
	ld a, $66                                        ; $557f: $3e $66
	and b                                            ; $5581: $a0
	cpl                                              ; $5582: $2f
	ld b, e                                          ; $5583: $43
	ldh a, [$0a]                                     ; $5584: $f0 $0a
	ld d, l                                          ; $5586: $55
	dec sp                                           ; $5587: $3b
	ccf                                              ; $5588: $3f
	xor l                                            ; $5589: $ad
	ld [hl-], a                                      ; $558a: $32
	ld e, d                                          ; $558b: $5a
	ld d, h                                          ; $558c: $54
	ld b, a                                          ; $558d: $47
	db $eb                                           ; $558e: $eb
	adc e                                            ; $558f: $8b
	and e                                            ; $5590: $a3
	ld b, [hl]                                       ; $5591: $46
	dec sp                                           ; $5592: $3b
	inc [hl]                                         ; $5593: $34
	ld d, $a8                                        ; $5594: $16 $a8
	ld l, e                                          ; $5596: $6b
	ldh a, [$cf]                                     ; $5597: $f0 $cf
	and c                                            ; $5599: $a1
	jp hl                                            ; $559a: $e9


	db $fc                                           ; $559b: $fc
	xor b                                            ; $559c: $a8
	ld l, a                                          ; $559d: $6f
	ld c, a                                          ; $559e: $4f
	ldh a, [$3b]                                     ; $559f: $f0 $3b
	ld h, h                                          ; $55a1: $64
	add hl, sp                                       ; $55a2: $39
	ld c, c                                          ; $55a3: $49
	ld [hl], a                                       ; $55a4: $77
	dec sp                                           ; $55a5: $3b
	ccf                                              ; $55a6: $3f
	dec a                                            ; $55a7: $3d
	ld b, d                                          ; $55a8: $42
	ld b, l                                          ; $55a9: $45
	and b                                            ; $55aa: $a0
	ld d, $a8                                        ; $55ab: $16 $a8
	db $eb                                           ; $55ad: $eb

jr_091_55ae:
	rst FarCall                                          ; $55ae: $f7
	and c                                            ; $55af: $a1
	xor $1f                                          ; $55b0: $ee $1f
	inc [hl]                                         ; $55b2: $34
	ret nc                                           ; $55b3: $d0

	xor b                                            ; $55b4: $a8
	ld l, a                                          ; $55b5: $6f
	ld c, a                                          ; $55b6: $4f
	xor $08                                          ; $55b7: $ee $08
	ld b, h                                          ; $55b9: $44
	inc a                                            ; $55ba: $3c
	ld d, b                                          ; $55bb: $50
	and b                                            ; $55bc: $a0
	cpl                                              ; $55bd: $2f
	ld b, e                                          ; $55be: $43
	adc b                                            ; $55bf: $88
	sub c                                            ; $55c0: $91
	xor c                                            ; $55c1: $a9
	ld b, b                                          ; $55c2: $40
	ld c, l                                          ; $55c3: $4d
	add sp, -$47                                     ; $55c4: $e8 $b9
	and c                                            ; $55c6: $a1
	ld c, b                                          ; $55c7: $48
	ld l, e                                          ; $55c8: $6b
	and c                                            ; $55c9: $a1
	ld b, [hl]                                       ; $55ca: $46
	inc [hl]                                         ; $55cb: $34
	pop af                                           ; $55cc: $f1
	ld d, $53                                        ; $55cd: $16 $53
	ld a, [hl-]                                      ; $55cf: $3a
	jr c, jr_091_561b                                ; $55d0: $38 $49

	xor h                                            ; $55d2: $ac
	db $eb                                           ; $55d3: $eb
	ld a, [hl]                                       ; $55d4: $7e
	ld b, a                                          ; $55d5: $47
	ldh a, [$c7]                                     ; $55d6: $f0 $c7
	ld c, l                                          ; $55d8: $4d
	ld h, c                                          ; $55d9: $61
	ld d, [hl]                                       ; $55da: $56
	add hl, sp                                       ; $55db: $39
	and b                                            ; $55dc: $a0
	cpl                                              ; $55dd: $2f
	ld b, e                                          ; $55de: $43
	db $ec                                           ; $55df: $ec
	rra                                              ; $55e0: $1f
	xor l                                            ; $55e1: $ad
	xor $06                                          ; $55e2: $ee $06
	ld b, a                                          ; $55e4: $47
	ld c, b                                          ; $55e5: $48
	and b                                            ; $55e6: $a0
	db $eb                                           ; $55e7: $eb
	ret nz                                           ; $55e8: $c0

	xor h                                            ; $55e9: $ac
	ldh a, [$aa]                                     ; $55ea: $f0 $aa
	adc c                                            ; $55ec: $89
	adc a                                            ; $55ed: $8f
	jp hl                                            ; $55ee: $e9


	rst AddAOntoHL                                          ; $55ef: $ef
	and b                                            ; $55f0: $a0
	cpl                                              ; $55f1: $2f
	ld b, e                                          ; $55f2: $43
	ldh a, [$5a]                                     ; $55f3: $f0 $5a
	add l                                            ; $55f5: $85
	inc [hl]                                         ; $55f6: $34
	ret nz                                           ; $55f7: $c0

	xor b                                            ; $55f8: $a8
	ld [hl-], a                                      ; $55f9: $32
	ld e, d                                          ; $55fa: $5a
	ld d, h                                          ; $55fb: $54
	ld b, a                                          ; $55fc: $47
	db $eb                                           ; $55fd: $eb
	adc e                                            ; $55fe: $8b
	ld [hl], h                                       ; $55ff: $74
	and e                                            ; $5600: $a3
	cpl                                              ; $5601: $2f
	ld b, e                                          ; $5602: $43
	add sp, -$7f                                     ; $5603: $e8 $81
	inc de                                           ; $5605: $13
	db $eb                                           ; $5606: $eb
	db $fc                                           ; $5607: $fc
	db $eb                                           ; $5608: $eb
	ld h, [hl]                                       ; $5609: $66
	and b                                            ; $560a: $a0
	cpl                                              ; $560b: $2f
	ld b, e                                          ; $560c: $43
	db $eb                                           ; $560d: $eb
	db $fc                                           ; $560e: $fc
	and b                                            ; $560f: $a0
	ld b, [hl]                                       ; $5610: $46
	dec sp                                           ; $5611: $3b
	inc [hl]                                         ; $5612: $34
	ld d, $a8                                        ; $5613: $16 $a8
	xor $27                                          ; $5615: $ee $27
	ld b, a                                          ; $5617: $47
	xor $1c                                          ; $5618: $ee $1c
	ld c, d                                          ; $561a: $4a

jr_091_561b:
	ld d, c                                          ; $561b: $51
	inc a                                            ; $561c: $3c
	and c                                            ; $561d: $a1
	add hl, sp                                       ; $561e: $39
	ld c, l                                          ; $561f: $4d
	ld a, $38                                        ; $5620: $3e $38
	ld e, c                                          ; $5622: $59
	xor b                                            ; $5623: $a8
	pop af                                           ; $5624: $f1
	ld a, [de]                                       ; $5625: $1a
	pop af                                           ; $5626: $f1
	inc c                                            ; $5627: $0c
	ld b, a                                          ; $5628: $47
	ld h, a                                          ; $5629: $67
	ld e, h                                          ; $562a: $5c
	ld d, d                                          ; $562b: $52
	ld d, c                                          ; $562c: $51
	and b                                            ; $562d: $a0
	cpl                                              ; $562e: $2f
	ld b, e                                          ; $562f: $43
	ld b, b                                          ; $5630: $40
	inc [hl]                                         ; $5631: $34
	ld b, b                                          ; $5632: $40
	ld c, l                                          ; $5633: $4d
	ld e, e                                          ; $5634: $5b
	ld d, [hl]                                       ; $5635: $56
	xor h                                            ; $5636: $ac
	ld e, d                                          ; $5637: $5a
	ld d, h                                          ; $5638: $54
	ld b, a                                          ; $5639: $47
	db $ec                                           ; $563a: $ec
	rlca                                             ; $563b: $07
	and c                                            ; $563c: $a1
	ld b, [hl]                                       ; $563d: $46
	dec sp                                           ; $563e: $3b
	inc [hl]                                         ; $563f: $34
	ld d, $44                                        ; $5640: $16 $44
	xor b                                            ; $5642: $a8
	xor $27                                          ; $5643: $ee $27
	ld b, a                                          ; $5645: $47
	ldh a, [rAUD2LEN]                                ; $5646: $f0 $16
	and c                                            ; $5648: $a1
	ldh a, [$a0]                                     ; $5649: $f0 $a0
	ld e, c                                          ; $564b: $59
	ld a, l                                          ; $564c: $7d
	inc [hl]                                         ; $564d: $34
	ldh a, [$3b]                                     ; $564e: $f0 $3b
	dec sp                                           ; $5650: $3b
	ccf                                              ; $5651: $3f
	inc de                                           ; $5652: $13
	ld c, a                                          ; $5653: $4f
	ld d, b                                          ; $5654: $50
	dec sp                                           ; $5655: $3b
	ld h, c                                          ; $5656: $61
	ld d, [hl]                                       ; $5657: $56
	dec sp                                           ; $5658: $3b
	dec a                                            ; $5659: $3d
	dec [hl]                                         ; $565a: $35
	db $ed                                           ; $565b: $ed
	ld d, l                                          ; $565c: $55
	ld e, c                                          ; $565d: $59
	and b                                            ; $565e: $a0
	cpl                                              ; $565f: $2f
	ld b, e                                          ; $5660: $43
	ld b, b                                          ; $5661: $40
	inc [hl]                                         ; $5662: $34
	or h                                             ; $5663: $b4
	xor h                                            ; $5664: $ac
	ld e, d                                          ; $5665: $5a
	ld d, h                                          ; $5666: $54
	ld b, a                                          ; $5667: $47
	db $ec                                           ; $5668: $ec
	rlca                                             ; $5669: $07
	and c                                            ; $566a: $a1
	ld b, [hl]                                       ; $566b: $46
	dec sp                                           ; $566c: $3b
	inc [hl]                                         ; $566d: $34
	ld d, $44                                        ; $566e: $16 $44
	xor b                                            ; $5670: $a8
	xor $27                                          ; $5671: $ee $27
	ld b, a                                          ; $5673: $47
	ld l, e                                          ; $5674: $6b
	inc a                                            ; $5675: $3c
	ldh a, [rAUD2LEN]                                ; $5676: $f0 $16
	and c                                            ; $5678: $a1
	xor $1f                                          ; $5679: $ee $1f
	inc [hl]                                         ; $567b: $34
	jr c, jr_091_56b6                                ; $567c: $38 $38

	ld b, l                                          ; $567e: $45
	and b                                            ; $567f: $a0
	cpl                                              ; $5680: $2f
	ld b, e                                          ; $5681: $43
	ld e, e                                          ; $5682: $5b
	ld d, [hl]                                       ; $5683: $56
	ld b, [hl]                                       ; $5684: $46
	xor h                                            ; $5685: $ac
	ld e, d                                          ; $5686: $5a
	ld d, h                                          ; $5687: $54
	ld b, a                                          ; $5688: $47
	db $ec                                           ; $5689: $ec
	rlca                                             ; $568a: $07
	and c                                            ; $568b: $a1
	xor $27                                          ; $568c: $ee $27
	ld c, h                                          ; $568e: $4c
	add l                                            ; $568f: $85
	xor h                                            ; $5690: $ac
	ldh a, [rAUD4ENV]                                ; $5691: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5693: $f0 $23
	jr c, jr_091_56e0                                ; $5695: $38 $49

	ld d, h                                          ; $5697: $54
	ld d, e                                          ; $5698: $53
	jr c, jr_091_56d3                                ; $5699: $38 $38

	ld a, [hl-]                                      ; $569b: $3a
	ld [hl], h                                       ; $569c: $74
	and b                                            ; $569d: $a0
	cpl                                              ; $569e: $2f
	ld b, e                                          ; $569f: $43
	ldh a, [rAUD4ENV]                                ; $56a0: $f0 $21
	ldh a, [rAUD4GO]                                 ; $56a2: $f0 $23
	jr c, jr_091_56ef                                ; $56a4: $38 $49

	ld d, h                                          ; $56a6: $54
	ld c, h                                          ; $56a7: $4c
	add l                                            ; $56a8: $85
	xor b                                            ; $56a9: $a8
	ld [hl-], a                                      ; $56aa: $32
	ld e, d                                          ; $56ab: $5a
	ld d, h                                          ; $56ac: $54
	ld d, e                                          ; $56ad: $53
	db $ec                                           ; $56ae: $ec
	ld a, [bc]                                       ; $56af: $0a
	ld c, b                                          ; $56b0: $48
	ld [hl], $33                                     ; $56b1: $36 $33
	add hl, bc                                       ; $56b3: $09
	ld l, e                                          ; $56b4: $6b
	ld c, b                                          ; $56b5: $48

jr_091_56b6:
	and c                                            ; $56b6: $a1
	xor $27                                          ; $56b7: $ee $27
	inc [hl]                                         ; $56b9: $34
	db $eb                                           ; $56ba: $eb
	pop af                                           ; $56bb: $f1
	ld c, c                                          ; $56bc: $49
	inc de                                           ; $56bd: $13
	ld [hl], d                                       ; $56be: $72
	adc c                                            ; $56bf: $89
	ld d, c                                          ; $56c0: $51
	ld c, [hl]                                       ; $56c1: $4e
	inc a                                            ; $56c2: $3c
	ld d, b                                          ; $56c3: $50
	ld c, b                                          ; $56c4: $48
	and b                                            ; $56c5: $a0
	cpl                                              ; $56c6: $2f
	ld b, e                                          ; $56c7: $43
	adc e                                            ; $56c8: $8b
	ldh a, [$72]                                     ; $56c9: $f0 $72
	ld c, c                                          ; $56cb: $49
	inc de                                           ; $56cc: $13
	xor $06                                          ; $56cd: $ee $06
	ld b, a                                          ; $56cf: $47
	ld h, a                                          ; $56d0: $67
	ld d, l                                          ; $56d1: $55
	ld b, d                                          ; $56d2: $42

jr_091_56d3:
	inc a                                            ; $56d3: $3c
	ld c, b                                          ; $56d4: $48
	and b                                            ; $56d5: $a0
	cpl                                              ; $56d6: $2f
	ld b, e                                          ; $56d7: $43
	add sp, -$7f                                     ; $56d8: $e8 $81
	inc de                                           ; $56da: $13
	db $ec                                           ; $56db: $ec
	and $53                                          ; $56dc: $e6 $53
	ld a, b                                          ; $56de: $78
	dec a                                            ; $56df: $3d

jr_091_56e0:
	sub a                                            ; $56e0: $97
	and b                                            ; $56e1: $a0
	cpl                                              ; $56e2: $2f
	ld b, e                                          ; $56e3: $43
	db $ec                                           ; $56e4: $ec
	and $a2                                          ; $56e5: $e6 $a2
	ld b, [hl]                                       ; $56e7: $46
	dec sp                                           ; $56e8: $3b
	inc [hl]                                         ; $56e9: $34
	ld h, h                                          ; $56ea: $64
	ld c, e                                          ; $56eb: $4b
	ld b, l                                          ; $56ec: $45
	add hl, sp                                       ; $56ed: $39
	xor b                                            ; $56ee: $a8

jr_091_56ef:
	ld d, $a0                                        ; $56ef: $16 $a0
	ld e, [hl]                                       ; $56f1: $5e
	dec sp                                           ; $56f2: $3b
	ld c, b                                          ; $56f3: $48
	ld c, e                                          ; $56f4: $4b
	inc [hl]                                         ; $56f5: $34
	xor $2d                                          ; $56f6: $ee $2d
	xor b                                            ; $56f8: $a8
	ld b, l                                          ; $56f9: $45
	ld e, a                                          ; $56fa: $5f
	ld d, h                                          ; $56fb: $54
	ld b, c                                          ; $56fc: $41
	ld c, d                                          ; $56fd: $4a
	ld c, b                                          ; $56fe: $48
	and b                                            ; $56ff: $a0
	ld h, h                                          ; $5700: $64
	ld c, e                                          ; $5701: $4b
	ld b, l                                          ; $5702: $45
	add hl, sp                                       ; $5703: $39
	inc de                                           ; $5704: $13
	ld d, $a0                                        ; $5705: $16 $a0
	ld h, e                                          ; $5707: $63
	inc [hl]                                         ; $5708: $34
	ld l, a                                          ; $5709: $6f
	ld c, c                                          ; $570a: $49
	ld c, d                                          ; $570b: $4a
	ld d, c                                          ; $570c: $51
	inc a                                            ; $570d: $3c
	ld [hl], $ee                                     ; $570e: $36 $ee
	dec l                                            ; $5710: $2d
	ld c, b                                          ; $5711: $48
	and b                                            ; $5712: $a0
	ld d, $a8                                        ; $5713: $16 $a8
	ld h, h                                          ; $5715: $64
	ld c, e                                          ; $5716: $4b
	ld b, l                                          ; $5717: $45
	add hl, sp                                       ; $5718: $39
	and b                                            ; $5719: $a0
	jr c, jr_091_5754                                ; $571a: $38 $38

	ld b, l                                          ; $571c: $45
	dec [hl]                                         ; $571d: $35
	ld e, e                                          ; $571e: $5b
	ld d, [hl]                                       ; $571f: $56
	ld b, [hl]                                       ; $5720: $46
	xor h                                            ; $5721: $ac
	ld e, d                                          ; $5722: $5a
	ld d, h                                          ; $5723: $54
	ld h, a                                          ; $5724: $67
	ld d, h                                          ; $5725: $54
	add hl, sp                                       ; $5726: $39
	and c                                            ; $5727: $a1
	ld c, e                                          ; $5728: $4b
	xor c                                            ; $5729: $a9
	ld l, e                                          ; $572a: $6b
	ld c, d                                          ; $572b: $4a
	ld a, $66                                        ; $572c: $3e $66
	add hl, sp                                       ; $572e: $39
	and c                                            ; $572f: $a1
	xor $08                                          ; $5730: $ee $08
	ld c, d                                          ; $5732: $4a
	db $ec                                           ; $5733: $ec
	ld c, $72                                        ; $5734: $0e $72
	dec a                                            ; $5736: $3d
	jr c, @+$15                                      ; $5737: $38 $13

	ld b, d                                          ; $5739: $42
	dec [hl]                                         ; $573a: $35
	inc hl                                           ; $573b: $23
	ld e, e                                          ; $573c: $5b
	ld d, [hl]                                       ; $573d: $56
	and b                                            ; $573e: $a0
	cpl                                              ; $573f: $2f
	ld b, e                                          ; $5740: $43
	ld b, [hl]                                       ; $5741: $46
	inc [hl]                                         ; $5742: $34
	xor $09                                          ; $5743: $ee $09
	ld e, b                                          ; $5745: $58
	ld e, c                                          ; $5746: $59
	ld b, c                                          ; $5747: $41
	ld c, b                                          ; $5748: $48
	scf                                              ; $5749: $37
	inc de                                           ; $574a: $13
	ld [$48be], a                                    ; $574b: $ea $be $48
	and b                                            ; $574e: $a0
	ld b, l                                          ; $574f: $45
	ld h, h                                          ; $5750: $64
	inc [hl]                                         ; $5751: $34
	ld [de], a                                       ; $5752: $12
	xor b                                            ; $5753: $a8

jr_091_5754:
	xor $08                                          ; $5754: $ee $08
	inc a                                            ; $5756: $3c
	and c                                            ; $5757: $a1
	cpl                                              ; $5758: $2f
	ld b, e                                          ; $5759: $43
	db $ed                                           ; $575a: $ed
	sub [hl]                                         ; $575b: $96
	ld a, [hl-]                                      ; $575c: $3a
	ld h, h                                          ; $575d: $64
	ldh a, [$f6]                                     ; $575e: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $5760: $f0 $24
	ld b, h                                          ; $5762: $44
	and b                                            ; $5763: $a0
	ld l, d                                          ; $5764: $6a
	ldh a, [rAUD1HIGH]                               ; $5765: $f0 $14
	ld c, e                                          ; $5767: $4b
	inc [hl]                                         ; $5768: $34
	ldh a, [$aa]                                     ; $5769: $f0 $aa
	adc c                                            ; $576b: $89
	adc a                                            ; $576c: $8f
	ld d, e                                          ; $576d: $53
	inc de                                           ; $576e: $13
	ld [$3577], a                                    ; $576f: $ea $77 $35
	db $ec                                           ; $5772: $ec
	ld sp, $2fa0                                     ; $5773: $31 $a0 $2f
	ld b, e                                          ; $5776: $43
	ld b, b                                          ; $5777: $40
	add hl, sp                                       ; $5778: $39
	inc a                                            ; $5779: $3c
	inc [hl]                                         ; $577a: $34
	ldh a, [$aa]                                     ; $577b: $f0 $aa
	adc c                                            ; $577d: $89
	adc a                                            ; $577e: $8f
	ld d, e                                          ; $577f: $53
	inc de                                           ; $5780: $13
	ldh a, [rAUD4ENV]                                ; $5781: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5783: $f0 $23
	jr c, jr_091_57c9                                ; $5785: $38 $42

	inc a                                            ; $5787: $3c
	ld c, b                                          ; $5788: $48
	and b                                            ; $5789: $a0
	ld l, d                                          ; $578a: $6a
	ldh a, [rAUD1HIGH]                               ; $578b: $f0 $14
	ld c, e                                          ; $578d: $4b
	inc [hl]                                         ; $578e: $34
	adc d                                            ; $578f: $8a
	ldh a, [$73]                                     ; $5790: $f0 $73
	adc a                                            ; $5792: $8f
	ld d, e                                          ; $5793: $53
	inc de                                           ; $5794: $13
	ld [$a077], a                                    ; $5795: $ea $77 $a0
	cpl                                              ; $5798: $2f
	ld b, e                                          ; $5799: $43
	db $ec                                           ; $579a: $ec
	jr z, jr_091_57e5                                ; $579b: $28 $48

	ld a, [hl-]                                      ; $579d: $3a
	ld b, c                                          ; $579e: $41
	ld b, h                                          ; $579f: $44
	ld e, a                                          ; $57a0: $5f
	add hl, sp                                       ; $57a1: $39
	and c                                            ; $57a2: $a1
	cpl                                              ; $57a3: $2f
	ld b, e                                          ; $57a4: $43
	or h                                             ; $57a5: $b4
	xor h                                            ; $57a6: $ac
	ld e, d                                          ; $57a7: $5a
	ld d, h                                          ; $57a8: $54
	ld b, a                                          ; $57a9: $47
	db $eb                                           ; $57aa: $eb
	adc e                                            ; $57ab: $8b
	ld c, b                                          ; $57ac: $48
	and c                                            ; $57ad: $a1
	cpl                                              ; $57ae: $2f
	ld b, e                                          ; $57af: $43
	db $dd                                           ; $57b0: $dd
	ldh a, [rSCX]                                    ; $57b1: $f0 $43
	ldh a, [$b8]                                     ; $57b3: $f0 $b8
	adc a                                            ; $57b5: $8f
	ld b, a                                          ; $57b6: $47
	inc de                                           ; $57b7: $13
	ld h, a                                          ; $57b8: $67
	ld d, h                                          ; $57b9: $54
	add hl, sp                                       ; $57ba: $39
	and b                                            ; $57bb: $a0
	cpl                                              ; $57bc: $2f
	ld b, e                                          ; $57bd: $43
	db $dd                                           ; $57be: $dd
	ldh a, [$aa]                                     ; $57bf: $f0 $aa
	adc c                                            ; $57c1: $89
	adc a                                            ; $57c2: $8f
	ld b, a                                          ; $57c3: $47
	inc de                                           ; $57c4: $13
	ld h, a                                          ; $57c5: $67
	ld d, h                                          ; $57c6: $54
	add hl, sp                                       ; $57c7: $39
	and b                                            ; $57c8: $a0

jr_091_57c9:
	cpl                                              ; $57c9: $2f
	ld b, e                                          ; $57ca: $43
	db $dd                                           ; $57cb: $dd
	adc d                                            ; $57cc: $8a
	ldh a, [$73]                                     ; $57cd: $f0 $73
	adc a                                            ; $57cf: $8f
	ld b, a                                          ; $57d0: $47
	inc de                                           ; $57d1: $13
	ld h, a                                          ; $57d2: $67
	ld d, h                                          ; $57d3: $54
	add hl, sp                                       ; $57d4: $39
	and b                                            ; $57d5: $a0
	cpl                                              ; $57d6: $2f
	ld b, e                                          ; $57d7: $43
	db $dd                                           ; $57d8: $dd
	db $ec                                           ; $57d9: $ec
	ret nc                                           ; $57da: $d0

	ld b, a                                          ; $57db: $47
	inc de                                           ; $57dc: $13
	ld h, a                                          ; $57dd: $67
	ld d, h                                          ; $57de: $54
	add hl, sp                                       ; $57df: $39
	and b                                            ; $57e0: $a0
	add hl, bc                                       ; $57e1: $09
	cpl                                              ; $57e2: $2f
	pop af                                           ; $57e3: $f1
	ld d, h                                          ; $57e4: $54

jr_091_57e5:
	pop af                                           ; $57e5: $f1
	ld [bc], a                                       ; $57e6: $02
	ldh a, [$6d]                                     ; $57e7: $f0 $6d
	ld e, c                                          ; $57e9: $59
	ldh a, [$27]                                     ; $57ea: $f0 $27
	ld b, e                                          ; $57ec: $43
	ldh a, [$de]                                     ; $57ed: $f0 $de
	ld e, c                                          ; $57ef: $59
	ld l, c                                          ; $57f0: $69
	ldh a, [rAUD3LOW]                                ; $57f1: $f0 $1d
	pop af                                           ; $57f3: $f1
	ld [bc], a                                       ; $57f4: $02
	ldh a, [$3d]                                     ; $57f5: $f0 $3d
	ldh a, [$eb]                                     ; $57f7: $f0 $eb
	ld d, e                                          ; $57f9: $53
	inc de                                           ; $57fa: $13
	pop af                                           ; $57fb: $f1
	sbc l                                            ; $57fc: $9d
	ldh a, [rAUD2LEN]                                ; $57fd: $f0 $16
	ldh a, [$8a]                                     ; $57ff: $f0 $8a
	pop af                                           ; $5801: $f1
	ld [hl], d                                       ; $5802: $72
	ld b, a                                          ; $5803: $47
	ld a, [hl-]                                      ; $5804: $3a
	ld d, a                                          ; $5805: $57
	ld d, d                                          ; $5806: $52
	ld a, $3d                                        ; $5807: $3e $3d
	and b                                            ; $5809: $a0
	cpl                                              ; $580a: $2f
	ldh a, [rDIV]                                    ; $580b: $f0 $04
	ld a, l                                          ; $580d: $7d
	ld l, c                                          ; $580e: $69
	ldh a, [$03]                                     ; $580f: $f0 $03
	ldh a, [$9d]                                     ; $5811: $f0 $9d
	pop af                                           ; $5813: $f1
	ld [bc], a                                       ; $5814: $02
	ldh a, [$a1]                                     ; $5815: $f0 $a1
	ld e, c                                          ; $5817: $59
	inc a                                            ; $5818: $3c
	ld d, b                                          ; $5819: $50
	ld b, e                                          ; $581a: $43
	ldh a, [$c3]                                     ; $581b: $f0 $c3
	add c                                            ; $581d: $81
	sbc b                                            ; $581e: $98
	ldh a, [rWX]                                     ; $581f: $f0 $4b
	ld h, l                                          ; $5821: $65
	ldh a, [$eb]                                     ; $5822: $f0 $eb
	inc de                                           ; $5824: $13
	ld h, d                                          ; $5825: $62
	db $ed                                           ; $5826: $ed
	ldh [rHDMA1], a                                  ; $5827: $e0 $51
	ld c, [hl]                                       ; $5829: $4e
	ld c, c                                          ; $582a: $49
	ldh a, [$b2]                                     ; $582b: $f0 $b2
	ldh a, [$8c]                                     ; $582d: $f0 $8c
	ld d, d                                          ; $582f: $52
	ld d, c                                          ; $5830: $51
	and b                                            ; $5831: $a0
	add hl, bc                                       ; $5832: $09
	cpl                                              ; $5833: $2f
	ld b, e                                          ; $5834: $43
	ld d, h                                          ; $5835: $54
	add hl, sp                                       ; $5836: $39
	ld a, $3f                                        ; $5837: $3e $3f
	db $ed                                           ; $5839: $ed
	db $10                                           ; $583a: $10
	ld c, e                                          ; $583b: $4b
	inc de                                           ; $583c: $13
	ldh a, [$ce]                                     ; $583d: $f0 $ce
	ldh a, [c]                                       ; $583f: $f2
	ld e, b                                          ; $5840: $58
	ld a, $3d                                        ; $5841: $3e $3d
	and b                                            ; $5843: $a0
	cpl                                              ; $5844: $2f
	ld b, e                                          ; $5845: $43
	ld b, [hl]                                       ; $5846: $46
	dec sp                                           ; $5847: $3b
	xor h                                            ; $5848: $ac
	ld l, d                                          ; $5849: $6a
	ld [hl], a                                       ; $584a: $77
	jr c, jr_091_5891                                ; $584b: $38 $44

	ld a, $3d                                        ; $584d: $3e $3d
	ld e, l                                          ; $584f: $5d
	ld e, d                                          ; $5850: $5a
	xor h                                            ; $5851: $ac
	db $ed                                           ; $5852: $ed
	ld d, a                                          ; $5853: $57
	xor h                                            ; $5854: $ac
	add sp, -$38                                     ; $5855: $e8 $c8
	and b                                            ; $5857: $a0
	cpl                                              ; $5858: $2f
	ld [hl-], a                                      ; $5859: $32
	adc c                                            ; $585a: $89
	sbc a                                            ; $585b: $9f
	ld c, d                                          ; $585c: $4a
	ld c, e                                          ; $585d: $4b
	inc de                                           ; $585e: $13
	pop af                                           ; $585f: $f1
	ld a, h                                          ; $5860: $7c
	ld a, c                                          ; $5861: $79
	ld a, [hl-]                                      ; $5862: $3a
	inc a                                            ; $5863: $3c
	dec sp                                           ; $5864: $3b
	dec a                                            ; $5865: $3d
	ld e, l                                          ; $5866: $5d
	ld e, d                                          ; $5867: $5a
	xor h                                            ; $5868: $ac
	db $eb                                           ; $5869: $eb
	ld h, b                                          ; $586a: $60
	ld c, c                                          ; $586b: $49
	inc a                                            ; $586c: $3c
	xor h                                            ; $586d: $ac
	db $eb                                           ; $586e: $eb
	ld e, c                                          ; $586f: $59
	inc a                                            ; $5870: $3c
	ld a, [hl-]                                      ; $5871: $3a
	and e                                            ; $5872: $a3
	cpl                                              ; $5873: $2f
	ld [$0912], a                                    ; $5874: $ea $12 $09
	cpl                                              ; $5877: $2f
	jp hl                                            ; $5878: $e9


	add [hl]                                         ; $5879: $86
	add hl, bc                                       ; $587a: $09
	cpl                                              ; $587b: $2f
	ld b, e                                          ; $587c: $43
	db $eb                                           ; $587d: $eb
	dec a                                            ; $587e: $3d
	inc de                                           ; $587f: $13
	ld [$a011], a                                    ; $5880: $ea $11 $a0
	add hl, bc                                       ; $5883: $09
	cpl                                              ; $5884: $2f
	ld b, e                                          ; $5885: $43
	db $ec                                           ; $5886: $ec
	ld h, $9b                                        ; $5887: $26 $9b
	ld b, d                                          ; $5889: $42
	inc de                                           ; $588a: $13
	ldh a, [$c1]                                     ; $588b: $f0 $c1
	ldh a, [$d5]                                     ; $588d: $f0 $d5
	inc a                                            ; $588f: $3c
	and b                                            ; $5890: $a0

jr_091_5891:
	cpl                                              ; $5891: $2f
	ld b, e                                          ; $5892: $43
	ld l, e                                          ; $5893: $6b
	inc a                                            ; $5894: $3c
	inc [hl]                                         ; $5895: $34
	sbc e                                            ; $5896: $9b
	ld b, d                                          ; $5897: $42
	ldh a, [rVBK]                                    ; $5898: $f0 $4f
	ld d, e                                          ; $589a: $53
	inc de                                           ; $589b: $13
	jp hl                                            ; $589c: $e9


	reti                                             ; $589d: $d9


	and b                                            ; $589e: $a0
	cpl                                              ; $589f: $2f
	ld b, e                                          ; $58a0: $43
	db $ec                                           ; $58a1: $ec
	ld h, $f0                                        ; $58a2: $26 $f0
	ld b, e                                          ; $58a4: $43
	ldh a, [rAUDTERM]                                ; $58a5: $f0 $25
	ld b, d                                          ; $58a7: $42
	inc de                                           ; $58a8: $13
	ldh a, [$c1]                                     ; $58a9: $f0 $c1
	ldh a, [$d5]                                     ; $58ab: $f0 $d5
	inc a                                            ; $58ad: $3c
	and b                                            ; $58ae: $a0
	cpl                                              ; $58af: $2f
	ld b, e                                          ; $58b0: $43
	ld l, e                                          ; $58b1: $6b
	inc a                                            ; $58b2: $3c
	inc [hl]                                         ; $58b3: $34
	ldh a, [$a5]                                     ; $58b4: $f0 $a5
	ldh a, [rSCX]                                    ; $58b6: $f0 $43
	ld b, d                                          ; $58b8: $42
	ldh a, [rVBK]                                    ; $58b9: $f0 $4f
	ld d, e                                          ; $58bb: $53
	inc de                                           ; $58bc: $13
	jp hl                                            ; $58bd: $e9


	reti                                             ; $58be: $d9


	and b                                            ; $58bf: $a0
	cpl                                              ; $58c0: $2f
	ld b, e                                          ; $58c1: $43
	ld h, h                                          ; $58c2: $64
	dec sp                                           ; $58c3: $3b
	inc [hl]                                         ; $58c4: $34
	db $ec                                           ; $58c5: $ec
	db $10                                           ; $58c6: $10
	xor h                                            ; $58c7: $ac
	db $ed                                           ; $58c8: $ed
	ld l, d                                          ; $58c9: $6a
	ld d, e                                          ; $58ca: $53
	ldh a, [$bb]                                     ; $58cb: $f0 $bb
	ld d, d                                          ; $58cd: $52
	ld c, [hl]                                       ; $58ce: $4e
	sub a                                            ; $58cf: $97
	and b                                            ; $58d0: $a0
	cpl                                              ; $58d1: $2f
	ld b, e                                          ; $58d2: $43
	ld l, e                                          ; $58d3: $6b
	ld b, d                                          ; $58d4: $42
	di                                               ; $58d5: $f3
	add d                                            ; $58d6: $82
	adc [hl]                                         ; $58d7: $8e
	ld a, [hl-]                                      ; $58d8: $3a
	ld b, c                                          ; $58d9: $41
	ld b, h                                          ; $58da: $44
	ld e, a                                          ; $58db: $5f
	add hl, sp                                       ; $58dc: $39
	ld c, b                                          ; $58dd: $48
	and b                                            ; $58de: $a0
	cpl                                              ; $58df: $2f
	ld b, e                                          ; $58e0: $43
	ldh a, [$aa]                                     ; $58e1: $f0 $aa
	adc c                                            ; $58e3: $89
	adc a                                            ; $58e4: $8f
	ld c, e                                          ; $58e5: $4b
	xor $2a                                          ; $58e6: $ee $2a
	db $ec                                           ; $58e8: $ec
	ldh a, [c]                                       ; $58e9: $f2
	xor e                                            ; $58ea: $ab
	jp hl                                            ; $58eb: $e9


	sub b                                            ; $58ec: $90
	ld c, b                                          ; $58ed: $48
	and b                                            ; $58ee: $a0
	cpl                                              ; $58ef: $2f
	ld b, e                                          ; $58f0: $43
	ld l, e                                          ; $58f1: $6b
	ldh a, [$cf]                                     ; $58f2: $f0 $cf
	xor h                                            ; $58f4: $ac
	ld b, e                                          ; $58f5: $43
	ldh a, [$6d]                                     ; $58f6: $f0 $6d
	ld e, c                                          ; $58f8: $59
	ldh a, [$27]                                     ; $58f9: $f0 $27
	ld h, d                                          ; $58fb: $62
	ldh a, [rOCPS]                                   ; $58fc: $f0 $6a
	ld a, $3f                                        ; $58fe: $3e $3f
	inc [hl]                                         ; $5900: $34
	ld b, [hl]                                       ; $5901: $46
	ld a, [hl-]                                      ; $5902: $3a
	dec a                                            ; $5903: $3d
	ld b, d                                          ; $5904: $42

jr_091_5905:
	inc de                                           ; $5905: $13
	ld [$5318], a                                    ; $5906: $ea $18 $53
	ldh a, [rTAC]                                    ; $5909: $f0 $07
	inc a                                            ; $590b: $3c
	ld d, a                                          ; $590c: $57
	ld d, d                                          ; $590d: $52
	ld d, c                                          ; $590e: $51
	ldh a, [$eb]                                     ; $590f: $f0 $eb
	inc de                                           ; $5911: $13
	db $ed                                           ; $5912: $ed
	ld b, e                                          ; $5913: $43
	and b                                            ; $5914: $a0
	cpl                                              ; $5915: $2f
	ld b, e                                          ; $5916: $43
	ld c, d                                          ; $5917: $4a
	ld c, a                                          ; $5918: $4f
	inc [hl]                                         ; $5919: $34
	add h                                            ; $591a: $84
	ld d, e                                          ; $591b: $53
	pop af                                           ; $591c: $f1
	sub d                                            ; $591d: $92
	ld d, l                                          ; $591e: $55
	ccf                                              ; $591f: $3f
	inc de                                           ; $5920: $13
	add c                                            ; $5921: $81
	ld [hl], l                                       ; $5922: $75
	ld a, l                                          ; $5923: $7d
	ld c, d                                          ; $5924: $4a
	ld e, h                                          ; $5925: $5c
	ld b, b                                          ; $5926: $40
	add hl, sp                                       ; $5927: $39
	ld b, a                                          ; $5928: $47
	ld a, [hl-]                                      ; $5929: $3a
	jr c, @+$3c                                      ; $592a: $38 $3a

	ld c, b                                          ; $592c: $48
	and b                                            ; $592d: $a0
	cpl                                              ; $592e: $2f
	ld b, e                                          ; $592f: $43
	ld c, b                                          ; $5930: $48
	db $eb                                           ; $5931: $eb
	inc [hl]                                         ; $5932: $34
	xor h                                            ; $5933: $ac
	ld b, [hl]                                       ; $5934: $46
	ld e, h                                          ; $5935: $5c
	ld d, b                                          ; $5936: $50
	ld [hl], c                                       ; $5937: $71
	ld c, [hl]                                       ; $5938: $4e
	inc a                                            ; $5939: $3c
	and b                                            ; $593a: $a0
	cpl                                              ; $593b: $2f
	ld b, e                                          ; $593c: $43
	ldh a, [$aa]                                     ; $593d: $f0 $aa
	adc c                                            ; $593f: $89
	adc a                                            ; $5940: $8f
	ld c, e                                          ; $5941: $4b
	inc de                                           ; $5942: $13
	xor $2a                                          ; $5943: $ee $2a
	db $ec                                           ; $5945: $ec
	ldh a, [c]                                       ; $5946: $f2
	inc a                                            ; $5947: $3c
	and b                                            ; $5948: $a0
	cpl                                              ; $5949: $2f
	ld b, e                                          ; $594a: $43
	ldh a, [$80]                                     ; $594b: $f0 $80
	ldh a, [$c5]                                     ; $594d: $f0 $c5
	inc [hl]                                         ; $594f: $34
	db $ed                                           ; $5950: $ed
	ld c, c                                          ; $5951: $49
	ld b, h                                          ; $5952: $44
	dec sp                                           ; $5953: $3b
	dec a                                            ; $5954: $3d
	ld a, [hl-]                                      ; $5955: $3a
	and b                                            ; $5956: $a0
	cpl                                              ; $5957: $2f
	ld b, e                                          ; $5958: $43
	ld d, c                                          ; $5959: $51
	ld [hl], b                                       ; $595a: $70
	jr c, jr_091_5905                                ; $595b: $38 $a8

	ld d, d                                          ; $595d: $52
	ld c, [hl]                                       ; $595e: $4e
	ld c, d                                          ; $595f: $4a
	pop af                                           ; $5960: $f1
	add sp, $62                                      ; $5961: $e8 $62

jr_091_5963:
	ld [hl], d                                       ; $5963: $72
	ccf                                              ; $5964: $3f
	jr c, jr_091_59b5                                ; $5965: $38 $4e

	ld l, h                                          ; $5967: $6c
	dec a                                            ; $5968: $3d
	jr c, jr_091_59af                                ; $5969: $38 $44

	dec sp                                           ; $596b: $3b
	dec a                                            ; $596c: $3d
	and b                                            ; $596d: $a0
	cpl                                              ; $596e: $2f
	ld b, e                                          ; $596f: $43
	db $ec                                           ; $5970: $ec
	jr z, jr_091_5963                                ; $5971: $28 $f0

	halt                                             ; $5973: $76
	ldh a, [$d2]                                     ; $5974: $f0 $d2
	ldh a, [$3f]                                     ; $5976: $f0 $3f
	inc a                                            ; $5978: $3c
	xor b                                            ; $5979: $a8
	ldh a, [$bd]                                     ; $597a: $f0 $bd
	jr c, jr_091_59bd                                ; $597c: $38 $3f

	ld c, a                                          ; $597e: $4f
	ld d, b                                          ; $597f: $50
	ld h, h                                          ; $5980: $64
	add hl, sp                                       ; $5981: $39
	inc a                                            ; $5982: $3c
	ld a, [hl-]                                      ; $5983: $3a
	and b                                            ; $5984: $a0
	cpl                                              ; $5985: $2f
	ld b, e                                          ; $5986: $43
	di                                               ; $5987: $f3
	sub b                                            ; $5988: $90
	ld b, c                                          ; $5989: $41
	ld c, d                                          ; $598a: $4a
	ld c, [hl]                                       ; $598b: $4e
	inc a                                            ; $598c: $3c
	ld d, b                                          ; $598d: $50
	xor h                                            ; $598e: $ac
	pop af                                           ; $598f: $f1
	jr nc, jr_091_5a03                               ; $5990: $30 $71

	ld b, l                                          ; $5992: $45
	add hl, sp                                       ; $5993: $39
	ld c, b                                          ; $5994: $48
	and b                                            ; $5995: $a0
	cpl                                              ; $5996: $2f
	ld b, e                                          ; $5997: $43
	ld [$a852], a                                    ; $5998: $ea $52 $a8
	ld [$a079], a                                    ; $599b: $ea $79 $a0
	jp hl                                            ; $599e: $e9


	push af                                          ; $599f: $f5
	and b                                            ; $59a0: $a0
	cpl                                              ; $59a1: $2f
	ld b, e                                          ; $59a2: $43
	db $eb                                           ; $59a3: $eb
	add hl, bc                                       ; $59a4: $09
	xor h                                            ; $59a5: $ac
	db $eb                                           ; $59a6: $eb
	ld a, [bc]                                       ; $59a7: $0a
	inc de                                           ; $59a8: $13
	ld [$a07b], a                                    ; $59a9: $ea $7b $a0
	db $eb                                           ; $59ac: $eb
	ld [hl], h                                       ; $59ad: $74
	xor h                                            ; $59ae: $ac

jr_091_59af:
	ld [$a860], a                                    ; $59af: $ea $60 $a8
	jp hl                                            ; $59b2: $e9


	or $a1                                           ; $59b3: $f6 $a1

jr_091_59b5:
	cpl                                              ; $59b5: $2f
	db $eb                                           ; $59b6: $eb
	dec bc                                           ; $59b7: $0b
	add hl, bc                                       ; $59b8: $09
	db $eb                                           ; $59b9: $eb
	sbc [hl]                                         ; $59ba: $9e
	inc [hl]                                         ; $59bb: $34
	db $eb                                           ; $59bc: $eb

jr_091_59bd:
	sbc [hl]                                         ; $59bd: $9e
	xor b                                            ; $59be: $a8
	ld [$ac7c], a                                    ; $59bf: $ea $7c $ac
	db $ec                                           ; $59c2: $ec
	add b                                            ; $59c3: $80
	and b                                            ; $59c4: $a0
	cpl                                              ; $59c5: $2f
	ld b, e                                          ; $59c6: $43
	add sp, -$02                                     ; $59c7: $e8 $fe
	and b                                            ; $59c9: $a0
	jp hl                                            ; $59ca: $e9


	rst FarCall                                          ; $59cb: $f7
	xor b                                            ; $59cc: $a8
	db $eb                                           ; $59cd: $eb
	call nz, $2fa0                                   ; $59ce: $c4 $a0 $2f
	ld b, e                                          ; $59d1: $43
	jr c, jr_091_5a0c                                ; $59d2: $38 $38

	ldh a, [rAUD3LEVEL]                              ; $59d4: $f0 $1c
	ld b, d                                          ; $59d6: $42
	ldh a, [c]                                       ; $59d7: $f2
	rst $38                                          ; $59d8: $ff
	di                                               ; $59d9: $f3
	add [hl]                                         ; $59da: $86
	ld b, h                                          ; $59db: $44
	adc l                                            ; $59dc: $8d
	and b                                            ; $59dd: $a0
	cpl                                              ; $59de: $2f
	add sp, $3b                                      ; $59df: $e8 $3b
	add hl, bc                                       ; $59e1: $09
	ld [$a97d], a                                    ; $59e2: $ea $7d $a9
	ld [$a07e], a                                    ; $59e5: $ea $7e $a0
	cpl                                              ; $59e8: $2f
	ld b, e                                          ; $59e9: $43
	ld h, h                                          ; $59ea: $64
	sbc [hl]                                         ; $59eb: $9e
	ld c, c                                          ; $59ec: $49
	xor $06                                          ; $59ed: $ee $06
	ld b, a                                          ; $59ef: $47
	inc de                                           ; $59f0: $13
	ld d, c                                          ; $59f1: $51
	ld c, [hl]                                       ; $59f2: $4e
	ld a, [hl-]                                      ; $59f3: $3a
	ld b, l                                          ; $59f4: $45
	ld a, [hl-]                                      ; $59f5: $3a
	and b                                            ; $59f6: $a0
	db $ec                                           ; $59f7: $ec

jr_091_59f8:
	ld sp, $e8a8                                     ; $59f8: $31 $a8 $e8
	rst $38                                          ; $59fb: $ff
	and b                                            ; $59fc: $a0
	cpl                                              ; $59fd: $2f
	ld b, e                                          ; $59fe: $43
	jp hl                                            ; $59ff: $e9


	ld l, a                                          ; $5a00: $6f
	and b                                            ; $5a01: $a0
	cpl                                              ; $5a02: $2f

jr_091_5a03:
	ld b, e                                          ; $5a03: $43
	db $ec                                           ; $5a04: $ec
	jr z, jr_091_59f8                                ; $5a05: $28 $f1

	or b                                             ; $5a07: $b0
	ldh a, [$3f]                                     ; $5a08: $f0 $3f
	ld b, d                                          ; $5a0a: $42
	inc de                                           ; $5a0b: $13

jr_091_5a0c:
	ldh a, [$c1]                                     ; $5a0c: $f0 $c1
	ldh a, [$d5]                                     ; $5a0e: $f0 $d5
	inc a                                            ; $5a10: $3c
	and b                                            ; $5a11: $a0
	cpl                                              ; $5a12: $2f
	ld b, e                                          ; $5a13: $43
	ld e, l                                          ; $5a14: $5d
	dec sp                                           ; $5a15: $3b
	ld d, h                                          ; $5a16: $54
	add hl, sp                                       ; $5a17: $39
	xor h                                            ; $5a18: $ac
	jr c, @+$3a                                      ; $5a19: $38 $38

	ldh a, [$3f]                                     ; $5a1b: $f0 $3f
	ld b, h                                          ; $5a1d: $44
	dec sp                                           ; $5a1e: $3b
	dec a                                            ; $5a1f: $3d
	ld a, [hl-]                                      ; $5a20: $3a
	and b                                            ; $5a21: $a0
	cpl                                              ; $5a22: $2f
	ld b, e                                          ; $5a23: $43
	ld h, h                                          ; $5a24: $64
	dec sp                                           ; $5a25: $3b
	inc [hl]                                         ; $5a26: $34
	db $ec                                           ; $5a27: $ec
	db $10                                           ; $5a28: $10
	xor h                                            ; $5a29: $ac
	xor $2b                                          ; $5a2a: $ee $2b
	ld d, e                                          ; $5a2c: $53
	ldh a, [$bb]                                     ; $5a2d: $f0 $bb
	ld d, d                                          ; $5a2f: $52
	ld c, [hl]                                       ; $5a30: $4e
	sub a                                            ; $5a31: $97
	and b                                            ; $5a32: $a0
	cpl                                              ; $5a33: $2f
	ld b, e                                          ; $5a34: $43
	jr c, jr_091_5a6f                                ; $5a35: $38 $38

	ldh a, [$ed]                                     ; $5a37: $f0 $ed
	ld b, h                                          ; $5a39: $44
	dec sp                                           ; $5a3a: $3b
	dec a                                            ; $5a3b: $3d
	ld a, [hl-]                                      ; $5a3c: $3a
	and b                                            ; $5a3d: $a0
	add hl, bc                                       ; $5a3e: $09
	jp hl                                            ; $5a3f: $e9


	sbc $a0                                          ; $5a40: $de $a0
	cpl                                              ; $5a42: $2f
	ld b, e                                          ; $5a43: $43
	db $ec                                           ; $5a44: $ec
	cp c                                             ; $5a45: $b9
	xor b                                            ; $5a46: $a8
	add sp, -$6d                                     ; $5a47: $e8 $93
	and b                                            ; $5a49: $a0
	ld d, h                                          ; $5a4a: $54
	ld d, h                                          ; $5a4b: $54
	ld b, a                                          ; $5a4c: $47
	db $eb                                           ; $5a4d: $eb
	ld l, e                                          ; $5a4e: $6b
	sbc e                                            ; $5a4f: $9b
	xor h                                            ; $5a50: $ac
	db $eb                                           ; $5a51: $eb
	jr jr_091_5a67                                   ; $5a52: $18 $13

	push af                                          ; $5a54: $f5
	ld [hl], $3b                                     ; $5a55: $36 $3b
	dec a                                            ; $5a57: $3d
	ld b, d                                          ; $5a58: $42
	ld b, l                                          ; $5a59: $45
	ld c, h                                          ; $5a5a: $4c
	and b                                            ; $5a5b: $a0
	cpl                                              ; $5a5c: $2f
	ld b, e                                          ; $5a5d: $43
	ld b, b                                          ; $5a5e: $40
	add hl, sp                                       ; $5a5f: $39
	ld b, h                                          ; $5a60: $44
	ld b, l                                          ; $5a61: $45
	and b                                            ; $5a62: $a0
	ld l, a                                          ; $5a63: $6f
	inc [hl]                                         ; $5a64: $34
	ld b, [hl]                                       ; $5a65: $46
	ld a, [hl-]                                      ; $5a66: $3a

jr_091_5a67:
	dec a                                            ; $5a67: $3d
	ld b, d                                          ; $5a68: $42
	push af                                          ; $5a69: $f5
	ld [hl], $3b                                     ; $5a6a: $36 $3b
	dec a                                            ; $5a6c: $3d
	sbc e                                            ; $5a6d: $9b
	ld h, d                                          ; $5a6e: $62

jr_091_5a6f:
	inc de                                           ; $5a6f: $13
	ldh a, [$fa]                                     ; $5a70: $f0 $fa
	ld b, c                                          ; $5a72: $41
	ld c, d                                          ; $5a73: $4a
	ld l, h                                          ; $5a74: $6c
	dec a                                            ; $5a75: $3d
	jr c, jr_091_5ab2                                ; $5a76: $38 $3a

	ld c, b                                          ; $5a78: $48
	and b                                            ; $5a79: $a0
	cpl                                              ; $5a7a: $2f
	ld b, e                                          ; $5a7b: $43
	add sp, -$2d                                     ; $5a7c: $e8 $d3
	inc de                                           ; $5a7e: $13
	jp hl                                            ; $5a7f: $e9


	dec a                                            ; $5a80: $3d
	xor b                                            ; $5a81: $a8
	add sp, -$5a                                     ; $5a82: $e8 $a6
	and b                                            ; $5a84: $a0
	db $ec                                           ; $5a85: $ec
	ld h, b                                          ; $5a86: $60
	ld b, [hl]                                       ; $5a87: $46
	ld d, a                                          ; $5a88: $57
	ld d, e                                          ; $5a89: $53
	ld c, c                                          ; $5a8a: $49
	add hl, sp                                       ; $5a8b: $39
	xor l                                            ; $5a8c: $ad
	ld b, [hl]                                       ; $5a8d: $46
	dec sp                                           ; $5a8e: $3b
	xor h                                            ; $5a8f: $ac
	jp hl                                            ; $5a90: $e9


	inc a                                            ; $5a91: $3c
	ld c, b                                          ; $5a92: $48
	and b                                            ; $5a93: $a0
	cpl                                              ; $5a94: $2f
	ld b, e                                          ; $5a95: $43
	ld e, [hl]                                       ; $5a96: $5e
	add l                                            ; $5a97: $85
	xor b                                            ; $5a98: $a8
	jp hl                                            ; $5a99: $e9


	or e                                             ; $5a9a: $b3
	and c                                            ; $5a9b: $a1
	jp hl                                            ; $5a9c: $e9


	ld [hl], a                                       ; $5a9d: $77
	xor h                                            ; $5a9e: $ac
	db $ed                                           ; $5a9f: $ed
	ld h, d                                          ; $5aa0: $62
	ld c, c                                          ; $5aa1: $49
	inc [hl]                                         ; $5aa2: $34
	ld [$a8cf], a                                    ; $5aa3: $ea $cf $a8
	db $eb                                           ; $5aa6: $eb
	ccf                                              ; $5aa7: $3f
	and b                                            ; $5aa8: $a0
	db $eb                                           ; $5aa9: $eb
	rlca                                             ; $5aaa: $07
	and b                                            ; $5aab: $a0
	ld c, h                                          ; $5aac: $4c
	add l                                            ; $5aad: $85
	xor h                                            ; $5aae: $ac
	ld e, d                                          ; $5aaf: $5a
	ld b, c                                          ; $5ab0: $41
	ld a, [hl-]                                      ; $5ab1: $3a

jr_091_5ab2:
	sbc e                                            ; $5ab2: $9b
	ld h, d                                          ; $5ab3: $62
	push af                                          ; $5ab4: $f5
	ld [hl], $3b                                     ; $5ab5: $36 $3b
	dec a                                            ; $5ab7: $3d
	ld b, d                                          ; $5ab8: $42
	and c                                            ; $5ab9: $a1
	db $ec                                           ; $5aba: $ec
	ld h, b                                          ; $5abb: $60
	ld b, [hl]                                       ; $5abc: $46
	ld d, a                                          ; $5abd: $57
	ld d, e                                          ; $5abe: $53
	dec a                                            ; $5abf: $3d
	ld d, l                                          ; $5ac0: $55
	xor h                                            ; $5ac1: $ac
	ldh a, [$fa]                                     ; $5ac2: $f0 $fa
	ld d, d                                          ; $5ac4: $52
	ld a, c                                          ; $5ac5: $79
	ccf                                              ; $5ac6: $3f
	ld c, a                                          ; $5ac7: $4f
	ld d, b                                          ; $5ac8: $50
	add hl, sp                                       ; $5ac9: $39
	ld h, e                                          ; $5aca: $63
	xor b                                            ; $5acb: $a8
	ld b, [hl]                                       ; $5acc: $46
	dec sp                                           ; $5acd: $3b
	inc [hl]                                         ; $5ace: $34
	ld c, a                                          ; $5acf: $4f
	add hl, sp                                       ; $5ad0: $39
	ld h, a                                          ; $5ad1: $67
	inc a                                            ; $5ad2: $3c
	ld a, [hl-]                                      ; $5ad3: $3a
	jr c, jr_091_5b1f                                ; $5ad4: $38 $49

	ld c, b                                          ; $5ad6: $48
	and b                                            ; $5ad7: $a0
	pop af                                           ; $5ad8: $f1
	ld l, a                                          ; $5ad9: $6f
	ld b, d                                          ; $5ada: $42
	adc a                                            ; $5adb: $8f
	ld b, d                                          ; $5adc: $42
	pop af                                           ; $5add: $f1
	ld b, [hl]                                       ; $5ade: $46
	ld c, c                                          ; $5adf: $49
	xor h                                            ; $5ae0: $ac
	ld [$a8cf], a                                    ; $5ae1: $ea $cf $a8
	ld [hl], b                                       ; $5ae4: $70
	ld [hl], c                                       ; $5ae5: $71
	ld b, c                                          ; $5ae6: $41
	ld c, h                                          ; $5ae7: $4c
	and b                                            ; $5ae8: $a0
	ldh a, [$5a]                                     ; $5ae9: $f0 $5a

Jump_091_5aeb:
	ld e, c                                          ; $5aeb: $59
	dec sp                                           ; $5aec: $3b
	xor h                                            ; $5aed: $ac
	jp hl                                            ; $5aee: $e9


	jp $2fa0                                         ; $5aef: $c3 $a0 $2f


	ld b, e                                          ; $5af2: $43
	jr c, jr_091_5b2d                                ; $5af3: $38 $38

	ld c, c                                          ; $5af5: $49
	ld d, h                                          ; $5af6: $54
	ld e, a                                          ; $5af7: $5f
	ld b, a                                          ; $5af8: $47
	xor b                                            ; $5af9: $a8
	add sp, -$6d                                     ; $5afa: $e8 $93
	and b                                            ; $5afc: $a0
	ldh a, [rSCX]                                    ; $5afd: $f0 $43
	ldh a, [$b8]                                     ; $5aff: $f0 $b8
	adc a                                            ; $5b01: $8f
	dec sp                                           ; $5b02: $3b
	ccf                                              ; $5b03: $3f
	xor h                                            ; $5b04: $ac
	db $eb                                           ; $5b05: $eb
	or [hl]                                          ; $5b06: $b6
	ld c, d                                          ; $5b07: $4a
	ld a, $66                                        ; $5b08: $3e $66
	add hl, sp                                       ; $5b0a: $39
	and c                                            ; $5b0b: $a1
	ld b, [hl]                                       ; $5b0c: $46
	ld a, [hl-]                                      ; $5b0d: $3a
	dec a                                            ; $5b0e: $3d
	ld c, a                                          ; $5b0f: $4f
	inc [hl]                                         ; $5b10: $34
	push af                                          ; $5b11: $f5
	ld [hl], $3b                                     ; $5b12: $36 $3b
	dec a                                            ; $5b14: $3d
	ld b, d                                          ; $5b15: $42
	and c                                            ; $5b16: $a1
	cpl                                              ; $5b17: $2f
	ld b, e                                          ; $5b18: $43
	ld d, d                                          ; $5b19: $52
	ld b, [hl]                                       ; $5b1a: $46
	inc [hl]                                         ; $5b1b: $34
	ei                                               ; $5b1c: $fb
	ld c, h                                          ; $5b1d: $4c
	add b                                            ; $5b1e: $80

jr_091_5b1f:
	inc a                                            ; $5b1f: $3c
	ld c, h                                          ; $5b20: $4c
	and b                                            ; $5b21: $a0
	ldh a, [$5a]                                     ; $5b22: $f0 $5a
	ld e, c                                          ; $5b24: $59
	dec sp                                           ; $5b25: $3b
	xor b                                            ; $5b26: $a8
	ldh a, [rHDMA4]                                  ; $5b27: $f0 $54
	ld a, $72                                        ; $5b29: $3e $72
	ldh a, [hDisp1_WX]                                     ; $5b2b: $f0 $96

jr_091_5b2d:
	db $eb                                           ; $5b2d: $eb
	ld d, [hl]                                       ; $5b2e: $56
	and b                                            ; $5b2f: $a0
	ld b, [hl]                                       ; $5b30: $46
	ld d, a                                          ; $5b31: $57
	ld d, e                                          ; $5b32: $53
	ld c, c                                          ; $5b33: $49
	add hl, sp                                       ; $5b34: $39
	xor b                                            ; $5b35: $a8
	add sp, -$64                                     ; $5b36: $e8 $9c
	and b                                            ; $5b38: $a0
	db $eb                                           ; $5b39: $eb
	ccf                                              ; $5b3a: $3f
	xor b                                            ; $5b3b: $a8
	pop af                                           ; $5b3c: $f1
	ld l, a                                          ; $5b3d: $6f
	ld c, a                                          ; $5b3e: $4f
	ld [hl], d                                       ; $5b3f: $72
	dec a                                            ; $5b40: $3d
	jr c, jr_091_5b7f                                ; $5b41: $38 $3c

	ld d, b                                          ; $5b43: $50
	xor b                                            ; $5b44: $a8
	ld b, b                                          ; $5b45: $40
	ld c, l                                          ; $5b46: $4d
	ld e, e                                          ; $5b47: $5b
	ld d, [hl]                                       ; $5b48: $56
	and b                                            ; $5b49: $a0
	db $ec                                           ; $5b4a: $ec
	ld e, l                                          ; $5b4b: $5d
	db $ec                                           ; $5b4c: $ec
	ld l, $48                                        ; $5b4d: $2e $48
	and b                                            ; $5b4f: $a0
	cpl                                              ; $5b50: $2f
	ld b, e                                          ; $5b51: $43
	ld b, [hl]                                       ; $5b52: $46
	dec sp                                           ; $5b53: $3b
	inc [hl]                                         ; $5b54: $34
	db $ed                                           ; $5b55: $ed
	xor c                                            ; $5b56: $a9
	xor b                                            ; $5b57: $a8
	jp hl                                            ; $5b58: $e9


	pop bc                                           ; $5b59: $c1
	and b                                            ; $5b5a: $a0
	db $ed                                           ; $5b5b: $ed
	ld b, e                                          ; $5b5c: $43
	xor h                                            ; $5b5d: $ac
	ldh a, [rAUD2LEN]                                ; $5b5e: $f0 $16
	ld d, e                                          ; $5b60: $53
	ld a, [hl-]                                      ; $5b61: $3a
	jr c, @+$51                                      ; $5b62: $38 $4f

	ld b, d                                          ; $5b64: $42
	ld c, b                                          ; $5b65: $48
	and b                                            ; $5b66: $a0
	ld b, b                                          ; $5b67: $40
	ld c, l                                          ; $5b68: $4d
	ld a, [hl-]                                      ; $5b69: $3a
	ld d, b                                          ; $5b6a: $50
	xor h                                            ; $5b6b: $ac
	ld e, b                                          ; $5b6c: $58
	dec sp                                           ; $5b6d: $3b
	ld e, h                                          ; $5b6e: $5c
	inc [hl]                                         ; $5b6f: $34
	pop af                                           ; $5b70: $f1
	and c                                            ; $5b71: $a1
	dec sp                                           ; $5b72: $3b
	dec a                                            ; $5b73: $3d
	inc a                                            ; $5b74: $3c
	ld d, b                                          ; $5b75: $50
	ld c, b                                          ; $5b76: $48
	and b                                            ; $5b77: $a0
	cpl                                              ; $5b78: $2f
	ld b, e                                          ; $5b79: $43
	ld b, b                                          ; $5b7a: $40
	add hl, sp                                       ; $5b7b: $39
	ld c, b                                          ; $5b7c: $48
	and b                                            ; $5b7d: $a0
	ld d, h                                          ; $5b7e: $54

jr_091_5b7f:
	ld d, h                                          ; $5b7f: $54
	ld b, a                                          ; $5b80: $47
	db $eb                                           ; $5b81: $eb
	ld l, e                                          ; $5b82: $6b
	ldh a, [$a5]                                     ; $5b83: $f0 $a5
	ldh a, [rSCX]                                    ; $5b85: $f0 $43
	xor h                                            ; $5b87: $ac
	db $eb                                           ; $5b88: $eb
	jr jr_091_5b9e                                   ; $5b89: $18 $13

	push af                                          ; $5b8b: $f5
	ld [hl], $3b                                     ; $5b8c: $36 $3b
	dec a                                            ; $5b8e: $3d
	ld b, d                                          ; $5b8f: $42
	ld b, l                                          ; $5b90: $45
	ld c, h                                          ; $5b91: $4c
	and b                                            ; $5b92: $a0
	ld b, [hl]                                       ; $5b93: $46
	ld a, [hl-]                                      ; $5b94: $3a
	dec a                                            ; $5b95: $3d
	ld b, d                                          ; $5b96: $42
	db $ec                                           ; $5b97: $ec
	ei                                               ; $5b98: $fb
	ldh a, [$a5]                                     ; $5b99: $f0 $a5
	ldh a, [rSCX]                                    ; $5b9b: $f0 $43
	inc de                                           ; $5b9d: $13

jr_091_5b9e:
	ldh a, [$fa]                                     ; $5b9e: $f0 $fa
	ld b, c                                          ; $5ba0: $41
	ld c, d                                          ; $5ba1: $4a
	ld l, h                                          ; $5ba2: $6c
	dec a                                            ; $5ba3: $3d
	jr c, jr_091_5be0                                ; $5ba4: $38 $3a

	ld c, b                                          ; $5ba6: $48
	and b                                            ; $5ba7: $a0
	cpl                                              ; $5ba8: $2f
	ld b, e                                          ; $5ba9: $43
	add sp, -$2d                                     ; $5baa: $e8 $d3
	inc de                                           ; $5bac: $13
	ldh a, [$a5]                                     ; $5bad: $f0 $a5
	dec sp                                           ; $5baf: $3b
	dec a                                            ; $5bb0: $3d
	inc [hl]                                         ; $5bb1: $34
	ldh a, [rSCX]                                    ; $5bb2: $f0 $43
	ldh a, [rAUDTERM]                                ; $5bb4: $f0 $25
	ld a, [hl-]                                      ; $5bb6: $3a
	ld b, c                                          ; $5bb7: $41
	ld b, h                                          ; $5bb8: $44
	xor b                                            ; $5bb9: $a8
	add sp, -$5a                                     ; $5bba: $e8 $a6
	and b                                            ; $5bbc: $a0
	ld c, h                                          ; $5bbd: $4c
	add l                                            ; $5bbe: $85
	xor h                                            ; $5bbf: $ac
	ld e, d                                          ; $5bc0: $5a
	ld b, c                                          ; $5bc1: $41
	ld a, [hl-]                                      ; $5bc2: $3a
	ld b, d                                          ; $5bc3: $42
	ld h, d                                          ; $5bc4: $62
	db $ec                                           ; $5bc5: $ec
	ei                                               ; $5bc6: $fb
	ld b, d                                          ; $5bc7: $42
	and c                                            ; $5bc8: $a1
	ldh a, [rSCX]                                    ; $5bc9: $f0 $43
	ldh a, [$b8]                                     ; $5bcb: $f0 $b8
	adc a                                            ; $5bcd: $8f
	dec sp                                           ; $5bce: $3b
	ccf                                              ; $5bcf: $3f
	xor h                                            ; $5bd0: $ac
	db $eb                                           ; $5bd1: $eb
	and h                                            ; $5bd2: $a4
	ld c, d                                          ; $5bd3: $4a
	ld a, $66                                        ; $5bd4: $3e $66
	add hl, sp                                       ; $5bd6: $39
	and c                                            ; $5bd7: $a1
	ld b, [hl]                                       ; $5bd8: $46
	ld a, [hl-]                                      ; $5bd9: $3a
	dec a                                            ; $5bda: $3d
	ld c, a                                          ; $5bdb: $4f
	inc [hl]                                         ; $5bdc: $34
	db $ec                                           ; $5bdd: $ec
	ei                                               ; $5bde: $fb
	ld b, d                                          ; $5bdf: $42

jr_091_5be0:
	and c                                            ; $5be0: $a1
	ld d, $a8                                        ; $5be1: $16 $a8
	db $ec                                           ; $5be3: $ec
	sub [hl]                                         ; $5be4: $96
	ld c, b                                          ; $5be5: $48
	and b                                            ; $5be6: $a0
	cpl                                              ; $5be7: $2f
	ld b, e                                          ; $5be8: $43
	ld b, [hl]                                       ; $5be9: $46
	dec sp                                           ; $5bea: $3b
	inc [hl]                                         ; $5beb: $34
	db $ed                                           ; $5bec: $ed
	xor c                                            ; $5bed: $a9
	ld [hl], d                                       ; $5bee: $72
	ccf                                              ; $5bef: $3f
	dec a                                            ; $5bf0: $3d
	ld b, d                                          ; $5bf1: $42
	xor c                                            ; $5bf2: $a9
	ld c, e                                          ; $5bf3: $4b
	ld c, e                                          ; $5bf4: $4b
	xor l                                            ; $5bf5: $ad
	ld [$a132], a                                    ; $5bf6: $ea $32 $a1
	db $ed                                           ; $5bf9: $ed
	ld e, l                                          ; $5bfa: $5d
	ld b, d                                          ; $5bfb: $42
	db $ed                                           ; $5bfc: $ed
	pop bc                                           ; $5bfd: $c1
	ld h, d                                          ; $5bfe: $62
	inc de                                           ; $5bff: $13
	ld a, $3b                                        ; $5c00: $3e $3b
	inc a                                            ; $5c02: $3c
	ld d, a                                          ; $5c03: $57
	ldh a, [rHDMA1]                                  ; $5c04: $f0 $51
	dec sp                                           ; $5c06: $3b
	ccf                                              ; $5c07: $3f
	ccf                                              ; $5c08: $3f
	xor h                                            ; $5c09: $ac
	ldh a, [$57]                                     ; $5c0a: $f0 $57
	ldh a, [$ae]                                     ; $5c0c: $f0 $ae
	ld b, h                                          ; $5c0e: $44
	dec sp                                           ; $5c0f: $3b
	dec a                                            ; $5c10: $3d
	ld c, b                                          ; $5c11: $48
	and b                                            ; $5c12: $a0
	cpl                                              ; $5c13: $2f
	ld b, e                                          ; $5c14: $43
	rst JumpTable                                          ; $5c15: $c7
	xor c                                            ; $5c16: $a9
	ld b, [hl]                                       ; $5c17: $46
	ld d, a                                          ; $5c18: $57
	ld d, e                                          ; $5c19: $53
	ld c, c                                          ; $5c1a: $49
	add hl, sp                                       ; $5c1b: $39
	and b                                            ; $5c1c: $a0
	ld d, $a8                                        ; $5c1d: $16 $a8
	db $ec                                           ; $5c1f: $ec
	ld e, a                                          ; $5c20: $5f
	inc [hl]                                         ; $5c21: $34
	db $eb                                           ; $5c22: $eb
	and c                                            ; $5c23: $a1
	and b                                            ; $5c24: $a0
	cpl                                              ; $5c25: $2f
	ld b, e                                          ; $5c26: $43
	ld b, [hl]                                       ; $5c27: $46
	dec sp                                           ; $5c28: $3b
	inc [hl]                                         ; $5c29: $34
	db $ed                                           ; $5c2a: $ed
	xor c                                            ; $5c2b: $a9
	xor b                                            ; $5c2c: $a8
	ld c, e                                          ; $5c2d: $4b
	ld c, e                                          ; $5c2e: $4b
	xor l                                            ; $5c2f: $ad
	ld [$a132], a                                    ; $5c30: $ea $32 $a1
	db $f4                                           ; $5c33: $f4
	ld a, $f0                                        ; $5c34: $3e $f0
	rst GetHLinHL                                          ; $5c36: $cf
	ld c, c                                          ; $5c37: $49
	ld a, $3f                                        ; $5c38: $3e $3f
	ccf                                              ; $5c3a: $3f
	xor h                                            ; $5c3b: $ac
	inc a                                            ; $5c3c: $3c
	dec sp                                           ; $5c3d: $3b
	ld d, h                                          ; $5c3e: $54
	ld [$a0e6], a                                    ; $5c3f: $ea $e6 $a0
	cpl                                              ; $5c42: $2f
	ld b, e                                          ; $5c43: $43
	rst JumpTable                                          ; $5c44: $c7
	xor c                                            ; $5c45: $a9
	ld l, e                                          ; $5c46: $6b
	inc a                                            ; $5c47: $3c
	inc [hl]                                         ; $5c48: $34
	db $ed                                           ; $5c49: $ed
	ld l, d                                          ; $5c4a: $6a
	ld b, a                                          ; $5c4b: $47
	inc de                                           ; $5c4c: $13
	ldh a, [$67]                                     ; $5c4d: $f0 $67
	ldh a, [$9f]                                     ; $5c4f: $f0 $9f
	ldh a, [rHDMA1]                                  ; $5c51: $f0 $51
	dec sp                                           ; $5c53: $3b
	ld h, c                                          ; $5c54: $61
	ld d, [hl]                                       ; $5c55: $56
	dec sp                                           ; $5c56: $3b
	dec a                                            ; $5c57: $3d
	ld b, l                                          ; $5c58: $45
	and b                                            ; $5c59: $a0
	ld d, $a8                                        ; $5c5a: $16 $a8
	ld l, d                                          ; $5c5c: $6a
	ld b, d                                          ; $5c5d: $42
	inc [hl]                                         ; $5c5e: $34
	add e                                            ; $5c5f: $83
	ldh a, [$60]                                     ; $5c60: $f0 $60
	ld e, c                                          ; $5c62: $59
	ldh a, [$7e]                                     ; $5c63: $f0 $7e
	db $eb                                           ; $5c65: $eb
	and c                                            ; $5c66: $a1
	and b                                            ; $5c67: $a0
	db $ed                                           ; $5c68: $ed
	ld e, l                                          ; $5c69: $5d
	ld b, d                                          ; $5c6a: $42
	db $ed                                           ; $5c6b: $ed
	pop bc                                           ; $5c6c: $c1
	ld h, d                                          ; $5c6d: $62
	inc de                                           ; $5c6e: $13
	ld a, $3b                                        ; $5c6f: $3e $3b
	inc a                                            ; $5c71: $3c
	ld d, a                                          ; $5c72: $57
	ldh a, [rHDMA1]                                  ; $5c73: $f0 $51
	dec sp                                           ; $5c75: $3b
	ccf                                              ; $5c76: $3f
	ccf                                              ; $5c77: $3f
	xor h                                            ; $5c78: $ac
	ldh a, [rHDMA4]                                  ; $5c79: $f0 $54
	ld a, $34                                        ; $5c7b: $3e $34
	ld [hl], d                                       ; $5c7d: $72
	ldh a, [hDisp1_WX]                                     ; $5c7e: $f0 $96
	db $eb                                           ; $5c80: $eb
	ld d, [hl]                                       ; $5c81: $56
	and b                                            ; $5c82: $a0
	xor $10                                          ; $5c83: $ee $10
	and b                                            ; $5c85: $a0
	cpl                                              ; $5c86: $2f
	ld b, e                                          ; $5c87: $43
	ld b, [hl]                                       ; $5c88: $46
	dec sp                                           ; $5c89: $3b
	inc [hl]                                         ; $5c8a: $34
	db $ed                                           ; $5c8b: $ed
	xor c                                            ; $5c8c: $a9
	xor b                                            ; $5c8d: $a8
	ld [$a01f], a                                    ; $5c8e: $ea $1f $a0
	db $ed                                           ; $5c91: $ed
	ld h, d                                          ; $5c92: $62
	ld d, e                                          ; $5c93: $53
	inc de                                           ; $5c94: $13
	ldh a, [rSCX]                                    ; $5c95: $f0 $43
	ldh a, [$b8]                                     ; $5c97: $f0 $b8
	adc a                                            ; $5c99: $8f
	ld b, a                                          ; $5c9a: $47
	jr c, jr_091_5ceb                                ; $5c9b: $38 $4e

	ld b, d                                          ; $5c9d: $42
	ld b, l                                          ; $5c9e: $45
	xor b                                            ; $5c9f: $a8
	ld b, [hl]                                       ; $5ca0: $46
	dec sp                                           ; $5ca1: $3b
	inc [hl]                                         ; $5ca2: $34
	db $ec                                           ; $5ca3: $ec
	or c                                             ; $5ca4: $b1
	and b                                            ; $5ca5: $a0
	cpl                                              ; $5ca6: $2f
	ld b, e                                          ; $5ca7: $43
	xor $10                                          ; $5ca8: $ee $10
	and b                                            ; $5caa: $a0
	cpl                                              ; $5cab: $2f
	ld b, e                                          ; $5cac: $43
	ld b, [hl]                                       ; $5cad: $46
	inc [hl]                                         ; $5cae: $34
	db $ed                                           ; $5caf: $ed
	xor c                                            ; $5cb0: $a9
	xor b                                            ; $5cb1: $a8
	ld b, l                                          ; $5cb2: $45
	ld d, l                                          ; $5cb3: $55
	ld a, b                                          ; $5cb4: $78
	ccf                                              ; $5cb5: $3f
	ld d, l                                          ; $5cb6: $55
	ld c, l                                          ; $5cb7: $4d
	dec a                                            ; $5cb8: $3d
	ld c, h                                          ; $5cb9: $4c
	and b                                            ; $5cba: $a0
	ldh a, [$aa]                                     ; $5cbb: $f0 $aa
	adc c                                            ; $5cbd: $89
	adc a                                            ; $5cbe: $8f
	ld c, e                                          ; $5cbf: $4b
	inc de                                           ; $5cc0: $13
	ld l, e                                          ; $5cc1: $6b
	ld h, d                                          ; $5cc2: $62
	ldh a, [$c1]                                     ; $5cc3: $f0 $c1
	ldh a, [$d5]                                     ; $5cc5: $f0 $d5
	ld a, $3f                                        ; $5cc7: $3e $3f
	ld c, [hl]                                       ; $5cc9: $4e
	ld b, d                                          ; $5cca: $42
	and b                                            ; $5ccb: $a0
	cpl                                              ; $5ccc: $2f
	ld b, e                                          ; $5ccd: $43
	ld b, e                                          ; $5cce: $43
	jp hl                                            ; $5ccf: $e9


	sub b                                            ; $5cd0: $90
	ldh a, [$eb]                                     ; $5cd1: $f0 $eb
	inc de                                           ; $5cd3: $13
	ld b, d                                          ; $5cd4: $42
	ldh a, [$c1]                                     ; $5cd5: $f0 $c1
	ldh a, [$d5]                                     ; $5cd7: $f0 $d5
	ld b, h                                          ; $5cd9: $44
	ld b, l                                          ; $5cda: $45
	and b                                            ; $5cdb: $a0
	ld e, d                                          ; $5cdc: $5a
	ld b, c                                          ; $5cdd: $41
	ld a, [hl-]                                      ; $5cde: $3a
	ldh a, [rAUD3LOW]                                ; $5cdf: $f0 $1d
	sbc b                                            ; $5ce1: $98
	ld h, l                                          ; $5ce2: $65
	ld a, [hl-]                                      ; $5ce3: $3a
	ld b, d                                          ; $5ce4: $42
	and c                                            ; $5ce5: $a1
	cpl                                              ; $5ce6: $2f
	ld b, e                                          ; $5ce7: $43
	db $ed                                           ; $5ce8: $ed
	cp c                                             ; $5ce9: $b9
	ld a, [hl-]                                      ; $5cea: $3a

jr_091_5ceb:
	ldh a, [$6d]                                     ; $5ceb: $f0 $6d
	ld e, c                                          ; $5ced: $59
	ldh a, [$27]                                     ; $5cee: $f0 $27
	ld h, d                                          ; $5cf0: $62
	inc de                                           ; $5cf1: $13
	add c                                            ; $5cf2: $81
	ld [hl], l                                       ; $5cf3: $75
	ld a, l                                          ; $5cf4: $7d
	ld a, $3f                                        ; $5cf5: $3e $3f
	inc [hl]                                         ; $5cf7: $34
	ld b, b                                          ; $5cf8: $40
	ld b, d                                          ; $5cf9: $42
	add h                                            ; $5cfa: $84
	ld b, d                                          ; $5cfb: $42
	inc de                                           ; $5cfc: $13
	ld [$6218], a                                    ; $5cfd: $ea $18 $62
	inc de                                           ; $5d00: $13
	pop af                                           ; $5d01: $f1
	rst JumpTable                                          ; $5d02: $c7
	ldh a, [hDisp0_WY]                                     ; $5d03: $f0 $88
	ld d, c                                          ; $5d05: $51
	ld c, [hl]                                       ; $5d06: $4e
	ldh a, [rAUD3LOW]                                ; $5d07: $f0 $1d
	sbc b                                            ; $5d09: $98
	ld h, l                                          ; $5d0a: $65
	ld b, h                                          ; $5d0b: $44
	ld b, l                                          ; $5d0c: $45
	and b                                            ; $5d0d: $a0
	ldh a, [$5a]                                     ; $5d0e: $f0 $5a
	ld e, c                                          ; $5d10: $59
	inc [hl]                                         ; $5d11: $34
	ldh a, [rAUD4ENV]                                ; $5d12: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5d14: $f0 $23
	call c, $2fa0                                    ; $5d16: $dc $a0 $2f
	ld b, e                                          ; $5d19: $43
	ld l, [hl]                                       ; $5d1a: $6e
	dec sp                                           ; $5d1b: $3b
	ccf                                              ; $5d1c: $3f
	ld l, h                                          ; $5d1d: $6c
	ld c, [hl]                                       ; $5d1e: $4e
	and c                                            ; $5d1f: $a1
	ld e, [hl]                                       ; $5d20: $5e
	ld [hl], $63                                     ; $5d21: $36 $63
	inc [hl]                                         ; $5d23: $34
	ld l, a                                          ; $5d24: $6f
	ld c, e                                          ; $5d25: $4b
	ret                                              ; $5d26: $c9


	xor e                                            ; $5d27: $ab
	add a                                            ; $5d28: $87
	db $f4                                           ; $5d29: $f4
	inc hl                                           ; $5d2a: $23
	ld [hl], d                                       ; $5d2b: $72
	ccf                                              ; $5d2c: $3f
	ld c, [hl]                                       ; $5d2d: $4e
	ld a, $34                                        ; $5d2e: $3e $34
	db $eb                                           ; $5d30: $eb
	ld c, a                                          ; $5d31: $4f
	inc a                                            ; $5d32: $3c
	ld d, b                                          ; $5d33: $50
	xor b                                            ; $5d34: $a8
	dec d                                            ; $5d35: $15
	inc [hl]                                         ; $5d36: $34
	ld l, [hl]                                       ; $5d37: $6e
	dec sp                                           ; $5d38: $3b
	ccf                                              ; $5d39: $3f
	ld [hl], d                                       ; $5d3a: $72
	ld a, c                                          ; $5d3b: $79
	ccf                                              ; $5d3c: $3f
	ld b, l                                          ; $5d3d: $45
	and b                                            ; $5d3e: $a0
	cpl                                              ; $5d3f: $2f
	ld b, e                                          ; $5d40: $43
	ld b, l                                          ; $5d41: $45
	ld e, c                                          ; $5d42: $59
	ld a, $34                                        ; $5d43: $3e $34
	ld [hl], d                                       ; $5d45: $72
	ccf                                              ; $5d46: $3f
	ld e, a                                          ; $5d47: $5f
	ld b, l                                          ; $5d48: $45
	and b                                            ; $5d49: $a0
	ld b, [hl]                                       ; $5d4a: $46
	dec sp                                           ; $5d4b: $3b
	xor h                                            ; $5d4c: $ac
	jp hl                                            ; $5d4d: $e9


	inc a                                            ; $5d4e: $3c
	ld c, b                                          ; $5d4f: $48
	and b                                            ; $5d50: $a0
	cpl                                              ; $5d51: $2f
	ld b, e                                          ; $5d52: $43
	ld e, [hl]                                       ; $5d53: $5e
	add l                                            ; $5d54: $85
	xor h                                            ; $5d55: $ac
	jp hl                                            ; $5d56: $e9


	or e                                             ; $5d57: $b3
	and c                                            ; $5d58: $a1
	jp hl                                            ; $5d59: $e9


	ld [hl], a                                       ; $5d5a: $77
	xor h                                            ; $5d5b: $ac
	db $ed                                           ; $5d5c: $ed
	ld h, d                                          ; $5d5d: $62
	ld c, c                                          ; $5d5e: $49
	ld [$a8cf], a                                    ; $5d5f: $ea $cf $a8
	db $eb                                           ; $5d62: $eb
	ccf                                              ; $5d63: $3f
	and b                                            ; $5d64: $a0
	ld l, e                                          ; $5d65: $6b
	ld h, d                                          ; $5d66: $62
	ldh a, [$c1]                                     ; $5d67: $f0 $c1
	ldh a, [$d5]                                     ; $5d69: $f0 $d5
	ld a, $3f                                        ; $5d6b: $3e $3f
	ld c, [hl]                                       ; $5d6d: $4e
	ld b, d                                          ; $5d6e: $42
	and b                                            ; $5d6f: $a0
	ld h, e                                          ; $5d70: $63
	inc [hl]                                         ; $5d71: $34
	ld l, a                                          ; $5d72: $6f
	ld c, e                                          ; $5d73: $4b
	ret                                              ; $5d74: $c9


	xor e                                            ; $5d75: $ab
	add a                                            ; $5d76: $87
	db $f4                                           ; $5d77: $f4
	inc hl                                           ; $5d78: $23
	ld [hl], d                                       ; $5d79: $72
	ccf                                              ; $5d7a: $3f
	ld c, [hl]                                       ; $5d7b: $4e
	ld a, $34                                        ; $5d7c: $3e $34
	db $eb                                           ; $5d7e: $eb
	ld c, a                                          ; $5d7f: $4f
	inc a                                            ; $5d80: $3c
	ld d, b                                          ; $5d81: $50
	xor b                                            ; $5d82: $a8
	dec d                                            ; $5d83: $15
	inc [hl]                                         ; $5d84: $34
	ld l, [hl]                                       ; $5d85: $6e
	dec sp                                           ; $5d86: $3b
	ccf                                              ; $5d87: $3f
	ld [hl], d                                       ; $5d88: $72
	ld a, c                                          ; $5d89: $79
	ccf                                              ; $5d8a: $3f
	ld b, l                                          ; $5d8b: $45
	and b                                            ; $5d8c: $a0
	ld b, [hl]                                       ; $5d8d: $46
	dec sp                                           ; $5d8e: $3b
	xor h                                            ; $5d8f: $ac
	db $ec                                           ; $5d90: $ec
	push bc                                          ; $5d91: $c5
	ld h, a                                          ; $5d92: $67
	ld d, l                                          ; $5d93: $55
	ld c, h                                          ; $5d94: $4c
	and b                                            ; $5d95: $a0
	db $eb                                           ; $5d96: $eb
	ccf                                              ; $5d97: $3f
	xor b                                            ; $5d98: $a8
	pop af                                           ; $5d99: $f1
	ld l, a                                          ; $5d9a: $6f
	ld b, d                                          ; $5d9b: $42
	adc a                                            ; $5d9c: $8f
	ld b, d                                          ; $5d9d: $42
	pop af                                           ; $5d9e: $f1
	ld b, [hl]                                       ; $5d9f: $46
	ld b, a                                          ; $5da0: $47
	xor h                                            ; $5da1: $ac
	ld [hl], d                                       ; $5da2: $72
	adc c                                            ; $5da3: $89
	ld b, a                                          ; $5da4: $47
	ldh a, [$3b]                                     ; $5da5: $f0 $3b
	ld h, e                                          ; $5da7: $63
	ld c, l                                          ; $5da8: $4d
	ccf                                              ; $5da9: $3f
	ld c, [hl]                                       ; $5daa: $4e
	ld b, d                                          ; $5dab: $42
	and b                                            ; $5dac: $a0
	ldh a, [$5a]                                     ; $5dad: $f0 $5a
	ld e, c                                          ; $5daf: $59
	dec sp                                           ; $5db0: $3b
	xor h                                            ; $5db1: $ac
	db $ec                                           ; $5db2: $ec
	ld e, l                                          ; $5db3: $5d
	db $ec                                           ; $5db4: $ec
	ld l, $a0                                        ; $5db5: $2e $a0
	cpl                                              ; $5db7: $2f
	ld b, e                                          ; $5db8: $43
	ld b, [hl]                                       ; $5db9: $46
	inc [hl]                                         ; $5dba: $34
	db $ed                                           ; $5dbb: $ed
	xor c                                            ; $5dbc: $a9
	and b                                            ; $5dbd: $a0
	ldh a, [$5a]                                     ; $5dbe: $f0 $5a
	add l                                            ; $5dc0: $85
	and b                                            ; $5dc1: $a0
	ld h, e                                          ; $5dc2: $63
	inc [hl]                                         ; $5dc3: $34
	ld l, a                                          ; $5dc4: $6f
	ld c, e                                          ; $5dc5: $4b
	xor h                                            ; $5dc6: $ac
	db $eb                                           ; $5dc7: $eb
	ld c, a                                          ; $5dc8: $4f
	inc a                                            ; $5dc9: $3c
	ld d, b                                          ; $5dca: $50
	xor l                                            ; $5dcb: $ad
	ld b, [hl]                                       ; $5dcc: $46
	ld a, [hl-]                                      ; $5dcd: $3a
	dec a                                            ; $5dce: $3d
	ld d, e                                          ; $5dcf: $53
	ld l, [hl]                                       ; $5dd0: $6e
	dec sp                                           ; $5dd1: $3b
	ccf                                              ; $5dd2: $3f
	ld [hl], d                                       ; $5dd3: $72
	ld a, c                                          ; $5dd4: $79
	ccf                                              ; $5dd5: $3f
	ld b, l                                          ; $5dd6: $45
	and b                                            ; $5dd7: $a0
	ld b, [hl]                                       ; $5dd8: $46
	dec sp                                           ; $5dd9: $3b
	xor h                                            ; $5dda: $ac
	add sp, -$64                                     ; $5ddb: $e8 $9c
	and b                                            ; $5ddd: $a0
	cpl                                              ; $5dde: $2f
	ld b, e                                          ; $5ddf: $43
	ld b, [hl]                                       ; $5de0: $46
	dec sp                                           ; $5de1: $3b
	inc [hl]                                         ; $5de2: $34
	db $ed                                           ; $5de3: $ed
	xor c                                            ; $5de4: $a9
	xor b                                            ; $5de5: $a8
	jp hl                                            ; $5de6: $e9


	ld d, b                                          ; $5de7: $50
	ld b, l                                          ; $5de8: $45
	and b                                            ; $5de9: $a0
	cpl                                              ; $5dea: $2f
	ld b, e                                          ; $5deb: $43
	ld d, e                                          ; $5dec: $53
	dec sp                                           ; $5ded: $3b
	ld d, l                                          ; $5dee: $55
	ld d, a                                          ; $5def: $57

jr_091_5df0:
	ld c, b                                          ; $5df0: $48
	and b                                            ; $5df1: $a0
	cpl                                              ; $5df2: $2f
	ld b, e                                          ; $5df3: $43
	ld h, c                                          ; $5df4: $61
	ld h, [hl]                                       ; $5df5: $66
	inc [hl]                                         ; $5df6: $34
	ret                                              ; $5df7: $c9


	xor h                                            ; $5df8: $ac
	pop af                                           ; $5df9: $f1
	ld a, [$15f3]                                    ; $5dfa: $fa $f3 $15
	ldh a, [$0d]                                     ; $5dfd: $f0 $0d
	ld d, e                                          ; $5dff: $53
	ldh a, [rAUD1ENV]                                ; $5e00: $f0 $12
	ld d, c                                          ; $5e02: $51
	ldh a, [$cb]                                     ; $5e03: $f0 $cb
	dec a                                            ; $5e05: $3d
	inc a                                            ; $5e06: $3c
	ld a, [hl-]                                      ; $5e07: $3a
	ld c, b                                          ; $5e08: $48
	and b                                            ; $5e09: $a0
	ld b, b                                          ; $5e0a: $40
	inc [hl]                                         ; $5e0b: $34
	ld b, b                                          ; $5e0c: $40
	ld b, c                                          ; $5e0d: $41
	ld a, [hl-]                                      ; $5e0e: $3a
	ldh a, [$78]                                     ; $5e0f: $f0 $78
	ld e, e                                          ; $5e11: $5b
	ld c, h                                          ; $5e12: $4c
	ld c, b                                          ; $5e13: $48
	and b                                            ; $5e14: $a0
	ld a, [hl-]                                      ; $5e15: $3a
	ld c, [hl]                                       ; $5e16: $4e
	ldh a, [$08]                                     ; $5e17: $f0 $08
	ld e, d                                          ; $5e19: $5a
	ld c, h                                          ; $5e1a: $4c
	and b                                            ; $5e1b: $a0
	cpl                                              ; $5e1c: $2f
	ld b, e                                          ; $5e1d: $43
	ret                                              ; $5e1e: $c9


	xor h                                            ; $5e1f: $ac
	pop af                                           ; $5e20: $f1
	ld a, [$15f3]                                    ; $5e21: $fa $f3 $15
	ldh a, [$0d]                                     ; $5e24: $f0 $0d
	ld d, e                                          ; $5e26: $53
	ldh a, [rAUD1ENV]                                ; $5e27: $f0 $12
	inc a                                            ; $5e29: $3c
	dec sp                                           ; $5e2a: $3b
	dec a                                            ; $5e2b: $3d
	inc a                                            ; $5e2c: $3c
	ld a, [hl-]                                      ; $5e2d: $3a
	xor e                                            ; $5e2e: $ab
	add hl, sp                                       ; $5e2f: $39
	ld e, c                                          ; $5e30: $59
	ld b, c                                          ; $5e31: $41
	and b                                            ; $5e32: $a0
	sub e                                            ; $5e33: $93
	add e                                            ; $5e34: $83
	ld [hl], e                                       ; $5e35: $73
	xor h                                            ; $5e36: $ac
	ld [$5318], a                                    ; $5e37: $ea $18 $53
	inc de                                           ; $5e3a: $13
	ldh a, [rAUD1LOW]                                ; $5e3b: $f0 $13
	jr c, jr_091_5e81                                ; $5e3d: $38 $42

	inc a                                            ; $5e3f: $3c
	ld c, a                                          ; $5e40: $4f
	ld c, h                                          ; $5e41: $4c
	and b                                            ; $5e42: $a0
	ldh a, [$5a]                                     ; $5e43: $f0 $5a
	ld e, c                                          ; $5e45: $59
	inc [hl]                                         ; $5e46: $34
	ldh a, [rAUD4ENV]                                ; $5e47: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5e49: $f0 $23
	jr c, jr_091_5e99                                ; $5e4b: $38 $4c

	and b                                            ; $5e4d: $a0
	cpl                                              ; $5e4e: $2f
	ld b, e                                          ; $5e4f: $43
	ld c, d                                          ; $5e50: $4a
	ld a, $66                                        ; $5e51: $3e $66
	add hl, sp                                       ; $5e53: $39
	xor c                                            ; $5e54: $a9
	ld a, a                                          ; $5e55: $7f
	ldh a, [rTMA]                                    ; $5e56: $f0 $06
	jr c, jr_091_5df0                                ; $5e58: $38 $96

	ld c, l                                          ; $5e5a: $4d
	ccf                                              ; $5e5b: $3f
	inc de                                           ; $5e5c: $13
	ldh a, [$a5]                                     ; $5e5d: $f0 $a5
	dec sp                                           ; $5e5f: $3b
	dec a                                            ; $5e60: $3d
	ld b, c                                          ; $5e61: $41
	ld b, h                                          ; $5e62: $44
	inc a                                            ; $5e63: $3c
	ld d, b                                          ; $5e64: $50
	and b                                            ; $5e65: $a0
	ld d, h                                          ; $5e66: $54
	ld c, l                                          ; $5e67: $4d
	ld c, e                                          ; $5e68: $4b
	xor h                                            ; $5e69: $ac
	add hl, sp                                       ; $5e6a: $39
	ld e, l                                          ; $5e6b: $5d
	ld c, [hl]                                       ; $5e6c: $4e
	ld h, e                                          ; $5e6d: $63
	ld b, l                                          ; $5e6e: $45
	dec [hl]                                         ; $5e6f: $35
	ld e, h                                          ; $5e70: $5c
	dec sp                                           ; $5e71: $3b
	ld c, c                                          ; $5e72: $49
	and b                                            ; $5e73: $a0
	ld c, b                                          ; $5e74: $48
	inc hl                                           ; $5e75: $23
	ld c, h                                          ; $5e76: $4c
	ld e, [hl]                                       ; $5e77: $5e
	and c                                            ; $5e78: $a1
	cpl                                              ; $5e79: $2f
	ld b, e                                          ; $5e7a: $43
	ld l, e                                          ; $5e7b: $6b
	and c                                            ; $5e7c: $a1
	ret                                              ; $5e7d: $c9


	xor h                                            ; $5e7e: $ac
	db $ed                                           ; $5e7f: $ed
	cp c                                             ; $5e80: $b9

jr_091_5e81:
	ld d, c                                          ; $5e81: $51
	ldh a, [$cb]                                     ; $5e82: $f0 $cb
	ld c, [hl]                                       ; $5e84: $4e
	ld b, l                                          ; $5e85: $45
	add hl, sp                                       ; $5e86: $39
	ld b, a                                          ; $5e87: $47
	inc de                                           ; $5e88: $13
	ld [hl], d                                       ; $5e89: $72
	ld e, [hl]                                       ; $5e8a: $5e
	ld c, [hl]                                       ; $5e8b: $4e
	ld b, c                                          ; $5e8c: $41
	ld b, h                                          ; $5e8d: $44
	ld e, l                                          ; $5e8e: $5d
	ld e, d                                          ; $5e8f: $5a
	ld c, b                                          ; $5e90: $48
	and b                                            ; $5e91: $a0
	cpl                                              ; $5e92: $2f
	ld b, e                                          ; $5e93: $43
	jr c, jr_091_5f04                                ; $5e94: $38 $6e

	xor h                                            ; $5e96: $ac
	halt                                             ; $5e97: $76
	ld b, d                                          ; $5e98: $42

jr_091_5e99:
	ldh a, [$99]                                     ; $5e99: $f0 $99
	sub b                                            ; $5e9b: $90
	ldh a, [$7b]                                     ; $5e9c: $f0 $7b
	ld h, l                                          ; $5e9e: $65
	add e                                            ; $5e9f: $83
	ld d, e                                          ; $5ea0: $53
	inc de                                           ; $5ea1: $13
	ldh a, [rAUD1ENV]                                ; $5ea2: $f0 $12
	ld d, c                                          ; $5ea4: $51
	ldh a, [$cb]                                     ; $5ea5: $f0 $cb
	ld c, [hl]                                       ; $5ea7: $4e
	ld b, c                                          ; $5ea8: $41
	ld b, h                                          ; $5ea9: $44
	ld b, l                                          ; $5eaa: $45
	and b                                            ; $5eab: $a0
	rst JumpTable                                          ; $5eac: $c7
	ld a, [hl-]                                      ; $5ead: $3a
	ld b, d                                          ; $5eae: $42
	inc a                                            ; $5eaf: $3c
	ld a, [hl-]                                      ; $5eb0: $3a
	ld c, b                                          ; $5eb1: $48
	and c                                            ; $5eb2: $a1
	cpl                                              ; $5eb3: $2f
	ld b, e                                          ; $5eb4: $43
	jp hl                                            ; $5eb5: $e9


	xor a                                            ; $5eb6: $af
	xor b                                            ; $5eb7: $a8
	add sp, $4f                                      ; $5eb8: $e8 $4f
	xor b                                            ; $5eba: $a8
	jp hl                                            ; $5ebb: $e9


	call nc, $eea0                                   ; $5ebc: $d4 $a0 $ee
	rra                                              ; $5ebf: $1f
	xor b                                            ; $5ec0: $a8
	ld b, b                                          ; $5ec1: $40
	ld b, d                                          ; $5ec2: $42
	add b                                            ; $5ec3: $80
	ld c, a                                          ; $5ec4: $4f
	ld d, a                                          ; $5ec5: $57
	ld c, d                                          ; $5ec6: $4a
	xor h                                            ; $5ec7: $ac
	ld a, b                                          ; $5ec8: $78
	dec a                                            ; $5ec9: $3d
	inc a                                            ; $5eca: $3c
	ld d, b                                          ; $5ecb: $50
	ld c, b                                          ; $5ecc: $48
	and b                                            ; $5ecd: $a0
	ld d, c                                          ; $5ece: $51
	ld [hl], b                                       ; $5ecf: $70
	ld d, l                                          ; $5ed0: $55
	db $ed                                           ; $5ed1: $ed
	ld c, c                                          ; $5ed2: $49
	xor l                                            ; $5ed3: $ad
	ld [hl], a                                       ; $5ed4: $77
	ld h, e                                          ; $5ed5: $63
	sbc h                                            ; $5ed6: $9c
	add hl, sp                                       ; $5ed7: $39
	dec sp                                           ; $5ed8: $3b
	ld c, c                                          ; $5ed9: $49
	ld d, a                                          ; $5eda: $57
	inc de                                           ; $5edb: $13
	db $eb                                           ; $5edc: $eb
	ld d, [hl]                                       ; $5edd: $56
	and b                                            ; $5ede: $a0
	cpl                                              ; $5edf: $2f
	ld b, e                                          ; $5ee0: $43
	adc b                                            ; $5ee1: $88

jr_091_5ee2:
	sub c                                            ; $5ee2: $91
	xor c                                            ; $5ee3: $a9
	add sp, -$7c                                     ; $5ee4: $e8 $84
	and b                                            ; $5ee6: $a0
	xor $1f                                          ; $5ee7: $ee $1f
	inc [hl]                                         ; $5ee9: $34
	ld b, b                                          ; $5eea: $40
	add hl, sp                                       ; $5eeb: $39
	ld d, c                                          ; $5eec: $51
	ld c, [hl]                                       ; $5eed: $4e
	ld h, e                                          ; $5eee: $63
	and b                                            ; $5eef: $a0
	jp hl                                            ; $5ef0: $e9


	db $db                                           ; $5ef1: $db
	xor b                                            ; $5ef2: $a8
	ld d, c                                          ; $5ef3: $51
	ld [hl], b                                       ; $5ef4: $70
	ld d, l                                          ; $5ef5: $55
	db $ed                                           ; $5ef6: $ed
	ld c, c                                          ; $5ef7: $49
	ld b, h                                          ; $5ef8: $44
	dec sp                                           ; $5ef9: $3b
	dec a                                            ; $5efa: $3d
	ld h, e                                          ; $5efb: $63
	and b                                            ; $5efc: $a0
	cpl                                              ; $5efd: $2f
	ld b, e                                          ; $5efe: $43
	ld b, [hl]                                       ; $5eff: $46
	ld d, a                                          ; $5f00: $57
	ld d, e                                          ; $5f01: $53
	ld c, c                                          ; $5f02: $49
	add hl, sp                                       ; $5f03: $39

jr_091_5f04:
	xor b                                            ; $5f04: $a8
	add sp, -$7c                                     ; $5f05: $e8 $84
	and b                                            ; $5f07: $a0
	ld b, b                                          ; $5f08: $40
	add hl, sp                                       ; $5f09: $39
	ld b, b                                          ; $5f0a: $40
	add hl, sp                                       ; $5f0b: $39
	xor h                                            ; $5f0c: $ac
	db $ec                                           ; $5f0d: $ec
	ld e, l                                          ; $5f0e: $5d
	jr c, jr_091_5f4e                                ; $5f0f: $38 $3d

	ld b, d                                          ; $5f11: $42
	ld b, l                                          ; $5f12: $45
	ld c, h                                          ; $5f13: $4c
	and b                                            ; $5f14: $a0
	xor $1f                                          ; $5f15: $ee $1f
	inc [hl]                                         ; $5f17: $34
	ld b, b                                          ; $5f18: $40
	add hl, sp                                       ; $5f19: $39
	ld d, c                                          ; $5f1a: $51
	ld c, [hl]                                       ; $5f1b: $4e
	and b                                            ; $5f1c: $a0
	ld [$4554], a                                    ; $5f1d: $ea $54 $45
	ld c, h                                          ; $5f20: $4c
	xor b                                            ; $5f21: $a8
	ldh a, [$57]                                     ; $5f22: $f0 $57
	ldh a, [$ae]                                     ; $5f24: $f0 $ae
	ld b, h                                          ; $5f26: $44
	dec sp                                           ; $5f27: $3b
	dec a                                            ; $5f28: $3d
	ld h, e                                          ; $5f29: $63
	and b                                            ; $5f2a: $a0
	call c, $a048                                    ; $5f2b: $dc $48 $a0
	cpl                                              ; $5f2e: $2f
	ld b, e                                          ; $5f2f: $43
	ld b, [hl]                                       ; $5f30: $46
	ld c, l                                          ; $5f31: $4d
	inc [hl]                                         ; $5f32: $34
	db $ed                                           ; $5f33: $ed
	xor c                                            ; $5f34: $a9
	ld d, e                                          ; $5f35: $53
	jr c, jr_091_5f72                                ; $5f36: $38 $3a

	jr c, jr_091_5ee2                                ; $5f38: $38 $a8

	ld [$1343], a                                    ; $5f3a: $ea $43 $13
	jp hl                                            ; $5f3d: $e9


	cp l                                             ; $5f3e: $bd
	ld c, b                                          ; $5f3f: $48
	and b                                            ; $5f40: $a0
	ld b, [hl]                                       ; $5f41: $46
	ld b, c                                          ; $5f42: $41
	ld a, [hl-]                                      ; $5f43: $3a
	ld d, h                                          ; $5f44: $54
	ld c, c                                          ; $5f45: $49
	ld a, $3f                                        ; $5f46: $3e $3f
	xor h                                            ; $5f48: $ac
	add a                                            ; $5f49: $87
	ldh a, [$5b]                                     ; $5f4a: $f0 $5b
	ldh a, [$5e]                                     ; $5f4c: $f0 $5e

jr_091_5f4e:
	ld a, [hl-]                                      ; $5f4e: $3a
	ld b, d                                          ; $5f4f: $42
	and c                                            ; $5f50: $a1
	cpl                                              ; $5f51: $2f
	ld b, e                                          ; $5f52: $43
	add a                                            ; $5f53: $87
	ldh a, [$5b]                                     ; $5f54: $f0 $5b
	ldh a, [$5e]                                     ; $5f56: $f0 $5e
	db $ec                                           ; $5f58: $ec
	ret c                                            ; $5f59: $d8

	inc a                                            ; $5f5a: $3c
	ld a, [hl-]                                      ; $5f5b: $3a
	xor b                                            ; $5f5c: $a8
	pop af                                           ; $5f5d: $f1
	sub d                                            ; $5f5e: $92
	ldh a, [rTAC]                                    ; $5f5f: $f0 $07
	ld c, b                                          ; $5f61: $48
	and b                                            ; $5f62: $a0
	ld b, b                                          ; $5f63: $40
	ld c, l                                          ; $5f64: $4d
	ld a, [hl-]                                      ; $5f65: $3a
	ld d, b                                          ; $5f66: $50
	jr c, jr_091_5fa1                                ; $5f67: $38 $38

	ld b, c                                          ; $5f69: $41
	ld b, h                                          ; $5f6a: $44
	ld e, l                                          ; $5f6b: $5d
	ld e, d                                          ; $5f6c: $5a
	xor l                                            ; $5f6d: $ad
	ld b, [hl]                                       ; $5f6e: $46
	dec sp                                           ; $5f6f: $3b
	inc [hl]                                         ; $5f70: $34
	jp hl                                            ; $5f71: $e9


jr_091_5f72:
	inc a                                            ; $5f72: $3c
	ld c, b                                          ; $5f73: $48
	and b                                            ; $5f74: $a0
	ld b, b                                          ; $5f75: $40
	ld c, l                                          ; $5f76: $4d
	ld a, [hl-]                                      ; $5f77: $3a
	ld d, b                                          ; $5f78: $50
	jr c, @+$3a                                      ; $5f79: $38 $38

	ld b, c                                          ; $5f7b: $41
	ld b, h                                          ; $5f7c: $44
	ld e, l                                          ; $5f7d: $5d
	ld e, d                                          ; $5f7e: $5a
	xor l                                            ; $5f7f: $ad
	ld b, [hl]                                       ; $5f80: $46
	dec sp                                           ; $5f81: $3b
	xor h                                            ; $5f82: $ac
	db $ec                                           ; $5f83: $ec
	push bc                                          ; $5f84: $c5
	ld h, a                                          ; $5f85: $67
	ld d, l                                          ; $5f86: $55
	ld c, h                                          ; $5f87: $4c
	and b                                            ; $5f88: $a0
	adc b                                            ; $5f89: $88
	sub c                                            ; $5f8a: $91
	inc a                                            ; $5f8b: $3c
	ld a, $50                                        ; $5f8c: $3e $50
	xor l                                            ; $5f8e: $ad
	ld b, [hl]                                       ; $5f8f: $46
	dec sp                                           ; $5f90: $3b
	xor h                                            ; $5f91: $ac
	add sp, -$64                                     ; $5f92: $e8 $9c
	and b                                            ; $5f94: $a0
	cpl                                              ; $5f95: $2f
	ld b, e                                          ; $5f96: $43
	db $ec                                           ; $5f97: $ec
	cp c                                             ; $5f98: $b9
	ld d, b                                          ; $5f99: $50
	xor h                                            ; $5f9a: $ac
	ldh a, [rPCM12]                                  ; $5f9b: $f0 $76
	ldh a, [$d2]                                     ; $5f9d: $f0 $d2
	ldh a, [$3f]                                     ; $5f9f: $f0 $3f

jr_091_5fa1:
	ld e, d                                          ; $5fa1: $5a
	add hl, sp                                       ; $5fa2: $39
	and c                                            ; $5fa3: $a1
	xor $1f                                          ; $5fa4: $ee $1f
	inc [hl]                                         ; $5fa6: $34
	ldh a, [$bd]                                     ; $5fa7: $f0 $bd
	jr c, jr_091_5fea                                ; $5fa9: $38 $3f

	ld d, l                                          ; $5fab: $55
	ld c, l                                          ; $5fac: $4d
	ld c, [hl]                                       ; $5fad: $4e
	and c                                            ; $5fae: $a1
	cpl                                              ; $5faf: $2f
	ld b, e                                          ; $5fb0: $43
	ld [$a84a], a                                    ; $5fb1: $ea $4a $a8
	ld e, d                                          ; $5fb4: $5a
	add hl, sp                                       ; $5fb5: $39
	and c                                            ; $5fb6: $a1
	ld d, c                                          ; $5fb7: $51
	ld [hl], b                                       ; $5fb8: $70
	ld e, c                                          ; $5fb9: $59
	jr c, jr_091_5ff0                                ; $5fba: $38 $34

	ld b, b                                          ; $5fbc: $40
	dec sp                                           ; $5fbd: $3b
	ld d, l                                          ; $5fbe: $55
	ld d, a                                          ; $5fbf: $57
	and b                                            ; $5fc0: $a0
	cpl                                              ; $5fc1: $2f
	ld b, e                                          ; $5fc2: $43
	ld b, [hl]                                       ; $5fc3: $46
	ld d, a                                          ; $5fc4: $57
	ld d, e                                          ; $5fc5: $53
	ld c, c                                          ; $5fc6: $49
	add hl, sp                                       ; $5fc7: $39
	xor b                                            ; $5fc8: $a8
	ldh a, [$29]                                     ; $5fc9: $f0 $29
	ld a, $38                                        ; $5fcb: $3e $38
	ld b, l                                          ; $5fcd: $45
	and b                                            ; $5fce: $a0
	xor $1f                                          ; $5fcf: $ee $1f
	ld c, b                                          ; $5fd1: $48
	inc [hl]                                         ; $5fd2: $34
	ldh a, [rPCM12]                                  ; $5fd3: $f0 $76
	ccf                                              ; $5fd5: $3f
	ld c, [hl]                                       ; $5fd6: $4e
	and b                                            ; $5fd7: $a0
	cpl                                              ; $5fd8: $2f
	ld b, e                                          ; $5fd9: $43
	ld b, [hl]                                       ; $5fda: $46
	ld d, a                                          ; $5fdb: $57
	ld d, e                                          ; $5fdc: $53
	ld c, c                                          ; $5fdd: $49
	add hl, sp                                       ; $5fde: $39
	xor b                                            ; $5fdf: $a8
	ld [hl-], a                                      ; $5fe0: $32
	jp nc, $ea13                                     ; $5fe1: $d2 $13 $ea

	inc bc                                           ; $5fe4: $03
	and e                                            ; $5fe5: $a3
	call c, $8aac                                    ; $5fe6: $dc $ac $8a
	add h                                            ; $5fe9: $84

jr_091_5fea:
	ld b, a                                          ; $5fea: $47
	ldh a, [$bd]                                     ; $5feb: $f0 $bd
	jr c, jr_091_602e                                ; $5fed: $38 $3f

	ld b, l                                          ; $5fef: $45

jr_091_5ff0:
	and b                                            ; $5ff0: $a0
	ld d, c                                          ; $5ff1: $51
	ld [hl], b                                       ; $5ff2: $70
	ld e, c                                          ; $5ff3: $59
	jr c, jr_091_602a                                ; $5ff4: $38 $34

	ld b, b                                          ; $5ff6: $40
	dec sp                                           ; $5ff7: $3b
	ld d, l                                          ; $5ff8: $55
	ld d, a                                          ; $5ff9: $57
	xor b                                            ; $5ffa: $a8
	db $ec                                           ; $5ffb: $ec
	ld de, $56eb                                     ; $5ffc: $11 $eb $56
	and b                                            ; $5fff: $a0
	ldh a, [$5a]                                     ; $6000: $f0 $5a
	ld e, c                                          ; $6002: $59
	dec sp                                           ; $6003: $3b
	inc [hl]                                         ; $6004: $34
	ldh a, [$3e]                                     ; $6005: $f0 $3e
	ldh a, [$0b]                                     ; $6007: $f0 $0b
	ld c, h                                          ; $6009: $4c
	and b                                            ; $600a: $a0

jr_091_600b:
	call c, $f0ac                                    ; $600b: $dc $ac $f0
	cp l                                             ; $600e: $bd
	jr c, jr_091_6050                                ; $600f: $38 $3f

	ld c, a                                          ; $6011: $4f
	ld d, b                                          ; $6012: $50
	ld h, h                                          ; $6013: $64
	add hl, sp                                       ; $6014: $39
	inc a                                            ; $6015: $3c
	ld a, [hl-]                                      ; $6016: $3a
	and b                                            ; $6017: $a0
	ldh a, [rPCM12]                                  ; $6018: $f0 $76
	ccf                                              ; $601a: $3f
	ld c, [hl]                                       ; $601b: $4e
	ld h, e                                          ; $601c: $63
	inc [hl]                                         ; $601d: $34
	ldh a, [$3e]                                     ; $601e: $f0 $3e
	ldh a, [$0b]                                     ; $6020: $f0 $0b
	ld c, h                                          ; $6022: $4c
	add l                                            ; $6023: $85
	and b                                            ; $6024: $a0
	ld d, h                                          ; $6025: $54
	ld c, l                                          ; $6026: $4d
	xor h                                            ; $6027: $ac
	ldh a, [rPCM12]                                  ; $6028: $f0 $76

jr_091_602a:
	ccf                                              ; $602a: $3f
	ld a, [hl-]                                      ; $602b: $3a
	jr c, jr_091_6077                                ; $602c: $38 $49

jr_091_602e:
	ld [hl], a                                       ; $602e: $77
	add hl, sp                                       ; $602f: $39
	ld e, l                                          ; $6030: $5d
	ld e, d                                          ; $6031: $5a
	ld c, b                                          ; $6032: $48
	and b                                            ; $6033: $a0
	cpl                                              ; $6034: $2f
	ld b, e                                          ; $6035: $43
	ld b, b                                          ; $6036: $40
	add hl, sp                                       ; $6037: $39
	xor c                                            ; $6038: $a9
	ld [hl], b                                       ; $6039: $70
	ld [hl], c                                       ; $603a: $71
	ld b, c                                          ; $603b: $41
	ld c, h                                          ; $603c: $4c
	and b                                            ; $603d: $a0
	ldh a, [$34]                                     ; $603e: $f0 $34
	ld b, a                                          ; $6040: $47

jr_091_6041:
	inc [hl]                                         ; $6041: $34
	jr c, jr_091_6094                                ; $6042: $38 $50

	ld a, [hl-]                                      ; $6044: $3a
	jr c, jr_091_60aa                                ; $6045: $38 $63

	and b                                            ; $6047: $a0
	cpl                                              ; $6048: $2f
	ld b, e                                          ; $6049: $43
	ld b, b                                          ; $604a: $40
	ld b, c                                          ; $604b: $41
	ld a, [hl-]                                      ; $604c: $3a
	sbc d                                            ; $604d: $9a
	jr c, jr_091_60b3                                ; $604e: $38 $63

jr_091_6050:
	sbc h                                            ; $6050: $9c
	ld b, a                                          ; $6051: $47
	ld e, b                                          ; $6052: $58
	ld c, b                                          ; $6053: $48
	and b                                            ; $6054: $a0
	jr c, jr_091_60a7                                ; $6055: $38 $50

	ld a, [hl-]                                      ; $6057: $3a
	jr c, @+$44                                      ; $6058: $38 $42

	and b                                            ; $605a: $a0
	cpl                                              ; $605b: $2f
	ld b, e                                          ; $605c: $43
	ld b, [hl]                                       ; $605d: $46
	dec sp                                           ; $605e: $3b
	inc [hl]                                         ; $605f: $34
	db $ed                                           ; $6060: $ed
	xor c                                            ; $6061: $a9
	xor b                                            ; $6062: $a8
	jp hl                                            ; $6063: $e9


	or h                                             ; $6064: $b4
	and b                                            ; $6065: $a0
	jp hl                                            ; $6066: $e9


	pop af                                           ; $6067: $f1
	xor h                                            ; $6068: $ac
	ld [$1356], a                                    ; $6069: $ea $56 $13
	ld b, h                                          ; $606c: $44
	dec sp                                           ; $606d: $3b
	dec a                                            ; $606e: $3d
	ld b, c                                          ; $606f: $41
	ld b, h                                          ; $6070: $44
	ld c, b                                          ; $6071: $48
	and b                                            ; $6072: $a0
	cpl                                              ; $6073: $2f
	ld b, e                                          ; $6074: $43
	ld b, b                                          ; $6075: $40
	add hl, sp                                       ; $6076: $39

jr_091_6077:
	ld b, h                                          ; $6077: $44
	ld b, l                                          ; $6078: $45
	xor b                                            ; $6079: $a8
	db $ed                                           ; $607a: $ed
	xor c                                            ; $607b: $a9
	db $ec                                           ; $607c: $ec
	dec b                                            ; $607d: $05
	ld c, d                                          ; $607e: $4a
	ld a, b                                          ; $607f: $78
	dec a                                            ; $6080: $3d
	ld b, d                                          ; $6081: $42
	and c                                            ; $6082: $a1
	xor $1f                                          ; $6083: $ee $1f
	xor l                                            ; $6085: $ad
	ld c, h                                          ; $6086: $4c
	add l                                            ; $6087: $85
	xor h                                            ; $6088: $ac
	jr c, jr_091_600b                                ; $6089: $38 $80

	ld c, a                                          ; $608b: $4f
	inc [hl]                                         ; $608c: $34
	ld d, h                                          ; $608d: $54
	ld b, c                                          ; $608e: $41
	ld a, [hl-]                                      ; $608f: $3a
	sbc d                                            ; $6090: $9a
	ld a, $3f                                        ; $6091: $3e $3f
	ld c, [hl]                                       ; $6093: $4e

jr_091_6094:
	ld b, d                                          ; $6094: $42
	and c                                            ; $6095: $a1
	cpl                                              ; $6096: $2f
	ld b, e                                          ; $6097: $43
	ld a, $3f                                        ; $6098: $3e $3f
	ld a, [hl-]                                      ; $609a: $3a
	jr c, jr_091_60e2                                ; $609b: $38 $45

	xor b                                            ; $609d: $a8
	db $eb                                           ; $609e: $eb
	ld b, $3a                                        ; $609f: $06 $3a
	ld b, d                                          ; $60a1: $42
	and b                                            ; $60a2: $a0
	ld b, b                                          ; $60a3: $40
	add hl, sp                                       ; $60a4: $39
	inc [hl]                                         ; $60a5: $34
	ld b, b                                          ; $60a6: $40

jr_091_60a7:
	ld c, l                                          ; $60a7: $4d
	ld a, [hl-]                                      ; $60a8: $3a
	ld d, b                                          ; $60a9: $50

jr_091_60aa:
	jr c, jr_091_60e4                                ; $60aa: $38 $38

	ld b, d                                          ; $60ac: $42
	xor b                                            ; $60ad: $a8
	ld b, [hl]                                       ; $60ae: $46
	dec sp                                           ; $60af: $3b
	xor h                                            ; $60b0: $ac
	jp hl                                            ; $60b1: $e9


	inc a                                            ; $60b2: $3c

jr_091_60b3:
	ld c, b                                          ; $60b3: $48
	and b                                            ; $60b4: $a0
	ld c, h                                          ; $60b5: $4c
	add l                                            ; $60b6: $85
	inc [hl]                                         ; $60b7: $34
	adc d                                            ; $60b8: $8a
	ldh a, [$73]                                     ; $60b9: $f0 $73
	adc a                                            ; $60bb: $8f
	dec sp                                           ; $60bc: $3b
	ccf                                              ; $60bd: $3f
	inc de                                           ; $60be: $13
	jr c, jr_091_6041                                ; $60bf: $38 $80

	ld c, a                                          ; $60c1: $4f
	ld d, h                                          ; $60c2: $54
	ld b, c                                          ; $60c3: $41
	ld a, [hl-]                                      ; $60c4: $3a
	sbc d                                            ; $60c5: $9a
	inc de                                           ; $60c6: $13
	ld a, e                                          ; $60c7: $7b
	inc a                                            ; $60c8: $3c
	ld d, a                                          ; $60c9: $57
	ld a, $3f                                        ; $60ca: $3e $3f
	ld c, [hl]                                       ; $60cc: $4e
	ld b, d                                          ; $60cd: $42
	and c                                            ; $60ce: $a1
	cpl                                              ; $60cf: $2f
	ld b, e                                          ; $60d0: $43
	ld d, h                                          ; $60d1: $54
	ld b, c                                          ; $60d2: $41
	ld a, [hl-]                                      ; $60d3: $3a
	sbc d                                            ; $60d4: $9a
	dec sp                                           ; $60d5: $3b
	ccf                                              ; $60d6: $3f
	xor h                                            ; $60d7: $ac
	ld [$4256], a                                    ; $60d8: $ea $56 $42
	sbc d                                            ; $60db: $9a
	and c                                            ; $60dc: $a1
	ld b, b                                          ; $60dd: $40
	add hl, sp                                       ; $60de: $39
	and b                                            ; $60df: $a0
	cpl                                              ; $60e0: $2f
	ld b, e                                          ; $60e1: $43

jr_091_60e2:
	ld d, h                                          ; $60e2: $54

jr_091_60e3:
	ld b, c                                          ; $60e3: $41

jr_091_60e4:
	ld a, [hl-]                                      ; $60e4: $3a
	sbc d                                            ; $60e5: $9a
	inc [hl]                                         ; $60e6: $34
	ldh a, [hDisp1_OBP1]                                     ; $60e7: $f0 $94
	ld [hl], c                                       ; $60e9: $71
	ccf                                              ; $60ea: $3f
	ld b, h                                          ; $60eb: $44
	ld b, l                                          ; $60ec: $45
	xor b                                            ; $60ed: $a8
	db $eb                                           ; $60ee: $eb
	ld b, $3a                                        ; $60ef: $06 $3a
	ld b, d                                          ; $60f1: $42
	and b                                            ; $60f2: $a0
	adc b                                            ; $60f3: $88
	sub c                                            ; $60f4: $91
	inc a                                            ; $60f5: $3c
	ld a, [hl-]                                      ; $60f6: $3a
	xor c                                            ; $60f7: $a9
	ld d, d                                          ; $60f8: $52
	ld [hl], h                                       ; $60f9: $74
	inc [hl]                                         ; $60fa: $34
	ldh a, [$9f]                                     ; $60fb: $f0 $9f
	ld e, e                                          ; $60fd: $5b
	ccf                                              ; $60fe: $3f
	rst SubAFromDE                                          ; $60ff: $df
	xor b                                            ; $6100: $a8
	ld b, [hl]                                       ; $6101: $46
	dec sp                                           ; $6102: $3b
	inc [hl]                                         ; $6103: $34
	db $ec                                           ; $6104: $ec
	push bc                                          ; $6105: $c5
	ld h, a                                          ; $6106: $67
	ld d, l                                          ; $6107: $55
	ld c, h                                          ; $6108: $4c
	and b                                            ; $6109: $a0
	cpl                                              ; $610a: $2f
	ld b, e                                          ; $610b: $43
	xor $1f                                          ; $610c: $ee $1f
	xor h                                            ; $610e: $ac
	ld c, a                                          ; $610f: $4f
	add hl, sp                                       ; $6110: $39
	ld h, a                                          ; $6111: $67
	dec sp                                           ; $6112: $3b
	dec a                                            ; $6113: $3d
	ldh a, [$08]                                     ; $6114: $f0 $08
	add hl, sp                                       ; $6116: $39
	ld d, e                                          ; $6117: $53
	jr c, jr_091_6152                                ; $6118: $38 $38

	ld b, l                                          ; $611a: $45
	and b                                            ; $611b: $a0
	ld l, e                                          ; $611c: $6b
	ld b, l                                          ; $611d: $45
	inc [hl]                                         ; $611e: $34
	ld l, a                                          ; $611f: $6f
	ld d, e                                          ; $6120: $53
	jr c, jr_091_6171                                ; $6121: $38 $4e

	ld c, c                                          ; $6123: $49
	inc de                                           ; $6124: $13
	db $ed                                           ; $6125: $ed
	sub c                                            ; $6126: $91
	ld a, [hl-]                                      ; $6127: $3a
	ld b, c                                          ; $6128: $41
	ld c, d                                          ; $6129: $4a
	ld a, $66                                        ; $612a: $3e $66
	add hl, sp                                       ; $612c: $39

jr_091_612d:
	xor b                                            ; $612d: $a8
	ld d, c                                          ; $612e: $51
	sbc l                                            ; $612f: $9d
	ld b, a                                          ; $6130: $47
	ldh a, [c]                                       ; $6131: $f2
	cp h                                             ; $6132: $bc
	pop af                                           ; $6133: $f1
	db $ed                                           ; $6134: $ed
	ld a, $52                                        ; $6135: $3e $52
	ld d, c                                          ; $6137: $51
	ld b, l                                          ; $6138: $45
	ld e, c                                          ; $6139: $59
	ld b, h                                          ; $613a: $44
	and b                                            ; $613b: $a0
	ld l, e                                          ; $613c: $6b
	ld b, h                                          ; $613d: $44
	inc a                                            ; $613e: $3c
	xor h                                            ; $613f: $ac
	db $eb                                           ; $6140: $eb
	ld l, d                                          ; $6141: $6a
	ccf                                              ; $6142: $3f
	xor l                                            ; $6143: $ad
	ld c, a                                          ; $6144: $4f
	add hl, sp                                       ; $6145: $39
	jr c, jr_091_6198                                ; $6146: $38 $50

	ld c, l                                          ; $6148: $4d
	ld a, [hl-]                                      ; $6149: $3a
	jr c, jr_091_61af                                ; $614a: $38 $63

	and b                                            ; $614c: $a0
	cpl                                              ; $614d: $2f
	ld b, e                                          ; $614e: $43
	ld b, b                                          ; $614f: $40
	add hl, sp                                       ; $6150: $39
	ld b, h                                          ; $6151: $44

jr_091_6152:
	ld b, l                                          ; $6152: $45
	xor b                                            ; $6153: $a8
	db $ed                                           ; $6154: $ed
	xor c                                            ; $6155: $a9
	inc [hl]                                         ; $6156: $34
	db $ec                                           ; $6157: $ec
	dec b                                            ; $6158: $05
	ld c, d                                          ; $6159: $4a
	ld a, b                                          ; $615a: $78
	dec a                                            ; $615b: $3d
	ld b, d                                          ; $615c: $42
	and c                                            ; $615d: $a1
	ld [$a802], a                                    ; $615e: $ea $02 $a8
	jr c, jr_091_60e3                                ; $6161: $38 $80

	ld c, a                                          ; $6163: $4f
	ld d, h                                          ; $6164: $54
	ld b, c                                          ; $6165: $41
	ld a, [hl-]                                      ; $6166: $3a
	sbc d                                            ; $6167: $9a
	inc de                                           ; $6168: $13
	ld a, $3f                                        ; $6169: $3e $3f
	ld c, [hl]                                       ; $616b: $4e
	ld b, c                                          ; $616c: $41
	ld c, d                                          ; $616d: $4a
	ld a, $66                                        ; $616e: $3e $66
	add hl, sp                                       ; $6170: $39

jr_091_6171:
	and c                                            ; $6171: $a1
	adc b                                            ; $6172: $88
	sub c                                            ; $6173: $91
	inc a                                            ; $6174: $3c
	ld a, [hl-]                                      ; $6175: $3a
	ld [hl], h                                       ; $6176: $74
	xor c                                            ; $6177: $a9
	ld b, [hl]                                       ; $6178: $46
	dec sp                                           ; $6179: $3b
	xor h                                            ; $617a: $ac
	add sp, -$64                                     ; $617b: $e8 $9c
	and b                                            ; $617d: $a0
	cpl                                              ; $617e: $2f
	ld b, e                                          ; $617f: $43
	ld b, [hl]                                       ; $6180: $46
	dec sp                                           ; $6181: $3b
	inc [hl]                                         ; $6182: $34
	db $ed                                           ; $6183: $ed
	xor c                                            ; $6184: $a9
	xor b                                            ; $6185: $a8
	jr c, @+$52                                      ; $6186: $38 $50

	dec sp                                           ; $6188: $3b
	ld a, $56                                        ; $6189: $3e $56
	jr c, jr_091_612d                                ; $618b: $38 $a0

	db $eb                                           ; $618d: $eb
	ld a, h                                          ; $618e: $7c
	ldh a, [rAUD3LEVEL]                              ; $618f: $f0 $1c
	ld c, b                                          ; $6191: $48
	and b                                            ; $6192: $a0
	cpl                                              ; $6193: $2f
	ld b, e                                          ; $6194: $43
	ld b, [hl]                                       ; $6195: $46
	dec sp                                           ; $6196: $3b
	inc [hl]                                         ; $6197: $34

jr_091_6198:
	db $ec                                           ; $6198: $ec
	ld a, [hl]                                       ; $6199: $7e
	ldh a, [c]                                       ; $619a: $f2
	ld a, l                                          ; $619b: $7d
	and b                                            ; $619c: $a0
	ld d, h                                          ; $619d: $54
	ld d, h                                          ; $619e: $54
	ld b, a                                          ; $619f: $47
	db $eb                                           ; $61a0: $eb
	ld l, e                                          ; $61a1: $6b
	ldh a, [$3f]                                     ; $61a2: $f0 $3f
	xor h                                            ; $61a4: $ac
	ld l, h                                          ; $61a5: $6c
	ld b, c                                          ; $61a6: $41
	ld a, [hl-]                                      ; $61a7: $3a
	ldh a, [$57]                                     ; $61a8: $f0 $57
	ldh a, [$ae]                                     ; $61aa: $f0 $ae
	ld c, h                                          ; $61ac: $4c
	and b                                            ; $61ad: $a0
	cpl                                              ; $61ae: $2f

jr_091_61af:
	ld b, e                                          ; $61af: $43
	ld c, h                                          ; $61b0: $4c
	add l                                            ; $61b1: $85

jr_091_61b2:
	inc [hl]                                         ; $61b2: $34
	halt                                             ; $61b3: $76
	ld b, d                                          ; $61b4: $42
	ldh a, [$3f]                                     ; $61b5: $f0 $3f
	ld c, e                                          ; $61b7: $4b
	inc de                                           ; $61b8: $13
	db $eb                                           ; $61b9: $eb
	ld d, b                                          ; $61ba: $50
	and c                                            ; $61bb: $a1
	ldh a, [$7f]                                     ; $61bc: $f0 $7f
	ldh a, [$9c]                                     ; $61be: $f0 $9c
	jr c, jr_091_61b2                                ; $61c0: $38 $f0

	inc b                                            ; $61c2: $04
	ld [hl], e                                       ; $61c3: $73
	ldh a, [$2b]                                     ; $61c4: $f0 $2b
	ld c, d                                          ; $61c6: $4a
	xor h                                            ; $61c7: $ac
	ld l, a                                          ; $61c8: $6f
	ld c, e                                          ; $61c9: $4b
	inc [hl]                                         ; $61ca: $34
	ldh a, [$80]                                     ; $61cb: $f0 $80
	ldh a, [$c5]                                     ; $61cd: $f0 $c5
	adc e                                            ; $61cf: $8b

jr_091_61d0:
	ld e, h                                          ; $61d0: $5c
	ld b, h                                          ; $61d1: $44
	ld a, [hl-]                                      ; $61d2: $3a
	ld [hl], h                                       ; $61d3: $74
	and b                                            ; $61d4: $a0
	cpl                                              ; $61d5: $2f
	ld b, e                                          ; $61d6: $43
	add sp, -$1b                                     ; $61d7: $e8 $e5
	and b                                            ; $61d9: $a0
	ldh a, [$7f]                                     ; $61da: $f0 $7f
	ldh a, [$9c]                                     ; $61dc: $f0 $9c
	jr c, jr_091_61d0                                ; $61de: $38 $f0

	inc b                                            ; $61e0: $04
	ld [hl], e                                       ; $61e1: $73
	ldh a, [$2b]                                     ; $61e2: $f0 $2b
	ld c, d                                          ; $61e4: $4a
	xor h                                            ; $61e5: $ac
	ldh a, [$80]                                     ; $61e6: $f0 $80
	ldh a, [$c5]                                     ; $61e8: $f0 $c5
	inc [hl]                                         ; $61ea: $34
	jr c, jr_091_6225                                ; $61eb: $38 $38

	ld c, c                                          ; $61ed: $49
	ld [hl], a                                       ; $61ee: $77
	add hl, sp                                       ; $61ef: $39
	ld h, e                                          ; $61f0: $63
	ld b, l                                          ; $61f1: $45
	and b                                            ; $61f2: $a0
	cpl                                              ; $61f3: $2f
	ld b, e                                          ; $61f4: $43
	ld b, [hl]                                       ; $61f5: $46
	ld d, a                                          ; $61f6: $57
	ld d, e                                          ; $61f7: $53
	ld c, c                                          ; $61f8: $49
	add hl, sp                                       ; $61f9: $39
	xor h                                            ; $61fa: $ac
	pop af                                           ; $61fb: $f1
	db $d3                                           ; $61fc: $d3
	ld [hl], c                                       ; $61fd: $71
	ccf                                              ; $61fe: $3f
	ld d, l                                          ; $61ff: $55
	ld c, l                                          ; $6200: $4d
	ccf                                              ; $6201: $3f
	and b                                            ; $6202: $a0
	jr c, jr_091_623d                                ; $6203: $38 $38

	ldh a, [$78]                                     ; $6205: $f0 $78
	ld e, e                                          ; $6207: $5b
	ld b, h                                          ; $6208: $44
	dec sp                                           ; $6209: $3b
	dec a                                            ; $620a: $3d
	ld h, e                                          ; $620b: $63
	xor b                                            ; $620c: $a8
	ldh a, [$80]                                     ; $620d: $f0 $80
	ldh a, [$c5]                                     ; $620f: $f0 $c5
	inc [hl]                                         ; $6211: $34
	ld [hl], d                                       ; $6212: $72
	ldh a, [hDisp1_WX]                                     ; $6213: $f0 $96
	db $eb                                           ; $6215: $eb
	ld d, [hl]                                       ; $6216: $56
	and b                                            ; $6217: $a0
	cpl                                              ; $6218: $2f
	ld b, e                                          ; $6219: $43
	ld b, b                                          ; $621a: $40
	add hl, sp                                       ; $621b: $39
	ld c, d                                          ; $621c: $4a
	ld a, $66                                        ; $621d: $3e $66
	add hl, sp                                       ; $621f: $39
	xor b                                            ; $6220: $a8
	ld a, a                                          ; $6221: $7f
	ldh a, [rTMA]                                    ; $6222: $f0 $06
	sub [hl]                                         ; $6224: $96

jr_091_6225:
	ld c, l                                          ; $6225: $4d
	dec a                                            ; $6226: $3d
	inc a                                            ; $6227: $3c
	ld d, b                                          ; $6228: $50
	ld c, h                                          ; $6229: $4c
	and b                                            ; $622a: $a0
	db $ed                                           ; $622b: $ed
	ld b, e                                          ; $622c: $43
	xor h                                            ; $622d: $ac
	ldh a, [$3f]                                     ; $622e: $f0 $3f
	ld c, e                                          ; $6230: $4b
	ld [hl], d                                       ; $6231: $72
	dec a                                            ; $6232: $3d
	inc a                                            ; $6233: $3c
	ld d, b                                          ; $6234: $50
	ld c, b                                          ; $6235: $48
	and b                                            ; $6236: $a0
	cpl                                              ; $6237: $2f
	ld b, e                                          ; $6238: $43
	xor $1e                                          ; $6239: $ee $1e
	inc [hl]                                         ; $623b: $34
	db $ed                                           ; $623c: $ed

jr_091_623d:
	ld [hl], a                                       ; $623d: $77
	ld h, d                                          ; $623e: $62
	xor l                                            ; $623f: $ad
	ld [$a0be], a                                    ; $6240: $ea $be $a0
	cpl                                              ; $6243: $2f
	ld b, e                                          ; $6244: $43
	ldh a, [$6d]                                     ; $6245: $f0 $6d
	ld e, c                                          ; $6247: $59
	ldh a, [$27]                                     ; $6248: $f0 $27
	ld b, d                                          ; $624a: $42
	ldh a, [$99]                                     ; $624b: $f0 $99
	sub b                                            ; $624d: $90
	ld b, h                                          ; $624e: $44
	ld b, l                                          ; $624f: $45
	xor b                                            ; $6250: $a8
	halt                                             ; $6251: $76
	inc [hl]                                         ; $6252: $34
	jp hl                                            ; $6253: $e9


	adc $a0                                          ; $6254: $ce $a0
	ld d, h                                          ; $6256: $54
	add hl, sp                                       ; $6257: $39
	jr c, @+$3b                                      ; $6258: $38 $39

	ldh a, [$ed]                                     ; $625a: $f0 $ed
	xor h                                            ; $625c: $ac
	ld l, a                                          ; $625d: $6f
	ld c, a                                          ; $625e: $4f
	adc e                                            ; $625f: $8b
	ld e, h                                          ; $6260: $5c
	ld b, l                                          ; $6261: $45
	xor b                                            ; $6262: $a8
	db $eb                                           ; $6263: $eb
	ld l, a                                          ; $6264: $6f
	ld a, [hl-]                                      ; $6265: $3a
	ld b, c                                          ; $6266: $41
	ld b, h                                          ; $6267: $44
	ld c, b                                          ; $6268: $48
	dec [hl]                                         ; $6269: $35
	inc hl                                           ; $626a: $23
	rla                                              ; $626b: $17
	ld b, [hl]                                       ; $626c: $46
	dec sp                                           ; $626d: $3b
	inc [hl]                                         ; $626e: $34
	db $ed                                           ; $626f: $ed
	and h                                            ; $6270: $a4
	ld b, l                                          ; $6271: $45
	xor b                                            ; $6272: $a8
	or h                                             ; $6273: $b4
	inc [hl]                                         ; $6274: $34
	xor $2b                                          ; $6275: $ee $2b
	xor h                                            ; $6277: $ac
	ld [$4c20], a                                    ; $6278: $ea $20 $4c
	and b                                            ; $627b: $a0
	cpl                                              ; $627c: $2f
	ld b, e                                          ; $627d: $43
	ld [$a05f], a                                    ; $627e: $ea $5f $a0
	ldh a, [$6d]                                     ; $6281: $f0 $6d
	ld e, c                                          ; $6283: $59
	ldh a, [$27]                                     ; $6284: $f0 $27
	xor c                                            ; $6286: $a9
	ldh a, [$5a]                                     ; $6287: $f0 $5a
	ld e, c                                          ; $6289: $59
	dec sp                                           ; $628a: $3b
	inc [hl]                                         ; $628b: $34
	ret nz                                           ; $628c: $c0

	xor b                                            ; $628d: $a8
	ld d, h                                          ; $628e: $54
	add hl, sp                                       ; $628f: $39
	jr c, jr_091_62cb                                ; $6290: $38 $39

	ldh a, [$ed]                                     ; $6292: $f0 $ed
	inc [hl]                                         ; $6294: $34
	ld l, a                                          ; $6295: $6f
	adc e                                            ; $6296: $8b
	ld e, h                                          ; $6297: $5c
	ld b, l                                          ; $6298: $45
	and b                                            ; $6299: $a0
	cpl                                              ; $629a: $2f
	ld b, e                                          ; $629b: $43
	halt                                             ; $629c: $76
	ld c, a                                          ; $629d: $4f
	xor h                                            ; $629e: $ac
	jp hl                                            ; $629f: $e9


	adc $a0                                          ; $62a0: $ce $a0
	ld b, [hl]                                       ; $62a2: $46
	dec sp                                           ; $62a3: $3b
	inc [hl]                                         ; $62a4: $34
	ld c, a                                          ; $62a5: $4f
	add hl, sp                                       ; $62a6: $39
	ldh a, [$bb]                                     ; $62a7: $f0 $bb
	ld d, d                                          ; $62a9: $52
	dec sp                                           ; $62aa: $3b
	ld h, c                                          ; $62ab: $61
	ld d, [hl]                                       ; $62ac: $56
	add hl, sp                                       ; $62ad: $39
	xor b                                            ; $62ae: $a8
	or h                                             ; $62af: $b4
	inc [hl]                                         ; $62b0: $34
	xor $2b                                          ; $62b1: $ee $2b
	xor h                                            ; $62b3: $ac
	ld [$4c20], a                                    ; $62b4: $ea $20 $4c
	and b                                            ; $62b7: $a0
	cpl                                              ; $62b8: $2f
	ld b, e                                          ; $62b9: $43
	ld [$a85f], a                                    ; $62ba: $ea $5f $a8
	halt                                             ; $62bd: $76
	inc [hl]                                         ; $62be: $34
	jp hl                                            ; $62bf: $e9


	adc $a0                                          ; $62c0: $ce $a0
	ld d, h                                          ; $62c2: $54
	ld b, d                                          ; $62c3: $42
	ldh a, [$ed]                                     ; $62c4: $f0 $ed
	xor h                                            ; $62c6: $ac
	db $eb                                           ; $62c7: $eb
	ld l, a                                          ; $62c8: $6f
	ld a, [hl-]                                      ; $62c9: $3a
	ld b, c                                          ; $62ca: $41

jr_091_62cb:
	ld b, h                                          ; $62cb: $44
	ld c, b                                          ; $62cc: $48
	dec [hl]                                         ; $62cd: $35
	inc hl                                           ; $62ce: $23
	inc de                                           ; $62cf: $13
	ld b, [hl]                                       ; $62d0: $46
	dec sp                                           ; $62d1: $3b
	inc [hl]                                         ; $62d2: $34
	ld c, a                                          ; $62d3: $4f
	add hl, sp                                       ; $62d4: $39
	ldh a, [$bb]                                     ; $62d5: $f0 $bb
	ld d, d                                          ; $62d7: $52
	dec sp                                           ; $62d8: $3b
	ld h, c                                          ; $62d9: $61
	ld d, [hl]                                       ; $62da: $56
	add hl, sp                                       ; $62db: $39
	xor b                                            ; $62dc: $a8
	or h                                             ; $62dd: $b4
	inc [hl]                                         ; $62de: $34
	xor $2b                                          ; $62df: $ee $2b
	xor h                                            ; $62e1: $ac
	sub d                                            ; $62e2: $92
	adc [hl]                                         ; $62e3: $8e
	ld e, a                                          ; $62e4: $5f
	add hl, sp                                       ; $62e5: $39
	ld c, h                                          ; $62e6: $4c
	and b                                            ; $62e7: $a0
	ld c, a                                          ; $62e8: $4f
	add hl, sp                                       ; $62e9: $39
	ld d, c                                          ; $62ea: $51
	sbc l                                            ; $62eb: $9d
	ldh a, [hLCDCIntHandlerIdx]                                     ; $62ec: $f0 $81
	ldh a, [$a8]                                     ; $62ee: $f0 $a8
	ld b, h                                          ; $62f0: $44
	ld h, e                                          ; $62f1: $63
	xor b                                            ; $62f2: $a8
	pop af                                           ; $62f3: $f1
	add c                                            ; $62f4: $81
	ld h, c                                          ; $62f5: $61
	ldh a, [$ac]                                     ; $62f6: $f0 $ac
	inc a                                            ; $62f8: $3c
	ld a, [hl-]                                      ; $62f9: $3a
	ld d, l                                          ; $62fa: $55
	ld h, c                                          ; $62fb: $61
	ld d, [hl]                                       ; $62fc: $56
	ld c, b                                          ; $62fd: $48
	and b                                            ; $62fe: $a0
	cpl                                              ; $62ff: $2f
	ld b, e                                          ; $6300: $43
	add a                                            ; $6301: $87
	ldh a, [$5b]                                     ; $6302: $f0 $5b
	ldh a, [$5e]                                     ; $6304: $f0 $5e
	xor b                                            ; $6306: $a8
	xor $19                                          ; $6307: $ee $19
	ldh a, [rOCPS]                                   ; $6309: $f0 $6a
	ld d, a                                          ; $630b: $57
	ld l, [hl]                                       ; $630c: $6e
	ld c, l                                          ; $630d: $4d
	ld a, e                                          ; $630e: $7b
	xor h                                            ; $630f: $ac
	add hl, sp                                       ; $6310: $39
	ld d, d                                          ; $6311: $52
	ld d, l                                          ; $6312: $55
	jr c, jr_091_636a                                ; $6313: $38 $55

	ld b, l                                          ; $6315: $45
	and b                                            ; $6316: $a0
	ld d, h                                          ; $6317: $54
	ld d, h                                          ; $6318: $54
	ld e, e                                          ; $6319: $5b
	ld d, [hl]                                       ; $631a: $56
	inc de                                           ; $631b: $13
	pop af                                           ; $631c: $f1
	add c                                            ; $631d: $81
	ld h, c                                          ; $631e: $61
	ldh a, [$ac]                                     ; $631f: $f0 $ac
	ld e, l                                          ; $6321: $5d
	ld a, [hl-]                                      ; $6322: $3a
	jr c, @+$4a                                      ; $6323: $38 $48

	and b                                            ; $6325: $a0
	ldh a, [rSCY]                                    ; $6326: $f0 $42
	ld e, c                                          ; $6328: $59
	dec sp                                           ; $6329: $3b
	xor h                                            ; $632a: $ac
	jp hl                                            ; $632b: $e9


	ld c, c                                          ; $632c: $49
	ld c, b                                          ; $632d: $48
	and b                                            ; $632e: $a0
	cpl                                              ; $632f: $2f
	ld b, e                                          ; $6330: $43
	ld h, h                                          ; $6331: $64
	pop af                                           ; $6332: $f1
	call c, Call_091_4158                            ; $6333: $dc $58 $41
	xor h                                            ; $6336: $ac
	ldh a, [$66]                                     ; $6337: $f0 $66
	ld b, c                                          ; $6339: $41
	ld c, d                                          ; $633a: $4a
	ld d, l                                          ; $633b: $55
	ld c, l                                          ; $633c: $4d
	ccf                                              ; $633d: $3f
	dec a                                            ; $633e: $3d
	ld c, h                                          ; $633f: $4c
	and b                                            ; $6340: $a0
	ld d, h                                          ; $6341: $54
	ld d, h                                          ; $6342: $54
	ld e, e                                          ; $6343: $5b
	ld d, [hl]                                       ; $6344: $56
	inc [hl]                                         ; $6345: $34
	ldh a, [$66]                                     ; $6346: $f0 $66
	ldh a, [rKEY1]                                   ; $6348: $f0 $4d
	ld c, a                                          ; $634a: $4f
	inc de                                           ; $634b: $13
	ei                                               ; $634c: $fb
	adc d                                            ; $634d: $8a
	ld l, h                                          ; $634e: $6c
	ld a, $71                                        ; $634f: $3e $71
	ld d, b                                          ; $6351: $50
	ld c, l                                          ; $6352: $4d
	ld a, [hl-]                                      ; $6353: $3a
	jr c, @+$65                                      ; $6354: $38 $63

	and b                                            ; $6356: $a0
	ld b, [hl]                                       ; $6357: $46
	ld e, c                                          ; $6358: $59
	ld b, [hl]                                       ; $6359: $46
	xor h                                            ; $635a: $ac
	add hl, sp                                       ; $635b: $39
	ld d, d                                          ; $635c: $52
	ld d, l                                          ; $635d: $55
	jr c, jr_091_639c                                ; $635e: $38 $3c

	ld a, [hl-]                                      ; $6360: $3a
	inc a                                            ; $6361: $3c
	dec sp                                           ; $6362: $3b
	dec a                                            ; $6363: $3d
	ld h, e                                          ; $6364: $63
	ld c, b                                          ; $6365: $48
	and b                                            ; $6366: $a0
	cpl                                              ; $6367: $2f
	ld b, e                                          ; $6368: $43
	db $ec                                           ; $6369: $ec

jr_091_636a:
	ld h, a                                          ; $636a: $67
	inc de                                           ; $636b: $13
	ldh a, [$5c]                                     ; $636c: $f0 $5c
	inc a                                            ; $636e: $3c
	dec sp                                           ; $636f: $3b
	dec a                                            ; $6370: $3d
	ld b, d                                          ; $6371: $42
	inc a                                            ; $6372: $3c
	ld a, [hl-]                                      ; $6373: $3a
	ld [hl], h                                       ; $6374: $74
	and b                                            ; $6375: $a0
	ld l, a                                          ; $6376: $6f
	ld c, e                                          ; $6377: $4b
	inc [hl]                                         ; $6378: $34
	ldh a, [$98]                                     ; $6379: $f0 $98
	inc a                                            ; $637b: $3c
	ld b, d                                          ; $637c: $42
	inc de                                           ; $637d: $13
	xor $2b                                          ; $637e: $ee $2b
	ld b, d                                          ; $6380: $42
	ld a, c                                          ; $6381: $79
	jr c, jr_091_63c8                                ; $6382: $38 $44

	ld c, c                                          ; $6384: $49
	ld [hl], a                                       ; $6385: $77
	add hl, sp                                       ; $6386: $39
	ld e, l                                          ; $6387: $5d
	ld e, d                                          ; $6388: $5a
	ld c, b                                          ; $6389: $48
	and b                                            ; $638a: $a0
	ld c, a                                          ; $638b: $4f
	add hl, sp                                       ; $638c: $39
	ld d, c                                          ; $638d: $51
	sbc l                                            ; $638e: $9d
	ldh a, [hLCDCIntHandlerIdx]                                     ; $638f: $f0 $81
	ldh a, [$a8]                                     ; $6391: $f0 $a8
	ld c, h                                          ; $6393: $4c
	xor b                                            ; $6394: $a8
	ld l, a                                          ; $6395: $6f
	inc [hl]                                         ; $6396: $34
	ldh a, [$2a]                                     ; $6397: $f0 $2a
	ldh a, [$f5]                                     ; $6399: $f0 $f5
	ld e, [hl]                                       ; $639b: $5e

jr_091_639c:
	ld a, [hl-]                                      ; $639c: $3a
	jr c, jr_091_63e9                                ; $639d: $38 $4a

	inc de                                           ; $639f: $13
	sub h                                            ; $63a0: $94
	ld a, b                                          ; $63a1: $78
	ld c, [hl]                                       ; $63a2: $4e
	inc a                                            ; $63a3: $3c
	ld a, $50                                        ; $63a4: $3e $50
	and c                                            ; $63a6: $a1
	ld b, b                                          ; $63a7: $40
	inc [hl]                                         ; $63a8: $34
	db $ec                                           ; $63a9: $ec
	inc e                                            ; $63aa: $1c
	xor b                                            ; $63ab: $a8
	add a                                            ; $63ac: $87
	ldh a, [$5b]                                     ; $63ad: $f0 $5b
	ldh a, [$5e]                                     ; $63af: $f0 $5e
	ld b, l                                          ; $63b1: $45
	ld c, h                                          ; $63b2: $4c
	and b                                            ; $63b3: $a0
	cpl                                              ; $63b4: $2f
	ld b, e                                          ; $63b5: $43
	pop af                                           ; $63b6: $f1
	cp c                                             ; $63b7: $b9
	ldh a, [rVBK]                                    ; $63b8: $f0 $4f
	ld a, $3a                                        ; $63ba: $3e $3a
	dec sp                                           ; $63bc: $3b
	ccf                                              ; $63bd: $3f
	and b                                            ; $63be: $a0
	ld c, c                                          ; $63bf: $49
	ld d, h                                          ; $63c0: $54
	ld e, a                                          ; $63c1: $5f
	ld c, d                                          ; $63c2: $4a
	inc [hl]                                         ; $63c3: $34
	ld d, h                                          ; $63c4: $54
	ld c, l                                          ; $63c5: $4d
	dec sp                                           ; $63c6: $3b
	ccf                                              ; $63c7: $3f

jr_091_63c8:
	inc de                                           ; $63c8: $13
	ld l, e                                          ; $63c9: $6b
	ld b, d                                          ; $63ca: $42
	ldh a, [$ed]                                     ; $63cb: $f0 $ed
	ld a, [hl-]                                      ; $63cd: $3a
	ld b, d                                          ; $63ce: $42
	and c                                            ; $63cf: $a1
	ld l, d                                          ; $63d0: $6a
	ldh a, [rAUD1HIGH]                               ; $63d1: $f0 $14
	ld b, d                                          ; $63d3: $42
	ldh a, [$ed]                                     ; $63d4: $f0 $ed
	ld c, e                                          ; $63d6: $4b
	inc de                                           ; $63d7: $13
	db $eb                                           ; $63d8: $eb
	ld h, l                                          ; $63d9: $65
	ld c, h                                          ; $63da: $4c
	and b                                            ; $63db: $a0
	cpl                                              ; $63dc: $2f
	ld b, e                                          ; $63dd: $43
	jr c, jr_091_641c                                ; $63de: $38 $3c

	ld b, a                                          ; $63e0: $47
	ld c, a                                          ; $63e1: $4f
	inc de                                           ; $63e2: $13
	pop af                                           ; $63e3: $f1
	ld b, c                                          ; $63e4: $41
	ldh a, [$8b]                                     ; $63e5: $f0 $8b
	sub b                                            ; $63e7: $90
	dec sp                                           ; $63e8: $3b

jr_091_63e9:
	pop af                                           ; $63e9: $f1
	rla                                              ; $63ea: $17
	jr c, jr_091_6432                                ; $63eb: $38 $45

	ld c, h                                          ; $63ed: $4c
	xor b                                            ; $63ee: $a8
	ldh a, [c]                                       ; $63ef: $f2
	ld l, [hl]                                       ; $63f0: $6e
	ldh a, [rAUD1HIGH]                               ; $63f1: $f0 $14
	ld c, e                                          ; $63f3: $4b
	db $eb                                           ; $63f4: $eb
	sbc e                                            ; $63f5: $9b
	ld b, h                                          ; $63f6: $44
	dec sp                                           ; $63f7: $3b
	dec a                                            ; $63f8: $3d
	dec sp                                           ; $63f9: $3b
	ld e, l                                          ; $63fa: $5d
	and b                                            ; $63fb: $a0
	ret                                              ; $63fc: $c9


	inc de                                           ; $63fd: $13
	ldh a, [c]                                       ; $63fe: $f2
	dec e                                            ; $63ff: $1d
	adc [hl]                                         ; $6400: $8e
	ld a, $61                                        ; $6401: $3e $61
	ld d, [hl]                                       ; $6403: $56
	add hl, sp                                       ; $6404: $39
	ld h, e                                          ; $6405: $63
	ld c, b                                          ; $6406: $48
	and b                                            ; $6407: $a0
	cpl                                              ; $6408: $2f
	ld b, e                                          ; $6409: $43
	add a                                            ; $640a: $87
	ldh a, [$5b]                                     ; $640b: $f0 $5b
	ldh a, [$5e]                                     ; $640d: $f0 $5e
	ld b, h                                          ; $640f: $44
	ld b, l                                          ; $6410: $45
	xor b                                            ; $6411: $a8
	db $ed                                           ; $6412: $ed
	xor c                                            ; $6413: $a9
	ld a, [hl-]                                      ; $6414: $3a
	ld d, b                                          ; $6415: $50
	and b                                            ; $6416: $a0
	xor $1f                                          ; $6417: $ee $1f
	inc [hl]                                         ; $6419: $34
	ld b, [hl]                                       ; $641a: $46
	ld d, a                                          ; $641b: $57

jr_091_641c:
	ld d, e                                          ; $641c: $53
	ld c, c                                          ; $641d: $49
	add hl, sp                                       ; $641e: $39
	xor b                                            ; $641f: $a8
	ret                                              ; $6420: $c9


	ld b, h                                          ; $6421: $44
	ld e, l                                          ; $6422: $5d
	ldh a, [$67]                                     ; $6423: $f0 $67
	ldh a, [$9f]                                     ; $6425: $f0 $9f
	ld d, e                                          ; $6427: $53

jr_091_6428:
	ld c, d                                          ; $6428: $4a
	ccf                                              ; $6429: $3f
	ld e, h                                          ; $642a: $5c
	dec a                                            ; $642b: $3d
	ld h, e                                          ; $642c: $63
	and b                                            ; $642d: $a0
	ld l, d                                          ; $642e: $6a
	ldh a, [rAUD1HIGH]                               ; $642f: $f0 $14
	ld c, e                                          ; $6431: $4b

jr_091_6432:
	inc de                                           ; $6432: $13
	db $eb                                           ; $6433: $eb
	ld h, l                                          ; $6434: $65
	xor $2b                                          ; $6435: $ee $2b
	ld c, h                                          ; $6437: $4c
	and b                                            ; $6438: $a0
	cpl                                              ; $6439: $2f
	ld b, e                                          ; $643a: $43
	ld b, b                                          ; $643b: $40
	add hl, sp                                       ; $643c: $39
	ld b, h                                          ; $643d: $44
	ld c, h                                          ; $643e: $4c
	xor b                                            ; $643f: $a8
	ldh a, [c]                                       ; $6440: $f2
	ld l, [hl]                                       ; $6441: $6e
	ldh a, [rAUD1HIGH]                               ; $6442: $f0 $14
	ld c, e                                          ; $6444: $4b
	db $eb                                           ; $6445: $eb
	sbc e                                            ; $6446: $9b
	ld b, h                                          ; $6447: $44
	dec sp                                           ; $6448: $3b
	dec a                                            ; $6449: $3d
	dec sp                                           ; $644a: $3b
	ld e, l                                          ; $644b: $5d
	and c                                            ; $644c: $a1
	xor $1f                                          ; $644d: $ee $1f
	inc [hl]                                         ; $644f: $34
	ld c, d                                          ; $6450: $4a
	ld c, a                                          ; $6451: $4f
	ldh a, [$80]                                     ; $6452: $f0 $80
	ldh a, [$c5]                                     ; $6454: $f0 $c5
	jr c, jr_091_6490                                ; $6456: $38 $38

	ldh a, [$ed]                                     ; $6458: $f0 $ed
	inc de                                           ; $645a: $13
	ld b, h                                          ; $645b: $44
	dec sp                                           ; $645c: $3b
	dec a                                            ; $645d: $3d
	ld h, e                                          ; $645e: $63
	ld b, l                                          ; $645f: $45
	and b                                            ; $6460: $a0
	cpl                                              ; $6461: $2f
	ld b, e                                          ; $6462: $43
	ld l, d                                          ; $6463: $6a
	ldh a, [rAUD1HIGH]                               ; $6464: $f0 $14
	ld c, e                                          ; $6466: $4b
	ld d, e                                          ; $6467: $53
	ld d, b                                          ; $6468: $50
	ld d, a                                          ; $6469: $57
	ld c, c                                          ; $646a: $49
	inc de                                           ; $646b: $13
	db $ec                                           ; $646c: $ec
	cp $53                                           ; $646d: $fe $53
	ldh a, [$5d]                                     ; $646f: $f0 $5d
	ld h, e                                          ; $6471: $63
	ld c, [hl]                                       ; $6472: $4e
	ld c, h                                          ; $6473: $4c
	and b                                            ; $6474: $a0
	db $ec                                           ; $6475: $ec
	push bc                                          ; $6476: $c5
	inc [hl]                                         ; $6477: $34
	ldh a, [$bb]                                     ; $6478: $f0 $bb
	ld d, d                                          ; $647a: $52
	ld c, [hl]                                       ; $647b: $4e
	ld l, h                                          ; $647c: $6c
	dec a                                            ; $647d: $3d
	jr c, jr_091_6428                                ; $647e: $38 $a8

	or h                                             ; $6480: $b4
	xor h                                            ; $6481: $ac
	ld [$4c20], a                                    ; $6482: $ea $20 $4c
	and b                                            ; $6485: $a0
	ld c, a                                          ; $6486: $4f
	add hl, sp                                       ; $6487: $39
	ld d, c                                          ; $6488: $51
	sbc l                                            ; $6489: $9d
	ldh a, [hLCDCIntHandlerIdx]                                     ; $648a: $f0 $81
	ldh a, [$a8]                                     ; $648c: $f0 $a8
	ld b, h                                          ; $648e: $44
	ld h, e                                          ; $648f: $63

jr_091_6490:
	and b                                            ; $6490: $a0
	cpl                                              ; $6491: $2f
	ld b, e                                          ; $6492: $43

jr_091_6493:
	ld c, h                                          ; $6493: $4c
	add l                                            ; $6494: $85
	inc [hl]                                         ; $6495: $34
	ld l, d                                          ; $6496: $6a
	ldh a, [rAUD1HIGH]                               ; $6497: $f0 $14
	ld c, e                                          ; $6499: $4b
	inc de                                           ; $649a: $13
	ld [$445a], a                                    ; $649b: $ea $5a $44
	ld c, h                                          ; $649e: $4c
	and b                                            ; $649f: $a0
	add hl, sp                                       ; $64a0: $39
	ld c, [hl]                                       ; $64a1: $4e
	ld e, b                                          ; $64a2: $58
	ld d, l                                          ; $64a3: $55
	ccf                                              ; $64a4: $3f
	xor h                                            ; $64a5: $ac
	ld d, h                                          ; $64a6: $54
	ld d, h                                          ; $64a7: $54
	ld e, e                                          ; $64a8: $5b
	ld d, [hl]                                       ; $64a9: $56
	pop af                                           ; $64aa: $f1
	add c                                            ; $64ab: $81
	ld h, c                                          ; $64ac: $61
	ldh a, [$ac]                                     ; $64ad: $f0 $ac
	ld e, l                                          ; $64af: $5d
	ld a, [hl-]                                      ; $64b0: $3a
	jr c, jr_091_64fb                                ; $64b1: $38 $48

	and b                                            ; $64b3: $a0
	ld d, h                                          ; $64b4: $54
	ld d, h                                          ; $64b5: $54
	ld e, e                                          ; $64b6: $5b
	ld d, [hl]                                       ; $64b7: $56
	inc [hl]                                         ; $64b8: $34
	ldh a, [$66]                                     ; $64b9: $f0 $66
	ldh a, [rKEY1]                                   ; $64bb: $f0 $4d
	ld c, a                                          ; $64bd: $4f
	inc de                                           ; $64be: $13
	inc a                                            ; $64bf: $3c
	ld l, h                                          ; $64c0: $6c
	ld a, $71                                        ; $64c1: $3e $71
	ld d, b                                          ; $64c3: $50
	ld c, l                                          ; $64c4: $4d
	ld a, [hl-]                                      ; $64c5: $3a
	jr c, jr_091_652b                                ; $64c6: $38 $63

	and b                                            ; $64c8: $a0
	cpl                                              ; $64c9: $2f
	ld b, e                                          ; $64ca: $43
	ret                                              ; $64cb: $c9


	xor h                                            ; $64cc: $ac
	xor $19                                          ; $64cd: $ee $19
	ldh a, [$d0]                                     ; $64cf: $f0 $d0
	pop af                                           ; $64d1: $f1
	cp [hl]                                          ; $64d2: $be
	ld b, h                                          ; $64d3: $44
	dec sp                                           ; $64d4: $3b
	dec a                                            ; $64d5: $3d
	inc a                                            ; $64d6: $3c
	ld a, [hl-]                                      ; $64d7: $3a
	and b                                            ; $64d8: $a0
	ldh a, [$98]                                     ; $64d9: $f0 $98
	inc a                                            ; $64db: $3c
	ld e, b                                          ; $64dc: $58
	ld b, c                                          ; $64dd: $41
	ld d, e                                          ; $64de: $53
	ld c, h                                          ; $64df: $4c
	ld c, b                                          ; $64e0: $48
	and b                                            ; $64e1: $a0
	ld h, h                                          ; $64e2: $64
	pop af                                           ; $64e3: $f1
	call c, Call_091_4158                            ; $64e4: $dc $58 $41
	inc de                                           ; $64e7: $13
	ldh a, [$66]                                     ; $64e8: $f0 $66
	ld b, c                                          ; $64ea: $41
	ld c, d                                          ; $64eb: $4a
	ld d, l                                          ; $64ec: $55
	ld c, l                                          ; $64ed: $4d
	dec a                                            ; $64ee: $3d
	ld l, h                                          ; $64ef: $6c
	dec a                                            ; $64f0: $3d
	jr c, jr_091_6493                                ; $64f1: $38 $a0

	cpl                                              ; $64f3: $2f
	ld b, e                                          ; $64f4: $43
	db $ec                                           ; $64f5: $ec
	cp c                                             ; $64f6: $b9
	xor b                                            ; $64f7: $a8
	add sp, -$7e                                     ; $64f8: $e8 $82
	and b                                            ; $64fa: $a0

jr_091_64fb:
	ld a, b                                          ; $64fb: $78
	ldh a, [rAUD1HIGH]                               ; $64fc: $f0 $14
	ld c, a                                          ; $64fe: $4f
	inc [hl]                                         ; $64ff: $34
	ld d, h                                          ; $6500: $54
	ld b, d                                          ; $6501: $42
	ldh a, [$75]                                     ; $6502: $f0 $75
	adc h                                            ; $6504: $8c
	ld c, d                                          ; $6505: $4a
	inc de                                           ; $6506: $13
	jr c, jr_091_6566                                ; $6507: $38 $5d

	ld c, l                                          ; $6509: $4d
	ld a, e                                          ; $650a: $7b
	jr c, @+$3a                                      ; $650b: $38 $38

	ld h, e                                          ; $650d: $63
	ld c, h                                          ; $650e: $4c
	and b                                            ; $650f: $a0
	cpl                                              ; $6510: $2f
	ld b, e                                          ; $6511: $43
	ld b, b                                          ; $6512: $40
	add hl, sp                                       ; $6513: $39
	ld b, h                                          ; $6514: $44
	ld c, h                                          ; $6515: $4c
	and b                                            ; $6516: $a0
	ld a, [hl-]                                      ; $6517: $3a
	ld b, c                                          ; $6518: $41
	ld b, h                                          ; $6519: $44
	inc a                                            ; $651a: $3c
	inc [hl]                                         ; $651b: $34
	ld h, h                                          ; $651c: $64
	pop af                                           ; $651d: $f1
	call c, Call_091_4158                            ; $651e: $dc $58 $41
	xor h                                            ; $6521: $ac
	ldh a, [c]                                       ; $6522: $f2
	cp h                                             ; $6523: $bc
	ld a, [$3ef1]                                    ; $6524: $fa $f1 $3e
	ccf                                              ; $6527: $3f
	dec a                                            ; $6528: $3d
	db $ec                                           ; $6529: $ec
	ld [de], a                                       ; $652a: $12

jr_091_652b:
	and b                                            ; $652b: $a0
	adc e                                            ; $652c: $8b
	ld l, h                                          ; $652d: $6c
	ld c, e                                          ; $652e: $4b
	add h                                            ; $652f: $84
	ld b, b                                          ; $6530: $40
	ld c, l                                          ; $6531: $4d
	sub a                                            ; $6532: $97
	ld c, l                                          ; $6533: $4d
	inc de                                           ; $6534: $13
	ld b, h                                          ; $6535: $44
	inc a                                            ; $6536: $3c
	ld d, b                                          ; $6537: $50
	ld c, h                                          ; $6538: $4c
	xor b                                            ; $6539: $a8
	ld a, b                                          ; $653a: $78
	ldh a, [rAUD1HIGH]                               ; $653b: $f0 $14
	ld c, e                                          ; $653d: $4b
	inc [hl]                                         ; $653e: $34
	ld c, a                                          ; $653f: $4f
	dec sp                                           ; $6540: $3b
	ld c, c                                          ; $6541: $49
	ldh a, [$3e]                                     ; $6542: $f0 $3e
	ldh a, [$0b]                                     ; $6544: $f0 $0b
	ld b, a                                          ; $6546: $47
	xor $2b                                          ; $6547: $ee $2b
	inc de                                           ; $6549: $13
	ld c, d                                          ; $654a: $4a
	ld e, h                                          ; $654b: $5c
	ld c, [hl]                                       ; $654c: $4e
	ld b, l                                          ; $654d: $45
	add hl, sp                                       ; $654e: $39
	ld b, a                                          ; $654f: $47
	ld a, $52                                        ; $6550: $3e $52
	ld a, $66                                        ; $6552: $3e $66
	add hl, sp                                       ; $6554: $39
	and b                                            ; $6555: $a0
	ld l, d                                          ; $6556: $6a
	ldh a, [rAUD1HIGH]                               ; $6557: $f0 $14
	ld b, d                                          ; $6559: $42
	ldh a, [$ed]                                     ; $655a: $f0 $ed
	ld c, e                                          ; $655c: $4b
	xor h                                            ; $655d: $ac
	ldh a, [$5d]                                     ; $655e: $f0 $5d
	ld h, e                                          ; $6560: $63
	dec sp                                           ; $6561: $3b
	ccf                                              ; $6562: $3f
	ld c, [hl]                                       ; $6563: $4e
	ld h, e                                          ; $6564: $63
	ld c, h                                          ; $6565: $4c

jr_091_6566:
	and b                                            ; $6566: $a0
	cpl                                              ; $6567: $2f
	ld b, e                                          ; $6568: $43
	ldh a, [c]                                       ; $6569: $f2
	ld l, [hl]                                       ; $656a: $6e
	ldh a, [rAUD1HIGH]                               ; $656b: $f0 $14
	db $eb                                           ; $656d: $eb
	ld h, l                                          ; $656e: $65
	inc de                                           ; $656f: $13
	ld b, h                                          ; $6570: $44
	dec sp                                           ; $6571: $3b
	dec a                                            ; $6572: $3d
	inc a                                            ; $6573: $3c
	ld d, b                                          ; $6574: $50
	xor h                                            ; $6575: $ac
	ldh a, [$cd]                                     ; $6576: $f0 $cd
	ld e, e                                          ; $6578: $5b
	db $ec                                           ; $6579: $ec
	ld l, l                                          ; $657a: $6d
	ld c, e                                          ; $657b: $4b
	ldh a, [$64]                                     ; $657c: $f0 $64
	db $ed                                           ; $657e: $ed
	ld b, e                                          ; $657f: $43
	inc de                                           ; $6580: $13
	adc a                                            ; $6581: $8f
	ldh a, [$62]                                     ; $6582: $f0 $62
	ld d, e                                          ; $6584: $53
	add d                                            ; $6585: $82
	dec sp                                           ; $6586: $3b
	ccf                                              ; $6587: $3f
	dec a                                            ; $6588: $3d
	ld b, l                                          ; $6589: $45
	and b                                            ; $658a: $a0
	ld e, d                                          ; $658b: $5a
	add hl, sp                                       ; $658c: $39
	db $ed                                           ; $658d: $ed
	adc e                                            ; $658e: $8b
	ld e, b                                          ; $658f: $58
	ld c, l                                          ; $6590: $4d
	ld c, [hl]                                       ; $6591: $4e
	inc a                                            ; $6592: $3c
	inc de                                           ; $6593: $13
	jp hl                                            ; $6594: $e9


	sbc e                                            ; $6595: $9b
	ld c, b                                          ; $6596: $48
	and b                                            ; $6597: $a0
	cpl                                              ; $6598: $2f
	ld b, e                                          ; $6599: $43
	halt                                             ; $659a: $76
	ldh a, [rSTAT]                                   ; $659b: $f0 $41
	ld c, e                                          ; $659d: $4b
	xor h                                            ; $659e: $ac
	ldh a, [$5f]                                     ; $659f: $f0 $5f
	ldh a, [$d7]                                     ; $65a1: $f0 $d7
	ld b, d                                          ; $65a3: $42
	pop af                                           ; $65a4: $f1
	xor l                                            ; $65a5: $ad
	pop af                                           ; $65a6: $f1
	and l                                            ; $65a7: $a5
	ld b, h                                          ; $65a8: $44
	inc a                                            ; $65a9: $3c
	ld d, b                                          ; $65aa: $50
	xor h                                            ; $65ab: $ac
	ldh a, [rVBK]                                    ; $65ac: $f0 $4f
	ldh a, [$8d]                                     ; $65ae: $f0 $8d
	ld d, a                                          ; $65b0: $57
	ld b, d                                          ; $65b1: $42
	ld a, [hl-]                                      ; $65b2: $3a
	jr c, jr_091_6604                                ; $65b3: $38 $4f

	ld b, d                                          ; $65b5: $42
	ld b, a                                          ; $65b6: $47
	ld a, $3d                                        ; $65b7: $3e $3d
	jr c, jr_091_6607                                ; $65b9: $38 $4c

	and b                                            ; $65bb: $a0
	call c, $38a8                                    ; $65bc: $dc $a8 $38
	ld d, d                                          ; $65bf: $52
	ld d, d                                          ; $65c0: $52
	ld c, d                                          ; $65c1: $4a
	sub d                                            ; $65c2: $92
	adc [hl]                                         ; $65c3: $8e
	dec sp                                           ; $65c4: $3b
	ccf                                              ; $65c5: $3f
	ld e, h                                          ; $65c6: $5c
	dec a                                            ; $65c7: $3d
	inc de                                           ; $65c8: $13
	pop af                                           ; $65c9: $f1
	ld d, e                                          ; $65ca: $53
	ldh a, [c]                                       ; $65cb: $f2
	ld b, [hl]                                       ; $65cc: $46
	ld h, d                                          ; $65cd: $62
	sub h                                            ; $65ce: $94
	ld e, b                                          ; $65cf: $58
	ld a, [hl-]                                      ; $65d0: $3a
	ld e, h                                          ; $65d1: $5c
	ld d, [hl]                                       ; $65d2: $56
	and b                                            ; $65d3: $a0
	cpl                                              ; $65d4: $2f
	ld b, e                                          ; $65d5: $43
	db $ec                                           ; $65d6: $ec
	push bc                                          ; $65d7: $c5
	inc [hl]                                         ; $65d8: $34
	ldh a, [rBGP]                                    ; $65d9: $f0 $47
	ldh a, [$2a]                                     ; $65db: $f0 $2a
	ld b, h                                          ; $65dd: $44
	xor b                                            ; $65de: $a8
	pop af                                           ; $65df: $f1
	ld a, c                                          ; $65e0: $79
	pop af                                           ; $65e1: $f1
	ld h, d                                          ; $65e2: $62
	ld a, $3a                                        ; $65e3: $3e $3a
	ld d, l                                          ; $65e5: $55
	ld h, c                                          ; $65e6: $61
	ld d, [hl]                                       ; $65e7: $56
	and b                                            ; $65e8: $a0
	or h                                             ; $65e9: $b4
	xor h                                            ; $65ea: $ac
	add sp, -$5d                                     ; $65eb: $e8 $a3
	and b                                            ; $65ed: $a0
	ld l, d                                          ; $65ee: $6a
	ldh a, [rAUD1HIGH]                               ; $65ef: $f0 $14
	ld c, d                                          ; $65f1: $4a
	inc de                                           ; $65f2: $13
	ldh a, [$5f]                                     ; $65f3: $f0 $5f
	ldh a, [$d7]                                     ; $65f5: $f0 $d7
	ld a, [hl-]                                      ; $65f7: $3a
	ld b, d                                          ; $65f8: $42
	ld b, l                                          ; $65f9: $45
	ld c, h                                          ; $65fa: $4c
	ld c, b                                          ; $65fb: $48
	and b                                            ; $65fc: $a0
	cpl                                              ; $65fd: $2f
	ld b, e                                          ; $65fe: $43
	ld b, b                                          ; $65ff: $40
	add hl, sp                                       ; $6600: $39
	ld b, h                                          ; $6601: $44
	ld c, h                                          ; $6602: $4c
	xor b                                            ; $6603: $a8

jr_091_6604:
	pop af                                           ; $6604: $f1
	ld a, [de]                                       ; $6605: $1a
	pop af                                           ; $6606: $f1

jr_091_6607:
	inc c                                            ; $6607: $0c
	ld b, a                                          ; $6608: $47
	pop af                                           ; $6609: $f1
	ld d, e                                          ; $660a: $53
	db $f4                                           ; $660b: $f4
	and b                                            ; $660c: $a0
	ld e, b                                          ; $660d: $58
	ld a, c                                          ; $660e: $79
	ld a, [hl-]                                      ; $660f: $3a
	ld e, h                                          ; $6610: $5c
	ld d, [hl]                                       ; $6611: $56
	and b                                            ; $6612: $a0
	call c, $e8a8                                    ; $6613: $dc $a8 $e8
	and e                                            ; $6616: $a3
	and b                                            ; $6617: $a0
	ld c, a                                          ; $6618: $4f
	add hl, sp                                       ; $6619: $39
	ld d, c                                          ; $661a: $51
	sbc l                                            ; $661b: $9d
	xor h                                            ; $661c: $ac
	ldh a, [$5f]                                     ; $661d: $f0 $5f
	ldh a, [$d7]                                     ; $661f: $f0 $d7
	ld b, d                                          ; $6621: $42
	pop af                                           ; $6622: $f1
	xor l                                            ; $6623: $ad
	pop af                                           ; $6624: $f1
	and l                                            ; $6625: $a5
	ld b, h                                          ; $6626: $44
	ld h, e                                          ; $6627: $63
	and b                                            ; $6628: $a0
	cpl                                              ; $6629: $2f
	ld b, e                                          ; $662a: $43
	ld c, h                                          ; $662b: $4c
	add l                                            ; $662c: $85
	xor h                                            ; $662d: $ac
	ld l, d                                          ; $662e: $6a
	ldh a, [rAUD1HIGH]                               ; $662f: $f0 $14
	ld c, e                                          ; $6631: $4b
	ld d, d                                          ; $6632: $52
	dec a                                            ; $6633: $3d
	ldh a, [$5d]                                     ; $6634: $f0 $5d
	ld h, e                                          ; $6636: $63
	dec sp                                           ; $6637: $3b
	dec a                                            ; $6638: $3d
	ldh a, [$ed]                                     ; $6639: $f0 $ed
	ld b, h                                          ; $663b: $44
	ld c, h                                          ; $663c: $4c
	and b                                            ; $663d: $a0
	ldh a, [$5f]                                     ; $663e: $f0 $5f
	ldh a, [$d7]                                     ; $6640: $f0 $d7
	ld b, d                                          ; $6642: $42
	pop af                                           ; $6643: $f1
	xor l                                            ; $6644: $ad
	pop af                                           ; $6645: $f1
	and l                                            ; $6646: $a5
	ld d, e                                          ; $6647: $53
	inc de                                           ; $6648: $13
	ldh a, [$ce]                                     ; $6649: $f0 $ce
	ld h, e                                          ; $664b: $63
	dec sp                                           ; $664c: $3b
	ccf                                              ; $664d: $3f
	inc [hl]                                         ; $664e: $34
	db $ed                                           ; $664f: $ed
	ld e, l                                          ; $6650: $5d
	ld b, d                                          ; $6651: $42
	ldh a, [$f6]                                     ; $6652: $f0 $f6
	pop af                                           ; $6654: $f1
	inc [hl]                                         ; $6655: $34
	ld b, a                                          ; $6656: $47
	inc de                                           ; $6657: $13
	push af                                          ; $6658: $f5
	ld h, e                                          ; $6659: $63
	dec sp                                           ; $665a: $3b
	ccf                                              ; $665b: $3f
	ld c, [hl]                                       ; $665c: $4e
	ld b, d                                          ; $665d: $42
	ld b, a                                          ; $665e: $47
	ld c, b                                          ; $665f: $48
	and b                                            ; $6660: $a0
	cpl                                              ; $6661: $2f
	ld b, e                                          ; $6662: $43
	ret                                              ; $6663: $c9


	xor h                                            ; $6664: $ac
	xor $19                                          ; $6665: $ee $19
	ldh a, [$d0]                                     ; $6667: $f0 $d0
	pop af                                           ; $6669: $f1
	cp [hl]                                          ; $666a: $be
	ld b, h                                          ; $666b: $44
	dec sp                                           ; $666c: $3b
	dec a                                            ; $666d: $3d
	inc a                                            ; $666e: $3c
	ld a, [hl-]                                      ; $666f: $3a
	ld c, b                                          ; $6670: $48
	and b                                            ; $6671: $a0
	ld c, a                                          ; $6672: $4f
	add hl, sp                                       ; $6673: $39
	xor b                                            ; $6674: $a8
	ldh a, [$5f]                                     ; $6675: $f0 $5f
	ldh a, [$d7]                                     ; $6677: $f0 $d7
	ld b, d                                          ; $6679: $42
	pop af                                           ; $667a: $f1
	xor l                                            ; $667b: $ad
	pop af                                           ; $667c: $f1
	and l                                            ; $667d: $a5
	sbc l                                            ; $667e: $9d
	ld d, b                                          ; $667f: $50
	jr c, jr_091_6695                                ; $6680: $38 $13

	add hl, sp                                       ; $6682: $39
	ld d, d                                          ; $6683: $52
	ld d, l                                          ; $6684: $55
	ld l, [hl]                                       ; $6685: $6e
	dec sp                                           ; $6686: $3b
	ccf                                              ; $6687: $3f
	ld b, l                                          ; $6688: $45
	and b                                            ; $6689: $a0
	ldh a, [$5f]                                     ; $668a: $f0 $5f
	ldh a, [$d7]                                     ; $668c: $f0 $d7
	ld b, d                                          ; $668e: $42
	pop af                                           ; $668f: $f1
	xor l                                            ; $6690: $ad
	pop af                                           ; $6691: $f1
	and l                                            ; $6692: $a5
	ld d, e                                          ; $6693: $53
	inc de                                           ; $6694: $13

jr_091_6695:
	add hl, sp                                       ; $6695: $39
	ld d, d                                          ; $6696: $52
	ld d, l                                          ; $6697: $55
	jr c, @+$3d                                      ; $6698: $38 $3b

	ccf                                              ; $669a: $3f
	db $ec                                           ; $669b: $ec
	cp c                                             ; $669c: $b9
	ld h, e                                          ; $669d: $63
	and b                                            ; $669e: $a0
	ld a, [hl-]                                      ; $669f: $3a
	ld b, c                                          ; $66a0: $41
	ld b, h                                          ; $66a1: $44
	inc a                                            ; $66a2: $3c
	inc [hl]                                         ; $66a3: $34
	ld h, h                                          ; $66a4: $64
	pop af                                           ; $66a5: $f1
	call c, Call_091_4158                            ; $66a6: $dc $58 $41
	ld d, e                                          ; $66a9: $53
	xor h                                            ; $66aa: $ac
	ldh a, [c]                                       ; $66ab: $f2
	cp h                                             ; $66ac: $bc
	ld a, [$3ef1]                                    ; $66ad: $fa $f1 $3e
	ccf                                              ; $66b0: $3f
	dec a                                            ; $66b1: $3d
	db $ec                                           ; $66b2: $ec
	ld [de], a                                       ; $66b3: $12
	and b                                            ; $66b4: $a0
	cpl                                              ; $66b5: $2f
	ld b, e                                          ; $66b6: $43
	ldh a, [$5f]                                     ; $66b7: $f0 $5f
	ldh a, [$d7]                                     ; $66b9: $f0 $d7
	ld b, d                                          ; $66bb: $42
	pop af                                           ; $66bc: $f1
	xor l                                            ; $66bd: $ad
	pop af                                           ; $66be: $f1
	and l                                            ; $66bf: $a5
	inc de                                           ; $66c0: $13
	ld b, h                                          ; $66c1: $44
	dec sp                                           ; $66c2: $3b
	dec a                                            ; $66c3: $3d
	ld b, d                                          ; $66c4: $42
	ld b, a                                          ; $66c5: $47
	xor h                                            ; $66c6: $ac
	ld l, e                                          ; $66c7: $6b
	ld b, h                                          ; $66c8: $44
	inc a                                            ; $66c9: $3c
	ldh a, [rVBK]                                    ; $66ca: $f0 $4f
	ldh a, [$8d]                                     ; $66cc: $f0 $8d
	ld d, a                                          ; $66ce: $57
	ld b, h                                          ; $66cf: $44
	ld c, h                                          ; $66d0: $4c
	ld c, b                                          ; $66d1: $48
	and b                                            ; $66d2: $a0
	call c, Call_091_4fad                            ; $66d3: $dc $ad $4f
	dec sp                                           ; $66d6: $3b
	ld c, c                                          ; $66d7: $49
	inc [hl]                                         ; $66d8: $34
	xor $19                                          ; $66d9: $ee $19
	ld a, $3f                                        ; $66db: $3e $3f
	ld h, h                                          ; $66dd: $64
	ld e, l                                          ; $66de: $5d
	ld a, e                                          ; $66df: $7b
	inc de                                           ; $66e0: $13
	db $ec                                           ; $66e1: $ec
	cp c                                             ; $66e2: $b9
	ld c, b                                          ; $66e3: $48
	and b                                            ; $66e4: $a0
	cpl                                              ; $66e5: $2f
	ld b, e                                          ; $66e6: $43
	ld [hl], b                                       ; $66e7: $70
	ld [hl], c                                       ; $66e8: $71
	ld b, c                                          ; $66e9: $41
	xor l                                            ; $66ea: $ad
	halt                                             ; $66eb: $76
	ld b, d                                          ; $66ec: $42
	ld a, c                                          ; $66ed: $79
	jr c, jr_091_6734                                ; $66ee: $38 $44

	ld b, l                                          ; $66f0: $45
	and b                                            ; $66f1: $a0
	ld b, b                                          ; $66f2: $40
	ld b, c                                          ; $66f3: $41
	ld a, [hl-]                                      ; $66f4: $3a
	ld d, h                                          ; $66f5: $54
	ld c, c                                          ; $66f6: $49
	add d                                            ; $66f7: $82
	ld h, e                                          ; $66f8: $63
	ld a, [hl-]                                      ; $66f9: $3a
	jr c, jr_091_673e                                ; $66fa: $38 $42

	xor b                                            ; $66fc: $a8
	ldh a, [$98]                                     ; $66fd: $f0 $98
	ld b, d                                          ; $66ff: $42
	ld a, c                                          ; $6700: $79
	jr c, jr_091_674d                                ; $6701: $38 $4a

	ld c, a                                          ; $6703: $4f
	inc de                                           ; $6704: $13
	ld a, [hl-]                                      ; $6705: $3a
	jr c, jr_091_6749                                ; $6706: $38 $41

	ld b, h                                          ; $6708: $44
	inc a                                            ; $6709: $3c
	ld d, b                                          ; $670a: $50
	and b                                            ; $670b: $a0
	cpl                                              ; $670c: $2f
	ld b, e                                          ; $670d: $43
	ld b, [hl]                                       ; $670e: $46
	ld d, a                                          ; $670f: $57
	ld d, e                                          ; $6710: $53
	ld c, c                                          ; $6711: $49
	add hl, sp                                       ; $6712: $39
	xor b                                            ; $6713: $a8
	ld a, a                                          ; $6714: $7f
	ld h, d                                          ; $6715: $62
	pop af                                           ; $6716: $f1
	sbc l                                            ; $6717: $9d
	dec sp                                           ; $6718: $3b
	ccf                                              ; $6719: $3f
	ld d, l                                          ; $671a: $55
	ld c, l                                          ; $671b: $4d
	ccf                                              ; $671c: $3f
	ld c, b                                          ; $671d: $48
	and b                                            ; $671e: $a0
	cpl                                              ; $671f: $2f
	ld b, e                                          ; $6720: $43
	ld b, [hl]                                       ; $6721: $46
	dec sp                                           ; $6722: $3b
	inc [hl]                                         ; $6723: $34
	db $ed                                           ; $6724: $ed
	xor c                                            ; $6725: $a9
	xor b                                            ; $6726: $a8
	pop af                                           ; $6727: $f1
	ld h, [hl]                                       ; $6728: $66
	jr c, @+$41                                      ; $6729: $38 $3f

	ccf                                              ; $672b: $3f
	ld d, l                                          ; $672c: $55
	ld c, l                                          ; $672d: $4d
	dec a                                            ; $672e: $3d
	ld b, c                                          ; $672f: $41
	ld b, h                                          ; $6730: $44
	dec [hl]                                         ; $6731: $35
	db $eb                                           ; $6732: $eb
	ld d, b                                          ; $6733: $50

Jump_091_6734:
jr_091_6734:
	and c                                            ; $6734: $a1
	ld d, c                                          ; $6735: $51
	ld [hl], b                                       ; $6736: $70
	ld d, l                                          ; $6737: $55
	inc [hl]                                         ; $6738: $34
	db $ec                                           ; $6739: $ec
	cp c                                             ; $673a: $b9
	ld e, l                                          ; $673b: $5d
	ld e, d                                          ; $673c: $5a
	xor h                                            ; $673d: $ac

jr_091_673e:
	ld l, e                                          ; $673e: $6b
	ld b, d                                          ; $673f: $42
	ldh a, [$ed]                                     ; $6740: $f0 $ed
	inc a                                            ; $6742: $3c
	xor h                                            ; $6743: $ac
	ldh a, [rTAC]                                    ; $6744: $f0 $07
	inc a                                            ; $6746: $3c
	ld d, b                                          ; $6747: $50
	ld a, [hl-]                                      ; $6748: $3a

jr_091_6749:
	inc a                                            ; $6749: $3c
	dec sp                                           ; $674a: $3b
	dec a                                            ; $674b: $3d
	ld h, e                                          ; $674c: $63

jr_091_674d:
	and b                                            ; $674d: $a0
	cpl                                              ; $674e: $2f
	ld b, e                                          ; $674f: $43
	ldh a, [$31]                                     ; $6750: $f0 $31
	ld c, e                                          ; $6752: $4b
	xor h                                            ; $6753: $ac
	ldh a, [$6d]                                     ; $6754: $f0 $6d
	ld e, c                                          ; $6756: $59
	ldh a, [$27]                                     ; $6757: $f0 $27
	ld b, d                                          ; $6759: $42
	ldh a, [$99]                                     ; $675a: $f0 $99
	sub b                                            ; $675c: $90
	ld a, [hl-]                                      ; $675d: $3a
	ld b, c                                          ; $675e: $41
	ld b, h                                          ; $675f: $44
	and b                                            ; $6760: $a0
	jp hl                                            ; $6761: $e9


	rst SubAFromBC                                          ; $6762: $e7
	xor l                                            ; $6763: $ad
	ld d, h                                          ; $6764: $54
	ld c, l                                          ; $6765: $4d
	inc a                                            ; $6766: $3c
	ld d, b                                          ; $6767: $50
	inc [hl]                                         ; $6768: $34
	ld [$a187], a                                    ; $6769: $ea $87 $a1
	cpl                                              ; $676c: $2f
	ld b, e                                          ; $676d: $43
	ld d, h                                          ; $676e: $54
	ld c, l                                          ; $676f: $4d
	inc a                                            ; $6770: $3c
	ld d, b                                          ; $6771: $50
	xor h                                            ; $6772: $ac
	add sp, -$57                                     ; $6773: $e8 $a9
	and b                                            ; $6775: $a0
	ld b, b                                          ; $6776: $40
	add hl, sp                                       ; $6777: $39
	ld c, b                                          ; $6778: $48
	inc [hl]                                         ; $6779: $34
	xor $06                                          ; $677a: $ee $06
	ld b, a                                          ; $677c: $47
	inc de                                           ; $677d: $13
	ld [hl], d                                       ; $677e: $72
	adc c                                            ; $677f: $89
	ld a, $3d                                        ; $6780: $3e $3d
	inc a                                            ; $6782: $3c
	dec sp                                           ; $6783: $3b
	dec a                                            ; $6784: $3d
	ld e, l                                          ; $6785: $5d
	ld e, d                                          ; $6786: $5a
	xor l                                            ; $6787: $ad
	ldh a, [$8d]                                     ; $6788: $f0 $8d
	ldh a, [$9e]                                     ; $678a: $f0 $9e
	ld c, h                                          ; $678c: $4c
	ld c, b                                          ; $678d: $48
	and b                                            ; $678e: $a0
	cpl                                              ; $678f: $2f
	ld b, e                                          ; $6790: $43
	ld [hl], b                                       ; $6791: $70
	ld [hl], c                                       ; $6792: $71
	ld b, c                                          ; $6793: $41
	ld c, h                                          ; $6794: $4c
	xor b                                            ; $6795: $a8
	db $ec                                           ; $6796: $ec
	add hl, bc                                       ; $6797: $09
	inc de                                           ; $6798: $13
	ld [$4888], a                                    ; $6799: $ea $88 $48
	and b                                            ; $679c: $a0
	add hl, sp                                       ; $679d: $39
	xor $1f                                          ; $679e: $ee $1f
	inc [hl]                                         ; $67a0: $34
	jr c, jr_091_67db                                ; $67a1: $38 $38

	ld b, d                                          ; $67a3: $42
	xor b                                            ; $67a4: $a8
	ld b, b                                          ; $67a5: $40
	ld c, l                                          ; $67a6: $4d
	ld e, e                                          ; $67a7: $5b
	ld d, [hl]                                       ; $67a8: $56
	and b                                            ; $67a9: $a0
	jp hl                                            ; $67aa: $e9


	rst SubAFromBC                                          ; $67ab: $e7
	xor l                                            ; $67ac: $ad
	ld d, h                                          ; $67ad: $54
	ld c, l                                          ; $67ae: $4d
	inc a                                            ; $67af: $3c
	ld d, b                                          ; $67b0: $50
	xor h                                            ; $67b1: $ac
	ld l, e                                          ; $67b2: $6b
	inc a                                            ; $67b3: $3c
	inc [hl]                                         ; $67b4: $34
	ldh a, [$cc]                                     ; $67b5: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $67b7: $f0 $88
	ld b, [hl]                                       ; $67b9: $46
	ld c, [hl]                                       ; $67ba: $4e
	ld b, d                                          ; $67bb: $42
	and c                                            ; $67bc: $a1
	cpl                                              ; $67bd: $2f
	ld b, e                                          ; $67be: $43
	ld d, h                                          ; $67bf: $54
	ld c, l                                          ; $67c0: $4d
	inc a                                            ; $67c1: $3c
	ld d, b                                          ; $67c2: $50
	xor h                                            ; $67c3: $ac
	add sp, -$57                                     ; $67c4: $e8 $a9
	xor b                                            ; $67c6: $a8
	db $eb                                           ; $67c7: $eb
	rst FarCall                                          ; $67c8: $f7
	ld c, b                                          ; $67c9: $48
	and c                                            ; $67ca: $a1
	ldh a, [$8c]                                     ; $67cb: $f0 $8c
	inc [hl]                                         ; $67cd: $34
	ldh a, [$34]                                     ; $67ce: $f0 $34
	ld b, a                                          ; $67d0: $47
	inc [hl]                                         ; $67d1: $34
	jr c, jr_091_680c                                ; $67d2: $38 $38

	ld b, d                                          ; $67d4: $42
	xor l                                            ; $67d5: $ad
	ld b, b                                          ; $67d6: $40
	ld c, l                                          ; $67d7: $4d
	ld e, e                                          ; $67d8: $5b
	ld d, [hl]                                       ; $67d9: $56
	inc [hl]                                         ; $67da: $34

jr_091_67db:
	ld c, a                                          ; $67db: $4f
	add hl, sp                                       ; $67dc: $39
	ld h, a                                          ; $67dd: $67
	ld d, l                                          ; $67de: $55
	ld c, h                                          ; $67df: $4c
	and b                                            ; $67e0: $a0
	jp hl                                            ; $67e1: $e9


	rst SubAFromBC                                          ; $67e2: $e7
	xor l                                            ; $67e3: $ad
	ld b, [hl]                                       ; $67e4: $46
	dec sp                                           ; $67e5: $3b
	inc [hl]                                         ; $67e6: $34
	jp hl                                            ; $67e7: $e9


	inc a                                            ; $67e8: $3c
	ld c, b                                          ; $67e9: $48
	and b                                            ; $67ea: $a0
	ld d, $a8                                        ; $67eb: $16 $a8
	ld l, d                                          ; $67ed: $6a
	ld b, d                                          ; $67ee: $42
	xor $2b                                          ; $67ef: $ee $2b
	inc [hl]                                         ; $67f1: $34
	pop af                                           ; $67f2: $f1
	ld h, [hl]                                       ; $67f3: $66
	jr c, jr_091_6835                                ; $67f4: $38 $3f

	dec a                                            ; $67f6: $3d
	ld h, e                                          ; $67f7: $63
	ld b, l                                          ; $67f8: $45
	and b                                            ; $67f9: $a0
	cpl                                              ; $67fa: $2f
	ld b, e                                          ; $67fb: $43
	ld b, [hl]                                       ; $67fc: $46
	dec sp                                           ; $67fd: $3b
	inc [hl]                                         ; $67fe: $34
	db $ed                                           ; $67ff: $ed
	xor c                                            ; $6800: $a9
	xor b                                            ; $6801: $a8
	ld c, d                                          ; $6802: $4a
	inc [hl]                                         ; $6803: $34
	db $ed                                           ; $6804: $ed
	ld [hl], a                                       ; $6805: $77
	ld c, e                                          ; $6806: $4b
	and c                                            ; $6807: $a1
	db $ec                                           ; $6808: $ec
	cp c                                             ; $6809: $b9
	ld b, c                                          ; $680a: $41
	ld b, h                                          ; $680b: $44

jr_091_680c:
	ld e, l                                          ; $680c: $5d
	ld e, d                                          ; $680d: $5a
	xor h                                            ; $680e: $ac
	ld l, e                                          ; $680f: $6b
	ld b, d                                          ; $6810: $42
	ldh a, [$ed]                                     ; $6811: $f0 $ed
	ld b, h                                          ; $6813: $44
	dec sp                                           ; $6814: $3b
	dec a                                            ; $6815: $3d
	ld b, d                                          ; $6816: $42
	and c                                            ; $6817: $a1
	jp hl                                            ; $6818: $e9


	rst SubAFromBC                                          ; $6819: $e7
	xor l                                            ; $681a: $ad
	jp hl                                            ; $681b: $e9


	ret z                                            ; $681c: $c8

	xor h                                            ; $681d: $ac
	db $eb                                           ; $681e: $eb
	adc e                                            ; $681f: $8b
	and b                                            ; $6820: $a0
	cpl                                              ; $6821: $2f
	ld b, e                                          ; $6822: $43
	ld b, [hl]                                       ; $6823: $46
	dec sp                                           ; $6824: $3b
	inc [hl]                                         ; $6825: $34
	db $ed                                           ; $6826: $ed
	xor c                                            ; $6827: $a9
	xor b                                            ; $6828: $a8
	db $eb                                           ; $6829: $eb
	ld d, b                                          ; $682a: $50
	and c                                            ; $682b: $a1
	db $ec                                           ; $682c: $ec
	cp c                                             ; $682d: $b9
	ld e, l                                          ; $682e: $5d
	ld e, d                                          ; $682f: $5a
	xor h                                            ; $6830: $ac
	ld l, e                                          ; $6831: $6b
	ld b, d                                          ; $6832: $42
	ldh a, [$ed]                                     ; $6833: $f0 $ed

jr_091_6835:
	inc a                                            ; $6835: $3c
	inc [hl]                                         ; $6836: $34
	ldh a, [rTAC]                                    ; $6837: $f0 $07
	inc a                                            ; $6839: $3c
	ld d, b                                          ; $683a: $50
	ld a, [hl-]                                      ; $683b: $3a
	inc a                                            ; $683c: $3c
	dec sp                                           ; $683d: $3b
	dec a                                            ; $683e: $3d
	ld h, e                                          ; $683f: $63
	and b                                            ; $6840: $a0
	ret nz                                           ; $6841: $c0

	xor b                                            ; $6842: $a8
	ld b, [hl]                                       ; $6843: $46
	dec sp                                           ; $6844: $3b
	inc [hl]                                         ; $6845: $34
	add sp, -$64                                     ; $6846: $e8 $9c
	and b                                            ; $6848: $a0
	cpl                                              ; $6849: $2f
	ld b, e                                          ; $684a: $43
	ld b, [hl]                                       ; $684b: $46
	dec sp                                           ; $684c: $3b
	inc [hl]                                         ; $684d: $34
	db $ed                                           ; $684e: $ed
	xor c                                            ; $684f: $a9
	xor b                                            ; $6850: $a8
	pop af                                           ; $6851: $f1
	ld h, [hl]                                       ; $6852: $66
	jr c, jr_091_6894                                ; $6853: $38 $3f

	ccf                                              ; $6855: $3f
	ld d, l                                          ; $6856: $55
	ld c, l                                          ; $6857: $4d
	dec a                                            ; $6858: $3d
	ld b, c                                          ; $6859: $41
	ld b, h                                          ; $685a: $44
	xor b                                            ; $685b: $a8
	db $eb                                           ; $685c: $eb
	ld d, b                                          ; $685d: $50
	and c                                            ; $685e: $a1
	db $ed                                           ; $685f: $ed
	ld h, l                                          ; $6860: $65
	db $eb                                           ; $6861: $eb
	ld d, [hl]                                       ; $6862: $56
	xor l                                            ; $6863: $ad
	ld [$4437], a                                    ; $6864: $ea $37 $44
	dec sp                                           ; $6867: $3b
	dec a                                            ; $6868: $3d
	ld b, l                                          ; $6869: $45
	and b                                            ; $686a: $a0
	cpl                                              ; $686b: $2f
	ld b, e                                          ; $686c: $43
	ld b, b                                          ; $686d: $40
	ld d, h                                          ; $686e: $54
	ld d, d                                          ; $686f: $52
	ld c, d                                          ; $6870: $4a
	xor h                                            ; $6871: $ac
	pop af                                           ; $6872: $f1
	db $d3                                           ; $6873: $d3
	ld [hl], c                                       ; $6874: $71
	ccf                                              ; $6875: $3f
	ld d, l                                          ; $6876: $55
	ld c, l                                          ; $6877: $4d
	ld c, [hl]                                       ; $6878: $4e
	ld a, [hl-]                                      ; $6879: $3a
	ld b, c                                          ; $687a: $41
	ccf                                              ; $687b: $3f
	xor b                                            ; $687c: $a8
	add sp, -$7c                                     ; $687d: $e8 $84
	and b                                            ; $687f: $a0
	db $eb                                           ; $6880: $eb
	ld d, h                                          ; $6881: $54
	inc de                                           ; $6882: $13
	xor $2b                                          ; $6883: $ee $2b
	ld b, h                                          ; $6885: $44
	dec sp                                           ; $6886: $3b
	dec a                                            ; $6887: $3d
	ld h, e                                          ; $6888: $63
	xor b                                            ; $6889: $a8
	ret                                              ; $688a: $c9


	db $ed                                           ; $688b: $ed
	ld h, l                                          ; $688c: $65
	db $eb                                           ; $688d: $eb
	ld d, [hl]                                       ; $688e: $56
	and b                                            ; $688f: $a0
	ld d, $a8                                        ; $6890: $16 $a8
	ld l, d                                          ; $6892: $6a
	ld b, d                                          ; $6893: $42

jr_091_6894:
	xor $2b                                          ; $6894: $ee $2b
	inc [hl]                                         ; $6896: $34
	ldh a, [$0c]                                     ; $6897: $f0 $0c
	jr c, jr_091_68da                                ; $6899: $38 $3f

	dec a                                            ; $689b: $3d
	ld h, e                                          ; $689c: $63
	ld b, l                                          ; $689d: $45
	and b                                            ; $689e: $a0
	jr c, jr_091_68d9                                ; $689f: $38 $38

	ld b, c                                          ; $68a1: $41
	db $ec                                           ; $68a2: $ec
	ret c                                            ; $68a3: $d8

	xor b                                            ; $68a4: $a8
	ldh a, [$0c]                                     ; $68a5: $f0 $0c
	jr c, jr_091_68e8                                ; $68a7: $38 $3f

	ccf                                              ; $68a9: $3f
	xor h                                            ; $68aa: $ac
	pop af                                           ; $68ab: $f1
	rra                                              ; $68ac: $1f
	ld a, a                                          ; $68ad: $7f
	ld d, e                                          ; $68ae: $53
	sub h                                            ; $68af: $94
	ccf                                              ; $68b0: $3f
	ld e, h                                          ; $68b1: $5c
	ld b, b                                          ; $68b2: $40
	add hl, sp                                       ; $68b3: $39
	ld a, [hl-]                                      ; $68b4: $3a
	ldh a, [$78]                                     ; $68b5: $f0 $78
	ld e, e                                          ; $68b7: $5b
	ld c, d                                          ; $68b8: $4a
	and b                                            ; $68b9: $a0
	cpl                                              ; $68ba: $2f
	ld b, e                                          ; $68bb: $43
	db $ec                                           ; $68bc: $ec
	cp c                                             ; $68bd: $b9
	xor b                                            ; $68be: $a8
	add sp, -$7c                                     ; $68bf: $e8 $84
	and b                                            ; $68c1: $a0
	cpl                                              ; $68c2: $2f
	ld b, e                                          ; $68c3: $43
	ld b, [hl]                                       ; $68c4: $46
	dec sp                                           ; $68c5: $3b
	inc [hl]                                         ; $68c6: $34
	db $ed                                           ; $68c7: $ed
	xor c                                            ; $68c8: $a9
	xor b                                            ; $68c9: $a8
	ldh a, [$0c]                                     ; $68ca: $f0 $0c
	jr c, jr_091_690d                                ; $68cc: $38 $3f

	ccf                                              ; $68ce: $3f
	ld d, l                                          ; $68cf: $55
	ld c, l                                          ; $68d0: $4d

jr_091_68d1:
	dec a                                            ; $68d1: $3d
	ld b, c                                          ; $68d2: $41
	ld b, h                                          ; $68d3: $44
	xor b                                            ; $68d4: $a8
	db $eb                                           ; $68d5: $eb
	ld d, b                                          ; $68d6: $50
	and c                                            ; $68d7: $a1
	db $ed                                           ; $68d8: $ed

jr_091_68d9:
	ld h, l                                          ; $68d9: $65

jr_091_68da:
	db $eb                                           ; $68da: $eb
	ld d, [hl]                                       ; $68db: $56
	xor l                                            ; $68dc: $ad
	ld [$4437], a                                    ; $68dd: $ea $37 $44
	dec sp                                           ; $68e0: $3b
	dec a                                            ; $68e1: $3d
	ld b, l                                          ; $68e2: $45
	xor b                                            ; $68e3: $a8
	ld [hl], a                                       ; $68e4: $77
	ld h, e                                          ; $68e5: $63
	sbc h                                            ; $68e6: $9c
	inc [hl]                                         ; $68e7: $34

jr_091_68e8:
	ldh a, [$7e]                                     ; $68e8: $f0 $7e
	ld h, l                                          ; $68ea: $65
	ld c, c                                          ; $68eb: $49
	ld e, h                                          ; $68ec: $5c
	ld h, c                                          ; $68ed: $61
	ld d, [hl]                                       ; $68ee: $56
	dec sp                                           ; $68ef: $3b
	dec a                                            ; $68f0: $3d
	and b                                            ; $68f1: $a0
	db $ec                                           ; $68f2: $ec
	cp c                                             ; $68f3: $b9
	ld h, e                                          ; $68f4: $63
	xor b                                            ; $68f5: $a8
	jr c, @+$3a                                      ; $68f6: $38 $38

	xor $2b                                          ; $68f8: $ee $2b
	ld b, h                                          ; $68fa: $44
	dec sp                                           ; $68fb: $3b
	dec a                                            ; $68fc: $3d
	ld c, a                                          ; $68fd: $4f
	ld b, d                                          ; $68fe: $42
	and b                                            ; $68ff: $a0
	db $ed                                           ; $6900: $ed
	ld h, d                                          ; $6901: $62
	ld d, e                                          ; $6902: $53
	xor h                                            ; $6903: $ac
	db $ec                                           ; $6904: $ec
	ret nc                                           ; $6905: $d0

	ld b, a                                          ; $6906: $47
	jr c, jr_091_6957                                ; $6907: $38 $4e

	ld b, d                                          ; $6909: $42
	ld b, l                                          ; $690a: $45
	xor b                                            ; $690b: $a8
	ld b, [hl]                                       ; $690c: $46

jr_091_690d:
	dec sp                                           ; $690d: $3b
	inc [hl]                                         ; $690e: $34
	ldh a, [$35]                                     ; $690f: $f0 $35
	ldh a, [rOCPD]                                   ; $6911: $f0 $6b
	ldh a, [rP1]                                     ; $6913: $f0 $00
	ld e, c                                          ; $6915: $59
	ld [hl], e                                       ; $6916: $73
	and b                                            ; $6917: $a0
	cpl                                              ; $6918: $2f
	ld b, e                                          ; $6919: $43
	xor $2b                                          ; $691a: $ee $2b
	ldh a, [rAUD2HIGH]                               ; $691c: $f0 $19
	xor h                                            ; $691e: $ac
	db $ec                                           ; $691f: $ec
	ld hl, $a9ed                                     ; $6920: $21 $ed $a9
	db $ec                                           ; $6923: $ec
	inc hl                                           ; $6924: $23
	xor b                                            ; $6925: $a8
	pop af                                           ; $6926: $f1
	ld h, [hl]                                       ; $6927: $66
	ld e, h                                          ; $6928: $5c
	ld b, a                                          ; $6929: $47
	ld a, b                                          ; $692a: $78
	ccf                                              ; $692b: $3f
	dec a                                            ; $692c: $3d
	ld l, h                                          ; $692d: $6c
	dec a                                            ; $692e: $3d
	jr c, jr_091_68d1                                ; $692f: $38 $a0

	ld d, h                                          ; $6931: $54
	ld c, l                                          ; $6932: $4d
	inc a                                            ; $6933: $3c
	ld d, b                                          ; $6934: $50
	xor h                                            ; $6935: $ac
	ld [$a187], a                                    ; $6936: $ea $87 $a1
	ld d, h                                          ; $6939: $54
	ld c, l                                          ; $693a: $4d
	inc a                                            ; $693b: $3c
	ld d, b                                          ; $693c: $50
	xor h                                            ; $693d: $ac
	ld l, e                                          ; $693e: $6b
	inc a                                            ; $693f: $3c
	inc [hl]                                         ; $6940: $34
	ldh a, [$cc]                                     ; $6941: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6943: $f0 $88
	ld b, [hl]                                       ; $6945: $46
	ld c, [hl]                                       ; $6946: $4e
	ld b, d                                          ; $6947: $42
	and c                                            ; $6948: $a1
	jp hl                                            ; $6949: $e9


	ret z                                            ; $694a: $c8

	xor h                                            ; $694b: $ac
	db $eb                                           ; $694c: $eb
	adc e                                            ; $694d: $8b
	and b                                            ; $694e: $a0
	add hl, bc                                       ; $694f: $09
	cpl                                              ; $6950: $2f
	ld b, e                                          ; $6951: $43
	ld e, b                                          ; $6952: $58
	ccf                                              ; $6953: $3f
	xor h                                            ; $6954: $ac
	xor $1d                                          ; $6955: $ee $1d

jr_091_6957:
	ld c, a                                          ; $6957: $4f
	ld a, $3d                                        ; $6958: $3e $3d
	ld d, h                                          ; $695a: $54
	ld c, c                                          ; $695b: $49
	ld b, h                                          ; $695c: $44
	ld a, $ac                                        ; $695d: $3e $ac
	db $ec                                           ; $695f: $ec
	ret nc                                           ; $6960: $d0

	ldh a, [$5a]                                     ; $6961: $f0 $5a
	ld h, a                                          ; $6963: $67
	ld d, l                                          ; $6964: $55
	inc a                                            ; $6965: $3c
	and b                                            ; $6966: $a0
	cpl                                              ; $6967: $2f
	ld b, e                                          ; $6968: $43
	ld h, h                                          ; $6969: $64
	dec sp                                           ; $696a: $3b
	inc [hl]                                         ; $696b: $34
	db $ec                                           ; $696c: $ec
	db $10                                           ; $696d: $10
	xor h                                            ; $696e: $ac
	xor $2b                                          ; $696f: $ee $2b
	ld d, e                                          ; $6971: $53
	ldh a, [$bb]                                     ; $6972: $f0 $bb
	ld d, d                                          ; $6974: $52
	ld c, [hl]                                       ; $6975: $4e
	sub a                                            ; $6976: $97
	and b                                            ; $6977: $a0
	cpl                                              ; $6978: $2f
	ld b, e                                          ; $6979: $43
	jp hl                                            ; $697a: $e9


	ld de, $2fa0                                     ; $697b: $11 $a0 $2f
	ld b, e                                          ; $697e: $43
	ld b, [hl]                                       ; $697f: $46
	dec sp                                           ; $6980: $3b
	inc [hl]                                         ; $6981: $34
	db $ed                                           ; $6982: $ed
	xor c                                            ; $6983: $a9
	and b                                            ; $6984: $a0
	ld b, [hl]                                       ; $6985: $46
	dec sp                                           ; $6986: $3b
	inc [hl]                                         ; $6987: $34
	ldh a, [$29]                                     ; $6988: $f0 $29
	ld a, $38                                        ; $698a: $3e $38
	xor b                                            ; $698c: $a8
	ld [$a81f], a                                    ; $698d: $ea $1f $a8
	xor $2b                                          ; $6990: $ee $2b
	db $eb                                           ; $6992: $eb
	ld d, b                                          ; $6993: $50
	and c                                            ; $6994: $a1
	cpl                                              ; $6995: $2f
	ld b, e                                          ; $6996: $43
	ld b, [hl]                                       ; $6997: $46
	ld c, l                                          ; $6998: $4d
	inc [hl]                                         ; $6999: $34
	ld b, e                                          ; $699a: $43
	ld c, c                                          ; $699b: $49
	ld e, h                                          ; $699c: $5c
	ld [hl], c                                       ; $699d: $71
	ld e, h                                          ; $699e: $5c
	ldh a, [$eb]                                     ; $699f: $f0 $eb
	inc de                                           ; $69a1: $13
	ld c, d                                          ; $69a2: $4a
	ld a, $66                                        ; $69a3: $3e $66
	add hl, sp                                       ; $69a5: $39
	and c                                            ; $69a6: $a1
	ldh a, [$2d]                                     ; $69a7: $f0 $2d
	dec sp                                           ; $69a9: $3b
	ccf                                              ; $69aa: $3f
	ld c, [hl]                                       ; $69ab: $4e
	ld b, d                                          ; $69ac: $42
	xor c                                            ; $69ad: $a9
	db $eb                                           ; $69ae: $eb
	sbc e                                            ; $69af: $9b
	ld a, [hl-]                                      ; $69b0: $3a
	ld b, c                                          ; $69b1: $41
	ld c, d                                          ; $69b2: $4a
	ld a, $66                                        ; $69b3: $3e $66
	add hl, sp                                       ; $69b5: $39
	and c                                            ; $69b6: $a1
	cpl                                              ; $69b7: $2f
	ld b, e                                          ; $69b8: $43
	halt                                             ; $69b9: $76
	inc [hl]                                         ; $69ba: $34
	jp hl                                            ; $69bb: $e9


	adc $a8                                          ; $69bc: $ce $a8
	ld b, b                                          ; $69be: $40
	ld c, l                                          ; $69bf: $4d
	ld b, a                                          ; $69c0: $47
	xor $2b                                          ; $69c1: $ee $2b
	ld c, a                                          ; $69c3: $4f
	db $ec                                           ; $69c4: $ec
	cp c                                             ; $69c5: $b9
	inc a                                            ; $69c6: $3c
	ld d, b                                          ; $69c7: $50
	xor h                                            ; $69c8: $ac
	ld d, c                                          ; $69c9: $51
	sbc l                                            ; $69ca: $9d
	ld b, a                                          ; $69cb: $47
	ldh a, [rTAC]                                    ; $69cc: $f0 $07
	inc a                                            ; $69ce: $3c
	dec sp                                           ; $69cf: $3b
	dec a                                            ; $69d0: $3d
	ld b, l                                          ; $69d1: $45
	and b                                            ; $69d2: $a0
	ld b, [hl]                                       ; $69d3: $46
	ld d, a                                          ; $69d4: $57
	ld d, e                                          ; $69d5: $53
	ld c, c                                          ; $69d6: $49
	add hl, sp                                       ; $69d7: $39
	xor l                                            ; $69d8: $ad
	db $ec                                           ; $69d9: $ec
	cp c                                             ; $69da: $b9
	xor h                                            ; $69db: $ac
	ldh a, [rHDMA5]                                  ; $69dc: $f0 $55
	pop af                                           ; $69de: $f1
	add b                                            ; $69df: $80
	ld a, $3a                                        ; $69e0: $3e $3a
	ld d, l                                          ; $69e2: $55
	ccf                                              ; $69e3: $3f
	ld c, b                                          ; $69e4: $48
	and b                                            ; $69e5: $a0
	cpl                                              ; $69e6: $2f
	ld b, e                                          ; $69e7: $43
	jp hl                                            ; $69e8: $e9


	di                                               ; $69e9: $f3
	xor h                                            ; $69ea: $ac
	jp hl                                            ; $69eb: $e9


	ld l, l                                          ; $69ec: $6d
	xor b                                            ; $69ed: $a8
	db $ec                                           ; $69ee: $ec
	push bc                                          ; $69ef: $c5
	ld a, d                                          ; $69f0: $7a
	ld c, [hl]                                       ; $69f1: $4e
	ld c, h                                          ; $69f2: $4c
	and b                                            ; $69f3: $a0
	ld b, b                                          ; $69f4: $40
	add hl, sp                                       ; $69f5: $39
	xor l                                            ; $69f6: $ad
	ld b, [hl]                                       ; $69f7: $46
	ld d, a                                          ; $69f8: $57
	ld d, e                                          ; $69f9: $53
	ld c, c                                          ; $69fa: $49
	add hl, sp                                       ; $69fb: $39
	inc [hl]                                         ; $69fc: $34
	ld a, b                                          ; $69fd: $78
	ccf                                              ; $69fe: $3f
	ld d, l                                          ; $69ff: $55
	ld c, l                                          ; $6a00: $4d
	ccf                                              ; $6a01: $3f
	xor l                                            ; $6a02: $ad
	or h                                             ; $6a03: $b4
	inc [hl]                                         ; $6a04: $34
	ld e, b                                          ; $6a05: $58
	ld b, l                                          ; $6a06: $45
	ld a, [hl-]                                      ; $6a07: $3a
	ld d, b                                          ; $6a08: $50
	and b                                            ; $6a09: $a0
	ld b, l                                          ; $6a0a: $45
	ld d, l                                          ; $6a0b: $55
	ldh a, [$2d]                                     ; $6a0c: $f0 $2d
	dec sp                                           ; $6a0e: $3b
	ccf                                              ; $6a0f: $3f
	ld c, [hl]                                       ; $6a10: $4e
	ld h, e                                          ; $6a11: $63
	ld c, h                                          ; $6a12: $4c
	xor b                                            ; $6a13: $a8
	db $eb                                           ; $6a14: $eb
	sbc e                                            ; $6a15: $9b
	ld a, [hl-]                                      ; $6a16: $3a
	ld b, c                                          ; $6a17: $41
	db $ed                                           ; $6a18: $ed
	ld b, e                                          ; $6a19: $43
	ld c, h                                          ; $6a1a: $4c
	and b                                            ; $6a1b: $a0
	cpl                                              ; $6a1c: $2f
	ld b, e                                          ; $6a1d: $43
	halt                                             ; $6a1e: $76
	xor h                                            ; $6a1f: $ac
	ld d, h                                          ; $6a20: $54
	ld b, d                                          ; $6a21: $42
	ldh a, [$6d]                                     ; $6a22: $f0 $6d
	ld e, c                                          ; $6a24: $59
	ldh a, [$27]                                     ; $6a25: $f0 $27
	adc e                                            ; $6a27: $8b
	ld e, h                                          ; $6a28: $5c
	ld a, [hl-]                                      ; $6a29: $3a
	ld b, c                                          ; $6a2a: $41
	ld b, h                                          ; $6a2b: $44
	xor b                                            ; $6a2c: $a8
	xor $2b                                          ; $6a2d: $ee $2b
	ld c, a                                          ; $6a2f: $4f
	db $ec                                           ; $6a30: $ec
	cp c                                             ; $6a31: $b9
	inc a                                            ; $6a32: $3c
	ld d, b                                          ; $6a33: $50
	xor h                                            ; $6a34: $ac
	ld d, c                                          ; $6a35: $51
	sbc l                                            ; $6a36: $9d
	ld b, a                                          ; $6a37: $47

jr_091_6a38:
	ldh a, [rTAC]                                    ; $6a38: $f0 $07
	inc a                                            ; $6a3a: $3c
	dec sp                                           ; $6a3b: $3b
	dec a                                            ; $6a3c: $3d
	ld b, l                                          ; $6a3d: $45
	and b                                            ; $6a3e: $a0
	ld b, [hl]                                       ; $6a3f: $46
	ld d, a                                          ; $6a40: $57
	ld d, e                                          ; $6a41: $53
	ld c, c                                          ; $6a42: $49
	add hl, sp                                       ; $6a43: $39
	xor b                                            ; $6a44: $a8
	ldh a, [$29]                                     ; $6a45: $f0 $29
	ld a, $38                                        ; $6a47: $3e $38
	ld a, [hl-]                                      ; $6a49: $3a
	and b                                            ; $6a4a: $a0
	ld a, b                                          ; $6a4b: $78
	ccf                                              ; $6a4c: $3f
	ld d, l                                          ; $6a4d: $55
	ld c, l                                          ; $6a4e: $4d
	ccf                                              ; $6a4f: $3f
	inc [hl]                                         ; $6a50: $34
	ld b, [hl]                                       ; $6a51: $46
	ld d, a                                          ; $6a52: $57
	ld d, e                                          ; $6a53: $53
	ld c, c                                          ; $6a54: $49
	add hl, sp                                       ; $6a55: $39
	xor b                                            ; $6a56: $a8
	or h                                             ; $6a57: $b4
	inc [hl]                                         ; $6a58: $34
	ld e, b                                          ; $6a59: $58
	ld b, l                                          ; $6a5a: $45
	ld a, [hl-]                                      ; $6a5b: $3a
	ld d, b                                          ; $6a5c: $50
	and b                                            ; $6a5d: $a0
	ldh a, [$5a]                                     ; $6a5e: $f0 $5a
	add l                                            ; $6a60: $85
	inc [hl]                                         ; $6a61: $34
	ldh a, [$2d]                                     ; $6a62: $f0 $2d
	dec sp                                           ; $6a64: $3b
	ccf                                              ; $6a65: $3f
	ld c, [hl]                                       ; $6a66: $4e
	ld b, c                                          ; $6a67: $41
	ld b, h                                          ; $6a68: $44
	xor b                                            ; $6a69: $a8
	db $eb                                           ; $6a6a: $eb
	sbc e                                            ; $6a6b: $9b
	ld a, [hl-]                                      ; $6a6c: $3a
	ld b, c                                          ; $6a6d: $41
	db $ed                                           ; $6a6e: $ed
	ld b, e                                          ; $6a6f: $43
	ld c, h                                          ; $6a70: $4c
	and b                                            ; $6a71: $a0
	db $ec                                           ; $6a72: $ec
	ldh a, [$a8]                                     ; $6a73: $f0 $a8
	ret nz                                           ; $6a75: $c0

	and b                                            ; $6a76: $a0
	ld a, b                                          ; $6a77: $78
	ccf                                              ; $6a78: $3f
	ld d, l                                          ; $6a79: $55
	ld c, l                                          ; $6a7a: $4d
	ccf                                              ; $6a7b: $3f
	xor h                                            ; $6a7c: $ac
	ld b, [hl]                                       ; $6a7d: $46
	ld d, a                                          ; $6a7e: $57
	ld d, e                                          ; $6a7f: $53
	ld c, c                                          ; $6a80: $49
	add hl, sp                                       ; $6a81: $39
	ld c, h                                          ; $6a82: $4c
	and b                                            ; $6a83: $a0
	cpl                                              ; $6a84: $2f
	ld b, e                                          ; $6a85: $43
	db $ed                                           ; $6a86: $ed
	ld d, $34                                        ; $6a87: $16 $34
	db $ed                                           ; $6a89: $ed
	xor c                                            ; $6a8a: $a9
	ld d, e                                          ; $6a8b: $53
	jr c, jr_091_6ac8                                ; $6a8c: $38 $3a

	jr c, jr_091_6a38                                ; $6a8e: $38 $a8

	add sp, -$0e                                     ; $6a90: $e8 $f2
	and b                                            ; $6a92: $a0
	cpl                                              ; $6a93: $2f
	ld b, e                                          ; $6a94: $43
	db $eb                                           ; $6a95: $eb
	ld e, a                                          ; $6a96: $5f
	xor b                                            ; $6a97: $a8
	db $ec                                           ; $6a98: $ec
	reti                                             ; $6a99: $d9


	db $eb                                           ; $6a9a: $eb
	ld h, l                                          ; $6a9b: $65
	ld c, e                                          ; $6a9c: $4b
	ld a, [hl]                                       ; $6a9d: $7e
	jr c, jr_091_6aec                                ; $6a9e: $38 $4c

	and b                                            ; $6aa0: $a0
	db $ec                                           ; $6aa1: $ec
	cp c                                             ; $6aa2: $b9
	xor h                                            ; $6aa3: $ac
	ldh a, [$64]                                     ; $6aa4: $f0 $64
	jr c, jr_091_6ae2                                ; $6aa6: $38 $3a

	add h                                            ; $6aa8: $84
	ld c, a                                          ; $6aa9: $4f
	jr c, jr_091_6afa                                ; $6aaa: $38 $4e

	inc a                                            ; $6aac: $3c
	ld d, b                                          ; $6aad: $50
	xor h                                            ; $6aae: $ac
	db $ed                                           ; $6aaf: $ed
	ld h, h                                          ; $6ab0: $64
	db $eb                                           ; $6ab1: $eb
	ld d, [hl]                                       ; $6ab2: $56
	and b                                            ; $6ab3: $a0
	cpl                                              ; $6ab4: $2f
	ld b, e                                          ; $6ab5: $43
	db $eb                                           ; $6ab6: $eb
	ld e, a                                          ; $6ab7: $5f
	xor b                                            ; $6ab8: $a8
	db $ec                                           ; $6ab9: $ec
	reti                                             ; $6aba: $d9


	db $eb                                           ; $6abb: $eb
	ld h, l                                          ; $6abc: $65
	ld c, e                                          ; $6abd: $4b
	inc de                                           ; $6abe: $13
	ld a, [hl]                                       ; $6abf: $7e
	jr c, jr_091_6b0e                                ; $6ac0: $38 $4c

	and b                                            ; $6ac2: $a0
	ld b, b                                          ; $6ac3: $40
	ld b, c                                          ; $6ac4: $41
	ld a, [hl-]                                      ; $6ac5: $3a
	ld b, a                                          ; $6ac6: $47
	xor h                                            ; $6ac7: $ac

jr_091_6ac8:
	db $eb                                           ; $6ac8: $eb
	ld h, l                                          ; $6ac9: $65
	adc e                                            ; $6aca: $8b
	ld e, h                                          ; $6acb: $5c
	ld b, h                                          ; $6acc: $44
	dec sp                                           ; $6acd: $3b
	dec a                                            ; $6ace: $3d
	and c                                            ; $6acf: $a1
	cpl                                              ; $6ad0: $2f
	ld b, e                                          ; $6ad1: $43
	ld d, c                                          ; $6ad2: $51
	inc [hl]                                         ; $6ad3: $34
	adc e                                            ; $6ad4: $8b
	ld e, h                                          ; $6ad5: $5c
	ld b, h                                          ; $6ad6: $44
	ld b, l                                          ; $6ad7: $45
	and b                                            ; $6ad8: $a0
	adc b                                            ; $6ad9: $88
	sub c                                            ; $6ada: $91
	inc a                                            ; $6adb: $3c
	ld a, [hl-]                                      ; $6adc: $3a
	ld [hl], h                                       ; $6add: $74
	and c                                            ; $6ade: $a1
	ldh a, [$5a]                                     ; $6adf: $f0 $5a
	add l                                            ; $6ae1: $85

jr_091_6ae2:
	inc [hl]                                         ; $6ae2: $34
	pop af                                           ; $6ae3: $f1
	ld c, e                                          ; $6ae4: $4b
	ldh a, [$f0]                                     ; $6ae5: $f0 $f0
	ld c, h                                          ; $6ae7: $4c
	add l                                            ; $6ae8: $85
	xor b                                            ; $6ae9: $a8
	db $eb                                           ; $6aea: $eb
	ld h, l                                          ; $6aeb: $65

jr_091_6aec:
	pop af                                           ; $6aec: $f1
	ld h, [hl]                                       ; $6aed: $66
	ld d, l                                          ; $6aee: $55
	ld b, c                                          ; $6aef: $41
	ld b, h                                          ; $6af0: $44
	and b                                            ; $6af1: $a0
	ld a, b                                          ; $6af2: $78
	ccf                                              ; $6af3: $3f
	ld d, l                                          ; $6af4: $55
	ld c, l                                          ; $6af5: $4d
	ccf                                              ; $6af6: $3f
	xor h                                            ; $6af7: $ac
	ld b, [hl]                                       ; $6af8: $46
	ld d, a                                          ; $6af9: $57

jr_091_6afa:
	ld d, e                                          ; $6afa: $53
	ld c, c                                          ; $6afb: $49
	ld c, h                                          ; $6afc: $4c
	and b                                            ; $6afd: $a0
	cpl                                              ; $6afe: $2f
	ld b, e                                          ; $6aff: $43
	cp e                                             ; $6b00: $bb
	ld b, l                                          ; $6b01: $45
	xor b                                            ; $6b02: $a8
	halt                                             ; $6b03: $76
	inc [hl]                                         ; $6b04: $34
	ld b, [hl]                                       ; $6b05: $46
	ld b, [hl]                                       ; $6b06: $46
	jr c, @+$3b                                      ; $6b07: $38 $39

	ldh a, [$ed]                                     ; $6b09: $f0 $ed
	adc e                                            ; $6b0b: $8b
	ld e, h                                          ; $6b0c: $5c
	ld b, h                                          ; $6b0d: $44

jr_091_6b0e:
	ld a, $a0                                        ; $6b0e: $3e $a0
	db $ec                                           ; $6b10: $ec
	cp c                                             ; $6b11: $b9
	ld c, b                                          ; $6b12: $48
	xor h                                            ; $6b13: $ac
	ldh a, [$5d]                                     ; $6b14: $f0 $5d
	ld b, a                                          ; $6b16: $47
	ld [hl], a                                       ; $6b17: $77
	ld h, e                                          ; $6b18: $63
	ld c, l                                          ; $6b19: $4d
	dec a                                            ; $6b1a: $3d
	ld d, b                                          ; $6b1b: $50
	ldh a, [$64]                                     ; $6b1c: $f0 $64
	ld b, h                                          ; $6b1e: $44
	dec sp                                           ; $6b1f: $3b
	dec a                                            ; $6b20: $3d
	inc a                                            ; $6b21: $3c
	ld d, b                                          ; $6b22: $50
	ld c, b                                          ; $6b23: $48
	and b                                            ; $6b24: $a0
	db $ec                                           ; $6b25: $ec
	cp c                                             ; $6b26: $b9
	xor h                                            ; $6b27: $ac
	pop af                                           ; $6b28: $f1
	or d                                             ; $6b29: $b2
	pop af                                           ; $6b2a: $f1
	ld c, b                                          ; $6b2b: $48
	ld b, a                                          ; $6b2c: $47
	ld e, b                                          ; $6b2d: $58
	ld c, l                                          ; $6b2e: $4d
	ld c, [hl]                                       ; $6b2f: $4e
	inc a                                            ; $6b30: $3c
	ld c, c                                          ; $6b31: $49
	ld [hl], a                                       ; $6b32: $77
	dec sp                                           ; $6b33: $3b
	ld h, c                                          ; $6b34: $61
	ld d, [hl]                                       ; $6b35: $56
	dec sp                                           ; $6b36: $3b
	dec a                                            ; $6b37: $3d
	and b                                            ; $6b38: $a0
	ldh a, [$5a]                                     ; $6b39: $f0 $5a
	add l                                            ; $6b3b: $85
	inc [hl]                                         ; $6b3c: $34
	ld d, h                                          ; $6b3d: $54
	add hl, sp                                       ; $6b3e: $39
	jr c, jr_091_6b7a                                ; $6b3f: $38 $39

	ldh a, [$ed]                                     ; $6b41: $f0 $ed
	inc de                                           ; $6b43: $13
	adc e                                            ; $6b44: $8b
	ld e, h                                          ; $6b45: $5c
	ld a, [hl-]                                      ; $6b46: $3a
	ld b, c                                          ; $6b47: $41
	ld b, h                                          ; $6b48: $44
	and b                                            ; $6b49: $a0
	ld b, [hl]                                       ; $6b4a: $46
	dec sp                                           ; $6b4b: $3b
	inc [hl]                                         ; $6b4c: $34
	ld [$a81f], a                                    ; $6b4d: $ea $1f $a8
	xor $2b                                          ; $6b50: $ee $2b
	db $eb                                           ; $6b52: $eb
	ld d, b                                          ; $6b53: $50
	and c                                            ; $6b54: $a1
	db $ec                                           ; $6b55: $ec
	ld h, $9b                                        ; $6b56: $26 $9b
	ld b, d                                          ; $6b58: $42
	ldh a, [$c1]                                     ; $6b59: $f0 $c1
	ldh a, [$d5]                                     ; $6b5b: $f0 $d5
	ld h, d                                          ; $6b5d: $62
	inc de                                           ; $6b5e: $13
	ld [$a031], a                                    ; $6b5f: $ea $31 $a0
	ld l, h                                          ; $6b62: $6c
	ld b, c                                          ; $6b63: $41
	ld a, [hl-]                                      ; $6b64: $3a
	ldh a, [$57]                                     ; $6b65: $f0 $57
	ldh a, [$ae]                                     ; $6b67: $f0 $ae
	ld a, [hl-]                                      ; $6b69: $3a
	xor h                                            ; $6b6a: $ac
	sbc e                                            ; $6b6b: $9b
	ld a, e                                          ; $6b6c: $7b
	inc a                                            ; $6b6d: $3c
	ld d, a                                          ; $6b6e: $57
	ld c, b                                          ; $6b6f: $48
	and b                                            ; $6b70: $a0
	cpl                                              ; $6b71: $2f
	ld b, e                                          ; $6b72: $43
	adc b                                            ; $6b73: $88
	sub c                                            ; $6b74: $91
	xor b                                            ; $6b75: $a8
	ld e, d                                          ; $6b76: $5a
	ld b, d                                          ; $6b77: $42
	sbc e                                            ; $6b78: $9b
	ld c, a                                          ; $6b79: $4f

jr_091_6b7a:
	db $ec                                           ; $6b7a: $ec
	cp c                                             ; $6b7b: $b9
	ld c, h                                          ; $6b7c: $4c
	and b                                            ; $6b7d: $a0
	cpl                                              ; $6b7e: $2f
	ld b, e                                          ; $6b7f: $43
	rst JumpTable                                          ; $6b80: $c7
	ld b, h                                          ; $6b81: $44
	ld c, h                                          ; $6b82: $4c
	xor b                                            ; $6b83: $a8
	db $ec                                           ; $6b84: $ec
	cp c                                             ; $6b85: $b9
	ld c, h                                          ; $6b86: $4c
	and b                                            ; $6b87: $a0
	jp hl                                            ; $6b88: $e9


	db $db                                           ; $6b89: $db
	xor l                                            ; $6b8a: $ad
	ld l, a                                          ; $6b8b: $6f
	inc [hl]                                         ; $6b8c: $34
	di                                               ; $6b8d: $f3
	ld a, [hl]                                       ; $6b8e: $7e
	ld c, l                                          ; $6b8f: $4d
	ld h, c                                          ; $6b90: $61
	ld d, [hl]                                       ; $6b91: $56
	add hl, sp                                       ; $6b92: $39
	ld a, [hl-]                                      ; $6b93: $3a
	ld c, b                                          ; $6b94: $48
	and b                                            ; $6b95: $a0
	cpl                                              ; $6b96: $2f
	ld b, e                                          ; $6b97: $43
	db $ec                                           ; $6b98: $ec
	push bc                                          ; $6b99: $c5
	inc [hl]                                         ; $6b9a: $34
	db $ec                                           ; $6b9b: $ec
	rrca                                             ; $6b9c: $0f
	and c                                            ; $6b9d: $a1
	ldh a, [$57]                                     ; $6b9e: $f0 $57
	ldh a, [$ae]                                     ; $6ba0: $f0 $ae
	ld a, [hl-]                                      ; $6ba2: $3a
	sbc e                                            ; $6ba3: $9b
	inc de                                           ; $6ba4: $13
	ld a, e                                          ; $6ba5: $7b
	inc a                                            ; $6ba6: $3c
	ld d, a                                          ; $6ba7: $57
	ld b, h                                          ; $6ba8: $44
	dec sp                                           ; $6ba9: $3b
	ldh [$a0], a                                     ; $6baa: $e0 $a0
	cpl                                              ; $6bac: $2f
	ld b, e                                          ; $6bad: $43
	ld b, b                                          ; $6bae: $40
	add hl, sp                                       ; $6baf: $39
	ld b, h                                          ; $6bb0: $44
	ld c, h                                          ; $6bb1: $4c
	xor b                                            ; $6bb2: $a8
	ld e, d                                          ; $6bb3: $5a
	ld b, d                                          ; $6bb4: $42
	sbc e                                            ; $6bb5: $9b
	ld c, a                                          ; $6bb6: $4f
	db $ec                                           ; $6bb7: $ec
	cp c                                             ; $6bb8: $b9
	ld c, h                                          ; $6bb9: $4c
	and b                                            ; $6bba: $a0
	jp hl                                            ; $6bbb: $e9


	db $db                                           ; $6bbc: $db
	ld c, b                                          ; $6bbd: $48
	and b                                            ; $6bbe: $a0
	xor $1f                                          ; $6bbf: $ee $1f
	inc [hl]                                         ; $6bc1: $34
	call c, $b0a8                                    ; $6bc2: $dc $a8 $b0
	and b                                            ; $6bc5: $a0
	db $ec                                           ; $6bc6: $ec
	ld h, $13                                        ; $6bc7: $26 $13
	sbc e                                            ; $6bc9: $9b
	ld b, d                                          ; $6bca: $42
	ldh a, [$c1]                                     ; $6bcb: $f0 $c1
	ldh a, [$d5]                                     ; $6bcd: $f0 $d5
	db $ec                                           ; $6bcf: $ec
	ld [de], a                                       ; $6bd0: $12
	and b                                            ; $6bd1: $a0
	cpl                                              ; $6bd2: $2f
	ld b, e                                          ; $6bd3: $43
	ldh a, [$08]                                     ; $6bd4: $f0 $08
	ld b, c                                          ; $6bd6: $41
	ld c, c                                          ; $6bd7: $49
	ld b, h                                          ; $6bd8: $44
	xor h                                            ; $6bd9: $ac
	adc $f0                                          ; $6bda: $ce $f0
	pop bc                                           ; $6bdc: $c1
	ldh a, [$d5]                                     ; $6bdd: $f0 $d5
	ld a, $3f                                        ; $6bdf: $3e $3f
	ld b, [hl]                                       ; $6be1: $46
	ld c, [hl]                                       ; $6be2: $4e
	ld c, h                                          ; $6be3: $4c
	and b                                            ; $6be4: $a0
	ld e, b                                          ; $6be5: $58
	ld b, [hl]                                       ; $6be6: $46
	inc [hl]                                         ; $6be7: $34
	ld [hl], d                                       ; $6be8: $72
	ccf                                              ; $6be9: $3f
	jr c, @+$5e                                      ; $6bea: $38 $5c

	ld d, d                                          ; $6bec: $52
	ld a, $66                                        ; $6bed: $3e $66
	add hl, sp                                       ; $6bef: $39
	and b                                            ; $6bf0: $a0
	ldh a, [$5a]                                     ; $6bf1: $f0 $5a
	add l                                            ; $6bf3: $85
	inc [hl]                                         ; $6bf4: $34
	sbc e                                            ; $6bf5: $9b
	ld b, d                                          ; $6bf6: $42
	ld a, [hl]                                       ; $6bf7: $7e
	ld e, b                                          ; $6bf8: $58
	ld d, e                                          ; $6bf9: $53
	inc de                                           ; $6bfa: $13
	pop af                                           ; $6bfb: $f1
	dec sp                                           ; $6bfc: $3b
	ld c, [hl]                                       ; $6bfd: $4e
	ld a, [hl-]                                      ; $6bfe: $3a
	ld b, c                                          ; $6bff: $41
	ccf                                              ; $6c00: $3f
	inc [hl]                                         ; $6c01: $34
	ld [hl], d                                       ; $6c02: $72
	ldh a, [hDisp1_WX]                                     ; $6c03: $f0 $96
	db $eb                                           ; $6c05: $eb
	ld d, [hl]                                       ; $6c06: $56
	and b                                            ; $6c07: $a0
	cpl                                              ; $6c08: $2f
	ld b, e                                          ; $6c09: $43
	halt                                             ; $6c0a: $76
	db $ed                                           ; $6c0b: $ed
	ld b, e                                          ; $6c0c: $43
	xor h                                            ; $6c0d: $ac
	sbc e                                            ; $6c0e: $9b
	sbc l                                            ; $6c0f: $9d
	ld d, b                                          ; $6c10: $50
	jr c, @-$0d                                      ; $6c11: $38 $f1

	dec sp                                           ; $6c13: $3b
	ld c, [hl]                                       ; $6c14: $4e
	ld b, l                                          ; $6c15: $45
	and b                                            ; $6c16: $a0
	add h                                            ; $6c17: $84
	dec sp                                           ; $6c18: $3b
	ccf                                              ; $6c19: $3f
	inc [hl]                                         ; $6c1a: $34
	db $ed                                           ; $6c1b: $ed
	adc $51                                          ; $6c1c: $ce $51
	ld c, [hl]                                       ; $6c1e: $4e
	ld b, d                                          ; $6c1f: $42
	ld c, h                                          ; $6c20: $4c
	and b                                            ; $6c21: $a0
	ldh a, [c]                                       ; $6c22: $f2

jr_091_6c23:
	ld a, c                                          ; $6c23: $79
	inc a                                            ; $6c24: $3c
	ld d, b                                          ; $6c25: $50
	xor h                                            ; $6c26: $ac
	ldh a, [$5d]                                     ; $6c27: $f0 $5d
	ld h, e                                          ; $6c29: $63
	ld d, b                                          ; $6c2a: $50
	db $ec                                           ; $6c2b: $ec
	dec bc                                           ; $6c2c: $0b
	xor b                                            ; $6c2d: $a8
	sbc e                                            ; $6c2e: $9b
	sbc l                                            ; $6c2f: $9d
	ld d, b                                          ; $6c30: $50
	jr c, jr_091_6c23                                ; $6c31: $38 $f0

	ld a, [$3a52]                                    ; $6c33: $fa $52 $3a
	ld e, h                                          ; $6c36: $5c
	ld d, [hl]                                       ; $6c37: $56
	and b                                            ; $6c38: $a0
	cpl                                              ; $6c39: $2f
	ld b, e                                          ; $6c3a: $43
	ldh a, [$08]                                     ; $6c3b: $f0 $08
	ld d, b                                          ; $6c3d: $50
	inc [hl]                                         ; $6c3e: $34
	db $ec                                           ; $6c3f: $ec
	push bc                                          ; $6c40: $c5
	ld a, d                                          ; $6c41: $7a
	ld e, a                                          ; $6c42: $5f
	add hl, sp                                       ; $6c43: $39
	ld b, l                                          ; $6c44: $45
	and b                                            ; $6c45: $a0
	call c, $b0a8                                    ; $6c46: $dc $a8 $b0
	and b                                            ; $6c49: $a0
	ldh a, [$b6]                                     ; $6c4a: $f0 $b6
	ld b, a                                          ; $6c4c: $47
	xor h                                            ; $6c4d: $ac
	xor $1e                                          ; $6c4e: $ee $1e
	sbc e                                            ; $6c50: $9b
	ld d, e                                          ; $6c51: $53
	ld b, l                                          ; $6c52: $45
	inc a                                            ; $6c53: $3c
	dec sp                                           ; $6c54: $3b
	dec a                                            ; $6c55: $3d
	ld a, [hl-]                                      ; $6c56: $3a
	and b                                            ; $6c57: $a0
	cpl                                              ; $6c58: $2f
	ld b, e                                          ; $6c59: $43
	xor $1e                                          ; $6c5a: $ee $1e
	sbc e                                            ; $6c5c: $9b
	dec sp                                           ; $6c5d: $3b
	ccf                                              ; $6c5e: $3f
	and c                                            ; $6c5f: $a1
	push af                                          ; $6c60: $f5
	jr c, jr_091_6c9f                                ; $6c61: $38 $3c

	ld a, [hl-]                                      ; $6c63: $3a
	pop af                                           ; $6c64: $f1
	rst GetHLinHL                                          ; $6c65: $cf
	push af                                          ; $6c66: $f5
	add hl, sp                                       ; $6c67: $39
	ld c, l                                          ; $6c68: $4d
	push af                                          ; $6c69: $f5

jr_091_6c6a:
	ld a, [hl-]                                      ; $6c6a: $3a
	ld b, d                                          ; $6c6b: $42
	ldh a, [rAUD2HIGH]                               ; $6c6c: $f0 $19
	inc de                                           ; $6c6e: $13
	ldh a, [hDisp0_SCX]                                     ; $6c6f: $f0 $84
	add h                                            ; $6c71: $84
	ldh a, [c]                                       ; $6c72: $f2
	add $57                                          ; $6c73: $c6 $57
	push af                                          ; $6c75: $f5
	dec sp                                           ; $6c76: $3b
	jr c, jr_091_6c6a                                ; $6c77: $38 $f1

	ld h, $55                                        ; $6c79: $26 $55
	ldh a, [$ee]                                     ; $6c7b: $f0 $ee
	xor e                                            ; $6c7d: $ab
	ld c, d                                          ; $6c7e: $4a
	ldh a, [$bb]                                     ; $6c7f: $f0 $bb
	ld d, d                                          ; $6c81: $52
	ld c, [hl]                                       ; $6c82: $4e
	sbc e                                            ; $6c83: $9b
	ld b, l                                          ; $6c84: $45
	and b                                            ; $6c85: $a0
	cpl                                              ; $6c86: $2f
	ld b, e                                          ; $6c87: $43
	ld b, [hl]                                       ; $6c88: $46
	ld [hl], h                                       ; $6c89: $74
	inc [hl]                                         ; $6c8a: $34
	ld b, [hl]                                       ; $6c8b: $46
	ld c, l                                          ; $6c8c: $4d
	ld c, h                                          ; $6c8d: $4c
	and b                                            ; $6c8e: $a0
	db $ec                                           ; $6c8f: $ec
	ld h, $f0                                        ; $6c90: $26 $f0
	ld b, e                                          ; $6c92: $43
	ldh a, [rAUDTERM]                                ; $6c93: $f0 $25
	ld b, d                                          ; $6c95: $42
	inc de                                           ; $6c96: $13
	ldh a, [$c1]                                     ; $6c97: $f0 $c1
	ldh a, [$d5]                                     ; $6c99: $f0 $d5
	ld h, d                                          ; $6c9b: $62

jr_091_6c9c:
	ld [$a031], a                                    ; $6c9c: $ea $31 $a0

jr_091_6c9f:
	ld [$ac9b], a                                    ; $6c9f: $ea $9b $ac
	db $eb                                           ; $6ca2: $eb
	ld [hl], $4c                                     ; $6ca3: $36 $4c
	ld c, b                                          ; $6ca5: $48
	and b                                            ; $6ca6: $a0
	cpl                                              ; $6ca7: $2f
	ld b, e                                          ; $6ca8: $43
	ld [$6c98], a                                    ; $6ca9: $ea $98 $6c
	dec a                                            ; $6cac: $3d
	jr c, jr_091_6cc2                                ; $6cad: $38 $13

	db $ec                                           ; $6caf: $ec
	jr nz, jr_091_6c9c                               ; $6cb0: $20 $ea

	sbc c                                            ; $6cb2: $99
	and b                                            ; $6cb3: $a0
	cpl                                              ; $6cb4: $2f
	ld b, e                                          ; $6cb5: $43
	xor $2d                                          ; $6cb6: $ee $2d
	xor h                                            ; $6cb8: $ac
	ldh a, [rSCX]                                    ; $6cb9: $f0 $43
	ldh a, [rAUDTERM]                                ; $6cbb: $f0 $25
	ld [$a09a], a                                    ; $6cbd: $ea $9a $a0
	ld b, [hl]                                       ; $6cc0: $46
	ld d, a                                          ; $6cc1: $57

jr_091_6cc2:
	ld d, e                                          ; $6cc2: $53
	ld c, c                                          ; $6cc3: $49
	add hl, sp                                       ; $6cc4: $39
	xor b                                            ; $6cc5: $a8
	ld h, e                                          ; $6cc6: $63
	ldh a, [rAUD1SWEEP]                              ; $6cc7: $f0 $10
	ld h, e                                          ; $6cc9: $63
	ldh a, [rAUD1SWEEP]                              ; $6cca: $f0 $10
	ld [hl], b                                       ; $6ccc: $70
	ld [hl], c                                       ; $6ccd: $71
	ld b, c                                          ; $6cce: $41
	ld c, h                                          ; $6ccf: $4c
	and b                                            ; $6cd0: $a0
	cpl                                              ; $6cd1: $2f
	ld b, e                                          ; $6cd2: $43
	call nc, $a845                                   ; $6cd3: $d4 $45 $a8
	or h                                             ; $6cd6: $b4
	xor h                                            ; $6cd7: $ac
	db $ec                                           ; $6cd8: $ec
	push bc                                          ; $6cd9: $c5
	db $ec                                           ; $6cda: $ec
	rrca                                             ; $6cdb: $0f
	and c                                            ; $6cdc: $a1
	ld [$ac9b], a                                    ; $6cdd: $ea $9b $ac
	db $eb                                           ; $6ce0: $eb
	ld [hl], $63                                     ; $6ce1: $36 $63
	ld c, h                                          ; $6ce3: $4c
	and b                                            ; $6ce4: $a0
	cpl                                              ; $6ce5: $2f
	ld b, e                                          ; $6ce6: $43
	ld b, [hl]                                       ; $6ce7: $46
	ld b, b                                          ; $6ce8: $40
	ld d, h                                          ; $6ce9: $54
	ld c, d                                          ; $6cea: $4a
	xor h                                            ; $6ceb: $ac
	ld [$eb98], a                                    ; $6cec: $ea $98 $eb
	dec [hl]                                         ; $6cef: $35
	xor h                                            ; $6cf0: $ac
	ld [$a099], a                                    ; $6cf1: $ea $99 $a0
	ld h, e                                          ; $6cf4: $63
	ldh a, [rAUD1SWEEP]                              ; $6cf5: $f0 $10
	ld h, e                                          ; $6cf7: $63
	ldh a, [rAUD1SWEEP]                              ; $6cf8: $f0 $10
	inc [hl]                                         ; $6cfa: $34
	ld b, [hl]                                       ; $6cfb: $46
	ld d, a                                          ; $6cfc: $57
	ld d, e                                          ; $6cfd: $53
	ld c, c                                          ; $6cfe: $49
	add hl, sp                                       ; $6cff: $39
	xor b                                            ; $6d00: $a8
	ld d, h                                          ; $6d01: $54
	ld c, l                                          ; $6d02: $4d
	ld a, [hl-]                                      ; $6d03: $3a
	ld d, b                                          ; $6d04: $50
	xor h                                            ; $6d05: $ac
	ldh a, [$d7]                                     ; $6d06: $f0 $d7
	ld c, d                                          ; $6d08: $4a
	db $ec                                           ; $6d09: $ec
	ld c, $f0                                        ; $6d0a: $0e $f0
	ld a, [$4e71]                                    ; $6d0c: $fa $71 $4e
	ld h, e                                          ; $6d0f: $63
	ld c, h                                          ; $6d10: $4c
	and b                                            ; $6d11: $a0
	cpl                                              ; $6d12: $2f
	ld b, e                                          ; $6d13: $43
	or h                                             ; $6d14: $b4
	xor h                                            ; $6d15: $ac
	db $ec                                           ; $6d16: $ec
	push bc                                          ; $6d17: $c5
	db $ec                                           ; $6d18: $ec
	rrca                                             ; $6d19: $0f
	and c                                            ; $6d1a: $a1
	db $ec                                           ; $6d1b: $ec
	ld h, $13                                        ; $6d1c: $26 $13
	db $eb                                           ; $6d1e: $eb
	and h                                            ; $6d1f: $a4
	db $ec                                           ; $6d20: $ec
	ld [de], a                                       ; $6d21: $12
	and b                                            ; $6d22: $a0
	ld e, b                                          ; $6d23: $58
	ld b, [hl]                                       ; $6d24: $46
	inc [hl]                                         ; $6d25: $34
	ld [hl], d                                       ; $6d26: $72
	ccf                                              ; $6d27: $3f
	jr c, jr_091_6d86                                ; $6d28: $38 $5c

	ld a, $66                                        ; $6d2a: $3e $66
	add hl, sp                                       ; $6d2c: $39
	and b                                            ; $6d2d: $a0
	ld [$ac9b], a                                    ; $6d2e: $ea $9b $ac
	db $eb                                           ; $6d31: $eb
	ld [hl], $63                                     ; $6d32: $36 $63
	and b                                            ; $6d34: $a0
	ld b, [hl]                                       ; $6d35: $46
	ld d, a                                          ; $6d36: $57
	ld d, e                                          ; $6d37: $53
	ld c, c                                          ; $6d38: $49
	add hl, sp                                       ; $6d39: $39
	and b                                            ; $6d3a: $a0
	cpl                                              ; $6d3b: $2f
	ld b, e                                          ; $6d3c: $43
	ld b, b                                          ; $6d3d: $40
	ld c, l                                          ; $6d3e: $4d
	ld e, e                                          ; $6d3f: $5b
	ld d, [hl]                                       ; $6d40: $56
	xor h                                            ; $6d41: $ac
	db $ec                                           ; $6d42: $ec
	push bc                                          ; $6d43: $c5
	db $ec                                           ; $6d44: $ec
	rrca                                             ; $6d45: $0f
	and c                                            ; $6d46: $a1
	db $ec                                           ; $6d47: $ec
	db $10                                           ; $6d48: $10
	inc [hl]                                         ; $6d49: $34
	db $ed                                           ; $6d4a: $ed
	ld l, d                                          ; $6d4b: $6a
	ld d, e                                          ; $6d4c: $53
	inc de                                           ; $6d4d: $13
	ldh a, [$bb]                                     ; $6d4e: $f0 $bb
	ld d, d                                          ; $6d50: $52
	ld c, [hl]                                       ; $6d51: $4e
	ld l, h                                          ; $6d52: $6c
	dec a                                            ; $6d53: $3d
	jr c, @-$5e                                      ; $6d54: $38 $a0

	ld c, a                                          ; $6d56: $4f
	add hl, sp                                       ; $6d57: $39
	xor h                                            ; $6d58: $ac
	ld [$6c67], a                                    ; $6d59: $ea $67 $6c
	dec a                                            ; $6d5c: $3d
	jr c, jr_091_6da7                                ; $6d5d: $38 $48

	and b                                            ; $6d5f: $a0
	cpl                                              ; $6d60: $2f
	ld b, e                                          ; $6d61: $43
	ld b, b                                          ; $6d62: $40
	add hl, sp                                       ; $6d63: $39
	ld l, h                                          ; $6d64: $6c
	dec a                                            ; $6d65: $3d
	jr c, jr_091_6dac                                ; $6d66: $38 $44

	ld c, h                                          ; $6d68: $4c
	xor l                                            ; $6d69: $ad
	ld b, b                                          ; $6d6a: $40
	ld c, l                                          ; $6d6b: $4d
	jp hl                                            ; $6d6c: $e9


jr_091_6d6d:
	ret z                                            ; $6d6d: $c8

	db $ec                                           ; $6d6e: $ec
	rrca                                             ; $6d6f: $0f
	and c                                            ; $6d70: $a1
	xor $10                                          ; $6d71: $ee $10
	xor b                                            ; $6d73: $a8
	xor $1f                                          ; $6d74: $ee $1f
	inc [hl]                                         ; $6d76: $34
	call c, $eca0                                    ; $6d77: $dc $a0 $ec
	db $10                                           ; $6d7a: $10
	inc [hl]                                         ; $6d7b: $34
	db $ed                                           ; $6d7c: $ed
	ld l, d                                          ; $6d7d: $6a
	ld d, e                                          ; $6d7e: $53
	inc de                                           ; $6d7f: $13
	ld [$a06d], a                                    ; $6d80: $ea $6d $a0
	ld d, h                                          ; $6d83: $54
	ld c, l                                          ; $6d84: $4d
	ld c, d                                          ; $6d85: $4a

jr_091_6d86:
	ldh a, [$ce]                                     ; $6d86: $f0 $ce
	ld h, e                                          ; $6d88: $63
	ld d, a                                          ; $6d89: $57
	xor c                                            ; $6d8a: $a9
	ld l, d                                          ; $6d8b: $6a
	ld b, d                                          ; $6d8c: $42
	add h                                            ; $6d8d: $84
	xor h                                            ; $6d8e: $ac
	ld l, e                                          ; $6d8f: $6b
	ld d, e                                          ; $6d90: $53
	add d                                            ; $6d91: $82
	jr c, jr_091_6dd1                                ; $6d92: $38 $3d

	inc a                                            ; $6d94: $3c
	dec sp                                           ; $6d95: $3b
	dec a                                            ; $6d96: $3d
	ld b, d                                          ; $6d97: $42
	inc a                                            ; $6d98: $3c
	ld a, [hl-]                                      ; $6d99: $3a
	and c                                            ; $6d9a: $a1
	cpl                                              ; $6d9b: $2f
	ld b, e                                          ; $6d9c: $43
	ld l, e                                          ; $6d9d: $6b
	ld b, h                                          ; $6d9e: $44
	ld e, a                                          ; $6d9f: $5f
	add hl, sp                                       ; $6da0: $39
	ld c, h                                          ; $6da1: $4c
	xor b                                            ; $6da2: $a8
	halt                                             ; $6da3: $76
	ld c, a                                          ; $6da4: $4f
	ld b, l                                          ; $6da5: $45
	ld d, l                                          ; $6da6: $55

jr_091_6da7:
	pop af                                           ; $6da7: $f1
	dec sp                                           ; $6da8: $3b
	ld d, b                                          ; $6da9: $50
	ld a, [hl-]                                      ; $6daa: $3a
	inc a                                            ; $6dab: $3c

jr_091_6dac:
	dec sp                                           ; $6dac: $3b
	dec a                                            ; $6dad: $3d
	ld b, l                                          ; $6dae: $45
	xor b                                            ; $6daf: $a8
	db $ec                                           ; $6db0: $ec
	push bc                                          ; $6db1: $c5
	db $ec                                           ; $6db2: $ec
	rrca                                             ; $6db3: $0f
	and c                                            ; $6db4: $a1
	xor $1f                                          ; $6db5: $ee $1f
	inc [hl]                                         ; $6db7: $34
	call c, Call_091_54a0                            ; $6db8: $dc $a0 $54
	ld c, l                                          ; $6dbb: $4d
	ld c, d                                          ; $6dbc: $4a
	ldh a, [$ce]                                     ; $6dbd: $f0 $ce
	ld h, e                                          ; $6dbf: $63
	ld d, a                                          ; $6dc0: $57
	ld l, h                                          ; $6dc1: $6c
	dec a                                            ; $6dc2: $3d
	jr c, jr_091_6d6d                                ; $6dc3: $38 $a8

	ld b, b                                          ; $6dc5: $40
	ld c, l                                          ; $6dc6: $4d
	ld e, e                                          ; $6dc7: $5b
	ld d, [hl]                                       ; $6dc8: $56
	inc [hl]                                         ; $6dc9: $34
	or b                                             ; $6dca: $b0
	and b                                            ; $6dcb: $a0
	cpl                                              ; $6dcc: $2f
	ld b, e                                          ; $6dcd: $43
	ld b, b                                          ; $6dce: $40
	add hl, sp                                       ; $6dcf: $39
	ld b, h                                          ; $6dd0: $44

jr_091_6dd1:
	ld c, h                                          ; $6dd1: $4c
	and b                                            ; $6dd2: $a0
	ldh a, [$aa]                                     ; $6dd3: $f0 $aa
	adc c                                            ; $6dd5: $89
	adc a                                            ; $6dd6: $8f
	ld c, e                                          ; $6dd7: $4b
	inc [hl]                                         ; $6dd8: $34
	ld l, e                                          ; $6dd9: $6b
	inc a                                            ; $6dda: $3c
	inc de                                           ; $6ddb: $13
	xor $2a                                          ; $6ddc: $ee $2a
	db $ec                                           ; $6dde: $ec
	ldh a, [c]                                       ; $6ddf: $f2
	ld h, d                                          ; $6de0: $62
	ld [$a031], a                                    ; $6de1: $ea $31 $a0
	cpl                                              ; $6de4: $2f
	ld b, e                                          ; $6de5: $43
	ld a, [hl-]                                      ; $6de6: $3a
	ld b, a                                          ; $6de7: $47
	ld a, [hl-]                                      ; $6de8: $3a
	ld b, a                                          ; $6de9: $47
	xor h                                            ; $6dea: $ac
	ld b, e                                          ; $6deb: $43
	jp hl                                            ; $6dec: $e9


	sub b                                            ; $6ded: $90
	ldh a, [$eb]                                     ; $6dee: $f0 $eb
	inc de                                           ; $6df0: $13
	ld a, [hl-]                                      ; $6df1: $3a
	ld b, c                                          ; $6df2: $41
	ld b, h                                          ; $6df3: $44
	ld d, h                                          ; $6df4: $54
	ld d, a                                          ; $6df5: $57
	ld d, [hl]                                       ; $6df6: $56
	and c                                            ; $6df7: $a1
	ld e, [hl]                                       ; $6df8: $5e
	ld e, c                                          ; $6df9: $59
	ld c, c                                          ; $6dfa: $49
	ld c, h                                          ; $6dfb: $4c
	xor e                                            ; $6dfc: $ab
	inc hl                                           ; $6dfd: $23
	ld b, e                                          ; $6dfe: $43
	ldh a, [$6d]                                     ; $6dff: $f0 $6d
	ld e, c                                          ; $6e01: $59
	ldh a, [$27]                                     ; $6e02: $f0 $27
	ld h, d                                          ; $6e04: $62
	add c                                            ; $6e05: $81
	ld [hl], l                                       ; $6e06: $75
	ld a, l                                          ; $6e07: $7d
	ld a, $3f                                        ; $6e08: $3e $3f
	xor h                                            ; $6e0a: $ac
	ld b, b                                          ; $6e0b: $40
	ld b, d                                          ; $6e0c: $42
	add h                                            ; $6e0d: $84
	ld b, d                                          ; $6e0e: $42
	ld [$6218], a                                    ; $6e0f: $ea $18 $62
	inc de                                           ; $6e12: $13
	pop af                                           ; $6e13: $f1
	rst JumpTable                                          ; $6e14: $c7
	ldh a, [hDisp0_WY]                                     ; $6e15: $f0 $88
	ld d, c                                          ; $6e17: $51
	ld c, [hl]                                       ; $6e18: $4e
	ldh a, [rAUD3LOW]                                ; $6e19: $f0 $1d
	sbc b                                            ; $6e1b: $98
	ld h, l                                          ; $6e1c: $65
	ldh a, [$eb]                                     ; $6e1d: $f0 $eb
	db $ed                                           ; $6e1f: $ed
	ld b, e                                          ; $6e20: $43
	and b                                            ; $6e21: $a0
	dec d                                            ; $6e22: $15
	xor h                                            ; $6e23: $ac
	ld l, [hl]                                       ; $6e24: $6e
	dec sp                                           ; $6e25: $3b
	ccf                                              ; $6e26: $3f
	ld l, h                                          ; $6e27: $6c
	ccf                                              ; $6e28: $3f
	ld b, l                                          ; $6e29: $45
	and b                                            ; $6e2a: $a0
	xor $1f                                          ; $6e2b: $ee $1f
	inc [hl]                                         ; $6e2d: $34
	or b                                             ; $6e2e: $b0
	and b                                            ; $6e2f: $a0
	ldh a, [$aa]                                     ; $6e30: $f0 $aa
	adc c                                            ; $6e32: $89
	adc a                                            ; $6e33: $8f
	ld c, e                                          ; $6e34: $4b
	xor $2a                                          ; $6e35: $ee $2a
	db $ec                                           ; $6e37: $ec
	ldh a, [c]                                       ; $6e38: $f2
	ld h, d                                          ; $6e39: $62
	inc de                                           ; $6e3a: $13
	ld [$4c31], a                                    ; $6e3b: $ea $31 $4c
	and b                                            ; $6e3e: $a0
	ld e, [hl]                                       ; $6e3f: $5e
	ld e, c                                          ; $6e40: $59
	ld c, c                                          ; $6e41: $49
	xor e                                            ; $6e42: $ab
	inc hl                                           ; $6e43: $23
	ld b, e                                          ; $6e44: $43
	ldh a, [$6d]                                     ; $6e45: $f0 $6d
	ld e, c                                          ; $6e47: $59
	ldh a, [$27]                                     ; $6e48: $f0 $27
	ld h, d                                          ; $6e4a: $62
	add c                                            ; $6e4b: $81
	ld [hl], l                                       ; $6e4c: $75
	ld a, l                                          ; $6e4d: $7d
	ld a, $3f                                        ; $6e4e: $3e $3f
	xor h                                            ; $6e50: $ac
	ld b, b                                          ; $6e51: $40
	ld b, d                                          ; $6e52: $42
	add h                                            ; $6e53: $84
	ld b, d                                          ; $6e54: $42
	ld [$6218], a                                    ; $6e55: $ea $18 $62
	inc de                                           ; $6e58: $13
	pop af                                           ; $6e59: $f1
	rst JumpTable                                          ; $6e5a: $c7
	ldh a, [hDisp0_WY]                                     ; $6e5b: $f0 $88
	ld d, c                                          ; $6e5d: $51
	ld c, [hl]                                       ; $6e5e: $4e
	ldh a, [rAUD3LOW]                                ; $6e5f: $f0 $1d
	sbc b                                            ; $6e61: $98
	ld h, l                                          ; $6e62: $65
	ldh a, [$eb]                                     ; $6e63: $f0 $eb
	db $ed                                           ; $6e65: $ed
	ld b, e                                          ; $6e66: $43
	and b                                            ; $6e67: $a0
	ld l, [hl]                                       ; $6e68: $6e
	dec sp                                           ; $6e69: $3b
	ccf                                              ; $6e6a: $3f
	ld l, h                                          ; $6e6b: $6c
	ccf                                              ; $6e6c: $3f
	ld b, l                                          ; $6e6d: $45
	and b                                            ; $6e6e: $a0
	ld b, b                                          ; $6e6f: $40
	ld c, l                                          ; $6e70: $4d
	ld e, e                                          ; $6e71: $5b
	ld d, [hl]                                       ; $6e72: $56
	xor h                                            ; $6e73: $ac
	db $ec                                           ; $6e74: $ec
	push bc                                          ; $6e75: $c5
	or b                                             ; $6e76: $b0
	and b                                            ; $6e77: $a0
	ldh a, [$aa]                                     ; $6e78: $f0 $aa
	adc c                                            ; $6e7a: $89
	adc a                                            ; $6e7b: $8f
	ld c, e                                          ; $6e7c: $4b
	ld l, e                                          ; $6e7d: $6b
	inc a                                            ; $6e7e: $3c
	ldh a, [rAUD3LOW]                                ; $6e7f: $f0 $1d
	sbc b                                            ; $6e81: $98
	ld h, l                                          ; $6e82: $65
	ld b, d                                          ; $6e83: $42
	inc de                                           ; $6e84: $13
	ldh a, [$c1]                                     ; $6e85: $f0 $c1
	ldh a, [$d5]                                     ; $6e87: $f0 $d5
	db $ec                                           ; $6e89: $ec
	ld [de], a                                       ; $6e8a: $12
	and b                                            ; $6e8b: $a0
	ld e, [hl]                                       ; $6e8c: $5e
	ld e, c                                          ; $6e8d: $59
	ld c, c                                          ; $6e8e: $49
	xor e                                            ; $6e8f: $ab
	inc hl                                           ; $6e90: $23
	ld b, e                                          ; $6e91: $43
	ldh a, [$6d]                                     ; $6e92: $f0 $6d
	ld e, c                                          ; $6e94: $59
	ldh a, [$27]                                     ; $6e95: $f0 $27
	ld h, d                                          ; $6e97: $62
	add c                                            ; $6e98: $81
	ld [hl], l                                       ; $6e99: $75
	ld a, l                                          ; $6e9a: $7d
	ld a, $3f                                        ; $6e9b: $3e $3f
	xor h                                            ; $6e9d: $ac
	ld b, b                                          ; $6e9e: $40
	ld b, d                                          ; $6e9f: $42
	add h                                            ; $6ea0: $84
	ld b, d                                          ; $6ea1: $42
	ld [$6218], a                                    ; $6ea2: $ea $18 $62
	inc de                                           ; $6ea5: $13
	pop af                                           ; $6ea6: $f1
	rst JumpTable                                          ; $6ea7: $c7
	ldh a, [hDisp0_WY]                                     ; $6ea8: $f0 $88
	ld d, c                                          ; $6eaa: $51
	ld c, [hl]                                       ; $6eab: $4e
	ldh a, [rAUD3LOW]                                ; $6eac: $f0 $1d
	sbc b                                            ; $6eae: $98
	ld h, l                                          ; $6eaf: $65
	ldh a, [$eb]                                     ; $6eb0: $f0 $eb
	ld d, b                                          ; $6eb2: $50
	ld a, $38                                        ; $6eb3: $3e $38
	ld c, h                                          ; $6eb5: $4c
	and b                                            ; $6eb6: $a0
	ld l, [hl]                                       ; $6eb7: $6e
	dec sp                                           ; $6eb8: $3b
	ccf                                              ; $6eb9: $3f
	ld l, h                                          ; $6eba: $6c
	dec a                                            ; $6ebb: $3d
	ld d, b                                          ; $6ebc: $50
	and c                                            ; $6ebd: $a1
	cpl                                              ; $6ebe: $2f
	ld b, e                                          ; $6ebf: $43
	ld b, l                                          ; $6ec0: $45
	ld e, c                                          ; $6ec1: $59
	ld a, $34                                        ; $6ec2: $3e $34
	ld [hl], d                                       ; $6ec4: $72
	ccf                                              ; $6ec5: $3f
	ld e, a                                          ; $6ec6: $5f
	ld b, l                                          ; $6ec7: $45
	and b                                            ; $6ec8: $a0
	xor $10                                          ; $6ec9: $ee $10
	and b                                            ; $6ecb: $a0
	cpl                                              ; $6ecc: $2f
	ld b, e                                          ; $6ecd: $43
	ld d, h                                          ; $6ece: $54
	inc [hl]                                         ; $6ecf: $34
	ldh a, [c]                                       ; $6ed0: $f2
	inc sp                                           ; $6ed1: $33
	ld c, l                                          ; $6ed2: $4d
	ccf                                              ; $6ed3: $3f
	ld c, [hl]                                       ; $6ed4: $4e
	ld b, c                                          ; $6ed5: $41
	ld e, e                                          ; $6ed6: $5b
	ld d, [hl]                                       ; $6ed7: $56
	inc de                                           ; $6ed8: $13
	ld a, [hl-]                                      ; $6ed9: $3a
	jr c, jr_091_6f1e                                ; $6eda: $38 $42

	ld [hl], $54                                     ; $6edc: $36 $54
	ld b, d                                          ; $6ede: $42
	ldh a, [rAUD3LOW]                                ; $6edf: $f0 $1d
	sbc b                                            ; $6ee1: $98
	ld h, l                                          ; $6ee2: $65
	and b                                            ; $6ee3: $a0
	ld b, b                                          ; $6ee4: $40
	inc [hl]                                         ; $6ee5: $34
	db $ec                                           ; $6ee6: $ec
	inc e                                            ; $6ee7: $1c
	dec [hl]                                         ; $6ee8: $35
	ld e, h                                          ; $6ee9: $5c
	dec sp                                           ; $6eea: $3b
	ld c, c                                          ; $6eeb: $49
	xor l                                            ; $6eec: $ad
	ld [hl-], a                                      ; $6eed: $32
	ld d, d                                          ; $6eee: $52
	dec sp                                           ; $6eef: $3b
	dec a                                            ; $6ef0: $3d
	ld d, l                                          ; $6ef1: $55
	ldh a, [$7b]                                     ; $6ef2: $f0 $7b
	ld h, l                                          ; $6ef4: $65
	add e                                            ; $6ef5: $83
	ldh a, [rAUD1LOW]                                ; $6ef6: $f0 $13
	jr c, jr_091_6f66                                ; $6ef8: $38 $6c

	dec a                                            ; $6efa: $3d
	jr c, jr_091_6f30                                ; $6efb: $38 $33

	add hl, bc                                       ; $6efd: $09
	ld d, d                                          ; $6efe: $52
	inc [hl]                                         ; $6eff: $34
	ld b, b                                          ; $6f00: $40
	ld b, c                                          ; $6f01: $41
	ld a, [hl-]                                      ; $6f02: $3a
	ld c, a                                          ; $6f03: $4f
	ld b, d                                          ; $6f04: $42
	inc a                                            ; $6f05: $3c
	ld a, [hl-]                                      ; $6f06: $3a
	and b                                            ; $6f07: $a0

jr_091_6f08:
	cpl                                              ; $6f08: $2f
	ld b, e                                          ; $6f09: $43
	ld d, l                                          ; $6f0a: $55
	ld e, c                                          ; $6f0b: $59
	xor h                                            ; $6f0c: $ac
	ld c, a                                          ; $6f0d: $4f
	add hl, sp                                       ; $6f0e: $39
	ld l, l                                          ; $6f0f: $6d
	ldh a, [$d3]                                     ; $6f10: $f0 $d3
	ld l, [hl]                                       ; $6f12: $6e
	ld d, a                                          ; $6f13: $57
	dec a                                            ; $6f14: $3d
	jr c, jr_091_6f08                                ; $6f15: $38 $f1

	dec [hl]                                         ; $6f17: $35
	xor b                                            ; $6f18: $a8
	ldh a, [$d6]                                     ; $6f19: $f0 $d6
	ld d, h                                          ; $6f1b: $54
	ld b, b                                          ; $6f1c: $40
	ld c, e                                          ; $6f1d: $4b

jr_091_6f1e:
	pop af                                           ; $6f1e: $f1
	dec [hl]                                         ; $6f1f: $35
	and d                                            ; $6f20: $a2
	ld b, h                                          ; $6f21: $44
	ld [hl], c                                       ; $6f22: $71
	ld b, l                                          ; $6f23: $45
	inc [hl]                                         ; $6f24: $34
	ldh a, [$d6]                                     ; $6f25: $f0 $d6
	ld b, d                                          ; $6f27: $42
	add h                                            ; $6f28: $84
	ld d, e                                          ; $6f29: $53
	inc de                                           ; $6f2a: $13
	sbc c                                            ; $6f2b: $99
	dec sp                                           ; $6f2c: $3b
	ccf                                              ; $6f2d: $3f
	ld c, [hl]                                       ; $6f2e: $4e
	db $ec                                           ; $6f2f: $ec

jr_091_6f30:
	ret c                                            ; $6f30: $d8

	and b                                            ; $6f31: $a0
	pop de                                           ; $6f32: $d1
	db $ec                                           ; $6f33: $ec
	ret c                                            ; $6f34: $d8

	and b                                            ; $6f35: $a0
	cpl                                              ; $6f36: $2f
	ld b, e                                          ; $6f37: $43
	rst JumpTable                                          ; $6f38: $c7
	and c                                            ; $6f39: $a1
	ld b, l                                          ; $6f3a: $45
	inc a                                            ; $6f3b: $3c
	dec sp                                           ; $6f3c: $3b
	ldh [hDisp0_BGP], a                                     ; $6f3d: $e0 $85
	xor b                                            ; $6f3f: $a8
	ldh a, [rHDMA4]                                  ; $6f40: $f0 $54
	ld a, $4b                                        ; $6f42: $3e $4b
	ldh a, [$7b]                                     ; $6f44: $f0 $7b
	ld h, l                                          ; $6f46: $65
	add e                                            ; $6f47: $83
	ld b, [hl]                                       ; $6f48: $46
	ld c, [hl]                                       ; $6f49: $4e
	ld l, h                                          ; $6f4a: $6c
	dec a                                            ; $6f4b: $3d
	jr c, jr_091_6f93                                ; $6f4c: $38 $45

	and b                                            ; $6f4e: $a0
	ld d, c                                          ; $6f4f: $51
	ld c, b                                          ; $6f50: $48
	ld d, c                                          ; $6f51: $51
	ld [hl], b                                       ; $6f52: $70
	jr c, @-$12                                      ; $6f53: $38 $ec

	ret c                                            ; $6f55: $d8

	ld c, b                                          ; $6f56: $48
	and d                                            ; $6f57: $a2
	cpl                                              ; $6f58: $2f
	ld b, e                                          ; $6f59: $43
	ld b, b                                          ; $6f5a: $40
	add hl, sp                                       ; $6f5b: $39
	and c                                            ; $6f5c: $a1
	inc a                                            ; $6f5d: $3c
	ld b, c                                          ; $6f5e: $41
	di                                               ; $6f5f: $f3
	ld e, a                                          ; $6f60: $5f
	ld e, h                                          ; $6f61: $5c
	ld b, h                                          ; $6f62: $44
	dec sp                                           ; $6f63: $3b
	dec a                                            ; $6f64: $3d
	ld h, e                                          ; $6f65: $63

jr_091_6f66:
	ld b, l                                          ; $6f66: $45
	xor b                                            ; $6f67: $a8
	ldh a, [c]                                       ; $6f68: $f2
	ld d, l                                          ; $6f69: $55
	ldh a, [c]                                       ; $6f6a: $f2
	add [hl]                                         ; $6f6b: $86
	ld b, a                                          ; $6f6c: $47
	ld c, d                                          ; $6f6d: $4a
	ld c, a                                          ; $6f6e: $4f
	ld a, [hl-]                                      ; $6f6f: $3a
	dec sp                                           ; $6f70: $3b
	dec a                                            ; $6f71: $3d
	ld d, b                                          ; $6f72: $50
	and c                                            ; $6f73: $a1
	cpl                                              ; $6f74: $2f
	ld b, e                                          ; $6f75: $43
	ld c, e                                          ; $6f76: $4b
	dec sp                                           ; $6f77: $3b
	ld c, e                                          ; $6f78: $4b
	dec sp                                           ; $6f79: $3b
	ld c, e                                          ; $6f7a: $4b
	xor h                                            ; $6f7b: $ac
	ld c, a                                          ; $6f7c: $4f
	dec sp                                           ; $6f7d: $3b
	ld c, c                                          ; $6f7e: $49
	add d                                            ; $6f7f: $82
	dec sp                                           ; $6f80: $3b
	ccf                                              ; $6f81: $3f
	ld d, l                                          ; $6f82: $55
	ld c, l                                          ; $6f83: $4d
	pop af                                           ; $6f84: $f1
	dec [hl]                                         ; $6f85: $35
	and b                                            ; $6f86: $a0
	ldh a, [$75]                                     ; $6f87: $f0 $75
	adc h                                            ; $6f89: $8c
	ld b, a                                          ; $6f8a: $47
	inc de                                           ; $6f8b: $13
	ldh a, [rLCDC]                                   ; $6f8c: $f0 $40
	ld c, [hl]                                       ; $6f8e: $4e
	ld b, c                                          ; $6f8f: $41
	db $ec                                           ; $6f90: $ec
	ret c                                            ; $6f91: $d8

	ld b, d                                          ; $6f92: $42

jr_091_6f93:
	and b                                            ; $6f93: $a0
	ld l, [hl]                                       ; $6f94: $6e
	ld c, [hl]                                       ; $6f95: $4e
	db $ec                                           ; $6f96: $ec
	ret c                                            ; $6f97: $d8

	xor b                                            ; $6f98: $a8
	ld d, $a0                                        ; $6f99: $16 $a0
	cpl                                              ; $6f9b: $2f
	ld b, e                                          ; $6f9c: $43
	ld d, d                                          ; $6f9d: $52
	ld b, [hl]                                       ; $6f9e: $46
	ld c, h                                          ; $6f9f: $4c
	and b                                            ; $6fa0: $a0
	ldh a, [$99]                                     ; $6fa1: $f0 $99
	sub b                                            ; $6fa3: $90
	ldh a, [$7b]                                     ; $6fa4: $f0 $7b
	ld h, l                                          ; $6fa6: $65
	add e                                            ; $6fa7: $83
	inc de                                           ; $6fa8: $13
	ld b, [hl]                                       ; $6fa9: $46
	ld c, [hl]                                       ; $6faa: $4e
	db $ec                                           ; $6fab: $ec
	ld [de], a                                       ; $6fac: $12
	xor b                                            ; $6fad: $a8
	ldh a, [$35]                                     ; $6fae: $f0 $35
	ld [hl], e                                       ; $6fb0: $73
	ldh a, [rAUD1LEN]                                ; $6fb1: $f0 $11
	ld b, l                                          ; $6fb3: $45
	inc a                                            ; $6fb4: $3c
	dec sp                                           ; $6fb5: $3b
	dec a                                            ; $6fb6: $3d
	ld h, e                                          ; $6fb7: $63
	ld b, l                                          ; $6fb8: $45
	and b                                            ; $6fb9: $a0
	ldh a, [$aa]                                     ; $6fba: $f0 $aa
	adc c                                            ; $6fbc: $89
	adc a                                            ; $6fbd: $8f
	ld c, e                                          ; $6fbe: $4b
	xor $2a                                          ; $6fbf: $ee $2a
	db $ec                                           ; $6fc1: $ec
	ldh a, [c]                                       ; $6fc2: $f2
	ld h, d                                          ; $6fc3: $62
	inc de                                           ; $6fc4: $13
	ld [$a031], a                                    ; $6fc5: $ea $31 $a0
	ldh a, [$57]                                     ; $6fc8: $f0 $57
	ldh a, [$ae]                                     ; $6fca: $f0 $ae
	xor l                                            ; $6fcc: $ad
	db $ed                                           ; $6fcd: $ed
	ld h, b                                          ; $6fce: $60
	ld b, a                                          ; $6fcf: $47
	jp hl                                            ; $6fd0: $e9


	db $db                                           ; $6fd1: $db
	ld c, b                                          ; $6fd2: $48
	and b                                            ; $6fd3: $a0
	cpl                                              ; $6fd4: $2f
	ld b, e                                          ; $6fd5: $43
	sbc $ac                                          ; $6fd6: $de $ac
	db $ed                                           ; $6fd8: $ed
	ld c, c                                          ; $6fd9: $49
	ld b, h                                          ; $6fda: $44
	dec sp                                           ; $6fdb: $3b
	dec a                                            ; $6fdc: $3d
	ld c, h                                          ; $6fdd: $4c
	and b                                            ; $6fde: $a0
	xor $06                                          ; $6fdf: $ee $06
	ld b, a                                          ; $6fe1: $47
	ld [hl], d                                       ; $6fe2: $72
	ld c, l                                          ; $6fe3: $4d
	ccf                                              ; $6fe4: $3f
	xor h                                            ; $6fe5: $ac
	db $ec                                           ; $6fe6: $ec
	cp c                                             ; $6fe7: $b9
	ld c, b                                          ; $6fe8: $48
	and b                                            ; $6fe9: $a0
	cpl                                              ; $6fea: $2f
	ld b, e                                          ; $6feb: $43
	db $ec                                           ; $6fec: $ec
	ldh a, [c]                                       ; $6fed: $f2
	ld c, a                                          ; $6fee: $4f
	ldh a, [$ce]                                     ; $6fef: $f0 $ce
	ld h, e                                          ; $6ff1: $63
	dec sp                                           ; $6ff2: $3b
	dec a                                            ; $6ff3: $3d
	inc de                                           ; $6ff4: $13
	ld l, h                                          ; $6ff5: $6c
	dec a                                            ; $6ff6: $3d
	jr c, jr_091_703d                                ; $6ff7: $38 $44

	ld a, $ac                                        ; $6ff9: $3e $ac
	db $ec                                           ; $6ffb: $ec
	push bc                                          ; $6ffc: $c5
	inc [hl]                                         ; $6ffd: $34
	db $ec                                           ; $6ffe: $ec
	rrca                                             ; $6fff: $0f
	and c                                            ; $7000: $a1
	ldh a, [$aa]                                     ; $7001: $f0 $aa
	adc c                                            ; $7003: $89
	adc a                                            ; $7004: $8f
	ld c, e                                          ; $7005: $4b
	xor $2a                                          ; $7006: $ee $2a
	db $ec                                           ; $7008: $ec
	ldh a, [c]                                       ; $7009: $f2
	ld h, d                                          ; $700a: $62
	inc de                                           ; $700b: $13
	ld [$4531], a                                    ; $700c: $ea $31 $45
	and b                                            ; $700f: $a0
	ld d, c                                          ; $7010: $51
	ld [hl], b                                       ; $7011: $70
	ld d, l                                          ; $7012: $55
	db $ed                                           ; $7013: $ed
	ld c, c                                          ; $7014: $49
	xor l                                            ; $7015: $ad
	jp hl                                            ; $7016: $e9


	db $db                                           ; $7017: $db
	ld c, b                                          ; $7018: $48
	and b                                            ; $7019: $a0
	ld a, b                                          ; $701a: $78
	ccf                                              ; $701b: $3f
	ld b, l                                          ; $701c: $45
	inc a                                            ; $701d: $3c
	dec sp                                           ; $701e: $3b
	dec a                                            ; $701f: $3d
	and b                                            ; $7020: $a0
	ld d, c                                          ; $7021: $51
	ld [hl], b                                       ; $7022: $70
	ld d, l                                          ; $7023: $55
	db $ed                                           ; $7024: $ed
	ld c, c                                          ; $7025: $49
	and b                                            ; $7026: $a0
	ldh a, [$ce]                                     ; $7027: $f0 $ce
	ld h, e                                          ; $7029: $63
	ld d, a                                          ; $702a: $57
	db $eb                                           ; $702b: $eb
	dec [hl]                                         ; $702c: $35
	xor h                                            ; $702d: $ac
	db $ec                                           ; $702e: $ec
	push bc                                          ; $702f: $c5
	or b                                             ; $7030: $b0
	and b                                            ; $7031: $a0
	cpl                                              ; $7032: $2f
	ld b, e                                          ; $7033: $43
	db $ec                                           ; $7034: $ec
	db $10                                           ; $7035: $10
	inc de                                           ; $7036: $13
	jp hl                                            ; $7037: $e9


	ld hl, sp-$60                                    ; $7038: $f8 $a0
	xor $10                                          ; $703a: $ee $10
	xor b                                            ; $703c: $a8

jr_091_703d:
	ld [$a0b3], a                                    ; $703d: $ea $b3 $a0
	cpl                                              ; $7040: $2f
	ld b, e                                          ; $7041: $43
	pop af                                           ; $7042: $f1
	add d                                            ; $7043: $82
	inc a                                            ; $7044: $3c
	ld b, a                                          ; $7045: $47
	inc [hl]                                         ; $7046: $34
	ld l, d                                          ; $7047: $6a
	ld b, d                                          ; $7048: $42
	ld c, e                                          ; $7049: $4b
	xor h                                            ; $704a: $ac
	ld d, c                                          ; $704b: $51
	ld [hl], b                                       ; $704c: $70
	inc a                                            ; $704d: $3c
	dec sp                                           ; $704e: $3b
	dec a                                            ; $704f: $3d
	ld c, b                                          ; $7050: $48
	and b                                            ; $7051: $a0
	ld l, d                                          ; $7052: $6a
	ld b, d                                          ; $7053: $42
	ldh a, [$c6]                                     ; $7054: $f0 $c6
	ldh a, [c]                                       ; $7056: $f2
	xor d                                            ; $7057: $aa
	xor h                                            ; $7058: $ac
	ldh a, [$98]                                     ; $7059: $f0 $98
	ld d, e                                          ; $705b: $53
	ldh a, [$a5]                                     ; $705c: $f0 $a5
	dec sp                                           ; $705e: $3b
	dec a                                            ; $705f: $3d
	ld b, d                                          ; $7060: $42
	inc a                                            ; $7061: $3c
	ld a, $50                                        ; $7062: $3e $50
	and c                                            ; $7064: $a1
	cpl                                              ; $7065: $2f
	ld b, e                                          ; $7066: $43
	ldh a, [$aa]                                     ; $7067: $f0 $aa
	adc c                                            ; $7069: $89
	adc a                                            ; $706a: $8f
	ld b, d                                          ; $706b: $42
	add h                                            ; $706c: $84
	ld c, d                                          ; $706d: $4a
	ld a, $66                                        ; $706e: $3e $66
	add hl, sp                                       ; $7070: $39
	xor b                                            ; $7071: $a8
	db $ec                                           ; $7072: $ec
	reti                                             ; $7073: $d9


	and b                                            ; $7074: $a0
	db $ec                                           ; $7075: $ec
	inc e                                            ; $7076: $1c
	xor b                                            ; $7077: $a8
	ld b, b                                          ; $7078: $40
	add hl, sp                                       ; $7079: $39
	ld b, a                                          ; $707a: $47
	ldh a, [$ec]                                     ; $707b: $f0 $ec
	ld d, d                                          ; $707d: $52
	dec sp                                           ; $707e: $3b
	ccf                                              ; $707f: $3f
	ld c, [hl]                                       ; $7080: $4e
	ld h, e                                          ; $7081: $63
	ld c, h                                          ; $7082: $4c
	and b                                            ; $7083: $a0
	cpl                                              ; $7084: $2f
	ld b, e                                          ; $7085: $43
	or h                                             ; $7086: $b4
	xor h                                            ; $7087: $ac
	db $ec                                           ; $7088: $ec
	push bc                                          ; $7089: $c5
	ld a, d                                          ; $708a: $7a
	ld e, a                                          ; $708b: $5f
	add hl, sp                                       ; $708c: $39
	ld b, l                                          ; $708d: $45
	and b                                            ; $708e: $a0
	add hl, sp                                       ; $708f: $39
	inc [hl]                                         ; $7090: $34
	xor $1f                                          ; $7091: $ee $1f
	xor b                                            ; $7093: $a8
	call c, $b034                                    ; $7094: $dc $34 $b0
	and b                                            ; $7097: $a0
	ld c, h                                          ; $7098: $4c
	add l                                            ; $7099: $85
	inc [hl]                                         ; $709a: $34
	ld l, d                                          ; $709b: $6a
	ld b, d                                          ; $709c: $42
	ld [$a0b3], a                                    ; $709d: $ea $b3 $a0
	cpl                                              ; $70a0: $2f
	ld b, e                                          ; $70a1: $43
	ld d, c                                          ; $70a2: $51
	ld [hl], b                                       ; $70a3: $70
	ld d, c                                          ; $70a4: $51
	ldh a, [$cb]                                     ; $70a5: $f0 $cb
	ld c, [hl]                                       ; $70a7: $4e
	dec sp                                           ; $70a8: $3b
	ccf                                              ; $70a9: $3f
	ld c, b                                          ; $70aa: $48
	and b                                            ; $70ab: $a0
	ld [$acab], a                                    ; $70ac: $ea $ab $ac
	ld b, [hl]                                       ; $70af: $46
	ld b, c                                          ; $70b0: $41
	ld a, [hl-]                                      ; $70b1: $3a
	ldh a, [$c6]                                     ; $70b2: $f0 $c6
	ldh a, [c]                                       ; $70b4: $f2
	xor d                                            ; $70b5: $aa
	inc de                                           ; $70b6: $13
	ldh a, [$98]                                     ; $70b7: $f0 $98
	ld d, e                                          ; $70b9: $53
	ldh a, [$a5]                                     ; $70ba: $f0 $a5
	dec sp                                           ; $70bc: $3b
	dec a                                            ; $70bd: $3d
	ld b, d                                          ; $70be: $42
	inc a                                            ; $70bf: $3c
	ld a, $50                                        ; $70c0: $3e $50
	and c                                            ; $70c2: $a1
	cpl                                              ; $70c3: $2f
	ld b, e                                          ; $70c4: $43
	ld l, l                                          ; $70c5: $6d
	ldh a, [$65]                                     ; $70c6: $f0 $65
	ldh a, [$98]                                     ; $70c8: $f0 $98
	ld d, e                                          ; $70ca: $53
	inc de                                           ; $70cb: $13
	ldh a, [$a5]                                     ; $70cc: $f0 $a5
	dec sp                                           ; $70ce: $3b

jr_091_70cf:
	dec a                                            ; $70cf: $3d
	ld b, c                                          ; $70d0: $41
	ld b, h                                          ; $70d1: $44
	ld e, a                                          ; $70d2: $5f
	add hl, sp                                       ; $70d3: $39
	and b                                            ; $70d4: $a0
	db $ec                                           ; $70d5: $ec
	ldh a, [c]                                       ; $70d6: $f2
	ld c, a                                          ; $70d7: $4f
	inc de                                           ; $70d8: $13
	ldh a, [$ce]                                     ; $70d9: $f0 $ce
	ld h, e                                          ; $70db: $63
	dec sp                                           ; $70dc: $3b
	dec a                                            ; $70dd: $3d
	db $eb                                           ; $70de: $eb
	dec [hl]                                         ; $70df: $35
	xor h                                            ; $70e0: $ac
	db $ec                                           ; $70e1: $ec
	push bc                                          ; $70e2: $c5
	inc [hl]                                         ; $70e3: $34
	or b                                             ; $70e4: $b0
	and b                                            ; $70e5: $a0
	ld b, [hl]                                       ; $70e6: $46
	ld b, c                                          ; $70e7: $41
	ld a, [hl-]                                      ; $70e8: $3a
	ldh a, [$c6]                                     ; $70e9: $f0 $c6
	ldh a, [c]                                       ; $70eb: $f2
	xor d                                            ; $70ec: $aa
	ldh a, [$a5]                                     ; $70ed: $f0 $a5
	ld c, [hl]                                       ; $70ef: $4e
	ld a, [hl-]                                      ; $70f0: $3a
	ld b, c                                          ; $70f1: $41
	ccf                                              ; $70f2: $3f
	xor h                                            ; $70f3: $ac
	ld d, c                                          ; $70f4: $51
	ld [hl], b                                       ; $70f5: $70
	jr c, @-$7a                                      ; $70f6: $38 $84

	ld d, e                                          ; $70f8: $53
	jr c, jr_091_7149                                ; $70f9: $38 $4e

	ld c, h                                          ; $70fb: $4c
	and b                                            ; $70fc: $a0
	cpl                                              ; $70fd: $2f
	ld b, e                                          ; $70fe: $43
	ld b, b                                          ; $70ff: $40
	add hl, sp                                       ; $7100: $39
	jr c, jr_091_713c                                ; $7101: $38 $39

	ldh a, [c]                                       ; $7103: $f2
	ld h, e                                          ; $7104: $63
	pop af                                           ; $7105: $f1
	jp $d8ec                                         ; $7106: $c3 $ec $d8


	ld c, c                                          ; $7109: $49
	inc de                                           ; $710a: $13
	ld [hl], a                                       ; $710b: $77
	add hl, sp                                       ; $710c: $39
	ld e, l                                          ; $710d: $5d
	ld e, d                                          ; $710e: $5a
	ld c, b                                          ; $710f: $48
	and b                                            ; $7110: $a0
	ldh a, [$ce]                                     ; $7111: $f0 $ce
	ld h, e                                          ; $7113: $63
	ld d, a                                          ; $7114: $57
	db $eb                                           ; $7115: $eb
	dec [hl]                                         ; $7116: $35
	xor h                                            ; $7117: $ac
	db $ec                                           ; $7118: $ec
	push bc                                          ; $7119: $c5
	or b                                             ; $711a: $b0
	and c                                            ; $711b: $a1
	ld c, h                                          ; $711c: $4c
	add l                                            ; $711d: $85
	inc [hl]                                         ; $711e: $34
	ld c, a                                          ; $711f: $4f
	add hl, sp                                       ; $7120: $39
	ldh a, [rHDMA4]                                  ; $7121: $f0 $54
	ld a, $ac                                        ; $7123: $3e $ac
	db $ec                                           ; $7125: $ec
	ld c, $3e                                        ; $7126: $0e $3e
	ccf                                              ; $7128: $3f
	jr c, jr_091_7167                                ; $7129: $38 $3c

	ld a, [hl-]                                      ; $712b: $3a
	jr c, jr_091_70cf                                ; $712c: $38 $a1

	cpl                                              ; $712e: $2f
	ld b, e                                          ; $712f: $43
	rst JumpTable                                          ; $7130: $c7
	ld b, h                                          ; $7131: $44
	ld c, h                                          ; $7132: $4c
	xor b                                            ; $7133: $a8
	ld c, a                                          ; $7134: $4f
	add hl, sp                                       ; $7135: $39
	ldh a, [rHDMA4]                                  ; $7136: $f0 $54
	ld a, $38                                        ; $7138: $3e $38
	ld b, l                                          ; $713a: $45
	add hl, sp                                       ; $713b: $39

jr_091_713c:
	inc a                                            ; $713c: $3c
	and c                                            ; $713d: $a1
	xor $1f                                          ; $713e: $ee $1f
	and b                                            ; $7140: $a0
	jp hl                                            ; $7141: $e9


	jp c, $e913                                      ; $7142: $da $13 $e9

	ld c, l                                          ; $7145: $4d
	and b                                            ; $7146: $a0
	cpl                                              ; $7147: $2f
	ld b, e                                          ; $7148: $43

jr_091_7149:
	db $ed                                           ; $7149: $ed
	xor c                                            ; $714a: $a9
	xor h                                            ; $714b: $ac
	jp hl                                            ; $714c: $e9


	ldh [$a1], a                                     ; $714d: $e0 $a1
	xor $1f                                          ; $714f: $ee $1f
	inc [hl]                                         ; $7151: $34
	call c, $f0a8                                    ; $7152: $dc $a8 $f0
	cp l                                             ; $7155: $bd
	jr c, jr_091_7197                                ; $7156: $38 $3f

	ld c, a                                          ; $7158: $4f
	ld d, b                                          ; $7159: $50
	dec sp                                           ; $715a: $3b
	ccf                                              ; $715b: $3f
	ld d, l                                          ; $715c: $55
	ld c, [hl]                                       ; $715d: $4e
	ld h, e                                          ; $715e: $63
	and b                                            ; $715f: $a0
	add h                                            ; $7160: $84
	ld b, a                                          ; $7161: $47
	ld [hl], d                                       ; $7162: $72
	ld a, c                                          ; $7163: $79
	ld c, [hl]                                       ; $7164: $4e
	ldh a, [$08]                                     ; $7165: $f0 $08

jr_091_7167:
	ld e, d                                          ; $7167: $5a
	ld b, d                                          ; $7168: $42
	inc de                                           ; $7169: $13
	ldh a, [$2c]                                     ; $716a: $f0 $2c
	db $ec                                           ; $716c: $ec
	ret c                                            ; $716d: $d8

	inc a                                            ; $716e: $3c
	ld d, b                                          ; $716f: $50
	ld c, b                                          ; $7170: $48
	and b                                            ; $7171: $a0
	cpl                                              ; $7172: $2f
	ld b, e                                          ; $7173: $43
	di                                               ; $7174: $f3
	jr nc, jr_091_71c8                               ; $7175: $30 $51

	ld c, c                                          ; $7177: $49
	ld b, l                                          ; $7178: $45
	ld e, l                                          ; $7179: $5d
	jr c, jr_091_71c3                                ; $717a: $38 $47

	inc de                                           ; $717c: $13
	ld [hl], d                                       ; $717d: $72
	dec a                                            ; $717e: $3d
	ld d, l                                          ; $717f: $55
	ld a, [hl-]                                      ; $7180: $3a
	ld c, [hl]                                       ; $7181: $4e
	ld a, [hl-]                                      ; $7182: $3a
	ld [hl], h                                       ; $7183: $74
	and b                                            ; $7184: $a0
	xor $1f                                          ; $7185: $ee $1f
	ld c, b                                          ; $7187: $48
	dec [hl]                                         ; $7188: $35
	ld c, d                                          ; $7189: $4a
	ld c, a                                          ; $718a: $4f
	inc [hl]                                         ; $718b: $34
	db $ec                                           ; $718c: $ec
	reti                                             ; $718d: $d9


	inc de                                           ; $718e: $13
	db $eb                                           ; $718f: $eb
	ld c, a                                          ; $7190: $4f
	inc a                                            ; $7191: $3c
	ld d, b                                          ; $7192: $50
	xor $05                                          ; $7193: $ee $05
	and b                                            ; $7195: $a0
	cpl                                              ; $7196: $2f

jr_091_7197:
	ld b, e                                          ; $7197: $43
	ld b, b                                          ; $7198: $40
	add hl, sp                                       ; $7199: $39
	xor l                                            ; $719a: $ad
	ld b, b                                          ; $719b: $40
	ld c, l                                          ; $719c: $4d
	ld e, e                                          ; $719d: $5b
	ld d, [hl]                                       ; $719e: $56
	call nc, $a06e                                   ; $719f: $d4 $6e $a0
	ld [hl], b                                       ; $71a2: $70
	ld [hl], c                                       ; $71a3: $71
	ld b, c                                          ; $71a4: $41
	ld c, h                                          ; $71a5: $4c
	and b                                            ; $71a6: $a0
	jp hl                                            ; $71a7: $e9


	jp c, $e913                                      ; $71a8: $da $13 $e9

	ld c, l                                          ; $71ab: $4d
	ld b, l                                          ; $71ac: $45
	and b                                            ; $71ad: $a0
	call c, $f0a8                                    ; $71ae: $dc $a8 $f0
	cp l                                             ; $71b1: $bd
	jr c, @+$41                                      ; $71b2: $38 $3f

	ld c, a                                          ; $71b4: $4f
	ld d, b                                          ; $71b5: $50
	dec sp                                           ; $71b6: $3b
	ccf                                              ; $71b7: $3f
	ld a, b                                          ; $71b8: $78
	ld b, l                                          ; $71b9: $45
	add hl, sp                                       ; $71ba: $39
	inc a                                            ; $71bb: $3c
	ld a, [hl-]                                      ; $71bc: $3a
	and b                                            ; $71bd: $a0
	ldh a, [$bd]                                     ; $71be: $f0 $bd
	jr c, jr_091_7201                                ; $71c0: $38 $3f

	ld c, a                                          ; $71c2: $4f

jr_091_71c3:
	ld d, b                                          ; $71c3: $50
	dec sp                                           ; $71c4: $3b
	dec a                                            ; $71c5: $3d
	ld b, c                                          ; $71c6: $41
	ld b, h                                          ; $71c7: $44

jr_091_71c8:
	ld e, l                                          ; $71c8: $5d
	ld e, d                                          ; $71c9: $5a
	xor h                                            ; $71ca: $ac
	ldh a, [rPCM12]                                  ; $71cb: $f0 $76
	ld a, [hl-]                                      ; $71cd: $3a
	jr c, jr_091_720c                                ; $71ce: $38 $3c

	ld d, b                                          ; $71d0: $50
	inc de                                           ; $71d1: $13
	ld b, [hl]                                       ; $71d2: $46
	ld e, h                                          ; $71d3: $5c
	ld d, b                                          ; $71d4: $50
	ld [hl], c                                       ; $71d5: $71
	ld h, c                                          ; $71d6: $61
	ld d, [hl]                                       ; $71d7: $56
	dec sp                                           ; $71d8: $3b
	ccf                                              ; $71d9: $3f
	ld c, b                                          ; $71da: $48
	and b                                            ; $71db: $a0
	cpl                                              ; $71dc: $2f
	ld b, e                                          ; $71dd: $43
	ld b, b                                          ; $71de: $40
	add hl, sp                                       ; $71df: $39
	xor l                                            ; $71e0: $ad
	ld b, b                                          ; $71e1: $40
	ld c, l                                          ; $71e2: $4d
	ld c, e                                          ; $71e3: $4b
	ldh a, [$8d]                                     ; $71e4: $f0 $8d
	ldh a, [$9e]                                     ; $71e6: $f0 $9e
	ld b, h                                          ; $71e8: $44
	dec sp                                           ; $71e9: $3b
	dec a                                            ; $71ea: $3d
	ld c, h                                          ; $71eb: $4c
	and b                                            ; $71ec: $a0
	call nc, $a863                                   ; $71ed: $d4 $63 $a8
	pop af                                           ; $71f0: $f1
	add hl, hl                                       ; $71f1: $29
	ld a, $3c                                        ; $71f2: $3e $3c
	dec sp                                           ; $71f4: $3b
	dec a                                            ; $71f5: $3d
	inc de                                           ; $71f6: $13
	ld h, e                                          ; $71f7: $63
	ld e, l                                          ; $71f8: $5d
	db $ec                                           ; $71f9: $ec
	ret c                                            ; $71fa: $d8

	ld a, $a0                                        ; $71fb: $3e $a0
	cpl                                              ; $71fd: $2f
	ld b, e                                          ; $71fe: $43
	ld b, b                                          ; $71ff: $40
	add hl, sp                                       ; $7200: $39

jr_091_7201:
	dec [hl]                                         ; $7201: $35
	or h                                             ; $7202: $b4
	xor h                                            ; $7203: $ac
	db $ec                                           ; $7204: $ec
	push bc                                          ; $7205: $c5
	db $ec                                           ; $7206: $ec
	rrca                                             ; $7207: $0f
	and c                                            ; $7208: $a1
	ld l, a                                          ; $7209: $6f
	xor $2d                                          ; $720a: $ee $2d

jr_091_720c:
	jr c, jr_091_7271                                ; $720c: $38 $63

	xor b                                            ; $720e: $a8
	add h                                            ; $720f: $84
	ld b, a                                          ; $7210: $47
	ldh a, [$bd]                                     ; $7211: $f0 $bd
	jr c, jr_091_7254                                ; $7213: $38 $3f

	ld c, a                                          ; $7215: $4f
	ld d, b                                          ; $7216: $50
	add hl, sp                                       ; $7217: $39
	ld b, d                                          ; $7218: $42
	inc de                                           ; $7219: $13
	adc e                                            ; $721a: $8b
	ld e, h                                          ; $721b: $5c
	db $ec                                           ; $721c: $ec
	ret c                                            ; $721d: $d8

	inc a                                            ; $721e: $3c
	ld d, b                                          ; $721f: $50
	and b                                            ; $7220: $a0
	cpl                                              ; $7221: $2f
	ld b, e                                          ; $7222: $43
	ld b, b                                          ; $7223: $40
	add hl, sp                                       ; $7224: $39
	xor c                                            ; $7225: $a9
	ld b, b                                          ; $7226: $40
	ld c, l                                          ; $7227: $4d
	ld a, [hl-]                                      ; $7228: $3a
	ld d, b                                          ; $7229: $50
	db $ec                                           ; $722a: $ec
	ld [$52a0], sp                                   ; $722b: $08 $a0 $52
	ld b, h                                          ; $722e: $44
	ldh a, [$0a]                                     ; $722f: $f0 $0a
	jr c, jr_091_7290                                ; $7231: $38 $5d

	ld e, d                                          ; $7233: $5a
	xor h                                            ; $7234: $ac
	ld c, a                                          ; $7235: $4f
	add hl, sp                                       ; $7236: $39
	inc [hl]                                         ; $7237: $34
	or b                                             ; $7238: $b0
	and c                                            ; $7239: $a1
	cpl                                              ; $723a: $2f
	ld b, e                                          ; $723b: $43
	ld b, b                                          ; $723c: $40
	add hl, sp                                       ; $723d: $39
	ld b, h                                          ; $723e: $44
	ld c, h                                          ; $723f: $4c
	inc [hl]                                         ; $7240: $34
	rla                                              ; $7241: $17
	ldh a, [rPCM12]                                  ; $7242: $f0 $76
	ldh a, [$d2]                                     ; $7244: $f0 $d2
	ldh a, [$3f]                                     ; $7246: $f0 $3f
	ld h, d                                          ; $7248: $62
	ldh a, [$bd]                                     ; $7249: $f0 $bd
	jr c, jr_091_728c                                ; $724b: $38 $3f

	ld c, a                                          ; $724d: $4f
	ld d, b                                          ; $724e: $50
	ld h, e                                          ; $724f: $63
	ld a, [hl-]                                      ; $7250: $3a
	jr c, jr_091_7266                                ; $7251: $38 $13

	ld a, [hl-]                                      ; $7253: $3a

jr_091_7254:
	ld d, b                                          ; $7254: $50
	inc [hl]                                         ; $7255: $34
	ld a, d                                          ; $7256: $7a
	ld e, a                                          ; $7257: $5f
	add hl, sp                                       ; $7258: $39
	and b                                            ; $7259: $a0
	cpl                                              ; $725a: $2f
	ld b, e                                          ; $725b: $43
	jp hl                                            ; $725c: $e9


	ret c                                            ; $725d: $d8

	and c                                            ; $725e: $a1
	db $ec                                           ; $725f: $ec
	jr z, jr_091_72aa                                ; $7260: $28 $48

	and b                                            ; $7262: $a0
	cpl                                              ; $7263: $2f
	ld b, e                                          ; $7264: $43
	db $eb                                           ; $7265: $eb

jr_091_7266:
	rst FarCall                                          ; $7266: $f7
	xor c                                            ; $7267: $a9
	db $ed                                           ; $7268: $ed
	xor c                                            ; $7269: $a9
	and b                                            ; $726a: $a0
	xor $05                                          ; $726b: $ee $05
	xor h                                            ; $726d: $ac
	db $ec                                           ; $726e: $ec
	xor $47                                          ; $726f: $ee $47

jr_091_7271:
	ld a, b                                          ; $7271: $78
	ld h, c                                          ; $7272: $61
	ld d, [hl]                                       ; $7273: $56
	ld c, b                                          ; $7274: $48
	and b                                            ; $7275: $a0
	cpl                                              ; $7276: $2f
	ld b, e                                          ; $7277: $43
	ld e, [hl]                                       ; $7278: $5e
	dec sp                                           ; $7279: $3b
	inc [hl]                                         ; $727a: $34
	db $ec                                           ; $727b: $ec
	db $d3                                           ; $727c: $d3
	and c                                            ; $727d: $a1
	ld h, h                                          ; $727e: $64
	ldh a, [$c8]                                     ; $727f: $f0 $c8
	jr c, jr_091_72c7                                ; $7281: $38 $44

	inc a                                            ; $7283: $3c
	ld d, b                                          ; $7284: $50
	xor h                                            ; $7285: $ac
	or b                                             ; $7286: $b0
	and c                                            ; $7287: $a1
	cpl                                              ; $7288: $2f
	ld b, e                                          ; $7289: $43
	ld e, [hl]                                       ; $728a: $5e
	add l                                            ; $728b: $85

jr_091_728c:
	xor h                                            ; $728c: $ac
	ld l, e                                          ; $728d: $6b
	ld b, a                                          ; $728e: $47
	ld c, a                                          ; $728f: $4f

jr_091_7290:
	ld [hl], d                                       ; $7290: $72
	ccf                                              ; $7291: $3f
	ld a, [hl-]                                      ; $7292: $3a
	jr c, @+$44                                      ; $7293: $38 $42

	ld b, a                                          ; $7295: $47
	xor c                                            ; $7296: $a9
	xor $10                                          ; $7297: $ee $10
	xor b                                            ; $7299: $a8
	ldh a, [rTAC]                                    ; $729a: $f0 $07
	inc a                                            ; $729c: $3c
	dec sp                                           ; $729d: $3b
	dec a                                            ; $729e: $3d
	inc [hl]                                         ; $729f: $34
	ld a, d                                          ; $72a0: $7a
	ld e, a                                          ; $72a1: $5f
	add hl, sp                                       ; $72a2: $39
	and b                                            ; $72a3: $a0
	db $ec                                           ; $72a4: $ec
	cp c                                             ; $72a5: $b9
	xor l                                            ; $72a6: $ad
	db $eb                                           ; $72a7: $eb
	ccf                                              ; $72a8: $3f
	xor h                                            ; $72a9: $ac

jr_091_72aa:
	ld h, e                                          ; $72aa: $63
	ld d, e                                          ; $72ab: $53
	ld d, d                                          ; $72ac: $52
	ld d, d                                          ; $72ad: $52
	add d                                            ; $72ae: $82
	dec sp                                           ; $72af: $3b
	ld h, c                                          ; $72b0: $61
	ld d, [hl]                                       ; $72b1: $56
	dec sp                                           ; $72b2: $3b
	ccf                                              ; $72b3: $3f
	ld c, b                                          ; $72b4: $48
	and b                                            ; $72b5: $a0
	cpl                                              ; $72b6: $2f
	ld b, e                                          ; $72b7: $43
	call nc, $a845                                   ; $72b8: $d4 $45 $a8
	ld [hl-], a                                      ; $72bb: $32
	ldh a, [c]                                       ; $72bc: $f2
	add b                                            ; $72bd: $80
	ldh a, [rAUD3LEVEL]                              ; $72be: $f0 $1c
	ld c, d                                          ; $72c0: $4a
	ret                                              ; $72c1: $c9


	ld [hl], d                                       ; $72c2: $72
	ld h, c                                          ; $72c3: $61
	ld d, [hl]                                       ; $72c4: $56
	ld e, [hl]                                       ; $72c5: $5e
	inc sp                                           ; $72c6: $33

jr_091_72c7:
	add hl, bc                                       ; $72c7: $09
	cpl                                              ; $72c8: $2f
	ld [hl-], a                                      ; $72c9: $32
	ld a, [hl-]                                      ; $72ca: $3a
	ld c, [hl]                                       ; $72cb: $4e
	ldh a, [$08]                                     ; $72cc: $f0 $08
	ld e, d                                          ; $72ce: $5a
	xor $10                                          ; $72cf: $ee $10
	xor h                                            ; $72d1: $ac
	db $ed                                           ; $72d2: $ed
	xor c                                            ; $72d3: $a9
	ld d, e                                          ; $72d4: $53
	di                                               ; $72d5: $f3
	jr nc, jr_091_7329                               ; $72d6: $30 $51

	pop af                                           ; $72d8: $f1
	dec bc                                           ; $72d9: $0b
	ld b, h                                          ; $72da: $44
	and e                                            ; $72db: $a3
	ld l, e                                          ; $72dc: $6b

jr_091_72dd:
	ld c, d                                          ; $72dd: $4a
	ld c, a                                          ; $72de: $4f
	ld a, [hl-]                                      ; $72df: $3a
	jr c, jr_091_7345                                ; $72e0: $38 $63

	xor b                                            ; $72e2: $a8
	ld c, a                                          ; $72e3: $4f
	add hl, sp                                       ; $72e4: $39
	or b                                             ; $72e5: $b0
	and b                                            ; $72e6: $a0
	cpl                                              ; $72e7: $2f
	ld b, e                                          ; $72e8: $43
	ld e, [hl]                                       ; $72e9: $5e
	dec sp                                           ; $72ea: $3b
	inc [hl]                                         ; $72eb: $34
	ld l, e                                          ; $72ec: $6b
	ld b, a                                          ; $72ed: $47
	ld c, a                                          ; $72ee: $4f
	inc de                                           ; $72ef: $13
	ld [hl], d                                       ; $72f0: $72
	ld a, [hl-]                                      ; $72f1: $3a
	jr c, jr_091_733e                                ; $72f2: $38 $4a

	ld a, d                                          ; $72f4: $7a
	ld c, [hl]                                       ; $72f5: $4e
	ld b, d                                          ; $72f6: $42
	and c                                            ; $72f7: $a1
	jr c, jr_091_7332                                ; $72f8: $38 $38

	inc a                                            ; $72fa: $3c
	ld d, b                                          ; $72fb: $50
	inc [hl]                                         ; $72fc: $34
	or b                                             ; $72fd: $b0
	and b                                            ; $72fe: $a0
	cpl                                              ; $72ff: $2f
	ld b, e                                          ; $7300: $43
	ldh a, [rTAC]                                    ; $7301: $f0 $07
	inc a                                            ; $7303: $3c
	dec sp                                           ; $7304: $3b
	dec a                                            ; $7305: $3d
	ld b, l                                          ; $7306: $45
	xor b                                            ; $7307: $a8
	ld a, d                                          ; $7308: $7a
	ld c, [hl]                                       ; $7309: $4e
	ld b, l                                          ; $730a: $45
	and b                                            ; $730b: $a0
	ld b, b                                          ; $730c: $40
	ld c, l                                          ; $730d: $4d
	ld e, e                                          ; $730e: $5b
	ld d, [hl]                                       ; $730f: $56
	inc [hl]                                         ; $7310: $34
	ld [$a0a9], a                                    ; $7311: $ea $a9 $a0
	cpl                                              ; $7314: $2f
	ld [hl-], a                                      ; $7315: $32
	ldh a, [c]                                       ; $7316: $f2
	add b                                            ; $7317: $80
	ldh a, [rAUD3LEVEL]                              ; $7318: $f0 $1c
	ld c, d                                          ; $731a: $4a
	xor h                                            ; $731b: $ac
	ret                                              ; $731c: $c9


	ld [hl], d                                       ; $731d: $72
	ld h, c                                          ; $731e: $61
	ld d, [hl]                                       ; $731f: $56
	ld e, [hl]                                       ; $7320: $5e
	and e                                            ; $7321: $a3
	ld h, e                                          ; $7322: $63
	inc [hl]                                         ; $7323: $34
	ld l, a                                          ; $7324: $6f
	inc [hl]                                         ; $7325: $34
	ldh a, [$bc]                                     ; $7326: $f0 $bc
	ld b, a                                          ; $7328: $47

jr_091_7329:
	ld a, d                                          ; $7329: $7a
	ld c, [hl]                                       ; $732a: $4e
	ld c, h                                          ; $732b: $4c
	and b                                            ; $732c: $a0
	ld l, a                                          ; $732d: $6f
	ld d, e                                          ; $732e: $53
	ld a, b                                          ; $732f: $78
	ld c, [hl]                                       ; $7330: $4e
	ld c, c                                          ; $7331: $49

jr_091_7332:
	ld d, h                                          ; $7332: $54
	ld e, a                                          ; $7333: $5f
	ld e, e                                          ; $7334: $5b
	ld d, [hl]                                       ; $7335: $56
	inc de                                           ; $7336: $13
	ld a, [hl-]                                      ; $7337: $3a
	jr c, jr_091_73a6                                ; $7338: $38 $6c

	dec a                                            ; $733a: $3d
	jr c, jr_091_72dd                                ; $733b: $38 $a0

	cpl                                              ; $733d: $2f

jr_091_733e:
	ld b, e                                          ; $733e: $43
	db $eb                                           ; $733f: $eb
	rla                                              ; $7340: $17
	ld b, l                                          ; $7341: $45
	xor b                                            ; $7342: $a8
	ld [hl-], a                                      ; $7343: $32
	ld a, [hl-]                                      ; $7344: $3a

jr_091_7345:
	ld c, [hl]                                       ; $7345: $4e
	ldh a, [$08]                                     ; $7346: $f0 $08

jr_091_7348:
	ld e, d                                          ; $7348: $5a
	inc [hl]                                         ; $7349: $34
	ld b, b                                          ; $734a: $40
	add hl, sp                                       ; $734b: $39
	jr c, jr_091_7387                                ; $734c: $38 $39

	sbc d                                            ; $734e: $9a
	inc a                                            ; $734f: $3c
	and e                                            ; $7350: $a3
	db $ec                                           ; $7351: $ec
	jr z, jr_091_7367                                ; $7352: $28 $13

	db $eb                                           ; $7354: $eb
	adc b                                            ; $7355: $88
	ld h, d                                          ; $7356: $62
	ld [$a031], a                                    ; $7357: $ea $31 $a0
	ld l, h                                          ; $735a: $6c
	ld b, c                                          ; $735b: $41
	ld a, [hl-]                                      ; $735c: $3a
	ldh a, [$57]                                     ; $735d: $f0 $57
	ldh a, [$ae]                                     ; $735f: $f0 $ae
	ld a, [hl-]                                      ; $7361: $3a
	xor h                                            ; $7362: $ac
	ldh a, [$3f]                                     ; $7363: $f0 $3f
	ld a, e                                          ; $7365: $7b
	inc a                                            ; $7366: $3c

jr_091_7367:
	ld d, a                                          ; $7367: $57
	ld c, b                                          ; $7368: $48
	and b                                            ; $7369: $a0
	cpl                                              ; $736a: $2f
	ld b, e                                          ; $736b: $43
	adc b                                            ; $736c: $88
	sub c                                            ; $736d: $91
	xor b                                            ; $736e: $a8
	ld e, d                                          ; $736f: $5a
	ld b, d                                          ; $7370: $42
	ldh a, [$3f]                                     ; $7371: $f0 $3f
	ld c, a                                          ; $7373: $4f
	db $ec                                           ; $7374: $ec
	cp c                                             ; $7375: $b9
	ld c, h                                          ; $7376: $4c
	and b                                            ; $7377: $a0
	ldh a, [$f7]                                     ; $7378: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $737a: $f0 $17
	ld c, e                                          ; $737c: $4b
	ld l, l                                          ; $737d: $6d
	add b                                            ; $737e: $80
	ldh a, [c]                                       ; $737f: $f2
	ldh a, [c]                                       ; $7380: $f2
	ld b, d                                          ; $7381: $42
	inc de                                           ; $7382: $13
	db $ec                                           ; $7383: $ec
	ld l, e                                          ; $7384: $6b
	ld h, d                                          ; $7385: $62
	ld [hl], d                                       ; $7386: $72

jr_091_7387:
	ccf                                              ; $7387: $3f
	jr c, jr_091_73d8                                ; $7388: $38 $4e

	ld b, d                                          ; $738a: $42
	xor b                                            ; $738b: $a8
	ldh a, [rTAC]                                    ; $738c: $f0 $07
	inc a                                            ; $738e: $3c
	ld c, [hl]                                       ; $738f: $4e
	ld a, [hl-]                                      ; $7390: $3a
	inc [hl]                                         ; $7391: $34
	ld b, b                                          ; $7392: $40
	ld b, d                                          ; $7393: $42
	db $ed                                           ; $7394: $ed
	ld l, a                                          ; $7395: $6f
	ld h, c                                          ; $7396: $61
	ld c, b                                          ; $7397: $48
	and b                                            ; $7398: $a0
	db $ec                                           ; $7399: $ec
	jr z, jr_091_7348                                ; $739a: $28 $ac

	db $eb                                           ; $739c: $eb
	adc b                                            ; $739d: $88
	ld h, d                                          ; $739e: $62
	ld [$a031], a                                    ; $739f: $ea $31 $a0
	ldh a, [$57]                                     ; $73a2: $f0 $57
	ldh a, [$ae]                                     ; $73a4: $f0 $ae

jr_091_73a6:
	ld a, [hl-]                                      ; $73a6: $3a
	xor h                                            ; $73a7: $ac
	ldh a, [$3f]                                     ; $73a8: $f0 $3f
	ld a, e                                          ; $73aa: $7b
	inc a                                            ; $73ab: $3c
	ld d, a                                          ; $73ac: $57
	ld b, h                                          ; $73ad: $44
	dec sp                                           ; $73ae: $3b
	ldh [$a0], a                                     ; $73af: $e0 $a0
	cpl                                              ; $73b1: $2f
	ld b, e                                          ; $73b2: $43
	ld b, b                                          ; $73b3: $40
	add hl, sp                                       ; $73b4: $39
	ld b, h                                          ; $73b5: $44
	ld c, h                                          ; $73b6: $4c
	xor b                                            ; $73b7: $a8
	ld e, d                                          ; $73b8: $5a
	ld b, d                                          ; $73b9: $42
	ldh a, [$3f]                                     ; $73ba: $f0 $3f
	ld c, a                                          ; $73bc: $4f

jr_091_73bd:
	db $ec                                           ; $73bd: $ec
	cp c                                             ; $73be: $b9
	ld c, h                                          ; $73bf: $4c
	and b                                            ; $73c0: $a0
	db $ed                                           ; $73c1: $ed
	ld c, c                                          ; $73c2: $49
	ld b, h                                          ; $73c3: $44
	dec sp                                           ; $73c4: $3b
	dec a                                            ; $73c5: $3d
	ld a, [hl-]                                      ; $73c6: $3a
	ld c, b                                          ; $73c7: $48
	and b                                            ; $73c8: $a0
	db $ec                                           ; $73c9: $ec
	jr z, jr_091_73bd                                ; $73ca: $28 $f1

	or b                                             ; $73cc: $b0
	ldh a, [$3f]                                     ; $73cd: $f0 $3f
	ld b, d                                          ; $73cf: $42
	inc de                                           ; $73d0: $13
	ldh a, [$c1]                                     ; $73d1: $f0 $c1
	ldh a, [$d5]                                     ; $73d3: $f0 $d5
	db $ec                                           ; $73d5: $ec
	ld [de], a                                       ; $73d6: $12
	and b                                            ; $73d7: $a0

jr_091_73d8:
	cpl                                              ; $73d8: $2f
	ld b, e                                          ; $73d9: $43
	ldh a, [$08]                                     ; $73da: $f0 $08
	ld b, c                                          ; $73dc: $41
	ld c, c                                          ; $73dd: $49
	ld b, h                                          ; $73de: $44
	xor h                                            ; $73df: $ac
	adc $eb                                          ; $73e0: $ce $eb
	ld l, e                                          ; $73e2: $6b
	ld c, h                                          ; $73e3: $4c
	and b                                            ; $73e4: $a0
	ld e, b                                          ; $73e5: $58
	ld [hl], h                                       ; $73e6: $74
	xor h                                            ; $73e7: $ac
	ld [hl], d                                       ; $73e8: $72
	ccf                                              ; $73e9: $3f
	jr c, jr_091_7448                                ; $73ea: $38 $5c

	ld d, d                                          ; $73ec: $52
	ld a, $66                                        ; $73ed: $3e $66
	add hl, sp                                       ; $73ef: $39
	and b                                            ; $73f0: $a0
	ldh a, [$5a]                                     ; $73f1: $f0 $5a
	add l                                            ; $73f3: $85
	inc [hl]                                         ; $73f4: $34
	ldh a, [$3f]                                     ; $73f5: $f0 $3f
	ld b, d                                          ; $73f7: $42
	ld a, [hl]                                       ; $73f8: $7e
	ld e, b                                          ; $73f9: $58
	ld d, e                                          ; $73fa: $53
	inc de                                           ; $73fb: $13
	pop af                                           ; $73fc: $f1
	dec sp                                           ; $73fd: $3b
	ld c, [hl]                                       ; $73fe: $4e
	ld a, [hl-]                                      ; $73ff: $3a
	ld b, c                                          ; $7400: $41
	ccf                                              ; $7401: $3f
	inc [hl]                                         ; $7402: $34
	ld [hl], d                                       ; $7403: $72
	ldh a, [hDisp1_WX]                                     ; $7404: $f0 $96

jr_091_7406:
	db $eb                                           ; $7406: $eb
	ld d, [hl]                                       ; $7407: $56
	and b                                            ; $7408: $a0
	cpl                                              ; $7409: $2f
	ld b, e                                          ; $740a: $43
	halt                                             ; $740b: $76
	db $ed                                           ; $740c: $ed
	ld b, e                                          ; $740d: $43
	xor h                                            ; $740e: $ac
	ldh a, [$3f]                                     ; $740f: $f0 $3f
	sbc l                                            ; $7411: $9d
	ld d, b                                          ; $7412: $50
	jr c, jr_091_7406                                ; $7413: $38 $f1

	dec sp                                           ; $7415: $3b
	ld c, [hl]                                       ; $7416: $4e
	ld b, l                                          ; $7417: $45
	and b                                            ; $7418: $a0
	ldh a, [c]                                       ; $7419: $f2
	ld a, c                                          ; $741a: $79
	ld c, c                                          ; $741b: $49
	inc [hl]                                         ; $741c: $34
	ldh a, [$5d]                                     ; $741d: $f0 $5d
	ld h, e                                          ; $741f: $63
	ld d, b                                          ; $7420: $50
	db $ec                                           ; $7421: $ec
	dec bc                                           ; $7422: $0b
	and b                                            ; $7423: $a0
	db $ec                                           ; $7424: $ec
	ld c, $72                                        ; $7425: $0e $72
	ccf                                              ; $7427: $3f
	inc de                                           ; $7428: $13
	jr c, jr_091_7487                                ; $7429: $38 $5c

	ld d, d                                          ; $742b: $52
	ld a, $66                                        ; $742c: $3e $66
	add hl, sp                                       ; $742e: $39
	and b                                            ; $742f: $a0
	adc b                                            ; $7430: $88
	sub c                                            ; $7431: $91
	ld c, e                                          ; $7432: $4b
	xor h                                            ; $7433: $ac
	ld b, l                                          ; $7434: $45
	ld d, l                                          ; $7435: $55
	pop af                                           ; $7436: $f1
	dec sp                                           ; $7437: $3b

jr_091_7438:
	dec sp                                           ; $7438: $3b
	ccf                                              ; $7439: $3f
	ld a, [hl-]                                      ; $743a: $3a
	jr c, jr_091_7487                                ; $743b: $38 $4a

	ld a, $66                                        ; $743d: $3e $66
	add hl, sp                                       ; $743f: $39
	and c                                            ; $7440: $a1
	cpl                                              ; $7441: $2f
	ld b, e                                          ; $7442: $43
	ldh a, [$31]                                     ; $7443: $f0 $31
	ld c, e                                          ; $7445: $4b
	ld b, b                                          ; $7446: $40
	add hl, sp                                       ; $7447: $39

jr_091_7448:
	and b                                            ; $7448: $a0
	ldh a, [$b6]                                     ; $7449: $f0 $b6
	ld b, a                                          ; $744b: $47
	xor h                                            ; $744c: $ac
	xor $1e                                          ; $744d: $ee $1e
	ldh a, [$3f]                                     ; $744f: $f0 $3f
	ld d, e                                          ; $7451: $53
	ld b, l                                          ; $7452: $45
	inc a                                            ; $7453: $3c
	dec sp                                           ; $7454: $3b
	dec a                                            ; $7455: $3d
	ld a, [hl-]                                      ; $7456: $3a
	and b                                            ; $7457: $a0
	cpl                                              ; $7458: $2f
	ld b, e                                          ; $7459: $43
	xor $1e                                          ; $745a: $ee $1e
	ldh a, [$3f]                                     ; $745c: $f0 $3f
	dec sp                                           ; $745e: $3b
	ccf                                              ; $745f: $3f
	and c                                            ; $7460: $a1
	pop hl                                           ; $7461: $e1
	ld d, e                                          ; $7462: $53
	xor $08                                          ; $7463: $ee $08
	xor h                                            ; $7465: $ac
	ld c, a                                          ; $7466: $4f
	ld b, d                                          ; $7467: $42
	ldh a, [c]                                       ; $7468: $f2
	rst SubAFromHL                                          ; $7469: $d7
	ld a, $f0                                        ; $746a: $3e $f0
	ld bc, $f13a                                     ; $746c: $01 $3a $f1
	and l                                            ; $746f: $a5
	pop af                                           ; $7470: $f1
	ldh [c], a                                       ; $7471: $e2
	ld c, d                                          ; $7472: $4a
	inc [hl]                                         ; $7473: $34
	ldh a, [c]                                       ; $7474: $f2
	db $f4                                           ; $7475: $f4
	ldh a, [c]                                       ; $7476: $f2
	ld c, a                                          ; $7477: $4f
	ld c, [hl]                                       ; $7478: $4e
	inc de                                           ; $7479: $13
	di                                               ; $747a: $f3
	ld h, l                                          ; $747b: $65
	pop af                                           ; $747c: $f1
	ld l, [hl]                                       ; $747d: $6e
	ld h, d                                          ; $747e: $62
	pop af                                           ; $747f: $f1
	db $eb                                           ; $7480: $eb
	ld [hl], c                                       ; $7481: $71
	ccf                                              ; $7482: $3f
	jr c, jr_091_74d3                                ; $7483: $38 $4e

	ldh a, [$3f]                                     ; $7485: $f0 $3f

jr_091_7487:
	ld b, l                                          ; $7487: $45
	and b                                            ; $7488: $a0
	db $ec                                           ; $7489: $ec
	db $10                                           ; $748a: $10
	inc [hl]                                         ; $748b: $34
	xor $2b                                          ; $748c: $ee $2b
	ld d, e                                          ; $748e: $53
	inc de                                           ; $748f: $13
	ldh a, [$bb]                                     ; $7490: $f0 $bb
	ld d, d                                          ; $7492: $52
	ld c, [hl]                                       ; $7493: $4e
	ld l, h                                          ; $7494: $6c
	dec a                                            ; $7495: $3d
	jr c, jr_091_7438                                ; $7496: $38 $a0

	ld c, h                                          ; $7498: $4c
	add l                                            ; $7499: $85
	inc [hl]                                         ; $749a: $34
	ld l, d                                          ; $749b: $6a
	ld b, d                                          ; $749c: $42
	ldh a, [$ed]                                     ; $749d: $f0 $ed
	inc de                                           ; $749f: $13
	ld l, e                                          ; $74a0: $6b
	ld b, d                                          ; $74a1: $42
	ldh a, [$ed]                                     ; $74a2: $f0 $ed
	ld b, h                                          ; $74a4: $44
	dec sp                                           ; $74a5: $3b
	dec a                                            ; $74a6: $3d
	ld b, d                                          ; $74a7: $42
	inc a                                            ; $74a8: $3c
	ld a, [hl-]                                      ; $74a9: $3a
	and c                                            ; $74aa: $a1
	cpl                                              ; $74ab: $2f
	ld b, e                                          ; $74ac: $43
	ld b, [hl]                                       ; $74ad: $46
	ld b, [hl]                                       ; $74ae: $46
	inc [hl]                                         ; $74af: $34
	ld b, e                                          ; $74b0: $43
	ld c, c                                          ; $74b1: $49
	ld e, h                                          ; $74b2: $5c
	ld [hl], c                                       ; $74b3: $71
	ld e, h                                          ; $74b4: $5c
	ldh a, [$eb]                                     ; $74b5: $f0 $eb
	inc de                                           ; $74b7: $13
	ld c, d                                          ; $74b8: $4a
	ld a, $66                                        ; $74b9: $3e $66
	add hl, sp                                       ; $74bb: $39
	ld [hl], $ea                                     ; $74bc: $36 $ea
	ld e, a                                          ; $74be: $5f
	and b                                            ; $74bf: $a0
	ldh a, [$6d]                                     ; $74c0: $f0 $6d
	ld e, c                                          ; $74c2: $59
	ldh a, [$27]                                     ; $74c3: $f0 $27
	ld b, d                                          ; $74c5: $42
	ldh a, [$99]                                     ; $74c6: $f0 $99
	sub b                                            ; $74c8: $90
	ld a, [hl-]                                      ; $74c9: $3a
	ld b, c                                          ; $74ca: $41
	ld b, h                                          ; $74cb: $44
	ld c, b                                          ; $74cc: $48
	and b                                            ; $74cd: $a0
	cpl                                              ; $74ce: $2f
	ld b, e                                          ; $74cf: $43
	halt                                             ; $74d0: $76
	ld b, d                                          ; $74d1: $42
	adc e                                            ; $74d2: $8b

jr_091_74d3:
	ld e, h                                          ; $74d3: $5c
	ld a, [hl-]                                      ; $74d4: $3a
	ldh a, [$ed]                                     ; $74d5: $f0 $ed
	ld b, h                                          ; $74d7: $44
	ld b, l                                          ; $74d8: $45
	and b                                            ; $74d9: $a0
	ld l, a                                          ; $74da: $6f
	ld c, a                                          ; $74db: $4f
	xor h                                            ; $74dc: $ac
	jr c, jr_091_7517                                ; $74dd: $38 $38

	ldh a, [$ed]                                     ; $74df: $f0 $ed
	ld b, h                                          ; $74e1: $44
	ld c, c                                          ; $74e2: $49
	ld [hl], a                                       ; $74e3: $77
	dec sp                                           ; $74e4: $3b
	dec a                                            ; $74e5: $3d
	ld h, e                                          ; $74e6: $63
	and b                                            ; $74e7: $a0
	cpl                                              ; $74e8: $2f
	ld b, e                                          ; $74e9: $43
	ld b, b                                          ; $74ea: $40
	ld c, l                                          ; $74eb: $4d
	ld c, e                                          ; $74ec: $4b
	db $ec                                           ; $74ed: $ec
	cp c                                             ; $74ee: $b9
	xor b                                            ; $74ef: $a8
	or h                                             ; $74f0: $b4
	xor h                                            ; $74f1: $ac
	db $ec                                           ; $74f2: $ec
	push bc                                          ; $74f3: $c5
	db $ec                                           ; $74f4: $ec
	rrca                                             ; $74f5: $0f
	and c                                            ; $74f6: $a1
	db $ec                                           ; $74f7: $ec
	db $10                                           ; $74f8: $10
	inc [hl]                                         ; $74f9: $34
	xor $2b                                          ; $74fa: $ee $2b
	ld d, e                                          ; $74fc: $53
	inc de                                           ; $74fd: $13
	ld [$a06d], a                                    ; $74fe: $ea $6d $a0
	ld c, h                                          ; $7501: $4c
	add l                                            ; $7502: $85
	inc [hl]                                         ; $7503: $34
	ld l, d                                          ; $7504: $6a
	ld b, d                                          ; $7505: $42
	ldh a, [$ed]                                     ; $7506: $f0 $ed
	inc de                                           ; $7508: $13
	ld l, e                                          ; $7509: $6b
	inc a                                            ; $750a: $3c
	ldh a, [$2d]                                     ; $750b: $f0 $2d
	dec sp                                           ; $750d: $3b
	ccf                                              ; $750e: $3f
	ld c, [hl]                                       ; $750f: $4e
	and c                                            ; $7510: $a1
	ldh a, [$6d]                                     ; $7511: $f0 $6d
	ld e, c                                          ; $7513: $59
	ldh a, [$27]                                     ; $7514: $f0 $27
	ld b, d                                          ; $7516: $42

jr_091_7517:
	ldh a, [$99]                                     ; $7517: $f0 $99
	sub b                                            ; $7519: $90
	ld a, [hl-]                                      ; $751a: $3a
	ld b, c                                          ; $751b: $41
	ld b, h                                          ; $751c: $44
	xor b                                            ; $751d: $a8
	ldh a, [$80]                                     ; $751e: $f0 $80
	ldh a, [$c5]                                     ; $7520: $f0 $c5
	jr c, jr_091_755c                                ; $7522: $38 $38

	ldh a, [$ed]                                     ; $7524: $f0 $ed
	ld c, h                                          ; $7526: $4c
	and b                                            ; $7527: $a0
	cpl                                              ; $7528: $2f
	ld b, e                                          ; $7529: $43
	ld b, b                                          ; $752a: $40
	add hl, sp                                       ; $752b: $39
	ld c, d                                          ; $752c: $4a
	ld a, $66                                        ; $752d: $3e $66
	add hl, sp                                       ; $752f: $39
	xor b                                            ; $7530: $a8
	halt                                             ; $7531: $76
	ld c, a                                          ; $7532: $4f
	adc e                                            ; $7533: $8b
	ld e, h                                          ; $7534: $5c
	ld a, [hl-]                                      ; $7535: $3a
	ld b, c                                          ; $7536: $41
	ld b, h                                          ; $7537: $44
	xor b                                            ; $7538: $a8
	db $ec                                           ; $7539: $ec
	push bc                                          ; $753a: $c5
	ld a, d                                          ; $753b: $7a
	ld e, a                                          ; $753c: $5f
	add hl, sp                                       ; $753d: $39
	ld b, l                                          ; $753e: $45
	and b                                            ; $753f: $a0
	ld a, [hl]                                       ; $7540: $7e
	ld d, l                                          ; $7541: $55
	ldh a, [$2d]                                     ; $7542: $f0 $2d
	dec sp                                           ; $7544: $3b
	ccf                                              ; $7545: $3f
	ld c, [hl]                                       ; $7546: $4e
	ld h, e                                          ; $7547: $63
	ld c, h                                          ; $7548: $4c
	xor b                                            ; $7549: $a8
	ldh a, [$6d]                                     ; $754a: $f0 $6d
	ld e, c                                          ; $754c: $59
	ldh a, [$27]                                     ; $754d: $f0 $27
	ld b, d                                          ; $754f: $42
	ldh a, [$99]                                     ; $7550: $f0 $99
	sub b                                            ; $7552: $90
	ld a, [hl-]                                      ; $7553: $3a
	ld b, c                                          ; $7554: $41
	ccf                                              ; $7555: $3f
	and b                                            ; $7556: $a0
	cpl                                              ; $7557: $2f
	ld b, e                                          ; $7558: $43
	halt                                             ; $7559: $76
	ld b, d                                          ; $755a: $42
	adc e                                            ; $755b: $8b

jr_091_755c:
	ld e, h                                          ; $755c: $5c
	ld a, [hl-]                                      ; $755d: $3a
	ldh a, [$ed]                                     ; $755e: $f0 $ed
	ld a, [hl-]                                      ; $7560: $3a
	ld b, c                                          ; $7561: $41
	ld b, h                                          ; $7562: $44
	and b                                            ; $7563: $a0
	ld b, b                                          ; $7564: $40
	add hl, sp                                       ; $7565: $39
	ld b, h                                          ; $7566: $44
	dec sp                                           ; $7567: $3b
	dec a                                            ; $7568: $3d
	ld b, d                                          ; $7569: $42
	xor b                                            ; $756a: $a8
	ld b, b                                          ; $756b: $40
	ld c, l                                          ; $756c: $4d
	ld e, e                                          ; $756d: $5b
	ld d, [hl]                                       ; $756e: $56
	inc [hl]                                         ; $756f: $34
	ld c, a                                          ; $7570: $4f
	add hl, sp                                       ; $7571: $39
	or b                                             ; $7572: $b0
	and c                                            ; $7573: $a1

jr_091_7574:
	db $eb                                           ; $7574: $eb
	ld h, l                                          ; $7575: $65
	xor $2d                                          ; $7576: $ee $2d
	jr c, jr_091_75dd                                ; $7578: $38 $63

	ld c, h                                          ; $757a: $4c
	and b                                            ; $757b: $a0
	cpl                                              ; $757c: $2f
	ld b, e                                          ; $757d: $43
	ld b, b                                          ; $757e: $40
	add hl, sp                                       ; $757f: $39
	ld b, h                                          ; $7580: $44
	ld c, h                                          ; $7581: $4c
	xor b                                            ; $7582: $a8
	ld a, [hl]                                       ; $7583: $7e
	jr c, jr_091_7574                                ; $7584: $38 $ee

	dec hl                                           ; $7586: $2b
	ld b, h                                          ; $7587: $44
	dec sp                                           ; $7588: $3b
	dec a                                            ; $7589: $3d
	ld c, h                                          ; $758a: $4c
	and b                                            ; $758b: $a0
	cpl                                              ; $758c: $2f
	ld b, e                                          ; $758d: $43
	rst JumpTable                                          ; $758e: $c7
	ld b, h                                          ; $758f: $44
	ld c, h                                          ; $7590: $4c
	xor b                                            ; $7591: $a8
	db $ec                                           ; $7592: $ec
	cp c                                             ; $7593: $b9
	ld c, h                                          ; $7594: $4c
	ld c, b                                          ; $7595: $48
	and b                                            ; $7596: $a0
	pop af                                           ; $7597: $f1
	ld h, [hl]                                       ; $7598: $66
	jr c, jr_091_75da                                ; $7599: $38 $3f

	jr c, jr_091_75eb                                ; $759b: $38 $4e

	ld b, h                                          ; $759d: $44
	ld e, l                                          ; $759e: $5d
	ld c, d                                          ; $759f: $4a
	xor $10                                          ; $75a0: $ee $10
	inc [hl]                                         ; $75a2: $34
	rla                                              ; $75a3: $17
	ldh a, [$99]                                     ; $75a4: $f0 $99
	sub b                                            ; $75a6: $90
	ld b, d                                          ; $75a7: $42
	ldh a, [$f6]                                     ; $75a8: $f0 $f6
	pop af                                           ; $75aa: $f1
	inc [hl]                                         ; $75ab: $34
	ld b, a                                          ; $75ac: $47
	pop af                                           ; $75ad: $f1
	ld e, a                                          ; $75ae: $5f
	ld e, h                                          ; $75af: $5c
	pop af                                           ; $75b0: $f1
	adc c                                            ; $75b1: $89
	ld d, d                                          ; $75b2: $52
	ld c, l                                          ; $75b3: $4d
	inc de                                           ; $75b4: $13
	ld b, b                                          ; $75b5: $40
	add hl, sp                                       ; $75b6: $39
	ld b, h                                          ; $75b7: $44
	dec sp                                           ; $75b8: $3b
	dec a                                            ; $75b9: $3d
	ld a, [hl-]                                      ; $75ba: $3a
	ld [hl], h                                       ; $75bb: $74
	and b                                            ; $75bc: $a0
	cpl                                              ; $75bd: $2f
	ld b, e                                          ; $75be: $43
	di                                               ; $75bf: $f3
	dec e                                            ; $75c0: $1d
	ldh a, [rTAC]                                    ; $75c1: $f0 $07
	inc [hl]                                         ; $75c3: $34
	ld a, a                                          ; $75c4: $7f
	ld b, a                                          ; $75c5: $47
	sub [hl]                                         ; $75c6: $96
	dec sp                                           ; $75c7: $3b
	dec a                                            ; $75c8: $3d
	inc de                                           ; $75c9: $13
	ld l, h                                          ; $75ca: $6c
	dec a                                            ; $75cb: $3d
	jr c, jr_091_7612                                ; $75cc: $38 $44

	ld c, h                                          ; $75ce: $4c
	and b                                            ; $75cf: $a0
	xor $1f                                          ; $75d0: $ee $1f
	xor h                                            ; $75d2: $ac
	ld d, c                                          ; $75d3: $51
	ld [hl], b                                       ; $75d4: $70
	ld d, l                                          ; $75d5: $55
	db $ec                                           ; $75d6: $ec
	cp c                                             ; $75d7: $b9
	inc a                                            ; $75d8: $3c
	ld d, b                                          ; $75d9: $50

jr_091_75da:
	ld c, b                                          ; $75da: $48
	and b                                            ; $75db: $a0
	db $ec                                           ; $75dc: $ec

jr_091_75dd:
	reti                                             ; $75dd: $d9


	db $eb                                           ; $75de: $eb
	ld h, l                                          ; $75df: $65
	ld c, e                                          ; $75e0: $4b
	inc de                                           ; $75e1: $13
	jr c, jr_091_761c                                ; $75e2: $38 $38

	ld h, e                                          ; $75e4: $63
	ld c, h                                          ; $75e5: $4c
	and b                                            ; $75e6: $a0
	ldh a, [$99]                                     ; $75e7: $f0 $99
	ld b, d                                          ; $75e9: $42
	ld l, l                                          ; $75ea: $6d

jr_091_75eb:
	add b                                            ; $75eb: $80
	ld l, l                                          ; $75ec: $6d
	add b                                            ; $75ed: $80
	ld d, e                                          ; $75ee: $53
	ldh a, [rVBK]                                    ; $75ef: $f0 $4f
	ld b, a                                          ; $75f1: $47
	inc de                                           ; $75f2: $13
	ldh a, [c]                                       ; $75f3: $f2
	call $f16c                                       ; $75f4: $cd $6c $f1
	adc c                                            ; $75f7: $89
	ld d, d                                          ; $75f8: $52
	ld c, l                                          ; $75f9: $4d
	ld c, [hl]                                       ; $75fa: $4e
	ldh a, [$78]                                     ; $75fb: $f0 $78
	ld e, e                                          ; $75fd: $5b
	ld b, h                                          ; $75fe: $44
	dec sp                                           ; $75ff: $3b
	dec a                                            ; $7600: $3d
	ld h, e                                          ; $7601: $63
	and b                                            ; $7602: $a0
	ld e, [hl]                                       ; $7603: $5e
	add l                                            ; $7604: $85
	inc [hl]                                         ; $7605: $34
	ld d, c                                          ; $7606: $51
	ld [hl], b                                       ; $7607: $70
	ld d, l                                          ; $7608: $55
	inc de                                           ; $7609: $13
	ld a, a                                          ; $760a: $7f
	ld b, a                                          ; $760b: $47
	sub [hl]                                         ; $760c: $96
	dec sp                                           ; $760d: $3b
	ld h, c                                          ; $760e: $61
	ld d, [hl]                                       ; $760f: $56
	dec sp                                           ; $7610: $3b
	dec a                                            ; $7611: $3d

jr_091_7612:
	and b                                            ; $7612: $a0
	sbc $ec                                          ; $7613: $de $ec
	cp c                                             ; $7615: $b9
	and c                                            ; $7616: $a1
	cpl                                              ; $7617: $2f
	ld b, e                                          ; $7618: $43
	ld b, l                                          ; $7619: $45
	inc [hl]                                         ; $761a: $34
	db $eb                                           ; $761b: $eb

jr_091_761c:
	ld e, a                                          ; $761c: $5f
	and b                                            ; $761d: $a0
	ld l, e                                          ; $761e: $6b
	inc a                                            ; $761f: $3c
	pop af                                           ; $7620: $f1
	ld hl, sp+$3e                                    ; $7621: $f8 $3e
	jr c, jr_091_765f                                ; $7623: $38 $3a

	ld [hl], h                                       ; $7625: $74
	and b                                            ; $7626: $a0
	db $ec                                           ; $7627: $ec
	reti                                             ; $7628: $d9


	db $eb                                           ; $7629: $eb
	ld h, l                                          ; $762a: $65
	ld c, e                                          ; $762b: $4b
	inc de                                           ; $762c: $13
	ld a, [hl]                                       ; $762d: $7e
	jr c, jr_091_7693                                ; $762e: $38 $63

	ld c, h                                          ; $7630: $4c
	and b                                            ; $7631: $a0
	or h                                             ; $7632: $b4
	xor h                                            ; $7633: $ac
	db $ec                                           ; $7634: $ec
	push bc                                          ; $7635: $c5
	or b                                             ; $7636: $b0
	and b                                            ; $7637: $a0
	ld c, h                                          ; $7638: $4c
	add l                                            ; $7639: $85
	xor h                                            ; $763a: $ac
	ld l, d                                          ; $763b: $6a
	ld b, d                                          ; $763c: $42
	ldh a, [$ed]                                     ; $763d: $f0 $ed
	ld h, h                                          ; $763f: $64
	inc a                                            ; $7640: $3c
	ld a, $3c                                        ; $7641: $3e $3c
	dec sp                                           ; $7643: $3b
	dec a                                            ; $7644: $3d
	ld c, h                                          ; $7645: $4c
	xor c                                            ; $7646: $a9
	ld [hl], a                                       ; $7647: $77
	ld h, e                                          ; $7648: $63
	sbc h                                            ; $7649: $9c
	inc [hl]                                         ; $764a: $34
	ldh a, [c]                                       ; $764b: $f2
	ld bc, $613b                                     ; $764c: $01 $3b $61
	ld d, [hl]                                       ; $764f: $56
	dec sp                                           ; $7650: $3b
	dec a                                            ; $7651: $3d
	and b                                            ; $7652: $a0
	cpl                                              ; $7653: $2f
	ld b, e                                          ; $7654: $43
	halt                                             ; $7655: $76
	ld a, [hl-]                                      ; $7656: $3a
	ld b, c                                          ; $7657: $41
	inc a                                            ; $7658: $3c
	inc de                                           ; $7659: $13
	add a                                            ; $765a: $87
	pop af                                           ; $765b: $f1
	dec l                                            ; $765c: $2d
	ld c, d                                          ; $765d: $4a
	ldh a, [c]                                       ; $765e: $f2

jr_091_765f:
	ld bc, $613b                                     ; $765f: $01 $3b $61
	ld d, [hl]                                       ; $7662: $56
	dec sp                                           ; $7663: $3b
	dec a                                            ; $7664: $3d
	ld b, l                                          ; $7665: $45
	and b                                            ; $7666: $a0
	ld c, d                                          ; $7667: $4a
	ld c, a                                          ; $7668: $4f
	inc [hl]                                         ; $7669: $34
	ld h, c                                          ; $766a: $61
	ld d, [hl]                                       ; $766b: $56
	ld b, c                                          ; $766c: $41
	ld c, c                                          ; $766d: $49
	ld a, $3d                                        ; $766e: $3e $3d
	ldh a, [$ed]                                     ; $7670: $f0 $ed
	ld c, a                                          ; $7672: $4f
	inc de                                           ; $7673: $13
	pop af                                           ; $7674: $f1
	ld h, [hl]                                       ; $7675: $66
	ld e, h                                          ; $7676: $5c
	dec a                                            ; $7677: $3d
	inc a                                            ; $7678: $3c
	dec sp                                           ; $7679: $3b
	dec a                                            ; $767a: $3d
	ld c, h                                          ; $767b: $4c
	and b                                            ; $767c: $a0
	cpl                                              ; $767d: $2f
	ld b, e                                          ; $767e: $43
	ld b, b                                          ; $767f: $40
	add hl, sp                                       ; $7680: $39
	ld b, h                                          ; $7681: $44
	ld c, h                                          ; $7682: $4c
	xor b                                            ; $7683: $a8
	ld b, b                                          ; $7684: $40
	ld c, l                                          ; $7685: $4d
	jp hl                                            ; $7686: $e9


	ret z                                            ; $7687: $c8

	db $ec                                           ; $7688: $ec
	rrca                                             ; $7689: $0f
	and c                                            ; $768a: $a1
	ld c, h                                          ; $768b: $4c
	add l                                            ; $768c: $85
	xor h                                            ; $768d: $ac
	ld l, d                                          ; $768e: $6a
	ld b, d                                          ; $768f: $42
	ldh a, [$ed]                                     ; $7690: $f0 $ed
	ld h, h                                          ; $7692: $64

jr_091_7693:
	inc a                                            ; $7693: $3c
	ld a, $3c                                        ; $7694: $3e $3c
	dec sp                                           ; $7696: $3b
	dec a                                            ; $7697: $3d
	ld c, h                                          ; $7698: $4c
	and c                                            ; $7699: $a1
	cpl                                              ; $769a: $2f
	ld b, e                                          ; $769b: $43
	ld d, h                                          ; $769c: $54
	add hl, sp                                       ; $769d: $39
	jr c, jr_091_76d9                                ; $769e: $38 $39

	ldh a, [c]                                       ; $76a0: $f2
	ld bc, $4e5e                                     ; $76a1: $01 $5e $4e
	ldh a, [$ed]                                     ; $76a4: $f0 $ed
	xor h                                            ; $76a6: $ac
	adc e                                            ; $76a7: $8b
	ld e, h                                          ; $76a8: $5c
	ld b, h                                          ; $76a9: $44
	ld b, l                                          ; $76aa: $45
	and b                                            ; $76ab: $a0
	ld c, d                                          ; $76ac: $4a
	ld c, a                                          ; $76ad: $4f
	inc [hl]                                         ; $76ae: $34
	ld h, c                                          ; $76af: $61
	ld d, [hl]                                       ; $76b0: $56
	ld b, c                                          ; $76b1: $41
	ld c, c                                          ; $76b2: $49
	ld a, $3d                                        ; $76b3: $3e $3d
	ldh a, [$ed]                                     ; $76b5: $f0 $ed
	ld c, a                                          ; $76b7: $4f
	inc de                                           ; $76b8: $13
	pop af                                           ; $76b9: $f1
	ld h, [hl]                                       ; $76ba: $66
	ld e, h                                          ; $76bb: $5c
	dec a                                            ; $76bc: $3d
	inc a                                            ; $76bd: $3c
	dec sp                                           ; $76be: $3b
	dec a                                            ; $76bf: $3d
	ld a, [hl-]                                      ; $76c0: $3a
	and b                                            ; $76c1: $a0
	ld l, d                                          ; $76c2: $6a
	ld b, d                                          ; $76c3: $42
	ldh a, [$ed]                                     ; $76c4: $f0 $ed
	ld c, a                                          ; $76c6: $4f
	db $ec                                           ; $76c7: $ec
	ld [$61ac], sp                                   ; $76c8: $08 $ac $61
	ld d, [hl]                                       ; $76cb: $56
	ld b, c                                          ; $76cc: $41
	ld c, c                                          ; $76cd: $49
	ld a, $3d                                        ; $76ce: $3e $3d
	ldh a, [$ed]                                     ; $76d0: $f0 $ed
	ld c, a                                          ; $76d2: $4f
	inc de                                           ; $76d3: $13
	pop af                                           ; $76d4: $f1
	ld h, [hl]                                       ; $76d5: $66
	ld e, h                                          ; $76d6: $5c
	dec a                                            ; $76d7: $3d
	inc a                                            ; $76d8: $3c

jr_091_76d9:
	dec sp                                           ; $76d9: $3b
	dec a                                            ; $76da: $3d
	ld c, h                                          ; $76db: $4c
	and b                                            ; $76dc: $a0
	cpl                                              ; $76dd: $2f
	ld b, e                                          ; $76de: $43
	ld b, b                                          ; $76df: $40
	add hl, sp                                       ; $76e0: $39
	xor c                                            ; $76e1: $a9
	ld d, h                                          ; $76e2: $54
	add hl, sp                                       ; $76e3: $39
	jr c, jr_091_771f                                ; $76e4: $38 $39

	ldh a, [c]                                       ; $76e6: $f2
	ld bc, $4e5e                                     ; $76e7: $01 $5e $4e
	ldh a, [$ed]                                     ; $76ea: $f0 $ed
	inc [hl]                                         ; $76ec: $34
	adc e                                            ; $76ed: $8b
	ld e, h                                          ; $76ee: $5c
	ld b, h                                          ; $76ef: $44
	ld b, l                                          ; $76f0: $45
	and b                                            ; $76f1: $a0
	ret nz                                           ; $76f2: $c0

	dec [hl]                                         ; $76f3: $35
	ld b, b                                          ; $76f4: $40
	ld c, l                                          ; $76f5: $4d
	ld e, e                                          ; $76f6: $5b
	ld d, [hl]                                       ; $76f7: $56
	xor h                                            ; $76f8: $ac
	db $ec                                           ; $76f9: $ec
	push bc                                          ; $76fa: $c5
	or b                                             ; $76fb: $b0
	and b                                            ; $76fc: $a0
	add hl, bc                                       ; $76fd: $09
	ld b, [hl]                                       ; $76fe: $46
	dec sp                                           ; $76ff: $3b
	ld c, b                                          ; $7700: $48
	xor h                                            ; $7701: $ac
	ld h, h                                          ; $7702: $64
	inc [hl]                                         ; $7703: $34
	jp hl                                            ; $7704: $e9


	dec hl                                           ; $7705: $2b
	xor b                                            ; $7706: $a8
	ld de, $4158                                     ; $7707: $11 $58 $41
	and b                                            ; $770a: $a0
	ld b, [hl]                                       ; $770b: $46
	dec sp                                           ; $770c: $3b
	inc [hl]                                         ; $770d: $34
	ld h, h                                          ; $770e: $64
	ld c, e                                          ; $770f: $4b
	ld b, l                                          ; $7710: $45
	add hl, sp                                       ; $7711: $39
	inc de                                           ; $7712: $13
	ld [hl], b                                       ; $7713: $70
	ldh a, [rAUD1SWEEP]                              ; $7714: $f0 $10
	jr c, jr_091_776a                                ; $7716: $38 $52

	ld d, c                                          ; $7718: $51
	dec [hl]                                         ; $7719: $35
	ld de, $56f0                                     ; $771a: $11 $f0 $56
	and b                                            ; $771d: $a0
	cpl                                              ; $771e: $2f

jr_091_771f:
	ld b, e                                          ; $771f: $43
	ld [hl], b                                       ; $7720: $70
	ld [hl], c                                       ; $7721: $71
	ld b, c                                          ; $7722: $41
	ld c, h                                          ; $7723: $4c
	xor b                                            ; $7724: $a8
	ret                                              ; $7725: $c9


	inc [hl]                                         ; $7726: $34
	ld [$4800], a                                    ; $7727: $ea $00 $48
	and b                                            ; $772a: $a0
	ld c, a                                          ; $772b: $4f
	add hl, sp                                       ; $772c: $39
	ldh a, [rHDMA4]                                  ; $772d: $f0 $54
	ld a, $4a                                        ; $772f: $3e $4a
	xor h                                            ; $7731: $ac
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7732: $f0 $81
	ldh a, [$30]                                     ; $7734: $f0 $30
	ld c, d                                          ; $7736: $4a
	ld d, c                                          ; $7737: $51
	inc a                                            ; $7738: $3c
	ld d, b                                          ; $7739: $50
	xor h                                            ; $773a: $ac
	pop af                                           ; $773b: $f1
	ld a, c                                          ; $773c: $79
	pop af                                           ; $773d: $f1
	ld h, d                                          ; $773e: $62
	ld h, d                                          ; $773f: $62
	ldh a, [c]                                       ; $7740: $f2
	db $db                                           ; $7741: $db
	ld d, d                                          ; $7742: $52
	ld a, c                                          ; $7743: $79
	ld d, d                                          ; $7744: $52
	ld a, $66                                        ; $7745: $3e $66
	add hl, sp                                       ; $7747: $39
	and b                                            ; $7748: $a0
	cpl                                              ; $7749: $2f
	ld b, e                                          ; $774a: $43

jr_091_774b:
	jp hl                                            ; $774b: $e9


	ld d, e                                          ; $774c: $53
	xor h                                            ; $774d: $ac
	db $ec                                           ; $774e: $ec
	rst SubAFromDE                                          ; $774f: $df
	ld c, e                                          ; $7750: $4b
	inc [hl]                                         ; $7751: $34
	ldh a, [hDisp1_LCDC]                                     ; $7752: $f0 $8f
	ld b, c                                          ; $7754: $41
	ld c, d                                          ; $7755: $4a
	jr c, jr_091_7797                                ; $7756: $38 $3f

	ld b, l                                          ; $7758: $45
	and b                                            ; $7759: $a0
	jp hl                                            ; $775a: $e9


	inc d                                            ; $775b: $14
	xor b                                            ; $775c: $a8
	ld c, d                                          ; $775d: $4a
	ld c, a                                          ; $775e: $4f
	inc [hl]                                         ; $775f: $34
	xor $06                                          ; $7760: $ee $06
	ld b, a                                          ; $7762: $47
	db $ed                                           ; $7763: $ed
	ld d, l                                          ; $7764: $55
	ldh a, [$08]                                     ; $7765: $f0 $08
	add hl, sp                                       ; $7767: $39
	ld d, e                                          ; $7768: $53
	inc de                                           ; $7769: $13

jr_091_776a:
	ldh a, [$0a]                                     ; $776a: $f0 $0a
	jr c, jr_091_77b8                                ; $776c: $38 $4a

	ld d, c                                          ; $776e: $51
	inc a                                            ; $776f: $3c
	ld d, b                                          ; $7770: $50
	ld c, b                                          ; $7771: $48
	and b                                            ; $7772: $a0
	cpl                                              ; $7773: $2f
	ld b, e                                          ; $7774: $43
	rst JumpTable                                          ; $7775: $c7
	xor c                                            ; $7776: $a9
	ld b, [hl]                                       ; $7777: $46
	ld d, a                                          ; $7778: $57
	ld d, e                                          ; $7779: $53
	ld c, c                                          ; $777a: $49
	add hl, sp                                       ; $777b: $39
	and b                                            ; $777c: $a0
	db $ed                                           ; $777d: $ed
	ld d, a                                          ; $777e: $57
	xor h                                            ; $777f: $ac
	ld [$4c20], a                                    ; $7780: $ea $20 $4c
	and b                                            ; $7783: $a0
	ld b, [hl]                                       ; $7784: $46
	dec sp                                           ; $7785: $3b
	inc [hl]                                         ; $7786: $34
	ld h, h                                          ; $7787: $64
	ld c, e                                          ; $7788: $4b
	ld b, l                                          ; $7789: $45
	add hl, sp                                       ; $778a: $39
	inc de                                           ; $778b: $13
	ld [hl], b                                       ; $778c: $70
	ldh a, [rAUD1SWEEP]                              ; $778d: $f0 $10
	jr c, @+$54                                      ; $778f: $38 $52

	ld d, c                                          ; $7791: $51
	dec [hl]                                         ; $7792: $35
	ldh a, [$c7]                                     ; $7793: $f0 $c7
	inc a                                            ; $7795: $3c
	dec sp                                           ; $7796: $3b

jr_091_7797:
	dec a                                            ; $7797: $3d
	ld c, d                                          ; $7798: $4a
	ld d, c                                          ; $7799: $51
	ld c, h                                          ; $779a: $4c
	and b                                            ; $779b: $a0
	or h                                             ; $779c: $b4
	xor h                                            ; $779d: $ac
	ldh a, [rHDMA4]                                  ; $779e: $f0 $54
	ld a, $f0                                        ; $77a0: $3e $f0
	adc a                                            ; $77a2: $8f
	ld d, d                                          ; $77a3: $52
	ld a, c                                          ; $77a4: $79
	ccf                                              ; $77a5: $3f
	ld d, l                                          ; $77a6: $55
	ld b, h                                          ; $77a7: $44
	ld e, b                                          ; $77a8: $58
	jr c, jr_091_774b                                ; $77a9: $38 $a0

	cpl                                              ; $77ab: $2f
	ld b, e                                          ; $77ac: $43
	jp hl                                            ; $77ad: $e9


	ld a, a                                          ; $77ae: $7f
	and b                                            ; $77af: $a0
	or [hl]                                          ; $77b0: $b6
	xor h                                            ; $77b1: $ac
	ld [$a020], a                                    ; $77b2: $ea $20 $a0
	xor $10                                          ; $77b5: $ee $10
	xor b                                            ; $77b7: $a8

jr_091_77b8:
	ldh a, [$c7]                                     ; $77b8: $f0 $c7
	inc a                                            ; $77ba: $3c
	dec sp                                           ; $77bb: $3b
	dec a                                            ; $77bc: $3d
	ld c, d                                          ; $77bd: $4a
	ld d, c                                          ; $77be: $51

jr_091_77bf:
	ld c, h                                          ; $77bf: $4c
	and b                                            ; $77c0: $a0
	ld c, a                                          ; $77c1: $4f
	add hl, sp                                       ; $77c2: $39
	ldh a, [rHDMA4]                                  ; $77c3: $f0 $54
	ld a, $f0                                        ; $77c5: $3e $f0
	ld a, [bc]                                       ; $77c7: $0a
	ld d, l                                          ; $77c8: $55
	inc de                                           ; $77c9: $13
	ld a, b                                          ; $77ca: $78
	ccf                                              ; $77cb: $3f
	ld c, a                                          ; $77cc: $4f
	ld d, b                                          ; $77cd: $50
	ld h, e                                          ; $77ce: $63
	ld a, [hl-]                                      ; $77cf: $3a
	jr c, jr_091_781b                                ; $77d0: $38 $49

	pop af                                           ; $77d2: $f1
	sbc $57                                          ; $77d3: $de $57
	ld d, d                                          ; $77d5: $52
	ld d, c                                          ; $77d6: $51
	and b                                            ; $77d7: $a0
	cpl                                              ; $77d8: $2f
	ld b, e                                          ; $77d9: $43
	ld d, c                                          ; $77da: $51
	jr c, jr_091_782f                                ; $77db: $38 $52

	ld a, c                                          ; $77dd: $79
	ld b, c                                          ; $77de: $41
	xor l                                            ; $77df: $ad
	jp hl                                            ; $77e0: $e9


	ld d, e                                          ; $77e1: $53
	ldh a, [hDisp1_LCDC]                                     ; $77e2: $f0 $8f
	ld b, c                                          ; $77e4: $41
	ld c, d                                          ; $77e5: $4a
	ccf                                              ; $77e6: $3f
	ld b, l                                          ; $77e7: $45
	and b                                            ; $77e8: $a0
	jr c, jr_091_7823                                ; $77e9: $38 $38

	ld c, d                                          ; $77eb: $4a
	ld d, c                                          ; $77ec: $51
	xor b                                            ; $77ed: $a8
	ld c, a                                          ; $77ee: $4f
	add hl, sp                                       ; $77ef: $39
	ld d, c                                          ; $77f0: $51
	sbc l                                            ; $77f1: $9d
	ldh a, [$ce]                                     ; $77f2: $f0 $ce
	ld h, e                                          ; $77f4: $63
	ld d, a                                          ; $77f5: $57
	ld d, d                                          ; $77f6: $52
	ld d, c                                          ; $77f7: $51
	inc a                                            ; $77f8: $3c
	ld d, b                                          ; $77f9: $50
	ld c, b                                          ; $77fa: $48
	and b                                            ; $77fb: $a0
	cpl                                              ; $77fc: $2f
	ld b, e                                          ; $77fd: $43
	rst JumpTable                                          ; $77fe: $c7
	ld c, b                                          ; $77ff: $48
	and b                                            ; $7800: $a0
	ld c, a                                          ; $7801: $4f
	add hl, sp                                       ; $7802: $39
	ldh a, [rHDMA4]                                  ; $7803: $f0 $54
	ld a, $4a                                        ; $7805: $3e $4a
	xor h                                            ; $7807: $ac
	pop af                                           ; $7808: $f1
	ld a, c                                          ; $7809: $79
	pop af                                           ; $780a: $f1
	ld h, d                                          ; $780b: $62
	ldh a, [$ce]                                     ; $780c: $f0 $ce
	ld h, e                                          ; $780e: $63
	ld d, a                                          ; $780f: $57
	ld d, d                                          ; $7810: $52
	ld d, c                                          ; $7811: $51
	inc a                                            ; $7812: $3c
	ld d, b                                          ; $7813: $50
	inc de                                           ; $7814: $13
	db $ec                                           ; $7815: $ec
	ld c, $3e                                        ; $7816: $0e $3e

jr_091_7818:
	ccf                                              ; $7818: $3f
	ccf                                              ; $7819: $3f
	ld d, l                                          ; $781a: $55

jr_091_781b:
	ld b, h                                          ; $781b: $44
	ld e, b                                          ; $781c: $58
	jr c, jr_091_77bf                                ; $781d: $38 $a0

	cpl                                              ; $781f: $2f
	ld b, e                                          ; $7820: $43
	jr c, jr_091_785b                                ; $7821: $38 $38

jr_091_7823:
	ld b, l                                          ; $7823: $45
	xor b                                            ; $7824: $a8
	ldh a, [$d7]                                     ; $7825: $f0 $d7
	ld c, e                                          ; $7827: $4b
	db $ed                                           ; $7828: $ed
	adc b                                            ; $7829: $88
	inc [hl]                                         ; $782a: $34
	halt                                             ; $782b: $76
	ld d, e                                          ; $782c: $53
	ld l, [hl]                                       ; $782d: $6e
	ld c, [hl]                                       ; $782e: $4e

jr_091_782f:
	inc a                                            ; $782f: $3c
	ld d, b                                          ; $7830: $50
	xor h                                            ; $7831: $ac
	db $ec                                           ; $7832: $ec
	rst SubAFromDE                                          ; $7833: $df

Jump_091_7834:
	ld d, h                                          ; $7834: $54
	ld b, b                                          ; $7835: $40
	inc [hl]                                         ; $7836: $34
	ldh a, [hDisp1_LCDC]                                     ; $7837: $f0 $8f
	ld b, c                                          ; $7839: $41
	ld c, d                                          ; $783a: $4a
	ld a, [hl-]                                      ; $783b: $3a
	ld b, l                                          ; $783c: $45
	and b                                            ; $783d: $a0
	jp hl                                            ; $783e: $e9


	inc d                                            ; $783f: $14
	xor b                                            ; $7840: $a8
	ld c, d                                          ; $7841: $4a
	ld c, a                                          ; $7842: $4f
	ld c, b                                          ; $7843: $48
	and b                                            ; $7844: $a0
	cpl                                              ; $7845: $2f
	ld b, e                                          ; $7846: $43
	jr c, jr_091_7881                                ; $7847: $38 $38

	dec sp                                           ; $7849: $3b
	ccf                                              ; $784a: $3f
	inc [hl]                                         ; $784b: $34
	jr c, jr_091_7886                                ; $784c: $38 $38

	dec sp                                           ; $784e: $3b
	ccf                                              ; $784f: $3f
	xor h                                            ; $7850: $ac
	ld l, d                                          ; $7851: $6a
	push af                                          ; $7852: $f5
	xor h                                            ; $7853: $ac
	ld l, [hl]                                       ; $7854: $6e
	dec sp                                           ; $7855: $3b
	ccf                                              ; $7856: $3f
	ld d, l                                          ; $7857: $55
	ld c, l                                          ; $7858: $4d
	dec a                                            ; $7859: $3d
	ld b, c                                          ; $785a: $41

jr_091_785b:
	ld b, h                                          ; $785b: $44
	inc a                                            ; $785c: $3c
	ld d, b                                          ; $785d: $50
	ld e, b                                          ; $785e: $58
	and b                                            ; $785f: $a0
	ld d, c                                          ; $7860: $51
	jr c, jr_091_78b5                                ; $7861: $38 $52

	ld a, c                                          ; $7863: $79
	ld b, c                                          ; $7864: $41
	xor l                                            ; $7865: $ad
	ld e, e                                          ; $7866: $5b
	ld d, [hl]                                       ; $7867: $56
	ld b, [hl]                                       ; $7868: $46
	inc [hl]                                         ; $7869: $34
	ret                                              ; $786a: $c9


	ld b, h                                          ; $786b: $44
	ld e, l                                          ; $786c: $5d
	inc de                                           ; $786d: $13
	ldh a, [hDisp1_LCDC]                                     ; $786e: $f0 $8f
	ld d, d                                          ; $7870: $52
	ld a, c                                          ; $7871: $79
	ccf                                              ; $7872: $3f
	ld d, l                                          ; $7873: $55
	ld b, h                                          ; $7874: $44
	ld e, b                                          ; $7875: $58
	jr c, jr_091_7818                                ; $7876: $38 $a0

	xor $2d                                          ; $7878: $ee $2d
	and b                                            ; $787a: $a0
	ld c, e                                          ; $787b: $4b
	ld [hl], h                                       ; $787c: $74
	ld e, c                                          ; $787d: $59
	dec sp                                           ; $787e: $3b
	xor h                                            ; $787f: $ac
	ld c, a                                          ; $7880: $4f

jr_091_7881:
	add hl, sp                                       ; $7881: $39
	ldh a, [$f3]                                     ; $7882: $f0 $f3
	ld c, l                                          ; $7884: $4d
	ld d, d                                          ; $7885: $52

jr_091_7886:
	ld a, $3d                                        ; $7886: $3e $3d
	and b                                            ; $7888: $a0
	cpl                                              ; $7889: $2f
	ld b, e                                          ; $788a: $43
	adc b                                            ; $788b: $88
	sub c                                            ; $788c: $91
	xor h                                            ; $788d: $ac
	ld d, c                                          ; $788e: $51
	ld [hl], b                                       ; $788f: $70
	jr c, @-$0d                                      ; $7890: $38 $f1

	call c, $3b44                                    ; $7892: $dc $44 $3b
	dec a                                            ; $7895: $3d
	ld c, h                                          ; $7896: $4c
	xor b                                            ; $7897: $a8
	halt                                             ; $7898: $76
	ld c, a                                          ; $7899: $4f
	ld c, a                                          ; $789a: $4f
	add hl, sp                                       ; $789b: $39
	inc [hl]                                         ; $789c: $34
	ldh a, [$f3]                                     ; $789d: $f0 $f3
	ld c, l                                          ; $789f: $4d
	ccf                                              ; $78a0: $3f
	ld d, l                                          ; $78a1: $55
	dec a                                            ; $78a2: $3d
	ld d, l                                          ; $78a3: $55
	dec a                                            ; $78a4: $3d
	ld b, h                                          ; $78a5: $44
	ld b, l                                          ; $78a6: $45
	and b                                            ; $78a7: $a0
	ld c, d                                          ; $78a8: $4a
	ld c, a                                          ; $78a9: $4f
	inc [hl]                                         ; $78aa: $34
	sub d                                            ; $78ab: $92

Jump_091_78ac:
	adc [hl]                                         ; $78ac: $8e
	dec sp                                           ; $78ad: $3b
	dec a                                            ; $78ae: $3d
	ldh a, [$b1]                                     ; $78af: $f0 $b1
	ldh a, [c]                                       ; $78b1: $f2
	ld [hl+], a                                      ; $78b2: $22
	ld d, e                                          ; $78b3: $53
	inc de                                           ; $78b4: $13

jr_091_78b5:
	ld b, [hl]                                       ; $78b5: $46
	ld d, a                                          ; $78b6: $57
	ld d, d                                          ; $78b7: $52
	ld a, $3d                                        ; $78b8: $3e $3d
	ld c, h                                          ; $78ba: $4c
	and b                                            ; $78bb: $a0
	cpl                                              ; $78bc: $2f
	ld b, e                                          ; $78bd: $43
	ld a, b                                          ; $78be: $78
	ldh a, [rAUD1HIGH]                               ; $78bf: $f0 $14
	ld c, a                                          ; $78c1: $4f
	inc [hl]                                         ; $78c2: $34

jr_091_78c3:
	adc $42                                          ; $78c3: $ce $42
	inc de                                           ; $78c5: $13
	pop af                                           ; $78c6: $f1
	call c, $f153                                    ; $78c7: $dc $53 $f1
	ld bc, $8cf0                                     ; $78ca: $01 $f0 $8c
	ld c, [hl]                                       ; $78cd: $4e
	xor h                                            ; $78ce: $ac
	ldh a, [rAUD4ENV]                                ; $78cf: $f0 $21
	ldh a, [rAUD4GO]                                 ; $78d1: $f0 $23
	jr c, jr_091_78c3                                ; $78d3: $38 $ee

	rla                                              ; $78d5: $17
	ld h, d                                          ; $78d6: $62
	ld a, $45                                        ; $78d7: $3e $45
	add hl, sp                                       ; $78d9: $39
	ld b, l                                          ; $78da: $45
	and b                                            ; $78db: $a0
	ld h, h                                          ; $78dc: $64
	pop af                                           ; $78dd: $f1
	call c, Call_091_4158                            ; $78de: $dc $58 $41
	xor l                                            ; $78e1: $ad
	jp nc, Jump_091_7834                             ; $78e2: $d2 $34 $78

	ld d, d                                          ; $78e5: $52
	ld a, c                                          ; $78e6: $79
	ld b, c                                          ; $78e7: $41
	ld c, d                                          ; $78e8: $4a
	ld a, $3d                                        ; $78e9: $3e $3d
	ld c, h                                          ; $78eb: $4c
	ld c, b                                          ; $78ec: $48
	and b                                            ; $78ed: $a0
	cpl                                              ; $78ee: $2f
	ld b, e                                          ; $78ef: $43
	db $eb                                           ; $78f0: $eb
	inc bc                                           ; $78f1: $03
	xor l                                            ; $78f2: $ad
	ld l, h                                          ; $78f3: $6c
	ld b, c                                          ; $78f4: $41
	ld a, [hl-]                                      ; $78f5: $3a
	inc [hl]                                         ; $78f6: $34
	ld d, h                                          ; $78f7: $54
	add hl, sp                                       ; $78f8: $39
	jr c, jr_091_7934                                ; $78f9: $38 $39

	ld b, d                                          ; $78fb: $42
	inc de                                           ; $78fc: $13
	db $ed                                           ; $78fd: $ed
	ld [hl], h                                       ; $78fe: $74
	ld a, [hl-]                                      ; $78ff: $3a
	jr c, jr_091_7943                                ; $7900: $38 $41

	ld b, h                                          ; $7902: $44
	ld e, a                                          ; $7903: $5f
	add hl, sp                                       ; $7904: $39
	ld a, [hl-]                                      ; $7905: $3a
	and b                                            ; $7906: $a0
	ld a, b                                          ; $7907: $78
	ldh a, [rAUD1HIGH]                               ; $7908: $f0 $14
	ld c, e                                          ; $790a: $4b
	ld c, b                                          ; $790b: $48
	xor h                                            ; $790c: $ac
	ld c, a                                          ; $790d: $4f
	dec sp                                           ; $790e: $3b
	ld c, c                                          ; $790f: $49
	ld h, h                                          ; $7910: $64
	pop af                                           ; $7911: $f1
	call c, Call_091_4158                            ; $7912: $dc $58 $41
	ld h, d                                          ; $7915: $62
	pop af                                           ; $7916: $f1
	ld bc, $8cf0                                     ; $7917: $01 $f0 $8c
	ld c, [hl]                                       ; $791a: $4e
	xor h                                            ; $791b: $ac
	xor $17                                          ; $791c: $ee $17
	ld h, d                                          ; $791e: $62
	ld a, $3d                                        ; $791f: $3e $3d
	jr c, jr_091_796d                                ; $7921: $38 $4a

	ld d, c                                          ; $7923: $51
	ld c, h                                          ; $7924: $4c
	and b                                            ; $7925: $a0
	cpl                                              ; $7926: $2f
	ld b, e                                          ; $7927: $43
	ld b, b                                          ; $7928: $40
	add hl, sp                                       ; $7929: $39
	ld b, h                                          ; $792a: $44
	ld c, h                                          ; $792b: $4c
	xor b                                            ; $792c: $a8
	ld a, b                                          ; $792d: $78
	ldh a, [rAUD1HIGH]                               ; $792e: $f0 $14
	ld d, h                                          ; $7930: $54
	ld b, b                                          ; $7931: $40
	inc [hl]                                         ; $7932: $34
	sub d                                            ; $7933: $92

jr_091_7934:
	adc [hl]                                         ; $7934: $8e
	ld e, a                                          ; $7935: $5f
	add hl, sp                                       ; $7936: $39
	and b                                            ; $7937: $a0
	ld b, [hl]                                       ; $7938: $46
	dec sp                                           ; $7939: $3b
	xor h                                            ; $793a: $ac
	ld h, h                                          ; $793b: $64
	inc [hl]                                         ; $793c: $34
	jp hl                                            ; $793d: $e9


	dec hl                                           ; $793e: $2b
	and b                                            ; $793f: $a0
	cpl                                              ; $7940: $2f
	ld b, e                                          ; $7941: $43
	ld h, h                                          ; $7942: $64

jr_091_7943:
	ld c, e                                          ; $7943: $4b
	ld b, l                                          ; $7944: $45
	add hl, sp                                       ; $7945: $39
	inc [hl]                                         ; $7946: $34
	db $ec                                           ; $7947: $ec
	rst SubAFromDE                                          ; $7948: $df
	xor b                                            ; $7949: $a8
	db $eb                                           ; $794a: $eb
	rst FarCall                                          ; $794b: $f7
	inc [hl]                                         ; $794c: $34
	db $eb                                           ; $794d: $eb
	ld hl, sp-$5f                                    ; $794e: $f8 $a1
	jr c, jr_091_79b0                                ; $7950: $38 $5e

	inc [hl]                                         ; $7952: $34
	jr c, jr_091_798d                                ; $7953: $38 $38

	ld c, d                                          ; $7955: $4a
	ld d, c                                          ; $7956: $51
	xor l                                            ; $7957: $ad
	db $ed                                           ; $7958: $ed
	ld e, l                                          ; $7959: $5d
	ld c, d                                          ; $795a: $4a
	inc [hl]                                         ; $795b: $34
	sub h                                            ; $795c: $94
	ld a, b                                          ; $795d: $78
	ld d, d                                          ; $795e: $52
	ld d, c                                          ; $795f: $51
	inc a                                            ; $7960: $3c
	ld d, b                                          ; $7961: $50
	and b                                            ; $7962: $a0
	cpl                                              ; $7963: $2f
	ld b, e                                          ; $7964: $43
	ld a, [hl-]                                      ; $7965: $3a
	ld b, a                                          ; $7966: $47
	inc [hl]                                         ; $7967: $34
	add d                                            ; $7968: $82
	dec sp                                           ; $7969: $3b
	ccf                                              ; $796a: $3f
	ld c, [hl]                                       ; $796b: $4e
	ld b, d                                          ; $796c: $42

jr_091_796d:
	xor b                                            ; $796d: $a8
	ldh a, [$08]                                     ; $796e: $f0 $08
	ld d, b                                          ; $7970: $50
	inc [hl]                                         ; $7971: $34
	ld d, h                                          ; $7972: $54
	ld d, h                                          ; $7973: $54
	ldh a, [c]                                       ; $7974: $f2
	and d                                            ; $7975: $a2
	ld e, b                                          ; $7976: $58
	ld e, [hl]                                       ; $7977: $5e
	ld c, l                                          ; $7978: $4d
	ld a, e                                          ; $7979: $7b
	inc de                                           ; $797a: $13
	jr c, jr_091_79b5                                ; $797b: $38 $38

	ld b, c                                          ; $797d: $41
	ld c, d                                          ; $797e: $4a
	ld a, $66                                        ; $797f: $3e $66
	and b                                            ; $7981: $a0
	ld d, c                                          ; $7982: $51
	inc [hl]                                         ; $7983: $34
	ld d, c                                          ; $7984: $51
	jr c, jr_091_79d9                                ; $7985: $38 $52

	ld a, c                                          ; $7987: $79
	ld b, c                                          ; $7988: $41
	xor b                                            ; $7989: $a8
	jp hl                                            ; $798a: $e9


	inc d                                            ; $798b: $14
	xor b                                            ; $798c: $a8

jr_091_798d:
	pop af                                           ; $798d: $f1
	jp hl                                            ; $798e: $e9


	inc a                                            ; $798f: $3c
	ld d, a                                          ; $7990: $57
	ld d, d                                          ; $7991: $52
	ld a, $3d                                        ; $7992: $3e $3d
	and b                                            ; $7994: $a0
	cpl                                              ; $7995: $2f
	ld b, e                                          ; $7996: $43
	call nc, $a845                                   ; $7997: $d4 $45 $a8
	jp hl                                            ; $799a: $e9


	ld a, a                                          ; $799b: $7f
	and b                                            ; $799c: $a0
	xor $2d                                          ; $799d: $ee $2d
	inc [hl]                                         ; $799f: $34
	ld [$a020], a                                    ; $79a0: $ea $20 $a0
	jp hl                                            ; $79a3: $e9


	dec hl                                           ; $79a4: $2b
	xor b                                            ; $79a5: $a8
	ld de, $56f0                                     ; $79a6: $11 $f0 $56
	and b                                            ; $79a9: $a0
	ld d, c                                          ; $79aa: $51
	inc [hl]                                         ; $79ab: $34
	ld d, c                                          ; $79ac: $51
	jr c, jr_091_7a01                                ; $79ad: $38 $52

	ld a, c                                          ; $79af: $79

jr_091_79b0:
	ld b, c                                          ; $79b0: $41
	xor b                                            ; $79b1: $a8
	ld h, h                                          ; $79b2: $64
	ldh a, [$c8]                                     ; $79b3: $f0 $c8

jr_091_79b5:
	jr c, jr_091_7a01                                ; $79b5: $38 $4a

	ld e, h                                          ; $79b7: $5c
	ld d, d                                          ; $79b8: $52
	ld d, c                                          ; $79b9: $51
	inc a                                            ; $79ba: $3c
	and c                                            ; $79bb: $a1
	cpl                                              ; $79bc: $2f
	ld b, e                                          ; $79bd: $43
	ld b, [hl]                                       ; $79be: $46
	ld b, [hl]                                       ; $79bf: $46
	inc [hl]                                         ; $79c0: $34
	jr c, jr_091_79fb                                ; $79c1: $38 $38

	ld b, l                                          ; $79c3: $45
	xor b                                            ; $79c4: $a8
	ld d, h                                          ; $79c5: $54
	ld d, h                                          ; $79c6: $54
	ldh a, [c]                                       ; $79c7: $f2
	and d                                            ; $79c8: $a2
	ld e, b                                          ; $79c9: $58
	ld e, [hl]                                       ; $79ca: $5e
	ld c, l                                          ; $79cb: $4d
	ld a, e                                          ; $79cc: $7b
	jr c, jr_091_7a07                                ; $79cd: $38 $38

	ld b, c                                          ; $79cf: $41
	ld b, h                                          ; $79d0: $44
	ld c, h                                          ; $79d1: $4c
	and b                                            ; $79d2: $a0
	xor $2d                                          ; $79d3: $ee $2d
	xor b                                            ; $79d5: $a8
	jp hl                                            ; $79d6: $e9


	inc d                                            ; $79d7: $14
	xor b                                            ; $79d8: $a8

jr_091_79d9:
	pop af                                           ; $79d9: $f1
	jp hl                                            ; $79da: $e9


	inc a                                            ; $79db: $3c
	ld d, a                                          ; $79dc: $57
	ld d, d                                          ; $79dd: $52
	ld a, $3d                                        ; $79de: $3e $3d
	and b                                            ; $79e0: $a0
	ld h, h                                          ; $79e1: $64
	inc [hl]                                         ; $79e2: $34
	jp hl                                            ; $79e3: $e9


	dec hl                                           ; $79e4: $2b
	and b                                            ; $79e5: $a0
	ld d, c                                          ; $79e6: $51
	inc [hl]                                         ; $79e7: $34
	ld d, c                                          ; $79e8: $51
	jr c, jr_091_7a3d                                ; $79e9: $38 $52

	ld a, c                                          ; $79eb: $79
	ld b, c                                          ; $79ec: $41
	xor b                                            ; $79ed: $a8
	ld [$a0b6], a                                    ; $79ee: $ea $b6 $a0
	cpl                                              ; $79f1: $2f
	ld b, e                                          ; $79f2: $43
	ld d, h                                          ; $79f3: $54
	ld d, h                                          ; $79f4: $54
	ldh a, [c]                                       ; $79f5: $f2
	and d                                            ; $79f6: $a2
	ld e, b                                          ; $79f7: $58
	ld e, [hl]                                       ; $79f8: $5e
	ld c, l                                          ; $79f9: $4d
	ld a, e                                          ; $79fa: $7b

jr_091_79fb:
	inc de                                           ; $79fb: $13
	jr c, jr_091_7a36                                ; $79fc: $38 $38

	ld b, d                                          ; $79fe: $42
	inc a                                            ; $79ff: $3c
	ld a, [hl-]                                      ; $7a00: $3a

jr_091_7a01:
	and c                                            ; $7a01: $a1
	xor $10                                          ; $7a02: $ee $10
	and b                                            ; $7a04: $a0
	cpl                                              ; $7a05: $2f
	ld b, e                                          ; $7a06: $43

jr_091_7a07:
	db $eb                                           ; $7a07: $eb
	rst FarCall                                          ; $7a08: $f7
	xor h                                            ; $7a09: $ac
	db $eb                                           ; $7a0a: $eb
	ld hl, sp-$5f                                    ; $7a0b: $f8 $a1
	jr c, jr_091_7a6d                                ; $7a0d: $38 $5e

	inc [hl]                                         ; $7a0f: $34
	jr c, jr_091_7a4a                                ; $7a10: $38 $38

	ld c, d                                          ; $7a12: $4a
	ld d, c                                          ; $7a13: $51
	xor b                                            ; $7a14: $a8
	db $ed                                           ; $7a15: $ed
	ld e, l                                          ; $7a16: $5d
	ld c, d                                          ; $7a17: $4a
	inc [hl]                                         ; $7a18: $34
	sub h                                            ; $7a19: $94
	ld a, b                                          ; $7a1a: $78
	ld d, d                                          ; $7a1b: $52
	ld d, c                                          ; $7a1c: $51
	inc a                                            ; $7a1d: $3c
	ld d, b                                          ; $7a1e: $50
	and b                                            ; $7a1f: $a0
	cpl                                              ; $7a20: $2f
	ld b, e                                          ; $7a21: $43
	ldh a, [$34]                                     ; $7a22: $f0 $34
	ld b, a                                          ; $7a24: $47
	xor h                                            ; $7a25: $ac
	pop af                                           ; $7a26: $f1
	ld b, $f1                                        ; $7a27: $06 $f1
	ld a, $3e                                        ; $7a29: $3e $3e
	ld a, [hl-]                                      ; $7a2b: $3a
	ld d, l                                          ; $7a2c: $55
	ccf                                              ; $7a2d: $3f
	ld c, a                                          ; $7a2e: $4f
	ld c, b                                          ; $7a2f: $48
	and b                                            ; $7a30: $a0
	ld c, a                                          ; $7a31: $4f
	add hl, sp                                       ; $7a32: $39
	xor h                                            ; $7a33: $ac
	db $ed                                           ; $7a34: $ed
	sub c                                            ; $7a35: $91

jr_091_7a36:
	ld a, $3a                                        ; $7a36: $3e $3a
	jr c, jr_091_7a84                                ; $7a38: $38 $4a

	ld d, l                                          ; $7a3a: $55
	ld b, h                                          ; $7a3b: $44
	ld e, b                                          ; $7a3c: $58

jr_091_7a3d:
	jr c, @-$5e                                      ; $7a3d: $38 $a0

	cpl                                              ; $7a3f: $2f
	ld b, e                                          ; $7a40: $43
	ld e, [hl]                                       ; $7a41: $5e
	inc [hl]                                         ; $7a42: $34
	ldh a, [$34]                                     ; $7a43: $f0 $34
	ld b, a                                          ; $7a45: $47
	db $ed                                           ; $7a46: $ed
	sub c                                            ; $7a47: $91
	ld a, [hl-]                                      ; $7a48: $3a
	ld b, c                                          ; $7a49: $41

jr_091_7a4a:
	ccf                                              ; $7a4a: $3f
	ld c, b                                          ; $7a4b: $48
	and b                                            ; $7a4c: $a0
	ldh a, [rSCY]                                    ; $7a4d: $f0 $42
	ld e, c                                          ; $7a4f: $59
	dec sp                                           ; $7a50: $3b
	inc [hl]                                         ; $7a51: $34
	ldh a, [$ce]                                     ; $7a52: $f0 $ce
	ld h, e                                          ; $7a54: $63
	dec sp                                           ; $7a55: $3b
	dec a                                            ; $7a56: $3d
	inc a                                            ; $7a57: $3c
	ld d, b                                          ; $7a58: $50
	xor h                                            ; $7a59: $ac
	ld b, [hl]                                       ; $7a5a: $46
	dec sp                                           ; $7a5b: $3b
	ld h, c                                          ; $7a5c: $61
	ld h, d                                          ; $7a5d: $62
	ldh a, [$0b]                                     ; $7a5e: $f0 $0b
	pop af                                           ; $7a60: $f1
	ld [hl], c                                       ; $7a61: $71
	ld h, e                                          ; $7a62: $63
	ld a, [hl-]                                      ; $7a63: $3a
	ld e, h                                          ; $7a64: $5c
	ld d, [hl]                                       ; $7a65: $56
	and b                                            ; $7a66: $a0
	ld h, h                                          ; $7a67: $64
	pop af                                           ; $7a68: $f1
	call c, Call_091_4158                            ; $7a69: $dc $58 $41
	xor l                                            ; $7a6c: $ad

jr_091_7a6d:
	jp nc, Jump_091_78ac                             ; $7a6d: $d2 $ac $78

	ld d, d                                          ; $7a70: $52
	ld a, c                                          ; $7a71: $79
	ld b, c                                          ; $7a72: $41
	ld c, d                                          ; $7a73: $4a
	ld a, $3d                                        ; $7a74: $3e $3d
	ld c, h                                          ; $7a76: $4c
	ld c, b                                          ; $7a77: $48

jr_091_7a78:
	and b                                            ; $7a78: $a0
	ld b, [hl]                                       ; $7a79: $46
	ld [hl], h                                       ; $7a7a: $74
	inc [hl]                                         ; $7a7b: $34
	ldh a, [$f3]                                     ; $7a7c: $f0 $f3
	ld c, l                                          ; $7a7e: $4d
	dec a                                            ; $7a7f: $3d
	and b                                            ; $7a80: $a0
	cpl                                              ; $7a81: $2f
	ld b, e                                          ; $7a82: $43
	ld d, c                                          ; $7a83: $51

jr_091_7a84:
	ld [hl], b                                       ; $7a84: $70
	jr c, jr_091_7a78                                ; $7a85: $38 $f1

	call c, $3b44                                    ; $7a87: $dc $44 $3b
	dec a                                            ; $7a8a: $3d
	ld c, h                                          ; $7a8b: $4c
	xor b                                            ; $7a8c: $a8
	halt                                             ; $7a8d: $76
	ld c, a                                          ; $7a8e: $4f
	ld c, a                                          ; $7a8f: $4f
	add hl, sp                                       ; $7a90: $39
	inc [hl]                                         ; $7a91: $34
	ldh a, [$f3]                                     ; $7a92: $f0 $f3
	ld c, l                                          ; $7a94: $4d
	ccf                                              ; $7a95: $3f
	inc [hl]                                         ; $7a96: $34
	ld d, l                                          ; $7a97: $55
	dec a                                            ; $7a98: $3d
	ld d, l                                          ; $7a99: $55
	dec a                                            ; $7a9a: $3d
	ld b, h                                          ; $7a9b: $44
	ld b, l                                          ; $7a9c: $45
	and b                                            ; $7a9d: $a0
	cp [hl]                                          ; $7a9e: $be
	xor h                                            ; $7a9f: $ac
	jp z, Jump_091_5aeb                              ; $7aa0: $ca $eb $5a

	and b                                            ; $7aa3: $a0
	cpl                                              ; $7aa4: $2f
	ld b, e                                          ; $7aa5: $43
	xor $10                                          ; $7aa6: $ee $10
	and b                                            ; $7aa8: $a0
	ld h, h                                          ; $7aa9: $64
	pop af                                           ; $7aaa: $f1
	call c, Call_091_4158                            ; $7aab: $dc $58 $41
	xor l                                            ; $7aae: $ad
	jp nc, Jump_091_78ac                             ; $7aaf: $d2 $ac $78

	ld a, [hl-]                                      ; $7ab2: $3a
	inc a                                            ; $7ab3: $3c
	dec sp                                           ; $7ab4: $3b
	dec a                                            ; $7ab5: $3d
	ld a, [hl-]                                      ; $7ab6: $3a
	ld c, b                                          ; $7ab7: $48
	and b                                            ; $7ab8: $a0
	ld a, b                                          ; $7ab9: $78
	ldh a, [rAUD1HIGH]                               ; $7aba: $f0 $14
	ld c, e                                          ; $7abc: $4b
	ld c, b                                          ; $7abd: $48
	xor h                                            ; $7abe: $ac
	pop af                                           ; $7abf: $f1
	ld l, a                                          ; $7ac0: $6f
	ld b, d                                          ; $7ac1: $42
	add h                                            ; $7ac2: $84
	ld b, d                                          ; $7ac3: $42
	ldh a, [rTAC]                                    ; $7ac4: $f0 $07
	ld c, a                                          ; $7ac6: $4f
	inc de                                           ; $7ac7: $13
	sub d                                            ; $7ac8: $92
	adc [hl]                                         ; $7ac9: $8e
	ld d, b                                          ; $7aca: $50
	ld a, [hl-]                                      ; $7acb: $3a
	ld d, l                                          ; $7acc: $55
	dec sp                                           ; $7acd: $3b
	ld h, c                                          ; $7ace: $61
	ld d, [hl]                                       ; $7acf: $56
	ld c, b                                          ; $7ad0: $48
	and b                                            ; $7ad1: $a0
	cpl                                              ; $7ad2: $2f
	ld b, e                                          ; $7ad3: $43
	xor $10                                          ; $7ad4: $ee $10
	xor b                                            ; $7ad6: $a8
	ld [hl-], a                                      ; $7ad7: $32
	ld b, b                                          ; $7ad8: $40
	ld c, l                                          ; $7ad9: $4d
	dec sp                                           ; $7ada: $3b
	ccf                                              ; $7adb: $3f
	inc [hl]                                         ; $7adc: $34
	halt                                             ; $7add: $76
	ld b, d                                          ; $7ade: $42
	ldh a, [rTAC]                                    ; $7adf: $f0 $07
	dec sp                                           ; $7ae1: $3b
	ccf                                              ; $7ae2: $3f
	ld d, h                                          ; $7ae3: $54
	ld c, c                                          ; $7ae4: $49
	ld [hl], $33                                     ; $7ae5: $36 $33
	add hl, bc                                       ; $7ae7: $09
	db $eb                                           ; $7ae8: $eb
	ld e, c                                          ; $7ae9: $59
	xor b                                            ; $7aea: $a8
	db $eb                                           ; $7aeb: $eb
	rst GetHLinHL                                          ; $7aec: $cf
	ld c, b                                          ; $7aed: $48
	and b                                            ; $7aee: $a0
	cpl                                              ; $7aef: $2f
	ld b, e                                          ; $7af0: $43
	ld [$aceb], a                                    ; $7af1: $ea $eb $ac
	db $ec                                           ; $7af4: $ec
	rst SubAFromDE                                          ; $7af5: $df
	dec [hl]                                         ; $7af6: $35
	db $ed                                           ; $7af7: $ed
	ld e, l                                          ; $7af8: $5d
	ld h, d                                          ; $7af9: $62
	ldh a, [$9f]                                     ; $7afa: $f0 $9f
	ld e, e                                          ; $7afc: $5b
	ld a, [hl-]                                      ; $7afd: $3a
	ld e, h                                          ; $7afe: $5c
	ld d, [hl]                                       ; $7aff: $56
	and b                                            ; $7b00: $a0
	ld b, b                                          ; $7b01: $40
	ld b, c                                          ; $7b02: $41
	ld a, [hl-]                                      ; $7b03: $3a
	sbc d                                            ; $7b04: $9a
	jr c, jr_091_7b6a                                ; $7b05: $38 $63

	ld c, l                                          ; $7b07: $4d
	ccf                                              ; $7b08: $3f
	ld c, a                                          ; $7b09: $4f
	xor l                                            ; $7b0a: $ad
	ld l, a                                          ; $7b0b: $6f
	inc [hl]                                         ; $7b0c: $34
	ld c, a                                          ; $7b0d: $4f
	add hl, sp                                       ; $7b0e: $39
	xor l                                            ; $7b0f: $ad
	ldh a, [c]                                       ; $7b10: $f2
	ld [de], a                                       ; $7b11: $12
	ld c, l                                          ; $7b12: $4d
	ld h, c                                          ; $7b13: $61
	ld d, [hl]                                       ; $7b14: $56
	jr c, jr_091_7b57                                ; $7b15: $38 $40

	add hl, sp                                       ; $7b17: $39
	ld c, d                                          ; $7b18: $4a
	ld d, c                                          ; $7b19: $51
	and b                                            ; $7b1a: $a0
	cpl                                              ; $7b1b: $2f
	ld b, e                                          ; $7b1c: $43
	ldh a, [$08]                                     ; $7b1d: $f0 $08
	ld d, b                                          ; $7b1f: $50
	inc [hl]                                         ; $7b20: $34
	xor $19                                          ; $7b21: $ee $19
	ld b, d                                          ; $7b23: $42
	ldh a, [rBGP]                                    ; $7b24: $f0 $47
	db $ed                                           ; $7b26: $ed
	ld b, e                                          ; $7b27: $43
	xor h                                            ; $7b28: $ac
	db $ed                                           ; $7b29: $ed
	ld [hl], d                                       ; $7b2a: $72
	inc [hl]                                         ; $7b2b: $34
	ldh a, [$3e]                                     ; $7b2c: $f0 $3e
	ldh a, [$0b]                                     ; $7b2e: $f0 $0b
	db $ed                                           ; $7b30: $ed
	ld b, e                                          ; $7b31: $43
	inc de                                           ; $7b32: $13
	add d                                            ; $7b33: $82
	ld h, e                                          ; $7b34: $63
	ld c, l                                          ; $7b35: $4d
	dec a                                            ; $7b36: $3d
	db $ec                                           ; $7b37: $ec
	ret c                                            ; $7b38: $d8

	inc a                                            ; $7b39: $3c
	and b                                            ; $7b3a: $a0
	ld b, b                                          ; $7b3b: $40
	add hl, sp                                       ; $7b3c: $39
	ld c, d                                          ; $7b3d: $4a
	ld d, c                                          ; $7b3e: $51
	ld e, l                                          ; $7b3f: $5d
	ld e, d                                          ; $7b40: $5a
	ld c, b                                          ; $7b41: $48
	inc [hl]                                         ; $7b42: $34
	ld c, d                                          ; $7b43: $4a
	ld c, a                                          ; $7b44: $4f
	xor h                                            ; $7b45: $ac
	ld l, e                                          ; $7b46: $6b
	ld b, h                                          ; $7b47: $44
	inc a                                            ; $7b48: $3c
	inc [hl]                                         ; $7b49: $34
	add hl, sp                                       ; $7b4a: $39
	ld d, d                                          ; $7b4b: $52
	ld d, l                                          ; $7b4c: $55
	sub h                                            ; $7b4d: $94
	ld a, b                                          ; $7b4e: $78
	ld b, b                                          ; $7b4f: $40
	add hl, sp                                       ; $7b50: $39
	ld a, [hl-]                                      ; $7b51: $3a
	inc de                                           ; $7b52: $13
	ld a, a                                          ; $7b53: $7f
	ld d, e                                          ; $7b54: $53
	ld a, $3f                                        ; $7b55: $3e $3f

jr_091_7b57:
	ld e, h                                          ; $7b57: $5c
	ld d, d                                          ; $7b58: $52
	ld a, $3d                                        ; $7b59: $3e $3d
	and b                                            ; $7b5b: $a0
	cpl                                              ; $7b5c: $2f
	ld b, e                                          ; $7b5d: $43
	ld b, [hl]                                       ; $7b5e: $46
	dec sp                                           ; $7b5f: $3b
	inc [hl]                                         ; $7b60: $34
	ldh a, [$08]                                     ; $7b61: $f0 $08
	ld d, b                                          ; $7b63: $50
	inc [hl]                                         ; $7b64: $34
	db $ed                                           ; $7b65: $ed
	and h                                            ; $7b66: $a4
	ld b, h                                          ; $7b67: $44
	ld b, l                                          ; $7b68: $45
	xor b                                            ; $7b69: $a8

jr_091_7b6a:
	db $f4                                           ; $7b6a: $f4
	ld d, [hl]                                       ; $7b6b: $56
	pop af                                           ; $7b6c: $f1
	ld bc, $cdf3                                     ; $7b6d: $01 $f3 $cd
	ld h, d                                          ; $7b70: $62
	ld a, $3f                                        ; $7b71: $3e $3f
	inc a                                            ; $7b73: $3c
	ld d, b                                          ; $7b74: $50
	inc de                                           ; $7b75: $13
	ld h, a                                          ; $7b76: $67
	ld d, l                                          ; $7b77: $55
	ld c, c                                          ; $7b78: $49
	jr c, jr_091_7bb3                                ; $7b79: $38 $38

	ld b, l                                          ; $7b7b: $45
	and b                                            ; $7b7c: $a0
	xor $2d                                          ; $7b7d: $ee $2d
	xor b                                            ; $7b7f: $a8
	ld d, c                                          ; $7b80: $51
	ld e, c                                          ; $7b81: $59
	ld c, e                                          ; $7b82: $4b
	ld e, c                                          ; $7b83: $59
	ld d, c                                          ; $7b84: $51
	ld e, c                                          ; $7b85: $59
	ld c, e                                          ; $7b86: $4b
	ld e, c                                          ; $7b87: $59
	dec [hl]                                         ; $7b88: $35
	ld [hl+], a                                      ; $7b89: $22
	inc de                                           ; $7b8a: $13
	jp z, Jump_091_6734                              ; $7b8b: $ca $34 $67

	dec sp                                           ; $7b8e: $3b
	ccf                                              ; $7b8f: $3f

jr_091_7b90:
	ld e, h                                          ; $7b90: $5c
	ld d, d                                          ; $7b91: $52
	ld d, c                                          ; $7b92: $51
	and b                                            ; $7b93: $a0
	ld c, e                                          ; $7b94: $4b
	ld e, c                                          ; $7b95: $59
	dec sp                                           ; $7b96: $3b
	inc [hl]                                         ; $7b97: $34
	db $ec                                           ; $7b98: $ec
	db $ec                                           ; $7b99: $ec
	inc a                                            ; $7b9a: $3c
	inc de                                           ; $7b9b: $13
	jp hl                                            ; $7b9c: $e9


	ld c, c                                          ; $7b9d: $49
	ld c, d                                          ; $7b9e: $4a
	ld d, c                                          ; $7b9f: $51
	and b                                            ; $7ba0: $a0
	cpl                                              ; $7ba1: $2f
	ld b, e                                          ; $7ba2: $43
	db $ec                                           ; $7ba3: $ec
	jr nz, jr_091_7b90                               ; $7ba4: $20 $ea

	db $eb                                           ; $7ba6: $eb
	inc de                                           ; $7ba7: $13
	add d                                            ; $7ba8: $82
	dec sp                                           ; $7ba9: $3b
	dec a                                            ; $7baa: $3d
	ld b, h                                          ; $7bab: $44
	ld e, a                                          ; $7bac: $5f
	add hl, sp                                       ; $7bad: $39
	and b                                            ; $7bae: $a0
	xor $2d                                          ; $7baf: $ee $2d
	xor b                                            ; $7bb1: $a8
	db $f4                                           ; $7bb2: $f4

jr_091_7bb3:
	adc d                                            ; $7bb3: $8a
	ld d, d                                          ; $7bb4: $52
	ld a, $3f                                        ; $7bb5: $3e $3f
	ld d, l                                          ; $7bb7: $55
	ld c, l                                          ; $7bb8: $4d
	dec a                                            ; $7bb9: $3d
	ld h, h                                          ; $7bba: $64
	inc a                                            ; $7bbb: $3c
	ldh a, [rSB]                                     ; $7bbc: $f0 $01
	ld c, d                                          ; $7bbe: $4a
	xor h                                            ; $7bbf: $ac
	ld d, c                                          ; $7bc0: $51
	ld [hl], b                                       ; $7bc1: $70
	ld d, l                                          ; $7bc2: $55
	add hl, sp                                       ; $7bc3: $39
	ld d, d                                          ; $7bc4: $52
	ld d, l                                          ; $7bc5: $55
	ld h, a                                          ; $7bc6: $67
	ld e, h                                          ; $7bc7: $5c
	ld d, d                                          ; $7bc8: $52
	ld a, $3d                                        ; $7bc9: $3e $3d
	and b                                            ; $7bcb: $a0
	cpl                                              ; $7bcc: $2f
	ld b, e                                          ; $7bcd: $43
	db $ec                                           ; $7bce: $ec
	rst SubAFromDE                                          ; $7bcf: $df
	ld b, d                                          ; $7bd0: $42
	inc [hl]                                         ; $7bd1: $34
	ldh a, [$31]                                     ; $7bd2: $f0 $31
	ldh a, [$7f]                                     ; $7bd4: $f0 $7f
	inc de                                           ; $7bd6: $13
	ld b, h                                          ; $7bd7: $44
	ld b, l                                          ; $7bd8: $45
	xor b                                            ; $7bd9: $a8
	ldh a, [$34]                                     ; $7bda: $f0 $34
	ld b, a                                          ; $7bdc: $47
	halt                                             ; $7bdd: $76
	ld c, e                                          ; $7bde: $4b
	inc [hl]                                         ; $7bdf: $34
	ld l, e                                          ; $7be0: $6b
	ld c, a                                          ; $7be1: $4f
	ld a, $3f                                        ; $7be2: $3e $3f
	ld a, [hl-]                                      ; $7be4: $3a
	jr c, jr_091_7c2c                                ; $7be5: $38 $45

	and b                                            ; $7be7: $a0
	sbc $34                                          ; $7be8: $de $34
	ld e, d                                          ; $7bea: $5a
	add hl, sp                                       ; $7beb: $39
	ld c, a                                          ; $7bec: $4f
	xor h                                            ; $7bed: $ac
	add sp, -$80                                     ; $7bee: $e8 $80
	and b                                            ; $7bf0: $a0
	cpl                                              ; $7bf1: $2f
	ld b, e                                          ; $7bf2: $43
	ldh a, [c]                                       ; $7bf3: $f2
	dec e                                            ; $7bf4: $1d
	adc [hl]                                         ; $7bf5: $8e
	ld d, c                                          ; $7bf6: $51
	ld c, [hl]                                       ; $7bf7: $4e
	ld c, c                                          ; $7bf8: $49
	ld e, h                                          ; $7bf9: $5c
	ld c, e                                          ; $7bfa: $4b
	xor h                                            ; $7bfb: $ac
	pop af                                           ; $7bfc: $f1
	push bc                                          ; $7bfd: $c5
	pop af                                           ; $7bfe: $f1
	call c, $f062                                    ; $7bff: $dc $62 $f0
	dec [hl]                                         ; $7c02: $35
	ldh a, [$6e]                                     ; $7c03: $f0 $6e
	ldh a, [$2b]                                     ; $7c05: $f0 $2b
	ldh a, [$7c]                                     ; $7c07: $f0 $7c
	ld b, h                                          ; $7c09: $44
	ld c, c                                          ; $7c0a: $49
	ld [hl], a                                       ; $7c0b: $77
	jr c, @+$3c                                      ; $7c0c: $38 $3a

	ld b, l                                          ; $7c0e: $45
	and b                                            ; $7c0f: $a0
	ldh a, [$35]                                     ; $7c10: $f0 $35
	ldh a, [$6e]                                     ; $7c12: $f0 $6e
	ldh a, [$2b]                                     ; $7c14: $f0 $2b
	ldh a, [$7c]                                     ; $7c16: $f0 $7c
	ld c, d                                          ; $7c18: $4a
	ld d, c                                          ; $7c19: $51
	inc a                                            ; $7c1a: $3c
	and b                                            ; $7c1b: $a0
	cpl                                              ; $7c1c: $2f
	ld b, e                                          ; $7c1d: $43
	ld b, b                                          ; $7c1e: $40
	add hl, sp                                       ; $7c1f: $39
	inc [hl]                                         ; $7c20: $34
	ldh a, [$35]                                     ; $7c21: $f0 $35
	ldh a, [$6e]                                     ; $7c23: $f0 $6e
	ldh a, [$2b]                                     ; $7c25: $f0 $2b
	ldh a, [$7c]                                     ; $7c27: $f0 $7c
	xor b                                            ; $7c29: $a8
	ld b, [hl]                                       ; $7c2a: $46
	dec sp                                           ; $7c2b: $3b

jr_091_7c2c:
	inc [hl]                                         ; $7c2c: $34
	ldh a, [$08]                                     ; $7c2d: $f0 $08
	ld d, b                                          ; $7c2f: $50
	inc [hl]                                         ; $7c30: $34
	db $ed                                           ; $7c31: $ed
	and h                                            ; $7c32: $a4
	ld b, h                                          ; $7c33: $44
	ld b, l                                          ; $7c34: $45
	and b                                            ; $7c35: $a0
	ldh a, [$35]                                     ; $7c36: $f0 $35
	ldh a, [$6e]                                     ; $7c38: $f0 $6e
	ldh a, [$2b]                                     ; $7c3a: $f0 $2b
	ldh a, [$7c]                                     ; $7c3c: $f0 $7c
	ld c, d                                          ; $7c3e: $4a
	ld d, c                                          ; $7c3f: $51
	ld c, h                                          ; $7c40: $4c
	and b                                            ; $7c41: $a0
	cpl                                              ; $7c42: $2f
	ld b, e                                          ; $7c43: $43
	ld b, b                                          ; $7c44: $40
	add hl, sp                                       ; $7c45: $39
	and b                                            ; $7c46: $a0
	jp z, Jump_091_6734                              ; $7c47: $ca $34 $67

	dec sp                                           ; $7c4a: $3b
	ccf                                              ; $7c4b: $3f
	ld e, h                                          ; $7c4c: $5c
	ld d, d                                          ; $7c4d: $52
	ld d, c                                          ; $7c4e: $51
	xor b                                            ; $7c4f: $a8
	ldh a, [$35]                                     ; $7c50: $f0 $35
	ldh a, [$6e]                                     ; $7c52: $f0 $6e
	ldh a, [$2b]                                     ; $7c54: $f0 $2b
	ldh a, [$7c]                                     ; $7c56: $f0 $7c
	inc [hl]                                         ; $7c58: $34
	ldh a, [$35]                                     ; $7c59: $f0 $35
	ldh a, [$6e]                                     ; $7c5b: $f0 $6e
	ldh a, [$2b]                                     ; $7c5d: $f0 $2b
	ldh a, [$7c]                                     ; $7c5f: $f0 $7c
	xor h                                            ; $7c61: $ac
	ldh a, [$35]                                     ; $7c62: $f0 $35
	ldh a, [$6e]                                     ; $7c64: $f0 $6e
	ldh a, [$2b]                                     ; $7c66: $f0 $2b
	ldh a, [$7c]                                     ; $7c68: $f0 $7c
	ld hl, $a048                                     ; $7c6a: $21 $48 $a0
	xor $2d                                          ; $7c6d: $ee $2d
	xor b                                            ; $7c6f: $a8
	ldh a, [$35]                                     ; $7c70: $f0 $35
	ldh a, [$6e]                                     ; $7c72: $f0 $6e
	ldh a, [$2b]                                     ; $7c74: $f0 $2b
	ldh a, [$7c]                                     ; $7c76: $f0 $7c
	ld d, e                                          ; $7c78: $53
	di                                               ; $7c79: $f3
	jp $3d38                                         ; $7c7a: $c3 $38 $3d


	ld l, h                                          ; $7c7d: $6c
	dec a                                            ; $7c7e: $3d
	jr c, jr_091_7ccb                                ; $7c7f: $38 $4a

	ld d, c                                          ; $7c81: $51
	and b                                            ; $7c82: $a0
	cpl                                              ; $7c83: $2f
	ld b, e                                          ; $7c84: $43
	ld d, d                                          ; $7c85: $52
	ld e, b                                          ; $7c86: $58
	ld b, a                                          ; $7c87: $47
	ldh a, [$35]                                     ; $7c88: $f0 $35
	ldh a, [$6e]                                     ; $7c8a: $f0 $6e
	ldh a, [$2b]                                     ; $7c8c: $f0 $2b
	ldh a, [$7c]                                     ; $7c8e: $f0 $7c
	ldh a, [hDisp0_OBP1]                                     ; $7c90: $f0 $87
	ldh a, [$cf]                                     ; $7c92: $f0 $cf
	ld b, h                                          ; $7c94: $44
	ld c, h                                          ; $7c95: $4c
	and b                                            ; $7c96: $a0
	add hl, sp                                       ; $7c97: $39
	ldh a, [rSCY]                                    ; $7c98: $f0 $42
	ldh a, [rSCY]                                    ; $7c9a: $f0 $42
	ldh a, [rSCY]                                    ; $7c9c: $f0 $42
	inc [hl]                                         ; $7c9e: $34
	or [hl]                                          ; $7c9f: $b6
	xor b                                            ; $7ca0: $a8
	sbc $34                                          ; $7ca1: $de $34
	ld e, d                                          ; $7ca3: $5a
	add hl, sp                                       ; $7ca4: $39
	ld c, a                                          ; $7ca5: $4f
	xor h                                            ; $7ca6: $ac
	add sp, -$80                                     ; $7ca7: $e8 $80
	and b                                            ; $7ca9: $a0
	cpl                                              ; $7caa: $2f
	ld b, e                                          ; $7cab: $43
	ld b, b                                          ; $7cac: $40
	ld b, c                                          ; $7cad: $41
	ld a, [hl-]                                      ; $7cae: $3a
	xor b                                            ; $7caf: $a8
	ld a, a                                          ; $7cb0: $7f
	ld h, d                                          ; $7cb1: $62
	ldh a, [$9c]                                     ; $7cb2: $f0 $9c
	ld d, l                                          ; $7cb4: $55
	ldh a, [rHDMA1]                                  ; $7cb5: $f0 $51
	dec sp                                           ; $7cb7: $3b
	ccf                                              ; $7cb8: $3f
	inc [hl]                                         ; $7cb9: $34
	sub d                                            ; $7cba: $92
	adc [hl]                                         ; $7cbb: $8e
	ld c, [hl]                                       ; $7cbc: $4e
	ld b, c                                          ; $7cbd: $41
	ld b, h                                          ; $7cbe: $44
	and b                                            ; $7cbf: $a0
	ld c, d                                          ; $7cc0: $4a
	ld c, a                                          ; $7cc1: $4f
	ld c, b                                          ; $7cc2: $48
	and b                                            ; $7cc3: $a0
	xor $2d                                          ; $7cc4: $ee $2d
	xor b                                            ; $7cc6: $a8
	ld d, c                                          ; $7cc7: $51
	ld e, c                                          ; $7cc8: $59
	ld c, e                                          ; $7cc9: $4b
	ld e, c                                          ; $7cca: $59

jr_091_7ccb:
	ld d, c                                          ; $7ccb: $51
	ld e, c                                          ; $7ccc: $59
	ld c, e                                          ; $7ccd: $4b
	ld e, c                                          ; $7cce: $59
	xor b                                            ; $7ccf: $a8
	jp z, Jump_091_6734                              ; $7cd0: $ca $34 $67

	dec sp                                           ; $7cd3: $3b
	ccf                                              ; $7cd4: $3f
	ld e, h                                          ; $7cd5: $5c
	ld d, d                                          ; $7cd6: $52
	ld d, c                                          ; $7cd7: $51
	and b                                            ; $7cd8: $a0
	xor $2d                                          ; $7cd9: $ee $2d
	xor b                                            ; $7cdb: $a8
	ld c, d                                          ; $7cdc: $4a
	ld c, a                                          ; $7cdd: $4f
	inc [hl]                                         ; $7cde: $34
	ld d, c                                          ; $7cdf: $51
	ld [hl], b                                       ; $7ce0: $70
	ld d, l                                          ; $7ce1: $55
	ldh a, [c]                                       ; $7ce2: $f2
	dec e                                            ; $7ce3: $1d
	adc [hl]                                         ; $7ce4: $8e
	ld a, $52                                        ; $7ce5: $3e $52
	ld a, $3d                                        ; $7ce7: $3e $3d
	and b                                            ; $7ce9: $a0
	cpl                                              ; $7cea: $2f
	ld b, e                                          ; $7ceb: $43
	ld c, d                                          ; $7cec: $4a
	ld c, a                                          ; $7ced: $4f
	inc [hl]                                         ; $7cee: $34
	ld c, a                                          ; $7cef: $4f
	add hl, sp                                       ; $7cf0: $39
	pop af                                           ; $7cf1: $f1
	cp c                                             ; $7cf2: $b9
	ldh a, [rVBK]                                    ; $7cf3: $f0 $4f
	ld b, h                                          ; $7cf5: $44
	ld c, h                                          ; $7cf6: $4c
	and b                                            ; $7cf7: $a0
	xor $2d                                          ; $7cf8: $ee $2d
	xor b                                            ; $7cfa: $a8
	ld e, d                                          ; $7cfb: $5a
	add hl, sp                                       ; $7cfc: $39
	ld c, a                                          ; $7cfd: $4f
	inc [hl]                                         ; $7cfe: $34
	add sp, -$80                                     ; $7cff: $e8 $80
	and b                                            ; $7d01: $a0
	ld d, h                                          ; $7d02: $54
	ld d, h                                          ; $7d03: $54
	ld c, d                                          ; $7d04: $4a
	sub d                                            ; $7d05: $92
	adc [hl]                                         ; $7d06: $8e
	ld d, b                                          ; $7d07: $50
	ld a, [hl-]                                      ; $7d08: $3a
	ld e, h                                          ; $7d09: $5c
	ld d, [hl]                                       ; $7d0a: $56
	xor h                                            ; $7d0b: $ac
	ld e, d                                          ; $7d0c: $5a
	ld d, h                                          ; $7d0d: $54
	ld c, d                                          ; $7d0e: $4a
	sub d                                            ; $7d0f: $92
	adc [hl]                                         ; $7d10: $8e
	ld c, [hl]                                       ; $7d11: $4e
	ld b, d                                          ; $7d12: $42
	xor b                                            ; $7d13: $a8
	xor $08                                          ; $7d14: $ee $08
	ld c, d                                          ; $7d16: $4a
	ldh a, [rLCDC]                                   ; $7d17: $f0 $40
	ld d, a                                          ; $7d19: $57
	db $f4                                           ; $7d1a: $f4
	ld e, b                                          ; $7d1b: $58
	ld e, [hl]                                       ; $7d1c: $5e
	ld c, [hl]                                       ; $7d1d: $4e
	ld b, d                                          ; $7d1e: $42
	ld b, l                                          ; $7d1f: $45
	ld c, b                                          ; $7d20: $48
	and b                                            ; $7d21: $a0
	cpl                                              ; $7d22: $2f

jr_091_7d23:
	ld b, e                                          ; $7d23: $43
	db $ed                                           ; $7d24: $ed
	ld c, [hl]                                       ; $7d25: $4e
	and b                                            ; $7d26: $a0
	ld b, l                                          ; $7d27: $45
	ld a, $ac                                        ; $7d28: $3e $ac
	ld c, a                                          ; $7d2a: $4f
	add hl, sp                                       ; $7d2b: $39
	ld h, a                                          ; $7d2c: $67
	inc a                                            ; $7d2d: $3c
	ld a, [hl-]                                      ; $7d2e: $3a
	ld d, l                                          ; $7d2f: $55
	ld h, c                                          ; $7d30: $61
	ld d, [hl]                                       ; $7d31: $56
	ld c, b                                          ; $7d32: $48
	and b                                            ; $7d33: $a0
	ld c, e                                          ; $7d34: $4b
	ld e, c                                          ; $7d35: $59
	dec sp                                           ; $7d36: $3b
	inc [hl]                                         ; $7d37: $34
	db $ec                                           ; $7d38: $ec
	db $ec                                           ; $7d39: $ec
	inc a                                            ; $7d3a: $3c
	inc de                                           ; $7d3b: $13
	jp hl                                            ; $7d3c: $e9


	ld c, c                                          ; $7d3d: $49
	and b                                            ; $7d3e: $a0
	cpl                                              ; $7d3f: $2f
	ld b, e                                          ; $7d40: $43
	db $ec                                           ; $7d41: $ec
	sub [hl]                                         ; $7d42: $96
	and b                                            ; $7d43: $a0
	ldh a, [$08]                                     ; $7d44: $f0 $08
	ld d, b                                          ; $7d46: $50
	inc [hl]                                         ; $7d47: $34
	ld b, [hl]                                       ; $7d48: $46
	ld a, [hl-]                                      ; $7d49: $3a
	dec a                                            ; $7d4a: $3d
	ld b, d                                          ; $7d4b: $42
	ldh a, [rDMA]                                    ; $7d4c: $f0 $46
	ld c, d                                          ; $7d4e: $4a
	ld d, c                                          ; $7d4f: $51
	ld b, l                                          ; $7d50: $45
	xor b                                            ; $7d51: $a8
	ldh a, [$0a]                                     ; $7d52: $f0 $0a
	ld d, l                                          ; $7d54: $55
	ld h, a                                          ; $7d55: $67
	dec sp                                           ; $7d56: $3b
	dec a                                            ; $7d57: $3d
	ldh a, [$08]                                     ; $7d58: $f0 $08
	add hl, sp                                       ; $7d5a: $39
	ld d, e                                          ; $7d5b: $53
	inc de                                           ; $7d5c: $13
	jr c, jr_091_7d97                                ; $7d5d: $38 $38

	ld c, c                                          ; $7d5f: $49
	ld [hl], a                                       ; $7d60: $77
	jr c, @+$54                                      ; $7d61: $38 $52

	ld d, c                                          ; $7d63: $51
	ld e, l                                          ; $7d64: $5d
	ld e, d                                          ; $7d65: $5a
	and b                                            ; $7d66: $a0
	db $eb                                           ; $7d67: $eb
	ld h, h                                          ; $7d68: $64
	ld c, b                                          ; $7d69: $48
	and b                                            ; $7d6a: $a0
	cpl                                              ; $7d6b: $2f
	ld b, e                                          ; $7d6c: $43
	ld b, [hl]                                       ; $7d6d: $46
	dec sp                                           ; $7d6e: $3b
	inc [hl]                                         ; $7d6f: $34
	db $ec                                           ; $7d70: $ec
	rst SubAFromDE                                          ; $7d71: $df
	xor b                                            ; $7d72: $a8
	ldh a, [$6d]                                     ; $7d73: $f0 $6d
	ld e, c                                          ; $7d75: $59
	ldh a, [$27]                                     ; $7d76: $f0 $27
	jp hl                                            ; $7d78: $e9


	add $13                                          ; $7d79: $c6 $13
	ld l, [hl]                                       ; $7d7b: $6e
	dec sp                                           ; $7d7c: $3b
	ccf                                              ; $7d7d: $3f
	ld l, h                                          ; $7d7e: $6c
	ld a, [hl-]                                      ; $7d7f: $3a
	jr c, jr_091_7d23                                ; $7d80: $38 $a1

	ld e, [hl]                                       ; $7d82: $5e
	dec sp                                           ; $7d83: $3b
	inc [hl]                                         ; $7d84: $34
	ld e, d                                          ; $7d85: $5a
	ld b, d                                          ; $7d86: $42
	ld b, l                                          ; $7d87: $45
	add hl, sp                                       ; $7d88: $39
	ld a, [hl-]                                      ; $7d89: $3a
	ldh a, [$6d]                                     ; $7d8a: $f0 $6d
	ld e, c                                          ; $7d8c: $59
	ldh a, [$27]                                     ; $7d8d: $f0 $27
	inc de                                           ; $7d8f: $13
	ld a, [hl-]                                      ; $7d90: $3a
	ld b, d                                          ; $7d91: $42
	ld c, d                                          ; $7d92: $4a
	ld a, $66                                        ; $7d93: $3e $66
	add hl, sp                                       ; $7d95: $39
	and c                                            ; $7d96: $a1

jr_091_7d97:
	cpl                                              ; $7d97: $2f
	ld b, e                                          ; $7d98: $43
	add c                                            ; $7d99: $81
	ld [hl], l                                       ; $7d9a: $75
	ld a, l                                          ; $7d9b: $7d
	ld d, c                                          ; $7d9c: $51
	ld c, [hl]                                       ; $7d9d: $4e
	ld b, h                                          ; $7d9e: $44
	ld e, l                                          ; $7d9f: $5d
	ld c, d                                          ; $7da0: $4a
	xor h                                            ; $7da1: $ac
	ld b, b                                          ; $7da2: $40
	ld b, d                                          ; $7da3: $42
	add h                                            ; $7da4: $84
	ld b, d                                          ; $7da5: $42
	ld [$5318], a                                    ; $7da6: $ea $18 $53
	inc de                                           ; $7da9: $13
	pop af                                           ; $7daa: $f1
	rst JumpTable                                          ; $7dab: $c7
	ldh a, [hDisp0_WY]                                     ; $7dac: $f0 $88
	ld c, d                                          ; $7dae: $4a
	ld e, h                                          ; $7daf: $5c
	ld c, [hl]                                       ; $7db0: $4e
	ldh a, [$6d]                                     ; $7db1: $f0 $6d
	ld e, c                                          ; $7db3: $59
	ldh a, [$27]                                     ; $7db4: $f0 $27
	ld b, h                                          ; $7db6: $44
	ld b, l                                          ; $7db7: $45
	and b                                            ; $7db8: $a0
	ldh a, [$99]                                     ; $7db9: $f0 $99
	sub b                                            ; $7dbb: $90
	ldh a, [$7b]                                     ; $7dbc: $f0 $7b
	ld h, l                                          ; $7dbe: $65
	add e                                            ; $7dbf: $83
	ld c, d                                          ; $7dc0: $4a
	ld d, c                                          ; $7dc1: $51
	inc a                                            ; $7dc2: $3c
	xor l                                            ; $7dc3: $ad
	ld c, d                                          ; $7dc4: $4a
	ld c, a                                          ; $7dc5: $4f
	inc [hl]                                         ; $7dc6: $34
	di                                               ; $7dc7: $f3
	sbc [hl]                                         ; $7dc8: $9e
	ld a, $d3                                        ; $7dc9: $3e $d3
	ld c, d                                          ; $7dcb: $4a
	xor h                                            ; $7dcc: $ac
	ret                                              ; $7dcd: $c9


	ld l, a                                          ; $7dce: $6f
	ld c, e                                          ; $7dcf: $4b
	xor l                                            ; $7dd0: $ad
	ld c, d                                          ; $7dd1: $4a
	ld c, a                                          ; $7dd2: $4f
	inc [hl]                                         ; $7dd3: $34
	ld [hl], d                                       ; $7dd4: $72
	ccf                                              ; $7dd5: $3f
	ld l, h                                          ; $7dd6: $6c
	dec a                                            ; $7dd7: $3d
	jr c, jr_091_7e24                                ; $7dd8: $38 $4a

	ld d, c                                          ; $7dda: $51
	and b                                            ; $7ddb: $a0
	cpl                                              ; $7ddc: $2f
	ld b, e                                          ; $7ddd: $43
	ld e, e                                          ; $7dde: $5b
	ld d, [hl]                                       ; $7ddf: $56
	inc [hl]                                         ; $7de0: $34
	halt                                             ; $7de1: $76
	ld d, e                                          ; $7de2: $53
	add c                                            ; $7de3: $81
	ld [hl], l                                       ; $7de4: $75
	ld a, l                                          ; $7de5: $7d
	ld a, $3f                                        ; $7de6: $3e $3f
	inc de                                           ; $7de8: $13
	ld [hl], d                                       ; $7de9: $72
	ld a, c                                          ; $7dea: $79
	ld c, [hl]                                       ; $7deb: $4e
	inc a                                            ; $7dec: $3c
	ld d, b                                          ; $7ded: $50
	and b                                            ; $7dee: $a0
	ld l, a                                          ; $7def: $6f
	inc [hl]                                         ; $7df0: $34
	db $ec                                           ; $7df1: $ec
	push bc                                          ; $7df2: $c5
	xor h                                            ; $7df3: $ac
	db $eb                                           ; $7df4: $eb
	ld [hl], d                                       ; $7df5: $72
	ld c, b                                          ; $7df6: $48
	and b                                            ; $7df7: $a0
	cpl                                              ; $7df8: $2f
	ld b, e                                          ; $7df9: $43
	ld b, b                                          ; $7dfa: $40
	add hl, sp                                       ; $7dfb: $39
	ld b, h                                          ; $7dfc: $44
	ld c, h                                          ; $7dfd: $4c
	xor b                                            ; $7dfe: $a8
	ldh a, [rSCX]                                    ; $7dff: $f0 $43
	ldh a, [$b8]                                     ; $7e01: $f0 $b8
	adc a                                            ; $7e03: $8f
	ld b, d                                          ; $7e04: $42

jr_091_7e05:
	ldh a, [$38]                                     ; $7e05: $f0 $38
	ld c, a                                          ; $7e07: $4f
	inc de                                           ; $7e08: $13
	pop af                                           ; $7e09: $f1
	adc a                                            ; $7e0a: $8f
	ld a, $38                                        ; $7e0b: $3e $38
	ld b, c                                          ; $7e0d: $41
	ld c, d                                          ; $7e0e: $4a
	ld a, $66                                        ; $7e0f: $3e $66
	add hl, sp                                       ; $7e11: $39
	and c                                            ; $7e12: $a1
	ld b, b                                          ; $7e13: $40
	add hl, sp                                       ; $7e14: $39
	ld c, d                                          ; $7e15: $4a
	ld c, a                                          ; $7e16: $4f
	ldh a, [rAUD1LOW]                                ; $7e17: $f0 $13
	jr c, jr_091_7e5d                                ; $7e19: $38 $42

	ld c, d                                          ; $7e1b: $4a
	ld d, c                                          ; $7e1c: $51
	ld e, l                                          ; $7e1d: $5d
	ld e, d                                          ; $7e1e: $5a
	xor b                                            ; $7e1f: $a8
	ld b, l                                          ; $7e20: $45
	ld e, a                                          ; $7e21: $5f
	ld a, $3c                                        ; $7e22: $3e $3c

jr_091_7e24:
	dec sp                                           ; $7e24: $3b
	dec a                                            ; $7e25: $3d
	ld d, b                                          ; $7e26: $50
	inc [hl]                                         ; $7e27: $34
	ldh a, [c]                                       ; $7e28: $f2
	and h                                            ; $7e29: $a4
	ldh a, [c]                                       ; $7e2a: $f2
	ld b, $ac                                        ; $7e2b: $06 $ac
	ldh a, [$b2]                                     ; $7e2d: $f0 $b2
	ldh a, [rKEY1]                                   ; $7e2f: $f0 $4d
	ld b, a                                          ; $7e31: $47
	ld a, b                                          ; $7e32: $78
	ccf                                              ; $7e33: $3f
	ld d, l                                          ; $7e34: $55
	ld b, h                                          ; $7e35: $44
	ld e, b                                          ; $7e36: $58
	jr c, @-$5e                                      ; $7e37: $38 $a0

	cpl                                              ; $7e39: $2f
	ld b, e                                          ; $7e3a: $43
	db $ec                                           ; $7e3b: $ec
	rst SubAFromDE                                          ; $7e3c: $df
	dec sp                                           ; $7e3d: $3b
	ccf                                              ; $7e3e: $3f
	xor h                                            ; $7e3f: $ac
	ldh a, [rSCX]                                    ; $7e40: $f0 $43
	ldh a, [$b8]                                     ; $7e42: $f0 $b8
	adc a                                            ; $7e44: $8f
	ld b, h                                          ; $7e45: $44
	dec sp                                           ; $7e46: $3b
	dec a                                            ; $7e47: $3d
	ld b, c                                          ; $7e48: $41
	ld b, h                                          ; $7e49: $44
	ld c, b                                          ; $7e4a: $48
	and b                                            ; $7e4b: $a0
	ld b, l                                          ; $7e4c: $45
	ld e, a                                          ; $7e4d: $5f
	ld a, $3c                                        ; $7e4e: $3e $3c
	dec sp                                           ; $7e50: $3b
	dec a                                            ; $7e51: $3d
	ld d, b                                          ; $7e52: $50
	inc [hl]                                         ; $7e53: $34
	ldh a, [c]                                       ; $7e54: $f2
	and h                                            ; $7e55: $a4
	ldh a, [c]                                       ; $7e56: $f2
	ld b, $ac                                        ; $7e57: $06 $ac
	ldh a, [$b2]                                     ; $7e59: $f0 $b2
	ldh a, [rKEY1]                                   ; $7e5b: $f0 $4d

jr_091_7e5d:
	ld b, a                                          ; $7e5d: $47
	ld a, b                                          ; $7e5e: $78
	ccf                                              ; $7e5f: $3f
	ld d, l                                          ; $7e60: $55
	ld b, h                                          ; $7e61: $44
	ld e, b                                          ; $7e62: $58
	jr c, jr_091_7e05                                ; $7e63: $38 $a0

	db $eb                                           ; $7e65: $eb
	ld h, h                                          ; $7e66: $64
	xor b                                            ; $7e67: $a8
	ld de, $4158                                     ; $7e68: $11 $58 $41
	and b                                            ; $7e6b: $a0
	ld e, [hl]                                       ; $7e6c: $5e
	dec sp                                           ; $7e6d: $3b
	inc [hl]                                         ; $7e6e: $34
	ld e, d                                          ; $7e6f: $5a
	ld b, d                                          ; $7e70: $42
	ld b, l                                          ; $7e71: $45
	add hl, sp                                       ; $7e72: $39
	ld a, [hl-]                                      ; $7e73: $3a
	ldh a, [$6d]                                     ; $7e74: $f0 $6d
	ld e, c                                          ; $7e76: $59
	ldh a, [$27]                                     ; $7e77: $f0 $27
	inc de                                           ; $7e79: $13
	ld c, d                                          ; $7e7a: $4a
	ld d, c                                          ; $7e7b: $51
	inc a                                            ; $7e7c: $3c
	and c                                            ; $7e7d: $a1
	ld c, d                                          ; $7e7e: $4a
	inc [hl]                                         ; $7e7f: $34
	ld c, d                                          ; $7e80: $4a
	ld c, a                                          ; $7e81: $4f
	inc [hl]                                         ; $7e82: $34
	di                                               ; $7e83: $f3
	sbc [hl]                                         ; $7e84: $9e
	ld a, $40                                        ; $7e85: $3e $40
	add hl, sp                                       ; $7e87: $39
	inc de                                           ; $7e88: $13
	ld a, [hl-]                                      ; $7e89: $3a
	ld b, d                                          ; $7e8a: $42
	ld c, d                                          ; $7e8b: $4a
	inc [hl]                                         ; $7e8c: $34
	ret                                              ; $7e8d: $c9


	ld l, a                                          ; $7e8e: $6f
	ld c, e                                          ; $7e8f: $4b
	xor l                                            ; $7e90: $ad
	ld c, d                                          ; $7e91: $4a
	ld c, a                                          ; $7e92: $4f
	inc [hl]                                         ; $7e93: $34
	ld [hl], d                                       ; $7e94: $72
	ccf                                              ; $7e95: $3f
	ld l, h                                          ; $7e96: $6c
	dec a                                            ; $7e97: $3d
	jr c, jr_091_7ee4                                ; $7e98: $38 $4a

	ld d, c                                          ; $7e9a: $51
	and b                                            ; $7e9b: $a0
	ld b, [hl]                                       ; $7e9c: $46
	dec sp                                           ; $7e9d: $3b
	xor h                                            ; $7e9e: $ac
	db $ec                                           ; $7e9f: $ec
	push bc                                          ; $7ea0: $c5
	inc [hl]                                         ; $7ea1: $34
	db $eb                                           ; $7ea2: $eb
	ld [hl], d                                       ; $7ea3: $72
	ld c, b                                          ; $7ea4: $48
	and b                                            ; $7ea5: $a0
	ld b, b                                          ; $7ea6: $40
	add hl, sp                                       ; $7ea7: $39
	ld c, d                                          ; $7ea8: $4a
	ld c, a                                          ; $7ea9: $4f
	ldh a, [rAUD1LOW]                                ; $7eaa: $f0 $13
	jr c, jr_091_7ef0                                ; $7eac: $38 $42

	ld c, d                                          ; $7eae: $4a
	ld d, c                                          ; $7eaf: $51
	ld e, l                                          ; $7eb0: $5d
	ld e, d                                          ; $7eb1: $5a
	xor b                                            ; $7eb2: $a8
	ld b, l                                          ; $7eb3: $45
	ld e, a                                          ; $7eb4: $5f
	ld a, $3c                                        ; $7eb5: $3e $3c
	dec sp                                           ; $7eb7: $3b
	dec a                                            ; $7eb8: $3d
	ld d, b                                          ; $7eb9: $50
	xor h                                            ; $7eba: $ac
	ldh a, [$b2]                                     ; $7ebb: $f0 $b2
	ldh a, [rKEY1]                                   ; $7ebd: $f0 $4d
	ld b, a                                          ; $7ebf: $47
	ld a, b                                          ; $7ec0: $78
	ccf                                              ; $7ec1: $3f
	ld d, l                                          ; $7ec2: $55
	ld b, h                                          ; $7ec3: $44
	ld e, b                                          ; $7ec4: $58
	jr c, jr_091_7f13                                ; $7ec5: $38 $4c

	and b                                            ; $7ec7: $a0
	cpl                                              ; $7ec8: $2f
	ld b, e                                          ; $7ec9: $43
	ld e, [hl]                                       ; $7eca: $5e
	add l                                            ; $7ecb: $85
	xor h                                            ; $7ecc: $ac
	jp hl                                            ; $7ecd: $e9


	or e                                             ; $7ece: $b3
	and c                                            ; $7ecf: $a1
	ld l, a                                          ; $7ed0: $6f
	inc [hl]                                         ; $7ed1: $34
	ldh a, [rSCX]                                    ; $7ed2: $f0 $43
	ldh a, [$b8]                                     ; $7ed4: $f0 $b8
	adc a                                            ; $7ed6: $8f
	ld h, d                                          ; $7ed7: $62
	inc de                                           ; $7ed8: $13
	db $eb                                           ; $7ed9: $eb
	sub c                                            ; $7eda: $91
	ld a, b                                          ; $7edb: $78
	ccf                                              ; $7edc: $3f
	jr c, jr_091_7f31                                ; $7edd: $38 $52

	ld d, c                                          ; $7edf: $51
	ld b, d                                          ; $7ee0: $42
	ld c, d                                          ; $7ee1: $4a
	ld c, b                                          ; $7ee2: $48
	and b                                            ; $7ee3: $a0

jr_091_7ee4:
	ld b, l                                          ; $7ee4: $45
	ld e, a                                          ; $7ee5: $5f
	ld a, $3c                                        ; $7ee6: $3e $3c
	dec sp                                           ; $7ee8: $3b
	dec a                                            ; $7ee9: $3d
	ld d, b                                          ; $7eea: $50
	xor h                                            ; $7eeb: $ac
	ldh a, [$b2]                                     ; $7eec: $f0 $b2
	ldh a, [rKEY1]                                   ; $7eee: $f0 $4d

jr_091_7ef0:
	ld b, a                                          ; $7ef0: $47

jr_091_7ef1:
	ld a, b                                          ; $7ef1: $78
	ccf                                              ; $7ef2: $3f
	ld d, l                                          ; $7ef3: $55
	ld b, h                                          ; $7ef4: $44
	ld e, b                                          ; $7ef5: $58
	jr c, @+$4e                                      ; $7ef6: $38 $4c

	and b                                            ; $7ef8: $a0
	db $eb                                           ; $7ef9: $eb
	ld h, h                                          ; $7efa: $64
	and b                                            ; $7efb: $a0
	ld e, d                                          ; $7efc: $5a
	ld b, d                                          ; $7efd: $42
	ld b, l                                          ; $7efe: $45
	add hl, sp                                       ; $7eff: $39
	ld a, [hl-]                                      ; $7f00: $3a
	ldh a, [$6d]                                     ; $7f01: $f0 $6d
	ld e, c                                          ; $7f03: $59
	ldh a, [$27]                                     ; $7f04: $f0 $27
	ld c, d                                          ; $7f06: $4a
	ld d, c                                          ; $7f07: $51
	inc a                                            ; $7f08: $3c
	and c                                            ; $7f09: $a1
	di                                               ; $7f0a: $f3
	sbc [hl]                                         ; $7f0b: $9e
	ld a, $d3                                        ; $7f0c: $3e $d3
	ld c, d                                          ; $7f0e: $4a
	ld c, b                                          ; $7f0f: $48
	xor h                                            ; $7f10: $ac
	ret                                              ; $7f11: $c9


	ld l, a                                          ; $7f12: $6f

jr_091_7f13:
	ld c, e                                          ; $7f13: $4b
	xor l                                            ; $7f14: $ad
	ld c, d                                          ; $7f15: $4a
	ld c, a                                          ; $7f16: $4f
	inc [hl]                                         ; $7f17: $34
	ld [hl], d                                       ; $7f18: $72
	ccf                                              ; $7f19: $3f
	ld l, h                                          ; $7f1a: $6c
	dec a                                            ; $7f1b: $3d
	jr c, @+$4c                                      ; $7f1c: $38 $4a

	ld d, c                                          ; $7f1e: $51
	and b                                            ; $7f1f: $a0
	ld b, b                                          ; $7f20: $40
	add hl, sp                                       ; $7f21: $39
	ld c, d                                          ; $7f22: $4a
	ld c, a                                          ; $7f23: $4f
	ldh a, [rAUD1LOW]                                ; $7f24: $f0 $13
	jr c, jr_091_7f6a                                ; $7f26: $38 $42

	ld c, d                                          ; $7f28: $4a
	ld d, c                                          ; $7f29: $51
	ld e, l                                          ; $7f2a: $5d
	ld e, d                                          ; $7f2b: $5a
	xor b                                            ; $7f2c: $a8
	jp z, $eb34                                      ; $7f2d: $ca $34 $eb

	ld e, d                                          ; $7f30: $5a

jr_091_7f31:
	and b                                            ; $7f31: $a0
	jp z, $eb34                                      ; $7f32: $ca $34 $eb

	ld e, d                                          ; $7f35: $5a
	and b                                            ; $7f36: $a0
	ld b, [hl]                                       ; $7f37: $46
	dec sp                                           ; $7f38: $3b
	ld c, b                                          ; $7f39: $48
	and b                                            ; $7f3a: $a0
	cpl                                              ; $7f3b: $2f
	ld b, e                                          ; $7f3c: $43
	ld b, [hl]                                       ; $7f3d: $46
	dec sp                                           ; $7f3e: $3b
	inc [hl]                                         ; $7f3f: $34
	db $ec                                           ; $7f40: $ec
	rst SubAFromDE                                          ; $7f41: $df
	xor b                                            ; $7f42: $a8
	ldh a, [$6d]                                     ; $7f43: $f0 $6d
	ld e, c                                          ; $7f45: $59
	ldh a, [$27]                                     ; $7f46: $f0 $27
	ld l, [hl]                                       ; $7f48: $6e
	dec sp                                           ; $7f49: $3b
	ccf                                              ; $7f4a: $3f
	ld h, a                                          ; $7f4b: $67
	inc a                                            ; $7f4c: $3c
	ld a, [hl-]                                      ; $7f4d: $3a
	jr c, jr_091_7ef1                                ; $7f4e: $38 $a1

	db $eb                                           ; $7f50: $eb
	ccf                                              ; $7f51: $3f
	xor h                                            ; $7f52: $ac
	pop af                                           ; $7f53: $f1
	ld d, $38                                        ; $7f54: $16 $38
	ld c, d                                          ; $7f56: $4a
	ld d, d                                          ; $7f57: $52
	ld d, c                                          ; $7f58: $51
	ld b, d                                          ; $7f59: $42
	ld c, d                                          ; $7f5a: $4a
	ld c, b                                          ; $7f5b: $48
	and b                                            ; $7f5c: $a0
	cpl                                              ; $7f5d: $2f
	ld b, e                                          ; $7f5e: $43
	ld h, c                                          ; $7f5f: $61
	ld h, [hl]                                       ; $7f60: $66
	inc [hl]                                         ; $7f61: $34
	ret                                              ; $7f62: $c9


	inc [hl]                                         ; $7f63: $34
	db $ed                                           ; $7f64: $ed
	ld d, a                                          ; $7f65: $57
	inc de                                           ; $7f66: $13
	ldh a, [$75]                                     ; $7f67: $f0 $75
	adc h                                            ; $7f69: $8c

jr_091_7f6a:
	ld d, e                                          ; $7f6a: $53
	ldh a, [$5c]                                     ; $7f6b: $f0 $5c
	jr c, jr_091_7fab                                ; $7f6d: $38 $3c

	ld a, [hl-]                                      ; $7f6f: $3a
	ld c, b                                          ; $7f70: $48
	ldh a, [rAUD3ENA]                                ; $7f71: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $7f73: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $7f75: $f0 $1a
	and b                                            ; $7f77: $a0
	ld b, b                                          ; $7f78: $40
	inc [hl]                                         ; $7f79: $34
	ld b, b                                          ; $7f7a: $40
	ld b, c                                          ; $7f7b: $41
	ld a, [hl-]                                      ; $7f7c: $3a
	ldh a, [$78]                                     ; $7f7d: $f0 $78
	ld e, e                                          ; $7f7f: $5b
	ld c, d                                          ; $7f80: $4a
	ld d, c                                          ; $7f81: $51
	ld c, h                                          ; $7f82: $4c
	ld c, b                                          ; $7f83: $48
	and b                                            ; $7f84: $a0
	db $ec                                           ; $7f85: $ec
	sub $4a                                          ; $7f86: $d6 $4a
	ld d, c                                          ; $7f88: $51
	ld c, h                                          ; $7f89: $4c
	and b                                            ; $7f8a: $a0
	cpl                                              ; $7f8b: $2f
	ld b, e                                          ; $7f8c: $43
	ret                                              ; $7f8d: $c9


	inc [hl]                                         ; $7f8e: $34
	pop af                                           ; $7f8f: $f1
	ld a, [$15f3]                                    ; $7f90: $fa $f3 $15
	ldh a, [$0d]                                     ; $7f93: $f0 $0d
	ld d, e                                          ; $7f95: $53
	inc de                                           ; $7f96: $13
	ldh a, [rAUD1ENV]                                ; $7f97: $f0 $12
	inc a                                            ; $7f99: $3c
	dec sp                                           ; $7f9a: $3b
	dec a                                            ; $7f9b: $3d
	inc a                                            ; $7f9c: $3c
	ld a, [hl-]                                      ; $7f9d: $3a
	ld c, b                                          ; $7f9e: $48
	and b                                            ; $7f9f: $a0
	db $d3                                           ; $7fa0: $d3
	ld c, d                                          ; $7fa1: $4a
	ld d, c                                          ; $7fa2: $51
	inc a                                            ; $7fa3: $3c
	and b                                            ; $7fa4: $a0
	jr c, jr_091_7fdf                                ; $7fa5: $38 $38

	ldh a, [$78]                                     ; $7fa7: $f0 $78
	ld e, e                                          ; $7fa9: $5b
	ld c, d                                          ; $7faa: $4a

jr_091_7fab:
	ld a, $3d                                        ; $7fab: $3e $3d
	ld b, l                                          ; $7fad: $45
	and b                                            ; $7fae: $a0
	cpl                                              ; $7faf: $2f
	ld b, e                                          ; $7fb0: $43
	ld b, b                                          ; $7fb1: $40
	add hl, sp                                       ; $7fb2: $39
	ld [hl], $ec                                     ; $7fb3: $36 $ec
	cp c                                             ; $7fb5: $b9
	xor h                                            ; $7fb6: $ac
	pop af                                           ; $7fb7: $f1
	inc h                                            ; $7fb8: $24
	adc e                                            ; $7fb9: $8b
	ldh a, [$5c]                                     ; $7fba: $f0 $5c
	jr c, @+$4b                                      ; $7fbc: $38 $49

	ld d, h                                          ; $7fbe: $54
	ld [hl], d                                       ; $7fbf: $72
	ld a, c                                          ; $7fc0: $79
	ld a, [hl-]                                      ; $7fc1: $3a
	ld d, l                                          ; $7fc2: $55
	ccf                                              ; $7fc3: $3f
	and b                                            ; $7fc4: $a0
	pop de                                           ; $7fc5: $d1
	ldh a, [$57]                                     ; $7fc6: $f0 $57
	ldh a, [$ae]                                     ; $7fc8: $f0 $ae
	ld c, d                                          ; $7fca: $4a
	ld a, $3d                                        ; $7fcb: $3e $3d
	and b                                            ; $7fcd: $a0
	ld d, c                                          ; $7fce: $51
	ld [hl], b                                       ; $7fcf: $70
	jr c, @+$4c                                      ; $7fd0: $38 $4a

	ld d, c                                          ; $7fd2: $51
	ld c, h                                          ; $7fd3: $4c
	and b                                            ; $7fd4: $a0
	cpl                                              ; $7fd5: $2f
	ld b, e                                          ; $7fd6: $43
	ld l, e                                          ; $7fd7: $6b
	ld d, e                                          ; $7fd8: $53
	and c                                            ; $7fd9: $a1
	ldh a, [$6d]                                     ; $7fda: $f0 $6d
	ld e, c                                          ; $7fdc: $59
	ldh a, [$27]                                     ; $7fdd: $f0 $27

jr_091_7fdf:
	ld c, e                                          ; $7fdf: $4b
	ld a, [hl]                                       ; $7fe0: $7e

jr_091_7fe1:
	ld d, l                                          ; $7fe1: $55
	ldh a, [rTAC]                                    ; $7fe2: $f0 $07
	inc a                                            ; $7fe4: $3c
	ld d, b                                          ; $7fe5: $50
	ld a, [hl-]                                      ; $7fe6: $3a
	jr c, jr_091_7ffc                                ; $7fe7: $38 $13

	ld b, d                                          ; $7fe9: $42
	ld c, d                                          ; $7fea: $4a
	ld d, c                                          ; $7feb: $51
	ld d, e                                          ; $7fec: $53
	xor h                                            ; $7fed: $ac
	ld l, d                                          ; $7fee: $6a
	ld b, d                                          ; $7fef: $42
	xor $2d                                          ; $7ff0: $ee $2d
	jr c, jr_091_7fe1                                ; $7ff2: $38 $ed

	pop hl                                           ; $7ff4: $e1
	ld b, h                                          ; $7ff5: $44
	dec sp                                           ; $7ff6: $3b
	dec a                                            ; $7ff7: $3d
	ld b, d                                          ; $7ff8: $42
	ld c, d                                          ; $7ff9: $4a
	ld c, e                                          ; $7ffa: $4b
	and c                                            ; $7ffb: $a1

jr_091_7ffc:
	cpl                                              ; $7ffc: $2f
	ld b, e                                          ; $7ffd: $43
	ld b, b                                          ; $7ffe: $40
	add hl, sp                                       ; $7fff: $39
