; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

	ld hl, $9260                                     ; $4000: $21 $60 $92

jr_00a_4003:
	ld b, $12                                        ; $4003: $06 $12
	rst FarCall                                          ; $4005: $f7
	ld d, [hl]                                       ; $4006: $56
	ld d, c                                          ; $4007: $51
	ld a, [bc]                                       ; $4008: $0a
	rst FarCall                                          ; $4009: $f7
	dec b                                            ; $400a: $05
	ld b, h                                          ; $400b: $44
	add hl, bc                                       ; $400c: $09
	ld hl, $4035                                     ; $400d: $21 $35 $40
	ld a, [$d88c]                                    ; $4010: $fa $8c $d8
	call $3c83                                       ; $4013: $cd $83 $3c
	ld a, [$d88b]                                    ; $4016: $fa $8b $d8
	and $3f                                          ; $4019: $e6 $3f
	ret z                                            ; $401b: $c8

	dec a                                            ; $401c: $3d
	add a                                            ; $401d: $87
	add a                                            ; $401e: $87
	rst AddAOntoHL                                          ; $401f: $ef
	push hl                                          ; $4020: $e5
	rst GetHLinHL                                          ; $4021: $cf
	rst FarCall                                          ; $4022: $f7
	halt                                             ; $4023: $76
	ld d, c                                          ; $4024: $51
	ld a, [bc]                                       ; $4025: $0a
	call Func_1c32                                       ; $4026: $cd $32 $1c
	pop hl                                           ; $4029: $e1
	inc hl                                           ; $402a: $23
	inc hl                                           ; $402b: $23
	ld a, [hl+]                                      ; $402c: $2a
	ld [$d88f], a                                    ; $402d: $ea $8f $d8
	ld a, [hl]                                       ; $4030: $7e
	ld [$d88b], a                                    ; $4031: $ea $8b $d8
	ret                                              ; $4034: $c9


	ld c, e                                          ; $4035: $4b
	ld b, b                                          ; $4036: $40
	cpl                                              ; $4037: $2f
	ld b, c                                          ; $4038: $41
	ld l, e                                          ; $4039: $6b
	ld b, c                                          ; $403a: $41
	sbc a                                            ; $403b: $9f
	ld b, c                                          ; $403c: $41
	di                                               ; $403d: $f3
	ld b, c                                          ; $403e: $41
	dec sp                                           ; $403f: $3b
	ld b, d                                          ; $4040: $42
	sbc e                                            ; $4041: $9b
	ld b, d                                          ; $4042: $42
	bit 0, d                                         ; $4043: $cb $42
	ei                                               ; $4045: $fb
	ld b, d                                          ; $4046: $42
	ld c, e                                          ; $4047: $4b
	ld b, e                                          ; $4048: $43
	jp Jump_00a_7b43                                 ; $4049: $c3 $43 $7b


	adc c                                            ; $404c: $89
	ld a, b                                          ; $404d: $78
	nop                                              ; $404e: $00
	add [hl]                                         ; $404f: $86
	adc c                                            ; $4050: $89
	ld a, b                                          ; $4051: $78
	nop                                              ; $4052: $00
	sub [hl]                                         ; $4053: $96
	adc c                                            ; $4054: $89
	ld a, b                                          ; $4055: $78
	nop                                              ; $4056: $00
	and [hl]                                         ; $4057: $a6
	adc c                                            ; $4058: $89
	ld e, d                                          ; $4059: $5a
	nop                                              ; $405a: $00
	cp c                                             ; $405b: $b9
	adc c                                            ; $405c: $89
	ld a, b                                          ; $405d: $78
	nop                                              ; $405e: $00
	add $89                                          ; $405f: $c6 $89
	ld e, d                                          ; $4061: $5a
	nop                                              ; $4062: $00
	sub $89                                          ; $4063: $d6 $89
	ld e, d                                          ; $4065: $5a
	nop                                              ; $4066: $00
	db $e3                                           ; $4067: $e3
	adc c                                            ; $4068: $89
	ld a, b                                          ; $4069: $78
	nop                                              ; $406a: $00

jr_00a_406b:
	or $89                                           ; $406b: $f6 $89
	or h                                             ; $406d: $b4
	nop                                              ; $406e: $00
	add hl, bc                                       ; $406f: $09
	adc d                                            ; $4070: $8a
	ld a, b                                          ; $4071: $78
	nop                                              ; $4072: $00
	inc e                                            ; $4073: $1c
	adc d                                            ; $4074: $8a
	ld a, b                                          ; $4075: $78
	nop                                              ; $4076: $00
	jr z, jr_00a_4003                                ; $4077: $28 $8a

	ld a, b                                          ; $4079: $78
	nop                                              ; $407a: $00
	scf                                              ; $407b: $37
	adc d                                            ; $407c: $8a
	ld a, b                                          ; $407d: $78
	nop                                              ; $407e: $00
	ld b, [hl]                                       ; $407f: $46
	adc d                                            ; $4080: $8a
	ld e, d                                          ; $4081: $5a
	nop                                              ; $4082: $00
	ld d, h                                          ; $4083: $54
	adc d                                            ; $4084: $8a
	ld a, b                                          ; $4085: $78
	nop                                              ; $4086: $00
	ld h, b                                          ; $4087: $60
	adc d                                            ; $4088: $8a
	ld e, d                                          ; $4089: $5a
	nop                                              ; $408a: $00
	ld l, a                                          ; $408b: $6f
	adc d                                            ; $408c: $8a
	ld e, d                                          ; $408d: $5a
	nop                                              ; $408e: $00
	ld a, l                                          ; $408f: $7d
	adc d                                            ; $4090: $8a
	ld a, b                                          ; $4091: $78
	nop                                              ; $4092: $00
	adc b                                            ; $4093: $88
	adc d                                            ; $4094: $8a
	ld a, b                                          ; $4095: $78
	nop                                              ; $4096: $00
	sub d                                            ; $4097: $92

jr_00a_4098:
	adc d                                            ; $4098: $8a
	ld l, c                                          ; $4099: $69
	dec d                                            ; $409a: $15
	sbc l                                            ; $409b: $9d
	adc d                                            ; $409c: $8a
	ld l, c                                          ; $409d: $69
	nop                                              ; $409e: $00
	and a                                            ; $409f: $a7
	adc d                                            ; $40a0: $8a
	ld a, b                                          ; $40a1: $78
	rla                                              ; $40a2: $17
	or l                                             ; $40a3: $b5
	adc d                                            ; $40a4: $8a
	ld a, b                                          ; $40a5: $78
	jr jr_00a_406b                                   ; $40a6: $18 $c3

	adc d                                            ; $40a8: $8a
	ld a, b                                          ; $40a9: $78
	nop                                              ; $40aa: $00
	res 1, d                                         ; $40ab: $cb $8a
	ld a, b                                          ; $40ad: $78
	ld a, [de]                                       ; $40ae: $1a
	ret c                                            ; $40af: $d8

	adc d                                            ; $40b0: $8a
	ld a, b                                          ; $40b1: $78
	dec de                                           ; $40b2: $1b
	and $8a                                          ; $40b3: $e6 $8a
	ld a, b                                          ; $40b5: $78
	nop                                              ; $40b6: $00
	or e                                             ; $40b7: $b3
	sub [hl]                                         ; $40b8: $96
	ld a, b                                          ; $40b9: $78
	nop                                              ; $40ba: $00
	ret nc                                           ; $40bb: $d0

	sub [hl]                                         ; $40bc: $96
	ld a, b                                          ; $40bd: $78
	nop                                              ; $40be: $00
	sub l                                            ; $40bf: $95
	sub a                                            ; $40c0: $97
	ld a, b                                          ; $40c1: $78
	nop                                              ; $40c2: $00
	ldh a, [c]                                       ; $40c3: $f2
	adc d                                            ; $40c4: $8a
	ld d, b                                          ; $40c5: $50
	nop                                              ; $40c6: $00
	db $fc                                           ; $40c7: $fc
	adc d                                            ; $40c8: $8a
	ld bc, $0f80                                     ; $40c9: $01 $80 $0f
	adc e                                            ; $40cc: $8b
	ld d, b                                          ; $40cd: $50
	nop                                              ; $40ce: $00
	add hl, de                                       ; $40cf: $19
	adc e                                            ; $40d0: $8b
	ld bc, $2880                                     ; $40d1: $01 $80 $28
	adc e                                            ; $40d4: $8b
	ld d, b                                          ; $40d5: $50
	add b                                            ; $40d6: $80
	inc b                                            ; $40d7: $04
	sbc b                                            ; $40d8: $98
	ld e, d                                          ; $40d9: $5a
	nop                                              ; $40da: $00
	inc d                                            ; $40db: $14
	sbc b                                            ; $40dc: $98
	ld e, d                                          ; $40dd: $5a
	nop                                              ; $40de: $00
	and a                                            ; $40df: $a7
	sub a                                            ; $40e0: $97
	ld e, d                                          ; $40e1: $5a
	nop                                              ; $40e2: $00
	jp $5a96                                         ; $40e3: $c3 $96 $5a


	nop                                              ; $40e6: $00
	ret nc                                           ; $40e7: $d0

	sub [hl]                                         ; $40e8: $96
	ld e, d                                          ; $40e9: $5a
	nop                                              ; $40ea: $00
	ldh [hDisp1_WX], a                                     ; $40eb: $e0 $96
	ld e, d                                          ; $40ed: $5a
	nop                                              ; $40ee: $00
	pop af                                           ; $40ef: $f1
	sub [hl]                                         ; $40f0: $96
	ld e, d                                          ; $40f1: $5a
	nop                                              ; $40f2: $00
	dec b                                            ; $40f3: $05
	sub a                                            ; $40f4: $97
	ld e, d                                          ; $40f5: $5a
	nop                                              ; $40f6: $00
	dec d                                            ; $40f7: $15
	sub a                                            ; $40f8: $97
	ld e, d                                          ; $40f9: $5a
	nop                                              ; $40fa: $00
	inc hl                                           ; $40fb: $23
	sub a                                            ; $40fc: $97
	ld e, d                                          ; $40fd: $5a
	nop                                              ; $40fe: $00
	jr nc, jr_00a_4098                               ; $40ff: $30 $97

	ld e, d                                          ; $4101: $5a
	nop                                              ; $4102: $00
	inc a                                            ; $4103: $3c
	sub a                                            ; $4104: $97
	ld e, d                                          ; $4105: $5a
	or b                                             ; $4106: $b0
	ld c, a                                          ; $4107: $4f
	sub a                                            ; $4108: $97
	ld e, d                                          ; $4109: $5a
	or c                                             ; $410a: $b1
	ld e, a                                          ; $410b: $5f
	sub a                                            ; $410c: $97
	ld e, d                                          ; $410d: $5a
	nop                                              ; $410e: $00
	ld [hl], l                                       ; $410f: $75
	sub a                                            ; $4110: $97
	ld e, d                                          ; $4111: $5a
	inc sp                                           ; $4112: $33
	adc b                                            ; $4113: $88
	sub a                                            ; $4114: $97
	ld e, d                                          ; $4115: $5a
	nop                                              ; $4116: $00
	xor a                                            ; $4117: $af
	sub a                                            ; $4118: $97
	ld e, d                                          ; $4119: $5a
	nop                                              ; $411a: $00
	cp l                                             ; $411b: $bd
	sub a                                            ; $411c: $97
	ld e, d                                          ; $411d: $5a
	nop                                              ; $411e: $00
	rst GetHLinHL                                          ; $411f: $cf
	sub a                                            ; $4120: $97
	ld e, d                                          ; $4121: $5a
	nop                                              ; $4122: $00
	pop hl                                           ; $4123: $e1
	sub a                                            ; $4124: $97
	ld bc, $ee80                                     ; $4125: $01 $80 $ee
	sub a                                            ; $4128: $97
	inc a                                            ; $4129: $3c
	add hl, sp                                       ; $412a: $39
	di                                               ; $412b: $f3
	sub a                                            ; $412c: $97
	ld a, b                                          ; $412d: $78
	nop                                              ; $412e: $00
	ld [hl], $8b                                     ; $412f: $36 $8b
	ld e, d                                          ; $4131: $5a
	nop                                              ; $4132: $00
	ld c, b                                          ; $4133: $48
	adc e                                            ; $4134: $8b
	ld bc, $4f80                                     ; $4135: $01 $80 $4f
	adc e                                            ; $4138: $8b
	ld e, d                                          ; $4139: $5a
	nop                                              ; $413a: $00
	ld e, e                                          ; $413b: $5b
	adc e                                            ; $413c: $8b
	inc a                                            ; $413d: $3c
	rrca                                             ; $413e: $0f
	ld e, [hl]                                       ; $413f: $5e
	adc e                                            ; $4140: $8b
	ld e, d                                          ; $4141: $5a
	nop                                              ; $4142: $00
	ld [hl], b                                       ; $4143: $70
	adc e                                            ; $4144: $8b
	ld e, d                                          ; $4145: $5a
	nop                                              ; $4146: $00
	add d                                            ; $4147: $82
	adc e                                            ; $4148: $8b
	ld e, d                                          ; $4149: $5a
	ld b, $8d                                        ; $414a: $06 $8d
	adc e                                            ; $414c: $8b
	ld e, d                                          ; $414d: $5a
	ld b, $94                                        ; $414e: $06 $94
	adc e                                            ; $4150: $8b
	ld e, d                                          ; $4151: $5a
	ld b, $9b                                        ; $4152: $06 $9b
	adc e                                            ; $4154: $8b
	ld e, d                                          ; $4155: $5a
	ld b, $a2                                        ; $4156: $06 $a2
	adc e                                            ; $4158: $8b
	ld e, d                                          ; $4159: $5a
	dec b                                            ; $415a: $05
	xor c                                            ; $415b: $a9
	adc e                                            ; $415c: $8b
	ld e, d                                          ; $415d: $5a
	dec b                                            ; $415e: $05
	or b                                             ; $415f: $b0
	adc e                                            ; $4160: $8b
	ld e, d                                          ; $4161: $5a
	dec b                                            ; $4162: $05
	or a                                             ; $4163: $b7
	adc e                                            ; $4164: $8b
	ld e, d                                          ; $4165: $5a
	dec b                                            ; $4166: $05
	ld [hl+], a                                      ; $4167: $22
	sbc b                                            ; $4168: $98
	ld e, d                                          ; $4169: $5a
	nop                                              ; $416a: $00
	cp [hl]                                          ; $416b: $be
	adc e                                            ; $416c: $8b
	ld e, d                                          ; $416d: $5a
	nop                                              ; $416e: $00
	adc $8b                                          ; $416f: $ce $8b
	ld e, d                                          ; $4171: $5a
	nop                                              ; $4172: $00
	ldh [$8b], a                                     ; $4173: $e0 $8b
	ld e, d                                          ; $4175: $5a
	nop                                              ; $4176: $00
	pop af                                           ; $4177: $f1
	adc e                                            ; $4178: $8b
	ld e, d                                          ; $4179: $5a
	nop                                              ; $417a: $00
	dec b                                            ; $417b: $05
	adc h                                            ; $417c: $8c
	ld e, d                                          ; $417d: $5a
	nop                                              ; $417e: $00
	dec de                                           ; $417f: $1b
	adc h                                            ; $4180: $8c
	ld e, d                                          ; $4181: $5a
	nop                                              ; $4182: $00
	dec l                                            ; $4183: $2d
	adc h                                            ; $4184: $8c
	ld e, d                                          ; $4185: $5a
	nop                                              ; $4186: $00
	ld b, c                                          ; $4187: $41
	adc h                                            ; $4188: $8c
	ld e, d                                          ; $4189: $5a
	nop                                              ; $418a: $00
	ld d, c                                          ; $418b: $51
	adc h                                            ; $418c: $8c
	ld e, d                                          ; $418d: $5a
	nop                                              ; $418e: $00
	ld h, l                                          ; $418f: $65
	adc h                                            ; $4190: $8c
	ld e, d                                          ; $4191: $5a
	nop                                              ; $4192: $00
	ld [hl], l                                       ; $4193: $75
	adc h                                            ; $4194: $8c
	ld e, d                                          ; $4195: $5a
	nop                                              ; $4196: $00
	add d                                            ; $4197: $82
	adc h                                            ; $4198: $8c
	ld e, d                                          ; $4199: $5a
	nop                                              ; $419a: $00
	sub l                                            ; $419b: $95
	adc h                                            ; $419c: $8c
	ld e, d                                          ; $419d: $5a
	nop                                              ; $419e: $00
	and e                                            ; $419f: $a3
	adc h                                            ; $41a0: $8c
	ld e, d                                          ; $41a1: $5a
	nop                                              ; $41a2: $00
	or a                                             ; $41a3: $b7
	adc h                                            ; $41a4: $8c
	ld e, d                                          ; $41a5: $5a
	dec d                                            ; $41a6: $15
	ret                                              ; $41a7: $c9


	adc h                                            ; $41a8: $8c
	ld e, d                                          ; $41a9: $5a
	nop                                              ; $41aa: $00
	call c, Call_00a_5a8c                            ; $41ab: $dc $8c $5a
	dec b                                            ; $41ae: $05
	db $ec                                           ; $41af: $ec
	adc h                                            ; $41b0: $8c
	ld e, d                                          ; $41b1: $5a
	nop                                              ; $41b2: $00
	push af                                          ; $41b3: $f5
	adc h                                            ; $41b4: $8c
	ld e, d                                          ; $41b5: $5a
	rlca                                             ; $41b6: $07
	dec b                                            ; $41b7: $05
	adc l                                            ; $41b8: $8d
	ld e, d                                          ; $41b9: $5a
	ld [$8d17], sp                                   ; $41ba: $08 $17 $8d
	ld e, d                                          ; $41bd: $5a
	nop                                              ; $41be: $00
	dec l                                            ; $41bf: $2d
	adc l                                            ; $41c0: $8d
	ld e, d                                          ; $41c1: $5a
	ld a, [bc]                                       ; $41c2: $0a
	ld a, $8d                                        ; $41c3: $3e $8d
	ld e, d                                          ; $41c5: $5a
	dec bc                                           ; $41c6: $0b
	ld b, l                                          ; $41c7: $45
	adc l                                            ; $41c8: $8d
	ld e, d                                          ; $41c9: $5a
	nop                                              ; $41ca: $00
	ld c, l                                          ; $41cb: $4d
	adc l                                            ; $41cc: $8d
	ld e, d                                          ; $41cd: $5a
	dec c                                            ; $41ce: $0d
	ld e, c                                          ; $41cf: $59
	adc l                                            ; $41d0: $8d
	ld e, d                                          ; $41d1: $5a
	ld c, $6b                                        ; $41d2: $0e $6b
	adc l                                            ; $41d4: $8d
	ld e, d                                          ; $41d5: $5a
	rrca                                             ; $41d6: $0f
	add e                                            ; $41d7: $83
	adc l                                            ; $41d8: $8d
	ld e, d                                          ; $41d9: $5a
	add b                                            ; $41da: $80
	sub [hl]                                         ; $41db: $96
	adc l                                            ; $41dc: $8d
	ld e, d                                          ; $41dd: $5a
	add b                                            ; $41de: $80
	sbc l                                            ; $41df: $9d
	adc l                                            ; $41e0: $8d
	ld e, d                                          ; $41e1: $5a
	add b                                            ; $41e2: $80
	xor e                                            ; $41e3: $ab

jr_00a_41e4:
	adc l                                            ; $41e4: $8d
	ld e, d                                          ; $41e5: $5a
	add b                                            ; $41e6: $80
	cp c                                             ; $41e7: $b9
	adc l                                            ; $41e8: $8d
	ld e, d                                          ; $41e9: $5a
	add b                                            ; $41ea: $80
	rst JumpTable                                          ; $41eb: $c7
	adc l                                            ; $41ec: $8d
	ld e, d                                          ; $41ed: $5a
	add b                                            ; $41ee: $80
	ld [hl], b                                       ; $41ef: $70
	adc e                                            ; $41f0: $8b
	ld e, d                                          ; $41f1: $5a
	nop                                              ; $41f2: $00
	push de                                          ; $41f3: $d5
	adc l                                            ; $41f4: $8d
	ld e, d                                          ; $41f5: $5a
	nop                                              ; $41f6: $00
	jp hl                                            ; $41f7: $e9


	adc l                                            ; $41f8: $8d
	ld e, d                                          ; $41f9: $5a
	ld [de], a                                       ; $41fa: $12
	ei                                               ; $41fb: $fb
	adc l                                            ; $41fc: $8d
	ld e, d                                          ; $41fd: $5a
	nop                                              ; $41fe: $00
	rrca                                             ; $41ff: $0f
	adc [hl]                                         ; $4200: $8e
	ld e, d                                          ; $4201: $5a
	nop                                              ; $4202: $00
	ld e, $8e                                        ; $4203: $1e $8e
	ld e, d                                          ; $4205: $5a
	add [hl]                                         ; $4206: $86
	dec hl                                           ; $4207: $2b
	adc [hl]                                         ; $4208: $8e
	ld e, d                                          ; $4209: $5a
	nop                                              ; $420a: $00
	dec [hl]                                         ; $420b: $35
	adc [hl]                                         ; $420c: $8e
	ld e, d                                          ; $420d: $5a
	ld [$8e47], sp                                   ; $420e: $08 $47 $8e
	ld e, d                                          ; $4211: $5a
	nop                                              ; $4212: $00
	ld e, c                                          ; $4213: $59
	adc [hl]                                         ; $4214: $8e
	ld e, d                                          ; $4215: $5a
	ld a, [bc]                                       ; $4216: $0a
	ld h, l                                          ; $4217: $65
	adc [hl]                                         ; $4218: $8e
	ld e, d                                          ; $4219: $5a
	dec bc                                           ; $421a: $0b
	ld a, b                                          ; $421b: $78
	adc [hl]                                         ; $421c: $8e
	ld e, d                                          ; $421d: $5a
	inc c                                            ; $421e: $0c
	adc [hl]                                         ; $421f: $8e
	adc [hl]                                         ; $4220: $8e
	ld e, d                                          ; $4221: $5a
	add b                                            ; $4222: $80
	and e                                            ; $4223: $a3
	adc [hl]                                         ; $4224: $8e

jr_00a_4225:
	ld e, d                                          ; $4225: $5a
	add b                                            ; $4226: $80
	xor d                                            ; $4227: $aa
	adc [hl]                                         ; $4228: $8e
	ld e, d                                          ; $4229: $5a
	add b                                            ; $422a: $80
	cp c                                             ; $422b: $b9
	adc [hl]                                         ; $422c: $8e
	ld e, d                                          ; $422d: $5a
	add b                                            ; $422e: $80
	ret z                                            ; $422f: $c8

	adc [hl]                                         ; $4230: $8e
	ld e, d                                          ; $4231: $5a
	add b                                            ; $4232: $80
	call nc, Call_00a_5a8e                           ; $4233: $d4 $8e $5a
	add b                                            ; $4236: $80
	ld [hl], b                                       ; $4237: $70
	adc e                                            ; $4238: $8b
	ld e, d                                          ; $4239: $5a
	nop                                              ; $423a: $00
	pop hl                                           ; $423b: $e1
	adc [hl]                                         ; $423c: $8e
	ld e, d                                          ; $423d: $5a
	nop                                              ; $423e: $00
	di                                               ; $423f: $f3
	adc [hl]                                         ; $4240: $8e
	ld e, d                                          ; $4241: $5a
	jr jr_00a_4247                                   ; $4242: $18 $03

	adc a                                            ; $4244: $8f
	ld e, d                                          ; $4245: $5a
	nop                                              ; $4246: $00

jr_00a_4247:
	ld [de], a                                       ; $4247: $12
	adc a                                            ; $4248: $8f
	ld e, d                                          ; $4249: $5a
	add l                                            ; $424a: $85
	ld [hl+], a                                      ; $424b: $22
	adc a                                            ; $424c: $8f
	ld e, d                                          ; $424d: $5a
	add [hl]                                         ; $424e: $86
	inc sp                                           ; $424f: $33
	adc a                                            ; $4250: $8f
	ld e, d                                          ; $4251: $5a
	nop                                              ; $4252: $00
	jr c, jr_00a_41e4                                ; $4253: $38 $8f

	ld e, d                                          ; $4255: $5a
	adc b                                            ; $4256: $88
	ld c, c                                          ; $4257: $49
	adc a                                            ; $4258: $8f
	ld e, d                                          ; $4259: $5a
	add hl, bc                                       ; $425a: $09
	ld e, d                                          ; $425b: $5a
	adc a                                            ; $425c: $8f
	ld e, d                                          ; $425d: $5a
	nop                                              ; $425e: $00
	ld h, [hl]                                       ; $425f: $66
	adc a                                            ; $4260: $8f
	ld e, d                                          ; $4261: $5a
	nop                                              ; $4262: $00
	ld a, b                                          ; $4263: $78
	adc a                                            ; $4264: $8f
	ld e, d                                          ; $4265: $5a
	adc h                                            ; $4266: $8c
	adc e                                            ; $4267: $8b
	adc a                                            ; $4268: $8f
	ld e, d                                          ; $4269: $5a
	dec c                                            ; $426a: $0d
	sbc h                                            ; $426b: $9c
	adc a                                            ; $426c: $8f
	ld e, d                                          ; $426d: $5a
	ld c, $a7                                        ; $426e: $0e $a7
	adc a                                            ; $4270: $8f
	ld e, d                                          ; $4271: $5a
	nop                                              ; $4272: $00
	or l                                             ; $4273: $b5
	adc a                                            ; $4274: $8f
	ld e, d                                          ; $4275: $5a
	db $10                                           ; $4276: $10
	pop bc                                           ; $4277: $c1
	adc a                                            ; $4278: $8f
	ld e, d                                          ; $4279: $5a
	ld de, $8fd3                                     ; $427a: $11 $d3 $8f
	ld e, d                                          ; $427d: $5a
	ld [de], a                                       ; $427e: $12
	jp hl                                            ; $427f: $e9


	adc a                                            ; $4280: $8f
	ld e, d                                          ; $4281: $5a
	add b                                            ; $4282: $80
	nop                                              ; $4283: $00
	sub b                                            ; $4284: $90
	ld e, d                                          ; $4285: $5a
	add b                                            ; $4286: $80
	rlca                                             ; $4287: $07
	sub b                                            ; $4288: $90
	ld e, d                                          ; $4289: $5a
	add b                                            ; $428a: $80
	dec d                                            ; $428b: $15
	sub b                                            ; $428c: $90
	ld e, d                                          ; $428d: $5a
	add b                                            ; $428e: $80
	ld hl, $5a90                                     ; $428f: $21 $90 $5a
	add b                                            ; $4292: $80
	jr nc, jr_00a_4225                               ; $4293: $30 $90

	ld e, d                                          ; $4295: $5a
	add b                                            ; $4296: $80
	ld [hl], b                                       ; $4297: $70
	adc e                                            ; $4298: $8b
	ld e, d                                          ; $4299: $5a
	nop                                              ; $429a: $00
	inc a                                            ; $429b: $3c
	sub b                                            ; $429c: $90
	ld e, d                                          ; $429d: $5a
	nop                                              ; $429e: $00
	ld c, d                                          ; $429f: $4a
	sub b                                            ; $42a0: $90
	ld e, d                                          ; $42a1: $5a
	inc bc                                           ; $42a2: $03
	ld e, d                                          ; $42a3: $5a
	sub b                                            ; $42a4: $90
	ld e, d                                          ; $42a5: $5a
	nop                                              ; $42a6: $00
	ld h, l                                          ; $42a7: $65
	sub b                                            ; $42a8: $90
	ld e, d                                          ; $42a9: $5a
	nop                                              ; $42aa: $00
	ld a, e                                          ; $42ab: $7b
	sub b                                            ; $42ac: $90
	ld e, d                                          ; $42ad: $5a
	nop                                              ; $42ae: $00
	adc [hl]                                         ; $42af: $8e
	sub b                                            ; $42b0: $90
	ld e, d                                          ; $42b1: $5a
	nop                                              ; $42b2: $00
	and l                                            ; $42b3: $a5
	sub b                                            ; $42b4: $90
	ld e, d                                          ; $42b5: $5a
	nop                                              ; $42b6: $00
	or d                                             ; $42b7: $b2
	sub b                                            ; $42b8: $90
	ld e, d                                          ; $42b9: $5a
	add b                                            ; $42ba: $80
	ret                                              ; $42bb: $c9


	sub b                                            ; $42bc: $90
	ld e, d                                          ; $42bd: $5a
	nop                                              ; $42be: $00
	ldh [c], a                                       ; $42bf: $e2
	sub b                                            ; $42c0: $90
	ld e, d                                          ; $42c1: $5a
	nop                                              ; $42c2: $00
	pop af                                           ; $42c3: $f1
	sub b                                            ; $42c4: $90
	ld e, d                                          ; $42c5: $5a
	inc c                                            ; $42c6: $0c
	rst $38                                          ; $42c7: $ff
	sub b                                            ; $42c8: $90
	ld e, d                                          ; $42c9: $5a
	nop                                              ; $42ca: $00
	inc c                                            ; $42cb: $0c
	sub c                                            ; $42cc: $91
	ld e, d                                          ; $42cd: $5a
	nop                                              ; $42ce: $00
	ld a, [de]                                       ; $42cf: $1a
	sub c                                            ; $42d0: $91
	ld e, d                                          ; $42d1: $5a
	nop                                              ; $42d2: $00
	ld sp, $5a91                                     ; $42d3: $31 $91 $5a
	nop                                              ; $42d6: $00
	ld b, l                                          ; $42d7: $45
	sub c                                            ; $42d8: $91
	ld e, d                                          ; $42d9: $5a
	nop                                              ; $42da: $00
	ld e, d                                          ; $42db: $5a
	sub c                                            ; $42dc: $91
	ld e, d                                          ; $42dd: $5a
	nop                                              ; $42de: $00
	ld l, a                                          ; $42df: $6f
	sub c                                            ; $42e0: $91
	ld e, d                                          ; $42e1: $5a
	nop                                              ; $42e2: $00
	inc [hl]                                         ; $42e3: $34
	sbc b                                            ; $42e4: $98
	ld e, d                                          ; $42e5: $5a
	ld [$983e], sp                                   ; $42e6: $08 $3e $98
	ld e, d                                          ; $42e9: $5a
	add hl, bc                                       ; $42ea: $09
	ld b, a                                          ; $42eb: $47
	sbc b                                            ; $42ec: $98
	ld e, d                                          ; $42ed: $5a
	ld a, [bc]                                       ; $42ee: $0a
	ld d, l                                          ; $42ef: $55
	sbc b                                            ; $42f0: $98
	ld e, d                                          ; $42f1: $5a
	dec bc                                           ; $42f2: $0b
	ld h, [hl]                                       ; $42f3: $66
	sbc b                                            ; $42f4: $98
	ld e, d                                          ; $42f5: $5a
	inc c                                            ; $42f6: $0c
	ld l, [hl]                                       ; $42f7: $6e
	sbc b                                            ; $42f8: $98
	ld e, d                                          ; $42f9: $5a
	nop                                              ; $42fa: $00
	add d                                            ; $42fb: $82
	sub c                                            ; $42fc: $91
	ld e, d                                          ; $42fd: $5a
	nop                                              ; $42fe: $00
	sub b                                            ; $42ff: $90
	sub c                                            ; $4300: $91
	ld e, d                                          ; $4301: $5a
	nop                                              ; $4302: $00
	sbc e                                            ; $4303: $9b
	sub c                                            ; $4304: $91
	ld e, d                                          ; $4305: $5a
	nop                                              ; $4306: $00
	and [hl]                                         ; $4307: $a6
	sub c                                            ; $4308: $91
	ld e, d                                          ; $4309: $5a
	nop                                              ; $430a: $00
	or c                                             ; $430b: $b1
	sub c                                            ; $430c: $91
	ld e, d                                          ; $430d: $5a
	nop                                              ; $430e: $00
	cp d                                             ; $430f: $ba
	sub c                                            ; $4310: $91
	ld e, d                                          ; $4311: $5a
	rlca                                             ; $4312: $07
	ret                                              ; $4313: $c9


	sub c                                            ; $4314: $91
	ld e, d                                          ; $4315: $5a
	nop                                              ; $4316: $00
	reti                                             ; $4317: $d9


	sub c                                            ; $4318: $91
	ld e, d                                          ; $4319: $5a
	add hl, bc                                       ; $431a: $09
	db $eb                                           ; $431b: $eb
	sub c                                            ; $431c: $91
	ld e, d                                          ; $431d: $5a
	nop                                              ; $431e: $00
	or $91                                           ; $431f: $f6 $91
	ld e, d                                          ; $4321: $5a
	dec bc                                           ; $4322: $0b
	rlca                                             ; $4323: $07
	sub d                                            ; $4324: $92
	ld e, d                                          ; $4325: $5a
	inc c                                            ; $4326: $0c
	ld c, $92                                        ; $4327: $0e $92
	ld e, d                                          ; $4329: $5a
	nop                                              ; $432a: $00
	ld e, $92                                        ; $432b: $1e $92
	ld e, d                                          ; $432d: $5a
	ld c, $2a                                        ; $432e: $0e $2a
	sub d                                            ; $4330: $92
	ld e, d                                          ; $4331: $5a
	rrca                                             ; $4332: $0f
	ld b, d                                          ; $4333: $42
	sub d                                            ; $4334: $92
	ld e, d                                          ; $4335: $5a
	add b                                            ; $4336: $80
	ld e, c                                          ; $4337: $59
	sub d                                            ; $4338: $92
	ld e, d                                          ; $4339: $5a
	add b                                            ; $433a: $80
	ld h, b                                          ; $433b: $60
	sub d                                            ; $433c: $92
	ld e, d                                          ; $433d: $5a
	add b                                            ; $433e: $80
	ld [hl], d                                       ; $433f: $72
	sub d                                            ; $4340: $92
	ld e, d                                          ; $4341: $5a
	add b                                            ; $4342: $80
	add e                                            ; $4343: $83
	sub d                                            ; $4344: $92
	ld e, d                                          ; $4345: $5a
	add b                                            ; $4346: $80
	sub e                                            ; $4347: $93
	sub d                                            ; $4348: $92
	ld e, d                                          ; $4349: $5a
	add b                                            ; $434a: $80
	and d                                            ; $434b: $a2
	sub d                                            ; $434c: $92
	ld e, d                                          ; $434d: $5a
	add d                                            ; $434e: $82
	or b                                             ; $434f: $b0
	sub d                                            ; $4350: $92
	ld e, d                                          ; $4351: $5a
	nop                                              ; $4352: $00
	cp b                                             ; $4353: $b8
	sub d                                            ; $4354: $92
	ld e, d                                          ; $4355: $5a
	inc b                                            ; $4356: $04
	jp Jump_00a_5a92                                 ; $4357: $c3 $92 $5a


	dec b                                            ; $435a: $05
	pop de                                           ; $435b: $d1
	sub d                                            ; $435c: $92
	ld e, d                                          ; $435d: $5a
	ld b, $dd                                        ; $435e: $06 $dd
	sub d                                            ; $4360: $92
	ld e, d                                          ; $4361: $5a
	rlca                                             ; $4362: $07
	db $eb                                           ; $4363: $eb
	sub d                                            ; $4364: $92
	ld e, d                                          ; $4365: $5a
	ld [$92fa], sp                                   ; $4366: $08 $fa $92
	ld e, d                                          ; $4369: $5a
	add hl, bc                                       ; $436a: $09
	ld b, $93                                        ; $436b: $06 $93
	ld e, d                                          ; $436d: $5a
	ld a, [bc]                                       ; $436e: $0a
	ld [de], a                                       ; $436f: $12
	sub e                                            ; $4370: $93
	ld e, d                                          ; $4371: $5a
	nop                                              ; $4372: $00
	ld a, [de]                                       ; $4373: $1a
	sub e                                            ; $4374: $93
	ld e, d                                          ; $4375: $5a
	inc c                                            ; $4376: $0c
	inc l                                            ; $4377: $2c
	sub e                                            ; $4378: $93
	ld e, d                                          ; $4379: $5a
	dec c                                            ; $437a: $0d
	dec a                                            ; $437b: $3d
	sub e                                            ; $437c: $93
	ld e, d                                          ; $437d: $5a
	ld c, $45                                        ; $437e: $0e $45
	sub e                                            ; $4380: $93
	ld e, d                                          ; $4381: $5a
	nop                                              ; $4382: $00
	ld d, [hl]                                       ; $4383: $56
	sub e                                            ; $4384: $93
	ld e, d                                          ; $4385: $5a
	add b                                            ; $4386: $80
	ld l, d                                          ; $4387: $6a
	sub e                                            ; $4388: $93
	ld e, d                                          ; $4389: $5a
	ld de, $9378                                     ; $438a: $11 $78 $93
	ld e, d                                          ; $438d: $5a
	ld [de], a                                       ; $438e: $12
	add c                                            ; $438f: $81
	sub e                                            ; $4390: $93
	ld e, d                                          ; $4391: $5a
	inc de                                           ; $4392: $13
	adc b                                            ; $4393: $88
	sub e                                            ; $4394: $93
	ld e, d                                          ; $4395: $5a

jr_00a_4396:
	nop                                              ; $4396: $00
	sbc b                                            ; $4397: $98
	sub e                                            ; $4398: $93
	ld bc, $a880                                     ; $4399: $01 $80 $a8
	sub e                                            ; $439c: $93
	ld e, d                                          ; $439d: $5a
	ld d, $b5                                        ; $439e: $16 $b5
	sub e                                            ; $43a0: $93
	ld e, d                                          ; $43a1: $5a
	nop                                              ; $43a2: $00
	jp z, $5a93                                      ; $43a3: $ca $93 $5a

	sbc b                                            ; $43a6: $98
	db $db                                           ; $43a7: $db
	sub e                                            ; $43a8: $93
	ld e, d                                          ; $43a9: $5a
	add hl, de                                       ; $43aa: $19
	db $ec                                           ; $43ab: $ec
	sub e                                            ; $43ac: $93
	ld e, d                                          ; $43ad: $5a
	sbc d                                            ; $43ae: $9a
	nop                                              ; $43af: $00
	sub h                                            ; $43b0: $94
	ld e, d                                          ; $43b1: $5a
	dec de                                           ; $43b2: $1b
	dec c                                            ; $43b3: $0d
	sub h                                            ; $43b4: $94
	ld e, d                                          ; $43b5: $5a
	inc e                                            ; $43b6: $1c
	rra                                              ; $43b7: $1f
	sub h                                            ; $43b8: $94
	ld e, d                                          ; $43b9: $5a
	dec e                                            ; $43ba: $1d
	add hl, hl                                       ; $43bb: $29
	sub h                                            ; $43bc: $94
	ld e, d                                          ; $43bd: $5a
	ld e, $3b                                        ; $43be: $1e $3b
	sub h                                            ; $43c0: $94
	ld e, d                                          ; $43c1: $5a
	nop                                              ; $43c2: $00
	ld b, e                                          ; $43c3: $43
	sub h                                            ; $43c4: $94
	ld e, d                                          ; $43c5: $5a
	nop                                              ; $43c6: $00
	ld c, [hl]                                       ; $43c7: $4e
	sub h                                            ; $43c8: $94
	ld e, d                                          ; $43c9: $5a
	inc bc                                           ; $43ca: $03
	ld h, b                                          ; $43cb: $60
	sub h                                            ; $43cc: $94
	ld e, d                                          ; $43cd: $5a
	nop                                              ; $43ce: $00
	ld l, [hl]                                       ; $43cf: $6e
	sub h                                            ; $43d0: $94
	ld e, d                                          ; $43d1: $5a
	dec b                                            ; $43d2: $05
	ld a, a                                          ; $43d3: $7f
	sub h                                            ; $43d4: $94
	ld e, d                                          ; $43d5: $5a
	nop                                              ; $43d6: $00
	sub h                                            ; $43d7: $94
	sub h                                            ; $43d8: $94
	ld e, d                                          ; $43d9: $5a
	rlca                                             ; $43da: $07
	and [hl]                                         ; $43db: $a6
	sub h                                            ; $43dc: $94
	ld e, d                                          ; $43dd: $5a
	ld [$94b3], sp                                   ; $43de: $08 $b3 $94
	ld e, d                                          ; $43e1: $5a
	adc c                                            ; $43e2: $89
	push bc                                          ; $43e3: $c5
	sub h                                            ; $43e4: $94
	ld e, d                                          ; $43e5: $5a
	adc d                                            ; $43e6: $8a
	db $d3                                           ; $43e7: $d3
	sub h                                            ; $43e8: $94
	ld e, d                                          ; $43e9: $5a
	dec bc                                           ; $43ea: $0b
	call c, Call_00a_5a94                            ; $43eb: $dc $94 $5a
	inc c                                            ; $43ee: $0c
	ldh a, [hDisp1_OBP1]                                     ; $43ef: $f0 $94
	ld e, d                                          ; $43f1: $5a
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	sub l                                            ; $43f4: $95
	ld e, d                                          ; $43f5: $5a
	ld c, $0e                                        ; $43f6: $0e $0e
	sub l                                            ; $43f8: $95
	ld e, d                                          ; $43f9: $5a
	nop                                              ; $43fa: $00
	dec de                                           ; $43fb: $1b
	sub l                                            ; $43fc: $95
	ld e, d                                          ; $43fd: $5a
	nop                                              ; $43fe: $00
	jr nc, jr_00a_4396                               ; $43ff: $30 $95

	ld e, d                                          ; $4401: $5a
	nop                                              ; $4402: $00
	ccf                                              ; $4403: $3f
	sub l                                            ; $4404: $95
	ld e, d                                          ; $4405: $5a
	nop                                              ; $4406: $00
	ld c, l                                          ; $4407: $4d
	sub l                                            ; $4408: $95
	ld e, d                                          ; $4409: $5a
	nop                                              ; $440a: $00
	ld e, [hl]                                       ; $440b: $5e
	sub l                                            ; $440c: $95
	ld e, d                                          ; $440d: $5a
	inc d                                            ; $440e: $14
	ld [hl], b                                       ; $440f: $70
	sub l                                            ; $4410: $95
	ld e, d                                          ; $4411: $5a
	nop                                              ; $4412: $00
	ld a, [hl]                                       ; $4413: $7e
	sub l                                            ; $4414: $95
	ld e, d                                          ; $4415: $5a
	ld d, $8e                                        ; $4416: $16 $8e
	sub l                                            ; $4418: $95
	ld e, d                                          ; $4419: $5a
	rla                                              ; $441a: $17
	and b                                            ; $441b: $a0
	sub l                                            ; $441c: $95
	ld e, d                                          ; $441d: $5a
	nop                                              ; $441e: $00
	or e                                             ; $441f: $b3
	sub l                                            ; $4420: $95
	ld e, d                                          ; $4421: $5a
	nop                                              ; $4422: $00
	ret z                                            ; $4423: $c8

	sub l                                            ; $4424: $95
	ld e, d                                          ; $4425: $5a
	ld a, [de]                                       ; $4426: $1a
	call nc, $5a95                                   ; $4427: $d4 $95 $5a
	dec de                                           ; $442a: $1b
	xor $95                                          ; $442b: $ee $95
	ld e, d                                          ; $442d: $5a
	add b                                            ; $442e: $80
	rlca                                             ; $442f: $07
	sub [hl]                                         ; $4430: $96
	ld e, d                                          ; $4431: $5a
	add b                                            ; $4432: $80
	ld e, h                                          ; $4433: $5c
	sub [hl]                                         ; $4434: $96
	ld e, d                                          ; $4435: $5a
	nop                                              ; $4436: $00
	add hl, de                                       ; $4437: $19
	sub [hl]                                         ; $4438: $96
	ld e, d                                          ; $4439: $5a
	add b                                            ; $443a: $80
	dec hl                                           ; $443b: $2b
	sub [hl]                                         ; $443c: $96
	ld e, d                                          ; $443d: $5a
	add b                                            ; $443e: $80
	dec sp                                           ; $443f: $3b
	sub [hl]                                         ; $4440: $96
	ld e, d                                          ; $4441: $5a
	add b                                            ; $4442: $80
	ld c, l                                          ; $4443: $4d
	sub [hl]                                         ; $4444: $96
	ld e, d                                          ; $4445: $5a
	add b                                            ; $4446: $80
	ld e, h                                          ; $4447: $5c
	sub [hl]                                         ; $4448: $96
	ld e, d                                          ; $4449: $5a
	nop                                              ; $444a: $00

Call_00a_444b:
Jump_00a_444b:
	push hl                                          ; $444b: $e5
	push de                                          ; $444c: $d5
	call Call_00a_445b                               ; $444d: $cd $5b $44
	pop de                                           ; $4450: $d1
	ld hl, $8000                                     ; $4451: $21 $00 $80
	add hl, de                                       ; $4454: $19
	ld d, h                                          ; $4455: $54
	ld e, l                                          ; $4456: $5d
	pop hl                                           ; $4457: $e1
	jp Jump_00a_447a                                 ; $4458: $c3 $7a $44


Call_00a_445b:
	push de                                          ; $445b: $d5
	push hl                                          ; $445c: $e5
	ld a, [hl+]                                      ; $445d: $2a
	ld h, [hl]                                       ; $445e: $66
	ld l, a                                          ; $445f: $6f
	call $3c78                                       ; $4460: $cd $78 $3c
	pop hl                                           ; $4463: $e1
	ld a, $04                                        ; $4464: $3e $04
	rst AddAOntoHL                                          ; $4466: $ef
	ld e, [hl]                                       ; $4467: $5e
	inc hl                                           ; $4468: $23
	ld d, [hl]                                       ; $4469: $56
	inc hl                                           ; $446a: $23
	ld b, [hl]                                       ; $446b: $46
	inc hl                                           ; $446c: $23
	ld a, [hl+]                                      ; $446d: $2a
	ld c, [hl]                                       ; $446e: $4e
	ld h, d                                          ; $446f: $62
	ld l, e                                          ; $4470: $6b
	pop de                                           ; $4471: $d1
	add hl, de                                       ; $4472: $19
	ld de, $d940                                     ; $4473: $11 $40 $d9
	call Call_00a_449f                               ; $4476: $cd $9f $44
	ret                                              ; $4479: $c9


Jump_00a_447a:
	ld a, [wInitialA]                                    ; $447a: $fa $00 $c1
	cp $11                                           ; $447d: $fe $11
	ret nz                                           ; $447f: $c0

	inc hl                                           ; $4480: $23
	inc hl                                           ; $4481: $23
	push de                                          ; $4482: $d5
	push hl                                          ; $4483: $e5
	ld a, [hl+]                                      ; $4484: $2a
	ld h, [hl]                                       ; $4485: $66
	ld l, a                                          ; $4486: $6f
	call $3c78                                       ; $4487: $cd $78 $3c
	pop hl                                           ; $448a: $e1
	inc hl                                           ; $448b: $23
	inc hl                                           ; $448c: $23
	ld e, [hl]                                       ; $448d: $5e
	inc hl                                           ; $448e: $23
	ld d, [hl]                                       ; $448f: $56
	inc hl                                           ; $4490: $23
	ld b, [hl]                                       ; $4491: $46
	inc hl                                           ; $4492: $23
	ld a, [hl+]                                      ; $4493: $2a
	ld h, d                                          ; $4494: $62
	ld l, e                                          ; $4495: $6b
	pop de                                           ; $4496: $d1
	add hl, de                                       ; $4497: $19
	ld de, $d940                                     ; $4498: $11 $40 $d9
	call Call_00a_44b0                               ; $449b: $cd $b0 $44
	ret                                              ; $449e: $c9


Call_00a_449f:
jr_00a_449f:
	push af                                          ; $449f: $f5
	push bc                                          ; $44a0: $c5
	push hl                                          ; $44a1: $e5
	call Call_00a_44c5                               ; $44a2: $cd $c5 $44
	pop hl                                           ; $44a5: $e1
	ld bc, $0020                                     ; $44a6: $01 $20 $00
	add hl, bc                                       ; $44a9: $09
	pop bc                                           ; $44aa: $c1
	pop af                                           ; $44ab: $f1
	dec a                                            ; $44ac: $3d
	jr nz, jr_00a_449f                               ; $44ad: $20 $f0

	ret                                              ; $44af: $c9


Call_00a_44b0:
	ld c, $00                                        ; $44b0: $0e $00

jr_00a_44b2:
	push af                                          ; $44b2: $f5
	push bc                                          ; $44b3: $c5
	push hl                                          ; $44b4: $e5
	call Call_00a_44da                               ; $44b5: $cd $da $44
	ld a, c                                          ; $44b8: $79
	pop hl                                           ; $44b9: $e1
	ld bc, $0020                                     ; $44ba: $01 $20 $00
	add hl, bc                                       ; $44bd: $09
	pop bc                                           ; $44be: $c1
	ld c, a                                          ; $44bf: $4f
	pop af                                           ; $44c0: $f1
	dec a                                            ; $44c1: $3d
	jr nz, jr_00a_44b2                               ; $44c2: $20 $ee

	ret                                              ; $44c4: $c9


Call_00a_44c5:
	push bc                                          ; $44c5: $c5
	push de                                          ; $44c6: $d5
	ld a, b                                          ; $44c7: $78
	call EnqueueDataCopyType4FullHeader                                       ; $44c8: $cd $83 $16
	pop de                                           ; $44cb: $d1
	pop bc                                           ; $44cc: $c1

jr_00a_44cd:
	ld a, [de]                                       ; $44cd: $1a
	add c                                            ; $44ce: $81
	ld [hl+], a                                      ; $44cf: $22
	inc de                                           ; $44d0: $13
	dec b                                            ; $44d1: $05
	jr nz, jr_00a_44cd                               ; $44d2: $20 $f9

	push de                                          ; $44d4: $d5
	call SafelyExecuteDataCopies                                       ; $44d5: $cd $8b $14
	pop de                                           ; $44d8: $d1
	ret                                              ; $44d9: $c9


Call_00a_44da:
	push bc                                          ; $44da: $c5
	push de                                          ; $44db: $d5
	ld a, b                                          ; $44dc: $78
	call EnqueueDataCopyType4FullHeader                                       ; $44dd: $cd $83 $16
	pop de                                           ; $44e0: $d1
	pop bc                                           ; $44e1: $c1
	inc c                                            ; $44e2: $0c
	dec c                                            ; $44e3: $0d
	jr nz, jr_00a_44f1                               ; $44e4: $20 $0b

jr_00a_44e6:
	ld a, [de]                                       ; $44e6: $1a
	and $f0                                          ; $44e7: $e6 $f0
	rrca                                             ; $44e9: $0f
	rrca                                             ; $44ea: $0f
	rrca                                             ; $44eb: $0f
	rrca                                             ; $44ec: $0f
	ld [hl+], a                                      ; $44ed: $22
	dec b                                            ; $44ee: $05
	jr z, jr_00a_44fd                                ; $44ef: $28 $0c

jr_00a_44f1:
	ld a, [de]                                       ; $44f1: $1a
	and $0f                                          ; $44f2: $e6 $0f
	ld [hl+], a                                      ; $44f4: $22
	inc de                                           ; $44f5: $13
	dec b                                            ; $44f6: $05
	jr nz, jr_00a_44e6                               ; $44f7: $20 $ed

	ld c, $00                                        ; $44f9: $0e $00
	jr jr_00a_44ff                                   ; $44fb: $18 $02

jr_00a_44fd:
	ld c, $01                                        ; $44fd: $0e $01

jr_00a_44ff:
	push bc                                          ; $44ff: $c5
	push de                                          ; $4500: $d5
	call SafelyExecuteDataCopies                                       ; $4501: $cd $8b $14
	pop de                                           ; $4504: $d1
	pop bc                                           ; $4505: $c1
	ret                                              ; $4506: $c9


	ld de, $0000                                     ; $4507: $11 $00 $00
	jr jr_00a_450f                                   ; $450a: $18 $03

	ld de, $0260                                     ; $450c: $11 $60 $02

jr_00a_450f:
	ld a, [$d840]                                    ; $450f: $fa $40 $d8
	rst JumpTable                                          ; $4512: $c7
	daa                                              ; $4513: $27
	ld b, l                                          ; $4514: $45
	dec l                                            ; $4515: $2d
	ld b, l                                          ; $4516: $45
	inc sp                                           ; $4517: $33
	ld b, l                                          ; $4518: $45
	add hl, sp                                       ; $4519: $39
	ld b, l                                          ; $451a: $45
	ccf                                              ; $451b: $3f
	ld b, l                                          ; $451c: $45
	ld b, l                                          ; $451d: $45
	ld b, l                                          ; $451e: $45
	ld b, l                                          ; $451f: $45
	ld b, l                                          ; $4520: $45
	ld c, e                                          ; $4521: $4b
	ld b, l                                          ; $4522: $45
	ld b, l                                          ; $4523: $45
	ld b, l                                          ; $4524: $45
	add hl, sp                                       ; $4525: $39
	ld b, l                                          ; $4526: $45
	ld hl, $4613                                     ; $4527: $21 $13 $46
	jp Jump_00a_444b                                 ; $452a: $c3 $4b $44


	ld hl, $461c                                     ; $452d: $21 $1c $46
	jp Jump_00a_444b                                 ; $4530: $c3 $4b $44


	ld hl, $4625                                     ; $4533: $21 $25 $46
	jp Jump_00a_444b                                 ; $4536: $c3 $4b $44


	ld hl, $462e                                     ; $4539: $21 $2e $46
	jp Jump_00a_444b                                 ; $453c: $c3 $4b $44


	ld hl, $4637                                     ; $453f: $21 $37 $46
	jp Jump_00a_444b                                 ; $4542: $c3 $4b $44


	ld hl, $4640                                     ; $4545: $21 $40 $46
	jp Jump_00a_444b                                 ; $4548: $c3 $4b $44


	push de                                          ; $454b: $d5
	ld hl, $470f                                     ; $454c: $21 $0f $47
	call Call_00a_444b                               ; $454f: $cd $4b $44
	pop de                                           ; $4552: $d1
	ld a, [$d8af]                                    ; $4553: $fa $af $d8
	or a                                             ; $4556: $b7
	ld hl, $4718                                     ; $4557: $21 $18 $47
	jp z, Jump_00a_444b                              ; $455a: $ca $4b $44

	ld hl, $474e                                     ; $455d: $21 $4e $47
	jp Jump_00a_444b                                 ; $4560: $c3 $4b $44


	call $3c2b                                       ; $4563: $cd $2b $3c
	ld de, $0000                                     ; $4566: $11 $00 $00
	jr jr_00a_4571                                   ; $4569: $18 $06

	call $3c36                                       ; $456b: $cd $36 $3c
	ld de, $0260                                     ; $456e: $11 $60 $02

jr_00a_4571:
	ld a, [$d840]                                    ; $4571: $fa $40 $d8
	rst JumpTable                                          ; $4574: $c7
	adc c                                            ; $4575: $89
	ld b, l                                          ; $4576: $45
	adc a                                            ; $4577: $8f
	ld b, l                                          ; $4578: $45
	sub l                                            ; $4579: $95
	ld b, l                                          ; $457a: $45
	and e                                            ; $457b: $a3
	ld b, l                                          ; $457c: $45
	xor c                                            ; $457d: $a9
	ld b, l                                          ; $457e: $45
	xor a                                            ; $457f: $af
	ld b, l                                          ; $4580: $45
	xor a                                            ; $4581: $af
	ld b, l                                          ; $4582: $45
	or l                                             ; $4583: $b5
	ld b, l                                          ; $4584: $45
	xor a                                            ; $4585: $af
	ld b, l                                          ; $4586: $45
	and e                                            ; $4587: $a3
	ld b, l                                          ; $4588: $45
	ld hl, $4649                                     ; $4589: $21 $49 $46
	jp Jump_00a_444b                                 ; $458c: $c3 $4b $44


	ld hl, $4652                                     ; $458f: $21 $52 $46
	jp Jump_00a_444b                                 ; $4592: $c3 $4b $44


	push de                                          ; $4595: $d5
	ld hl, $465b                                     ; $4596: $21 $5b $46
	call Call_00a_444b                               ; $4599: $cd $4b $44
	pop de                                           ; $459c: $d1
	ld hl, $47f0                                     ; $459d: $21 $f0 $47
	jp Jump_00a_444b                                 ; $45a0: $c3 $4b $44


	ld hl, $4664                                     ; $45a3: $21 $64 $46
	jp Jump_00a_444b                                 ; $45a6: $c3 $4b $44


	ld hl, $466d                                     ; $45a9: $21 $6d $46
	jp Jump_00a_444b                                 ; $45ac: $c3 $4b $44


	ld hl, $4676                                     ; $45af: $21 $76 $46
	jp Jump_00a_444b                                 ; $45b2: $c3 $4b $44


	ld hl, $467f                                     ; $45b5: $21 $7f $46
	jp Jump_00a_444b                                 ; $45b8: $c3 $4b $44


	call $3c2b                                       ; $45bb: $cd $2b $3c
	ld de, $0000                                     ; $45be: $11 $00 $00
	jr jr_00a_45c9                                   ; $45c1: $18 $06

	call $3c36                                       ; $45c3: $cd $36 $3c
	ld de, $0260                                     ; $45c6: $11 $60 $02

jr_00a_45c9:
	ld a, [$d840]                                    ; $45c9: $fa $40 $d8
	rst JumpTable                                          ; $45cc: $c7
	pop hl                                           ; $45cd: $e1
	ld b, l                                          ; $45ce: $45
	rst SubAFromBC                                          ; $45cf: $e7
	ld b, l                                          ; $45d0: $45
	db $ed                                           ; $45d1: $ed
	ld b, l                                          ; $45d2: $45
	ei                                               ; $45d3: $fb
	ld b, l                                          ; $45d4: $45
	ld bc, $0746                                     ; $45d5: $01 $46 $07
	ld b, [hl]                                       ; $45d8: $46
	rlca                                             ; $45d9: $07
	ld b, [hl]                                       ; $45da: $46
	dec c                                            ; $45db: $0d
	ld b, [hl]                                       ; $45dc: $46
	rlca                                             ; $45dd: $07
	ld b, [hl]                                       ; $45de: $46
	ei                                               ; $45df: $fb
	ld b, l                                          ; $45e0: $45
	ld hl, $4688                                     ; $45e1: $21 $88 $46
	jp Jump_00a_444b                                 ; $45e4: $c3 $4b $44


	ld hl, $4691                                     ; $45e7: $21 $91 $46
	jp Jump_00a_444b                                 ; $45ea: $c3 $4b $44


	push de                                          ; $45ed: $d5
	ld hl, $469a                                     ; $45ee: $21 $9a $46
	call Call_00a_444b                               ; $45f1: $cd $4b $44
	pop de                                           ; $45f4: $d1
	ld hl, $47f0                                     ; $45f5: $21 $f0 $47
	jp Jump_00a_444b                                 ; $45f8: $c3 $4b $44


	ld hl, $46a3                                     ; $45fb: $21 $a3 $46
	jp Jump_00a_444b                                 ; $45fe: $c3 $4b $44


	ld hl, $46ac                                     ; $4601: $21 $ac $46
	jp Jump_00a_444b                                 ; $4604: $c3 $4b $44


	ld hl, $46b5                                     ; $4607: $21 $b5 $46
	jp Jump_00a_444b                                 ; $460a: $c3 $4b $44


	ld hl, $46be                                     ; $460d: $21 $be $46
	jp Jump_00a_444b                                 ; $4610: $c3 $4b $44


	and a                                            ; $4613: $a7
	ld c, b                                          ; $4614: $48
	or e                                             ; $4615: $b3
	ld c, b                                          ; $4616: $48
	nop                                              ; $4617: $00
	sbc b                                            ; $4618: $98
	inc d                                            ; $4619: $14
	inc c                                            ; $461a: $0c
	add b                                            ; $461b: $80
	jr c, jr_00a_4667                                ; $461c: $38 $49

	ld b, h                                          ; $461e: $44
	ld c, c                                          ; $461f: $49
	nop                                              ; $4620: $00
	sbc b                                            ; $4621: $98
	inc d                                            ; $4622: $14
	inc c                                            ; $4623: $0c
	add b                                            ; $4624: $80
	ld a, l                                          ; $4625: $7d
	ld c, c                                          ; $4626: $49
	adc c                                            ; $4627: $89
	ld c, c                                          ; $4628: $49
	nop                                              ; $4629: $00
	sbc b                                            ; $462a: $98
	inc d                                            ; $462b: $14

jr_00a_462c:
	inc c                                            ; $462c: $0c
	add b                                            ; $462d: $80
	cp d                                             ; $462e: $ba
	ld c, b                                          ; $462f: $48
	add $48                                          ; $4630: $c6 $48
	nop                                              ; $4632: $00
	sbc b                                            ; $4633: $98
	inc d                                            ; $4634: $14
	inc c                                            ; $4635: $0c
	add b                                            ; $4636: $80
	push de                                          ; $4637: $d5
	ld c, c                                          ; $4638: $49
	pop hl                                           ; $4639: $e1
	ld c, c                                          ; $463a: $49
	nop                                              ; $463b: $00
	sbc b                                            ; $463c: $98
	inc d                                            ; $463d: $14
	inc c                                            ; $463e: $0c
	add b                                            ; $463f: $80
	ld a, [de]                                       ; $4640: $1a
	ld c, d                                          ; $4641: $4a
	jr nc, jr_00a_468e                               ; $4642: $30 $4a

	nop                                              ; $4644: $00
	sbc b                                            ; $4645: $98
	inc d                                            ; $4646: $14
	inc c                                            ; $4647: $0c
	add b                                            ; $4648: $80
	sub h                                            ; $4649: $94
	ld c, b                                          ; $464a: $48
	and b                                            ; $464b: $a0
	ld c, b                                          ; $464c: $48
	nop                                              ; $464d: $00
	sbc b                                            ; $464e: $98
	ld [$d30c], sp                                   ; $464f: $08 $0c $d3
	dec h                                            ; $4652: $25
	ld c, c                                          ; $4653: $49
	ld sp, $0049                                     ; $4654: $31 $49 $00
	sbc b                                            ; $4657: $98
	ld [$da0c], sp                                   ; $4658: $08 $0c $da
	ld l, d                                          ; $465b: $6a
	ld c, c                                          ; $465c: $49
	halt                                             ; $465d: $76
	ld c, c                                          ; $465e: $49
	nop                                              ; $465f: $00
	sbc b                                            ; $4660: $98
	add hl, bc                                       ; $4661: $09
	inc c                                            ; $4662: $0c
	ret nc                                           ; $4663: $d0

	sub h                                            ; $4664: $94
	ld c, b                                          ; $4665: $48
	and b                                            ; $4666: $a0

jr_00a_4667:
	ld c, b                                          ; $4667: $48
	nop                                              ; $4668: $00
	sbc b                                            ; $4669: $98
	ld [$d30c], sp                                   ; $466a: $08 $0c $d3
	jp nz, $ce49                                     ; $466d: $c2 $49 $ce

	ld c, c                                          ; $4670: $49
	ld h, d                                          ; $4671: $62
	sbc b                                            ; $4672: $98
	inc b                                            ; $4673: $04
	ld [$07e1], sp                                   ; $4674: $08 $e1 $07
	ld c, d                                          ; $4677: $4a
	inc de                                           ; $4678: $13
	ld c, d                                          ; $4679: $4a
	nop                                              ; $467a: $00
	sbc b                                            ; $467b: $98
	ld [$d50c], sp                                   ; $467c: $08 $0c $d5
	daa                                              ; $467f: $27
	ld c, e                                          ; $4680: $4b
	inc sp                                           ; $4681: $33
	ld c, e                                          ; $4682: $4b
	nop                                              ; $4683: $00
	sbc b                                            ; $4684: $98
	rlca                                             ; $4685: $07
	inc c                                            ; $4686: $0c
	call z, Call_00a_4888                            ; $4687: $cc $88 $48
	and b                                            ; $468a: $a0
	ld c, b                                          ; $468b: $48
	nop                                              ; $468c: $00
	sbc b                                            ; $468d: $98

jr_00a_468e:
	ld [$180c], sp                                   ; $468e: $08 $0c $18
	add hl, de                                       ; $4691: $19
	ld c, c                                          ; $4692: $49
	ld sp, $0049                                     ; $4693: $31 $49 $00
	sbc b                                            ; $4696: $98
	ld [$300c], sp                                   ; $4697: $08 $0c $30
	ld e, [hl]                                       ; $469a: $5e
	ld c, c                                          ; $469b: $49
	halt                                             ; $469c: $76
	ld c, c                                          ; $469d: $49
	nop                                              ; $469e: $00
	sbc b                                            ; $469f: $98
	add hl, bc                                       ; $46a0: $09
	inc c                                            ; $46a1: $0c
	jr nc, jr_00a_462c                               ; $46a2: $30 $88

	ld c, b                                          ; $46a4: $48
	and b                                            ; $46a5: $a0
	ld c, b                                          ; $46a6: $48
	nop                                              ; $46a7: $00
	sbc b                                            ; $46a8: $98
	ld [$180c], sp                                   ; $46a9: $08 $0c $18
	or [hl]                                          ; $46ac: $b6
	ld c, c                                          ; $46ad: $49
	adc $49                                          ; $46ae: $ce $49
	ld h, d                                          ; $46b0: $62

jr_00a_46b1:
	sbc b                                            ; $46b1: $98
	inc b                                            ; $46b2: $04
	ld [$fb30], sp                                   ; $46b3: $08 $30 $fb
	ld c, c                                          ; $46b6: $49
	inc de                                           ; $46b7: $13
	ld c, d                                          ; $46b8: $4a
	nop                                              ; $46b9: $00
	sbc b                                            ; $46ba: $98
	ld [$300c], sp                                   ; $46bb: $08 $0c $30
	dec de                                           ; $46be: $1b
	ld c, e                                          ; $46bf: $4b
	inc sp                                           ; $46c0: $33
	ld c, e                                          ; $46c1: $4b
	nop                                              ; $46c2: $00
	sbc b                                            ; $46c3: $98
	rlca                                             ; $46c4: $07
	inc c                                            ; $46c5: $0c
	jr nc, @-$31                                     ; $46c6: $30 $cd

	ld c, b                                          ; $46c8: $48

jr_00a_46c9:
	reti                                             ; $46c9: $d9


	ld c, b                                          ; $46ca: $48
	ld h, l                                          ; $46cb: $65
	sbc b                                            ; $46cc: $98

jr_00a_46cd:
	ld [bc], a                                       ; $46cd: $02
	inc b                                            ; $46ce: $04
	jr jr_00a_46b1                                   ; $46cf: $18 $e0

	ld c, b                                          ; $46d1: $48
	db $ec                                           ; $46d2: $ec
	ld c, b                                          ; $46d3: $48
	db $e4                                           ; $46d4: $e4
	sbc b                                            ; $46d5: $98
	inc bc                                           ; $46d6: $03
	inc b                                            ; $46d7: $04
	jr jr_00a_46cd                                   ; $46d8: $18 $f3

	ld c, b                                          ; $46da: $48
	rst $38                                          ; $46db: $ff
	ld c, b                                          ; $46dc: $48
	add h                                            ; $46dd: $84
	sbc b                                            ; $46de: $98
	ld [bc], a                                       ; $46df: $02
	ld [bc], a                                       ; $46e0: $02
	jr jr_00a_46e9                                   ; $46e1: $18 $06

	ld c, c                                          ; $46e3: $49
	ld [de], a                                       ; $46e4: $12
	ld c, c                                          ; $46e5: $49
	add a                                            ; $46e6: $87
	sbc b                                            ; $46e7: $98
	dec c                                            ; $46e8: $0d

jr_00a_46e9:
	ld [bc], a                                       ; $46e9: $02
	inc e                                            ; $46ea: $1c
	add sp, $49                                      ; $46eb: $e8 $49
	db $f4                                           ; $46ed: $f4
	ld c, c                                          ; $46ee: $49
	call nz, $0498                                   ; $46ef: $c4 $98 $04
	inc bc                                           ; $46f2: $03
	db $e3                                           ; $46f3: $e3
	ld b, l                                          ; $46f4: $45
	ld c, d                                          ; $46f5: $4a
	ld c, h                                          ; $46f6: $4c
	ld c, d                                          ; $46f7: $4a
	push bc                                          ; $46f8: $c5
	sbc b                                            ; $46f9: $98

jr_00a_46fa:
	inc bc                                           ; $46fa: $03
	inc b                                            ; $46fb: $04
	db $f4                                           ; $46fc: $f4
	scf                                              ; $46fd: $37
	ld c, d                                          ; $46fe: $4a
	ld a, $4a                                        ; $46ff: $3e $4a
	ld h, d                                          ; $4701: $62
	sbc b                                            ; $4702: $98
	inc bc                                           ; $4703: $03
	inc b                                            ; $4704: $04
	add sp, $45                                      ; $4705: $e8 $45
	ld c, d                                          ; $4707: $4a
	ld c, h                                          ; $4708: $4c
	ld c, d                                          ; $4709: $4a
	pop hl                                           ; $470a: $e1
	sbc b                                            ; $470b: $98
	inc bc                                           ; $470c: $03
	inc b                                            ; $470d: $04
	db $f4                                           ; $470e: $f4
	ld d, e                                          ; $470f: $53
	ld c, d                                          ; $4710: $4a
	ld e, a                                          ; $4711: $5f
	ld c, d                                          ; $4712: $4a
	rlca                                             ; $4713: $07
	sbc b                                            ; $4714: $98
	dec c                                            ; $4715: $0d
	inc c                                            ; $4716: $0c
	add b                                            ; $4717: $80
	ld h, [hl]                                       ; $4718: $66
	ld c, d                                          ; $4719: $4a
	ld [hl], d                                       ; $471a: $72
	ld c, d                                          ; $471b: $4a
	nop                                              ; $471c: $00
	sbc b                                            ; $471d: $98
	rlca                                             ; $471e: $07
	inc c                                            ; $471f: $0c
	call z, Call_00a_4afc                            ; $4720: $cc $fc $4a
	inc d                                            ; $4723: $14
	ld c, e                                          ; $4724: $4b
	nop                                              ; $4725: $00
	sbc b                                            ; $4726: $98
	jr nz, jr_00a_4735                               ; $4727: $20 $0c

	jr nc, jr_00a_4733                               ; $4729: $30 $08

jr_00a_472b:
	ld c, e                                          ; $472b: $4b
	inc d                                            ; $472c: $14
	ld c, e                                          ; $472d: $4b
	nop                                              ; $472e: $00
	sbc b                                            ; $472f: $98
	jr nz, jr_00a_473e                               ; $4730: $20 $0c

	add b                                            ; $4732: $80

jr_00a_4733:
	ld a, c                                          ; $4733: $79
	ld c, d                                          ; $4734: $4a

jr_00a_4735:
	add l                                            ; $4735: $85
	ld c, d                                          ; $4736: $4a
	nop                                              ; $4737: $00
	sbc b                                            ; $4738: $98
	rlca                                             ; $4739: $07
	inc c                                            ; $473a: $0c
	jr nc, jr_00a_46c9                               ; $473b: $30 $8c

	ld c, d                                          ; $473d: $4a

jr_00a_473e:
	sbc b                                            ; $473e: $98
	ld c, d                                          ; $473f: $4a
	nop                                              ; $4740: $00
	sbc b                                            ; $4741: $98
	rlca                                             ; $4742: $07
	inc c                                            ; $4743: $0c
	call z, Call_00a_4a9f                            ; $4744: $cc $9f $4a
	or a                                             ; $4747: $b7
	ld c, d                                          ; $4748: $4a
	nop                                              ; $4749: $00
	sbc b                                            ; $474a: $98
	rlca                                             ; $474b: $07
	inc c                                            ; $474c: $0c
	jr nc, jr_00a_46fa                               ; $474d: $30 $ab

	ld c, d                                          ; $474f: $4a
	or a                                             ; $4750: $b7
	ld c, d                                          ; $4751: $4a
	nop                                              ; $4752: $00
	sbc b                                            ; $4753: $98
	rlca                                             ; $4754: $07
	inc c                                            ; $4755: $0c
	call z, Call_00a_4abe                            ; $4756: $cc $be $4a
	sub $4a                                          ; $4759: $d6 $4a
	nop                                              ; $475b: $00

jr_00a_475c:
	sbc b                                            ; $475c: $98
	rlca                                             ; $475d: $07
	inc c                                            ; $475e: $0c
	jr nc, jr_00a_472b                               ; $475f: $30 $ca

	ld c, d                                          ; $4761: $4a
	sub $4a                                          ; $4762: $d6 $4a
	nop                                              ; $4764: $00
	sbc b                                            ; $4765: $98
	rlca                                             ; $4766: $07
	inc c                                            ; $4767: $0c
	call z, Call_00a_4add                            ; $4768: $cc $dd $4a
	push af                                          ; $476b: $f5
	ld c, d                                          ; $476c: $4a
	nop                                              ; $476d: $00
	sbc b                                            ; $476e: $98
	rlca                                             ; $476f: $07
	inc c                                            ; $4770: $0c
	jr nc, jr_00a_475c                               ; $4771: $30 $e9

	ld c, d                                          ; $4773: $4a
	push af                                          ; $4774: $f5
	ld c, d                                          ; $4775: $4a
	nop                                              ; $4776: $00
	sbc b                                            ; $4777: $98
	rlca                                             ; $4778: $07
	inc c                                            ; $4779: $0c
	call z, Call_00a_4b3a                            ; $477a: $cc $3a $4b
	ld b, [hl]                                       ; $477d: $46
	ld c, e                                          ; $477e: $4b
	db $ed                                           ; $477f: $ed
	sbc b                                            ; $4780: $98
	inc b                                            ; $4781: $04
	dec b                                            ; $4782: $05
	inc e                                            ; $4783: $1c
	ld c, l                                          ; $4784: $4d
	ld c, e                                          ; $4785: $4b
	ld e, c                                          ; $4786: $59
	ld c, e                                          ; $4787: $4b
	ld l, $99                                        ; $4788: $2e $99
	inc bc                                           ; $478a: $03
	inc bc                                           ; $478b: $03
	db $ec                                           ; $478c: $ec
	ld h, b                                          ; $478d: $60
	ld c, e                                          ; $478e: $4b
	ld l, h                                          ; $478f: $6c
	ld c, e                                          ; $4790: $4b
	ld l, $99                                        ; $4791: $2e $99
	inc bc                                           ; $4793: $03

jr_00a_4794:
	inc bc                                           ; $4794: $03
	inc e                                            ; $4795: $1c
	ld [hl], e                                       ; $4796: $73
	ld c, e                                          ; $4797: $4b
	ld a, a                                          ; $4798: $7f
	ld c, e                                          ; $4799: $4b
	dec l                                            ; $479a: $2d
	sbc c                                            ; $479b: $99
	inc b                                            ; $479c: $04
	inc bc                                           ; $479d: $03
	db $ec                                           ; $479e: $ec
	add [hl]                                         ; $479f: $86
	ld c, e                                          ; $47a0: $4b
	sub d                                            ; $47a1: $92
	ld c, e                                          ; $47a2: $4b
	dec l                                            ; $47a3: $2d
	sbc c                                            ; $47a4: $99
	inc b                                            ; $47a5: $04
	inc bc                                           ; $47a6: $03
	inc e                                            ; $47a7: $1c
	sbc c                                            ; $47a8: $99
	ld c, e                                          ; $47a9: $4b
	and l                                            ; $47aa: $a5
	ld c, e                                          ; $47ab: $4b
	dec c                                            ; $47ac: $0d
	sbc c                                            ; $47ad: $99
	inc b                                            ; $47ae: $04
	inc b                                            ; $47af: $04
	db $ec                                           ; $47b0: $ec
	xor h                                            ; $47b1: $ac
	ld c, e                                          ; $47b2: $4b
	cp b                                             ; $47b3: $b8
	ld c, e                                          ; $47b4: $4b
	db $ed                                           ; $47b5: $ed
	sbc b                                            ; $47b6: $98
	inc b                                            ; $47b7: $04
	dec b                                            ; $47b8: $05
	inc e                                            ; $47b9: $1c
	cp a                                             ; $47ba: $bf
	ld c, e                                          ; $47bb: $4b
	bit 1, e                                         ; $47bc: $cb $4b
	db $ed                                           ; $47be: $ed
	sbc b                                            ; $47bf: $98
	inc b                                            ; $47c0: $04
	dec b                                            ; $47c1: $05
	db $ec                                           ; $47c2: $ec
	jp nc, $de4b                                     ; $47c3: $d2 $4b $de

	ld c, e                                          ; $47c6: $4b
	db $ed                                           ; $47c7: $ed
	sbc b                                            ; $47c8: $98
	inc b                                            ; $47c9: $04
	dec b                                            ; $47ca: $05
	inc e                                            ; $47cb: $1c
	push hl                                          ; $47cc: $e5
	ld c, e                                          ; $47cd: $4b
	pop af                                           ; $47ce: $f1
	ld c, e                                          ; $47cf: $4b
	db $ed                                           ; $47d0: $ed
	sbc b                                            ; $47d1: $98
	inc b                                            ; $47d2: $04
	dec b                                            ; $47d3: $05
	db $ec                                           ; $47d4: $ec
	ld hl, sp+$4b                                    ; $47d5: $f8 $4b
	inc b                                            ; $47d7: $04
	ld c, h                                          ; $47d8: $4c
	db $ed                                           ; $47d9: $ed
	sbc b                                            ; $47da: $98
	inc b                                            ; $47db: $04
	dec b                                            ; $47dc: $05
	inc e                                            ; $47dd: $1c
	dec bc                                           ; $47de: $0b
	ld c, h                                          ; $47df: $4c
	rla                                              ; $47e0: $17
	ld c, h                                          ; $47e1: $4c

jr_00a_47e2:
	nop                                              ; $47e2: $00
	sbc c                                            ; $47e3: $99
	dec c                                            ; $47e4: $0d
	ld bc, $90eb                                     ; $47e5: $01 $eb $90
	ld c, c                                          ; $47e8: $49
	sbc h                                            ; $47e9: $9c
	ld c, c                                          ; $47ea: $49
	rst JumpTable                                          ; $47eb: $c7
	sbc b                                            ; $47ec: $98
	inc bc                                           ; $47ed: $03
	inc b                                            ; $47ee: $04
	jr jr_00a_4794                                   ; $47ef: $18 $a3

	ld c, c                                          ; $47f1: $49
	xor a                                            ; $47f2: $af
	ld c, c                                          ; $47f3: $49
	ret z                                            ; $47f4: $c8

	sbc b                                            ; $47f5: $98
	inc bc                                           ; $47f6: $03
	inc b                                            ; $47f7: $04
	jr @+$20                                         ; $47f8: $18 $1e

	ld c, h                                          ; $47fa: $4c
	ld a, [hl+]                                      ; $47fb: $2a
	ld c, h                                          ; $47fc: $4c
	ret nz                                           ; $47fd: $c0

	sbc b                                            ; $47fe: $98
	ld c, $01                                        ; $47ff: $0e $01
	jr jr_00a_4834                                   ; $4801: $18 $31

	ld c, h                                          ; $4803: $4c
	dec a                                            ; $4804: $3d
	ld c, h                                          ; $4805: $4c
	ret nz                                           ; $4806: $c0

	sbc b                                            ; $4807: $98
	ld c, $01                                        ; $4808: $0e $01
	jr jr_00a_4850                                   ; $480a: $18 $44

	ld c, h                                          ; $480c: $4c
	ld d, b                                          ; $480d: $50
	ld c, h                                          ; $480e: $4c
	ret nz                                           ; $480f: $c0

	sbc b                                            ; $4810: $98
	ld c, $01                                        ; $4811: $0e $01
	jr jr_00a_47e2                                   ; $4813: $18 $cd

	ld [hl], $3c                                     ; $4815: $36 $3c
	ld hl, $494b                                     ; $4817: $21 $4b $49
	call $3c78                                       ; $481a: $cd $78 $3c
	ld de, $d940                                     ; $481d: $11 $40 $d9
	ld hl, $9b04                                     ; $4820: $21 $04 $9b
	ld b, $02                                        ; $4823: $06 $02
	ld a, $01                                        ; $4825: $3e $01

jr_00a_4827:
	ld c, $18                                        ; $4827: $0e $18
	call Call_00a_449f                               ; $4829: $cd $9f $44
	call SafelyExecuteDataCopies                                       ; $482c: $cd $8b $14
	ld hl, $9b34                                     ; $482f: $21 $34 $9b
	ld a, $06                                        ; $4832: $3e $06

jr_00a_4834:
	push af                                          ; $4834: $f5
	push hl                                          ; $4835: $e5
	ld de, $d940                                     ; $4836: $11 $40 $d9
	ld a, [de]                                       ; $4839: $1a
	add $18                                          ; $483a: $c6 $18
	ld e, a                                          ; $483c: $5f
	ld a, $0c                                        ; $483d: $3e $0c
	call $165f                                       ; $483f: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $4842: $cd $8b $14
	pop hl                                           ; $4845: $e1
	ld a, $20                                        ; $4846: $3e $20
	rst AddAOntoHL                                          ; $4848: $ef
	pop af                                           ; $4849: $f1
	dec a                                            ; $484a: $3d
	jr nz, jr_00a_4834                               ; $484b: $20 $e7

	ld a, [wInitialA]                                    ; $484d: $fa $00 $c1

jr_00a_4850:
	cp $11                                           ; $4850: $fe $11
	ret nz                                           ; $4852: $c0

	ld hl, $4957                                     ; $4853: $21 $57 $49
	call $3c78                                       ; $4856: $cd $78 $3c
	ld de, $d940                                     ; $4859: $11 $40 $d9
	ld hl, $1b04                                     ; $485c: $21 $04 $1b
	ld b, $02                                        ; $485f: $06 $02
	ld a, $01                                        ; $4861: $3e $01
	call Call_00a_44b0                               ; $4863: $cd $b0 $44
	call SafelyExecuteDataCopies                                       ; $4866: $cd $8b $14
	ld hl, $1b34                                     ; $4869: $21 $34 $1b
	ld a, $06                                        ; $486c: $3e $06

jr_00a_486e:
	push af                                          ; $486e: $f5
	push hl                                          ; $486f: $e5
	ld de, $d940                                     ; $4870: $11 $40 $d9
	ld a, [de]                                       ; $4873: $1a
	and $0f                                          ; $4874: $e6 $0f
	ld e, a                                          ; $4876: $5f
	ld a, $0c                                        ; $4877: $3e $0c
	call $165f                                       ; $4879: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $487c: $cd $8b $14
	pop hl                                           ; $487f: $e1
	ld a, $20                                        ; $4880: $3e $20
	rst AddAOntoHL                                          ; $4882: $ef
	pop af                                           ; $4883: $f1
	dec a                                            ; $4884: $3d
	jr nz, jr_00a_486e                               ; $4885: $20 $e7

	ret                                              ; $4887: $c9


Call_00a_4888:
	ld sp, hl                                        ; $4888: $f9
	ld [de], a                                       ; $4889: $12
	ld c, c                                          ; $488a: $49
	ld h, d                                          ; $488b: $62
	add b                                            ; $488c: $80
	add c                                            ; $488d: $81
	ld [de], a                                       ; $488e: $12
	ld hl, $4064                                     ; $488f: $21 $64 $40
	reti                                             ; $4892: $d9


	rst $38                                          ; $4893: $ff
	ld sp, hl                                        ; $4894: $f9
	ld [de], a                                       ; $4895: $12
	ld c, c                                          ; $4896: $49
	ld h, d                                          ; $4897: $62
	jr nc, jr_00a_4827                               ; $4898: $30 $8d

	ld [de], a                                       ; $489a: $12
	ld hl, $4064                                     ; $489b: $21 $64 $40
	reti                                             ; $489e: $d9


	rst $38                                          ; $489f: $ff
	ld sp, hl                                        ; $48a0: $f9
	ld [de], a                                       ; $48a1: $12
	halt                                             ; $48a2: $76
	ld h, h                                          ; $48a3: $64
	ld b, b                                          ; $48a4: $40
	reti                                             ; $48a5: $d9


	rst $38                                          ; $48a6: $ff
	ld sp, hl                                        ; $48a7: $f9
	ld [de], a                                       ; $48a8: $12
	ld a, [hl]                                       ; $48a9: $7e
	ld h, h                                          ; $48aa: $64
	nop                                              ; $48ab: $00
	adc b                                            ; $48ac: $88
	ld [de], a                                       ; $48ad: $12
	ld a, e                                          ; $48ae: $7b
	ld l, d                                          ; $48af: $6a
	ld b, b                                          ; $48b0: $40
	reti                                             ; $48b1: $d9


	rst $38                                          ; $48b2: $ff
	ld sp, hl                                        ; $48b3: $f9
	ld [de], a                                       ; $48b4: $12
	ld a, $6b                                        ; $48b5: $3e $6b
	ld b, b                                          ; $48b7: $40
	reti                                             ; $48b8: $d9


	rst $38                                          ; $48b9: $ff
	ld sp, hl                                        ; $48ba: $f9
	inc de                                           ; $48bb: $13
	nop                                              ; $48bc: $00
	ld b, b                                          ; $48bd: $40
	nop                                              ; $48be: $00
	adc b                                            ; $48bf: $88
	inc de                                           ; $48c0: $13
	add hl, de                                       ; $48c1: $19
	ld b, [hl]                                       ; $48c2: $46
	ld b, b                                          ; $48c3: $40
	reti                                             ; $48c4: $d9


	rst $38                                          ; $48c5: $ff
	ld sp, hl                                        ; $48c6: $f9
	inc de                                           ; $48c7: $13
	db $dd                                           ; $48c8: $dd
	ld b, [hl]                                       ; $48c9: $46
	ld b, b                                          ; $48ca: $40
	reti                                             ; $48cb: $d9


	rst $38                                          ; $48cc: $ff
	ld sp, hl                                        ; $48cd: $f9
	inc de                                           ; $48ce: $13
	add hl, bc                                       ; $48cf: $09
	ld b, a                                          ; $48d0: $47
	add b                                            ; $48d1: $80
	add c                                            ; $48d2: $81
	inc de                                           ; $48d3: $13
	add d                                            ; $48d4: $82
	ld b, a                                          ; $48d5: $47
	ld b, b                                          ; $48d6: $40
	reti                                             ; $48d7: $d9


	rst $38                                          ; $48d8: $ff
	ld sp, hl                                        ; $48d9: $f9
	inc de                                           ; $48da: $13
	adc l                                            ; $48db: $8d
	ld b, a                                          ; $48dc: $47
	ld b, b                                          ; $48dd: $40
	reti                                             ; $48de: $d9


	rst $38                                          ; $48df: $ff
	ld sp, hl                                        ; $48e0: $f9
	inc de                                           ; $48e1: $13
	sub h                                            ; $48e2: $94
	ld b, a                                          ; $48e3: $47
	add b                                            ; $48e4: $80
	add c                                            ; $48e5: $81
	inc de                                           ; $48e6: $13
	ld b, a                                          ; $48e7: $47
	ld c, b                                          ; $48e8: $48
	ld b, b                                          ; $48e9: $40
	reti                                             ; $48ea: $d9


	rst $38                                          ; $48eb: $ff
	ld sp, hl                                        ; $48ec: $f9
	inc de                                           ; $48ed: $13
	ld d, [hl]                                       ; $48ee: $56
	ld c, b                                          ; $48ef: $48
	ld b, b                                          ; $48f0: $40
	reti                                             ; $48f1: $d9


	rst $38                                          ; $48f2: $ff
	ld sp, hl                                        ; $48f3: $f9
	inc de                                           ; $48f4: $13
	ld e, a                                          ; $48f5: $5f
	ld c, b                                          ; $48f6: $48
	add b                                            ; $48f7: $80
	add c                                            ; $48f8: $81
	inc de                                           ; $48f9: $13
	and e                                            ; $48fa: $a3
	ld c, b                                          ; $48fb: $48
	ld b, b                                          ; $48fc: $40
	reti                                             ; $48fd: $d9


	rst $38                                          ; $48fe: $ff
	ld sp, hl                                        ; $48ff: $f9
	inc de                                           ; $4900: $13
	xor d                                            ; $4901: $aa
	ld c, b                                          ; $4902: $48
	ld b, b                                          ; $4903: $40
	reti                                             ; $4904: $d9


	rst $38                                          ; $4905: $ff
	ld sp, hl                                        ; $4906: $f9
	inc de                                           ; $4907: $13
	xor [hl]                                         ; $4908: $ae
	ld c, b                                          ; $4909: $48
	ret nz                                           ; $490a: $c0

	add c                                            ; $490b: $81
	inc de                                           ; $490c: $13
	cp d                                             ; $490d: $ba
	ld c, b                                          ; $490e: $48
	ld b, b                                          ; $490f: $40
	reti                                             ; $4910: $d9


	rst $38                                          ; $4911: $ff
	ld sp, hl                                        ; $4912: $f9
	inc de                                           ; $4913: $13
	cp a                                             ; $4914: $bf
	ld c, b                                          ; $4915: $48
	ld b, b                                          ; $4916: $40
	reti                                             ; $4917: $d9


	rst $38                                          ; $4918: $ff
	ld sp, hl                                        ; $4919: $f9
	ld [de], a                                       ; $491a: $12
	ld h, b                                          ; $491b: $60
	ld l, e                                          ; $491c: $6b
	nop                                              ; $491d: $00
	add e                                            ; $491e: $83
	ld [de], a                                       ; $491f: $12
	pop hl                                           ; $4920: $e1
	ld l, h                                          ; $4921: $6c
	ld b, b                                          ; $4922: $40
	reti                                             ; $4923: $d9


	rst $38                                          ; $4924: $ff
	ld sp, hl                                        ; $4925: $f9
	ld [de], a                                       ; $4926: $12
	ld h, b                                          ; $4927: $60
	ld l, e                                          ; $4928: $6b
	and b                                            ; $4929: $a0
	adc l                                            ; $492a: $8d
	ld [de], a                                       ; $492b: $12
	pop hl                                           ; $492c: $e1
	ld l, h                                          ; $492d: $6c
	ld b, b                                          ; $492e: $40
	reti                                             ; $492f: $d9


	rst $38                                          ; $4930: $ff
	ld sp, hl                                        ; $4931: $f9
	ld [de], a                                       ; $4932: $12
	dec d                                            ; $4933: $15
	ld l, l                                          ; $4934: $6d
	ld b, b                                          ; $4935: $40
	reti                                             ; $4936: $d9


	rst $38                                          ; $4937: $ff
	ld sp, hl                                        ; $4938: $f9
	ld [de], a                                       ; $4939: $12
	dec hl                                           ; $493a: $2b
	ld l, l                                          ; $493b: $6d
	nop                                              ; $493c: $00
	adc b                                            ; $493d: $88
	ld [de], a                                       ; $493e: $12
	ld [hl], a                                       ; $493f: $77
	ld [hl], d                                       ; $4940: $72
	ld b, b                                          ; $4941: $40
	reti                                             ; $4942: $d9


	rst $38                                          ; $4943: $ff
	ld sp, hl                                        ; $4944: $f9
	ld [de], a                                       ; $4945: $12
	add hl, de                                       ; $4946: $19
	ld [hl], e                                       ; $4947: $73
	ld b, b                                          ; $4948: $40
	reti                                             ; $4949: $d9


	rst $38                                          ; $494a: $ff
	ld sp, hl                                        ; $494b: $f9
	ld [de], a                                       ; $494c: $12
	ld d, c                                          ; $494d: $51
	ld [hl], e                                       ; $494e: $73
	add b                                            ; $494f: $80
	add c                                            ; $4950: $81
	ld [de], a                                       ; $4951: $12
	ld d, h                                          ; $4952: $54
	ld [hl], e                                       ; $4953: $73
	ld b, b                                          ; $4954: $40
	reti                                             ; $4955: $d9


	rst $38                                          ; $4956: $ff
	ld sp, hl                                        ; $4957: $f9
	ld [de], a                                       ; $4958: $12
	ld d, a                                          ; $4959: $57
	ld [hl], e                                       ; $495a: $73
	ld b, b                                          ; $495b: $40
	reti                                             ; $495c: $d9


	rst $38                                          ; $495d: $ff
	ld sp, hl                                        ; $495e: $f9
	ld [de], a                                       ; $495f: $12
	ld e, e                                          ; $4960: $5b
	ld [hl], e                                       ; $4961: $73
	nop                                              ; $4962: $00
	add e                                            ; $4963: $83
	ld [de], a                                       ; $4964: $12
	ld a, [de]                                       ; $4965: $1a
	ld [hl], l                                       ; $4966: $75
	ld b, b                                          ; $4967: $40
	reti                                             ; $4968: $d9


	rst $38                                          ; $4969: $ff
	ld sp, hl                                        ; $496a: $f9
	ld [de], a                                       ; $496b: $12
	ld e, e                                          ; $496c: $5b
	ld [hl], e                                       ; $496d: $73
	nop                                              ; $496e: $00
	adc l                                            ; $496f: $8d
	ld [de], a                                       ; $4970: $12
	ld a, [de]                                       ; $4971: $1a
	ld [hl], l                                       ; $4972: $75
	ld b, b                                          ; $4973: $40
	reti                                             ; $4974: $d9


	rst $38                                          ; $4975: $ff
	ld sp, hl                                        ; $4976: $f9
	ld [de], a                                       ; $4977: $12
	ld l, h                                          ; $4978: $6c
	ld [hl], l                                       ; $4979: $75
	ld b, b                                          ; $497a: $40
	reti                                             ; $497b: $d9


jr_00a_497c:
	rst $38                                          ; $497c: $ff
	ld sp, hl                                        ; $497d: $f9
	ld [de], a                                       ; $497e: $12
	ld [hl], a                                       ; $497f: $77
	ld [hl], l                                       ; $4980: $75
	nop                                              ; $4981: $00
	adc b                                            ; $4982: $88
	ld [de], a                                       ; $4983: $12
	adc $7a                                          ; $4984: $ce $7a
	ld b, b                                          ; $4986: $40
	reti                                             ; $4987: $d9


	rst $38                                          ; $4988: $ff
	ld sp, hl                                        ; $4989: $f9
	ld [de], a                                       ; $498a: $12
	adc b                                            ; $498b: $88
	ld a, e                                          ; $498c: $7b
	ld b, b                                          ; $498d: $40
	reti                                             ; $498e: $d9


	rst $38                                          ; $498f: $ff
	ld sp, hl                                        ; $4990: $f9
	ld [de], a                                       ; $4991: $12
	jp nz, $807b                                     ; $4992: $c2 $7b $80

	add c                                            ; $4995: $81
	ld [de], a                                       ; $4996: $12
	daa                                              ; $4997: $27
	ld a, h                                          ; $4998: $7c
	ld b, b                                          ; $4999: $40
	reti                                             ; $499a: $d9


	rst $38                                          ; $499b: $ff
	ld sp, hl                                        ; $499c: $f9
	ld [de], a                                       ; $499d: $12
	ld [hl], $7c                                     ; $499e: $36 $7c
	ld b, b                                          ; $49a0: $40
	reti                                             ; $49a1: $d9


	rst $38                                          ; $49a2: $ff
	ld sp, hl                                        ; $49a3: $f9
	ld [de], a                                       ; $49a4: $12
	ccf                                              ; $49a5: $3f
	ld a, h                                          ; $49a6: $7c
	add b                                            ; $49a7: $80
	add c                                            ; $49a8: $81
	ld [de], a                                       ; $49a9: $12
	ld [hl], b                                       ; $49aa: $70
	ld a, h                                          ; $49ab: $7c
	ld b, b                                          ; $49ac: $40
	reti                                             ; $49ad: $d9


	rst $38                                          ; $49ae: $ff
	ld sp, hl                                        ; $49af: $f9
	ld [de], a                                       ; $49b0: $12
	ld a, a                                          ; $49b1: $7f
	ld a, h                                          ; $49b2: $7c
	ld b, b                                          ; $49b3: $40
	reti                                             ; $49b4: $d9


	rst $38                                          ; $49b5: $ff
	ld sp, hl                                        ; $49b6: $f9
	inc de                                           ; $49b7: $13
	jp LCDCInterrupt                                 ; $49b8: $c3 $48 $00


	add e                                            ; $49bb: $83
	inc de                                           ; $49bc: $13
	ld a, h                                          ; $49bd: $7c
	ld c, c                                          ; $49be: $49
	ld b, b                                          ; $49bf: $40
	reti                                             ; $49c0: $d9


	rst $38                                          ; $49c1: $ff
	ld sp, hl                                        ; $49c2: $f9
	inc de                                           ; $49c3: $13
	jp $1048                                         ; $49c4: $c3 $48 $10


	adc [hl]                                         ; $49c7: $8e
	inc de                                           ; $49c8: $13
	ld a, h                                          ; $49c9: $7c
	ld c, c                                          ; $49ca: $49
	ld b, b                                          ; $49cb: $40
	reti                                             ; $49cc: $d9


	rst $38                                          ; $49cd: $ff
	ld sp, hl                                        ; $49ce: $f9
	inc de                                           ; $49cf: $13
	sub [hl]                                         ; $49d0: $96
	ld c, c                                          ; $49d1: $49
	ld b, b                                          ; $49d2: $40
	reti                                             ; $49d3: $d9


	rst $38                                          ; $49d4: $ff
	ld sp, hl                                        ; $49d5: $f9
	inc de                                           ; $49d6: $13
	sbc d                                            ; $49d7: $9a
	ld c, c                                          ; $49d8: $49
	nop                                              ; $49d9: $00
	adc b                                            ; $49da: $88
	inc de                                           ; $49db: $13
	pop bc                                           ; $49dc: $c1
	ld c, [hl]                                       ; $49dd: $4e
	ld b, b                                          ; $49de: $40
	reti                                             ; $49df: $d9


	rst $38                                          ; $49e0: $ff
	ld sp, hl                                        ; $49e1: $f9
	inc de                                           ; $49e2: $13
	ld e, e                                          ; $49e3: $5b
	ld c, a                                          ; $49e4: $4f
	ld b, b                                          ; $49e5: $40
	reti                                             ; $49e6: $d9


	rst $38                                          ; $49e7: $ff
	ld sp, hl                                        ; $49e8: $f9
	inc de                                           ; $49e9: $13
	ld l, h                                          ; $49ea: $6c
	ld c, a                                          ; $49eb: $4f
	jr nc, jr_00a_497c                               ; $49ec: $30 $8e

	inc de                                           ; $49ee: $13
	db $dd                                           ; $49ef: $dd
	ld c, a                                          ; $49f0: $4f
	ld b, b                                          ; $49f1: $40
	reti                                             ; $49f2: $d9


	rst $38                                          ; $49f3: $ff
	ld sp, hl                                        ; $49f4: $f9
	inc de                                           ; $49f5: $13
	db $eb                                           ; $49f6: $eb
	ld c, a                                          ; $49f7: $4f
	ld b, b                                          ; $49f8: $40
	reti                                             ; $49f9: $d9


	rst $38                                          ; $49fa: $ff
	ld sp, hl                                        ; $49fb: $f9
	ld [de], a                                       ; $49fc: $12
	ld e, h                                          ; $49fd: $5c
	ld b, c                                          ; $49fe: $41
	nop                                              ; $49ff: $00
	add e                                            ; $4a00: $83
	ld [de], a                                       ; $4a01: $12
	ld l, $43                                        ; $4a02: $2e $43
	ld b, b                                          ; $4a04: $40
	reti                                             ; $4a05: $d9


	rst $38                                          ; $4a06: $ff
	ld sp, hl                                        ; $4a07: $f9
	ld [de], a                                       ; $4a08: $12
	ld e, h                                          ; $4a09: $5c
	ld b, c                                          ; $4a0a: $41
	ld d, b                                          ; $4a0b: $50
	adc l                                            ; $4a0c: $8d
	ld [de], a                                       ; $4a0d: $12
	ld l, $43                                        ; $4a0e: $2e $43
	ld b, b                                          ; $4a10: $40
	reti                                             ; $4a11: $d9


	rst $38                                          ; $4a12: $ff
	ld sp, hl                                        ; $4a13: $f9
	ld [de], a                                       ; $4a14: $12
	ld h, a                                          ; $4a15: $67
	ld b, e                                          ; $4a16: $43
	ld b, b                                          ; $4a17: $40
	reti                                             ; $4a18: $d9


	rst $38                                          ; $4a19: $ff
	ld sp, hl                                        ; $4a1a: $f9
	ld [de], a                                       ; $4a1b: $12
	ld a, a                                          ; $4a1c: $7f
	ld b, e                                          ; $4a1d: $43
	nop                                              ; $4a1e: $00
	adc b                                            ; $4a1f: $88
	ld [de], a                                       ; $4a20: $12
	ld de, $8049                                     ; $4a21: $11 $49 $80
	adc [hl]                                         ; $4a24: $8e
	ld [de], a                                       ; $4a25: $12
	add sp, $49                                      ; $4a26: $e8 $49
	ld b, b                                          ; $4a28: $40
	adc a                                            ; $4a29: $8f
	ld [de], a                                       ; $4a2a: $12
	dec a                                            ; $4a2b: $3d
	ld c, b                                          ; $4a2c: $48
	ld b, b                                          ; $4a2d: $40
	reti                                             ; $4a2e: $d9


	rst $38                                          ; $4a2f: $ff
	ld sp, hl                                        ; $4a30: $f9
	ld [de], a                                       ; $4a31: $12
	ldh [rOBP0], a                                   ; $4a32: $e0 $48
	ld b, b                                          ; $4a34: $40
	reti                                             ; $4a35: $d9


	rst $38                                          ; $4a36: $ff
	ld sp, hl                                        ; $4a37: $f9
	ld [de], a                                       ; $4a38: $12
	pop de                                           ; $4a39: $d1
	ld c, c                                          ; $4a3a: $49
	ld b, b                                          ; $4a3b: $40
	reti                                             ; $4a3c: $d9


	rst $38                                          ; $4a3d: $ff
	ld sp, hl                                        ; $4a3e: $f9
	ld [de], a                                       ; $4a3f: $12
	ldh [rOBP1], a                                   ; $4a40: $e0 $49
	ld b, b                                          ; $4a42: $40
	reti                                             ; $4a43: $d9


	rst $38                                          ; $4a44: $ff
	ld sp, hl                                        ; $4a45: $f9
	ld [de], a                                       ; $4a46: $12
	sub h                                            ; $4a47: $94
	ld c, d                                          ; $4a48: $4a
	ld b, b                                          ; $4a49: $40
	reti                                             ; $4a4a: $d9


	rst $38                                          ; $4a4b: $ff
	ld sp, hl                                        ; $4a4c: $f9
	ld [de], a                                       ; $4a4d: $12
	and e                                            ; $4a4e: $a3
	ld c, d                                          ; $4a4f: $4a
	ld b, b                                          ; $4a50: $40
	reti                                             ; $4a51: $d9


	rst $38                                          ; $4a52: $ff
	ld sp, hl                                        ; $4a53: $f9
	ld [de], a                                       ; $4a54: $12
	and a                                            ; $4a55: $a7
	ld c, d                                          ; $4a56: $4a
	nop                                              ; $4a57: $00
	adc b                                            ; $4a58: $88
	ld [de], a                                       ; $4a59: $12
	ld bc, $404e                                     ; $4a5a: $01 $4e $40
	reti                                             ; $4a5d: $d9


	rst $38                                          ; $4a5e: $ff
	ld sp, hl                                        ; $4a5f: $f9
	ld [de], a                                       ; $4a60: $12
	adc [hl]                                         ; $4a61: $8e
	ld c, [hl]                                       ; $4a62: $4e
	ld b, b                                          ; $4a63: $40
	reti                                             ; $4a64: $d9


	rst $38                                          ; $4a65: $ff
	ld sp, hl                                        ; $4a66: $f9
	ld [de], a                                       ; $4a67: $12
	or b                                             ; $4a68: $b0
	ld c, [hl]                                       ; $4a69: $4e
	ret nz                                           ; $4a6a: $c0

	adc h                                            ; $4a6b: $8c
	ld [de], a                                       ; $4a6c: $12
	di                                               ; $4a6d: $f3
	ld d, b                                          ; $4a6e: $50
	ld b, b                                          ; $4a6f: $40
	reti                                             ; $4a70: $d9


	rst $38                                          ; $4a71: $ff
	ld sp, hl                                        ; $4a72: $f9
	ld [de], a                                       ; $4a73: $12
	ld b, h                                          ; $4a74: $44
	ld d, c                                          ; $4a75: $51
	ld b, b                                          ; $4a76: $40
	reti                                             ; $4a77: $d9


	rst $38                                          ; $4a78: $ff
	ld sp, hl                                        ; $4a79: $f9
	ld [de], a                                       ; $4a7a: $12
	ld l, d                                          ; $4a7b: $6a
	ld d, c                                          ; $4a7c: $51
	nop                                              ; $4a7d: $00
	add e                                            ; $4a7e: $83
	ld [de], a                                       ; $4a7f: $12
	xor l                                            ; $4a80: $ad
	ld d, e                                          ; $4a81: $53
	ld b, b                                          ; $4a82: $40
	reti                                             ; $4a83: $d9


	rst $38                                          ; $4a84: $ff
	ld sp, hl                                        ; $4a85: $f9
	ld [de], a                                       ; $4a86: $12
	cp $53                                           ; $4a87: $fe $53
	ld b, b                                          ; $4a89: $40
	reti                                             ; $4a8a: $d9


	rst $38                                          ; $4a8b: $ff
	ld sp, hl                                        ; $4a8c: $f9
	ld [de], a                                       ; $4a8d: $12
	inc h                                            ; $4a8e: $24
	ld d, h                                          ; $4a8f: $54
	ret nz                                           ; $4a90: $c0

	adc h                                            ; $4a91: $8c
	ld [de], a                                       ; $4a92: $12
	ld [hl], e                                       ; $4a93: $73
	ld d, [hl]                                       ; $4a94: $56
	ld b, b                                          ; $4a95: $40
	reti                                             ; $4a96: $d9


	rst $38                                          ; $4a97: $ff
	ld sp, hl                                        ; $4a98: $f9
	ld [de], a                                       ; $4a99: $12
	ret z                                            ; $4a9a: $c8

	ld d, [hl]                                       ; $4a9b: $56
	ld b, b                                          ; $4a9c: $40
	reti                                             ; $4a9d: $d9


	rst $38                                          ; $4a9e: $ff

Call_00a_4a9f:
	ld sp, hl                                        ; $4a9f: $f9
	ld [de], a                                       ; $4aa0: $12
	rst AddAOntoHL                                          ; $4aa1: $ef
	ld d, [hl]                                       ; $4aa2: $56
	nop                                              ; $4aa3: $00
	add e                                            ; $4aa4: $83
	ld [de], a                                       ; $4aa5: $12
	ld a, [de]                                       ; $4aa6: $1a
	ld e, c                                          ; $4aa7: $59
	ld b, b                                          ; $4aa8: $40
	reti                                             ; $4aa9: $d9


	rst $38                                          ; $4aaa: $ff
	ld sp, hl                                        ; $4aab: $f9
	ld [de], a                                       ; $4aac: $12
	rst AddAOntoHL                                          ; $4aad: $ef
	ld d, [hl]                                       ; $4aae: $56
	ret nz                                           ; $4aaf: $c0

	adc h                                            ; $4ab0: $8c
	ld [de], a                                       ; $4ab1: $12
	ld a, [de]                                       ; $4ab2: $1a
	ld e, c                                          ; $4ab3: $59
	ld b, b                                          ; $4ab4: $40
	reti                                             ; $4ab5: $d9


	rst $38                                          ; $4ab6: $ff
	ld sp, hl                                        ; $4ab7: $f9
	ld [de], a                                       ; $4ab8: $12
	ld l, h                                          ; $4ab9: $6c
	ld e, c                                          ; $4aba: $59
	ld b, b                                          ; $4abb: $40
	reti                                             ; $4abc: $d9


	rst $38                                          ; $4abd: $ff

Call_00a_4abe:
	ld sp, hl                                        ; $4abe: $f9
	ld [de], a                                       ; $4abf: $12
	sub d                                            ; $4ac0: $92
	ld e, c                                          ; $4ac1: $59
	nop                                              ; $4ac2: $00
	add e                                            ; $4ac3: $83
	ld [de], a                                       ; $4ac4: $12
	or e                                             ; $4ac5: $b3
	ld e, e                                          ; $4ac6: $5b
	ld b, b                                          ; $4ac7: $40
	reti                                             ; $4ac8: $d9


	rst $38                                          ; $4ac9: $ff
	ld sp, hl                                        ; $4aca: $f9
	ld [de], a                                       ; $4acb: $12
	sub d                                            ; $4acc: $92
	ld e, c                                          ; $4acd: $59
	ret nz                                           ; $4ace: $c0

	adc h                                            ; $4acf: $8c
	ld [de], a                                       ; $4ad0: $12
	or e                                             ; $4ad1: $b3
	ld e, e                                          ; $4ad2: $5b
	ld b, b                                          ; $4ad3: $40
	reti                                             ; $4ad4: $d9


	rst $38                                          ; $4ad5: $ff
	ld sp, hl                                        ; $4ad6: $f9
	ld [de], a                                       ; $4ad7: $12
	dec b                                            ; $4ad8: $05
	ld e, h                                          ; $4ad9: $5c
	ld b, b                                          ; $4ada: $40
	reti                                             ; $4adb: $d9


	rst $38                                          ; $4adc: $ff

Call_00a_4add:
	ld sp, hl                                        ; $4add: $f9
	ld [de], a                                       ; $4ade: $12
	dec hl                                           ; $4adf: $2b
	ld e, h                                          ; $4ae0: $5c
	nop                                              ; $4ae1: $00
	add e                                            ; $4ae2: $83
	ld [de], a                                       ; $4ae3: $12
	add [hl]                                         ; $4ae4: $86
	ld e, [hl]                                       ; $4ae5: $5e
	ld b, b                                          ; $4ae6: $40
	reti                                             ; $4ae7: $d9


	rst $38                                          ; $4ae8: $ff
	ld sp, hl                                        ; $4ae9: $f9
	ld [de], a                                       ; $4aea: $12
	dec hl                                           ; $4aeb: $2b
	ld e, h                                          ; $4aec: $5c
	ret nz                                           ; $4aed: $c0

	adc h                                            ; $4aee: $8c
	ld [de], a                                       ; $4aef: $12
	add [hl]                                         ; $4af0: $86
	ld e, [hl]                                       ; $4af1: $5e
	ld b, b                                          ; $4af2: $40
	reti                                             ; $4af3: $d9


	rst $38                                          ; $4af4: $ff
	ld sp, hl                                        ; $4af5: $f9
	ld [de], a                                       ; $4af6: $12
	db $db                                           ; $4af7: $db
	ld e, [hl]                                       ; $4af8: $5e
	ld b, b                                          ; $4af9: $40
	reti                                             ; $4afa: $d9


	rst $38                                          ; $4afb: $ff

Call_00a_4afc:
	ld sp, hl                                        ; $4afc: $f9
	ld [de], a                                       ; $4afd: $12
	inc b                                            ; $4afe: $04
	ld e, a                                          ; $4aff: $5f
	nop                                              ; $4b00: $00
	add e                                            ; $4b01: $83
	ld [de], a                                       ; $4b02: $12
	db $e4                                           ; $4b03: $e4
	ld h, b                                          ; $4b04: $60
	ld b, b                                          ; $4b05: $40
	reti                                             ; $4b06: $d9


	rst $38                                          ; $4b07: $ff
	ld sp, hl                                        ; $4b08: $f9
	ld [de], a                                       ; $4b09: $12
	inc b                                            ; $4b0a: $04
	ld e, a                                          ; $4b0b: $5f
	nop                                              ; $4b0c: $00
	adc b                                            ; $4b0d: $88
	ld [de], a                                       ; $4b0e: $12
	db $e4                                           ; $4b0f: $e4
	ld h, b                                          ; $4b10: $60
	ld b, b                                          ; $4b11: $40
	reti                                             ; $4b12: $d9


	rst $38                                          ; $4b13: $ff
	ld sp, hl                                        ; $4b14: $f9
	ld [de], a                                       ; $4b15: $12
	ld sp, $4061                                     ; $4b16: $31 $61 $40
	reti                                             ; $4b19: $d9


	rst $38                                          ; $4b1a: $ff
	ld sp, hl                                        ; $4b1b: $f9
	ld [de], a                                       ; $4b1c: $12
	ld h, b                                          ; $4b1d: $60
	ld h, c                                          ; $4b1e: $61
	nop                                              ; $4b1f: $00
	add e                                            ; $4b20: $83
	ld [de], a                                       ; $4b21: $12
	rlca                                             ; $4b22: $07
	ld h, d                                          ; $4b23: $62
	ld b, b                                          ; $4b24: $40
	reti                                             ; $4b25: $d9


	rst $38                                          ; $4b26: $ff
	ld sp, hl                                        ; $4b27: $f9
	ld [de], a                                       ; $4b28: $12
	ld h, b                                          ; $4b29: $60
	ld h, c                                          ; $4b2a: $61
	ret nz                                           ; $4b2b: $c0

	adc h                                            ; $4b2c: $8c
	ld [de], a                                       ; $4b2d: $12
	rlca                                             ; $4b2e: $07
	ld h, d                                          ; $4b2f: $62
	ld b, b                                          ; $4b30: $40
	reti                                             ; $4b31: $d9


	rst $38                                          ; $4b32: $ff
	ld sp, hl                                        ; $4b33: $f9
	ld [de], a                                       ; $4b34: $12
	ld b, e                                          ; $4b35: $43
	ld h, d                                          ; $4b36: $62
	ld b, b                                          ; $4b37: $40
	reti                                             ; $4b38: $d9


	rst $38                                          ; $4b39: $ff

Call_00a_4b3a:
	ld sp, hl                                        ; $4b3a: $f9
	inc de                                           ; $4b3b: $13
	rst AddAOntoHL                                          ; $4b3c: $ef
	ld c, a                                          ; $4b3d: $4f
	ret nz                                           ; $4b3e: $c0

	add c                                            ; $4b3f: $81
	inc de                                           ; $4b40: $13
	add hl, de                                       ; $4b41: $19
	ld d, c                                          ; $4b42: $51
	ld b, b                                          ; $4b43: $40
	reti                                             ; $4b44: $d9


	rst $38                                          ; $4b45: $ff
	ld sp, hl                                        ; $4b46: $f9
	inc de                                           ; $4b47: $13
	jr nc, jr_00a_4b9b                               ; $4b48: $30 $51

	ld b, b                                          ; $4b4a: $40
	reti                                             ; $4b4b: $d9


	rst $38                                          ; $4b4c: $ff
	ld sp, hl                                        ; $4b4d: $f9
	inc de                                           ; $4b4e: $13
	jr c, jr_00a_4ba2                                ; $4b4f: $38 $51

	ret nz                                           ; $4b51: $c0

	adc [hl]                                         ; $4b52: $8e
	inc de                                           ; $4b53: $13
	xor h                                            ; $4b54: $ac
	ld d, c                                          ; $4b55: $51
	ld b, b                                          ; $4b56: $40
	reti                                             ; $4b57: $d9


	rst $38                                          ; $4b58: $ff
	ld sp, hl                                        ; $4b59: $f9
	inc de                                           ; $4b5a: $13
	cp b                                             ; $4b5b: $b8
	ld d, c                                          ; $4b5c: $51
	ld b, b                                          ; $4b5d: $40
	reti                                             ; $4b5e: $d9


	rst $38                                          ; $4b5f: $ff
	ld sp, hl                                        ; $4b60: $f9
	inc de                                           ; $4b61: $13
	cp [hl]                                          ; $4b62: $be
	ld d, c                                          ; $4b63: $51
	ret nz                                           ; $4b64: $c0

	add c                                            ; $4b65: $81
	inc de                                           ; $4b66: $13
	ld a, $52                                        ; $4b67: $3e $52
	ld b, b                                          ; $4b69: $40
	reti                                             ; $4b6a: $d9


	rst $38                                          ; $4b6b: $ff
	ld sp, hl                                        ; $4b6c: $f9
	inc de                                           ; $4b6d: $13
	ld c, d                                          ; $4b6e: $4a
	ld d, d                                          ; $4b6f: $52
	ld b, b                                          ; $4b70: $40
	reti                                             ; $4b71: $d9


	rst $38                                          ; $4b72: $ff
	ld sp, hl                                        ; $4b73: $f9
	inc de                                           ; $4b74: $13
	ld d, b                                          ; $4b75: $50
	ld d, d                                          ; $4b76: $52
	ret nz                                           ; $4b77: $c0

	adc [hl]                                         ; $4b78: $8e
	inc de                                           ; $4b79: $13
	db $eb                                           ; $4b7a: $eb
	ld d, d                                          ; $4b7b: $52
	ld b, b                                          ; $4b7c: $40
	reti                                             ; $4b7d: $d9


	rst $38                                          ; $4b7e: $ff
	ld sp, hl                                        ; $4b7f: $f9
	inc de                                           ; $4b80: $13
	ld a, [$4052]                                    ; $4b81: $fa $52 $40
	reti                                             ; $4b84: $d9


	rst $38                                          ; $4b85: $ff
	ld sp, hl                                        ; $4b86: $f9
	inc de                                           ; $4b87: $13
	cp $52                                           ; $4b88: $fe $52
	ret nz                                           ; $4b8a: $c0

	add c                                            ; $4b8b: $81
	inc de                                           ; $4b8c: $13
	sub a                                            ; $4b8d: $97
	ld d, e                                          ; $4b8e: $53
	ld b, b                                          ; $4b8f: $40
	reti                                             ; $4b90: $d9


	rst $38                                          ; $4b91: $ff
	ld sp, hl                                        ; $4b92: $f9
	inc de                                           ; $4b93: $13
	and [hl]                                         ; $4b94: $a6
	ld d, e                                          ; $4b95: $53
	ld b, b                                          ; $4b96: $40
	reti                                             ; $4b97: $d9


	rst $38                                          ; $4b98: $ff
	ld sp, hl                                        ; $4b99: $f9
	inc de                                           ; $4b9a: $13

jr_00a_4b9b:
	xor d                                            ; $4b9b: $aa
	ld d, e                                          ; $4b9c: $53
	ret nz                                           ; $4b9d: $c0

	adc [hl]                                         ; $4b9e: $8e
	inc de                                           ; $4b9f: $13
	ld h, e                                          ; $4ba0: $63
	ld d, h                                          ; $4ba1: $54

jr_00a_4ba2:
	ld b, b                                          ; $4ba2: $40
	reti                                             ; $4ba3: $d9


	rst $38                                          ; $4ba4: $ff
	ld sp, hl                                        ; $4ba5: $f9
	inc de                                           ; $4ba6: $13
	halt                                             ; $4ba7: $76
	ld d, h                                          ; $4ba8: $54
	ld b, b                                          ; $4ba9: $40
	reti                                             ; $4baa: $d9


	rst $38                                          ; $4bab: $ff
	ld sp, hl                                        ; $4bac: $f9
	inc de                                           ; $4bad: $13
	ld a, d                                          ; $4bae: $7a
	ld d, h                                          ; $4baf: $54
	ret nz                                           ; $4bb0: $c0

	add c                                            ; $4bb1: $81
	inc de                                           ; $4bb2: $13
	ld e, [hl]                                       ; $4bb3: $5e
	ld d, l                                          ; $4bb4: $55
	ld b, b                                          ; $4bb5: $40
	reti                                             ; $4bb6: $d9


	rst $38                                          ; $4bb7: $ff
	ld sp, hl                                        ; $4bb8: $f9
	inc de                                           ; $4bb9: $13
	ld [hl], l                                       ; $4bba: $75
	ld d, l                                          ; $4bbb: $55
	ld b, b                                          ; $4bbc: $40
	reti                                             ; $4bbd: $d9


	rst $38                                          ; $4bbe: $ff
	ld sp, hl                                        ; $4bbf: $f9
	inc de                                           ; $4bc0: $13
	ld a, l                                          ; $4bc1: $7d
	ld d, l                                          ; $4bc2: $55
	ret nz                                           ; $4bc3: $c0

	adc [hl]                                         ; $4bc4: $8e
	inc de                                           ; $4bc5: $13
	ld l, [hl]                                       ; $4bc6: $6e
	ld d, [hl]                                       ; $4bc7: $56
	ld b, b                                          ; $4bc8: $40
	reti                                             ; $4bc9: $d9


	rst $38                                          ; $4bca: $ff
	ld sp, hl                                        ; $4bcb: $f9
	inc de                                           ; $4bcc: $13
	add l                                            ; $4bcd: $85
	ld d, [hl]                                       ; $4bce: $56
	ld b, b                                          ; $4bcf: $40
	reti                                             ; $4bd0: $d9


	rst $38                                          ; $4bd1: $ff
	ld sp, hl                                        ; $4bd2: $f9
	inc de                                           ; $4bd3: $13
	adc l                                            ; $4bd4: $8d
	ld d, [hl]                                       ; $4bd5: $56
	ret nz                                           ; $4bd6: $c0

	add c                                            ; $4bd7: $81
	inc de                                           ; $4bd8: $13
	adc h                                            ; $4bd9: $8c
	ld d, a                                          ; $4bda: $57
	ld b, b                                          ; $4bdb: $40
	reti                                             ; $4bdc: $d9


	rst $38                                          ; $4bdd: $ff
	ld sp, hl                                        ; $4bde: $f9
	inc de                                           ; $4bdf: $13
	and e                                            ; $4be0: $a3
	ld d, a                                          ; $4be1: $57
	ld b, b                                          ; $4be2: $40
	reti                                             ; $4be3: $d9


	rst $38                                          ; $4be4: $ff
	ld sp, hl                                        ; $4be5: $f9
	inc de                                           ; $4be6: $13
	xor l                                            ; $4be7: $ad
	ld d, a                                          ; $4be8: $57
	ret nz                                           ; $4be9: $c0

	adc [hl]                                         ; $4bea: $8e
	inc de                                           ; $4beb: $13
	push de                                          ; $4bec: $d5
	ld e, b                                          ; $4bed: $58
	ld b, b                                          ; $4bee: $40
	reti                                             ; $4bef: $d9


	rst $38                                          ; $4bf0: $ff
	ld sp, hl                                        ; $4bf1: $f9
	inc de                                           ; $4bf2: $13
	db $ec                                           ; $4bf3: $ec
	ld e, b                                          ; $4bf4: $58
	ld b, b                                          ; $4bf5: $40
	reti                                             ; $4bf6: $d9


	rst $38                                          ; $4bf7: $ff
	ld sp, hl                                        ; $4bf8: $f9
	inc de                                           ; $4bf9: $13
	db $f4                                           ; $4bfa: $f4
	ld e, b                                          ; $4bfb: $58
	ret nz                                           ; $4bfc: $c0

	add c                                            ; $4bfd: $81
	inc de                                           ; $4bfe: $13
	jr nz, @+$5c                                     ; $4bff: $20 $5a

	ld b, b                                          ; $4c01: $40
	reti                                             ; $4c02: $d9


	rst $38                                          ; $4c03: $ff
	ld sp, hl                                        ; $4c04: $f9
	inc de                                           ; $4c05: $13
	scf                                              ; $4c06: $37
	ld e, d                                          ; $4c07: $5a
	ld b, b                                          ; $4c08: $40
	reti                                             ; $4c09: $d9


	rst $38                                          ; $4c0a: $ff
	ld sp, hl                                        ; $4c0b: $f9
	inc de                                           ; $4c0c: $13
	ccf                                              ; $4c0d: $3f
	ld e, d                                          ; $4c0e: $5a
	or b                                             ; $4c0f: $b0
	adc [hl]                                         ; $4c10: $8e
	inc de                                           ; $4c11: $13
	ld c, b                                          ; $4c12: $48
	ld e, d                                          ; $4c13: $5a
	ld b, b                                          ; $4c14: $40
	reti                                             ; $4c15: $d9


	rst $38                                          ; $4c16: $ff
	ld sp, hl                                        ; $4c17: $f9
	inc de                                           ; $4c18: $13
	ld c, e                                          ; $4c19: $4b
	ld e, d                                          ; $4c1a: $5a
	ld b, b                                          ; $4c1b: $40
	reti                                             ; $4c1c: $d9


	rst $38                                          ; $4c1d: $ff
	ld sp, hl                                        ; $4c1e: $f9
	inc de                                           ; $4c1f: $13
	ld d, c                                          ; $4c20: $51
	ld e, d                                          ; $4c21: $5a
	add b                                            ; $4c22: $80
	add c                                            ; $4c23: $81
	inc de                                           ; $4c24: $13
	ld e, d                                          ; $4c25: $5a
	ld e, d                                          ; $4c26: $5a
	ld b, b                                          ; $4c27: $40
	reti                                             ; $4c28: $d9


	rst $38                                          ; $4c29: $ff
	ld sp, hl                                        ; $4c2a: $f9
	inc de                                           ; $4c2b: $13
	ld e, l                                          ; $4c2c: $5d
	ld e, d                                          ; $4c2d: $5a
	ld b, b                                          ; $4c2e: $40
	reti                                             ; $4c2f: $d9


	rst $38                                          ; $4c30: $ff
	ld sp, hl                                        ; $4c31: $f9
	inc de                                           ; $4c32: $13
	ld h, c                                          ; $4c33: $61
	ld e, d                                          ; $4c34: $5a
	add b                                            ; $4c35: $80
	add c                                            ; $4c36: $81
	inc de                                           ; $4c37: $13
	ld l, d                                          ; $4c38: $6a
	ld e, d                                          ; $4c39: $5a
	ld b, b                                          ; $4c3a: $40
	reti                                             ; $4c3b: $d9


	rst $38                                          ; $4c3c: $ff
	ld sp, hl                                        ; $4c3d: $f9
	inc de                                           ; $4c3e: $13
	ld l, l                                          ; $4c3f: $6d
	ld e, d                                          ; $4c40: $5a
	ld b, b                                          ; $4c41: $40
	reti                                             ; $4c42: $d9


	rst $38                                          ; $4c43: $ff
	ld sp, hl                                        ; $4c44: $f9
	inc de                                           ; $4c45: $13
	ld [hl], c                                       ; $4c46: $71
	ld e, d                                          ; $4c47: $5a
	add b                                            ; $4c48: $80
	add c                                            ; $4c49: $81
	inc de                                           ; $4c4a: $13
	ld a, d                                          ; $4c4b: $7a
	ld e, d                                          ; $4c4c: $5a
	ld b, b                                          ; $4c4d: $40
	reti                                             ; $4c4e: $d9


	rst $38                                          ; $4c4f: $ff
	ld sp, hl                                        ; $4c50: $f9
	inc de                                           ; $4c51: $13
	ld a, l                                          ; $4c52: $7d
	ld e, d                                          ; $4c53: $5a
	ld b, b                                          ; $4c54: $40
	reti                                             ; $4c55: $d9


	rst $38                                          ; $4c56: $ff
	ld hl, $c153                                     ; $4c57: $21 $53 $c1
	ld b, $10                                        ; $4c5a: $06 $10
	call Call_00a_4d51                               ; $4c5c: $cd $51 $4d
	ld hl, $d843                                     ; $4c5f: $21 $43 $d8
	ld b, $a0                                        ; $4c62: $06 $a0
	call Call_00a_4d51                               ; $4c64: $cd $51 $4d
	ld hl, $d842                                     ; $4c67: $21 $42 $d8
	bit 7, [hl]                                      ; $4c6a: $cb $7e
	jr z, jr_00a_4c92                                ; $4c6c: $28 $24

	ld a, [hl]                                       ; $4c6e: $7e
	and $0f                                          ; $4c6f: $e6 $0f
	cp $09                                           ; $4c71: $fe $09
	jr c, jr_00a_4c89                                ; $4c73: $38 $14

	ld b, $00                                        ; $4c75: $06 $00

jr_00a_4c77:
	ld a, b                                          ; $4c77: $78
	cp $09                                           ; $4c78: $fe $09
	jr nc, jr_00a_4c89                               ; $4c7a: $30 $0d

	ld hl, $4d57                                     ; $4c7c: $21 $57 $4d
	call $3c83                                       ; $4c7f: $cd $83 $3c
	ld a, [hl+]                                      ; $4c82: $2a
	or [hl]                                          ; $4c83: $b6
	jr nz, jr_00a_4c92                               ; $4c84: $20 $0c

	inc b                                            ; $4c86: $04
	jr jr_00a_4c77                                   ; $4c87: $18 $ee

jr_00a_4c89:
	ld hl, $d842                                     ; $4c89: $21 $42 $d8
	set 6, [hl]                                      ; $4c8c: $cb $f6
	ld a, $64                                        ; $4c8e: $3e $64
	jr jr_00a_4c9a                                   ; $4c90: $18 $08

jr_00a_4c92:
	ld hl, $d842                                     ; $4c92: $21 $42 $d8
	res 7, [hl]                                      ; $4c95: $cb $be
	res 6, [hl]                                      ; $4c97: $cb $b6
	xor a                                            ; $4c99: $af

jr_00a_4c9a:
	ld [$d868], a                                    ; $4c9a: $ea $68 $d8
	ld a, [$d842]                                    ; $4c9d: $fa $42 $d8
	and $0f                                          ; $4ca0: $e6 $0f
	cp $09                                           ; $4ca2: $fe $09
	ld hl, $0000                                     ; $4ca4: $21 $00 $00
	jr nc, jr_00a_4cb0                               ; $4ca7: $30 $07

	ld hl, $4d57                                     ; $4ca9: $21 $57 $4d
	call $3c83                                       ; $4cac: $cd $83 $3c
	rst GetHLinHL                                          ; $4caf: $cf

jr_00a_4cb0:
	ld de, $0032                                     ; $4cb0: $11 $32 $00
	call $3cd4                                       ; $4cb3: $cd $d4 $3c
	jr nc, jr_00a_4cbd                               ; $4cb6: $30 $05

	ld hl, $0032                                     ; $4cb8: $21 $32 $00
	jr jr_00a_4cc8                                   ; $4cbb: $18 $0b

jr_00a_4cbd:
	ld de, $0226                                     ; $4cbd: $11 $26 $02
	call $3cd4                                       ; $4cc0: $cd $d4 $3c
	jr c, jr_00a_4cc8                                ; $4cc3: $38 $03

	ld hl, $0226                                     ; $4cc5: $21 $26 $02

jr_00a_4cc8:
	ld de, $ffce                                     ; $4cc8: $11 $ce $ff
	add hl, de                                       ; $4ccb: $19
	ld a, $0a                                        ; $4ccc: $3e $0a
	call AHLequAtimesHL                                       ; $4cce: $cd $77 $12
	ld de, $d878                                     ; $4cd1: $11 $78 $d8
	call $3cce                                       ; $4cd4: $cd $ce $3c
	ld hl, $a2f1                                     ; $4cd7: $21 $f1 $a2
	rst GetHLinHL                                          ; $4cda: $cf
	ld a, h                                          ; $4cdb: $7c
	or l                                             ; $4cdc: $b5
	jr nz, jr_00a_4ce2                               ; $4cdd: $20 $03

	ld hl, $0001                                     ; $4cdf: $21 $01 $00

jr_00a_4ce2:
	ld a, $0a                                        ; $4ce2: $3e $0a
	call AHLequAtimesHL                                       ; $4ce4: $cd $77 $12
	ld d, h                                          ; $4ce7: $54
	ld a, l                                          ; $4ce8: $7d
	ld hl, $d84d                                     ; $4ce9: $21 $4d $d8
	ld [hl+], a                                      ; $4cec: $22
	ld [hl], d                                       ; $4ced: $72
	ld hl, $d859                                     ; $4cee: $21 $59 $d8
	ld [hl+], a                                      ; $4cf1: $22
	ld [hl], d                                       ; $4cf2: $72
	ld hl, $4d69                                     ; $4cf3: $21 $69 $4d
	ld a, [$d841]                                    ; $4cf6: $fa $41 $d8
	call $3c89                                       ; $4cf9: $cd $89 $3c
	ld hl, $d84f                                     ; $4cfc: $21 $4f $d8
	ld a, e                                          ; $4cff: $7b
	ld [hl+], a                                      ; $4d00: $22
	ld [hl], d                                       ; $4d01: $72
	ld hl, $4d89                                     ; $4d02: $21 $89 $4d
	ld a, [$d840]                                    ; $4d05: $fa $40 $d8
	call $3c89                                       ; $4d08: $cd $89 $3c
	ld hl, $d851                                     ; $4d0b: $21 $51 $d8
	ld a, e                                          ; $4d0e: $7b
	ld [hl+], a                                      ; $4d0f: $22
	ld [hl], d                                       ; $4d10: $72
	ld a, [$d840]                                    ; $4d11: $fa $40 $d8
	ld de, $270f                                     ; $4d14: $11 $0f $27
	cp $05                                           ; $4d17: $fe $05
	jr z, jr_00a_4d28                                ; $4d19: $28 $0d

	cp $08                                           ; $4d1b: $fe $08
	jr z, jr_00a_4d28                                ; $4d1d: $28 $09

	ld de, $1388                                     ; $4d1f: $11 $88 $13
	cp $06                                           ; $4d22: $fe $06
	jr z, jr_00a_4d28                                ; $4d24: $28 $02

	jr jr_00a_4d34                                   ; $4d26: $18 $0c

jr_00a_4d28:
	ld hl, $d853                                     ; $4d28: $21 $53 $d8
	ld b, $03                                        ; $4d2b: $06 $03

jr_00a_4d2d:
	ld a, e                                          ; $4d2d: $7b
	ld [hl+], a                                      ; $4d2e: $22
	ld a, d                                          ; $4d2f: $7a
	ld [hl+], a                                      ; $4d30: $22
	dec b                                            ; $4d31: $05
	jr nz, jr_00a_4d2d                               ; $4d32: $20 $f9

jr_00a_4d34:
	ld a, [$d840]                                    ; $4d34: $fa $40 $d8
	ld bc, $0600                                     ; $4d37: $01 $00 $06
	cp $05                                           ; $4d3a: $fe $05
	jr z, jr_00a_4d45                                ; $4d3c: $28 $07

	cp $08                                           ; $4d3e: $fe $08
	jr z, jr_00a_4d45                                ; $4d40: $28 $03

	ld bc, $0400                                     ; $4d42: $01 $00 $04

jr_00a_4d45:
	ld hl, $d875                                     ; $4d45: $21 $75 $d8
	ld a, c                                          ; $4d48: $79
	ld [hl+], a                                      ; $4d49: $22
	ld [hl], b                                       ; $4d4a: $70
	ld a, $77                                        ; $4d4b: $3e $77
	ld [$d85b], a                                    ; $4d4d: $ea $5b $d8
	ret                                              ; $4d50: $c9


Call_00a_4d51:
	xor a                                            ; $4d51: $af

jr_00a_4d52:
	ld [hl+], a                                      ; $4d52: $22
	dec b                                            ; $4d53: $05
	jr nz, jr_00a_4d52                               ; $4d54: $20 $fc

	ret                                              ; $4d56: $c9


	dec c                                            ; $4d57: $0d
	and e                                            ; $4d58: $a3
	rrca                                             ; $4d59: $0f
	and e                                            ; $4d5a: $a3
	ld de, $13a3                                     ; $4d5b: $11 $a3 $13
	and e                                            ; $4d5e: $a3
	dec d                                            ; $4d5f: $15
	and e                                            ; $4d60: $a3
	rla                                              ; $4d61: $17
	and e                                            ; $4d62: $a3
	add hl, de                                       ; $4d63: $19
	and e                                            ; $4d64: $a3
	dec de                                           ; $4d65: $1b
	and e                                            ; $4d66: $a3
	dec e                                            ; $4d67: $1d
	and e                                            ; $4d68: $a3
	nop                                              ; $4d69: $00
	ld bc, $0063                                     ; $4d6a: $01 $63 $00
	jr c, @+$03                                      ; $4d6d: $38 $01

	jr nc, jr_00a_4d72                               ; $4d6f: $30 $01

	cp l                                             ; $4d71: $bd

jr_00a_4d72:
	nop                                              ; $4d72: $00
	ld a, [hl+]                                      ; $4d73: $2a
	ld bc, $0756                                     ; $4d74: $01 $56 $07
	dec d                                            ; $4d77: $15
	ld bc, $016d                                     ; $4d78: $01 $6d $01
	xor l                                            ; $4d7b: $ad
	nop                                              ; $4d7c: $00
	add hl, bc                                       ; $4d7d: $09
	ld bc, $00bf                                     ; $4d7e: $01 $bf $00
	ld sp, hl                                        ; $4d81: $f9
	nop                                              ; $4d82: $00
	or $03                                           ; $4d83: $f6 $03
	dec a                                            ; $4d85: $3d
	ld [bc], a                                       ; $4d86: $02
	ld a, [bc]                                       ; $4d87: $0a
	nop                                              ; $4d88: $00
	ld bc, $0100                                     ; $4d89: $01 $00 $01
	nop                                              ; $4d8c: $00
	ld bc, $8800                                     ; $4d8d: $01 $00 $88
	inc de                                           ; $4d90: $13
	rst $38                                          ; $4d91: $ff
	rst $38                                          ; $4d92: $ff
	ld bc, $ff00                                     ; $4d93: $01 $00 $ff
	rst $38                                          ; $4d96: $ff
	rst $38                                          ; $4d97: $ff
	rst $38                                          ; $4d98: $ff
	ld bc, $4c00                                     ; $4d99: $01 $00 $4c
	dec e                                            ; $4d9c: $1d
	ld hl, $7e96                                     ; $4d9d: $21 $96 $7e
	call $3c78                                       ; $4da0: $cd $78 $3c
	ld hl, $7e74                                     ; $4da3: $21 $74 $7e
	call $3c78                                       ; $4da6: $cd $78 $3c
	ld hl, $7e8a                                     ; $4da9: $21 $8a $7e
	call $3c78                                       ; $4dac: $cd $78 $3c
	ld hl, $4dbc                                     ; $4daf: $21 $bc $4d
	ld a, [$d841]                                    ; $4db2: $fa $41 $d8
	call $3c83                                       ; $4db5: $cd $83 $3c
	call $3c78                                       ; $4db8: $cd $78 $3c
	ret                                              ; $4dbb: $c9


	db $fc                                           ; $4dbc: $fc
	ld a, [hl]                                       ; $4dbd: $7e
	db $dd                                           ; $4dbe: $dd
	ld a, e                                          ; $4dbf: $7b
	jr c, jr_00a_4e3e                                ; $4dc0: $38 $7c

	ld c, $7c                                        ; $4dc2: $0e $7c
	ld h, c                                          ; $4dc4: $61
	ld [hl], h                                       ; $4dc5: $74
	halt                                             ; $4dc6: $76
	ld [hl], h                                       ; $4dc7: $74
	sub d                                            ; $4dc8: $92
	ld [hl], h                                       ; $4dc9: $74
	ld sp, hl                                        ; $4dca: $f9
	ld a, e                                          ; $4dcb: $7b
	ret z                                            ; $4dcc: $c8

	ld a, e                                          ; $4dcd: $7b
	ld c, h                                          ; $4dce: $4c
	ld [hl], h                                       ; $4dcf: $74
	inc hl                                           ; $4dd0: $23
	ld a, h                                          ; $4dd1: $7c
	and a                                            ; $4dd2: $a7
	ld [hl], h                                       ; $4dd3: $74
	ret z                                            ; $4dd4: $c8

	ld [hl], h                                       ; $4dd5: $74
	ld c, l                                          ; $4dd6: $4d
	ld a, h                                          ; $4dd7: $7c
	call z, $cc7e                                    ; $4dd8: $cc $7e $cc
	ld a, [hl]                                       ; $4ddb: $7e
	ld a, $06                                        ; $4ddc: $3e $06
	ld [$cc00], a                                    ; $4dde: $ea $00 $cc
	ld a, $05                                        ; $4de1: $3e $05
	ld [$cd00], a                                    ; $4de3: $ea $00 $cd
	ld a, $07                                        ; $4de6: $3e $07
	ld [$ce00], a                                    ; $4de8: $ea $00 $ce
	ret                                              ; $4deb: $c9


	call Call_00a_4df5                               ; $4dec: $cd $f5 $4d
	ld bc, $67ca                                     ; $4def: $01 $ca $67
	jp $1890                                         ; $4df2: $c3 $90 $18


Call_00a_4df5:
	ld bc, $637e                                     ; $4df5: $01 $7e $63
	call $18c4                                       ; $4df8: $cd $c4 $18
	ld a, [$d840]                                    ; $4dfb: $fa $40 $d8
	ld hl, $4e22                                     ; $4dfe: $21 $22 $4e
	call $3c8f                                       ; $4e01: $cd $8f $3c
	call $18b7                                       ; $4e04: $cd $b7 $18
	ld a, [$d8b9]                                    ; $4e07: $fa $b9 $d8
	or a                                             ; $4e0a: $b7
	ld bc, $6382                                     ; $4e0b: $01 $82 $63
	jr z, jr_00a_4e13                                ; $4e0e: $28 $03

	ld bc, $63c2                                     ; $4e10: $01 $c2 $63

jr_00a_4e13:
	call $18aa                                       ; $4e13: $cd $aa $18
	ld a, [$d841]                                    ; $4e16: $fa $41 $d8
	ld hl, $4e38                                     ; $4e19: $21 $38 $4e
	call $3c8f                                       ; $4e1c: $cd $8f $3c
	jp $189d                                         ; $4e1f: $c3 $9d $18


	ld h, [hl]                                       ; $4e22: $66
	ld h, e                                          ; $4e23: $63
	ld l, [hl]                                       ; $4e24: $6e
	ld h, e                                          ; $4e25: $63
	ld [hl], d                                       ; $4e26: $72
	ld h, e                                          ; $4e27: $63
	ld l, d                                          ; $4e28: $6a
	ld h, e                                          ; $4e29: $63
	ld a, d                                          ; $4e2a: $7a
	ld h, e                                          ; $4e2b: $63
	halt                                             ; $4e2c: $76
	ld h, e                                          ; $4e2d: $63
	halt                                             ; $4e2e: $76
	ld h, e                                          ; $4e2f: $63
	ld h, d                                          ; $4e30: $62
	ld h, e                                          ; $4e31: $63
	halt                                             ; $4e32: $76
	ld h, e                                          ; $4e33: $63
	ld l, d                                          ; $4e34: $6a
	ld h, e                                          ; $4e35: $63
	ld h, d                                          ; $4e36: $62
	ld h, e                                          ; $4e37: $63
	adc d                                            ; $4e38: $8a
	ld h, e                                          ; $4e39: $63
	sub [hl]                                         ; $4e3a: $96
	ld h, e                                          ; $4e3b: $63
	or d                                             ; $4e3c: $b2
	ld h, e                                          ; $4e3d: $63

jr_00a_4e3e:
	and [hl]                                         ; $4e3e: $a6
	ld h, e                                          ; $4e3f: $63
	sbc [hl]                                         ; $4e40: $9e
	ld h, e                                          ; $4e41: $63
	and d                                            ; $4e42: $a2
	ld h, e                                          ; $4e43: $63
	xor [hl]                                         ; $4e44: $ae
	ld h, e                                          ; $4e45: $63
	sbc d                                            ; $4e46: $9a
	ld h, e                                          ; $4e47: $63
	sub d                                            ; $4e48: $92
	ld h, e                                          ; $4e49: $63
	adc [hl]                                         ; $4e4a: $8e
	ld h, e                                          ; $4e4b: $63
	xor d                                            ; $4e4c: $aa
	ld h, e                                          ; $4e4d: $63
	or [hl]                                          ; $4e4e: $b6
	ld h, e                                          ; $4e4f: $63
	cp d                                             ; $4e50: $ba
	ld h, e                                          ; $4e51: $63
	cp [hl]                                          ; $4e52: $be
	ld h, e                                          ; $4e53: $63
	add [hl]                                         ; $4e54: $86
	ld h, e                                          ; $4e55: $63
	adc d                                            ; $4e56: $8a
	ld h, e                                          ; $4e57: $63
	call Call_00a_4e64                               ; $4e58: $cd $64 $4e
	call Call_00a_4f9f                               ; $4e5b: $cd $9f $4f
	call Call_00a_4ec2                               ; $4e5e: $cd $c2 $4e
	jp Jump_00a_5011                                 ; $4e61: $c3 $11 $50


Call_00a_4e64:
	ld hl, $9d01                                     ; $4e64: $21 $01 $9d
	ld b, $12                                        ; $4e67: $06 $12
	ld c, $26                                        ; $4e69: $0e $26
	call Call_00a_50a6                               ; $4e6b: $cd $a6 $50
	ld hl, $9ce0                                     ; $4e6e: $21 $e0 $9c
	ld de, $2223                                     ; $4e71: $11 $23 $22
	ld c, $06                                        ; $4e74: $0e $06
	ld b, $14                                        ; $4e76: $06 $14
	call Call_00a_507d                               ; $4e78: $cd $7d $50
	ld hl, $9d00                                     ; $4e7b: $21 $00 $9d
	ld e, $25                                        ; $4e7e: $1e $25
	ld a, $02                                        ; $4e80: $3e $02
	call $1667                                       ; $4e82: $cd $67 $16
	ld hl, $9d13                                     ; $4e85: $21 $13 $9d
	ld e, $0e                                        ; $4e88: $1e $0e
	ld a, $02                                        ; $4e8a: $3e $02
	call $1667                                       ; $4e8c: $cd $67 $16
	ld hl, $9d40                                     ; $4e8f: $21 $40 $9d
	ld de, $2421                                     ; $4e92: $11 $21 $24
	ld c, $05                                        ; $4e95: $0e $05
	ld b, $14                                        ; $4e97: $06 $14
	call Call_00a_507d                               ; $4e99: $cd $7d $50
	ld a, [wInitialA]                                    ; $4e9c: $fa $00 $c1
	cp $11                                           ; $4e9f: $fe $11
	ret nz                                           ; $4ea1: $c0

	ld hl, $1ce0                                     ; $4ea2: $21 $e0 $1c
	call Call_00a_5073                               ; $4ea5: $cd $73 $50
	ld hl, $1d00                                     ; $4ea8: $21 $00 $1d
	ld e, $00                                        ; $4eab: $1e $00
	ld a, $02                                        ; $4ead: $3e $02
	call $1667                                       ; $4eaf: $cd $67 $16
	ld hl, $1d13                                     ; $4eb2: $21 $13 $1d
	ld e, $00                                        ; $4eb5: $1e $00
	ld a, $02                                        ; $4eb7: $3e $02
	call $1667                                       ; $4eb9: $cd $67 $16
	ld hl, $1d40                                     ; $4ebc: $21 $40 $1d
	jp Jump_00a_5073                                 ; $4ebf: $c3 $73 $50


Call_00a_4ec2:
	ld a, [wInitialA]                                    ; $4ec2: $fa $00 $c1
	cp $11                                           ; $4ec5: $fe $11
	jr nz, jr_00a_4ee9                               ; $4ec7: $20 $20

	ld hl, $1c00                                     ; $4ec9: $21 $00 $1c
	call Call_00a_506f                               ; $4ecc: $cd $6f $50
	ld hl, $1c20                                     ; $4ecf: $21 $20 $1c
	ld e, $00                                        ; $4ed2: $1e $00
	ld a, $04                                        ; $4ed4: $3e $04
	call $1667                                       ; $4ed6: $cd $67 $16
	ld hl, $1c2c                                     ; $4ed9: $21 $2c $1c
	ld e, $00                                        ; $4edc: $1e $00
	ld a, $04                                        ; $4ede: $3e $04
	call $1667                                       ; $4ee0: $cd $67 $16
	ld hl, $1ca0                                     ; $4ee3: $21 $a0 $1c
	call Call_00a_506f                               ; $4ee6: $cd $6f $50

jr_00a_4ee9:
	ld hl, $9c00                                     ; $4ee9: $21 $00 $9c
	call Call_00a_5092                               ; $4eec: $cd $92 $50
	ld hl, $9c20                                     ; $4eef: $21 $20 $9c
	ld e, $1a                                        ; $4ef2: $1e $1a
	ld a, $04                                        ; $4ef4: $3e $04
	call $1667                                       ; $4ef6: $cd $67 $16
	ld hl, $9c2c                                     ; $4ef9: $21 $2c $9c
	ld e, $0e                                        ; $4efc: $1e $0e
	ld a, $04                                        ; $4efe: $3e $04
	call $1667                                       ; $4f00: $cd $67 $16
	ld hl, $9ca0                                     ; $4f03: $21 $a0 $9c
	call Call_00a_509c                               ; $4f06: $cd $9c $50
	ld hl, $9c21                                     ; $4f09: $21 $21 $9c
	ld b, $05                                        ; $4f0c: $06 $05
	ld c, $57                                        ; $4f0e: $0e $57
	call Call_00a_50a6                               ; $4f10: $cd $a6 $50
	ld hl, $9c61                                     ; $4f13: $21 $61 $9c
	ld b, $05                                        ; $4f16: $06 $05
	ld c, $61                                        ; $4f18: $0e $61
	call Call_00a_50a6                               ; $4f1a: $cd $a6 $50
	ld hl, $9c26                                     ; $4f1d: $21 $26 $9c
	call Call_00a_4f6b                               ; $4f20: $cd $6b $4f
	ld hl, $9c66                                     ; $4f23: $21 $66 $9c
	ld a, [$d841]                                    ; $4f26: $fa $41 $d8
	cp $0f                                           ; $4f29: $fe $0f
	jr nc, jr_00a_4f32                               ; $4f2b: $30 $05

	call Call_00a_4f6b                               ; $4f2d: $cd $6b $4f
	jr jr_00a_4f35                                   ; $4f30: $18 $03

jr_00a_4f32:
	call Call_00a_4f88                               ; $4f32: $cd $88 $4f

jr_00a_4f35:
	ld a, [wInitialA]                                    ; $4f35: $fa $00 $c1
	cp $11                                           ; $4f38: $fe $11
	jr nz, jr_00a_4f56                               ; $4f3a: $20 $1a

	ld hl, $1c26                                     ; $4f3c: $21 $26 $1c
	ld a, $04                                        ; $4f3f: $3e $04

jr_00a_4f41:
	push af                                          ; $4f41: $f5
	push hl                                          ; $4f42: $e5
	ld a, $02                                        ; $4f43: $3e $02
	ld e, $00                                        ; $4f45: $1e $00
	call $165f                                       ; $4f47: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $4f4a: $cd $8b $14
	pop hl                                           ; $4f4d: $e1
	ld de, $0020                                     ; $4f4e: $11 $20 $00
	add hl, de                                       ; $4f51: $19
	pop af                                           ; $4f52: $f1
	dec a                                            ; $4f53: $3d
	jr nz, jr_00a_4f41                               ; $4f54: $20 $eb

jr_00a_4f56:
	ld hl, $9c28                                     ; $4f56: $21 $28 $9c
	ld b, $04                                        ; $4f59: $06 $04
	ld c, $6b                                        ; $4f5b: $0e $6b
	call Call_00a_50a6                               ; $4f5d: $cd $a6 $50
	ld hl, $9c68                                     ; $4f60: $21 $68 $9c
	ld b, $04                                        ; $4f63: $06 $04
	ld c, $73                                        ; $4f65: $0e $73
	call Call_00a_50a6                               ; $4f67: $cd $a6 $50
	ret                                              ; $4f6a: $c9


Call_00a_4f6b:
	push hl                                          ; $4f6b: $e5
	ld a, $02                                        ; $4f6c: $3e $02
	call EnqueueDataCopyType4FullHeader                                       ; $4f6e: $cd $83 $16
	ld [hl], $7e                                     ; $4f71: $36 $7e
	inc hl                                           ; $4f73: $23
	ld [hl], $7d                                     ; $4f74: $36 $7d
	pop hl                                           ; $4f76: $e1
	ld de, $0020                                     ; $4f77: $11 $20 $00
	add hl, de                                       ; $4f7a: $19
	ld a, $02                                        ; $4f7b: $3e $02
	call EnqueueDataCopyType4FullHeader                                       ; $4f7d: $cd $83 $16
	ld [hl], $7c                                     ; $4f80: $36 $7c
	inc hl                                           ; $4f82: $23
	ld [hl], $7b                                     ; $4f83: $36 $7b
	jp SafelyExecuteDataCopies                                         ; $4f85: $c3 $8b $14


Call_00a_4f88:
	push hl                                          ; $4f88: $e5
	ld a, $02                                        ; $4f89: $3e $02
	ld e, $56                                        ; $4f8b: $1e $56
	call $165f                                       ; $4f8d: $cd $5f $16
	pop hl                                           ; $4f90: $e1
	ld de, $0020                                     ; $4f91: $11 $20 $00
	add hl, de                                       ; $4f94: $19
	ld a, $02                                        ; $4f95: $3e $02
	ld e, $56                                        ; $4f97: $1e $56
	call $165f                                       ; $4f99: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $4f9c: $c3 $8b $14


Call_00a_4f9f:
	ld a, [wInitialA]                                    ; $4f9f: $fa $00 $c1
	cp $11                                           ; $4fa2: $fe $11
	jr nz, jr_00a_4fbc                               ; $4fa4: $20 $16

	ld hl, $1980                                     ; $4fa6: $21 $80 $19
	call Call_00a_506f                               ; $4fa9: $cd $6f $50
	ld hl, $19a0                                     ; $4fac: $21 $a0 $19
	ld e, $00                                        ; $4faf: $1e $00
	ld a, $04                                        ; $4fb1: $3e $04
	call $1667                                       ; $4fb3: $cd $67 $16
	ld hl, $1a20                                     ; $4fb6: $21 $20 $1a
	call Call_00a_506f                               ; $4fb9: $cd $6f $50

jr_00a_4fbc:
	ld hl, $9980                                     ; $4fbc: $21 $80 $99
	call Call_00a_5092                               ; $4fbf: $cd $92 $50
	ld hl, $99a0                                     ; $4fc2: $21 $a0 $99
	ld e, $1a                                        ; $4fc5: $1e $1a
	ld a, $04                                        ; $4fc7: $3e $04
	call $1667                                       ; $4fc9: $cd $67 $16
	ld hl, $9a20                                     ; $4fcc: $21 $20 $9a
	call Call_00a_509c                               ; $4fcf: $cd $9c $50
	ld hl, $99a1                                     ; $4fd2: $21 $a1 $99
	ld b, $06                                        ; $4fd5: $06 $06
	ld c, $4a                                        ; $4fd7: $0e $4a
	call Call_00a_50a6                               ; $4fd9: $cd $a6 $50
	ld hl, $99e1                                     ; $4fdc: $21 $e1 $99
	ld e, $56                                        ; $4fdf: $1e $56
	ld a, $06                                        ; $4fe1: $3e $06
	call $165f                                       ; $4fe3: $cd $5f $16
	ld hl, $9a01                                     ; $4fe6: $21 $01 $9a
	ld e, $56                                        ; $4fe9: $1e $56
	ld a, $06                                        ; $4feb: $3e $06
	call $165f                                       ; $4fed: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $4ff0: $cd $8b $14
	ld a, [wInitialA]                                    ; $4ff3: $fa $00 $c1
	cp $11                                           ; $4ff6: $fe $11
	ret nz                                           ; $4ff8: $c0

	ld hl, $19e1                                     ; $4ff9: $21 $e1 $19
	ld e, $00                                        ; $4ffc: $1e $00
	ld a, $06                                        ; $4ffe: $3e $06
	call $165f                                       ; $5000: $cd $5f $16
	ld hl, $1a01                                     ; $5003: $21 $01 $1a
	ld e, $00                                        ; $5006: $1e $00
	ld a, $06                                        ; $5008: $3e $06
	call $165f                                       ; $500a: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $500d: $cd $8b $14
	ret                                              ; $5010: $c9


Jump_00a_5011:
	call SafelyExecuteDataCopies                                       ; $5011: $cd $8b $14
	ld de, $5045                                     ; $5014: $11 $45 $50
	ld hl, $9c0d                                     ; $5017: $21 $0d $9c
	ld b, $07                                        ; $501a: $06 $07
	ld a, $06                                        ; $501c: $3e $06
	ld c, $00                                        ; $501e: $0e $00
	rst FarCall                                          ; $5020: $f7
	sbc a                                            ; $5021: $9f
	ld b, h                                          ; $5022: $44
	ld a, [bc]                                       ; $5023: $0a
	ld a, [wInitialA]                                    ; $5024: $fa $00 $c1
	cp $11                                           ; $5027: $fe $11
	ret nz                                           ; $5029: $c0

	ld hl, $1c0d                                     ; $502a: $21 $0d $1c
	ld a, $06                                        ; $502d: $3e $06

jr_00a_502f:
	push af                                          ; $502f: $f5
	push hl                                          ; $5030: $e5
	ld a, $07                                        ; $5031: $3e $07
	ld e, $01                                        ; $5033: $1e $01
	call $165f                                       ; $5035: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $5038: $cd $8b $14
	pop hl                                           ; $503b: $e1
	ld de, $0020                                     ; $503c: $11 $20 $00
	add hl, de                                       ; $503f: $19
	pop af                                           ; $5040: $f1
	dec a                                            ; $5041: $3d
	jr nz, jr_00a_502f                               ; $5042: $20 $eb

	ret                                              ; $5044: $c9


	jr jr_00a_505e                                   ; $5045: $18 $17

	ld d, $15                                        ; $5047: $16 $15
	dec b                                            ; $5049: $05
	dec b                                            ; $504a: $05
	rlca                                             ; $504b: $07
	ld a, [de]                                       ; $504c: $1a
	rrca                                             ; $504d: $0f
	dec c                                            ; $504e: $0d
	dec bc                                           ; $504f: $0b
	inc c                                            ; $5050: $0c
	inc c                                            ; $5051: $0c
	ld c, $1a                                        ; $5052: $0e $1a
	inc bc                                           ; $5054: $03
	ld [bc], a                                       ; $5055: $02
	ld [de], a                                       ; $5056: $12
	inc c                                            ; $5057: $0c
	inc c                                            ; $5058: $0c
	ld c, $1a                                        ; $5059: $0e $1a
	ld bc, $1904                                     ; $505b: $01 $04 $19

jr_00a_505e:
	inc c                                            ; $505e: $0c
	inc c                                            ; $505f: $0c
	ld c, $1a                                        ; $5060: $0e $1a
	ld [$0a09], sp                                   ; $5062: $08 $09 $0a
	inc c                                            ; $5065: $0c
	inc c                                            ; $5066: $0c
	ld c, $10                                        ; $5067: $0e $10
	ld de, $1413                                     ; $5069: $11 $13 $14
	ld b, $06                                        ; $506c: $06 $06
	nop                                              ; $506e: $00

Call_00a_506f:
	ld a, $0d                                        ; $506f: $3e $0d
	jr jr_00a_5075                                   ; $5071: $18 $02

Call_00a_5073:
Jump_00a_5073:
	ld a, $14                                        ; $5073: $3e $14

jr_00a_5075:
	ld e, $00                                        ; $5075: $1e $00
	call $165f                                       ; $5077: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $507a: $c3 $8b $14


Call_00a_507d:
Jump_00a_507d:
	push bc                                          ; $507d: $c5
	push de                                          ; $507e: $d5
	ld a, b                                          ; $507f: $78
	call EnqueueDataCopyType4FullHeader                                       ; $5080: $cd $83 $16
	pop de                                           ; $5083: $d1
	pop bc                                           ; $5084: $c1
	ld [hl], d                                       ; $5085: $72
	inc hl                                           ; $5086: $23
	dec b                                            ; $5087: $05
	dec b                                            ; $5088: $05
	ld a, c                                          ; $5089: $79

jr_00a_508a:
	ld [hl+], a                                      ; $508a: $22
	dec b                                            ; $508b: $05
	jr nz, jr_00a_508a                               ; $508c: $20 $fc

	ld [hl], e                                       ; $508e: $73
	jp SafelyExecuteDataCopies                                         ; $508f: $c3 $8b $14


Call_00a_5092:
	ld b, $0d                                        ; $5092: $06 $0d
	ld c, $05                                        ; $5094: $0e $05
	ld de, $1807                                     ; $5096: $11 $07 $18
	jp Jump_00a_507d                                 ; $5099: $c3 $7d $50


Call_00a_509c:
	ld b, $0d                                        ; $509c: $06 $0d
	ld c, $06                                        ; $509e: $0e $06
	ld de, $1000                                     ; $50a0: $11 $00 $10
	jp Jump_00a_507d                                 ; $50a3: $c3 $7d $50


Call_00a_50a6:
	push hl                                          ; $50a6: $e5
	push bc                                          ; $50a7: $c5
	call SafelyExecuteDataCopies                                       ; $50a8: $cd $8b $14
	pop bc                                           ; $50ab: $c1
	pop hl                                           ; $50ac: $e1
	push hl                                          ; $50ad: $e5
	push bc                                          ; $50ae: $c5
	call Call_00a_50d8                               ; $50af: $cd $d8 $50
	pop bc                                           ; $50b2: $c1
	pop hl                                           ; $50b3: $e1
	push hl                                          ; $50b4: $e5
	push bc                                          ; $50b5: $c5
	ld de, $0020                                     ; $50b6: $11 $20 $00
	add hl, de                                       ; $50b9: $19
	inc c                                            ; $50ba: $0c
	call Call_00a_50d8                               ; $50bb: $cd $d8 $50
	pop bc                                           ; $50be: $c1
	pop hl                                           ; $50bf: $e1
	ld a, [wInitialA]                                    ; $50c0: $fa $00 $c1
	cp $11                                           ; $50c3: $fe $11
	ret nz                                           ; $50c5: $c0

	ld de, $8000                                     ; $50c6: $11 $00 $80
	add hl, de                                       ; $50c9: $19
	ld a, b                                          ; $50ca: $78
	push af                                          ; $50cb: $f5
	push hl                                          ; $50cc: $e5
	call Call_00a_50e8                               ; $50cd: $cd $e8 $50
	pop hl                                           ; $50d0: $e1
	pop af                                           ; $50d1: $f1
	ld de, $0020                                     ; $50d2: $11 $20 $00
	add hl, de                                       ; $50d5: $19
	jr jr_00a_50e8                                   ; $50d6: $18 $10

Call_00a_50d8:
	push bc                                          ; $50d8: $c5
	ld a, b                                          ; $50d9: $78
	call EnqueueDataCopyType4FullHeader                                       ; $50da: $cd $83 $16
	pop bc                                           ; $50dd: $c1
	ld a, c                                          ; $50de: $79

jr_00a_50df:
	ld [hl+], a                                      ; $50df: $22
	inc a                                            ; $50e0: $3c
	inc a                                            ; $50e1: $3c
	dec b                                            ; $50e2: $05
	jr nz, jr_00a_50df                               ; $50e3: $20 $fa

	jp SafelyExecuteDataCopies                                         ; $50e5: $c3 $8b $14


Call_00a_50e8:
jr_00a_50e8:
	ld e, $00                                        ; $50e8: $1e $00
	call $165f                                       ; $50ea: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $50ed: $c3 $8b $14


	ld hl, $5181                                     ; $50f0: $21 $81 $51
	ld a, [$d840]                                    ; $50f3: $fa $40 $d8
	call $3c83                                       ; $50f6: $cd $83 $3c
	call Call_00a_513f                               ; $50f9: $cd $3f $51
	ld hl, $9802                                     ; $50fc: $21 $02 $98
	call Call_00a_5111                               ; $50ff: $cd $11 $51
	ld a, [$d841]                                    ; $5102: $fa $41 $d8
	cp $0f                                           ; $5105: $fe $0f
	ret nc                                           ; $5107: $d0

	ld hl, $5197                                     ; $5108: $21 $97 $51
	call $3c83                                       ; $510b: $cd $83 $3c
	jp Jump_00a_5128                                 ; $510e: $c3 $28 $51


Call_00a_5111:
	push hl                                          ; $5111: $e5
	call SafelyExecuteDataCopies                                       ; $5112: $cd $8b $14
	ld hl, $9570                                     ; $5115: $21 $70 $95
	ld b, $05                                        ; $5118: $06 $05
	call Call_00a_5156                               ; $511a: $cd $56 $51
	rst FarCall                                          ; $511d: $f7
	rrca                                             ; $511e: $0f
	ld b, h                                          ; $511f: $44
	add hl, bc                                       ; $5120: $09
	pop hl                                           ; $5121: $e1
	call Call_00a_5176                               ; $5122: $cd $76 $51
	jp Func_1c32                                         ; $5125: $c3 $32 $1c


Jump_00a_5128:
	push hl                                          ; $5128: $e5
	call SafelyExecuteDataCopies                                       ; $5129: $cd $8b $14
	ld hl, $9610                                     ; $512c: $21 $10 $96
	ld b, $05                                        ; $512f: $06 $05
	call Call_00a_5156                               ; $5131: $cd $56 $51
	rst FarCall                                          ; $5134: $f7
	inc d                                            ; $5135: $14
	ld b, h                                          ; $5136: $44
	add hl, bc                                       ; $5137: $09
	pop hl                                           ; $5138: $e1
	call Call_00a_5176                               ; $5139: $cd $76 $51
	jp Func_1c32                                         ; $513c: $c3 $32 $1c


Call_00a_513f:
	push hl                                          ; $513f: $e5
	call SafelyExecuteDataCopies                                       ; $5140: $cd $8b $14
	ld hl, $94a0                                     ; $5143: $21 $a0 $94
	ld b, $06                                        ; $5146: $06 $06
	call Call_00a_5156                               ; $5148: $cd $56 $51
	rst FarCall                                          ; $514b: $f7
	ld a, [bc]                                       ; $514c: $0a
	ld b, h                                          ; $514d: $44
	add hl, bc                                       ; $514e: $09
	pop hl                                           ; $514f: $e1
	call Call_00a_5176                               ; $5150: $cd $76 $51
	jp Func_1c32                                         ; $5153: $c3 $32 $1c


Call_00a_5156:
jr_00a_5156:
	push bc                                          ; $5156: $c5
	push hl                                          ; $5157: $e5
	ld a, $20                                        ; $5158: $3e $20
	call EnqueueDataCopyType4FullHeader                                       ; $515a: $cd $83 $16
	ld de, $0000                                     ; $515d: $11 $00 $00
	ld a, e                                          ; $5160: $7b
	ld b, $10                                        ; $5161: $06 $10

jr_00a_5163:
	ld [hl+], a                                      ; $5163: $22
	ld [hl], d                                       ; $5164: $72
	inc hl                                           ; $5165: $23
	dec b                                            ; $5166: $05
	jr nz, jr_00a_5163                               ; $5167: $20 $fa

	call SafelyExecuteDataCopies                                       ; $5169: $cd $8b $14
	pop hl                                           ; $516c: $e1
	ld de, $0020                                     ; $516d: $11 $20 $00
	add hl, de                                       ; $5170: $19
	pop bc                                           ; $5171: $c1
	dec b                                            ; $5172: $05
	jr nz, jr_00a_5156                               ; $5173: $20 $e1

	ret                                              ; $5175: $c9


Call_00a_5176:
	ld de, $88c7                                     ; $5176: $11 $c7 $88
	call wCpHLtoDE                                       ; $5179: $cd $80 $ce
	ld b, $1e                                        ; $517c: $06 $1e
	ret nc                                           ; $517e: $d0

	inc b                                            ; $517f: $04
	ret                                              ; $5180: $c9


	dec l                                            ; $5181: $2d
	adc c                                            ; $5182: $89
	ld a, $89                                        ; $5183: $3e $89
	ld c, l                                          ; $5185: $4d
	adc c                                            ; $5186: $89
	ld [hl], e                                       ; $5187: $73
	adc c                                            ; $5188: $89
	ld l, l                                          ; $5189: $6d
	adc c                                            ; $518a: $89
	ld h, a                                          ; $518b: $67
	adc c                                            ; $518c: $89
	ld h, a                                          ; $518d: $67
	adc c                                            ; $518e: $89
	ld e, c                                          ; $518f: $59
	adc c                                            ; $5190: $89
	ld h, a                                          ; $5191: $67
	adc c                                            ; $5192: $89
	ld [hl], e                                       ; $5193: $73
	adc c                                            ; $5194: $89
	ld e, [hl]                                       ; $5195: $5e
	adc c                                            ; $5196: $89
	jp c, $df88                                      ; $5197: $da $88 $df

	adc b                                            ; $519a: $88
	db $e4                                           ; $519b: $e4
	adc b                                            ; $519c: $88
	add sp, -$78                                     ; $519d: $e8 $88
	db $ed                                           ; $519f: $ed
	adc b                                            ; $51a0: $88
	ldh a, [c]                                       ; $51a1: $f2
	adc b                                            ; $51a2: $88
	rst FarCall                                          ; $51a3: $f7
	adc b                                            ; $51a4: $88
	db $fc                                           ; $51a5: $fc
	adc b                                            ; $51a6: $88
	rst $38                                          ; $51a7: $ff
	adc b                                            ; $51a8: $88
	dec b                                            ; $51a9: $05
	adc c                                            ; $51aa: $89
	dec bc                                           ; $51ab: $0b
	adc c                                            ; $51ac: $89
	ld [de], a                                       ; $51ad: $12
	adc c                                            ; $51ae: $89
	rla                                              ; $51af: $17
	adc c                                            ; $51b0: $89
	inc e                                            ; $51b1: $1c
	adc c                                            ; $51b2: $89
	ld hl, $b089                                     ; $51b3: $21 $89 $b0
	sub [hl]                                         ; $51b6: $96
	ld a, [hl]                                       ; $51b7: $7e
	rst JumpTable                                          ; $51b8: $c7
	rst SubAFromBC                                          ; $51b9: $e7
	ld d, c                                          ; $51ba: $51
	db $ed                                           ; $51bb: $ed
	ld d, c                                          ; $51bc: $51
	dec d                                            ; $51bd: $15
	ld d, d                                          ; $51be: $52
	rra                                              ; $51bf: $1f
	ld d, h                                          ; $51c0: $54
	inc l                                            ; $51c1: $2c
	ld d, h                                          ; $51c2: $54
	dec [hl]                                         ; $51c3: $35
	ld d, h                                          ; $51c4: $54
	ld [hl], d                                       ; $51c5: $72
	ld d, h                                          ; $51c6: $54
	adc h                                            ; $51c7: $8c
	ld d, d                                          ; $51c8: $52
	cp h                                             ; $51c9: $bc
	ld d, d                                          ; $51ca: $52
	db $eb                                           ; $51cb: $eb
	ld d, d                                          ; $51cc: $52
	ld c, $53                                        ; $51cd: $0e $53
	rra                                              ; $51cf: $1f
	ld d, d                                          ; $51d0: $52
	ld d, [hl]                                       ; $51d1: $56
	ld d, d                                          ; $51d2: $52
	ld a, a                                          ; $51d3: $7f
	ld d, d                                          ; $51d4: $52
	ld hl, $2e53                                     ; $51d5: $21 $53 $2e
	ld d, e                                          ; $51d8: $53
	ld b, d                                          ; $51d9: $42
	ld d, e                                          ; $51da: $53
	ld d, a                                          ; $51db: $57
	ld d, e                                          ; $51dc: $53
	add h                                            ; $51dd: $84
	ld d, e                                          ; $51de: $53
	sub [hl]                                         ; $51df: $96
	ld d, e                                          ; $51e0: $53
	cp c                                             ; $51e1: $b9
	ld d, e                                          ; $51e2: $53
	jp nc, $0453                                     ; $51e3: $d2 $53 $04

	ld d, h                                          ; $51e6: $54
	ld [hl], $01                                     ; $51e7: $36 $01
	call $3d58                                       ; $51e9: $cd $58 $3d
	ret                                              ; $51ec: $c9


	ld a, [$d884]                                    ; $51ed: $fa $84 $d8
	cp $03                                           ; $51f0: $fe $03
	jr z, jr_00a_51fc                                ; $51f2: $28 $08

	cp $07                                           ; $51f4: $fe $07
	jr nz, jr_00a_5211                               ; $51f6: $20 $19

	ld a, $03                                        ; $51f8: $3e $03
	jr jr_00a_5209                                   ; $51fa: $18 $0d

jr_00a_51fc:
	ld a, [$d845]                                    ; $51fc: $fa $45 $d8
	and $03                                          ; $51ff: $e6 $03
	jr z, jr_00a_5207                                ; $5201: $28 $04

	ld a, $07                                        ; $5203: $3e $07
	jr jr_00a_5209                                   ; $5205: $18 $02

jr_00a_5207:
	ld a, $0b                                        ; $5207: $3e $0b

jr_00a_5209:
	ld l, $0a                                        ; $5209: $2e $0a
	ld [hl], a                                       ; $520b: $77
	rst FarCall                                          ; $520c: $f7
	ld b, l                                          ; $520d: $45
	ld c, b                                          ; $520e: $48
	add hl, bc                                       ; $520f: $09
	ret                                              ; $5210: $c9


jr_00a_5211:
	call $3d58                                       ; $5211: $cd $58 $3d
	ret                                              ; $5214: $c9


	xor a                                            ; $5215: $af
	ld [$d848], a                                    ; $5216: $ea $48 $d8
	ld a, $01                                        ; $5219: $3e $01
	ld l, $0a                                        ; $521b: $2e $0a
	ld [hl], a                                       ; $521d: $77
	ret                                              ; $521e: $c9


	ld [hl], $0c                                     ; $521f: $36 $0c
	ld bc, $0402                                     ; $5221: $01 $02 $04
	call $3cd9                                       ; $5224: $cd $d9 $3c
	ld l, $30                                        ; $5227: $2e $30
	ld [hl], $03                                     ; $5229: $36 $03
	rst FarCall                                          ; $522b: $f7
	pop af                                           ; $522c: $f1
	ld b, h                                          ; $522d: $44
	add hl, bc                                       ; $522e: $09
	call $3bf4                                       ; $522f: $cd $f4 $3b
	call $3da5                                       ; $5232: $cd $a5 $3d
	ld bc, $501c                                     ; $5235: $01 $1c $50
	ld a, $30                                        ; $5238: $3e $30
	call $3bfc                                       ; $523a: $cd $fc $3b
	call $3d53                                       ; $523d: $cd $53 $3d
	rst FarCall                                          ; $5240: $f7
	ld b, [hl]                                       ; $5241: $46
	ld b, h                                          ; $5242: $44
	add hl, bc                                       ; $5243: $09
	ld bc, $63ee                                     ; $5244: $01 $ee $63
	call $18c4                                       ; $5247: $cd $c4 $18
	ld hl, $7f2b                                     ; $524a: $21 $2b $7f
	call $3c78                                       ; $524d: $cd $78 $3c
	ld a, $45                                        ; $5250: $3e $45
	call $1e2e                                       ; $5252: $cd $2e $1e
	ret                                              ; $5255: $c9


	call $16d0                                       ; $5256: $cd $d0 $16
	ld l, $0c                                        ; $5259: $2e $0c
	ld a, [hl]                                       ; $525b: $7e
	or a                                             ; $525c: $b7
	ret nz                                           ; $525d: $c0

	ld l, $30                                        ; $525e: $2e $30
	dec [hl]                                         ; $5260: $35
	jr z, jr_00a_5273                                ; $5261: $28 $10

	rst FarCall                                          ; $5263: $f7
	pop af                                           ; $5264: $f1
	ld b, h                                          ; $5265: $44
	add hl, bc                                       ; $5266: $09
	call $3bf4                                       ; $5267: $cd $f4 $3b
	ld l, $0c                                        ; $526a: $2e $0c
	inc [hl]                                         ; $526c: $34
	ld a, $45                                        ; $526d: $3e $45
	call $1e2e                                       ; $526f: $cd $2e $1e
	ret                                              ; $5272: $c9


jr_00a_5273:
	ld l, $0a                                        ; $5273: $2e $0a
	ld [hl], $0d                                     ; $5275: $36 $0d
	call $3d58                                       ; $5277: $cd $58 $3d
	rst FarCall                                          ; $527a: $f7
	jp c, $094a                                      ; $527b: $da $4a $09

	ret                                              ; $527e: $c9


	call $3ce2                                       ; $527f: $cd $e2 $3c
	ret nz                                           ; $5282: $c0

	ld l, $0a                                        ; $5283: $2e $0a
	ld [hl], $02                                     ; $5285: $36 $02
	rst FarCall                                          ; $5287: $f7
	halt                                             ; $5288: $76
	ld b, h                                          ; $5289: $44
	add hl, bc                                       ; $528a: $09
	ret                                              ; $528b: $c9


	ld [hl], $08                                     ; $528c: $36 $08
	ld l, $30                                        ; $528e: $2e $30
	ld [hl], $40                                     ; $5290: $36 $40
	ld de, $3347                                     ; $5292: $11 $47 $33
	call $3bf4                                       ; $5295: $cd $f4 $3b
	call $3da5                                       ; $5298: $cd $a5 $3d
	ld bc, $501b                                     ; $529b: $01 $1b $50
	ld a, $30                                        ; $529e: $3e $30
	call $3bfc                                       ; $52a0: $cd $fc $3b
	call $3d53                                       ; $52a3: $cd $53 $3d
	call $16d0                                       ; $52a6: $cd $d0 $16
	ld bc, $0403                                     ; $52a9: $01 $03 $04
	call $3cd9                                       ; $52ac: $cd $d9 $3c
	ld bc, $63ee                                     ; $52af: $01 $ee $63
	call $18c4                                       ; $52b2: $cd $c4 $18
	ld hl, $7f2b                                     ; $52b5: $21 $2b $7f
	call $3c78                                       ; $52b8: $cd $78 $3c
	ret                                              ; $52bb: $c9


	call $16d0                                       ; $52bc: $cd $d0 $16
	ld l, $30                                        ; $52bf: $2e $30
	dec [hl]                                         ; $52c1: $35
	ret nz                                           ; $52c2: $c0

	ld l, $0a                                        ; $52c3: $2e $0a
	ld [hl], $09                                     ; $52c5: $36 $09
	ld de, $4040                                     ; $52c7: $11 $40 $40
	call $3bf4                                       ; $52ca: $cd $f4 $3b
	call $3da5                                       ; $52cd: $cd $a5 $3d
	ld bc, $501a                                     ; $52d0: $01 $1a $50
	ld a, $30                                        ; $52d3: $3e $30
	call $3bfc                                       ; $52d5: $cd $fc $3b
	call $3d53                                       ; $52d8: $cd $53 $3d
	ld bc, $8838                                     ; $52db: $01 $38 $88
	ld de, $0100                                     ; $52de: $11 $00 $01
	rst FarCall                                          ; $52e1: $f7
	xor l                                            ; $52e2: $ad
	ld b, h                                          ; $52e3: $44
	add hl, bc                                       ; $52e4: $09
	ld a, $49                                        ; $52e5: $3e $49
	call $1e2e                                       ; $52e7: $cd $2e $1e
	ret                                              ; $52ea: $c9


	call $16d0                                       ; $52eb: $cd $d0 $16
	call $3d1b                                       ; $52ee: $cd $1b $3d
	ld l, $07                                        ; $52f1: $2e $07
	ld a, [hl]                                       ; $52f3: $7e
	cp $88                                           ; $52f4: $fe $88
	ret c                                            ; $52f6: $d8

	ld l, $0a                                        ; $52f7: $2e $0a
	ld [hl], $0a                                     ; $52f9: $36 $0a
	ld l, $30                                        ; $52fb: $2e $30
	ld [hl], $18                                     ; $52fd: $36 $18
	call $3da5                                       ; $52ff: $cd $a5 $3d
	ld de, $8838                                     ; $5302: $11 $38 $88
	ld bc, $4ad8                                     ; $5305: $01 $d8 $4a
	ld a, $30                                        ; $5308: $3e $30
	call $3d99                                       ; $530a: $cd $99 $3d
	ret                                              ; $530d: $c9


	call $3d4b                                       ; $530e: $cd $4b $3d
	ld l, $30                                        ; $5311: $2e $30
	dec [hl]                                         ; $5313: $35
	ret nz                                           ; $5314: $c0

	ld l, $0a                                        ; $5315: $2e $0a
	ld [hl], $0e                                     ; $5317: $36 $0e
	call $3d58                                       ; $5319: $cd $58 $3d
	rst FarCall                                          ; $531c: $f7
	jp c, $094a                                      ; $531d: $da $4a $09

	ret                                              ; $5320: $c9


	ld [hl], $0f                                     ; $5321: $36 $0f
	ld bc, $0404                                     ; $5323: $01 $04 $04
	call $3cd9                                       ; $5326: $cd $d9 $3c
	rst FarCall                                          ; $5329: $f7
	ld e, d                                          ; $532a: $5a
	ld b, h                                          ; $532b: $44
	add hl, bc                                       ; $532c: $09
	ret                                              ; $532d: $c9


	call $3ce2                                       ; $532e: $cd $e2 $3c
	ret nz                                           ; $5331: $c0

	ld l, $0a                                        ; $5332: $2e $0a
	ld [hl], $10                                     ; $5334: $36 $10
	ld bc, $0405                                     ; $5336: $01 $05 $04
	call $3cd9                                       ; $5339: $cd $d9 $3c
	ld a, $57                                        ; $533c: $3e $57
	call $1e2e                                       ; $533e: $cd $2e $1e
	ret                                              ; $5341: $c9


	call $3ce2                                       ; $5342: $cd $e2 $3c
	ret nz                                           ; $5345: $c0

	ld l, $0a                                        ; $5346: $2e $0a
	ld [hl], $11                                     ; $5348: $36 $11
	ld l, $30                                        ; $534a: $2e $30
	ld [hl], $3c                                     ; $534c: $36 $3c
	rst FarCall                                          ; $534e: $f7
	ld h, d                                          ; $534f: $62
	ld b, h                                          ; $5350: $44
	add hl, bc                                       ; $5351: $09
	rst FarCall                                          ; $5352: $f7
	adc b                                            ; $5353: $88
	ld b, h                                          ; $5354: $44
	add hl, bc                                       ; $5355: $09
	ret                                              ; $5356: $c9


	ld l, $30                                        ; $5357: $2e $30
	dec [hl]                                         ; $5359: $35
	ret nz                                           ; $535a: $c0

	ld [hl], $3c                                     ; $535b: $36 $3c
	ld l, $0a                                        ; $535d: $2e $0a
	ld [hl], $12                                     ; $535f: $36 $12
	call $3da5                                       ; $5361: $cd $a5 $3d
	ld de, $8c5c                                     ; $5364: $11 $5c $8c
	ld bc, $4b50                                     ; $5367: $01 $50 $4b
	ld a, $18                                        ; $536a: $3e $18
	call $3d99                                       ; $536c: $cd $99 $3d
	call $3d53                                       ; $536f: $cd $53 $3d
	ld bc, $63f6                                     ; $5372: $01 $f6 $63
	call $18c4                                       ; $5375: $cd $c4 $18
	ld hl, $7f39                                     ; $5378: $21 $39 $7f
	call $3c78                                       ; $537b: $cd $78 $3c
	ld a, $5c                                        ; $537e: $3e $5c
	call $1e2e                                       ; $5380: $cd $2e $1e
	ret                                              ; $5383: $c9


	call $3d4b                                       ; $5384: $cd $4b $3d
	ld l, $30                                        ; $5387: $2e $30
	dec [hl]                                         ; $5389: $35
	ret nz                                           ; $538a: $c0

	ld l, $0a                                        ; $538b: $2e $0a
	ld [hl], $13                                     ; $538d: $36 $13
	ld bc, $0407                                     ; $538f: $01 $07 $04
	call $3cd9                                       ; $5392: $cd $d9 $3c
	ret                                              ; $5395: $c9


	call $3ce2                                       ; $5396: $cd $e2 $3c
	ret nz                                           ; $5399: $c0

	ld l, $30                                        ; $539a: $2e $30
	ld [hl], $3c                                     ; $539c: $36 $3c
	ld l, $0a                                        ; $539e: $2e $0a
	ld [hl], $14                                     ; $53a0: $36 $14
	call $3da5                                       ; $53a2: $cd $a5 $3d
	ld bc, $5020                                     ; $53a5: $01 $20 $50
	ld a, $32                                        ; $53a8: $3e $32
	call $3bfc                                       ; $53aa: $cd $fc $3b
	call $3d53                                       ; $53ad: $cd $53 $3d
	call $16d0                                       ; $53b0: $cd $d0 $16
	ld a, $50                                        ; $53b3: $3e $50
	call $1e2e                                       ; $53b5: $cd $2e $1e
	ret                                              ; $53b8: $c9


	call $16d0                                       ; $53b9: $cd $d0 $16
	ld l, $0c                                        ; $53bc: $2e $0c
	ld a, [hl]                                       ; $53be: $7e
	or a                                             ; $53bf: $b7
	ret nz                                           ; $53c0: $c0

	ld l, $0a                                        ; $53c1: $2e $0a
	ld [hl], $15                                     ; $53c3: $36 $15
	ld l, $30                                        ; $53c5: $2e $30
	dec [hl]                                         ; $53c7: $35
	ret nz                                           ; $53c8: $c0

	ld [hl], $3c                                     ; $53c9: $36 $3c
	ld hl, $7f45                                     ; $53cb: $21 $45 $7f
	call $3c78                                       ; $53ce: $cd $78 $3c
	ret                                              ; $53d1: $c9


	ld l, $07                                        ; $53d2: $2e $07
	ld a, [hl]                                       ; $53d4: $7e
	sub $03                                          ; $53d5: $d6 $03
	ld [hl], a                                       ; $53d7: $77
	ld l, $30                                        ; $53d8: $2e $30
	ld a, [hl]                                       ; $53da: $7e
	cp $23                                           ; $53db: $fe $23
	jr nz, jr_00a_53e4                               ; $53dd: $20 $05

	ld a, $45                                        ; $53df: $3e $45
	call $1e2e                                       ; $53e1: $cd $2e $1e

jr_00a_53e4:
	dec [hl]                                         ; $53e4: $35
	ret nz                                           ; $53e5: $c0

	ld [hl], $4e                                     ; $53e6: $36 $4e
	ld l, $0a                                        ; $53e8: $2e $0a
	ld [hl], $16                                     ; $53ea: $36 $16
	call $3da5                                       ; $53ec: $cd $a5 $3d
	ld de, $2fd8                                     ; $53ef: $11 $d8 $2f
	ld bc, $4c0c                                     ; $53f2: $01 $0c $4c
	ld a, $32                                        ; $53f5: $3e $32
	call $3d99                                       ; $53f7: $cd $99 $3d
	call $3d53                                       ; $53fa: $cd $53 $3d
	ld hl, $7f4c                                     ; $53fd: $21 $4c $7f
	call $3c78                                       ; $5400: $cd $78 $3c
	ret                                              ; $5403: $c9


	ld l, $05                                        ; $5404: $2e $05
	inc [hl]                                         ; $5406: $34
	inc [hl]                                         ; $5407: $34
	inc [hl]                                         ; $5408: $34
	ld l, $30                                        ; $5409: $2e $30
	ld a, [hl]                                       ; $540b: $7e
	cp $26                                           ; $540c: $fe $26
	jr nz, jr_00a_5415                               ; $540e: $20 $05

	ld a, $45                                        ; $5410: $3e $45
	call $1e2e                                       ; $5412: $cd $2e $1e

jr_00a_5415:
	dec [hl]                                         ; $5415: $35
	ret nz                                           ; $5416: $c0

	ld l, $0a                                        ; $5417: $2e $0a
	ld [hl], $03                                     ; $5419: $36 $03
	call $3d58                                       ; $541b: $cd $58 $3d
	ret                                              ; $541e: $c9


	ld [hl], $04                                     ; $541f: $36 $04
	ld l, $30                                        ; $5421: $2e $30
	ld [hl], $5a                                     ; $5423: $36 $5a
	call $3c62                                       ; $5425: $cd $62 $3c
	call $3cf2                                       ; $5428: $cd $f2 $3c
	ret                                              ; $542b: $c9


	ld [hl], $05                                     ; $542c: $36 $05
	call $3c41                                       ; $542e: $cd $41 $3c
	call $3cee                                       ; $5431: $cd $ee $3c
	ret                                              ; $5434: $c9


	ld [hl], $06                                     ; $5435: $36 $06
	call $3da5                                       ; $5437: $cd $a5 $3d
	ld de, $2040                                     ; $543a: $11 $40 $20
	ld bc, $4b04                                     ; $543d: $01 $04 $4b
	ld a, $30                                        ; $5440: $3e $30
	call $3d99                                       ; $5442: $cd $99 $3d
	call $3d53                                       ; $5445: $cd $53 $3d
	ld de, $ffc0                                     ; $5448: $11 $c0 $ff
	ld bc, $ffc0                                     ; $544b: $01 $c0 $ff
	call $3d32                                       ; $544e: $cd $32 $3d
	ld bc, $63ee                                     ; $5451: $01 $ee $63
	call $18c4                                       ; $5454: $cd $c4 $18
	ld hl, $7f32                                     ; $5457: $21 $32 $7f
	call $3c78                                       ; $545a: $cd $78 $3c
	ld a, $10                                        ; $545d: $3e $10
	ld [$c800], a                                    ; $545f: $ea $00 $c8
	ld a, $11                                        ; $5462: $3e $11
	ld [$c900], a                                    ; $5464: $ea $00 $c9
	ld a, $12                                        ; $5467: $3e $12
	ld [$ca00], a                                    ; $5469: $ea $00 $ca
	ld a, $21                                        ; $546c: $3e $21
	call $1e2e                                       ; $546e: $cd $2e $1e
	ret                                              ; $5471: $c9


	call $3d1b                                       ; $5472: $cd $1b $3d
	call $3d13                                       ; $5475: $cd $13 $3d
	inc bc                                           ; $5478: $03
	ld l, $11                                        ; $5479: $2e $11
	ld a, c                                          ; $547b: $79
	ld [hl+], a                                      ; $547c: $22
	ld [hl], b                                       ; $547d: $70
	ld l, $07                                        ; $547e: $2e $07
	ld a, [hl]                                       ; $5480: $7e
	cp $10                                           ; $5481: $fe $10
	ret nc                                           ; $5483: $d0

	push af                                          ; $5484: $f5
	push hl                                          ; $5485: $e5
	call $3d4b                                       ; $5486: $cd $4b $3d
	ld hl, $c800                                     ; $5489: $21 $00 $c8
	call $3d4b                                       ; $548c: $cd $4b $3d
	inc h                                            ; $548f: $24
	call $3d4b                                       ; $5490: $cd $4b $3d
	inc h                                            ; $5493: $24
	call $3d4b                                       ; $5494: $cd $4b $3d
	pop hl                                           ; $5497: $e1
	pop af                                           ; $5498: $f1
	cp $01                                           ; $5499: $fe $01
	ret nc                                           ; $549b: $d0

	ld l, $0a                                        ; $549c: $2e $0a
	ld [hl], $02                                     ; $549e: $36 $02
	call $3d58                                       ; $54a0: $cd $58 $3d
	ld a, $09                                        ; $54a3: $3e $09
	ld [$d884], a                                    ; $54a5: $ea $84 $d8
	rst FarCall                                          ; $54a8: $f7
	halt                                             ; $54a9: $76
	ld b, h                                          ; $54aa: $44
	add hl, bc                                       ; $54ab: $09
	ld hl, $c800                                     ; $54ac: $21 $00 $c8
	call $2dfc                                       ; $54af: $cd $fc $2d
	ld hl, $c900                                     ; $54b2: $21 $00 $c9
	call $2dfc                                       ; $54b5: $cd $fc $2d
	ld hl, $ca00                                     ; $54b8: $21 $00 $ca
	call $2dfc                                       ; $54bb: $cd $fc $2d
	ret                                              ; $54be: $c9


	ld a, [hl]                                       ; $54bf: $7e
	rst JumpTable                                          ; $54c0: $c7
	pop af                                           ; $54c1: $f1
	ld d, h                                          ; $54c2: $54
	cp $54                                           ; $54c3: $fe $54
	ld h, $55                                        ; $54c5: $26 $55
	ld c, a                                          ; $54c7: $4f
	ld d, a                                          ; $54c8: $57
	ld e, [hl]                                       ; $54c9: $5e
	ld d, a                                          ; $54ca: $57
	ld l, l                                          ; $54cb: $6d
	ld d, a                                          ; $54cc: $57
	sbc l                                            ; $54cd: $9d
	ld d, l                                          ; $54ce: $55
	rst GetHLinHL                                          ; $54cf: $cf
	ld d, l                                          ; $54d0: $55
	ldh [c], a                                       ; $54d1: $e2
	ld d, l                                          ; $54d2: $55
	db $eb                                           ; $54d3: $eb
	ld d, l                                          ; $54d4: $55
	dec d                                            ; $54d5: $15
	ld d, [hl]                                       ; $54d6: $56
	ld [hl-], a                                      ; $54d7: $32
	ld d, [hl]                                       ; $54d8: $56
	ld e, d                                          ; $54d9: $5a
	ld d, [hl]                                       ; $54da: $56
	ld h, e                                          ; $54db: $63
	ld d, [hl]                                       ; $54dc: $56
	ld a, b                                          ; $54dd: $78
	ld d, [hl]                                       ; $54de: $56
	and l                                            ; $54df: $a5
	ld d, [hl]                                       ; $54e0: $56
	or a                                             ; $54e1: $b7
	ld d, [hl]                                       ; $54e2: $56
	pop de                                           ; $54e3: $d1
	ld d, [hl]                                       ; $54e4: $56
	add hl, de                                       ; $54e5: $19
	ld d, a                                          ; $54e6: $57
	ld a, h                                          ; $54e7: $7c
	ld d, a                                          ; $54e8: $57
	adc c                                            ; $54e9: $89
	ld d, a                                          ; $54ea: $57
	jr nc, @+$57                                     ; $54eb: $30 $55

	ld h, a                                          ; $54ed: $67
	ld d, l                                          ; $54ee: $55
	sub b                                            ; $54ef: $90
	ld d, l                                          ; $54f0: $55
	ld [hl], $01                                     ; $54f1: $36 $01
	call $3d58                                       ; $54f3: $cd $58 $3d
	call $3cee                                       ; $54f6: $cd $ee $3c
	xor a                                            ; $54f9: $af
	ld [$d8a9], a                                    ; $54fa: $ea $a9 $d8
	ret                                              ; $54fd: $c9


	ld a, [$d884]                                    ; $54fe: $fa $84 $d8
	cp $03                                           ; $5501: $fe $03
	jr z, jr_00a_550d                                ; $5503: $28 $08

	cp $07                                           ; $5505: $fe $07
	jr nz, jr_00a_5522                               ; $5507: $20 $19

	ld a, $03                                        ; $5509: $3e $03
	jr jr_00a_551a                                   ; $550b: $18 $0d

jr_00a_550d:
	ld a, [$d845]                                    ; $550d: $fa $45 $d8
	and $03                                          ; $5510: $e6 $03
	jr z, jr_00a_5518                                ; $5512: $28 $04

	ld a, $06                                        ; $5514: $3e $06
	jr jr_00a_551a                                   ; $5516: $18 $02

jr_00a_5518:
	ld a, $15                                        ; $5518: $3e $15

jr_00a_551a:
	ld l, $0a                                        ; $551a: $2e $0a
	ld [hl], a                                       ; $551c: $77
	rst FarCall                                          ; $551d: $f7
	ld b, l                                          ; $551e: $45
	ld c, b                                          ; $551f: $48
	add hl, bc                                       ; $5520: $09
	ret                                              ; $5521: $c9


jr_00a_5522:
	call $3d58                                       ; $5522: $cd $58 $3d
	ret                                              ; $5525: $c9


	xor a                                            ; $5526: $af
	ld [$d848], a                                    ; $5527: $ea $48 $d8
	ld a, $01                                        ; $552a: $3e $01
	ld l, $0a                                        ; $552c: $2e $0a
	ld [hl], a                                       ; $552e: $77
	ret                                              ; $552f: $c9


	ld [hl], $16                                     ; $5530: $36 $16
	ld bc, $0502                                     ; $5532: $01 $02 $05
	call $3cd9                                       ; $5535: $cd $d9 $3c
	ld l, $30                                        ; $5538: $2e $30
	ld [hl], $03                                     ; $553a: $36 $03
	rst FarCall                                          ; $553c: $f7
	pop af                                           ; $553d: $f1
	ld b, h                                          ; $553e: $44
	add hl, bc                                       ; $553f: $09
	call $3bf4                                       ; $5540: $cd $f4 $3b
	call $3da5                                       ; $5543: $cd $a5 $3d
	ld bc, $5018                                     ; $5546: $01 $18 $50
	ld a, $30                                        ; $5549: $3e $30
	call $3bfc                                       ; $554b: $cd $fc $3b
	call $3d53                                       ; $554e: $cd $53 $3d
	ld a, $09                                        ; $5551: $3e $09
	call $1e2e                                       ; $5553: $cd $2e $1e
	rst FarCall                                          ; $5556: $f7
	ld b, [hl]                                       ; $5557: $46
	ld b, h                                          ; $5558: $44
	add hl, bc                                       ; $5559: $09
	ld bc, $63e6                                     ; $555a: $01 $e6 $63
	call $18c4                                       ; $555d: $cd $c4 $18
	ld hl, $7f1d                                     ; $5560: $21 $1d $7f
	call $3c78                                       ; $5563: $cd $78 $3c
	ret                                              ; $5566: $c9


	call $16d0                                       ; $5567: $cd $d0 $16
	ld l, $0c                                        ; $556a: $2e $0c
	ld a, [hl]                                       ; $556c: $7e
	or a                                             ; $556d: $b7
	ret nz                                           ; $556e: $c0

	ld l, $30                                        ; $556f: $2e $30
	dec [hl]                                         ; $5571: $35
	jr z, jr_00a_5584                                ; $5572: $28 $10

	rst FarCall                                          ; $5574: $f7
	pop af                                           ; $5575: $f1
	ld b, h                                          ; $5576: $44
	add hl, bc                                       ; $5577: $09
	call $3bf4                                       ; $5578: $cd $f4 $3b
	ld l, $0c                                        ; $557b: $2e $0c
	inc [hl]                                         ; $557d: $34
	ld a, $09                                        ; $557e: $3e $09
	call $1e2e                                       ; $5580: $cd $2e $1e
	ret                                              ; $5583: $c9


jr_00a_5584:
	ld l, $0a                                        ; $5584: $2e $0a
	ld [hl], $17                                     ; $5586: $36 $17
	call $3d58                                       ; $5588: $cd $58 $3d
	rst FarCall                                          ; $558b: $f7
	jp c, $094a                                      ; $558c: $da $4a $09

	ret                                              ; $558f: $c9


	call $3ce2                                       ; $5590: $cd $e2 $3c
	ret nz                                           ; $5593: $c0

	ld l, $0a                                        ; $5594: $2e $0a
	ld [hl], $02                                     ; $5596: $36 $02
	rst FarCall                                          ; $5598: $f7
	halt                                             ; $5599: $76
	ld b, h                                          ; $559a: $44
	add hl, bc                                       ; $559b: $09
	ret                                              ; $559c: $c9


	ld [hl], $07                                     ; $559d: $36 $07
	ld l, $30                                        ; $559f: $2e $30
	ld [hl], $20                                     ; $55a1: $36 $20
	ld de, $4050                                     ; $55a3: $11 $50 $40
	call $3bf4                                       ; $55a6: $cd $f4 $3b
	ld bc, $5019                                     ; $55a9: $01 $19 $50
	ld a, $30                                        ; $55ac: $3e $30
	call $3bfc                                       ; $55ae: $cd $fc $3b
	call $3d53                                       ; $55b1: $cd $53 $3d
	ld a, $0c                                        ; $55b4: $3e $0c
	ld [$ca00], a                                    ; $55b6: $ea $00 $ca
	ld bc, $63e6                                     ; $55b9: $01 $e6 $63
	call $18c4                                       ; $55bc: $cd $c4 $18
	ld hl, $7f1d                                     ; $55bf: $21 $1d $7f
	call $3c78                                       ; $55c2: $cd $78 $3c
	rst FarCall                                          ; $55c5: $f7
	inc d                                            ; $55c6: $14
	ld c, b                                          ; $55c7: $48
	ld a, [bc]                                       ; $55c8: $0a
	ld a, $64                                        ; $55c9: $3e $64
	call $1e2e                                       ; $55cb: $cd $2e $1e
	ret                                              ; $55ce: $c9


	call $16d0                                       ; $55cf: $cd $d0 $16
	ld l, $0c                                        ; $55d2: $2e $0c
	ld a, [hl]                                       ; $55d4: $7e
	or a                                             ; $55d5: $b7
	ret nz                                           ; $55d6: $c0

	ld l, $0a                                        ; $55d7: $2e $0a
	ld [hl], $08                                     ; $55d9: $36 $08
	ld bc, $0503                                     ; $55db: $01 $03 $05
	call $3cd9                                       ; $55de: $cd $d9 $3c
	ret                                              ; $55e1: $c9


	call $3ce2                                       ; $55e2: $cd $e2 $3c
	ret nz                                           ; $55e5: $c0

	ld l, $0a                                        ; $55e6: $2e $0a
	ld [hl], $09                                     ; $55e8: $36 $09
	ret                                              ; $55ea: $c9


	ld a, [$d8a9]                                    ; $55eb: $fa $a9 $d8
	sub $03                                          ; $55ee: $d6 $03
	cp $c8                                           ; $55f0: $fe $c8
	jr nc, jr_00a_5607                               ; $55f2: $30 $13

	ld l, $30                                        ; $55f4: $2e $30
	ld [hl], $2a                                     ; $55f6: $36 $2a
	ld l, $0a                                        ; $55f8: $2e $0a
	ld [hl], $0a                                     ; $55fa: $36 $0a
	rst FarCall                                          ; $55fc: $f7
	ld d, d                                          ; $55fd: $52
	ld b, h                                          ; $55fe: $44
	add hl, bc                                       ; $55ff: $09
	ld a, $46                                        ; $5600: $3e $46
	call $1e2e                                       ; $5602: $cd $2e $1e
	ld a, $c8                                        ; $5605: $3e $c8

jr_00a_5607:
	ld [$d8a9], a                                    ; $5607: $ea $a9 $d8
	ld de, $4050                                     ; $560a: $11 $50 $40
	ld b, a                                          ; $560d: $47
	ld a, d                                          ; $560e: $7a
	sub b                                            ; $560f: $90
	ld d, a                                          ; $5610: $57
	call $3bf4                                       ; $5611: $cd $f4 $3b
	ret                                              ; $5614: $c9


	ld l, $30                                        ; $5615: $2e $30
	dec [hl]                                         ; $5617: $35
	ret nz                                           ; $5618: $c0

	ld l, $0a                                        ; $5619: $2e $0a
	ld [hl], $0b                                     ; $561b: $36 $0b
	call $3da5                                       ; $561d: $cd $a5 $3d
	ld bc, $4a08                                     ; $5620: $01 $08 $4a
	call $3d3d                                       ; $5623: $cd $3d $3d
	call $3d53                                       ; $5626: $cd $53 $3d
	rst FarCall                                          ; $5629: $f7
	ld e, d                                          ; $562a: $5a
	ld b, h                                          ; $562b: $44
	add hl, bc                                       ; $562c: $09
	rst FarCall                                          ; $562d: $f7
	jp c, $094a                                      ; $562e: $da $4a $09

	ret                                              ; $5631: $c9


	ld a, [$d8a9]                                    ; $5632: $fa $a9 $d8
	add $03                                          ; $5635: $c6 $03
	jr nc, jr_00a_564c                               ; $5637: $30 $13

	ld l, $0a                                        ; $5639: $2e $0a
	ld [hl], $0c                                     ; $563b: $36 $0c
	call $3d58                                       ; $563d: $cd $58 $3d
	call $3cee                                       ; $5640: $cd $ee $3c
	push hl                                          ; $5643: $e5
	ld hl, $ca00                                     ; $5644: $21 $00 $ca
	call $2dfc                                       ; $5647: $cd $fc $2d
	pop hl                                           ; $564a: $e1
	xor a                                            ; $564b: $af

jr_00a_564c:
	ld [$d8a9], a                                    ; $564c: $ea $a9 $d8
	ld de, $4050                                     ; $564f: $11 $50 $40
	ld b, a                                          ; $5652: $47
	ld a, d                                          ; $5653: $7a
	sub b                                            ; $5654: $90
	ld d, a                                          ; $5655: $57
	call $3bf4                                       ; $5656: $cd $f4 $3b
	ret                                              ; $5659: $c9


	ld [hl], $0d                                     ; $565a: $36 $0d
	ld bc, $0504                                     ; $565c: $01 $04 $05
	call $3cd9                                       ; $565f: $cd $d9 $3c
	ret                                              ; $5662: $c9


	call $3ce2                                       ; $5663: $cd $e2 $3c
	ret nz                                           ; $5666: $c0

	ld l, $0a                                        ; $5667: $2e $0a
	ld [hl], $0e                                     ; $5669: $36 $0e
	ld l, $30                                        ; $566b: $2e $30
	ld [hl], $3c                                     ; $566d: $36 $3c
	rst FarCall                                          ; $566f: $f7
	ld h, d                                          ; $5670: $62
	ld b, h                                          ; $5671: $44
	add hl, bc                                       ; $5672: $09
	rst FarCall                                          ; $5673: $f7
	adc b                                            ; $5674: $88
	ld b, h                                          ; $5675: $44
	add hl, bc                                       ; $5676: $09
	ret                                              ; $5677: $c9


	ld l, $30                                        ; $5678: $2e $30
	dec [hl]                                         ; $567a: $35
	ret nz                                           ; $567b: $c0

	ld [hl], $3c                                     ; $567c: $36 $3c
	ld l, $0a                                        ; $567e: $2e $0a
	ld [hl], $0f                                     ; $5680: $36 $0f
	call $3da5                                       ; $5682: $cd $a5 $3d
	ld de, $8c58                                     ; $5685: $11 $58 $8c
	ld bc, $4c3c                                     ; $5688: $01 $3c $4c
	ld a, $18                                        ; $568b: $3e $18
	call $3d99                                       ; $568d: $cd $99 $3d
	call $3d53                                       ; $5690: $cd $53 $3d
	ld bc, $63fa                                     ; $5693: $01 $fa $63
	call $18c4                                       ; $5696: $cd $c4 $18
	ld hl, $7f53                                     ; $5699: $21 $53 $7f
	call $3c78                                       ; $569c: $cd $78 $3c
	ld a, $26                                        ; $569f: $3e $26
	call $1e2e                                       ; $56a1: $cd $2e $1e
	ret                                              ; $56a4: $c9


	call $3d4b                                       ; $56a5: $cd $4b $3d
	ld l, $30                                        ; $56a8: $2e $30
	dec [hl]                                         ; $56aa: $35
	ret nz                                           ; $56ab: $c0

	ld l, $0a                                        ; $56ac: $2e $0a
	ld [hl], $10                                     ; $56ae: $36 $10
	ld bc, $0507                                     ; $56b0: $01 $07 $05
	call $3cd9                                       ; $56b3: $cd $d9 $3c
	ret                                              ; $56b6: $c9


	call $3ce2                                       ; $56b7: $cd $e2 $3c
	ret nz                                           ; $56ba: $c0

	ld l, $0a                                        ; $56bb: $2e $0a
	ld [hl], $11                                     ; $56bd: $36 $11
	call $3da5                                       ; $56bf: $cd $a5 $3d
	ld bc, $5021                                     ; $56c2: $01 $21 $50
	ld a, $30                                        ; $56c5: $3e $30
	call $3bfc                                       ; $56c7: $cd $fc $3b
	call $3d53                                       ; $56ca: $cd $53 $3d
	call $16d0                                       ; $56cd: $cd $d0 $16
	ret                                              ; $56d0: $c9


	call $16d0                                       ; $56d1: $cd $d0 $16
	ld l, $0c                                        ; $56d4: $2e $0c
	ld a, [hl]                                       ; $56d6: $7e
	or a                                             ; $56d7: $b7
	ret nz                                           ; $56d8: $c0

	ld l, $30                                        ; $56d9: $2e $30
	ld [hl], $64                                     ; $56db: $36 $64
	ld l, $31                                        ; $56dd: $2e $31
	ld [hl], $00                                     ; $56df: $36 $00
	ld l, $0a                                        ; $56e1: $2e $0a
	ld [hl], $12                                     ; $56e3: $36 $12
	ld bc, $050a                                     ; $56e5: $01 $0a $05
	call $3cd9                                       ; $56e8: $cd $d9 $3c
	call $3da5                                       ; $56eb: $cd $a5 $3d
	ld bc, $5022                                     ; $56ee: $01 $22 $50
	ld a, $30                                        ; $56f1: $3e $30
	call $3bfc                                       ; $56f3: $cd $fc $3b
	push hl                                          ; $56f6: $e5
	ld hl, $c800                                     ; $56f7: $21 $00 $c8
	ld [hl], $0d                                     ; $56fa: $36 $0d
	ld l, $30                                        ; $56fc: $2e $30
	ld [hl], $00                                     ; $56fe: $36 $00
	ld hl, $c900                                     ; $5700: $21 $00 $c9
	ld [hl], $0d                                     ; $5703: $36 $0d
	ld l, $30                                        ; $5705: $2e $30
	ld [hl], $01                                     ; $5707: $36 $01
	ld hl, $ca00                                     ; $5709: $21 $00 $ca
	ld [hl], $0d                                     ; $570c: $36 $0d
	ld l, $30                                        ; $570e: $2e $30
	ld [hl], $02                                     ; $5710: $36 $02
	pop hl                                           ; $5712: $e1
	ld a, $6f                                        ; $5713: $3e $6f
	call $1e2e                                       ; $5715: $cd $2e $1e
	ret                                              ; $5718: $c9


	call $16d0                                       ; $5719: $cd $d0 $16
	ld l, $30                                        ; $571c: $2e $30
	dec [hl]                                         ; $571e: $35
	ret nz                                           ; $571f: $c0

	ld l, $31                                        ; $5720: $2e $31
	ld a, [hl]                                       ; $5722: $7e
	or a                                             ; $5723: $b7
	jr nz, jr_00a_5728                               ; $5724: $20 $02

	inc [hl]                                         ; $5726: $34
	ret                                              ; $5727: $c9


jr_00a_5728:
	call $3da5                                       ; $5728: $cd $a5 $3d
	ld de, $8c58                                     ; $572b: $11 $58 $8c
	ld bc, $4c3c                                     ; $572e: $01 $3c $4c
	ld a, $18                                        ; $5731: $3e $18
	call $3d99                                       ; $5733: $cd $99 $3d
	ld l, $0a                                        ; $5736: $2e $0a
	ld [hl], $03                                     ; $5738: $36 $03
	push hl                                          ; $573a: $e5
	ld hl, $c800                                     ; $573b: $21 $00 $c8
	call $2dfc                                       ; $573e: $cd $fc $2d
	ld hl, $c900                                     ; $5741: $21 $00 $c9
	call $2dfc                                       ; $5744: $cd $fc $2d
	ld hl, $ca00                                     ; $5747: $21 $00 $ca
	call $2dfc                                       ; $574a: $cd $fc $2d
	pop hl                                           ; $574d: $e1
	ret                                              ; $574e: $c9


	ld [hl], $04                                     ; $574f: $36 $04
	ld l, $30                                        ; $5751: $2e $30
	ld [hl], $5a                                     ; $5753: $36 $5a
	call $3c62                                       ; $5755: $cd $62 $3c
	ld a, $34                                        ; $5758: $3e $34
	call $1e2e                                       ; $575a: $cd $2e $1e
	ret                                              ; $575d: $c9


	call $3ce7                                       ; $575e: $cd $e7 $3c
	ld l, $30                                        ; $5761: $2e $30
	dec [hl]                                         ; $5763: $35
	ret nz                                           ; $5764: $c0

	ld l, $0a                                        ; $5765: $2e $0a
	ld [hl], $05                                     ; $5767: $36 $05
	call $3cf2                                       ; $5769: $cd $f2 $3c
	ret                                              ; $576c: $c9


	ld [hl], $13                                     ; $576d: $36 $13
	ld bc, $050b                                     ; $576f: $01 $0b $05
	call $3cd9                                       ; $5772: $cd $d9 $3c
	call $3c41                                       ; $5775: $cd $41 $3c
	call $3cee                                       ; $5778: $cd $ee $3c
	ret                                              ; $577b: $c9


	call $3ce2                                       ; $577c: $cd $e2 $3c
	ret nz                                           ; $577f: $c0

	ld l, $0a                                        ; $5780: $2e $0a
	ld [hl], $14                                     ; $5782: $36 $14
	ld l, $30                                        ; $5784: $2e $30
	ld [hl], $3c                                     ; $5786: $36 $3c
	ret                                              ; $5788: $c9


	call $3d4b                                       ; $5789: $cd $4b $3d
	ld l, $30                                        ; $578c: $2e $30
	dec [hl]                                         ; $578e: $35
	ret nz                                           ; $578f: $c0

	ld l, $0a                                        ; $5790: $2e $0a
	ld [hl], $02                                     ; $5792: $36 $02
	call $3d58                                       ; $5794: $cd $58 $3d
	rst FarCall                                          ; $5797: $f7
	halt                                             ; $5798: $76
	ld b, h                                          ; $5799: $44
	add hl, bc                                       ; $579a: $09
	ld a, $09                                        ; $579b: $3e $09
	ld [$d884], a                                    ; $579d: $ea $84 $d8
	ret                                              ; $57a0: $c9


	ld a, [hl]                                       ; $57a1: $7e
	rst JumpTable                                          ; $57a2: $c7
	rst GetHLinHL                                          ; $57a3: $cf
	ld d, a                                          ; $57a4: $57
	push de                                          ; $57a5: $d5
	ld d, a                                          ; $57a6: $57
	db $fd                                           ; $57a7: $fd
	ld d, a                                          ; $57a8: $57
	ld h, a                                          ; $57a9: $67
	ld e, d                                          ; $57aa: $5a
	adc c                                            ; $57ab: $89
	ld e, d                                          ; $57ac: $5a
	sbc b                                            ; $57ad: $98
	ld e, d                                          ; $57ae: $5a
	ld [hl], a                                       ; $57af: $77
	ld e, b                                          ; $57b0: $58
	xor h                                            ; $57b1: $ac
	ld e, b                                          ; $57b2: $58
	rst SubAFromBC                                          ; $57b3: $e7
	ld e, b                                          ; $57b4: $58
	inc h                                            ; $57b5: $24
	ld e, c                                          ; $57b6: $59
	rlca                                             ; $57b7: $07
	ld e, b                                          ; $57b8: $58
	ld b, c                                          ; $57b9: $41
	ld e, b                                          ; $57ba: $58
	ld l, d                                          ; $57bb: $6a
	ld e, b                                          ; $57bc: $58
	ld c, h                                          ; $57bd: $4c
	ld e, c                                          ; $57be: $59
	ld e, c                                          ; $57bf: $59
	ld e, c                                          ; $57c0: $59
	ld l, [hl]                                       ; $57c1: $6e
	ld e, c                                          ; $57c2: $59
	sub [hl]                                         ; $57c3: $96
	ld e, c                                          ; $57c4: $59
	xor e                                            ; $57c5: $ab
	ld e, c                                          ; $57c6: $59
	db $d3                                           ; $57c7: $d3
	ld e, c                                          ; $57c8: $59
	add hl, de                                       ; $57c9: $19
	ld e, d                                          ; $57ca: $5a
	and a                                            ; $57cb: $a7
	ld e, d                                          ; $57cc: $5a
	or h                                             ; $57cd: $b4
	ld e, d                                          ; $57ce: $5a
	ld [hl], $01                                     ; $57cf: $36 $01
	call $3d58                                       ; $57d1: $cd $58 $3d
	ret                                              ; $57d4: $c9


	ld a, [$d884]                                    ; $57d5: $fa $84 $d8
	cp $03                                           ; $57d8: $fe $03
	jr z, jr_00a_57e4                                ; $57da: $28 $08

	cp $07                                           ; $57dc: $fe $07
	jr nz, jr_00a_57f9                               ; $57de: $20 $19

	ld a, $03                                        ; $57e0: $3e $03
	jr jr_00a_57f1                                   ; $57e2: $18 $0d

jr_00a_57e4:
	ld a, [$d845]                                    ; $57e4: $fa $45 $d8
	and $03                                          ; $57e7: $e6 $03
	jr z, jr_00a_57ef                                ; $57e9: $28 $04

	ld a, $06                                        ; $57eb: $3e $06
	jr jr_00a_57f1                                   ; $57ed: $18 $02

jr_00a_57ef:
	ld a, $0a                                        ; $57ef: $3e $0a

jr_00a_57f1:
	ld l, $0a                                        ; $57f1: $2e $0a
	ld [hl], a                                       ; $57f3: $77
	rst FarCall                                          ; $57f4: $f7
	ld b, l                                          ; $57f5: $45
	ld c, b                                          ; $57f6: $48
	add hl, bc                                       ; $57f7: $09
	ret                                              ; $57f8: $c9


jr_00a_57f9:
	call $3d58                                       ; $57f9: $cd $58 $3d
	ret                                              ; $57fc: $c9


	xor a                                            ; $57fd: $af
	ld [$d848], a                                    ; $57fe: $ea $48 $d8
	ld a, $01                                        ; $5801: $3e $01
	ld l, $0a                                        ; $5803: $2e $0a
	ld [hl], a                                       ; $5805: $77
	ret                                              ; $5806: $c9


	ld [hl], $0b                                     ; $5807: $36 $0b
	ld bc, $0302                                     ; $5809: $01 $02 $03
	call $3cd9                                       ; $580c: $cd $d9 $3c
	ld l, $30                                        ; $580f: $2e $30
	ld [hl], $03                                     ; $5811: $36 $03
	rst FarCall                                          ; $5813: $f7
	pop af                                           ; $5814: $f1
	ld b, h                                          ; $5815: $44
	add hl, bc                                       ; $5816: $09
	call $3bf4                                       ; $5817: $cd $f4 $3b
	call $3da5                                       ; $581a: $cd $a5 $3d
	ld bc, $501e                                     ; $581d: $01 $1e $50
	ld a, $30                                        ; $5820: $3e $30
	call $3bfc                                       ; $5822: $cd $fc $3b
	call $3d53                                       ; $5825: $cd $53 $3d
	call $16d0                                       ; $5828: $cd $d0 $16
	ld a, $45                                        ; $582b: $3e $45
	call $1e2e                                       ; $582d: $cd $2e $1e
	rst FarCall                                          ; $5830: $f7
	ld b, [hl]                                       ; $5831: $46
	ld b, h                                          ; $5832: $44
	add hl, bc                                       ; $5833: $09
	ld bc, $63ea                                     ; $5834: $01 $ea $63
	call $18c4                                       ; $5837: $cd $c4 $18
	ld hl, $7f24                                     ; $583a: $21 $24 $7f
	call $3c78                                       ; $583d: $cd $78 $3c
	ret                                              ; $5840: $c9


	call $16d0                                       ; $5841: $cd $d0 $16
	ld l, $0c                                        ; $5844: $2e $0c
	ld a, [hl]                                       ; $5846: $7e
	or a                                             ; $5847: $b7
	ret nz                                           ; $5848: $c0

	ld l, $30                                        ; $5849: $2e $30
	dec [hl]                                         ; $584b: $35
	jr z, jr_00a_585e                                ; $584c: $28 $10

	rst FarCall                                          ; $584e: $f7
	pop af                                           ; $584f: $f1
	ld b, h                                          ; $5850: $44
	add hl, bc                                       ; $5851: $09
	call $3bf4                                       ; $5852: $cd $f4 $3b
	ld l, $0c                                        ; $5855: $2e $0c
	inc [hl]                                         ; $5857: $34
	ld a, $45                                        ; $5858: $3e $45
	call $1e2e                                       ; $585a: $cd $2e $1e
	ret                                              ; $585d: $c9


jr_00a_585e:
	ld l, $0a                                        ; $585e: $2e $0a
	ld [hl], $0c                                     ; $5860: $36 $0c
	call $3d58                                       ; $5862: $cd $58 $3d
	rst FarCall                                          ; $5865: $f7
	jp c, $094a                                      ; $5866: $da $4a $09

	ret                                              ; $5869: $c9


	call $3ce2                                       ; $586a: $cd $e2 $3c
	ret nz                                           ; $586d: $c0

	ld l, $0a                                        ; $586e: $2e $0a
	ld [hl], $02                                     ; $5870: $36 $02
	rst FarCall                                          ; $5872: $f7
	halt                                             ; $5873: $76
	ld b, h                                          ; $5874: $44
	add hl, bc                                       ; $5875: $09
	ret                                              ; $5876: $c9


	ld [hl], $07                                     ; $5877: $36 $07
	ld l, $30                                        ; $5879: $2e $30
	ld [hl], $2d                                     ; $587b: $36 $2d
	ld bc, $0303                                     ; $587d: $01 $03 $03
	call $3cd9                                       ; $5880: $cd $d9 $3c
	ld de, $3130                                     ; $5883: $11 $30 $31
	call $3bf4                                       ; $5886: $cd $f4 $3b
	call $3da5                                       ; $5889: $cd $a5 $3d
	ld bc, $501f                                     ; $588c: $01 $1f $50
	ld a, $30                                        ; $588f: $3e $30
	call $3bfc                                       ; $5891: $cd $fc $3b
	call $3d53                                       ; $5894: $cd $53 $3d
	call $16d0                                       ; $5897: $cd $d0 $16
	ld bc, $63ea                                     ; $589a: $01 $ea $63
	call $18c4                                       ; $589d: $cd $c4 $18
	ld hl, $7f24                                     ; $58a0: $21 $24 $7f
	call $3c78                                       ; $58a3: $cd $78 $3c
	ld a, $35                                        ; $58a6: $3e $35
	call $1e2e                                       ; $58a8: $cd $2e $1e
	ret                                              ; $58ab: $c9


	call $16d0                                       ; $58ac: $cd $d0 $16
	ld l, $30                                        ; $58af: $2e $30
	dec [hl]                                         ; $58b1: $35
	ret nz                                           ; $58b2: $c0

	ld l, $0a                                        ; $58b3: $2e $0a
	ld [hl], $08                                     ; $58b5: $36 $08
	ld l, $31                                        ; $58b7: $2e $31
	xor a                                            ; $58b9: $af
	ld [hl+], a                                      ; $58ba: $22
	ld [hl], a                                       ; $58bb: $77
	ld de, $4850                                     ; $58bc: $11 $50 $48
	call $3bf4                                       ; $58bf: $cd $f4 $3b
	call $3da5                                       ; $58c2: $cd $a5 $3d
	ld bc, $501d                                     ; $58c5: $01 $1d $50
	ld a, $30                                        ; $58c8: $3e $30
	call $3bfc                                       ; $58ca: $cd $fc $3b
	call $3d53                                       ; $58cd: $cd $53 $3d
	ld bc, $c024                                     ; $58d0: $01 $24 $c0
	ld de, $0200                                     ; $58d3: $11 $00 $02
	rst FarCall                                          ; $58d6: $f7
	xor l                                            ; $58d7: $ad
	ld b, h                                          ; $58d8: $44
	add hl, bc                                       ; $58d9: $09
	call $3c36                                       ; $58da: $cd $36 $3c
	ld hl, $47e7                                     ; $58dd: $21 $e7 $47
	call $3c1d                                       ; $58e0: $cd $1d $3c
	call $3cf2                                       ; $58e3: $cd $f2 $3c
	ret                                              ; $58e6: $c9


	ld l, $31                                        ; $58e7: $2e $31
	ld a, [hl]                                       ; $58e9: $7e
	and $0f                                          ; $58ea: $e6 $0f
	jr nz, jr_00a_58f3                               ; $58ec: $20 $05

	ld a, $66                                        ; $58ee: $3e $66
	call $1e2e                                       ; $58f0: $cd $2e $1e

jr_00a_58f3:
	inc [hl]                                         ; $58f3: $34
	call $16d0                                       ; $58f4: $cd $d0 $16
	call $3d1b                                       ; $58f7: $cd $1b $3d
	ld l, $07                                        ; $58fa: $2e $07
	ld a, [hl]                                       ; $58fc: $7e
	cp $84                                           ; $58fd: $fe $84
	ret c                                            ; $58ff: $d8

	push af                                          ; $5900: $f5
	ld l, $32                                        ; $5901: $2e $32
	ld a, [hl]                                       ; $5903: $7e
	or a                                             ; $5904: $b7
	jr nz, jr_00a_5911                               ; $5905: $20 $0a

	inc [hl]                                         ; $5907: $34
	rst FarCall                                          ; $5908: $f7
	ld d, d                                          ; $5909: $52
	ld b, h                                          ; $590a: $44
	add hl, bc                                       ; $590b: $09
	ld a, $45                                        ; $590c: $3e $45
	call $1e2e                                       ; $590e: $cd $2e $1e

jr_00a_5911:
	pop af                                           ; $5911: $f1
	cp $c0                                           ; $5912: $fe $c0
	ret c                                            ; $5914: $d8

	ld l, $0a                                        ; $5915: $2e $0a
	ld [hl], $09                                     ; $5917: $36 $09
	ld bc, $4850                                     ; $5919: $01 $50 $48
	ld de, $fe00                                     ; $591c: $11 $00 $fe
	rst FarCall                                          ; $591f: $f7
	xor l                                            ; $5920: $ad
	ld b, h                                          ; $5921: $44
	add hl, bc                                       ; $5922: $09
	ret                                              ; $5923: $c9


	ld l, $31                                        ; $5924: $2e $31
	ld a, [hl]                                       ; $5926: $7e
	and $0f                                          ; $5927: $e6 $0f
	jr nz, jr_00a_5930                               ; $5929: $20 $05

	ld a, $66                                        ; $592b: $3e $66
	call $1e2e                                       ; $592d: $cd $2e $1e

jr_00a_5930:
	inc [hl]                                         ; $5930: $34
	call $16d0                                       ; $5931: $cd $d0 $16
	call $3d1b                                       ; $5934: $cd $1b $3d
	ld l, $07                                        ; $5937: $2e $07
	ld a, [hl]                                       ; $5939: $7e
	cp $40                                           ; $593a: $fe $40
	ret nc                                           ; $593c: $d0

	ld l, $0a                                        ; $593d: $2e $0a
	ld [hl], $0d                                     ; $593f: $36 $0d
	call $3d58                                       ; $5941: $cd $58 $3d
	call $3cee                                       ; $5944: $cd $ee $3c
	rst FarCall                                          ; $5947: $f7
	jp c, $094a                                      ; $5948: $da $4a $09

	ret                                              ; $594b: $c9


	ld [hl], $0e                                     ; $594c: $36 $0e
	ld bc, $0304                                     ; $594e: $01 $04 $03
	call $3cd9                                       ; $5951: $cd $d9 $3c
	rst FarCall                                          ; $5954: $f7
	ld e, d                                          ; $5955: $5a
	ld b, h                                          ; $5956: $44
	add hl, bc                                       ; $5957: $09
	ret                                              ; $5958: $c9


	call $3ce2                                       ; $5959: $cd $e2 $3c
	ret nz                                           ; $595c: $c0

	ld l, $0a                                        ; $595d: $2e $0a
	ld [hl], $0f                                     ; $595f: $36 $0f
	ld l, $30                                        ; $5961: $2e $30
	ld [hl], $3c                                     ; $5963: $36 $3c
	rst FarCall                                          ; $5965: $f7
	ld h, d                                          ; $5966: $62
	ld b, h                                          ; $5967: $44
	add hl, bc                                       ; $5968: $09
	rst FarCall                                          ; $5969: $f7
	adc b                                            ; $596a: $88
	ld b, h                                          ; $596b: $44
	add hl, bc                                       ; $596c: $09
	ret                                              ; $596d: $c9


	ld l, $30                                        ; $596e: $2e $30
	dec [hl]                                         ; $5970: $35
	ret nz                                           ; $5971: $c0

	ld [hl], $3c                                     ; $5972: $36 $3c
	ld l, $0a                                        ; $5974: $2e $0a
	ld [hl], $10                                     ; $5976: $36 $10
	call $3da5                                       ; $5978: $cd $a5 $3d
	ld de, $8c58                                     ; $597b: $11 $58 $8c
	ld bc, $4d4c                                     ; $597e: $01 $4c $4d
	ld a, $24                                        ; $5981: $3e $24
	call $3d99                                       ; $5983: $cd $99 $3d
	call $3d53                                       ; $5986: $cd $53 $3d
	ld bc, $63fe                                     ; $5989: $01 $fe $63
	call $18c4                                       ; $598c: $cd $c4 $18
	ld hl, $7f5f                                     ; $598f: $21 $5f $7f
	call $3c78                                       ; $5992: $cd $78 $3c
	ret                                              ; $5995: $c9


	call $3d4b                                       ; $5996: $cd $4b $3d
	ld l, $30                                        ; $5999: $2e $30
	dec [hl]                                         ; $599b: $35
	ret nz                                           ; $599c: $c0

	call $3d53                                       ; $599d: $cd $53 $3d
	ld l, $0a                                        ; $59a0: $2e $0a
	ld [hl], $11                                     ; $59a2: $36 $11
	ld bc, $0306                                     ; $59a4: $01 $06 $03
	call $3cd9                                       ; $59a7: $cd $d9 $3c
	ret                                              ; $59aa: $c9


	call $3ce2                                       ; $59ab: $cd $e2 $3c
	ret nz                                           ; $59ae: $c0

	ld l, $0a                                        ; $59af: $2e $0a
	ld [hl], $12                                     ; $59b1: $36 $12
	ld l, $30                                        ; $59b3: $2e $30
	ld [hl], $64                                     ; $59b5: $36 $64
	ld l, $31                                        ; $59b7: $2e $31
	xor a                                            ; $59b9: $af
	ld [hl], a                                       ; $59ba: $77
	push hl                                          ; $59bb: $e5
	ld hl, $c700                                     ; $59bc: $21 $00 $c7
	ld a, $00                                        ; $59bf: $3e $00
	ld b, $0e                                        ; $59c1: $06 $0e
	ld c, $04                                        ; $59c3: $0e $04

jr_00a_59c5:
	ld l, $00                                        ; $59c5: $2e $00
	ld [hl], b                                       ; $59c7: $70
	ld l, $32                                        ; $59c8: $2e $32
	ld [hl], a                                       ; $59ca: $77
	inc h                                            ; $59cb: $24
	add $04                                          ; $59cc: $c6 $04
	dec c                                            ; $59ce: $0d
	jr nz, jr_00a_59c5                               ; $59cf: $20 $f4

	pop hl                                           ; $59d1: $e1
	ret                                              ; $59d2: $c9


	ld l, $31                                        ; $59d3: $2e $31
	ld a, [hl]                                       ; $59d5: $7e
	or a                                             ; $59d6: $b7
	jr nz, jr_00a_59df                               ; $59d7: $20 $06

	ld a, $42                                        ; $59d9: $3e $42
	call $1e2e                                       ; $59db: $cd $2e $1e
	xor a                                            ; $59de: $af

jr_00a_59df:
	inc a                                            ; $59df: $3c
	cp $20                                           ; $59e0: $fe $20
	jr c, jr_00a_59e5                                ; $59e2: $38 $01

	xor a                                            ; $59e4: $af

jr_00a_59e5:
	ld [hl], a                                       ; $59e5: $77
	ld l, $30                                        ; $59e6: $2e $30
	dec [hl]                                         ; $59e8: $35
	ret nz                                           ; $59e9: $c0

	ld l, $0a                                        ; $59ea: $2e $0a
	ld [hl], $13                                     ; $59ec: $36 $13
	call $3da5                                       ; $59ee: $cd $a5 $3d
	ld bc, $5025                                     ; $59f1: $01 $25 $50
	ld a, $30                                        ; $59f4: $3e $30
	call $3bfc                                       ; $59f6: $cd $fc $3b
	push hl                                          ; $59f9: $e5
	ld hl, $c700                                     ; $59fa: $21 $00 $c7
	call $2dfc                                       ; $59fd: $cd $fc $2d
	ld hl, $c800                                     ; $5a00: $21 $00 $c8
	call $2dfc                                       ; $5a03: $cd $fc $2d
	ld hl, $c900                                     ; $5a06: $21 $00 $c9
	call $2dfc                                       ; $5a09: $cd $fc $2d
	ld hl, $ca00                                     ; $5a0c: $21 $00 $ca
	call $2dfc                                       ; $5a0f: $cd $fc $2d
	pop hl                                           ; $5a12: $e1
	ld a, $59                                        ; $5a13: $3e $59
	call $1e2e                                       ; $5a15: $cd $2e $1e
	ret                                              ; $5a18: $c9


	call $16d0                                       ; $5a19: $cd $d0 $16
	ld l, $0c                                        ; $5a1c: $2e $0c
	ld a, [hl]                                       ; $5a1e: $7e
	or a                                             ; $5a1f: $b7
	jr z, jr_00a_5a54                                ; $5a20: $28 $32

	ld l, $30                                        ; $5a22: $2e $30
	ld a, [hl]                                       ; $5a24: $7e
	inc a                                            ; $5a25: $3c
	cp $5a                                           ; $5a26: $fe $5a
	jr c, jr_00a_5a2c                                ; $5a28: $38 $02

	ld a, $5a                                        ; $5a2a: $3e $5a

jr_00a_5a2c:
	ld [hl], a                                       ; $5a2c: $77
	ld b, $03                                        ; $5a2d: $06 $03
	cp $08                                           ; $5a2f: $fe $08
	jr z, jr_00a_5a48                                ; $5a31: $28 $15

	dec b                                            ; $5a33: $05
	cp $18                                           ; $5a34: $fe $18
	jr z, jr_00a_5a43                                ; $5a36: $28 $0b

	dec b                                            ; $5a38: $05
	cp $28                                           ; $5a39: $fe $28
	jr z, jr_00a_5a48                                ; $5a3b: $28 $0b

	dec b                                            ; $5a3d: $05
	cp $38                                           ; $5a3e: $fe $38
	jr z, jr_00a_5a48                                ; $5a40: $28 $06

	ret                                              ; $5a42: $c9


jr_00a_5a43:
	ld a, $54                                        ; $5a43: $3e $54
	call $1e2e                                       ; $5a45: $cd $2e $1e

jr_00a_5a48:
	ld a, b                                          ; $5a48: $78
	ld hl, $c700                                     ; $5a49: $21 $00 $c7
	add h                                            ; $5a4c: $84
	ld h, a                                          ; $5a4d: $67
	ld [hl], $0f                                     ; $5a4e: $36 $0f
	ld l, $30                                        ; $5a50: $2e $30
	ld [hl], b                                       ; $5a52: $70
	ret                                              ; $5a53: $c9


jr_00a_5a54:
	ld l, $0a                                        ; $5a54: $2e $0a
	ld [hl], $03                                     ; $5a56: $36 $03
	call $3da5                                       ; $5a58: $cd $a5 $3d
	ld de, $8c58                                     ; $5a5b: $11 $58 $8c
	ld bc, $4d4c                                     ; $5a5e: $01 $4c $4d
	ld a, $24                                        ; $5a61: $3e $24
	call $3d99                                       ; $5a63: $cd $99 $3d
	ret                                              ; $5a66: $c9


	ld [hl], $04                                     ; $5a67: $36 $04
	ld l, $30                                        ; $5a69: $2e $30
	ld [hl], $5a                                     ; $5a6b: $36 $5a
	call $3c62                                       ; $5a6d: $cd $62 $3c
	ld hl, $c700                                     ; $5a70: $21 $00 $c7
	call $2dfc                                       ; $5a73: $cd $fc $2d
	ld hl, $c800                                     ; $5a76: $21 $00 $c8
	call $2dfc                                       ; $5a79: $cd $fc $2d
	ld hl, $c900                                     ; $5a7c: $21 $00 $c9
	call $2dfc                                       ; $5a7f: $cd $fc $2d
	ld hl, $ca00                                     ; $5a82: $21 $00 $ca
	call $2dfc                                       ; $5a85: $cd $fc $2d
	ret                                              ; $5a88: $c9


	call $3ce7                                       ; $5a89: $cd $e7 $3c

Call_00a_5a8c:
	ld l, $30                                        ; $5a8c: $2e $30

Call_00a_5a8e:
	dec [hl]                                         ; $5a8e: $35
	ret nz                                           ; $5a8f: $c0

	ld l, $0a                                        ; $5a90: $2e $0a

Jump_00a_5a92:
	ld [hl], $05                                     ; $5a92: $36 $05

Call_00a_5a94:
	call $3cf2                                       ; $5a94: $cd $f2 $3c
	ret                                              ; $5a97: $c9


	ld [hl], $14                                     ; $5a98: $36 $14
	call $3c41                                       ; $5a9a: $cd $41 $3c
	call $3cee                                       ; $5a9d: $cd $ee $3c
	ld bc, $0309                                     ; $5aa0: $01 $09 $03
	call $3cd9                                       ; $5aa3: $cd $d9 $3c
	ret                                              ; $5aa6: $c9


	call $3ce2                                       ; $5aa7: $cd $e2 $3c
	ret nz                                           ; $5aaa: $c0

	ld l, $0a                                        ; $5aab: $2e $0a
	ld [hl], $15                                     ; $5aad: $36 $15
	ld l, $30                                        ; $5aaf: $2e $30
	ld [hl], $3c                                     ; $5ab1: $36 $3c
	ret                                              ; $5ab3: $c9


	call $3d4b                                       ; $5ab4: $cd $4b $3d
	ld l, $30                                        ; $5ab7: $2e $30
	dec [hl]                                         ; $5ab9: $35
	ret nz                                           ; $5aba: $c0

	ld l, $0a                                        ; $5abb: $2e $0a
	ld [hl], $02                                     ; $5abd: $36 $02
	call $3d58                                       ; $5abf: $cd $58 $3d
	rst FarCall                                          ; $5ac2: $f7
	halt                                             ; $5ac3: $76
	ld b, h                                          ; $5ac4: $44
	add hl, bc                                       ; $5ac5: $09
	ld a, $09                                        ; $5ac6: $3e $09
	ld [$d884], a                                    ; $5ac8: $ea $84 $d8
	ret                                              ; $5acb: $c9


	ld a, [hl]                                       ; $5acc: $7e
	rst JumpTable                                          ; $5acd: $c7
	ld h, h                                          ; $5ace: $64
	ld e, e                                          ; $5acf: $5b
	ld [hl], c                                       ; $5ad0: $71
	ld e, e                                          ; $5ad1: $5b
	xor l                                            ; $5ad2: $ad
	ld e, e                                          ; $5ad3: $5b
	ld hl, sp+$5d                                    ; $5ad4: $f8 $5d
	ld bc, $135e                                     ; $5ad6: $01 $5e $13
	ld e, [hl]                                       ; $5ad9: $5e
	inc h                                            ; $5ada: $24
	ld e, [hl]                                       ; $5adb: $5e
	inc sp                                           ; $5adc: $33
	ld e, [hl]                                       ; $5add: $5e
	or a                                             ; $5ade: $b7
	ld e, e                                          ; $5adf: $5b
	ret nz                                           ; $5ae0: $c0

	ld e, e                                          ; $5ae1: $5b
	ret                                              ; $5ae2: $c9


	ld e, e                                          ; $5ae3: $5b
	daa                                              ; $5ae4: $27
	ld e, h                                          ; $5ae5: $5c
	ld [hl], d                                       ; $5ae6: $72
	ld e, h                                          ; $5ae7: $5c
	xor l                                            ; $5ae8: $ad
	ld e, h                                          ; $5ae9: $5c
	jp $195c                                         ; $5aea: $c3 $5c $19


	ld e, l                                          ; $5aed: $5d
	ld d, b                                          ; $5aee: $50
	ld e, l                                          ; $5aef: $5d
	ld l, c                                          ; $5af0: $69
	ld e, l                                          ; $5af1: $5d
	sbc [hl]                                         ; $5af2: $9e
	ld e, l                                          ; $5af3: $5d
	call z, $ef5d                                    ; $5af4: $cc $5d $ef
	ld e, l                                          ; $5af7: $5d
	and b                                            ; $5af8: $a0
	ld e, h                                          ; $5af9: $5c
	xor h                                            ; $5afa: $ac
	ld h, b                                          ; $5afb: $60
	rst SubAFromDE                                          ; $5afc: $df
	ld h, b                                          ; $5afd: $60
	ld b, c                                          ; $5afe: $41
	ld e, [hl]                                       ; $5aff: $5e
	add $5e                                          ; $5b00: $c6 $5e
	db $eb                                           ; $5b02: $eb
	ld e, [hl]                                       ; $5b03: $5e
	db $f4                                           ; $5b04: $f4
	ld e, [hl]                                       ; $5b05: $5e
	ld b, $5f                                        ; $5b06: $06 $5f
	ld h, $5f                                        ; $5b08: $26 $5f
	ld e, e                                          ; $5b0a: $5b
	ld e, a                                          ; $5b0b: $5f
	ld [hl], a                                       ; $5b0c: $77
	ld e, a                                          ; $5b0d: $5f
	sbc c                                            ; $5b0e: $99
	ld e, a                                          ; $5b0f: $5f
	or l                                             ; $5b10: $b5
	ld e, a                                          ; $5b11: $5f
	rst JumpTable                                          ; $5b12: $c7
	ld e, a                                          ; $5b13: $5f
	call nc, $e35f                                   ; $5b14: $d4 $5f $e3
	ld e, a                                          ; $5b17: $5f
	db $fc                                           ; $5b18: $fc
	ld e, a                                          ; $5b19: $5f
	jr jr_00a_5b7c                                   ; $5b1a: $18 $60

	ld [hl], $60                                     ; $5b1c: $36 $60
	halt                                             ; $5b1e: $76
	ld h, b                                          ; $5b1f: $60
	adc a                                            ; $5b20: $8f
	ld h, b                                          ; $5b21: $60
	push af                                          ; $5b22: $f5
	ld h, b                                          ; $5b23: $60
	dec l                                            ; $5b24: $2d
	ld h, c                                          ; $5b25: $61
	db $f4                                           ; $5b26: $f4
	ld h, e                                          ; $5b27: $63
	db $fd                                           ; $5b28: $fd
	ld h, e                                          ; $5b29: $63
	ld a, [de]                                       ; $5b2a: $1a
	ld h, h                                          ; $5b2b: $64
	inc hl                                           ; $5b2c: $23
	ld h, h                                          ; $5b2d: $64
	ld [hl-], a                                      ; $5b2e: $32
	ld h, h                                          ; $5b2f: $64
	ld b, c                                          ; $5b30: $41
	ld h, h                                          ; $5b31: $64
	ld b, h                                          ; $5b32: $44
	ld h, c                                          ; $5b33: $61
	ld a, d                                          ; $5b34: $7a
	ld h, c                                          ; $5b35: $61
	add e                                            ; $5b36: $83
	ld h, c                                          ; $5b37: $61
	sub b                                            ; $5b38: $90
	ld h, c                                          ; $5b39: $61
	cp [hl]                                          ; $5b3a: $be
	ld h, c                                          ; $5b3b: $61
	di                                               ; $5b3c: $f3
	ld h, c                                          ; $5b3d: $61
	rrca                                             ; $5b3e: $0f
	ld h, d                                          ; $5b3f: $62
	jr @+$64                                         ; $5b40: $18 $62

	inc [hl]                                         ; $5b42: $34
	ld h, d                                          ; $5b43: $62
	ld d, e                                          ; $5b44: $53
	ld h, d                                          ; $5b45: $62
	ld a, h                                          ; $5b46: $7c
	ld h, d                                          ; $5b47: $62
	xor h                                            ; $5b48: $ac
	ld h, d                                          ; $5b49: $62
	jp $d962                                         ; $5b4a: $c3 $62 $d9


	ld h, d                                          ; $5b4d: $62
	db $eb                                           ; $5b4e: $eb
	ld h, d                                          ; $5b4f: $62
	ld a, [de]                                       ; $5b50: $1a
	ld h, e                                          ; $5b51: $63
	add hl, hl                                       ; $5b52: $29
	ld h, e                                          ; $5b53: $63
	dec sp                                           ; $5b54: $3b
	ld h, e                                          ; $5b55: $63
	ld c, l                                          ; $5b56: $4d
	ld h, e                                          ; $5b57: $63
	ld a, c                                          ; $5b58: $79
	ld h, e                                          ; $5b59: $63
	sbc d                                            ; $5b5a: $9a
	ld h, e                                          ; $5b5b: $63
	xor h                                            ; $5b5c: $ac
	ld h, e                                          ; $5b5d: $63
	cp [hl]                                          ; $5b5e: $be
	ld h, e                                          ; $5b5f: $63
	sbc $63                                          ; $5b60: $de $63
	scf                                              ; $5b62: $37
	ld h, c                                          ; $5b63: $61
	ld [hl], $01                                     ; $5b64: $36 $01
	call $3d58                                       ; $5b66: $cd $58 $3d
	call $3cee                                       ; $5b69: $cd $ee $3c
	xor a                                            ; $5b6c: $af
	ld [$d8b3], a                                    ; $5b6d: $ea $b3 $d8
	ret                                              ; $5b70: $c9


	ld a, [$d884]                                    ; $5b71: $fa $84 $d8
	cp $03                                           ; $5b74: $fe $03
	jr z, jr_00a_5b90                                ; $5b76: $28 $18

	cp $06                                           ; $5b78: $fe $06
	jr c, jr_00a_5ba9                                ; $5b7a: $38 $2d

jr_00a_5b7c:
	jr z, jr_00a_5ba9                                ; $5b7c: $28 $2b

	cp $08                                           ; $5b7e: $fe $08
	jr c, jr_00a_5b88                                ; $5b80: $38 $06

	cp $0f                                           ; $5b82: $fe $0f
	jr z, jr_00a_5b8c                                ; $5b84: $28 $06

	jr jr_00a_5ba9                                   ; $5b86: $18 $21

jr_00a_5b88:
	ld a, $03                                        ; $5b88: $3e $03
	jr jr_00a_5ba5                                   ; $5b8a: $18 $19

jr_00a_5b8c:
	ld a, $18                                        ; $5b8c: $3e $18
	jr jr_00a_5ba5                                   ; $5b8e: $18 $15

jr_00a_5b90:
	ld a, [$d845]                                    ; $5b90: $fa $45 $d8
	and $07                                          ; $5b93: $e6 $07
	jr z, jr_00a_5b9f                                ; $5b95: $28 $08

	cp $02                                           ; $5b97: $fe $02
	jr c, jr_00a_5ba3                                ; $5b99: $38 $08

	jr z, jr_00a_5ba3                                ; $5b9b: $28 $06

	jr jr_00a_5ba3                                   ; $5b9d: $18 $04

jr_00a_5b9f:
	ld a, $08                                        ; $5b9f: $3e $08
	jr jr_00a_5ba5                                   ; $5ba1: $18 $02

jr_00a_5ba3:
	ld a, $0a                                        ; $5ba3: $3e $0a

jr_00a_5ba5:
	ld l, $0a                                        ; $5ba5: $2e $0a
	ld [hl], a                                       ; $5ba7: $77
	ret                                              ; $5ba8: $c9


jr_00a_5ba9:
	call $3d58                                       ; $5ba9: $cd $58 $3d
	ret                                              ; $5bac: $c9


	xor a                                            ; $5bad: $af
	ld [$d848], a                                    ; $5bae: $ea $48 $d8
	ld a, $01                                        ; $5bb1: $3e $01
	ld l, $0a                                        ; $5bb3: $2e $0a
	ld [hl], a                                       ; $5bb5: $77
	ret                                              ; $5bb6: $c9


	ld [hl], $09                                     ; $5bb7: $36 $09
	ld bc, $0806                                     ; $5bb9: $01 $06 $08
	call $3cd9                                       ; $5bbc: $cd $d9 $3c
	ret                                              ; $5bbf: $c9


	call $3ce2                                       ; $5bc0: $cd $e2 $3c
	ret nz                                           ; $5bc3: $c0

	ld l, $0a                                        ; $5bc4: $2e $0a
	ld [hl], $02                                     ; $5bc6: $36 $02
	ret                                              ; $5bc8: $c9


	ld l, $0a                                        ; $5bc9: $2e $0a
	ld a, [$d845]                                    ; $5bcb: $fa $45 $d8
	and $07                                          ; $5bce: $e6 $07
	cp $03                                           ; $5bd0: $fe $03
	jr nz, jr_00a_5bd8                               ; $5bd2: $20 $04

	ld a, $0e                                        ; $5bd4: $3e $0e
	jr jr_00a_5be2                                   ; $5bd6: $18 $0a

jr_00a_5bd8:
	cp $05                                           ; $5bd8: $fe $05
	jr nz, jr_00a_5be0                               ; $5bda: $20 $04

	ld a, $10                                        ; $5bdc: $3e $10
	jr jr_00a_5be2                                   ; $5bde: $18 $02

jr_00a_5be0:
	ld a, $0b                                        ; $5be0: $3e $0b

jr_00a_5be2:
	ld [hl], a                                       ; $5be2: $77
	ld l, $30                                        ; $5be3: $2e $30
	ld [hl], $32                                     ; $5be5: $36 $32
	ld a, [$d8b1]                                    ; $5be7: $fa $b1 $d8
	ld bc, $0802                                     ; $5bea: $01 $02 $08
	add c                                            ; $5bed: $81
	ld c, a                                          ; $5bee: $4f
	call $3cd9                                       ; $5bef: $cd $d9 $3c
	push hl                                          ; $5bf2: $e5
	ld hl, $646d                                     ; $5bf3: $21 $6d $64
	ld a, [$d8b1]                                    ; $5bf6: $fa $b1 $d8
	call $3c89                                       ; $5bf9: $cd $89 $3c
	pop hl                                           ; $5bfc: $e1
	call $3bf4                                       ; $5bfd: $cd $f4 $3b
	call $3da5                                       ; $5c00: $cd $a5 $3d
	ld bc, $5012                                     ; $5c03: $01 $12 $50
	ld a, $30                                        ; $5c06: $3e $30
	call $3bfc                                       ; $5c08: $cd $fc $3b
	call $3d53                                       ; $5c0b: $cd $53 $3d
	call $16d0                                       ; $5c0e: $cd $d0 $16
	ld a, $35                                        ; $5c11: $3e $35
	call $1e2e                                       ; $5c13: $cd $2e $1e
	rst FarCall                                          ; $5c16: $f7
	ld b, l                                          ; $5c17: $45
	ld c, b                                          ; $5c18: $48
	add hl, bc                                       ; $5c19: $09
	ld bc, $640a                                     ; $5c1a: $01 $0a $64
	call $18c4                                       ; $5c1d: $cd $c4 $18
	ld hl, $7f6b                                     ; $5c20: $21 $6b $7f
	call $3c78                                       ; $5c23: $cd $78 $3c
	ret                                              ; $5c26: $c9


	call $16d0                                       ; $5c27: $cd $d0 $16
	call $3ce2                                       ; $5c2a: $cd $e2 $3c
	ret nz                                           ; $5c2d: $c0

	ld l, $0c                                        ; $5c2e: $2e $0c
	ld a, [hl]                                       ; $5c30: $7e
	or a                                             ; $5c31: $b7
	ret nz                                           ; $5c32: $c0

	ld l, $0a                                        ; $5c33: $2e $0a
	ld a, [$d845]                                    ; $5c35: $fa $45 $d8
	and $07                                          ; $5c38: $e6 $07
	cp $02                                           ; $5c3a: $fe $02
	jr nz, jr_00a_5c42                               ; $5c3c: $20 $04

	ld a, $0d                                        ; $5c3e: $3e $0d
	jr jr_00a_5c44                                   ; $5c40: $18 $02

jr_00a_5c42:
	ld a, $0c                                        ; $5c42: $3e $0c

jr_00a_5c44:
	ld [hl], a                                       ; $5c44: $77
	ld a, $04                                        ; $5c45: $3e $04
	call Call_000_12fc                                       ; $5c47: $cd $fc $12
	inc a                                            ; $5c4a: $3c
	ld l, $30                                        ; $5c4b: $2e $30
	ld [hl], a                                       ; $5c4d: $77
	call Call_00a_644f                               ; $5c4e: $cd $4f $64
	call $3bf4                                       ; $5c51: $cd $f4 $3b
	call $3da5                                       ; $5c54: $cd $a5 $3d
	ld bc, $5013                                     ; $5c57: $01 $13 $50
	ld a, $30                                        ; $5c5a: $3e $30
	call $3bfc                                       ; $5c5c: $cd $fc $3b
	call $3d53                                       ; $5c5f: $cd $53 $3d
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $5c62: $01 $05 $08
	call $3cd9                                       ; $5c65: $cd $d9 $3c
	rst FarCall                                          ; $5c68: $f7
	ld b, [hl]                                       ; $5c69: $46
	ld b, h                                          ; $5c6a: $44
	add hl, bc                                       ; $5c6b: $09
	ld a, $60                                        ; $5c6c: $3e $60
	call $1e2e                                       ; $5c6e: $cd $2e $1e
	ret                                              ; $5c71: $c9


	call $16d0                                       ; $5c72: $cd $d0 $16
	ld l, $0c                                        ; $5c75: $2e $0c
	ld a, [hl]                                       ; $5c77: $7e
	or a                                             ; $5c78: $b7
	ret nz                                           ; $5c79: $c0

	ld l, $30                                        ; $5c7a: $2e $30
	dec [hl]                                         ; $5c7c: $35
	jr z, jr_00a_5c8e                                ; $5c7d: $28 $0f

	call Call_00a_644f                               ; $5c7f: $cd $4f $64
	call $3bf4                                       ; $5c82: $cd $f4 $3b
	ld l, $0c                                        ; $5c85: $2e $0c
	inc [hl]                                         ; $5c87: $34
	ld a, $60                                        ; $5c88: $3e $60
	call $1e2e                                       ; $5c8a: $cd $2e $1e
	ret                                              ; $5c8d: $c9


jr_00a_5c8e:
	ld l, $0a                                        ; $5c8e: $2e $0a
	ld [hl], $15                                     ; $5c90: $36 $15
	call $3d58                                       ; $5c92: $cd $58 $3d
	ld bc, $0106                                     ; $5c95: $01 $06 $01
	call $3cd9                                       ; $5c98: $cd $d9 $3c
	rst FarCall                                          ; $5c9b: $f7
	jp c, $094a                                      ; $5c9c: $da $4a $09

	ret                                              ; $5c9f: $c9


	call $3ce2                                       ; $5ca0: $cd $e2 $3c
	ret nz                                           ; $5ca3: $c0

	ld l, $0a                                        ; $5ca4: $2e $0a
	ld [hl], $02                                     ; $5ca6: $36 $02
	rst FarCall                                          ; $5ca8: $f7
	halt                                             ; $5ca9: $76
	ld b, h                                          ; $5caa: $44
	add hl, bc                                       ; $5cab: $09
	ret                                              ; $5cac: $c9


	call $16d0                                       ; $5cad: $cd $d0 $16
	ld l, $0c                                        ; $5cb0: $2e $0c
	ld a, [hl]                                       ; $5cb2: $7e
	or a                                             ; $5cb3: $b7
	ret nz                                           ; $5cb4: $c0

	ld l, $0a                                        ; $5cb5: $2e $0a
	ld [hl], $15                                     ; $5cb7: $36 $15
	call $3d58                                       ; $5cb9: $cd $58 $3d
	ld bc, $0103                                     ; $5cbc: $01 $03 $01
	call $3cd9                                       ; $5cbf: $cd $d9 $3c
	ret                                              ; $5cc2: $c9


	call $16d0                                       ; $5cc3: $cd $d0 $16
	call $3ce2                                       ; $5cc6: $cd $e2 $3c
	ret nz                                           ; $5cc9: $c0

	ld l, $0c                                        ; $5cca: $2e $0c
	ld a, [hl]                                       ; $5ccc: $7e
	or a                                             ; $5ccd: $b7
	ret nz                                           ; $5cce: $c0

	ld l, $0a                                        ; $5ccf: $2e $0a
	ld [hl], $0f                                     ; $5cd1: $36 $0f
	ld a, $04                                        ; $5cd3: $3e $04
	call Call_000_12fc                                       ; $5cd5: $cd $fc $12
	inc a                                            ; $5cd8: $3c
	ld l, $30                                        ; $5cd9: $2e $30
	ld [hl], a                                       ; $5cdb: $77
	ld a, $02                                        ; $5cdc: $3e $02
	call Call_000_12fc                                       ; $5cde: $cd $fc $12
	ld b, a                                          ; $5ce1: $47
	ld a, [$d8b1]                                    ; $5ce2: $fa $b1 $d8
	cp $01                                           ; $5ce5: $fe $01
	jr z, jr_00a_5cef                                ; $5ce7: $28 $06

	jr nc, jr_00a_5cf4                               ; $5ce9: $30 $09

	add b                                            ; $5ceb: $80
	inc a                                            ; $5cec: $3c
	jr jr_00a_5cf6                                   ; $5ced: $18 $07

jr_00a_5cef:
	add b                                            ; $5cef: $80
	add b                                            ; $5cf0: $80
	dec a                                            ; $5cf1: $3d
	jr jr_00a_5cf6                                   ; $5cf2: $18 $02

jr_00a_5cf4:
	dec a                                            ; $5cf4: $3d
	sub b                                            ; $5cf5: $90

jr_00a_5cf6:
	ld [$d8b0], a                                    ; $5cf6: $ea $b0 $d8
	call Call_00a_6459                               ; $5cf9: $cd $59 $64
	call $3bf4                                       ; $5cfc: $cd $f4 $3b
	call $3da5                                       ; $5cff: $cd $a5 $3d
	ld bc, $5013                                     ; $5d02: $01 $13 $50
	ld a, $30                                        ; $5d05: $3e $30
	call $3bfc                                       ; $5d07: $cd $fc $3b
	call $3d53                                       ; $5d0a: $cd $53 $3d
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $5d0d: $01 $05 $08
	call $3cd9                                       ; $5d10: $cd $d9 $3c
	ld a, $60                                        ; $5d13: $3e $60
	call $1e2e                                       ; $5d15: $cd $2e $1e
	ret                                              ; $5d18: $c9


	call $16d0                                       ; $5d19: $cd $d0 $16
	ld l, $0c                                        ; $5d1c: $2e $0c
	ld a, [hl]                                       ; $5d1e: $7e
	or a                                             ; $5d1f: $b7
	ret nz                                           ; $5d20: $c0

	ld l, $30                                        ; $5d21: $2e $30
	dec [hl]                                         ; $5d23: $35
	jr z, jr_00a_5d35                                ; $5d24: $28 $0f

	call Call_00a_6459                               ; $5d26: $cd $59 $64
	call $3bf4                                       ; $5d29: $cd $f4 $3b
	ld l, $0c                                        ; $5d2c: $2e $0c
	inc [hl]                                         ; $5d2e: $34
	ld a, $60                                        ; $5d2f: $3e $60
	call $1e2e                                       ; $5d31: $cd $2e $1e
	ret                                              ; $5d34: $c9


jr_00a_5d35:
	ld l, $0a                                        ; $5d35: $2e $0a
	ld [hl], $15                                     ; $5d37: $36 $15
	call $3d58                                       ; $5d39: $cd $58 $3d
	ld bc, $0108                                     ; $5d3c: $01 $08 $01
	ld a, [$d8b0]                                    ; $5d3f: $fa $b0 $d8
	add c                                            ; $5d42: $81
	ld c, a                                          ; $5d43: $4f
	call $3cd9                                       ; $5d44: $cd $d9 $3c
	rst FarCall                                          ; $5d47: $f7
	rrca                                             ; $5d48: $0f
	ld b, l                                          ; $5d49: $45
	add hl, bc                                       ; $5d4a: $09
	rst FarCall                                          ; $5d4b: $f7
	db $eb                                           ; $5d4c: $eb
	ld c, d                                          ; $5d4d: $4a
	add hl, bc                                       ; $5d4e: $09
	ret                                              ; $5d4f: $c9


	call $16d0                                       ; $5d50: $cd $d0 $16
	call $3ce2                                       ; $5d53: $cd $e2 $3c
	ret nz                                           ; $5d56: $c0

	ld l, $0c                                        ; $5d57: $2e $0c
	ld a, [hl]                                       ; $5d59: $7e
	or a                                             ; $5d5a: $b7
	ret nz                                           ; $5d5b: $c0

	ld l, $0a                                        ; $5d5c: $2e $0a
	ld [hl], $11                                     ; $5d5e: $36 $11
	ld l, $30                                        ; $5d60: $2e $30
	ld [hl], $0f                                     ; $5d62: $36 $0f
	rst FarCall                                          ; $5d64: $f7
	ld h, [hl]                                       ; $5d65: $66
	ld b, h                                          ; $5d66: $44
	add hl, bc                                       ; $5d67: $09
	ret                                              ; $5d68: $c9


	ld l, $30                                        ; $5d69: $2e $30
	dec [hl]                                         ; $5d6b: $35
	ret nz                                           ; $5d6c: $c0

	ld l, $0a                                        ; $5d6d: $2e $0a
	ld [hl], $12                                     ; $5d6f: $36 $12
	ld a, $04                                        ; $5d71: $3e $04
	call Call_000_12fc                                       ; $5d73: $cd $fc $12
	inc a                                            ; $5d76: $3c
	ld l, $30                                        ; $5d77: $2e $30
	ld [hl], a                                       ; $5d79: $77
	call Call_00a_6454                               ; $5d7a: $cd $54 $64
	call $3bf4                                       ; $5d7d: $cd $f4 $3b
	call $3da5                                       ; $5d80: $cd $a5 $3d
	ld bc, $5013                                     ; $5d83: $01 $13 $50
	ld a, $30                                        ; $5d86: $3e $30
	call $3bfc                                       ; $5d88: $cd $fc $3b
	call $3d53                                       ; $5d8b: $cd $53 $3d
	ld bc, SetWramBankAStoringCurrInHighByteInStackAfterReturn                                     ; $5d8e: $01 $05 $08
	call $3cd9                                       ; $5d91: $cd $d9 $3c
	rst FarCall                                          ; $5d94: $f7
	ld b, [hl]                                       ; $5d95: $46
	ld b, h                                          ; $5d96: $44
	add hl, bc                                       ; $5d97: $09
	ld a, $60                                        ; $5d98: $3e $60
	call $1e2e                                       ; $5d9a: $cd $2e $1e
	ret                                              ; $5d9d: $c9


	call $16d0                                       ; $5d9e: $cd $d0 $16
	ld l, $0c                                        ; $5da1: $2e $0c
	ld a, [hl]                                       ; $5da3: $7e
	or a                                             ; $5da4: $b7
	ret nz                                           ; $5da5: $c0

	ld l, $30                                        ; $5da6: $2e $30
	dec [hl]                                         ; $5da8: $35
	jr z, jr_00a_5dba                                ; $5da9: $28 $0f

	call Call_00a_6454                               ; $5dab: $cd $54 $64
	call $3bf4                                       ; $5dae: $cd $f4 $3b
	ld l, $0c                                        ; $5db1: $2e $0c
	inc [hl]                                         ; $5db3: $34
	ld a, $60                                        ; $5db4: $3e $60
	call $1e2e                                       ; $5db6: $cd $2e $1e
	ret                                              ; $5db9: $c9


jr_00a_5dba:
	ld l, $0a                                        ; $5dba: $2e $0a
	ld [hl], $13                                     ; $5dbc: $36 $13
	call $3d58                                       ; $5dbe: $cd $58 $3d
	ld bc, $0107                                     ; $5dc1: $01 $07 $01
	call $3cd9                                       ; $5dc4: $cd $d9 $3c
	rst FarCall                                          ; $5dc7: $f7
	jp c, $094a                                      ; $5dc8: $da $4a $09

	ret                                              ; $5dcb: $c9


	call $3ce2                                       ; $5dcc: $cd $e2 $3c
	ret nz                                           ; $5dcf: $c0

	ld l, $0a                                        ; $5dd0: $2e $0a
	ld [hl], $14                                     ; $5dd2: $36 $14
	ld l, $30                                        ; $5dd4: $2e $30
	ld [hl], $0f                                     ; $5dd6: $36 $0f
	ld hl, $d84d                                     ; $5dd8: $21 $4d $d8
	rst GetHLinHL                                          ; $5ddb: $cf
	ld a, l                                          ; $5ddc: $7d
	or h                                             ; $5ddd: $b4
	jr z, jr_00a_5de5                                ; $5dde: $28 $05

	rst FarCall                                          ; $5de0: $f7
	ld l, d                                          ; $5de1: $6a
	ld b, h                                          ; $5de2: $44
	add hl, bc                                       ; $5de3: $09
	ret                                              ; $5de4: $c9


jr_00a_5de5:
	rst FarCall                                          ; $5de5: $f7
	halt                                             ; $5de6: $76
	ld b, h                                          ; $5de7: $44
	add hl, bc                                       ; $5de8: $09
	ld a, $06                                        ; $5de9: $3e $06
	ld [$d884], a                                    ; $5deb: $ea $84 $d8
	ret                                              ; $5dee: $c9


	ld l, $30                                        ; $5def: $2e $30
	dec [hl]                                         ; $5df1: $35
	ret nz                                           ; $5df2: $c0

	ld l, $0a                                        ; $5df3: $2e $0a
	ld [hl], $02                                     ; $5df5: $36 $02
	ret                                              ; $5df7: $c9


	ld [hl], $04                                     ; $5df8: $36 $04
	ld bc, $080a                                     ; $5dfa: $01 $0a $08
	call $3cd9                                       ; $5dfd: $cd $d9 $3c
	ret                                              ; $5e00: $c9


	call $3ce2                                       ; $5e01: $cd $e2 $3c
	ret nz                                           ; $5e04: $c0

	ld l, $0a                                        ; $5e05: $2e $0a
	ld [hl], $05                                     ; $5e07: $36 $05
	ld a, [$d8b3]                                    ; $5e09: $fa $b3 $d8
	or a                                             ; $5e0c: $b7
	ret z                                            ; $5e0d: $c8

	rst FarCall                                          ; $5e0e: $f7
	dec [hl]                                         ; $5e0f: $35
	ld b, l                                          ; $5e10: $45
	add hl, bc                                       ; $5e11: $09
	ret                                              ; $5e12: $c9


	ld l, $0a                                        ; $5e13: $2e $0a
	ld [hl], $06                                     ; $5e15: $36 $06
	ld l, $30                                        ; $5e17: $2e $30
	ld [hl], $5a                                     ; $5e19: $36 $5a
	call $3c62                                       ; $5e1b: $cd $62 $3c
	ld a, $34                                        ; $5e1e: $3e $34
	call $1e2e                                       ; $5e20: $cd $2e $1e
	ret                                              ; $5e23: $c9


	call $3ce7                                       ; $5e24: $cd $e7 $3c
	ld l, $30                                        ; $5e27: $2e $30
	dec [hl]                                         ; $5e29: $35
	ret nz                                           ; $5e2a: $c0

	ld l, $0a                                        ; $5e2b: $2e $0a
	ld [hl], $07                                     ; $5e2d: $36 $07
	call $3cf2                                       ; $5e2f: $cd $f2 $3c
	ret                                              ; $5e32: $c9


	ld [hl], $02                                     ; $5e33: $36 $02
	call $3c41                                       ; $5e35: $cd $41 $3c
	call $3cee                                       ; $5e38: $cd $ee $3c
	ld a, $09                                        ; $5e3b: $3e $09
	ld [$d884], a                                    ; $5e3d: $ea $84 $d8
	ret                                              ; $5e40: $c9


	ld [hl], $19                                     ; $5e41: $36 $19
	ld l, $30                                        ; $5e43: $2e $30
	ld [hl], $3c                                     ; $5e45: $36 $3c
	ld a, $07                                        ; $5e47: $3e $07
	ld [$d840], a                                    ; $5e49: $ea $40 $d8
	ld hl, $d843                                     ; $5e4c: $21 $43 $d8
	xor a                                            ; $5e4f: $af
	ld b, $06                                        ; $5e50: $06 $06

jr_00a_5e52:
	ld [hl+], a                                      ; $5e52: $22
	dec b                                            ; $5e53: $05
	jr nz, jr_00a_5e52                               ; $5e54: $20 $fc

	ld hl, $d885                                     ; $5e56: $21 $85 $d8
	xor a                                            ; $5e59: $af
	ld [hl+], a                                      ; $5e5a: $22
	ld [hl+], a                                      ; $5e5b: $22
	ld [hl+], a                                      ; $5e5c: $22
	ld hl, $d889                                     ; $5e5d: $21 $89 $d8
	ld [hl+], a                                      ; $5e60: $22
	ld [hl+], a                                      ; $5e61: $22
	ld hl, $d85b                                     ; $5e62: $21 $5b $d8
	ld [hl+], a                                      ; $5e65: $22
	ld [hl+], a                                      ; $5e66: $22
	ld [hl+], a                                      ; $5e67: $22
	ld [hl+], a                                      ; $5e68: $22
	ld [hl+], a                                      ; $5e69: $22
	ld [hl+], a                                      ; $5e6a: $22
	ld [hl+], a                                      ; $5e6b: $22
	ld [hl+], a                                      ; $5e6c: $22
	ld [$d8b5], a                                    ; $5e6d: $ea $b5 $d8
	ld [$d8b6], a                                    ; $5e70: $ea $b6 $d8
	ld [$d891], a                                    ; $5e73: $ea $91 $d8
	ld [$d890], a                                    ; $5e76: $ea $90 $d8
	ld [$d892], a                                    ; $5e79: $ea $92 $d8
	ld a, $77                                        ; $5e7c: $3e $77
	ld [$d85b], a                                    ; $5e7e: $ea $5b $d8
	ld hl, $d842                                     ; $5e81: $21 $42 $d8
	bit 7, [hl]                                      ; $5e84: $cb $7e
	jr z, jr_00a_5e8e                                ; $5e86: $28 $06

	set 6, [hl]                                      ; $5e88: $cb $f6
	ld a, $64                                        ; $5e8a: $3e $64
	jr jr_00a_5e91                                   ; $5e8c: $18 $03

jr_00a_5e8e:
	res 6, [hl]                                      ; $5e8e: $cb $b6
	xor a                                            ; $5e90: $af

jr_00a_5e91:
	ld [$d868], a                                    ; $5e91: $ea $68 $d8
	ld hl, $d851                                     ; $5e94: $21 $51 $d8
	ld de, rIE                                     ; $5e97: $11 $ff $ff
	ld a, e                                          ; $5e9a: $7b
	ld [hl+], a                                      ; $5e9b: $22
	ld [hl], d                                       ; $5e9c: $72
	ld hl, $d875                                     ; $5e9d: $21 $75 $d8
	ld bc, $0400                                     ; $5ea0: $01 $00 $04
	ld a, c                                          ; $5ea3: $79
	ld [hl+], a                                      ; $5ea4: $22
	ld [hl], b                                       ; $5ea5: $70
	rst FarCall                                          ; $5ea6: $f7
	db $ec                                           ; $5ea7: $ec
	ld c, l                                          ; $5ea8: $4d
	ld a, [bc]                                       ; $5ea9: $0a
	ld b, $04                                        ; $5eaa: $06 $04
	call $0a64                                       ; $5eac: $cd $64 $0a
	ld hl, $4721                                     ; $5eaf: $21 $21 $47
	call $3c1d                                       ; $5eb2: $cd $1d $3c
	call $3cf2                                       ; $5eb5: $cd $f2 $3c
	ld hl, $94a0                                     ; $5eb8: $21 $a0 $94
	ld b, $06                                        ; $5ebb: $06 $06
	rst FarCall                                          ; $5ebd: $f7
	ld d, [hl]                                       ; $5ebe: $56
	ld d, c                                          ; $5ebf: $51
	ld a, [bc]                                       ; $5ec0: $0a
	ld a, $40                                        ; $5ec1: $3e $40
	ldh [hDisp0_SCX], a                                     ; $5ec3: $e0 $84
	ret                                              ; $5ec5: $c9


	call $0a85                                       ; $5ec6: $cd $85 $0a
	ld l, $30                                        ; $5ec9: $2e $30
	dec [hl]                                         ; $5ecb: $35
	ret nz                                           ; $5ecc: $c0

	ld l, $0a                                        ; $5ecd: $2e $0a
	ld [hl], $1a                                     ; $5ecf: $36 $1a
	ld bc, $0901                                     ; $5ed1: $01 $01 $09
	call $3cd9                                       ; $5ed4: $cd $d9 $3c
	ld hl, $472a                                     ; $5ed7: $21 $2a $47
	call $3c18                                       ; $5eda: $cd $18 $3c
	call $3cee                                       ; $5edd: $cd $ee $3c
	ld a, $00                                        ; $5ee0: $3e $00
	call $1e2e                                       ; $5ee2: $cd $2e $1e
	ld a, $63                                        ; $5ee5: $3e $63
	call $1e27                                       ; $5ee7: $cd $27 $1e
	ret                                              ; $5eea: $c9


	call $3ce2                                       ; $5eeb: $cd $e2 $3c
	ret nz                                           ; $5eee: $c0

	ld l, $0a                                        ; $5eef: $2e $0a
	ld [hl], $1b                                     ; $5ef1: $36 $1b
	ret                                              ; $5ef3: $c9


	ldh a, [hDisp0_SCX]                                     ; $5ef4: $f0 $84
	sub $04                                          ; $5ef6: $d6 $04
	jr nc, jr_00a_5f03                               ; $5ef8: $30 $09

	ld l, $0a                                        ; $5efa: $2e $0a
	ld [hl], $1c                                     ; $5efc: $36 $1c
	ld l, $30                                        ; $5efe: $2e $30
	ld [hl], $1e                                     ; $5f00: $36 $1e
	xor a                                            ; $5f02: $af

jr_00a_5f03:
	ldh [hDisp0_SCX], a                                     ; $5f03: $e0 $84
	ret                                              ; $5f05: $c9


	ld l, $30                                        ; $5f06: $2e $30
	dec [hl]                                         ; $5f08: $35
	ret nz                                           ; $5f09: $c0

	ld l, $0a                                        ; $5f0a: $2e $0a
	ld [hl], $1d                                     ; $5f0c: $36 $1d
	ld bc, $0903                                     ; $5f0e: $01 $03 $09
	call $3cd9                                       ; $5f11: $cd $d9 $3c
	ld hl, $8959                                     ; $5f14: $21 $59 $89
	rst FarCall                                          ; $5f17: $f7
	ccf                                              ; $5f18: $3f
	ld d, c                                          ; $5f19: $51
	ld a, [bc]                                       ; $5f1a: $0a
	ld a, $00                                        ; $5f1b: $3e $00
	call $1e2e                                       ; $5f1d: $cd $2e $1e
	ld a, $64                                        ; $5f20: $3e $64
	call $1e27                                       ; $5f22: $cd $27 $1e
	ret                                              ; $5f25: $c9


	call $3ce2                                       ; $5f26: $cd $e2 $3c
	ret nz                                           ; $5f29: $c0

	ld l, $0a                                        ; $5f2a: $2e $0a
	ld [hl], $1e                                     ; $5f2c: $36 $1e
	ld l, $30                                        ; $5f2e: $2e $30
	ld [hl], $1e                                     ; $5f30: $36 $1e
	ld de, $242d                                     ; $5f32: $11 $2d $24
	call $3bf4                                       ; $5f35: $cd $f4 $3b
	call $3da5                                       ; $5f38: $cd $a5 $3d
	ld bc, $5014                                     ; $5f3b: $01 $14 $50
	ld a, $30                                        ; $5f3e: $3e $30
	call $3bfc                                       ; $5f40: $cd $fc $3b
	call $3d53                                       ; $5f43: $cd $53 $3d
	call $16d0                                       ; $5f46: $cd $d0 $16
	ld bc, $640e                                     ; $5f49: $01 $0e $64
	call $18c4                                       ; $5f4c: $cd $c4 $18
	ld hl, $7f72                                     ; $5f4f: $21 $72 $7f
	call $3c78                                       ; $5f52: $cd $78 $3c
	ld a, $35                                        ; $5f55: $3e $35
	call $1e2e                                       ; $5f57: $cd $2e $1e
	ret                                              ; $5f5a: $c9


	call $16d0                                       ; $5f5b: $cd $d0 $16
	ld l, $30                                        ; $5f5e: $2e $30
	dec [hl]                                         ; $5f60: $35
	ret nz                                           ; $5f61: $c0

	ld [hl], $5a                                     ; $5f62: $36 $5a
	ld l, $0a                                        ; $5f64: $2e $0a
	ld [hl], $1f                                     ; $5f66: $36 $1f
	call $3d58                                       ; $5f68: $cd $58 $3d
	ld bc, $67f8                                     ; $5f6b: $01 $f8 $67
	call $18c4                                       ; $5f6e: $cd $c4 $18
	ld b, $02                                        ; $5f71: $06 $02
	call $0a64                                       ; $5f73: $cd $64 $0a
	ret                                              ; $5f76: $c9


	ld a, [wInitialA]                                    ; $5f77: $fa $00 $c1
	cp $11                                           ; $5f7a: $fe $11
	jr z, jr_00a_5f82                                ; $5f7c: $28 $04

	call $0a90                                       ; $5f7e: $cd $90 $0a
	ret c                                            ; $5f81: $d8

jr_00a_5f82:
	call $19a2                                       ; $5f82: $cd $a2 $19
	ret nz                                           ; $5f85: $c0

	ld l, $0a                                        ; $5f86: $2e $0a
	ld [hl], $20                                     ; $5f88: $36 $20
	ld hl, $d84d                                     ; $5f8a: $21 $4d $d8
	xor a                                            ; $5f8d: $af
	ld [hl+], a                                      ; $5f8e: $22
	ld [hl], a                                       ; $5f8f: $77
	rst FarCall                                          ; $5f90: $f7
	cpl                                              ; $5f91: $2f
	ld b, d                                          ; $5f92: $42
	add hl, bc                                       ; $5f93: $09
	rst FarCall                                          ; $5f94: $f7
	ld l, [hl]                                       ; $5f95: $6e
	ld b, h                                          ; $5f96: $44
	add hl, bc                                       ; $5f97: $09
	ret                                              ; $5f98: $c9


	ld [hl], $21                                     ; $5f99: $36 $21
	rst FarCall                                          ; $5f9b: $f7
	push af                                          ; $5f9c: $f5
	ld c, l                                          ; $5f9d: $4d
	ld a, [bc]                                       ; $5f9e: $0a
	ld bc, $6816                                     ; $5f9f: $01 $16 $68
	call $1890                                       ; $5fa2: $cd $90 $18
	ld b, $02                                        ; $5fa5: $06 $02
	call $0a64                                       ; $5fa7: $cd $64 $0a
	ld a, $00                                        ; $5faa: $3e $00
	call $1e2e                                       ; $5fac: $cd $2e $1e
	ld a, $69                                        ; $5faf: $3e $69
	call $1e27                                       ; $5fb1: $cd $27 $1e
	ret                                              ; $5fb4: $c9


	call $0a6f                                       ; $5fb5: $cd $6f $0a
	ld l, $30                                        ; $5fb8: $2e $30
	dec [hl]                                         ; $5fba: $35
	ret nz                                           ; $5fbb: $c0

	ld l, $0a                                        ; $5fbc: $2e $0a
	ld [hl], $22                                     ; $5fbe: $36 $22
	ld bc, $090b                                     ; $5fc0: $01 $0b $09
	call $3cd9                                       ; $5fc3: $cd $d9 $3c
	ret                                              ; $5fc6: $c9


	call $3ce2                                       ; $5fc7: $cd $e2 $3c
	ret nz                                           ; $5fca: $c0

	ld l, $0a                                        ; $5fcb: $2e $0a
	ld [hl], $23                                     ; $5fcd: $36 $23
	ld l, $30                                        ; $5fcf: $2e $30
	ld [hl], $78                                     ; $5fd1: $36 $78
	ret                                              ; $5fd3: $c9


	ld l, $30                                        ; $5fd4: $2e $30
	dec [hl]                                         ; $5fd6: $35
	ret nz                                           ; $5fd7: $c0

	ld l, $0a                                        ; $5fd8: $2e $0a
	ld [hl], $24                                     ; $5fda: $36 $24
	ld bc, $090f                                     ; $5fdc: $01 $0f $09
	call $3cd9                                       ; $5fdf: $cd $d9 $3c
	ret                                              ; $5fe2: $c9


	call $3ce2                                       ; $5fe3: $cd $e2 $3c
	ret nz                                           ; $5fe6: $c0

	ld l, $0a                                        ; $5fe7: $2e $0a
	ld [hl], $25                                     ; $5fe9: $36 $25
	ld bc, $0910                                     ; $5feb: $01 $10 $09
	call $3cd9                                       ; $5fee: $cd $d9 $3c
	ld a, $00                                        ; $5ff1: $3e $00
	call $1e2e                                       ; $5ff3: $cd $2e $1e
	ld a, $62                                        ; $5ff6: $3e $62
	call $1e27                                       ; $5ff8: $cd $27 $1e
	ret                                              ; $5ffb: $c9


	call $3ce2                                       ; $5ffc: $cd $e2 $3c
	ret nz                                           ; $5fff: $c0

	ld l, $0a                                        ; $6000: $2e $0a
	ld [hl], $26                                     ; $6002: $36 $26
	ld l, $30                                        ; $6004: $2e $30
	ld [hl], $5a                                     ; $6006: $36 $5a
	ld bc, $0914                                     ; $6008: $01 $14 $09
	call $3cd9                                       ; $600b: $cd $d9 $3c
	rst FarCall                                          ; $600e: $f7
	ld [hl], d                                       ; $600f: $72
	ld b, h                                          ; $6010: $44
	add hl, bc                                       ; $6011: $09
	ld a, $26                                        ; $6012: $3e $26
	call $1e2e                                       ; $6014: $cd $2e $1e
	ret                                              ; $6017: $c9


	ld l, $30                                        ; $6018: $2e $30
	dec [hl]                                         ; $601a: $35
	ret nz                                           ; $601b: $c0

	ld l, $0a                                        ; $601c: $2e $0a
	ld [hl], $27                                     ; $601e: $36 $27
	ld bc, $0915                                     ; $6020: $01 $15 $09
	call $3cd9                                       ; $6023: $cd $d9 $3c
	rst FarCall                                          ; $6026: $f7
	ld l, [hl]                                       ; $6027: $6e
	ld b, h                                          ; $6028: $44
	add hl, bc                                       ; $6029: $09
	ld bc, $63c2                                     ; $602a: $01 $c2 $63
	call $18c4                                       ; $602d: $cd $c4 $18
	ld a, $01                                        ; $6030: $3e $01
	ld [$d8b9], a                                    ; $6032: $ea $b9 $d8
	ret                                              ; $6035: $c9


	call $3ce2                                       ; $6036: $cd $e2 $3c
	ret nz                                           ; $6039: $c0

	ld l, $0a                                        ; $603a: $2e $0a
	ld [hl], $28                                     ; $603c: $36 $28
	ld l, $30                                        ; $603e: $2e $30
	ld [hl], $1e                                     ; $6040: $36 $1e
	rst FarCall                                          ; $6042: $f7
	halt                                             ; $6043: $76
	ld b, h                                          ; $6044: $44
	add hl, bc                                       ; $6045: $09
	ld hl, $d859                                     ; $6046: $21 $59 $d8
	rst GetHLinHL                                          ; $6049: $cf
	ld de, $07d0                                     ; $604a: $11 $d0 $07
	add hl, de                                       ; $604d: $19
	push hl                                          ; $604e: $e5
	ld de, $d8f0                                     ; $604f: $11 $f0 $d8
	add hl, de                                       ; $6052: $19
	pop hl                                           ; $6053: $e1
	jr nc, jr_00a_6059                               ; $6054: $30 $03

	ld hl, $270f                                     ; $6056: $21 $0f $27

jr_00a_6059:
	push hl                                          ; $6059: $e5
	ld de, $d859                                     ; $605a: $11 $59 $d8
	call $3cce                                       ; $605d: $cd $ce $3c
	pop hl                                           ; $6060: $e1
	ld de, $d84d                                     ; $6061: $11 $4d $d8
	call $3cce                                       ; $6064: $cd $ce $3c
	rst FarCall                                          ; $6067: $f7
	cpl                                              ; $6068: $2f
	ld b, d                                          ; $6069: $42
	add hl, bc                                       ; $606a: $09
	ld a, $00                                        ; $606b: $3e $00
	call $1e2e                                       ; $606d: $cd $2e $1e
	ld a, $2c                                        ; $6070: $3e $2c
	call $1e2e                                       ; $6072: $cd $2e $1e
	ret                                              ; $6075: $c9


	ld l, $30                                        ; $6076: $2e $30
	dec [hl]                                         ; $6078: $35
	ret nz                                           ; $6079: $c0

	ld l, $0a                                        ; $607a: $2e $0a
	ld [hl], $29                                     ; $607c: $36 $29
	ld bc, $0917                                     ; $607e: $01 $17 $09
	call $3cd9                                       ; $6081: $cd $d9 $3c
	ld a, $00                                        ; $6084: $3e $00
	call $1e2e                                       ; $6086: $cd $2e $1e
	ld a, $66                                        ; $6089: $3e $66
	call $1e27                                       ; $608b: $cd $27 $1e
	ret                                              ; $608e: $c9


	call $3ce2                                       ; $608f: $cd $e2 $3c
	ret nz                                           ; $6092: $c0

	ld l, $0a                                        ; $6093: $2e $0a
	ld [hl], $16                                     ; $6095: $36 $16
	ld hl, $4721                                     ; $6097: $21 $21 $47
	call $3c1d                                       ; $609a: $cd $1d $3c
	call $3cf2                                       ; $609d: $cd $f2 $3c
	ld bc, $67f0                                     ; $60a0: $01 $f0 $67
	call $18c4                                       ; $60a3: $cd $c4 $18
	ld b, $02                                        ; $60a6: $06 $02
	call $0a64                                       ; $60a8: $cd $64 $0a
	ret                                              ; $60ab: $c9


	ld a, [wInitialA]                                    ; $60ac: $fa $00 $c1
	cp $11                                           ; $60af: $fe $11
	jr z, jr_00a_60b7                                ; $60b1: $28 $04

	call $0a90                                       ; $60b3: $cd $90 $0a
	ret c                                            ; $60b6: $d8

jr_00a_60b7:
	call $19a2                                       ; $60b7: $cd $a2 $19
	ret nz                                           ; $60ba: $c0

	ld [hl], $17                                     ; $60bb: $36 $17
	call $3d58                                       ; $60bd: $cd $58 $3d
	ld hl, $470f                                     ; $60c0: $21 $0f $47
	call $3c18                                       ; $60c3: $cd $18 $3c
	ld hl, $4718                                     ; $60c6: $21 $18 $47
	call $3c18                                       ; $60c9: $cd $18 $3c
	call $3cee                                       ; $60cc: $cd $ee $3c
	rst FarCall                                          ; $60cf: $f7
	push af                                          ; $60d0: $f5
	ld c, l                                          ; $60d1: $4d
	ld a, [bc]                                       ; $60d2: $0a
	ld bc, $680c                                     ; $60d3: $01 $0c $68
	call $1890                                       ; $60d6: $cd $90 $18
	ld b, $02                                        ; $60d9: $06 $02
	call $0a64                                       ; $60db: $cd $64 $0a
	ret                                              ; $60de: $c9


	ld a, [wInitialA]                                    ; $60df: $fa $00 $c1
	cp $11                                           ; $60e2: $fe $11
	jr z, jr_00a_60ea                                ; $60e4: $28 $04

	call $0a6f                                       ; $60e6: $cd $6f $0a
	ret c                                            ; $60e9: $d8

jr_00a_60ea:
	call $1986                                       ; $60ea: $cd $86 $19
	ret nz                                           ; $60ed: $c0

	ld [hl], $2a                                     ; $60ee: $36 $2a
	xor a                                            ; $60f0: $af
	ld [$d884], a                                    ; $60f1: $ea $84 $d8
	ret                                              ; $60f4: $c9


	ld a, [$d884]                                    ; $60f5: $fa $84 $d8
	cp $03                                           ; $60f8: $fe $03
	jr z, jr_00a_610a                                ; $60fa: $28 $0e

	cp $06                                           ; $60fc: $fe $06
	jr c, jr_00a_6129                                ; $60fe: $38 $29

	jr z, jr_00a_6129                                ; $6100: $28 $27

	cp $08                                           ; $6102: $fe $08
	jr nc, jr_00a_6129                               ; $6104: $30 $23

	ld a, $2c                                        ; $6106: $3e $2c
	jr jr_00a_6125                                   ; $6108: $18 $1b

jr_00a_610a:
	ld a, [$d845]                                    ; $610a: $fa $45 $d8
	and $03                                          ; $610d: $e6 $03
	jr z, jr_00a_611b                                ; $610f: $28 $0a

	cp $02                                           ; $6111: $fe $02
	jr c, jr_00a_611f                                ; $6113: $38 $0a

	jr z, jr_00a_6123                                ; $6115: $28 $0c

	ld a, $3e                                        ; $6117: $3e $3e
	jr jr_00a_6125                                   ; $6119: $18 $0a

jr_00a_611b:
	ld a, $32                                        ; $611b: $3e $32
	jr jr_00a_6125                                   ; $611d: $18 $06

jr_00a_611f:
	ld a, $34                                        ; $611f: $3e $34
	jr jr_00a_6125                                   ; $6121: $18 $02

jr_00a_6123:
	ld a, $38                                        ; $6123: $3e $38

jr_00a_6125:
	ld l, $0a                                        ; $6125: $2e $0a
	ld [hl], a                                       ; $6127: $77
	ret                                              ; $6128: $c9


jr_00a_6129:
	call $3d58                                       ; $6129: $cd $58 $3d
	ret                                              ; $612c: $c9


	xor a                                            ; $612d: $af
	ld [$d848], a                                    ; $612e: $ea $48 $d8
	ld a, $2a                                        ; $6131: $3e $2a
	ld l, $0a                                        ; $6133: $2e $0a
	ld [hl], a                                       ; $6135: $77
	ret                                              ; $6136: $c9


	call $3ce2                                       ; $6137: $cd $e2 $3c
	ret nz                                           ; $613a: $c0

	ld l, $0a                                        ; $613b: $2e $0a
	ld [hl], $2b                                     ; $613d: $36 $2b
	rst FarCall                                          ; $613f: $f7
	halt                                             ; $6140: $76
	ld b, h                                          ; $6141: $44
	add hl, bc                                       ; $6142: $09
	ret                                              ; $6143: $c9


	ld [hl], $33                                     ; $6144: $36 $33
	ld hl, $d851                                     ; $6146: $21 $51 $d8
	rst GetHLinHL                                          ; $6149: $cf
	ld bc, $2aaa                                     ; $614a: $01 $aa $2a
	call BCHLequHLdivModBC                                       ; $614d: $cd $c1 $12
	ld a, l                                          ; $6150: $7d
	cp $05                                           ; $6151: $fe $05
	jr c, jr_00a_6157                                ; $6153: $38 $02

	ld a, $05                                        ; $6155: $3e $05

jr_00a_6157:
	or a                                             ; $6157: $b7
	jr nz, jr_00a_6161                               ; $6158: $20 $07

	call Call_000_1309                                       ; $615a: $cd $09 $13
	and $01                                          ; $615d: $e6 $01
	jr jr_00a_6162                                   ; $615f: $18 $01

jr_00a_6161:
	inc a                                            ; $6161: $3c

jr_00a_6162:
	ld hl, $616c                                     ; $6162: $21 $6c $61
	call $3c8f                                       ; $6165: $cd $8f $3c
	call $3cd9                                       ; $6168: $cd $d9 $3c
	ret                                              ; $616b: $c9


	jr jr_00a_6178                                   ; $616c: $18 $0a

	dec d                                            ; $616e: $15
	ld a, [bc]                                       ; $616f: $0a
	inc de                                           ; $6170: $13
	ld a, [bc]                                       ; $6171: $0a
	ld [de], a                                       ; $6172: $12
	ld a, [bc]                                       ; $6173: $0a
	ld de, $100a                                     ; $6174: $11 $0a $10
	ld a, [bc]                                       ; $6177: $0a

jr_00a_6178:
	rrca                                             ; $6178: $0f
	ld a, [bc]                                       ; $6179: $0a
	call $3ce2                                       ; $617a: $cd $e2 $3c
	ret nz                                           ; $617d: $c0

	ld l, $0a                                        ; $617e: $2e $0a
	ld [hl], $2b                                     ; $6180: $36 $2b
	ret                                              ; $6182: $c9


	ld [hl], $35                                     ; $6183: $36 $35
	ld l, $30                                        ; $6185: $2e $30
	ld [hl], $1e                                     ; $6187: $36 $1e
	ld bc, $0a01                                     ; $6189: $01 $01 $0a
	call $3cd9                                       ; $618c: $cd $d9 $3c
	ret                                              ; $618f: $c9


	ld l, $30                                        ; $6190: $2e $30
	dec [hl]                                         ; $6192: $35
	ret nz                                           ; $6193: $c0

	ld l, $0a                                        ; $6194: $2e $0a
	ld [hl], $36                                     ; $6196: $36 $36
	call $3da5                                       ; $6198: $cd $a5 $3d
	ld de, $4038                                     ; $619b: $11 $38 $40
	ld bc, $46a0                                     ; $619e: $01 $a0 $46
	ld a, $30                                        ; $61a1: $3e $30
	call $3d99                                       ; $61a3: $cd $99 $3d
	call $3d53                                       ; $61a6: $cd $53 $3d
	call $16d0                                       ; $61a9: $cd $d0 $16
	ld bc, $640e                                     ; $61ac: $01 $0e $64
	call $18c4                                       ; $61af: $cd $c4 $18
	ld hl, $7f79                                     ; $61b2: $21 $79 $7f
	call $3c78                                       ; $61b5: $cd $78 $3c
	ld a, $63                                        ; $61b8: $3e $63
	call $1e2e                                       ; $61ba: $cd $2e $1e
	ret                                              ; $61bd: $c9


	ld a, [$c120]                                    ; $61be: $fa $20 $c1
	and $01                                          ; $61c1: $e6 $01
	add $38                                          ; $61c3: $c6 $38
	ld l, $05                                        ; $61c5: $2e $05
	ld [hl], a                                       ; $61c7: $77
	ld l, $07                                        ; $61c8: $2e $07
	inc [hl]                                         ; $61ca: $34
	ld a, [hl]                                       ; $61cb: $7e
	cp $8c                                           ; $61cc: $fe $8c
	ret c                                            ; $61ce: $d8

	ld [hl], $8c                                     ; $61cf: $36 $8c
	ld l, $0a                                        ; $61d1: $2e $0a
	ld [hl], $37                                     ; $61d3: $36 $37
	ld l, $30                                        ; $61d5: $2e $30
	ld [hl], $96                                     ; $61d7: $36 $96
	ld de, $8c32                                     ; $61d9: $11 $32 $8c
	call $3bf4                                       ; $61dc: $cd $f4 $3b
	call $3da5                                       ; $61df: $cd $a5 $3d
	ld bc, $5015                                     ; $61e2: $01 $15 $50
	ld a, $30                                        ; $61e5: $3e $30
	call $3bfc                                       ; $61e7: $cd $fc $3b
	rst FarCall                                          ; $61ea: $f7
	ld b, [hl]                                       ; $61eb: $46
	ld b, h                                          ; $61ec: $44
	add hl, bc                                       ; $61ed: $09
	rst FarCall                                          ; $61ee: $f7
	ld b, l                                          ; $61ef: $45
	ld c, b                                          ; $61f0: $48
	add hl, bc                                       ; $61f1: $09
	ret                                              ; $61f2: $c9


	call $3d4b                                       ; $61f3: $cd $4b $3d
	call $16d0                                       ; $61f6: $cd $d0 $16
	ld l, $30                                        ; $61f9: $2e $30
	dec [hl]                                         ; $61fb: $35
	ret nz                                           ; $61fc: $c0

	ld l, $0a                                        ; $61fd: $2e $0a
	ld [hl], $4a                                     ; $61ff: $36 $4a
	call $3d58                                       ; $6201: $cd $58 $3d
	ld bc, $0106                                     ; $6204: $01 $06 $01
	call $3cd9                                       ; $6207: $cd $d9 $3c
	rst FarCall                                          ; $620a: $f7
	jp c, $094a                                      ; $620b: $da $4a $09

	ret                                              ; $620e: $c9


	ld [hl], $39                                     ; $620f: $36 $39
	ld bc, $0a02                                     ; $6211: $01 $02 $0a
	call $3cd9                                       ; $6214: $cd $d9 $3c
	ret                                              ; $6217: $c9


	call $3ce2                                       ; $6218: $cd $e2 $3c
	ret nz                                           ; $621b: $c0

	ld l, $0a                                        ; $621c: $2e $0a
	ld [hl], $3a                                     ; $621e: $36 $3a
	ld l, $30                                        ; $6220: $2e $30
	ld [hl], $3c                                     ; $6222: $36 $3c
	ld hl, $470f                                     ; $6224: $21 $0f $47
	call $3c1d                                       ; $6227: $cd $1d $3c
	ld hl, $4733                                     ; $622a: $21 $33 $47
	call $3c1d                                       ; $622d: $cd $1d $3c
	call $3cf2                                       ; $6230: $cd $f2 $3c
	ret                                              ; $6233: $c9


	ld l, $30                                        ; $6234: $2e $30
	dec [hl]                                         ; $6236: $35
	ret nz                                           ; $6237: $c0

	ld [hl], $4b                                     ; $6238: $36 $4b
	ld l, $0a                                        ; $623a: $2e $0a
	ld [hl], $3b                                     ; $623c: $36 $3b
	ld hl, $470f                                     ; $623e: $21 $0f $47
	call $3c18                                       ; $6241: $cd $18 $3c
	ld hl, $473c                                     ; $6244: $21 $3c $47
	call $3c18                                       ; $6247: $cd $18 $3c
	call $3cee                                       ; $624a: $cd $ee $3c
	ld a, $0b                                        ; $624d: $3e $0b
	call $1e2e                                       ; $624f: $cd $2e $1e
	ret                                              ; $6252: $c9


	ld [hl], $3c                                     ; $6253: $36 $3c
	call $3da5                                       ; $6255: $cd $a5 $3d
	ld de, $2834                                     ; $6258: $11 $34 $28
	ld bc, $4800                                     ; $625b: $01 $00 $48
	ld a, $30                                        ; $625e: $3e $30
	call $3d99                                       ; $6260: $cd $99 $3d
	call $3d53                                       ; $6263: $cd $53 $3d
	ld de, $ff40                                     ; $6266: $11 $40 $ff
	ld bc, $ff80                                     ; $6269: $01 $80 $ff
	call $3d32                                       ; $626c: $cd $32 $3d
	ld bc, $640e                                     ; $626f: $01 $0e $64
	call $18c4                                       ; $6272: $cd $c4 $18
	ld hl, $7f72                                     ; $6275: $21 $72 $7f
	call $3c78                                       ; $6278: $cd $78 $3c
	ret                                              ; $627b: $c9


	call $3d1b                                       ; $627c: $cd $1b $3d
	call $3d13                                       ; $627f: $cd $13 $3d
	inc bc                                           ; $6282: $03
	inc bc                                           ; $6283: $03
	ld l, $11                                        ; $6284: $2e $11
	ld a, c                                          ; $6286: $79
	ld [hl+], a                                      ; $6287: $22
	ld [hl], b                                       ; $6288: $70
	ld l, $30                                        ; $6289: $2e $30
	dec [hl]                                         ; $628b: $35
	jr z, jr_00a_6295                                ; $628c: $28 $07

	ld a, [hl]                                       ; $628e: $7e
	cp $32                                           ; $628f: $fe $32
	call c, $3d4b                                    ; $6291: $dc $4b $3d
	ret                                              ; $6294: $c9


jr_00a_6295:
	ld l, $0a                                        ; $6295: $2e $0a
	ld [hl], $3d                                     ; $6297: $36 $3d
	call $3d58                                       ; $6299: $cd $58 $3d
	ld hl, $470f                                     ; $629c: $21 $0f $47
	call $3c1d                                       ; $629f: $cd $1d $3c
	ld hl, $4745                                     ; $62a2: $21 $45 $47
	call $3c1d                                       ; $62a5: $cd $1d $3c
	call $3cf2                                       ; $62a8: $cd $f2 $3c
	ret                                              ; $62ab: $c9


	ld [hl], $2b                                     ; $62ac: $36 $2b
	ld a, $01                                        ; $62ae: $3e $01
	ld [$d8af], a                                    ; $62b0: $ea $af $d8
	ld hl, $470f                                     ; $62b3: $21 $0f $47
	call $3c18                                       ; $62b6: $cd $18 $3c
	ld hl, $474e                                     ; $62b9: $21 $4e $47
	call $3c18                                       ; $62bc: $cd $18 $3c
	call $3cee                                       ; $62bf: $cd $ee $3c
	ret                                              ; $62c2: $c9


	ld [hl], $3f                                     ; $62c3: $36 $3f
	ld l, $30                                        ; $62c5: $2e $30
	ld [hl], $20                                     ; $62c7: $36 $20
	ld hl, $470f                                     ; $62c9: $21 $0f $47
	call $3c1d                                       ; $62cc: $cd $1d $3c
	ld hl, $4757                                     ; $62cf: $21 $57 $47
	call $3c1d                                       ; $62d2: $cd $1d $3c
	call $3cf2                                       ; $62d5: $cd $f2 $3c
	ret                                              ; $62d8: $c9


	ld [hl], $40                                     ; $62d9: $36 $40
	ld hl, $470f                                     ; $62db: $21 $0f $47
	call $3c18                                       ; $62de: $cd $18 $3c
	ld hl, $4760                                     ; $62e1: $21 $60 $47
	call $3c18                                       ; $62e4: $cd $18 $3c
	call $3cee                                       ; $62e7: $cd $ee $3c
	ret                                              ; $62ea: $c9


	ld [hl], $41                                     ; $62eb: $36 $41
	ld l, $30                                        ; $62ed: $2e $30
	ld [hl], $96                                     ; $62ef: $36 $96
	ld de, $2068                                     ; $62f1: $11 $68 $20
	call $3bf4                                       ; $62f4: $cd $f4 $3b
	call $3da5                                       ; $62f7: $cd $a5 $3d
	ld bc, $5016                                     ; $62fa: $01 $16 $50
	ld a, $30                                        ; $62fd: $3e $30
	call $3bfc                                       ; $62ff: $cd $fc $3b
	call $3d53                                       ; $6302: $cd $53 $3d
	call $16d0                                       ; $6305: $cd $d0 $16
	ld bc, $640e                                     ; $6308: $01 $0e $64
	call $18c4                                       ; $630b: $cd $c4 $18
	ld hl, $7f80                                     ; $630e: $21 $80 $7f
	call $3c78                                       ; $6311: $cd $78 $3c
	ld a, $43                                        ; $6314: $3e $43
	call $1e2e                                       ; $6316: $cd $2e $1e
	ret                                              ; $6319: $c9


	call $16d0                                       ; $631a: $cd $d0 $16
	ld l, $30                                        ; $631d: $2e $30
	dec [hl]                                         ; $631f: $35
	ret nz                                           ; $6320: $c0

	ld l, $0a                                        ; $6321: $2e $0a
	ld [hl], $42                                     ; $6323: $36 $42
	call $3d58                                       ; $6325: $cd $58 $3d
	ret                                              ; $6328: $c9


	ld [hl], $43                                     ; $6329: $36 $43
	ld hl, $470f                                     ; $632b: $21 $0f $47
	call $3c1d                                       ; $632e: $cd $1d $3c
	ld hl, $4769                                     ; $6331: $21 $69 $47
	call $3c1d                                       ; $6334: $cd $1d $3c
	call $3cf2                                       ; $6337: $cd $f2 $3c
	ret                                              ; $633a: $c9


	ld [hl], $44                                     ; $633b: $36 $44
	ld hl, $470f                                     ; $633d: $21 $0f $47
	call $3c18                                       ; $6340: $cd $18 $3c
	ld hl, $4772                                     ; $6343: $21 $72 $47
	call $3c18                                       ; $6346: $cd $18 $3c
	call $3cee                                       ; $6349: $cd $ee $3c
	ret                                              ; $634c: $c9


	ld [hl], $45                                     ; $634d: $36 $45
	ld l, $30                                        ; $634f: $2e $30
	ld [hl], $30                                     ; $6351: $36 $30
	call $3da5                                       ; $6353: $cd $a5 $3d
	ld de, $2440                                     ; $6356: $11 $40 $24
	ld bc, $48d0                                     ; $6359: $01 $d0 $48
	ld a, $30                                        ; $635c: $3e $30
	call $3d99                                       ; $635e: $cd $99 $3d
	call $3d53                                       ; $6361: $cd $53 $3d
	ld de, $00c0                                     ; $6364: $11 $c0 $00
	ld bc, $0000                                     ; $6367: $01 $00 $00
	call $3d32                                       ; $636a: $cd $32 $3d
	ld hl, $7f87                                     ; $636d: $21 $87 $7f
	call $3c78                                       ; $6370: $cd $78 $3c
	ld a, $0c                                        ; $6373: $3e $0c
	call $1e2e                                       ; $6375: $cd $2e $1e
	ret                                              ; $6378: $c9


	call $3d4b                                       ; $6379: $cd $4b $3d
	ld l, $30                                        ; $637c: $2e $30
	ld a, [hl]                                       ; $637e: $7e
	or a                                             ; $637f: $b7
	jr z, jr_00a_6384                                ; $6380: $28 $02

	dec [hl]                                         ; $6382: $35
	ret                                              ; $6383: $c9


jr_00a_6384:
	call $3d1b                                       ; $6384: $cd $1b $3d
	ld a, d                                          ; $6387: $7a
	cp $6c                                           ; $6388: $fe $6c
	ret c                                            ; $638a: $d8

	ld l, $0a                                        ; $638b: $2e $0a
	ld [hl], $46                                     ; $638d: $36 $46
	ld bc, $67f0                                     ; $638f: $01 $f0 $67
	call $18c4                                       ; $6392: $cd $c4 $18
	rst FarCall                                          ; $6395: $f7
	ld b, l                                          ; $6396: $45
	ld c, b                                          ; $6397: $48
	add hl, bc                                       ; $6398: $09
	ret                                              ; $6399: $c9


	call $3d4b                                       ; $639a: $cd $4b $3d
	call $3d1b                                       ; $639d: $cd $1b $3d
	ld a, d                                          ; $63a0: $7a
	cp $c4                                           ; $63a1: $fe $c4
	ret c                                            ; $63a3: $d8

	ld l, $0a                                        ; $63a4: $2e $0a
	ld [hl], $47                                     ; $63a6: $36 $47
	call $3d58                                       ; $63a8: $cd $58 $3d
	ret                                              ; $63ab: $c9


	ld [hl], $48                                     ; $63ac: $36 $48
	ld hl, $470f                                     ; $63ae: $21 $0f $47
	call $3c1d                                       ; $63b1: $cd $1d $3c
	ld hl, $4745                                     ; $63b4: $21 $45 $47
	call $3c1d                                       ; $63b7: $cd $1d $3c
	call $3cf2                                       ; $63ba: $cd $f2 $3c
	ret                                              ; $63bd: $c9


	ld [hl], $49                                     ; $63be: $36 $49
	ld l, $30                                        ; $63c0: $2e $30
	ld [hl], $3c                                     ; $63c2: $36 $3c
	ld hl, $470f                                     ; $63c4: $21 $0f $47
	call $3c18                                       ; $63c7: $cd $18 $3c
	ld hl, $474e                                     ; $63ca: $21 $4e $47
	call $3c18                                       ; $63cd: $cd $18 $3c
	call $3cee                                       ; $63d0: $cd $ee $3c
	rst FarCall                                          ; $63d3: $f7
	push af                                          ; $63d4: $f5
	ld c, l                                          ; $63d5: $4d
	ld a, [bc]                                       ; $63d6: $0a
	ld bc, $680c                                     ; $63d7: $01 $0c $68
	call $1890                                       ; $63da: $cd $90 $18
	ret                                              ; $63dd: $c9


	ld l, $30                                        ; $63de: $2e $30
	dec [hl]                                         ; $63e0: $35
	ret nz                                           ; $63e1: $c0

	ld l, $0a                                        ; $63e2: $2e $0a
	ld [hl], $4a                                     ; $63e4: $36 $4a
	call $3d58                                       ; $63e6: $cd $58 $3d
	ld bc, $0106                                     ; $63e9: $01 $06 $01
	call $3cd9                                       ; $63ec: $cd $d9 $3c
	rst FarCall                                          ; $63ef: $f7
	jp c, $094a                                      ; $63f0: $da $4a $09

	ret                                              ; $63f3: $c9


	ld [hl], $2d                                     ; $63f4: $36 $2d
	ld bc, $0a06                                     ; $63f6: $01 $06 $0a
	call $3cd9                                       ; $63f9: $cd $d9 $3c
	ret                                              ; $63fc: $c9


	call $3ce2                                       ; $63fd: $cd $e2 $3c
	ret nz                                           ; $6400: $c0

	ld l, $0a                                        ; $6401: $2e $0a
	ld [hl], $2e                                     ; $6403: $36 $2e
	ld bc, $0a0d                                     ; $6405: $01 $0d $0a
	call $3cd9                                       ; $6408: $cd $d9 $3c
	ld hl, $895e                                     ; $640b: $21 $5e $89
	rst FarCall                                          ; $640e: $f7
	ccf                                              ; $640f: $3f
	ld d, c                                          ; $6410: $51
	ld a, [bc]                                       ; $6411: $0a
	ld hl, $8959                                     ; $6412: $21 $59 $89
	rst FarCall                                          ; $6415: $f7
	ld de, $0a51                                     ; $6416: $11 $51 $0a
	ret                                              ; $6419: $c9


	call $3ce2                                       ; $641a: $cd $e2 $3c
	ret nz                                           ; $641d: $c0

	ld l, $0a                                        ; $641e: $2e $0a
	ld [hl], $2f                                     ; $6420: $36 $2f
	ret                                              ; $6422: $c9


	ld [hl], $30                                     ; $6423: $36 $30
	ld l, $30                                        ; $6425: $2e $30
	ld [hl], $5a                                     ; $6427: $36 $5a
	call $3c62                                       ; $6429: $cd $62 $3c
	ld a, $34                                        ; $642c: $3e $34
	call $1e2e                                       ; $642e: $cd $2e $1e
	ret                                              ; $6431: $c9


	call $3ce7                                       ; $6432: $cd $e7 $3c
	ld l, $30                                        ; $6435: $2e $30
	dec [hl]                                         ; $6437: $35
	ret nz                                           ; $6438: $c0

	ld l, $0a                                        ; $6439: $2e $0a
	ld [hl], $31                                     ; $643b: $36 $31
	call $3cf2                                       ; $643d: $cd $f2 $3c
	ret                                              ; $6440: $c9


	ld [hl], $2b                                     ; $6441: $36 $2b
	call $3c41                                       ; $6443: $cd $41 $3c
	call $3cee                                       ; $6446: $cd $ee $3c
	ld a, $09                                        ; $6449: $3e $09
	ld [$d884], a                                    ; $644b: $ea $84 $d8
	ret                                              ; $644e: $c9


Call_00a_644f:
	ld de, $8638                                     ; $644f: $11 $38 $86
	jr jr_00a_6468                                   ; $6452: $18 $14

Call_00a_6454:
	ld de, $745a                                     ; $6454: $11 $5a $74
	jr jr_00a_6468                                   ; $6457: $18 $0f

Call_00a_6459:
	push hl                                          ; $6459: $e5
	ld hl, $646d                                     ; $645a: $21 $6d $64
	ld a, [$d8b0]                                    ; $645d: $fa $b0 $d8
	call $3c89                                       ; $6460: $cd $89 $3c
	pop hl                                           ; $6463: $e1
	ld a, e                                          ; $6464: $7b
	add $04                                          ; $6465: $c6 $04
	ld e, a                                          ; $6467: $5f

jr_00a_6468:
	rst FarCall                                          ; $6468: $f7
	db $f4                                           ; $6469: $f4
	ld b, h                                          ; $646a: $44
	add hl, bc                                       ; $646b: $09
	ret                                              ; $646c: $c9


	ld c, b                                          ; $646d: $48
	ld [hl-], a                                      ; $646e: $32
	jr nc, jr_00a_648b                               ; $646f: $30 $1a

	ld d, b                                          ; $6471: $50
	ld [de], a                                       ; $6472: $12
	ld a, [hl]                                       ; $6473: $7e
	rst JumpTable                                          ; $6474: $c7
	xor c                                            ; $6475: $a9
	ld h, h                                          ; $6476: $64
	ld [hl-], a                                      ; $6477: $32
	ld h, l                                          ; $6478: $65
	ld e, l                                          ; $6479: $5d
	ld h, l                                          ; $647a: $65
	ld h, $66                                        ; $647b: $26 $66
	ld e, [hl]                                       ; $647d: $5e
	ld h, [hl]                                       ; $647e: $66
	or a                                             ; $647f: $b7
	ld h, [hl]                                       ; $6480: $66
	ldh [$66], a                                     ; $6481: $e0 $66
	ld l, d                                          ; $6483: $6a
	ld h, l                                          ; $6484: $65
	and e                                            ; $6485: $a3
	ld h, l                                          ; $6486: $65
	ret nz                                           ; $6487: $c0

	ld h, l                                          ; $6488: $65
	db $ec                                           ; $6489: $ec
	ld h, l                                          ; $648a: $65

jr_00a_648b:
	rrca                                             ; $648b: $0f
	ld h, [hl]                                       ; $648c: $66
	rst $38                                          ; $648d: $ff
	ld h, [hl]                                       ; $648e: $66
	ld [hl-], a                                      ; $648f: $32
	ld h, a                                          ; $6490: $67
	ld d, [hl]                                       ; $6491: $56
	ld h, a                                          ; $6492: $67
	adc h                                            ; $6493: $8c
	ld h, a                                          ; $6494: $67
	or e                                             ; $6495: $b3
	ld h, a                                          ; $6496: $67
	ld d, d                                          ; $6497: $52
	ld l, b                                          ; $6498: $68
	or h                                             ; $6499: $b4
	ld l, b                                          ; $649a: $68
	and $68                                          ; $649b: $e6 $68
	inc hl                                           ; $649d: $23
	ld l, c                                          ; $649e: $69
	ld b, e                                          ; $649f: $43
	ld l, c                                          ; $64a0: $69
	call z, $da64                                    ; $64a1: $cc $64 $da
	ld h, h                                          ; $64a4: $64
	push af                                          ; $64a5: $f5
	ld h, h                                          ; $64a6: $64
	inc de                                           ; $64a7: $13
	ld h, l                                          ; $64a8: $65
	ld [hl], $16                                     ; $64a9: $36 $16
	ld de, $f46a                                     ; $64ab: $11 $6a $f4
	ld bc, $5414                                     ; $64ae: $01 $14 $54
	ld a, $30                                        ; $64b1: $3e $30
	call $3d99                                       ; $64b3: $cd $99 $3d
	call $3d53                                       ; $64b6: $cd $53 $3d
	call $3d78                                       ; $64b9: $cd $78 $3d
	ld l, $30                                        ; $64bc: $2e $30
	ld [hl], $0a                                     ; $64be: $36 $0a
	ld bc, $6698                                     ; $64c0: $01 $98 $66
	call $18c4                                       ; $64c3: $cd $c4 $18
	ld hl, $7fcd                                     ; $64c6: $21 $cd $7f
	jp $3c78                                         ; $64c9: $c3 $78 $3c


	ld l, $07                                        ; $64cc: $2e $07
	inc [hl]                                         ; $64ce: $34
	inc [hl]                                         ; $64cf: $34
	inc [hl]                                         ; $64d0: $34
	ld l, $30                                        ; $64d1: $2e $30
	dec [hl]                                         ; $64d3: $35
	ret nz                                           ; $64d4: $c0

	ld l, $0a                                        ; $64d5: $2e $0a
	ld [hl], $17                                     ; $64d7: $36 $17
	ret                                              ; $64d9: $c9


	ld a, [$d884]                                    ; $64da: $fa $84 $d8
	cp $10                                           ; $64dd: $fe $10
	ret nz                                           ; $64df: $c0

	ld l, $0a                                        ; $64e0: $2e $0a
	ld [hl], $18                                     ; $64e2: $36 $18
	ld a, [$d840]                                    ; $64e4: $fa $40 $d8
	cp $03                                           ; $64e7: $fe $03
	ld bc, $0702                                     ; $64e9: $01 $02 $07
	jr z, jr_00a_64f1                                ; $64ec: $28 $03

	ld bc, $0707                                     ; $64ee: $01 $07 $07

jr_00a_64f1:
	call $3cd9                                       ; $64f1: $cd $d9 $3c
	ret                                              ; $64f4: $c9


	ld l, $30                                        ; $64f5: $2e $30
	inc [hl]                                         ; $64f7: $34
	ld a, [hl]                                       ; $64f8: $7e
	and $08                                          ; $64f9: $e6 $08
	ld bc, $5414                                     ; $64fb: $01 $14 $54
	jr z, jr_00a_6503                                ; $64fe: $28 $03

	ld bc, $542c                                     ; $6500: $01 $2c $54

jr_00a_6503:
	call $3d3d                                       ; $6503: $cd $3d $3d
	call $3ce2                                       ; $6506: $cd $e2 $3c
	ret nz                                           ; $6509: $c0

	ld l, $0a                                        ; $650a: $2e $0a
	ld [hl], $19                                     ; $650c: $36 $19
	ld l, $30                                        ; $650e: $2e $30
	ld [hl], $0a                                     ; $6510: $36 $0a
	ret                                              ; $6512: $c9


	ld l, $07                                        ; $6513: $2e $07
	dec [hl]                                         ; $6515: $35
	dec [hl]                                         ; $6516: $35
	dec [hl]                                         ; $6517: $35
	ld l, $30                                        ; $6518: $2e $30
	dec [hl]                                         ; $651a: $35
	ret nz                                           ; $651b: $c0

	ld l, $0a                                        ; $651c: $2e $0a
	ld [hl], $01                                     ; $651e: $36 $01
	call $3d58                                       ; $6520: $cd $58 $3d
	xor a                                            ; $6523: $af
	ld [$d884], a                                    ; $6524: $ea $84 $d8
	ld a, $80                                        ; $6527: $3e $80
	ld [$d848], a                                    ; $6529: $ea $48 $d8
	ld a, $01                                        ; $652c: $3e $01
	ld [$d8c1], a                                    ; $652e: $ea $c1 $d8
	ret                                              ; $6531: $c9


	ld a, [$d884]                                    ; $6532: $fa $84 $d8
	cp $03                                           ; $6535: $fe $03
	jr z, jr_00a_6541                                ; $6537: $28 $08

	cp $07                                           ; $6539: $fe $07
	jr nz, jr_00a_654b                               ; $653b: $20 $0e

	ld a, $03                                        ; $653d: $3e $03
	jr jr_00a_6543                                   ; $653f: $18 $02

jr_00a_6541:
	ld a, $07                                        ; $6541: $3e $07

jr_00a_6543:
	ld l, $0a                                        ; $6543: $2e $0a
	ld [hl], a                                       ; $6545: $77
	rst FarCall                                          ; $6546: $f7
	ld b, l                                          ; $6547: $45
	ld c, b                                          ; $6548: $48
	add hl, bc                                       ; $6549: $09
	ret                                              ; $654a: $c9


jr_00a_654b:
	ld de, $2040                                     ; $654b: $11 $40 $20
	ld bc, $50c8                                     ; $654e: $01 $c8 $50
	ld a, $30                                        ; $6551: $3e $30
	call $3d99                                       ; $6553: $cd $99 $3d
	call $3d71                                       ; $6556: $cd $71 $3d
	call $3d58                                       ; $6559: $cd $58 $3d
	ret                                              ; $655c: $c9


	xor a                                            ; $655d: $af
	ld [$d848], a                                    ; $655e: $ea $48 $d8
	ld [$d8c1], a                                    ; $6561: $ea $c1 $d8
	ld a, $01                                        ; $6564: $3e $01
	ld l, $0a                                        ; $6566: $2e $0a
	ld [hl], a                                       ; $6568: $77
	ret                                              ; $6569: $c9


	ld [hl], $08                                     ; $656a: $36 $08
	ld l, $30                                        ; $656c: $2e $30
	ld [hl], $5a                                     ; $656e: $36 $5a
	ld de, $3b32                                     ; $6570: $11 $32 $3b
	call $3bf4                                       ; $6573: $cd $f4 $3b
	ld bc, $5027                                     ; $6576: $01 $27 $50
	ld a, $30                                        ; $6579: $3e $30
	call $3bfc                                       ; $657b: $cd $fc $3b
	call $3d53                                       ; $657e: $cd $53 $3d
	call $16d0                                       ; $6581: $cd $d0 $16
	ld bc, $63da                                     ; $6584: $01 $da $63
	call $18c4                                       ; $6587: $cd $c4 $18
	ld hl, $7f8e                                     ; $658a: $21 $8e $7f
	call $3c78                                       ; $658d: $cd $78 $3c
	call $3c36                                       ; $6590: $cd $36 $3c
	ld hl, $46c7                                     ; $6593: $21 $c7 $46
	call $3c1d                                       ; $6596: $cd $1d $3c
	call $3cf2                                       ; $6599: $cd $f2 $3c
	ld bc, $0703                                     ; $659c: $01 $03 $07
	call $3cd9                                       ; $659f: $cd $d9 $3c
	ret                                              ; $65a2: $c9


	ld l, $30                                        ; $65a3: $2e $30
	dec [hl]                                         ; $65a5: $35
	jr nz, jr_00a_65bc                               ; $65a6: $20 $14

	ld l, $0a                                        ; $65a8: $2e $0a
	ld [hl], $09                                     ; $65aa: $36 $09
	call $3da5                                       ; $65ac: $cd $a5 $3d
	ld bc, $5028                                     ; $65af: $01 $28 $50
	ld a, $30                                        ; $65b2: $3e $30
	call $3bfc                                       ; $65b4: $cd $fc $3b
	ld a, $5f                                        ; $65b7: $3e $5f
	call $1e2e                                       ; $65b9: $cd $2e $1e

jr_00a_65bc:
	call $16d0                                       ; $65bc: $cd $d0 $16
	ret                                              ; $65bf: $c9


	ld l, $07                                        ; $65c0: $2e $07
	ld a, [hl]                                       ; $65c2: $7e
	add $03                                          ; $65c3: $c6 $03
	cp $c8                                           ; $65c5: $fe $c8
	jr c, jr_00a_65df                                ; $65c7: $38 $16

	ld l, $0a                                        ; $65c9: $2e $0a
	ld [hl], $0a                                     ; $65cb: $36 $0a
	call $3da5                                       ; $65cd: $cd $a5 $3d
	ld bc, $50c8                                     ; $65d0: $01 $c8 $50
	ld de, $c832                                     ; $65d3: $11 $32 $c8
	ld a, $30                                        ; $65d6: $3e $30
	call $3d99                                       ; $65d8: $cd $99 $3d
	ld a, $c8                                        ; $65db: $3e $c8
	ld l, $07                                        ; $65dd: $2e $07

jr_00a_65df:
	ld [hl], a                                       ; $65df: $77
	cp $84                                           ; $65e0: $fe $84
	jr c, jr_00a_65e8                                ; $65e2: $38 $04

	rst FarCall                                          ; $65e4: $f7
	ld c, [hl]                                       ; $65e5: $4e
	ld b, h                                          ; $65e6: $44
	add hl, bc                                       ; $65e7: $09

jr_00a_65e8:
	call $16d0                                       ; $65e8: $cd $d0 $16
	ret                                              ; $65eb: $c9


	ld l, $07                                        ; $65ec: $2e $07
	ld a, [hl]                                       ; $65ee: $7e
	sub $03                                          ; $65ef: $d6 $03
	cp $3b                                           ; $65f1: $fe $3b
	jr nc, jr_00a_660a                               ; $65f3: $30 $15

	ld l, $0a                                        ; $65f5: $2e $0a
	ld [hl], $0b                                     ; $65f7: $36 $0b
	ld l, $30                                        ; $65f9: $2e $30
	ld [hl], $1e                                     ; $65fb: $36 $1e
	ld a, $14                                        ; $65fd: $3e $14
	ld [$ca00], a                                    ; $65ff: $ea $00 $ca
	rst FarCall                                          ; $6602: $f7
	halt                                             ; $6603: $76
	ld b, h                                          ; $6604: $44
	add hl, bc                                       ; $6605: $09
	ld a, $3b                                        ; $6606: $3e $3b
	ld l, $07                                        ; $6608: $2e $07

jr_00a_660a:
	ld [hl], a                                       ; $660a: $77
	call $16d0                                       ; $660b: $cd $d0 $16
	ret                                              ; $660e: $c9


	ld l, $30                                        ; $660f: $2e $30
	dec [hl]                                         ; $6611: $35
	ret nz                                           ; $6612: $c0

	ld l, $0a                                        ; $6613: $2e $0a
	ld [hl], $0c                                     ; $6615: $36 $0c
	call $3cee                                       ; $6617: $cd $ee $3c
	call $3d58                                       ; $661a: $cd $58 $3d
	push hl                                          ; $661d: $e5
	ld hl, $ca00                                     ; $661e: $21 $00 $ca
	call $2dfc                                       ; $6621: $cd $fc $2d
	pop hl                                           ; $6624: $e1
	ret                                              ; $6625: $c9


	ld [hl], $04                                     ; $6626: $36 $04
	ld l, $31                                        ; $6628: $2e $31
	ld [hl], $00                                     ; $662a: $36 $00
	call $3da5                                       ; $662c: $cd $a5 $3d
	ld de, $2832                                     ; $662f: $11 $32 $28
	call $3bf4                                       ; $6632: $cd $f4 $3b
	ld bc, $5030                                     ; $6635: $01 $30 $50
	ld a, $4a                                        ; $6638: $3e $4a
	call $3bfc                                       ; $663a: $cd $fc $3b
	call $3d53                                       ; $663d: $cd $53 $3d
	call $16d0                                       ; $6640: $cd $d0 $16
	ld bc, $0706                                     ; $6643: $01 $06 $07
	call $3cd9                                       ; $6646: $cd $d9 $3c
	ld bc, $63e2                                     ; $6649: $01 $e2 $63
	call $18c4                                       ; $664c: $cd $c4 $18
	ld hl, $7fa3                                     ; $664f: $21 $a3 $7f
	call $3c78                                       ; $6652: $cd $78 $3c
	call $3c62                                       ; $6655: $cd $62 $3c
	ld a, $1d                                        ; $6658: $3e $1d
	call $1e2e                                       ; $665a: $cd $2e $1e
	ret                                              ; $665d: $c9


	call $16d0                                       ; $665e: $cd $d0 $16
	call $3ce7                                       ; $6661: $cd $e7 $3c
	ld l, $0c                                        ; $6664: $2e $0c
	ld a, [hl]                                       ; $6666: $7e
	or a                                             ; $6667: $b7
	ret nz                                           ; $6668: $c0

	ld l, $31                                        ; $6669: $2e $31
	inc [hl]                                         ; $666b: $34
	ld a, [hl]                                       ; $666c: $7e
	cp $06                                           ; $666d: $fe $06
	jr nc, jr_00a_6682                               ; $666f: $30 $11

	ld l, $0c                                        ; $6671: $2e $0c
	inc [hl]                                         ; $6673: $34
	and $03                                          ; $6674: $e6 $03
	push hl                                          ; $6676: $e5
	ld hl, $66af                                     ; $6677: $21 $af $66
	call $3c89                                       ; $667a: $cd $89 $3c
	pop hl                                           ; $667d: $e1
	call $3bf4                                       ; $667e: $cd $f4 $3b
	ret                                              ; $6681: $c9


jr_00a_6682:
	ld l, $0a                                        ; $6682: $2e $0a
	ld [hl], $05                                     ; $6684: $36 $05
	ld l, $30                                        ; $6686: $2e $30
	ld [hl], $5a                                     ; $6688: $36 $5a
	call $3da5                                       ; $668a: $cd $a5 $3d
	ld de, $2840                                     ; $668d: $11 $40 $28
	call $3bf4                                       ; $6690: $cd $f4 $3b
	ld bc, $5031                                     ; $6693: $01 $31 $50
	ld a, $4a                                        ; $6696: $3e $4a
	call $3bfc                                       ; $6698: $cd $fc $3b
	call $3d53                                       ; $669b: $cd $53 $3d
	ld bc, $67f0                                     ; $669e: $01 $f0 $67
	call $18c4                                       ; $66a1: $cd $c4 $18
	ld b, $04                                        ; $66a4: $06 $04
	call $0a64                                       ; $66a6: $cd $64 $0a
	ld a, $21                                        ; $66a9: $3e $21
	call $1e2e                                       ; $66ab: $cd $2e $1e
	ret                                              ; $66ae: $c9


	dec l                                            ; $66af: $2d
	jr nz, @+$48                                     ; $66b0: $20 $46

	jr z, jr_00a_66ee                                ; $66b2: $28 $3a

	ld [hl-], a                                      ; $66b4: $32
	inc a                                            ; $66b5: $3c
	ld h, $cd                                        ; $66b6: $26 $cd
	sub b                                            ; $66b8: $90
	ld a, [bc]                                       ; $66b9: $0a
	call $16d0                                       ; $66ba: $cd $d0 $16
	call $3ce7                                       ; $66bd: $cd $e7 $3c
	ld l, $0c                                        ; $66c0: $2e $0c
	ld a, [hl]                                       ; $66c2: $7e
	or a                                             ; $66c3: $b7
	ret nz                                           ; $66c4: $c0

	ld l, $30                                        ; $66c5: $2e $30
	ld [hl], $78                                     ; $66c7: $36 $78
	ld l, $0a                                        ; $66c9: $2e $0a
	ld [hl], $06                                     ; $66cb: $36 $06
	call $3cf2                                       ; $66cd: $cd $f2 $3c
	rst FarCall                                          ; $66d0: $f7
	push af                                          ; $66d1: $f5
	ld c, l                                          ; $66d2: $4d
	ld a, [bc]                                       ; $66d3: $0a
	ld bc, $680c                                     ; $66d4: $01 $0c $68
	call $1890                                       ; $66d7: $cd $90 $18
	ld b, $04                                        ; $66da: $06 $04
	call $0a64                                       ; $66dc: $cd $64 $0a
	ret                                              ; $66df: $c9


	call $0a6f                                       ; $66e0: $cd $6f $0a
	call $3d58                                       ; $66e3: $cd $58 $3d
	ld l, $30                                        ; $66e6: $2e $30
	dec [hl]                                         ; $66e8: $35
	ret nz                                           ; $66e9: $c0

	ld l, $0a                                        ; $66ea: $2e $0a
	ld [hl], $02                                     ; $66ec: $36 $02

jr_00a_66ee:
	call $3c41                                       ; $66ee: $cd $41 $3c
	call $3cee                                       ; $66f1: $cd $ee $3c
	ld a, $ff                                        ; $66f4: $3e $ff
	ld [$d884], a                                    ; $66f6: $ea $84 $d8
	ld a, $10                                        ; $66f9: $3e $10
	ld [$c2c7], a                                    ; $66fb: $ea $c7 $c2
	ret                                              ; $66fe: $c9


	ld [hl], $0d                                     ; $66ff: $36 $0d
	ld l, $30                                        ; $6701: $2e $30
	ld [hl], $36                                     ; $6703: $36 $36
	ld de, $2f55                                     ; $6705: $11 $55 $2f
	ld bc, $50f4                                     ; $6708: $01 $f4 $50
	ld a, $30                                        ; $670b: $3e $30
	call $3d99                                       ; $670d: $cd $99 $3d
	call $3d53                                       ; $6710: $cd $53 $3d
	ld bc, $63de                                     ; $6713: $01 $de $63
	call $18c4                                       ; $6716: $cd $c4 $18
	ld hl, $7f95                                     ; $6719: $21 $95 $7f
	call $3c78                                       ; $671c: $cd $78 $3c
	call $3c36                                       ; $671f: $cd $36 $3c
	ld hl, $46d0                                     ; $6722: $21 $d0 $46
	call $3c1d                                       ; $6725: $cd $1d $3c
	call $3cf2                                       ; $6728: $cd $f2 $3c
	ld bc, $0704                                     ; $672b: $01 $04 $07
	call $3cd9                                       ; $672e: $cd $d9 $3c
	ret                                              ; $6731: $c9


	ld l, $30                                        ; $6732: $2e $30
	dec [hl]                                         ; $6734: $35
	ret nz                                           ; $6735: $c0

	ld [hl], $19                                     ; $6736: $36 $19
	ld l, $0a                                        ; $6738: $2e $0a
	ld [hl], $0e                                     ; $673a: $36 $0e
	ld de, $3052                                     ; $673c: $11 $52 $30
	ld bc, $5100                                     ; $673f: $01 $00 $51
	ld a, $30                                        ; $6742: $3e $30
	call $3d99                                       ; $6744: $cd $99 $3d
	ld bc, $ff54                                     ; $6747: $01 $54 $ff
	ld de, $00ac                                     ; $674a: $11 $ac $00
	call $3d32                                       ; $674d: $cd $32 $3d
	ld a, $3c                                        ; $6750: $3e $3c
	call $1e2e                                       ; $6752: $cd $2e $1e
	ret                                              ; $6755: $c9


	call $3d1b                                       ; $6756: $cd $1b $3d
	call $3d13                                       ; $6759: $cd $13 $3d
	call $3d0b                                       ; $675c: $cd $0b $3d
	inc bc                                           ; $675f: $03
	dec de                                           ; $6760: $1b
	call $3d32                                       ; $6761: $cd $32 $3d
	ld l, $30                                        ; $6764: $2e $30
	dec [hl]                                         ; $6766: $35
	jr nz, jr_00a_678b                               ; $6767: $20 $22

	ld [hl], $28                                     ; $6769: $36 $28
	ld l, $0a                                        ; $676b: $2e $0a
	ld [hl], $0f                                     ; $676d: $36 $0f
	call $3da5                                       ; $676f: $cd $a5 $3d
	ld bc, $502a                                     ; $6772: $01 $2a $50
	ld a, $30                                        ; $6775: $3e $30
	call $3bfc                                       ; $6777: $cd $fc $3b
	ld bc, $0000                                     ; $677a: $01 $00 $00
	ld de, $0000                                     ; $677d: $11 $00 $00
	call $3d32                                       ; $6780: $cd $32 $3d
	ld a, $15                                        ; $6783: $3e $15
	ld [$c600], a                                    ; $6785: $ea $00 $c6
	call $16d0                                       ; $6788: $cd $d0 $16

jr_00a_678b:
	ret                                              ; $678b: $c9


	call $16d0                                       ; $678c: $cd $d0 $16
	ld l, $30                                        ; $678f: $2e $30
	dec [hl]                                         ; $6791: $35
	ret nz                                           ; $6792: $c0

	ld [hl], $78                                     ; $6793: $36 $78
	ld l, $0a                                        ; $6795: $2e $0a
	ld [hl], $10                                     ; $6797: $36 $10
	ld a, $16                                        ; $6799: $3e $16
	ld [$c700], a                                    ; $679b: $ea $00 $c7
	ld a, $17                                        ; $679e: $3e $17
	ld [$c800], a                                    ; $67a0: $ea $00 $c8
	ld a, $18                                        ; $67a3: $3e $18
	ld [$c900], a                                    ; $67a5: $ea $00 $c9
	ld a, $19                                        ; $67a8: $3e $19
	ld [$ca00], a                                    ; $67aa: $ea $00 $ca
	ld a, $76                                        ; $67ad: $3e $76
	call $1e2e                                       ; $67af: $cd $2e $1e
	ret                                              ; $67b2: $c9


	push hl                                          ; $67b3: $e5
	ld a, [$c120]                                    ; $67b4: $fa $20 $c1
	and $01                                          ; $67b7: $e6 $01
	jr nz, jr_00a_67d3                               ; $67b9: $20 $18

	ld hl, $c600                                     ; $67bb: $21 $00 $c6
	call $3d53                                       ; $67be: $cd $53 $3d
	inc h                                            ; $67c1: $24
	call $3d58                                       ; $67c2: $cd $58 $3d
	inc h                                            ; $67c5: $24
	call $3d58                                       ; $67c6: $cd $58 $3d
	inc h                                            ; $67c9: $24
	call $3d53                                       ; $67ca: $cd $53 $3d
	inc h                                            ; $67cd: $24
	call $3d53                                       ; $67ce: $cd $53 $3d
	jr jr_00a_67e9                                   ; $67d1: $18 $16

jr_00a_67d3:
	ld hl, $c600                                     ; $67d3: $21 $00 $c6
	call $3d58                                       ; $67d6: $cd $58 $3d
	inc h                                            ; $67d9: $24
	call $3d53                                       ; $67da: $cd $53 $3d
	inc h                                            ; $67dd: $24
	call $3d53                                       ; $67de: $cd $53 $3d
	inc h                                            ; $67e1: $24
	call $3d58                                       ; $67e2: $cd $58 $3d
	inc h                                            ; $67e5: $24
	call $3d58                                       ; $67e6: $cd $58 $3d

jr_00a_67e9:
	pop hl                                           ; $67e9: $e1
	call $16d0                                       ; $67ea: $cd $d0 $16
	ld l, $30                                        ; $67ed: $2e $30
	dec [hl]                                         ; $67ef: $35
	ret nz                                           ; $67f0: $c0

	ld [hl], $d2                                     ; $67f1: $36 $d2
	ld de, $8c48                                     ; $67f3: $11 $48 $8c
	call $3bf4                                       ; $67f6: $cd $f4 $3b
	ld bc, $502d                                     ; $67f9: $01 $2d $50
	ld a, $30                                        ; $67fc: $3e $30
	call $3bfc                                       ; $67fe: $cd $fc $3b
	ld l, $0a                                        ; $6801: $2e $0a
	ld [hl], $11                                     ; $6803: $36 $11
	push hl                                          ; $6805: $e5
	ld hl, $c600                                     ; $6806: $21 $00 $c6
	call $2dfc                                       ; $6809: $cd $fc $2d
	ld hl, $c700                                     ; $680c: $21 $00 $c7
	call $2dfc                                       ; $680f: $cd $fc $2d
	ld hl, $c800                                     ; $6812: $21 $00 $c8
	call $2dfc                                       ; $6815: $cd $fc $2d
	ld hl, $c900                                     ; $6818: $21 $00 $c9
	call $2dfc                                       ; $681b: $cd $fc $2d
	ld hl, $ca00                                     ; $681e: $21 $00 $ca
	call $2dfc                                       ; $6821: $cd $fc $2d
	pop hl                                           ; $6824: $e1
	push hl                                          ; $6825: $e5
	ld hl, $c800                                     ; $6826: $21 $00 $c8
	ld a, $1a                                        ; $6829: $3e $1a
	ld [hl], a                                       ; $682b: $77
	ld l, $31                                        ; $682c: $2e $31
	ld [hl], $01                                     ; $682e: $36 $01
	ld hl, $c900                                     ; $6830: $21 $00 $c9
	ld a, $1a                                        ; $6833: $3e $1a
	ld [hl], a                                       ; $6835: $77
	ld l, $31                                        ; $6836: $2e $31
	ld [hl], $01                                     ; $6838: $36 $01
	ld hl, $ca00                                     ; $683a: $21 $00 $ca
	ld a, $1a                                        ; $683d: $3e $1a
	ld [hl], a                                       ; $683f: $77
	ld l, $31                                        ; $6840: $2e $31
	ld [hl], $00                                     ; $6842: $36 $00
	pop hl                                           ; $6844: $e1
	ld a, $01                                        ; $6845: $3e $01
	ld [$d8a8], a                                    ; $6847: $ea $a8 $d8
	call $3d58                                       ; $684a: $cd $58 $3d
	rst FarCall                                          ; $684d: $f7
	ld b, [hl]                                       ; $684e: $46
	ld b, h                                          ; $684f: $44
	add hl, bc                                       ; $6850: $09
	ret                                              ; $6851: $c9


	push hl                                          ; $6852: $e5
	ld hl, $c800                                     ; $6853: $21 $00 $c8
	ld a, [$c120]                                    ; $6856: $fa $20 $c1
	and $01                                          ; $6859: $e6 $01
	jr nz, jr_00a_686a                               ; $685b: $20 $0d

	call $3d53                                       ; $685d: $cd $53 $3d
	inc h                                            ; $6860: $24
	call $3d58                                       ; $6861: $cd $58 $3d
	inc h                                            ; $6864: $24
	call $3d58                                       ; $6865: $cd $58 $3d
	jr jr_00a_6875                                   ; $6868: $18 $0b

jr_00a_686a:
	call $3d58                                       ; $686a: $cd $58 $3d
	inc h                                            ; $686d: $24
	call $3d53                                       ; $686e: $cd $53 $3d
	inc h                                            ; $6871: $24
	call $3d53                                       ; $6872: $cd $53 $3d

jr_00a_6875:
	pop hl                                           ; $6875: $e1
	call $16d0                                       ; $6876: $cd $d0 $16
	ld l, $30                                        ; $6879: $2e $30
	ld a, [hl]                                       ; $687b: $7e
	or a                                             ; $687c: $b7
	jr z, jr_00a_6881                                ; $687d: $28 $02

	dec [hl]                                         ; $687f: $35
	ret                                              ; $6880: $c9


jr_00a_6881:
	xor a                                            ; $6881: $af
	ld [$d8a8], a                                    ; $6882: $ea $a8 $d8
	push hl                                          ; $6885: $e5
	xor a                                            ; $6886: $af
	ld hl, $c800                                     ; $6887: $21 $00 $c8
	add [hl]                                         ; $688a: $86
	inc h                                            ; $688b: $24
	add [hl]                                         ; $688c: $86
	inc h                                            ; $688d: $24
	add [hl]                                         ; $688e: $86
	pop hl                                           ; $688f: $e1
	ret nz                                           ; $6890: $c0

	push hl                                          ; $6891: $e5
	ld hl, $c800                                     ; $6892: $21 $00 $c8
	call $2dfc                                       ; $6895: $cd $fc $2d
	ld hl, $c900                                     ; $6898: $21 $00 $c9
	call $2dfc                                       ; $689b: $cd $fc $2d
	ld hl, $ca00                                     ; $689e: $21 $00 $ca
	call $2dfc                                       ; $68a1: $cd $fc $2d
	pop hl                                           ; $68a4: $e1
	ld l, $0a                                        ; $68a5: $2e $0a
	ld [hl], $12                                     ; $68a7: $36 $12
	call $3cee                                       ; $68a9: $cd $ee $3c
	call $3d58                                       ; $68ac: $cd $58 $3d
	rst FarCall                                          ; $68af: $f7
	halt                                             ; $68b0: $76
	ld b, h                                          ; $68b1: $44
	add hl, bc                                       ; $68b2: $09
	ret                                              ; $68b3: $c9


	ld [hl], $13                                     ; $68b4: $36 $13
	ld l, $30                                        ; $68b6: $2e $30
	ld [hl], $90                                     ; $68b8: $36 $90
	ld de, $3238                                     ; $68ba: $11 $38 $32
	call $3bf4                                       ; $68bd: $cd $f4 $3b
	call $3da5                                       ; $68c0: $cd $a5 $3d
	ld bc, $502e                                     ; $68c3: $01 $2e $50
	ld a, $30                                        ; $68c6: $3e $30
	call $3bfc                                       ; $68c8: $cd $fc $3b
	call $3d53                                       ; $68cb: $cd $53 $3d
	ld bc, $63e2                                     ; $68ce: $01 $e2 $63
	call $18c4                                       ; $68d1: $cd $c4 $18
	ld hl, $7f9c                                     ; $68d4: $21 $9c $7f
	call $3c78                                       ; $68d7: $cd $78 $3c
	ld bc, $0705                                     ; $68da: $01 $05 $07
	call $3cd9                                       ; $68dd: $cd $d9 $3c
	ld a, $44                                        ; $68e0: $3e $44
	call $1e2e                                       ; $68e2: $cd $2e $1e
	ret                                              ; $68e5: $c9


	call $16d0                                       ; $68e6: $cd $d0 $16
	ld l, $30                                        ; $68e9: $2e $30
	dec [hl]                                         ; $68eb: $35
	ret nz                                           ; $68ec: $c0

	ld [hl], $64                                     ; $68ed: $36 $64
	ld l, $0a                                        ; $68ef: $2e $0a
	ld [hl], $14                                     ; $68f1: $36 $14
	ld de, $3838                                     ; $68f3: $11 $38 $38
	call $3bf4                                       ; $68f6: $cd $f4 $3b
	call $3da5                                       ; $68f9: $cd $a5 $3d
	ld bc, $502f                                     ; $68fc: $01 $2f $50
	ld a, $30                                        ; $68ff: $3e $30
	call $3bfc                                       ; $6901: $cd $fc $3b
	call $3d53                                       ; $6904: $cd $53 $3d
	rst FarCall                                          ; $6907: $f7
	ld d, [hl]                                       ; $6908: $56
	ld b, h                                          ; $6909: $44
	add hl, bc                                       ; $690a: $09
	call $3c36                                       ; $690b: $cd $36 $3c
	ld hl, $46d9                                     ; $690e: $21 $d9 $46
	call $3c1d                                       ; $6911: $cd $1d $3c
	ld hl, $46e2                                     ; $6914: $21 $e2 $46
	call $3c1d                                       ; $6917: $cd $1d $3c
	call $3cf2                                       ; $691a: $cd $f2 $3c
	ld a, $04                                        ; $691d: $3e $04
	call $1e2e                                       ; $691f: $cd $2e $1e
	ret                                              ; $6922: $c9


	call $16d0                                       ; $6923: $cd $d0 $16
	ld l, $30                                        ; $6926: $2e $30
	dec [hl]                                         ; $6928: $35
	ret nz                                           ; $6929: $c0

	ld l, $0a                                        ; $692a: $2e $0a
	ld [hl], $15                                     ; $692c: $36 $15
	call $3d58                                       ; $692e: $cd $58 $3d
	call $3cee                                       ; $6931: $cd $ee $3c
	rst FarCall                                          ; $6934: $f7
	ld c, [hl]                                       ; $6935: $4e
	ld b, h                                          ; $6936: $44
	add hl, bc                                       ; $6937: $09
	ld bc, $0106                                     ; $6938: $01 $06 $01
	call $3cd9                                       ; $693b: $cd $d9 $3c
	rst FarCall                                          ; $693e: $f7
	jp c, $094a                                      ; $693f: $da $4a $09

	ret                                              ; $6942: $c9


	call $3ce2                                       ; $6943: $cd $e2 $3c
	ret nz                                           ; $6946: $c0

	ld l, $0a                                        ; $6947: $2e $0a
	ld [hl], $02                                     ; $6949: $36 $02
	rst FarCall                                          ; $694b: $f7
	halt                                             ; $694c: $76
	ld b, h                                          ; $694d: $44
	add hl, bc                                       ; $694e: $09
	ret                                              ; $694f: $c9


	ld a, [hl]                                       ; $6950: $7e
	rst JumpTable                                          ; $6951: $c7
	halt                                             ; $6952: $76
	ld l, c                                          ; $6953: $69
	ld a, a                                          ; $6954: $7f
	ld l, c                                          ; $6955: $69
	or c                                             ; $6956: $b1
	ld l, c                                          ; $6957: $69
	add [hl]                                         ; $6958: $86
	ld l, d                                          ; $6959: $6a
	or l                                             ; $695a: $b5
	ld l, d                                          ; $695b: $6a
	db $eb                                           ; $695c: $eb
	ld l, d                                          ; $695d: $6a
	ld [$286b], sp                                   ; $695e: $08 $6b $28
	ld l, e                                          ; $6961: $6b
	inc a                                            ; $6962: $3c
	ld l, e                                          ; $6963: $6b
	ld d, a                                          ; $6964: $57
	ld l, e                                          ; $6965: $6b
	ld h, [hl]                                       ; $6966: $66
	ld l, e                                          ; $6967: $6b
	cp e                                             ; $6968: $bb
	ld l, c                                          ; $6969: $69
	jp z, $d369                                      ; $696a: $ca $69 $d3

	ld l, c                                          ; $696d: $69
	ldh [c], a                                       ; $696e: $e2
	ld l, c                                          ; $696f: $69
	dec e                                            ; $6970: $1d
	ld l, d                                          ; $6971: $6a
	ld c, d                                          ; $6972: $4a
	ld l, d                                          ; $6973: $6a
	ld a, c                                          ; $6974: $79
	ld l, d                                          ; $6975: $6a
	ld [hl], $01                                     ; $6976: $36 $01
	call $3d58                                       ; $6978: $cd $58 $3d
	call Call_00a_6b7a                               ; $697b: $cd $7a $6b
	ret                                              ; $697e: $c9


	ld a, [$d884]                                    ; $697f: $fa $84 $d8
	cp $03                                           ; $6982: $fe $03
	jr z, jr_00a_6994                                ; $6984: $28 $0e

	cp $06                                           ; $6986: $fe $06
	jr c, jr_00a_69ad                                ; $6988: $38 $23

	jr z, jr_00a_69ad                                ; $698a: $28 $21

	cp $08                                           ; $698c: $fe $08
	jr nc, jr_00a_69ad                               ; $698e: $30 $1d

	ld a, $03                                        ; $6990: $3e $03
	jr jr_00a_69a9                                   ; $6992: $18 $15

jr_00a_6994:
	ld a, [$d845]                                    ; $6994: $fa $45 $d8
	and $07                                          ; $6997: $e6 $07
	jr z, jr_00a_69a1                                ; $6999: $28 $06

	cp $02                                           ; $699b: $fe $02
	jr c, jr_00a_69a5                                ; $699d: $38 $06

	jr jr_00a_69a5                                   ; $699f: $18 $04

jr_00a_69a1:
	ld a, $0b                                        ; $69a1: $3e $0b
	jr jr_00a_69a9                                   ; $69a3: $18 $04

jr_00a_69a5:
	ld a, $0d                                        ; $69a5: $3e $0d
	jr jr_00a_69a9                                   ; $69a7: $18 $00

jr_00a_69a9:
	ld l, $0a                                        ; $69a9: $2e $0a
	ld [hl], a                                       ; $69ab: $77
	ret                                              ; $69ac: $c9


jr_00a_69ad:
	call $3d58                                       ; $69ad: $cd $58 $3d
	ret                                              ; $69b0: $c9


	xor a                                            ; $69b1: $af
	ld [$d848], a                                    ; $69b2: $ea $48 $d8
	ld a, $01                                        ; $69b5: $3e $01
	ld l, $0a                                        ; $69b7: $2e $0a
	ld [hl], a                                       ; $69b9: $77
	ret                                              ; $69ba: $c9


	ld a, $0c                                        ; $69bb: $3e $0c
	ld [hl], a                                       ; $69bd: $77
	ld bc, $0605                                     ; $69be: $01 $05 $06
	call $3cd9                                       ; $69c1: $cd $d9 $3c
	ld a, $1a                                        ; $69c4: $3e $1a
	call $1e2e                                       ; $69c6: $cd $2e $1e
	ret                                              ; $69c9: $c9


	call $3ce2                                       ; $69ca: $cd $e2 $3c
	ret nz                                           ; $69cd: $c0

	ld l, $0a                                        ; $69ce: $2e $0a
	ld [hl], $02                                     ; $69d0: $36 $02
	ret                                              ; $69d2: $c9


	ld a, $0e                                        ; $69d3: $3e $0e
	ld [hl], a                                       ; $69d5: $77
	ld bc, $0604                                     ; $69d6: $01 $04 $06
	call $3cd9                                       ; $69d9: $cd $d9 $3c
	ld a, $1a                                        ; $69dc: $3e $1a
	call $1e2e                                       ; $69de: $cd $2e $1e
	ret                                              ; $69e1: $c9


	call $3ce2                                       ; $69e2: $cd $e2 $3c
	ret nz                                           ; $69e5: $c0

	ld l, $0a                                        ; $69e6: $2e $0a
	ld [hl], $0f                                     ; $69e8: $36 $0f
	ld de, $3843                                     ; $69ea: $11 $43 $38
	call $3bf4                                       ; $69ed: $cd $f4 $3b
	call $3da5                                       ; $69f0: $cd $a5 $3d
	ld bc, $5032                                     ; $69f3: $01 $32 $50
	ld a, $30                                        ; $69f6: $3e $30
	call $3bfc                                       ; $69f8: $cd $fc $3b
	call $3d53                                       ; $69fb: $cd $53 $3d
	call $16d0                                       ; $69fe: $cd $d0 $16
	ld bc, $8c38                                     ; $6a01: $01 $38 $8c
	ld de, $0080                                     ; $6a04: $11 $80 $00
	rst FarCall                                          ; $6a07: $f7
	xor l                                            ; $6a08: $ad
	ld b, h                                          ; $6a09: $44
	add hl, bc                                       ; $6a0a: $09
	ld bc, $63f2                                     ; $6a0b: $01 $f2 $63
	call $18c4                                       ; $6a0e: $cd $c4 $18
	ld hl, $7faa                                     ; $6a11: $21 $aa $7f
	call $3c78                                       ; $6a14: $cd $78 $3c
	ld a, $18                                        ; $6a17: $3e $18
	call $1e2e                                       ; $6a19: $cd $2e $1e
	ret                                              ; $6a1c: $c9


	call $16d0                                       ; $6a1d: $cd $d0 $16
	call $3d1b                                       ; $6a20: $cd $1b $3d
	ld l, $07                                        ; $6a23: $2e $07
	ld a, [hl]                                       ; $6a25: $7e
	cp $8c                                           ; $6a26: $fe $8c
	ret c                                            ; $6a28: $d8

	ld l, $0a                                        ; $6a29: $2e $0a
	ld [hl], $10                                     ; $6a2b: $36 $10
	ld l, $30                                        ; $6a2d: $2e $30
	ld [hl], $05                                     ; $6a2f: $36 $05
	call $3da5                                       ; $6a31: $cd $a5 $3d
	ld bc, $5033                                     ; $6a34: $01 $33 $50
	ld a, $30                                        ; $6a37: $3e $30
	call $3bfc                                       ; $6a39: $cd $fc $3b
	rst FarCall                                          ; $6a3c: $f7
	ld b, [hl]                                       ; $6a3d: $46
	ld b, h                                          ; $6a3e: $44
	add hl, bc                                       ; $6a3f: $09
	rst FarCall                                          ; $6a40: $f7
	ld b, l                                          ; $6a41: $45
	ld c, b                                          ; $6a42: $48
	add hl, bc                                       ; $6a43: $09
	ld a, $09                                        ; $6a44: $3e $09
	call $1e2e                                       ; $6a46: $cd $2e $1e
	ret                                              ; $6a49: $c9


	call $16d0                                       ; $6a4a: $cd $d0 $16
	ld l, $0c                                        ; $6a4d: $2e $0c
	ld a, [hl]                                       ; $6a4f: $7e
	or a                                             ; $6a50: $b7
	ret nz                                           ; $6a51: $c0

	ld l, $30                                        ; $6a52: $2e $30
	dec [hl]                                         ; $6a54: $35
	jr z, jr_00a_6a67                                ; $6a55: $28 $10

	rst FarCall                                          ; $6a57: $f7
	pop af                                           ; $6a58: $f1
	ld b, h                                          ; $6a59: $44
	add hl, bc                                       ; $6a5a: $09
	call $3bf4                                       ; $6a5b: $cd $f4 $3b
	ld l, $0c                                        ; $6a5e: $2e $0c
	inc [hl]                                         ; $6a60: $34
	ld a, $09                                        ; $6a61: $3e $09
	call $1e2e                                       ; $6a63: $cd $2e $1e
	ret                                              ; $6a66: $c9


jr_00a_6a67:
	ld l, $0a                                        ; $6a67: $2e $0a
	ld [hl], $11                                     ; $6a69: $36 $11
	call $3d58                                       ; $6a6b: $cd $58 $3d
	ld bc, $0106                                     ; $6a6e: $01 $06 $01
	call $3cd9                                       ; $6a71: $cd $d9 $3c
	rst FarCall                                          ; $6a74: $f7
	jp c, $094a                                      ; $6a75: $da $4a $09

	ret                                              ; $6a78: $c9


	call $3ce2                                       ; $6a79: $cd $e2 $3c
	ret nz                                           ; $6a7c: $c0

	ld l, $0a                                        ; $6a7d: $2e $0a
	ld [hl], $02                                     ; $6a7f: $36 $02
	rst FarCall                                          ; $6a81: $f7
	halt                                             ; $6a82: $76
	ld b, h                                          ; $6a83: $44
	add hl, bc                                       ; $6a84: $09
	ret                                              ; $6a85: $c9


	ld [hl], $04                                     ; $6a86: $36 $04
	ld l, $30                                        ; $6a88: $2e $30
	ld [hl], $78                                     ; $6a8a: $36 $78
	ld de, $6c54                                     ; $6a8c: $11 $54 $6c
	call $3bf4                                       ; $6a8f: $cd $f4 $3b
	call $3da5                                       ; $6a92: $cd $a5 $3d
	ld bc, $5035                                     ; $6a95: $01 $35 $50
	ld a, $30                                        ; $6a98: $3e $30
	call $3bfc                                       ; $6a9a: $cd $fc $3b
	call $3d53                                       ; $6a9d: $cd $53 $3d
	call $16d0                                       ; $6aa0: $cd $d0 $16
	ld bc, $6402                                     ; $6aa3: $01 $02 $64
	call $18c4                                       ; $6aa6: $cd $c4 $18
	ld hl, $7fb1                                     ; $6aa9: $21 $b1 $7f
	call $3c78                                       ; $6aac: $cd $78 $3c
	ld a, $44                                        ; $6aaf: $3e $44
	call $1e2e                                       ; $6ab1: $cd $2e $1e
	ret                                              ; $6ab4: $c9


	call $16d0                                       ; $6ab5: $cd $d0 $16
	ld l, $30                                        ; $6ab8: $2e $30
	dec [hl]                                         ; $6aba: $35
	ret nz                                           ; $6abb: $c0

	ld [hl], $78                                     ; $6abc: $36 $78
	ld l, $0a                                        ; $6abe: $2e $0a
	ld [hl], $05                                     ; $6ac0: $36 $05
	ld de, $6c54                                     ; $6ac2: $11 $54 $6c
	call $3bf4                                       ; $6ac5: $cd $f4 $3b
	call $3da5                                       ; $6ac8: $cd $a5 $3d
	ld bc, $5036                                     ; $6acb: $01 $36 $50
	ld a, $30                                        ; $6ace: $3e $30
	call $3bfc                                       ; $6ad0: $cd $fc $3b
	call $3d53                                       ; $6ad3: $cd $53 $3d
	ld hl, $47cc                                     ; $6ad6: $21 $cc $47
	call $3c18                                       ; $6ad9: $cd $18 $3c
	ld hl, $47de                                     ; $6adc: $21 $de $47
	call $3c18                                       ; $6adf: $cd $18 $3c
	call $3cee                                       ; $6ae2: $cd $ee $3c
	ld a, $04                                        ; $6ae5: $3e $04
	call $1e2e                                       ; $6ae7: $cd $2e $1e
	ret                                              ; $6aea: $c9


	call $16d0                                       ; $6aeb: $cd $d0 $16
	ld l, $30                                        ; $6aee: $2e $30
	dec [hl]                                         ; $6af0: $35
	ret nz                                           ; $6af1: $c0

	ld [hl], $3c                                     ; $6af2: $36 $3c
	ld l, $0a                                        ; $6af4: $2e $0a
	ld [hl], $06                                     ; $6af6: $36 $06
	call $3d58                                       ; $6af8: $cd $58 $3d
	call Call_00a_6b83                               ; $6afb: $cd $83 $6b
	ld hl, $47d5                                     ; $6afe: $21 $d5 $47
	call $3c1d                                       ; $6b01: $cd $1d $3c
	call $3cf2                                       ; $6b04: $cd $f2 $3c
	ret                                              ; $6b07: $c9


	ld l, $30                                        ; $6b08: $2e $30
	dec [hl]                                         ; $6b0a: $35
	ret nz                                           ; $6b0b: $c0

	ld l, $0a                                        ; $6b0c: $2e $0a
	ld [hl], $07                                     ; $6b0e: $36 $07
	ld bc, $0608                                     ; $6b10: $01 $08 $06
	call $3cd9                                       ; $6b13: $cd $d9 $3c
	call Call_00a_6b7a                               ; $6b16: $cd $7a $6b
	ld hl, $47d5                                     ; $6b19: $21 $d5 $47
	call $3c18                                       ; $6b1c: $cd $18 $3c
	call $3cee                                       ; $6b1f: $cd $ee $3c
	ld a, $1a                                        ; $6b22: $3e $1a
	call $1e2e                                       ; $6b24: $cd $2e $1e
	ret                                              ; $6b27: $c9


	call $3ce2                                       ; $6b28: $cd $e2 $3c
	ret nz                                           ; $6b2b: $c0

	ld l, $0a                                        ; $6b2c: $2e $0a
	ld [hl], $08                                     ; $6b2e: $36 $08
	ld bc, $0609                                     ; $6b30: $01 $09 $06
	call $3cd9                                       ; $6b33: $cd $d9 $3c
	ld a, $1a                                        ; $6b36: $3e $1a
	call $1e2e                                       ; $6b38: $cd $2e $1e
	ret                                              ; $6b3b: $c9


	call $3ce2                                       ; $6b3c: $cd $e2 $3c
	ret nz                                           ; $6b3f: $c0

	ld l, $0a                                        ; $6b40: $2e $0a
	ld [hl], $09                                     ; $6b42: $36 $09
	ld l, $30                                        ; $6b44: $2e $30
	ld [hl], $5a                                     ; $6b46: $36 $5a
	call $3c62                                       ; $6b48: $cd $62 $3c
	ld hl, $47d5                                     ; $6b4b: $21 $d5 $47
	call $3c1d                                       ; $6b4e: $cd $1d $3c
	ld a, $34                                        ; $6b51: $3e $34
	call $1e2e                                       ; $6b53: $cd $2e $1e
	ret                                              ; $6b56: $c9


	call $3ce7                                       ; $6b57: $cd $e7 $3c
	ld l, $30                                        ; $6b5a: $2e $30
	dec [hl]                                         ; $6b5c: $35
	ret nz                                           ; $6b5d: $c0

	ld l, $0a                                        ; $6b5e: $2e $0a
	ld [hl], $0a                                     ; $6b60: $36 $0a
	call $3cf2                                       ; $6b62: $cd $f2 $3c
	ret                                              ; $6b65: $c9


	ld [hl], $02                                     ; $6b66: $36 $02
	call $3c41                                       ; $6b68: $cd $41 $3c
	ld hl, $47d5                                     ; $6b6b: $21 $d5 $47
	call $3c18                                       ; $6b6e: $cd $18 $3c
	call $3cee                                       ; $6b71: $cd $ee $3c
	ld a, $09                                        ; $6b74: $3e $09
	ld [$d884], a                                    ; $6b76: $ea $84 $d8
	ret                                              ; $6b79: $c9


Call_00a_6b7a:
	call $3c2b                                       ; $6b7a: $cd $2b $3c
	ld hl, $46eb                                     ; $6b7d: $21 $eb $46
	jp $3c18                                         ; $6b80: $c3 $18 $3c


Call_00a_6b83:
	call $3c36                                       ; $6b83: $cd $36 $3c
	ld hl, $46eb                                     ; $6b86: $21 $eb $46
	jp $3c1d                                         ; $6b89: $c3 $1d $3c


	ld a, [hl]                                       ; $6b8c: $7e
	rst JumpTable                                          ; $6b8d: $c7
	sbc [hl]                                         ; $6b8e: $9e
	ld l, e                                          ; $6b8f: $6b
	cp d                                             ; $6b90: $ba
	ld l, e                                          ; $6b91: $6b
	call $f16b                                       ; $6b92: $cd $6b $f1
	ld l, e                                          ; $6b95: $6b
	ld e, c                                          ; $6b96: $59
	ld l, l                                          ; $6b97: $6d
	add h                                            ; $6b98: $84
	ld l, l                                          ; $6b99: $6d
	ld [de], a                                       ; $6b9a: $12
	ld l, h                                          ; $6b9b: $6c
	ld a, [hl+]                                      ; $6b9c: $2a
	ld l, l                                          ; $6b9d: $6d
	ld [hl], $01                                     ; $6b9e: $36 $01
	ld de, $b06a                                     ; $6ba0: $11 $6a $b0
	ld bc, $4f94                                     ; $6ba3: $01 $94 $4f
	ld a, $0c                                        ; $6ba6: $3e $0c
	call $3d99                                       ; $6ba8: $cd $99 $3d
	call $3d53                                       ; $6bab: $cd $53 $3d
	ld bc, $6406                                     ; $6bae: $01 $06 $64
	call $18c4                                       ; $6bb1: $cd $c4 $18
	ld hl, $7fb8                                     ; $6bb4: $21 $b8 $7f
	jp $3c78                                         ; $6bb7: $c3 $78 $3c


	ld l, $07                                        ; $6bba: $2e $07
	ld a, [hl]                                       ; $6bbc: $7e
	sub $03                                          ; $6bbd: $d6 $03
	cp $90                                           ; $6bbf: $fe $90
	jr nc, jr_00a_6bcb                               ; $6bc1: $30 $08

	ld l, $0a                                        ; $6bc3: $2e $0a
	ld [hl], $02                                     ; $6bc5: $36 $02
	ld a, $90                                        ; $6bc7: $3e $90
	ld l, $07                                        ; $6bc9: $2e $07

jr_00a_6bcb:
	ld [hl], a                                       ; $6bcb: $77
	ret                                              ; $6bcc: $c9


	ld a, [$d884]                                    ; $6bcd: $fa $84 $d8
	cp $0d                                           ; $6bd0: $fe $0d
	ret nz                                           ; $6bd2: $c0

	ld l, $0a                                        ; $6bd3: $2e $0a
	ld [hl], $03                                     ; $6bd5: $36 $03
	call $3da5                                       ; $6bd7: $cd $a5 $3d
	ld bc, $503a                                     ; $6bda: $01 $3a $50
	ld a, $30                                        ; $6bdd: $3e $30
	call $3bfc                                       ; $6bdf: $cd $fc $3b
	call $16d0                                       ; $6be2: $cd $d0 $16
	ld bc, $0602                                     ; $6be5: $01 $02 $06
	call $3cd9                                       ; $6be8: $cd $d9 $3c
	ld hl, $7fcd                                     ; $6beb: $21 $cd $7f
	jp $3c78                                         ; $6bee: $c3 $78 $3c


	call $16d0                                       ; $6bf1: $cd $d0 $16
	call $3ce2                                       ; $6bf4: $cd $e2 $3c
	ret nz                                           ; $6bf7: $c0

	ld l, $0a                                        ; $6bf8: $2e $0a
	ld [hl], $06                                     ; $6bfa: $36 $06
	ld l, $30                                        ; $6bfc: $2e $30
	xor a                                            ; $6bfe: $af
	ld [hl], a                                       ; $6bff: $77
	ld [$d884], a                                    ; $6c00: $ea $84 $d8
	ld l, $0c                                        ; $6c03: $2e $0c
	ld [hl], $00                                     ; $6c05: $36 $00
	ld a, $00                                        ; $6c07: $3e $00
	call $1e2e                                       ; $6c09: $cd $2e $1e
	ld a, $65                                        ; $6c0c: $3e $65
	call $1e27                                       ; $6c0e: $cd $27 $1e
	ret                                              ; $6c11: $c9


	xor a                                            ; $6c12: $af
	ld [$d847], a                                    ; $6c13: $ea $47 $d8
	ld a, [$d884]                                    ; $6c16: $fa $84 $d8
	cp $06                                           ; $6c19: $fe $06
	jp nc, Jump_00a_6cf7                             ; $6c1b: $d2 $f7 $6c

	or a                                             ; $6c1e: $b7
	jp nz, Jump_00a_6c2a                             ; $6c1f: $c2 $2a $6c

	ld a, [$d8ac]                                    ; $6c22: $fa $ac $d8
	cp $0a                                           ; $6c25: $fe $0a
	jp nc, Jump_00a_6cf2                             ; $6c27: $d2 $f2 $6c

Jump_00a_6c2a:
	call $16d0                                       ; $6c2a: $cd $d0 $16
	ld l, $0c                                        ; $6c2d: $2e $0c
	ld a, [hl]                                       ; $6c2f: $7e
	or a                                             ; $6c30: $b7
	jr nz, jr_00a_6c91                               ; $6c31: $20 $5e

	ld l, $30                                        ; $6c33: $2e $30
	inc [hl]                                         ; $6c35: $34
	bit 0, [hl]                                      ; $6c36: $cb $46
	jr z, jr_00a_6c3f                                ; $6c38: $28 $05

	call $3d58                                       ; $6c3a: $cd $58 $3d
	jr jr_00a_6c91                                   ; $6c3d: $18 $52

jr_00a_6c3f:
	ld a, [hl]                                       ; $6c3f: $7e
	and $06                                          ; $6c40: $e6 $06
	jr z, jr_00a_6c4a                                ; $6c42: $28 $06

	and $02                                          ; $6c44: $e6 $02
	jr nz, jr_00a_6c62                               ; $6c46: $20 $1a

	jr jr_00a_6c7a                                   ; $6c48: $18 $30

jr_00a_6c4a:
	push hl                                          ; $6c4a: $e5
	ld hl, $7fbf                                     ; $6c4b: $21 $bf $7f
	call $3c78                                       ; $6c4e: $cd $78 $3c
	pop hl                                           ; $6c51: $e1
	ld de, $8c6a                                     ; $6c52: $11 $6a $8c
	call $3bf4                                       ; $6c55: $cd $f4 $3b
	call $3da5                                       ; $6c58: $cd $a5 $3d
	ld bc, $5037                                     ; $6c5b: $01 $37 $50
	ld a, $0c                                        ; $6c5e: $3e $0c
	jr jr_00a_6c88                                   ; $6c60: $18 $26

jr_00a_6c62:
	push hl                                          ; $6c62: $e5
	ld hl, $7fc6                                     ; $6c63: $21 $c6 $7f
	call $3c78                                       ; $6c66: $cd $78 $3c
	pop hl                                           ; $6c69: $e1
	ld de, $646a                                     ; $6c6a: $11 $6a $64
	call $3bf4                                       ; $6c6d: $cd $f4 $3b
	call $3da5                                       ; $6c70: $cd $a5 $3d
	ld bc, $5038                                     ; $6c73: $01 $38 $50
	ld a, $0c                                        ; $6c76: $3e $0c
	jr jr_00a_6c88                                   ; $6c78: $18 $0e

jr_00a_6c7a:
	ld de, $8c6a                                     ; $6c7a: $11 $6a $8c
	call $3bf4                                       ; $6c7d: $cd $f4 $3b
	call $3da5                                       ; $6c80: $cd $a5 $3d
	ld bc, $5039                                     ; $6c83: $01 $39 $50
	ld a, $0c                                        ; $6c86: $3e $0c

jr_00a_6c88:
	call $3bfc                                       ; $6c88: $cd $fc $3b
	call $16d0                                       ; $6c8b: $cd $d0 $16
	call $3d53                                       ; $6c8e: $cd $53 $3d

jr_00a_6c91:
	ld hl, $d869                                     ; $6c91: $21 $69 $d8
	rst GetHLinHL                                          ; $6c94: $cf
	inc hl                                           ; $6c95: $23
	ld a, l                                          ; $6c96: $7d
	ld [$d869], a                                    ; $6c97: $ea $69 $d8
	ld a, h                                          ; $6c9a: $7c
	ld [$d86a], a                                    ; $6c9b: $ea $6a $d8
	ld a, [$d884]                                    ; $6c9e: $fa $84 $d8
	or a                                             ; $6ca1: $b7
	ret nz                                           ; $6ca2: $c0

	ld bc, $04b0                                     ; $6ca3: $01 $b0 $04
	call BCHLequHLdivModBC                                       ; $6ca6: $cd $c1 $12
	ld a, l                                          ; $6ca9: $7d
	or a                                             ; $6caa: $b7
	jr nz, jr_00a_6cbd                               ; $6cab: $20 $10

	inc b                                            ; $6cad: $04
	dec b                                            ; $6cae: $05
	ld a, $01                                        ; $6caf: $3e $01
	jr nz, jr_00a_6cbe                               ; $6cb1: $20 $0b

	ld a, c                                          ; $6cb3: $79
	cp $3c                                           ; $6cb4: $fe $3c
	ld a, $01                                        ; $6cb6: $3e $01
	jr nc, jr_00a_6cbe                               ; $6cb8: $30 $04

	xor a                                            ; $6cba: $af
	jr jr_00a_6cbe                                   ; $6cbb: $18 $01

jr_00a_6cbd:
	inc a                                            ; $6cbd: $3c

jr_00a_6cbe:
	cp $0a                                           ; $6cbe: $fe $0a
	jr c, jr_00a_6cc4                                ; $6cc0: $38 $02

	ld a, $0a                                        ; $6cc2: $3e $0a

jr_00a_6cc4:
	ld hl, $d8ac                                     ; $6cc4: $21 $ac $d8
	cp [hl]                                          ; $6cc7: $be
	ret z                                            ; $6cc8: $c8

	ret c                                            ; $6cc9: $d8

	inc [hl]                                         ; $6cca: $34
	ld a, [hl]                                       ; $6ccb: $7e
	or a                                             ; $6ccc: $b7
	ret z                                            ; $6ccd: $c8

	dec a                                            ; $6cce: $3d
	push af                                          ; $6ccf: $f5
	ld hl, $6d16                                     ; $6cd0: $21 $16 $6d
	call $3c83                                       ; $6cd3: $cd $83 $3c
	pop af                                           ; $6cd6: $f1
	push hl                                          ; $6cd7: $e5
	and $01                                          ; $6cd8: $e6 $01
	jr z, jr_00a_6ce7                                ; $6cda: $28 $0b

	call Call_00a_6b7a                               ; $6cdc: $cd $7a $6b
	pop hl                                           ; $6cdf: $e1
	call $3c18                                       ; $6ce0: $cd $18 $3c
	call $3cee                                       ; $6ce3: $cd $ee $3c
	ret                                              ; $6ce6: $c9


jr_00a_6ce7:
	call Call_00a_6b83                               ; $6ce7: $cd $83 $6b
	pop hl                                           ; $6cea: $e1
	call $3c1d                                       ; $6ceb: $cd $1d $3c
	call $3cf2                                       ; $6cee: $cd $f2 $3c
	ret                                              ; $6cf1: $c9


Jump_00a_6cf2:
	ld a, $07                                        ; $6cf2: $3e $07
	ld [$d884], a                                    ; $6cf4: $ea $84 $d8

Jump_00a_6cf7:
	ld l, $0a                                        ; $6cf7: $2e $0a
	ld [hl], $07                                     ; $6cf9: $36 $07
	ld l, $30                                        ; $6cfb: $2e $30
	xor a                                            ; $6cfd: $af
	ld [hl], a                                       ; $6cfe: $77
	ld de, $906a                                     ; $6cff: $11 $6a $90
	ld bc, $4f94                                     ; $6d02: $01 $94 $4f
	ld a, $0c                                        ; $6d05: $3e $0c
	call $3d99                                       ; $6d07: $cd $99 $3d
	call $3d53                                       ; $6d0a: $cd $53 $3d
	call $3d71                                       ; $6d0d: $cd $71 $3d
	ld hl, $7fb8                                     ; $6d10: $21 $b8 $7f
	jp $3c78                                         ; $6d13: $c3 $78 $3c


	add h                                            ; $6d16: $84
	ld b, a                                          ; $6d17: $47
	adc l                                            ; $6d18: $8d
	ld b, a                                          ; $6d19: $47
	sub [hl]                                         ; $6d1a: $96
	ld b, a                                          ; $6d1b: $47
	sbc a                                            ; $6d1c: $9f
	ld b, a                                          ; $6d1d: $47
	xor b                                            ; $6d1e: $a8
	ld b, a                                          ; $6d1f: $47
	or c                                             ; $6d20: $b1
	ld b, a                                          ; $6d21: $47
	cp d                                             ; $6d22: $ba
	ld b, a                                          ; $6d23: $47
	jp Jump_00a_7b47                                 ; $6d24: $c3 $47 $7b


	ld b, a                                          ; $6d27: $47
	ld a, e                                          ; $6d28: $7b
	ld b, a                                          ; $6d29: $47
	ld a, [$d884]                                    ; $6d2a: $fa $84 $d8
	cp $0e                                           ; $6d2d: $fe $0e
	ret nz                                           ; $6d2f: $c0

	ld l, $30                                        ; $6d30: $2e $30
	ld a, [hl]                                       ; $6d32: $7e
	or a                                             ; $6d33: $b7
	jr nz, jr_00a_6d38                               ; $6d34: $20 $02

	inc [hl]                                         ; $6d36: $34
	ret                                              ; $6d37: $c9


jr_00a_6d38:
	ld l, $0a                                        ; $6d38: $2e $0a
	ld [hl], $04                                     ; $6d3a: $36 $04
	ld l, $30                                        ; $6d3c: $2e $30
	ld [hl], $5a                                     ; $6d3e: $36 $5a
	ld a, $1b                                        ; $6d40: $3e $1b
	ld [$ca00], a                                    ; $6d42: $ea $00 $ca
	push hl                                          ; $6d45: $e5
	ld bc, $63f2                                     ; $6d46: $01 $f2 $63
	call $18c4                                       ; $6d49: $cd $c4 $18
	ld hl, $7faa                                     ; $6d4c: $21 $aa $7f
	call $3c78                                       ; $6d4f: $cd $78 $3c
	pop hl                                           ; $6d52: $e1
	ld a, $09                                        ; $6d53: $3e $09
	call $1e2e                                       ; $6d55: $cd $2e $1e
	ret                                              ; $6d58: $c9


	ld l, $30                                        ; $6d59: $2e $30
	dec [hl]                                         ; $6d5b: $35
	ret nz                                           ; $6d5c: $c0

	ld l, $0a                                        ; $6d5d: $2e $0a
	ld [hl], $05                                     ; $6d5f: $36 $05
	ld bc, $060b                                     ; $6d61: $01 $0b $06
	call $3cd9                                       ; $6d64: $cd $d9 $3c
	call $3da5                                       ; $6d67: $cd $a5 $3d
	ld bc, $503a                                     ; $6d6a: $01 $3a $50
	ld a, $30                                        ; $6d6d: $3e $30
	call $3bfc                                       ; $6d6f: $cd $fc $3b
	call $16d0                                       ; $6d72: $cd $d0 $16
	push hl                                          ; $6d75: $e5
	ld hl, $7fcd                                     ; $6d76: $21 $cd $7f
	call $3c78                                       ; $6d79: $cd $78 $3c
	pop hl                                           ; $6d7c: $e1
	ld hl, $ca00                                     ; $6d7d: $21 $00 $ca
	call $2dfc                                       ; $6d80: $cd $fc $2d
	ret                                              ; $6d83: $c9


	call $3ce2                                       ; $6d84: $cd $e2 $3c
	jr z, jr_00a_6d8d                                ; $6d87: $28 $04

	call $16d0                                       ; $6d89: $cd $d0 $16
	ret                                              ; $6d8c: $c9


jr_00a_6d8d:
	ld a, $ff                                        ; $6d8d: $3e $ff
	ld [$d884], a                                    ; $6d8f: $ea $84 $d8
	ret                                              ; $6d92: $c9


	ld l, $20                                        ; $6d93: $2e $20
	ld a, [hl]                                       ; $6d95: $7e
	rst JumpTable                                          ; $6d96: $c7
	xor a                                            ; $6d97: $af
	ld l, l                                          ; $6d98: $6d
	or d                                             ; $6d99: $b2
	ld l, l                                          ; $6d9a: $6d
	or l                                             ; $6d9b: $b5
	ld l, l                                          ; $6d9c: $6d
	cp b                                             ; $6d9d: $b8
	ld l, l                                          ; $6d9e: $6d
	cp e                                             ; $6d9f: $bb
	ld l, l                                          ; $6da0: $6d
	push de                                          ; $6da1: $d5
	ld l, l                                          ; $6da2: $6d
	db $eb                                           ; $6da3: $eb
	ld l, l                                          ; $6da4: $6d
	ld b, $6e                                        ; $6da5: $06 $6e
	inc [hl]                                         ; $6da7: $34
	ld l, [hl]                                       ; $6da8: $6e
	ld c, h                                          ; $6da9: $4c
	ld l, [hl]                                       ; $6daa: $6e
	ld h, [hl]                                       ; $6dab: $66
	ld l, [hl]                                       ; $6dac: $6e
	adc l                                            ; $6dad: $8d
	ld l, [hl]                                       ; $6dae: $6e
	jp Jump_00a_7dbe                                 ; $6daf: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $6db2: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $6db5: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $6db8: $c3 $f8 $7d


	ld l, $30                                        ; $6dbb: $2e $30
	dec [hl]                                         ; $6dbd: $35
	ret nz                                           ; $6dbe: $c0

	ld [hl], $3c                                     ; $6dbf: $36 $3c
	ld l, $20                                        ; $6dc1: $2e $20
	inc [hl]                                         ; $6dc3: $34
	ld bc, $505b                                     ; $6dc4: $01 $5b $50
	ld a, $30                                        ; $6dc7: $3e $30
	call $3bfc                                       ; $6dc9: $cd $fc $3b
	call $16d0                                       ; $6dcc: $cd $d0 $16
	ld a, $5d                                        ; $6dcf: $3e $5d
	call $1e2e                                       ; $6dd1: $cd $2e $1e
	ret                                              ; $6dd4: $c9


	ld l, $30                                        ; $6dd5: $2e $30
	dec [hl]                                         ; $6dd7: $35
	jr nz, jr_00a_6de7                               ; $6dd8: $20 $0d

	ld [hl], $3c                                     ; $6dda: $36 $3c
	ld l, $20                                        ; $6ddc: $2e $20
	inc [hl]                                         ; $6dde: $34
	ld bc, $505c                                     ; $6ddf: $01 $5c $50
	ld a, $30                                        ; $6de2: $3e $30
	call $3bfc                                       ; $6de4: $cd $fc $3b

jr_00a_6de7:
	call $16d0                                       ; $6de7: $cd $d0 $16
	ret                                              ; $6dea: $c9


	call $16d0                                       ; $6deb: $cd $d0 $16
	ld l, $30                                        ; $6dee: $2e $30
	dec [hl]                                         ; $6df0: $35
	ret nz                                           ; $6df1: $c0

	ld [hl], $78                                     ; $6df2: $36 $78
	ld l, $20                                        ; $6df4: $2e $20
	inc [hl]                                         ; $6df6: $34
	call $3da5                                       ; $6df7: $cd $a5 $3d
	ld bc, $505d                                     ; $6dfa: $01 $5d $50
	ld a, $30                                        ; $6dfd: $3e $30
	call $3bfc                                       ; $6dff: $cd $fc $3b
	call $16d0                                       ; $6e02: $cd $d0 $16
	ret                                              ; $6e05: $c9


	call $16d0                                       ; $6e06: $cd $d0 $16
	ld de, $0000                                     ; $6e09: $11 $00 $00
	ld bc, $ff00                                     ; $6e0c: $01 $00 $ff
	call $3bd6                                       ; $6e0f: $cd $d6 $3b
	ld l, $30                                        ; $6e12: $2e $30
	dec [hl]                                         ; $6e14: $35
	ret nz                                           ; $6e15: $c0

	ld l, $20                                        ; $6e16: $2e $20
	inc [hl]                                         ; $6e18: $34
	ld de, $6400                                     ; $6e19: $11 $00 $64
	call $3bf4                                       ; $6e1c: $cd $f4 $3b
	call $3da5                                       ; $6e1f: $cd $a5 $3d
	ld bc, $505e                                     ; $6e22: $01 $5e $50
	ld a, $30                                        ; $6e25: $3e $30
	call $3bfc                                       ; $6e27: $cd $fc $3b
	call $16d0                                       ; $6e2a: $cd $d0 $16
	ld hl, $751e                                     ; $6e2d: $21 $1e $75
	call $3c78                                       ; $6e30: $cd $78 $3c
	ret                                              ; $6e33: $c9


	call $16d0                                       ; $6e34: $cd $d0 $16
	ld de, $fe80                                     ; $6e37: $11 $80 $fe
	ld bc, $0200                                     ; $6e3a: $01 $00 $02
	call $3bd6                                       ; $6e3d: $cd $d6 $3b
	ld a, b                                          ; $6e40: $78
	cp $58                                           ; $6e41: $fe $58
	ret c                                            ; $6e43: $d8

	ld l, $20                                        ; $6e44: $2e $20
	inc [hl]                                         ; $6e46: $34
	ld l, $30                                        ; $6e47: $2e $30
	ld [hl], $3c                                     ; $6e49: $36 $3c
	ret                                              ; $6e4b: $c9


	call $16d0                                       ; $6e4c: $cd $d0 $16
	ld de, $fe80                                     ; $6e4f: $11 $80 $fe
	ld bc, $fe00                                     ; $6e52: $01 $00 $fe
	call $3bd6                                       ; $6e55: $cd $d6 $3b
	ld l, $30                                        ; $6e58: $2e $30
	dec [hl]                                         ; $6e5a: $35
	ret nz                                           ; $6e5b: $c0

	ld l, $20                                        ; $6e5c: $2e $20
	inc [hl]                                         ; $6e5e: $34
	ld bc, $0105                                     ; $6e5f: $01 $05 $01
	call $3cd9                                       ; $6e62: $cd $d9 $3c
	ret                                              ; $6e65: $c9


	call $3ce2                                       ; $6e66: $cd $e2 $3c
	ret nz                                           ; $6e69: $c0

	ld l, $20                                        ; $6e6a: $2e $20
	inc [hl]                                         ; $6e6c: $34
	ld de, $8c00                                     ; $6e6d: $11 $00 $8c
	call $3bf4                                       ; $6e70: $cd $f4 $3b
	call $3da5                                       ; $6e73: $cd $a5 $3d
	ld bc, $505d                                     ; $6e76: $01 $5d $50
	ld a, $30                                        ; $6e79: $3e $30
	call $3bfc                                       ; $6e7b: $cd $fc $3b
	call $16d0                                       ; $6e7e: $cd $d0 $16
	ld hl, $7512                                     ; $6e81: $21 $12 $75
	call $3c78                                       ; $6e84: $cd $78 $3c
	ld a, $5e                                        ; $6e87: $3e $5e
	call $1e2e                                       ; $6e89: $cd $2e $1e
	ret                                              ; $6e8c: $c9


	call $16d0                                       ; $6e8d: $cd $d0 $16
	ld de, $0000                                     ; $6e90: $11 $00 $00
	ld bc, $0100                                     ; $6e93: $01 $00 $01
	call $3bd6                                       ; $6e96: $cd $d6 $3b
	ld a, b                                          ; $6e99: $78
	cp $48                                           ; $6e9a: $fe $48
	ret c                                            ; $6e9c: $d8

	ld l, $0a                                        ; $6e9d: $2e $0a
	ld [hl], $07                                     ; $6e9f: $36 $07
	ret                                              ; $6ea1: $c9


	ld l, $20                                        ; $6ea2: $2e $20
	ld a, [hl]                                       ; $6ea4: $7e
	rst JumpTable                                          ; $6ea5: $c7
	cp d                                             ; $6ea6: $ba
	ld l, [hl]                                       ; $6ea7: $6e
	cp l                                             ; $6ea8: $bd
	ld l, [hl]                                       ; $6ea9: $6e
	ret nz                                           ; $6eaa: $c0

	ld l, [hl]                                       ; $6eab: $6e
	jp $c66e                                         ; $6eac: $c3 $6e $c6


	ld l, [hl]                                       ; $6eaf: $6e
	ldh [$6e], a                                     ; $6eb0: $e0 $6e
	ld sp, hl                                        ; $6eb2: $f9
	ld l, [hl]                                       ; $6eb3: $6e
	ld hl, $5b6f                                     ; $6eb4: $21 $6f $5b
	ld l, a                                          ; $6eb7: $6f
	adc c                                            ; $6eb8: $89
	ld l, a                                          ; $6eb9: $6f
	jp Jump_00a_7dbe                                 ; $6eba: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $6ebd: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $6ec0: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $6ec3: $c3 $f8 $7d


	ld l, $30                                        ; $6ec6: $2e $30
	dec [hl]                                         ; $6ec8: $35
	ret nz                                           ; $6ec9: $c0

	ld [hl], $78                                     ; $6eca: $36 $78
	ld l, $20                                        ; $6ecc: $2e $20
	inc [hl]                                         ; $6ece: $34
	ld bc, $505f                                     ; $6ecf: $01 $5f $50
	ld a, $30                                        ; $6ed2: $3e $30
	call $3bfc                                       ; $6ed4: $cd $fc $3b
	call $16d0                                       ; $6ed7: $cd $d0 $16
	ld a, $55                                        ; $6eda: $3e $55
	call $1e2e                                       ; $6edc: $cd $2e $1e
	ret                                              ; $6edf: $c9


	call $16d0                                       ; $6ee0: $cd $d0 $16
	ld l, $30                                        ; $6ee3: $2e $30
	dec [hl]                                         ; $6ee5: $35
	ret nz                                           ; $6ee6: $c0

	ld l, $20                                        ; $6ee7: $2e $20
	inc [hl]                                         ; $6ee9: $34
	call $3da5                                       ; $6eea: $cd $a5 $3d
	ld bc, $5060                                     ; $6eed: $01 $60 $50
	ld a, $30                                        ; $6ef0: $3e $30
	call $3bfc                                       ; $6ef2: $cd $fc $3b
	call $16d0                                       ; $6ef5: $cd $d0 $16
	ret                                              ; $6ef8: $c9


	call $16d0                                       ; $6ef9: $cd $d0 $16
	ld l, $0c                                        ; $6efc: $2e $0c
	ld a, [hl]                                       ; $6efe: $7e
	or a                                             ; $6eff: $b7
	ret nz                                           ; $6f00: $c0

	ld l, $20                                        ; $6f01: $2e $20
	inc [hl]                                         ; $6f03: $34
	ld l, $30                                        ; $6f04: $2e $30
	xor a                                            ; $6f06: $af
	ld [hl], a                                       ; $6f07: $77
	call $3da5                                       ; $6f08: $cd $a5 $3d
	ld de, $8c48                                     ; $6f0b: $11 $48 $8c
	ld bc, $5cf8                                     ; $6f0e: $01 $f8 $5c
	ld a, $00                                        ; $6f11: $3e $00
	call $3d99                                       ; $6f13: $cd $99 $3d
	ld a, $1f                                        ; $6f16: $3e $1f
	ld [$ca00], a                                    ; $6f18: $ea $00 $ca
	ld a, $56                                        ; $6f1b: $3e $56
	call $1e2e                                       ; $6f1d: $cd $2e $1e
	ret                                              ; $6f20: $c9


	ld b, $1f                                        ; $6f21: $06 $1f
	ld l, $30                                        ; $6f23: $2e $30
	inc [hl]                                         ; $6f25: $34
	ld a, [hl]                                       ; $6f26: $7e
	cp $10                                           ; $6f27: $fe $10
	jr z, jr_00a_6f42                                ; $6f29: $28 $17

	cp $20                                           ; $6f2b: $fe $20
	jr z, jr_00a_6f47                                ; $6f2d: $28 $18

	cp $30                                           ; $6f2f: $fe $30
	jr z, jr_00a_6f4c                                ; $6f31: $28 $19

	cp $40                                           ; $6f33: $fe $40
	jr z, jr_00a_6f51                                ; $6f35: $28 $1a

	cp $50                                           ; $6f37: $fe $50
	jr z, jr_00a_6f56                                ; $6f39: $28 $1b

	cp $a0                                           ; $6f3b: $fe $a0
	ret c                                            ; $6f3d: $d8

	ld l, $20                                        ; $6f3e: $2e $20
	inc [hl]                                         ; $6f40: $34
	ret                                              ; $6f41: $c9


jr_00a_6f42:
	ld a, b                                          ; $6f42: $78
	ld [$c900], a                                    ; $6f43: $ea $00 $c9
	ret                                              ; $6f46: $c9


jr_00a_6f47:
	ld a, b                                          ; $6f47: $78
	ld [$c800], a                                    ; $6f48: $ea $00 $c8
	ret                                              ; $6f4b: $c9


jr_00a_6f4c:
	ld a, b                                          ; $6f4c: $78
	ld [$c700], a                                    ; $6f4d: $ea $00 $c7
	ret                                              ; $6f50: $c9


jr_00a_6f51:
	ld a, b                                          ; $6f51: $78
	ld [$c600], a                                    ; $6f52: $ea $00 $c6
	ret                                              ; $6f55: $c9


jr_00a_6f56:
	ld a, b                                          ; $6f56: $78
	ld [$c500], a                                    ; $6f57: $ea $00 $c5
	ret                                              ; $6f5a: $c9


	ld l, $20                                        ; $6f5b: $2e $20
	inc [hl]                                         ; $6f5d: $34
	ld bc, $0105                                     ; $6f5e: $01 $05 $01
	call $3cd9                                       ; $6f61: $cd $d9 $3c
	ld hl, $c500                                     ; $6f64: $21 $00 $c5
	call $2dfc                                       ; $6f67: $cd $fc $2d
	ld hl, $c600                                     ; $6f6a: $21 $00 $c6
	call $2dfc                                       ; $6f6d: $cd $fc $2d
	ld hl, $c700                                     ; $6f70: $21 $00 $c7
	call $2dfc                                       ; $6f73: $cd $fc $2d
	ld hl, $c800                                     ; $6f76: $21 $00 $c8
	call $2dfc                                       ; $6f79: $cd $fc $2d
	ld hl, $c900                                     ; $6f7c: $21 $00 $c9
	call $2dfc                                       ; $6f7f: $cd $fc $2d
	ld hl, $ca00                                     ; $6f82: $21 $00 $ca
	call $2dfc                                       ; $6f85: $cd $fc $2d
	ret                                              ; $6f88: $c9


	call $3ce2                                       ; $6f89: $cd $e2 $3c
	ret nz                                           ; $6f8c: $c0

	ld l, $0a                                        ; $6f8d: $2e $0a
	ld [hl], $07                                     ; $6f8f: $36 $07
	ret                                              ; $6f91: $c9


	rst JumpTable                                          ; $6f92: $c7
	sub a                                            ; $6f93: $97
	ld l, a                                          ; $6f94: $6f
	xor e                                            ; $6f95: $ab
	ld l, a                                          ; $6f96: $6f
	inc [hl]                                         ; $6f97: $34
	ld a, $3c                                        ; $6f98: $3e $3c
	call Call_000_12fc                                       ; $6f9a: $cd $fc $12
	add $50                                          ; $6f9d: $c6 $50
	ld d, a                                          ; $6f9f: $57
	ld e, $00                                        ; $6fa0: $1e $00
	ld bc, $5db4                                     ; $6fa2: $01 $b4 $5d
	ld a, $30                                        ; $6fa5: $3e $30
	call $3d99                                       ; $6fa7: $cd $99 $3d
	ret                                              ; $6faa: $c9


	ld l, $05                                        ; $6fab: $2e $05
	ld a, [hl]                                       ; $6fad: $7e
	cp $90                                           ; $6fae: $fe $90
	ret nc                                           ; $6fb0: $d0

	ld de, $fd00                                     ; $6fb1: $11 $00 $fd
	ld bc, $0300                                     ; $6fb4: $01 $00 $03
	call $3bd6                                       ; $6fb7: $cd $d6 $3b
	ret                                              ; $6fba: $c9


	ld l, $20                                        ; $6fbb: $2e $20
	ld a, [hl]                                       ; $6fbd: $7e
	rst JumpTable                                          ; $6fbe: $c7
	rst GetHLinHL                                          ; $6fbf: $cf
	ld l, a                                          ; $6fc0: $6f
	jp nc, $d56f                                     ; $6fc1: $d2 $6f $d5

	ld l, a                                          ; $6fc4: $6f
	ret c                                            ; $6fc5: $d8

	ld l, a                                          ; $6fc6: $6f
	db $db                                           ; $6fc7: $db
	ld l, a                                          ; $6fc8: $6f
	push af                                          ; $6fc9: $f5
	ld l, a                                          ; $6fca: $6f
	dec b                                            ; $6fcb: $05
	ld [hl], b                                       ; $6fcc: $70
	inc sp                                           ; $6fcd: $33
	ld [hl], b                                       ; $6fce: $70
	jp Jump_00a_7dbe                                 ; $6fcf: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $6fd2: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $6fd5: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $6fd8: $c3 $f8 $7d


	ld l, $30                                        ; $6fdb: $2e $30
	dec [hl]                                         ; $6fdd: $35
	ret nz                                           ; $6fde: $c0

	ld [hl], $78                                     ; $6fdf: $36 $78
	ld l, $20                                        ; $6fe1: $2e $20
	inc [hl]                                         ; $6fe3: $34
	ld bc, $5061                                     ; $6fe4: $01 $61 $50
	ld a, $30                                        ; $6fe7: $3e $30
	call $3bfc                                       ; $6fe9: $cd $fc $3b
	call $16d0                                       ; $6fec: $cd $d0 $16
	ld a, $20                                        ; $6fef: $3e $20
	ld [$c800], a                                    ; $6ff1: $ea $00 $c8
	ret                                              ; $6ff4: $c9


	call $16d0                                       ; $6ff5: $cd $d0 $16
	ld l, $0c                                        ; $6ff8: $2e $0c
	ld a, [hl]                                       ; $6ffa: $7e
	or a                                             ; $6ffb: $b7
	ret nz                                           ; $6ffc: $c0

	ld l, $20                                        ; $6ffd: $2e $20
	inc [hl]                                         ; $6fff: $34
	ld l, $30                                        ; $7000: $2e $30
	ld [hl], $f0                                     ; $7002: $36 $f0
	ret                                              ; $7004: $c9


	ld l, $30                                        ; $7005: $2e $30
	dec [hl]                                         ; $7007: $35
	ret nz                                           ; $7008: $c0

	ld l, $20                                        ; $7009: $2e $20
	inc [hl]                                         ; $700b: $34
	call $3da5                                       ; $700c: $cd $a5 $3d
	ld de, $8c48                                     ; $700f: $11 $48 $8c
	ld bc, $6050                                     ; $7012: $01 $50 $60
	ld a, $00                                        ; $7015: $3e $00
	call $3d99                                       ; $7017: $cd $99 $3d
	ld bc, $0105                                     ; $701a: $01 $05 $01
	call $3cd9                                       ; $701d: $cd $d9 $3c
	ld hl, $c800                                     ; $7020: $21 $00 $c8
	call $2dfc                                       ; $7023: $cd $fc $2d
	ld hl, $c900                                     ; $7026: $21 $00 $c9
	call $2dfc                                       ; $7029: $cd $fc $2d
	ld hl, $ca00                                     ; $702c: $21 $00 $ca
	call $2dfc                                       ; $702f: $cd $fc $2d
	ret                                              ; $7032: $c9


	call $3ce2                                       ; $7033: $cd $e2 $3c
	ret nz                                           ; $7036: $c0

	ld l, $0a                                        ; $7037: $2e $0a
	ld [hl], $07                                     ; $7039: $36 $07
	ret                                              ; $703b: $c9


	rst JumpTable                                          ; $703c: $c7
	ld b, a                                          ; $703d: $47
	ld [hl], b                                       ; $703e: $70
	ld h, c                                          ; $703f: $61
	ld [hl], b                                       ; $7040: $70
	add l                                            ; $7041: $85
	ld [hl], b                                       ; $7042: $70
	and c                                            ; $7043: $a1
	ld [hl], b                                       ; $7044: $70
	cp d                                             ; $7045: $ba
	ld [hl], b                                       ; $7046: $70
	inc [hl]                                         ; $7047: $34
	ld l, $30                                        ; $7048: $2e $30
	ld [hl], $1e                                     ; $704a: $36 $1e
	ld de, $8c2c                                     ; $704c: $11 $2c $8c
	ld bc, $60e4                                     ; $704f: $01 $e4 $60
	ld a, $30                                        ; $7052: $3e $30
	call $3d99                                       ; $7054: $cd $99 $3d
	ld de, $0000                                     ; $7057: $11 $00 $00
	ld bc, $ff80                                     ; $705a: $01 $80 $ff
	call $3d32                                       ; $705d: $cd $32 $3d
	ret                                              ; $7060: $c9


	call $3d1b                                       ; $7061: $cd $1b $3d
	call $3d13                                       ; $7064: $cd $13 $3d
	inc bc                                           ; $7067: $03
	ld de, $0000                                     ; $7068: $11 $00 $00
	call $3d32                                       ; $706b: $cd $32 $3d
	ld l, $30                                        ; $706e: $2e $30
	dec [hl]                                         ; $7070: $35
	ret nz                                           ; $7071: $c0

	ld l, $0a                                        ; $7072: $2e $0a
	inc [hl]                                         ; $7074: $34
	ld de, $fd80                                     ; $7075: $11 $80 $fd
	ld bc, $3262                                     ; $7078: $01 $62 $32
	rst FarCall                                          ; $707b: $f7
	xor l                                            ; $707c: $ad
	ld b, h                                          ; $707d: $44
	add hl, bc                                       ; $707e: $09
	ld a, $4a                                        ; $707f: $3e $4a
	call $1e2e                                       ; $7081: $cd $2e $1e
	ret                                              ; $7084: $c9


	call $3d1b                                       ; $7085: $cd $1b $3d
	ld l, $07                                        ; $7088: $2e $07
	ld a, [hl]                                       ; $708a: $7e
	cp $32                                           ; $708b: $fe $32
	ret nc                                           ; $708d: $d0

	ld l, $0a                                        ; $708e: $2e $0a
	inc [hl]                                         ; $7090: $34
	call $3da5                                       ; $7091: $cd $a5 $3d
	ld bc, $5062                                     ; $7094: $01 $62 $50
	ld a, $30                                        ; $7097: $3e $30
	call $3bfc                                       ; $7099: $cd $fc $3b
	ld a, $4b                                        ; $709c: $3e $4b
	call $1e2e                                       ; $709e: $cd $2e $1e
	call $16d0                                       ; $70a1: $cd $d0 $16
	ld l, $0c                                        ; $70a4: $2e $0c
	ld a, [hl]                                       ; $70a6: $7e
	or a                                             ; $70a7: $b7
	ret nz                                           ; $70a8: $c0

	ld l, $0a                                        ; $70a9: $2e $0a
	inc [hl]                                         ; $70ab: $34
	ld l, $30                                        ; $70ac: $2e $30
	ld [hl], $d2                                     ; $70ae: $36 $d2
	ld de, $ffa0                                     ; $70b0: $11 $a0 $ff
	ld bc, $ff40                                     ; $70b3: $01 $40 $ff
	call $3d32                                       ; $70b6: $cd $32 $3d
	ret                                              ; $70b9: $c9


	ld l, $30                                        ; $70ba: $2e $30
	ld a, [hl]                                       ; $70bc: $7e
	or a                                             ; $70bd: $b7
	ret z                                            ; $70be: $c8

	dec [hl]                                         ; $70bf: $35
	cp $b4                                           ; $70c0: $fe $b4
	jr nz, jr_00a_70e3                               ; $70c2: $20 $1f

	push hl                                          ; $70c4: $e5
	ld hl, $c900                                     ; $70c5: $21 $00 $c9
	ld a, $21                                        ; $70c8: $3e $21
	ld [hl], a                                       ; $70ca: $77
	ld l, $31                                        ; $70cb: $2e $31
	ld [hl], $00                                     ; $70cd: $36 $00
	ld hl, $ca00                                     ; $70cf: $21 $00 $ca
	ld a, $21                                        ; $70d2: $3e $21
	ld [hl], a                                       ; $70d4: $77
	ld l, $31                                        ; $70d5: $2e $31
	ld [hl], $01                                     ; $70d7: $36 $01
	pop hl                                           ; $70d9: $e1
	ld de, $ff80                                     ; $70da: $11 $80 $ff
	ld bc, $ff00                                     ; $70dd: $01 $00 $ff
	call $3d32                                       ; $70e0: $cd $32 $3d

jr_00a_70e3:
	call $3d1b                                       ; $70e3: $cd $1b $3d
	ret                                              ; $70e6: $c9


	rst JumpTable                                          ; $70e7: $c7
	xor $70                                          ; $70e8: $ee $70
	ld a, [bc]                                       ; $70ea: $0a
	ld [hl], c                                       ; $70eb: $71
	ld a, [hl+]                                      ; $70ec: $2a
	ld [hl], c                                       ; $70ed: $71
	inc [hl]                                         ; $70ee: $34
	ld l, $30                                        ; $70ef: $2e $30
	ld [hl], $96                                     ; $70f1: $36 $96
	ld l, $31                                        ; $70f3: $2e $31
	ld a, [hl]                                       ; $70f5: $7e
	or a                                             ; $70f6: $b7
	ld de, $144c                                     ; $70f7: $11 $4c $14
	jr z, jr_00a_70ff                                ; $70fa: $28 $03

	ld de, $323c                                     ; $70fc: $11 $3c $32

jr_00a_70ff:
	call $3bf4                                       ; $70ff: $cd $f4 $3b
	ld bc, $5063                                     ; $7102: $01 $63 $50
	ld a, $30                                        ; $7105: $3e $30
	call $3bfc                                       ; $7107: $cd $fc $3b
	call $16d0                                       ; $710a: $cd $d0 $16
	ld de, $0010                                     ; $710d: $11 $10 $00
	ld bc, $0020                                     ; $7110: $01 $20 $00
	call $3bd6                                       ; $7113: $cd $d6 $3b
	ld l, $30                                        ; $7116: $2e $30
	dec [hl]                                         ; $7118: $35
	ld a, [hl]                                       ; $7119: $7e
	cp $3c                                           ; $711a: $fe $3c
	ret nc                                           ; $711c: $d0

	or a                                             ; $711d: $b7
	jr z, jr_00a_7124                                ; $711e: $28 $04

	call $3d4b                                       ; $7120: $cd $4b $3d
	ret                                              ; $7123: $c9


jr_00a_7124:
	ld l, $0a                                        ; $7124: $2e $0a
	inc [hl]                                         ; $7126: $34
	call $3d58                                       ; $7127: $cd $58 $3d
	ret                                              ; $712a: $c9


	ld l, $20                                        ; $712b: $2e $20
	ld a, [hl]                                       ; $712d: $7e
	rst JumpTable                                          ; $712e: $c7
	ccf                                              ; $712f: $3f
	ld [hl], c                                       ; $7130: $71
	ld b, d                                          ; $7131: $42
	ld [hl], c                                       ; $7132: $71
	ld b, l                                          ; $7133: $45
	ld [hl], c                                       ; $7134: $71
	ld c, b                                          ; $7135: $48
	ld [hl], c                                       ; $7136: $71
	ld c, e                                          ; $7137: $4b
	ld [hl], c                                       ; $7138: $71
	ld h, d                                          ; $7139: $62
	ld [hl], c                                       ; $713a: $71
	ld [hl], h                                       ; $713b: $74
	ld [hl], c                                       ; $713c: $71
	sbc c                                            ; $713d: $99
	ld [hl], c                                       ; $713e: $71
	jp Jump_00a_7dbe                                 ; $713f: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $7142: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $7145: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $7148: $c3 $f8 $7d


	ld l, $30                                        ; $714b: $2e $30
	dec [hl]                                         ; $714d: $35
	ret nz                                           ; $714e: $c0

	ld [hl], $78                                     ; $714f: $36 $78
	ld l, $20                                        ; $7151: $2e $20
	inc [hl]                                         ; $7153: $34
	ld bc, $5dd4                                     ; $7154: $01 $d4 $5d
	ld a, $30                                        ; $7157: $3e $30
	call $3d9f                                       ; $7159: $cd $9f $3d
	ld a, $23                                        ; $715c: $3e $23
	ld [$c900], a                                    ; $715e: $ea $00 $c9
	ret                                              ; $7161: $c9


	call $16d0                                       ; $7162: $cd $d0 $16
	ld l, $30                                        ; $7165: $2e $30
	dec [hl]                                         ; $7167: $35
	ret nz                                           ; $7168: $c0

	ld [hl], $b4                                     ; $7169: $36 $b4
	ld l, $20                                        ; $716b: $2e $20
	inc [hl]                                         ; $716d: $34
	ld a, $22                                        ; $716e: $3e $22
	ld [$ca00], a                                    ; $7170: $ea $00 $ca
	ret                                              ; $7173: $c9


	call $16d0                                       ; $7174: $cd $d0 $16
	ld l, $30                                        ; $7177: $2e $30
	dec [hl]                                         ; $7179: $35
	ret nz                                           ; $717a: $c0

	ld l, $20                                        ; $717b: $2e $20
	inc [hl]                                         ; $717d: $34
	ld bc, $5dbc                                     ; $717e: $01 $bc $5d
	ld a, $00                                        ; $7181: $3e $00
	call $3d9f                                       ; $7183: $cd $9f $3d
	ld bc, $0105                                     ; $7186: $01 $05 $01
	call $3cd9                                       ; $7189: $cd $d9 $3c
	ld hl, $c900                                     ; $718c: $21 $00 $c9
	call $2dfc                                       ; $718f: $cd $fc $2d
	ld hl, $ca00                                     ; $7192: $21 $00 $ca
	call $2dfc                                       ; $7195: $cd $fc $2d
	ret                                              ; $7198: $c9


	call $3ce2                                       ; $7199: $cd $e2 $3c
	ret nz                                           ; $719c: $c0

	ld l, $0a                                        ; $719d: $2e $0a
	ld [hl], $07                                     ; $719f: $36 $07
	ret                                              ; $71a1: $c9


	rst JumpTable                                          ; $71a2: $c7
	and a                                            ; $71a3: $a7
	ld [hl], c                                       ; $71a4: $71
	call nz, $3471                                   ; $71a5: $c4 $71 $34
	rst FarCall                                          ; $71a8: $f7
	inc bc                                           ; $71a9: $03
	ld b, l                                          ; $71aa: $45
	add hl, bc                                       ; $71ab: $09
	ld de, $3660                                     ; $71ac: $11 $60 $36
	jr z, jr_00a_71b4                                ; $71af: $28 $03

	ld de, $2468                                     ; $71b1: $11 $68 $24

jr_00a_71b4:
	call $3bf4                                       ; $71b4: $cd $f4 $3b
	ld bc, $5067                                     ; $71b7: $01 $67 $50
	ld a, $30                                        ; $71ba: $3e $30
	call $3bfc                                       ; $71bc: $cd $fc $3b
	ld a, $0c                                        ; $71bf: $3e $0c
	call $1e2e                                       ; $71c1: $cd $2e $1e
	call $16d0                                       ; $71c4: $cd $d0 $16
	ret                                              ; $71c7: $c9


	rst JumpTable                                          ; $71c8: $c7
	pop de                                           ; $71c9: $d1
	ld [hl], c                                       ; $71ca: $71
	or $71                                           ; $71cb: $f6 $71
	inc c                                            ; $71cd: $0c
	ld [hl], d                                       ; $71ce: $72
	ld [hl+], a                                      ; $71cf: $22
	ld [hl], d                                       ; $71d0: $72
	inc [hl]                                         ; $71d1: $34
	ld l, $30                                        ; $71d2: $2e $30
	ld [hl], $3c                                     ; $71d4: $36 $3c
	rst FarCall                                          ; $71d6: $f7
	inc bc                                           ; $71d7: $03
	ld b, l                                          ; $71d8: $45
	add hl, bc                                       ; $71d9: $09
	ld de, $3660                                     ; $71da: $11 $60 $36
	jr z, jr_00a_71e2                                ; $71dd: $28 $03

	ld de, $2468                                     ; $71df: $11 $68 $24

jr_00a_71e2:
	call $3bf4                                       ; $71e2: $cd $f4 $3b
	ld bc, $5064                                     ; $71e5: $01 $64 $50
	ld a, $30                                        ; $71e8: $3e $30
	call $3bfc                                       ; $71ea: $cd $fc $3b
	call $16d0                                       ; $71ed: $cd $d0 $16
	ld a, $5b                                        ; $71f0: $3e $5b
	call $1e2e                                       ; $71f2: $cd $2e $1e
	ret                                              ; $71f5: $c9


	ld l, $30                                        ; $71f6: $2e $30
	dec [hl]                                         ; $71f8: $35
	jr nz, jr_00a_7208                               ; $71f9: $20 $0d

	ld [hl], $3c                                     ; $71fb: $36 $3c
	ld l, $0a                                        ; $71fd: $2e $0a
	inc [hl]                                         ; $71ff: $34
	ld bc, $5065                                     ; $7200: $01 $65 $50
	ld a, $30                                        ; $7203: $3e $30
	call $3bfc                                       ; $7205: $cd $fc $3b

jr_00a_7208:
	call $16d0                                       ; $7208: $cd $d0 $16
	ret                                              ; $720b: $c9


	ld l, $30                                        ; $720c: $2e $30
	dec [hl]                                         ; $720e: $35
	jr nz, jr_00a_721e                               ; $720f: $20 $0d

	ld [hl], $3c                                     ; $7211: $36 $3c
	ld l, $0a                                        ; $7213: $2e $0a
	inc [hl]                                         ; $7215: $34
	ld bc, $5066                                     ; $7216: $01 $66 $50
	ld a, $30                                        ; $7219: $3e $30
	call $3bfc                                       ; $721b: $cd $fc $3b

jr_00a_721e:
	call $16d0                                       ; $721e: $cd $d0 $16
	ret                                              ; $7221: $c9


	call $16d0                                       ; $7222: $cd $d0 $16
	ret                                              ; $7225: $c9


	ld l, $20                                        ; $7226: $2e $20
	ld a, [hl]                                       ; $7228: $7e
	rst JumpTable                                          ; $7229: $c7
	ld c, b                                          ; $722a: $48
	ld [hl], d                                       ; $722b: $72
	ld c, e                                          ; $722c: $4b
	ld [hl], d                                       ; $722d: $72
	ld c, [hl]                                       ; $722e: $4e
	ld [hl], d                                       ; $722f: $72
	ld d, c                                          ; $7230: $51
	ld [hl], d                                       ; $7231: $72
	ld d, h                                          ; $7232: $54
	ld [hl], d                                       ; $7233: $72
	ld a, c                                          ; $7234: $79
	ld [hl], d                                       ; $7235: $72
	adc l                                            ; $7236: $8d
	ld [hl], d                                       ; $7237: $72
	cp b                                             ; $7238: $b8
	ld [hl], d                                       ; $7239: $72
	db $e3                                           ; $723a: $e3
	ld [hl], d                                       ; $723b: $72
	ld c, $73                                        ; $723c: $0e $73
	ld b, [hl]                                       ; $723e: $46
	ld [hl], e                                       ; $723f: $73
	ld [hl], h                                       ; $7240: $74
	ld [hl], e                                       ; $7241: $73
	sbc c                                            ; $7242: $99
	ld [hl], e                                       ; $7243: $73
	ret                                              ; $7244: $c9


	ld [hl], e                                       ; $7245: $73
	jp hl                                            ; $7246: $e9


	ld [hl], e                                       ; $7247: $73
	jp Jump_00a_7dbe                                 ; $7248: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $724b: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $724e: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $7251: $c3 $f8 $7d


	ld l, $30                                        ; $7254: $2e $30
	dec [hl]                                         ; $7256: $35
	ret nz                                           ; $7257: $c0

	ld l, $20                                        ; $7258: $2e $20
	inc [hl]                                         ; $725a: $34
	call $3da5                                       ; $725b: $cd $a5 $3d
	ld bc, $5068                                     ; $725e: $01 $68 $50
	ld a, $30                                        ; $7261: $3e $30
	call $3bfc                                       ; $7263: $cd $fc $3b
	call $16d0                                       ; $7266: $cd $d0 $16
	ld de, $ff00                                     ; $7269: $11 $00 $ff
	ld bc, $3868                                     ; $726c: $01 $68 $38
	rst FarCall                                          ; $726f: $f7
	xor l                                            ; $7270: $ad
	ld b, h                                          ; $7271: $44
	add hl, bc                                       ; $7272: $09
	ld a, $24                                        ; $7273: $3e $24
	ld [$ca00], a                                    ; $7275: $ea $00 $ca
	ret                                              ; $7278: $c9


	call $3d1b                                       ; $7279: $cd $1b $3d
	call $16d0                                       ; $727c: $cd $d0 $16
	ld l, $07                                        ; $727f: $2e $07
	ld a, [hl]                                       ; $7281: $7e
	cp $38                                           ; $7282: $fe $38
	ret nc                                           ; $7284: $d0

	ld l, $20                                        ; $7285: $2e $20
	inc [hl]                                         ; $7287: $34
	ld l, $30                                        ; $7288: $2e $30
	ld [hl], $37                                     ; $728a: $36 $37
	ret                                              ; $728c: $c9


	call $16d0                                       ; $728d: $cd $d0 $16
	ld de, $fe80                                     ; $7290: $11 $80 $fe
	ld bc, $0000                                     ; $7293: $01 $00 $00
	call $3bd6                                       ; $7296: $cd $d6 $3b
	ld l, $30                                        ; $7299: $2e $30
	dec [hl]                                         ; $729b: $35
	ret nz                                           ; $729c: $c0

	ld [hl], $37                                     ; $729d: $36 $37
	ld l, $20                                        ; $729f: $2e $20
	inc [hl]                                         ; $72a1: $34
	call $3da5                                       ; $72a2: $cd $a5 $3d
	ld bc, $5069                                     ; $72a5: $01 $69 $50
	ld a, $30                                        ; $72a8: $3e $30
	call $3bfc                                       ; $72aa: $cd $fc $3b
	call $16d0                                       ; $72ad: $cd $d0 $16
	ld hl, $ca00                                     ; $72b0: $21 $00 $ca
	ld l, $31                                        ; $72b3: $2e $31
	ld [hl], $01                                     ; $72b5: $36 $01
	ret                                              ; $72b7: $c9


	call $16d0                                       ; $72b8: $cd $d0 $16
	ld de, $0200                                     ; $72bb: $11 $00 $02
	ld bc, $0000                                     ; $72be: $01 $00 $00
	call $3bd6                                       ; $72c1: $cd $d6 $3b
	ld l, $30                                        ; $72c4: $2e $30
	dec [hl]                                         ; $72c6: $35
	ret nz                                           ; $72c7: $c0

	ld [hl], $28                                     ; $72c8: $36 $28
	ld l, $20                                        ; $72ca: $2e $20
	inc [hl]                                         ; $72cc: $34
	call $3da5                                       ; $72cd: $cd $a5 $3d
	ld bc, $5068                                     ; $72d0: $01 $68 $50
	ld a, $30                                        ; $72d3: $3e $30
	call $3bfc                                       ; $72d5: $cd $fc $3b
	call $16d0                                       ; $72d8: $cd $d0 $16
	ld hl, $ca00                                     ; $72db: $21 $00 $ca
	ld l, $31                                        ; $72de: $2e $31
	ld [hl], $00                                     ; $72e0: $36 $00
	ret                                              ; $72e2: $c9


	call $16d0                                       ; $72e3: $cd $d0 $16
	ld de, $fd80                                     ; $72e6: $11 $80 $fd
	ld bc, $0000                                     ; $72e9: $01 $00 $00
	call $3bd6                                       ; $72ec: $cd $d6 $3b
	ld l, $30                                        ; $72ef: $2e $30
	dec [hl]                                         ; $72f1: $35
	ret nz                                           ; $72f2: $c0

	ld [hl], $1e                                     ; $72f3: $36 $1e
	ld l, $20                                        ; $72f5: $2e $20
	inc [hl]                                         ; $72f7: $34
	call $3da5                                       ; $72f8: $cd $a5 $3d
	ld bc, $5069                                     ; $72fb: $01 $69 $50
	ld a, $30                                        ; $72fe: $3e $30
	call $3bfc                                       ; $7300: $cd $fc $3b
	call $16d0                                       ; $7303: $cd $d0 $16
	ld hl, $ca00                                     ; $7306: $21 $00 $ca
	ld l, $31                                        ; $7309: $2e $31
	ld [hl], $01                                     ; $730b: $36 $01
	ret                                              ; $730d: $c9


	call $16d0                                       ; $730e: $cd $d0 $16
	ld de, $0300                                     ; $7311: $11 $00 $03
	ld bc, $0000                                     ; $7314: $01 $00 $00
	call $3bd6                                       ; $7317: $cd $d6 $3b
	ld l, $30                                        ; $731a: $2e $30
	dec [hl]                                         ; $731c: $35
	ret nz                                           ; $731d: $c0

	ld [hl], $96                                     ; $731e: $36 $96
	ld l, $20                                        ; $7320: $2e $20
	inc [hl]                                         ; $7322: $34
	call $3da5                                       ; $7323: $cd $a5 $3d
	ld bc, $506b                                     ; $7326: $01 $6b $50
	ld a, $30                                        ; $7329: $3e $30
	call $3bfc                                       ; $732b: $cd $fc $3b
	call $16d0                                       ; $732e: $cd $d0 $16
	ld de, $ff80                                     ; $7331: $11 $80 $ff
	ld bc, $fb00                                     ; $7334: $01 $00 $fb
	call $3d32                                       ; $7337: $cd $32 $3d
	ld hl, $ca00                                     ; $733a: $21 $00 $ca
	call $2dfc                                       ; $733d: $cd $fc $2d
	ld a, $48                                        ; $7340: $3e $48
	call $1e2e                                       ; $7342: $cd $2e $1e
	ret                                              ; $7345: $c9


	call $16d0                                       ; $7346: $cd $d0 $16
	call $3d1b                                       ; $7349: $cd $1b $3d
	ld l, $11                                        ; $734c: $2e $11
	ld c, [hl]                                       ; $734e: $4e
	inc hl                                           ; $734f: $23
	ld b, [hl]                                       ; $7350: $46
	ld a, $1e                                        ; $7351: $3e $1e
	call $132c                                       ; $7353: $cd $2c $13
	ld l, $11                                        ; $7356: $2e $11
	ld [hl], c                                       ; $7358: $71
	inc hl                                           ; $7359: $23
	ld [hl], b                                       ; $735a: $70
	bit 7, b                                         ; $735b: $cb $78
	ret nz                                           ; $735d: $c0

	ld l, $20                                        ; $735e: $2e $20
	inc [hl]                                         ; $7360: $34
	ld l, $30                                        ; $7361: $2e $30
	ld [hl], $1a                                     ; $7363: $36 $1a
	call $3da5                                       ; $7365: $cd $a5 $3d
	ld de, $27e2                                     ; $7368: $11 $e2 $27
	ld bc, $6434                                     ; $736b: $01 $34 $64
	ld a, $30                                        ; $736e: $3e $30
	call $3d99                                       ; $7370: $cd $99 $3d
	ret                                              ; $7373: $c9


	ld de, $0000                                     ; $7374: $11 $00 $00
	ld bc, $0500                                     ; $7377: $01 $00 $05
	call $3bd6                                       ; $737a: $cd $d6 $3b
	ld l, $30                                        ; $737d: $2e $30
	dec [hl]                                         ; $737f: $35
	ret nz                                           ; $7380: $c0

	ld l, $20                                        ; $7381: $2e $20
	inc [hl]                                         ; $7383: $34
	call $3da5                                       ; $7384: $cd $a5 $3d
	ld bc, $6464                                     ; $7387: $01 $64 $64
	ld a, $30                                        ; $738a: $3e $30
	call $3d9f                                       ; $738c: $cd $9f $3d
	ld de, $0180                                     ; $738f: $11 $80 $01
	ld bc, $fe00                                     ; $7392: $01 $00 $fe
	call $3d32                                       ; $7395: $cd $32 $3d
	ret                                              ; $7398: $c9


	call $16d0                                       ; $7399: $cd $d0 $16
	call $3d1b                                       ; $739c: $cd $1b $3d
	ld l, $11                                        ; $739f: $2e $11
	ld c, [hl]                                       ; $73a1: $4e
	inc hl                                           ; $73a2: $23
	ld b, [hl]                                       ; $73a3: $46
	ld a, $1e                                        ; $73a4: $3e $1e
	call $132c                                       ; $73a6: $cd $2c $13
	ld l, $11                                        ; $73a9: $2e $11
	ld [hl], c                                       ; $73ab: $71
	inc hl                                           ; $73ac: $23
	ld [hl], b                                       ; $73ad: $70
	ld l, $05                                        ; $73ae: $2e $05
	ld a, [hl]                                       ; $73b0: $7e
	cp $66                                           ; $73b1: $fe $66
	ret c                                            ; $73b3: $d8

	ld l, $20                                        ; $73b4: $2e $20
	inc [hl]                                         ; $73b6: $34
	call $3da5                                       ; $73b7: $cd $a5 $3d
	ld bc, $644c                                     ; $73ba: $01 $4c $64
	ld a, $30                                        ; $73bd: $3e $30
	call $3d9f                                       ; $73bf: $cd $9f $3d
	ld bc, $0105                                     ; $73c2: $01 $05 $01
	call $3cd9                                       ; $73c5: $cd $d9 $3c
	ret                                              ; $73c8: $c9


	call $3ce2                                       ; $73c9: $cd $e2 $3c
	ret nz                                           ; $73cc: $c0

	ld l, $20                                        ; $73cd: $2e $20
	inc [hl]                                         ; $73cf: $34
	call $3da5                                       ; $73d0: $cd $a5 $3d
	ld bc, $5069                                     ; $73d3: $01 $69 $50
	ld a, $30                                        ; $73d6: $3e $30
	call $3bfc                                       ; $73d8: $cd $fc $3b
	call $16d0                                       ; $73db: $cd $d0 $16
	ld de, $0200                                     ; $73de: $11 $00 $02
	ld bc, $8c48                                     ; $73e1: $01 $48 $8c
	rst FarCall                                          ; $73e4: $f7
	xor l                                            ; $73e5: $ad
	ld b, h                                          ; $73e6: $44
	add hl, bc                                       ; $73e7: $09
	ret                                              ; $73e8: $c9


	call $16d0                                       ; $73e9: $cd $d0 $16
	call $3d1b                                       ; $73ec: $cd $1b $3d
	ld l, $07                                        ; $73ef: $2e $07
	ld a, [hl]                                       ; $73f1: $7e
	cp $8c                                           ; $73f2: $fe $8c
	ret c                                            ; $73f4: $d8

	call $3da5                                       ; $73f5: $cd $a5 $3d
	ld bc, $6384                                     ; $73f8: $01 $84 $63
	ld a, $00                                        ; $73fb: $3e $00
	call $3d9f                                       ; $73fd: $cd $9f $3d
	ld l, $0a                                        ; $7400: $2e $0a
	ld [hl], $07                                     ; $7402: $36 $07
	ret                                              ; $7404: $c9


	rst JumpTable                                          ; $7405: $c7
	ld a, [bc]                                       ; $7406: $0a
	ld [hl], h                                       ; $7407: $74
	inc de                                           ; $7408: $13
	ld [hl], h                                       ; $7409: $74
	inc [hl]                                         ; $740a: $34
	ld bc, $506a                                     ; $740b: $01 $6a $50
	ld a, $30                                        ; $740e: $3e $30
	call $3bfc                                       ; $7410: $cd $fc $3b
	push hl                                          ; $7413: $e5
	ld hl, $cb00                                     ; $7414: $21 $00 $cb
	call $3d01                                       ; $7417: $cd $01 $3d
	pop hl                                           ; $741a: $e1
	ld l, $31                                        ; $741b: $2e $31
	ld a, [hl]                                       ; $741d: $7e
	or a                                             ; $741e: $b7
	jr nz, jr_00a_742e                               ; $741f: $20 $0d

	ld a, d                                          ; $7421: $7a
	add $10                                          ; $7422: $c6 $10
	ld d, a                                          ; $7424: $57
	call $3bf4                                       ; $7425: $cd $f4 $3b
	ld l, $03                                        ; $7428: $2e $03
	res 5, [hl]                                      ; $742a: $cb $ae
	jr jr_00a_7439                                   ; $742c: $18 $0b

jr_00a_742e:
	ld a, d                                          ; $742e: $7a
	sub $10                                          ; $742f: $d6 $10
	ld d, a                                          ; $7431: $57
	call $3bf4                                       ; $7432: $cd $f4 $3b
	ld l, $03                                        ; $7435: $2e $03
	set 5, [hl]                                      ; $7437: $cb $ee

jr_00a_7439:
	call $16d0                                       ; $7439: $cd $d0 $16
	ld l, $33                                        ; $743c: $2e $33
	ld a, [hl]                                       ; $743e: $7e
	inc a                                            ; $743f: $3c
	cp $0c                                           ; $7440: $fe $0c
	jr c, jr_00a_744a                                ; $7442: $38 $06

	ld a, $47                                        ; $7444: $3e $47
	call $1e2e                                       ; $7446: $cd $2e $1e
	xor a                                            ; $7449: $af

jr_00a_744a:
	ld [hl], a                                       ; $744a: $77
	ret                                              ; $744b: $c9


	ld sp, hl                                        ; $744c: $f9
	inc d                                            ; $744d: $14
	jr nz, jr_00a_74ab                               ; $744e: $20 $5b

	ret nz                                           ; $7450: $c0

	add b                                            ; $7451: $80
	rst $38                                          ; $7452: $ff
	ld sp, hl                                        ; $7453: $f9
	inc d                                            ; $7454: $14
	or d                                             ; $7455: $b2
	ld e, e                                          ; $7456: $5b
	nop                                              ; $7457: $00
	add e                                            ; $7458: $83
	rst $38                                          ; $7459: $ff
	ld sp, hl                                        ; $745a: $f9
	inc d                                            ; $745b: $14
	ld h, a                                          ; $745c: $67
	ld e, l                                          ; $745d: $5d
	nop                                              ; $745e: $00
	add l                                            ; $745f: $85
	rst $38                                          ; $7460: $ff
	ld sp, hl                                        ; $7461: $f9
	inc d                                            ; $7462: $14
	sub e                                            ; $7463: $93
	ld c, a                                          ; $7464: $4f
	ret nz                                           ; $7465: $c0

	add b                                            ; $7466: $80
	rst $38                                          ; $7467: $ff
	ld sp, hl                                        ; $7468: $f9
	inc d                                            ; $7469: $14
	ld b, h                                          ; $746a: $44
	ld d, b                                          ; $746b: $50
	nop                                              ; $746c: $00
	add e                                            ; $746d: $83
	rst $38                                          ; $746e: $ff
	ld sp, hl                                        ; $746f: $f9
	inc d                                            ; $7470: $14
	ld e, c                                          ; $7471: $59
	ld d, d                                          ; $7472: $52
	nop                                              ; $7473: $00
	add l                                            ; $7474: $85
	rst $38                                          ; $7475: $ff
	ld sp, hl                                        ; $7476: $f9
	inc d                                            ; $7477: $14
	jp hl                                            ; $7478: $e9


	ld d, l                                          ; $7479: $55
	ret nz                                           ; $747a: $c0

	add b                                            ; $747b: $80
	rst $38                                          ; $747c: $ff
	ld sp, hl                                        ; $747d: $f9
	inc d                                            ; $747e: $14
	adc l                                            ; $747f: $8d
	ld d, [hl]                                       ; $7480: $56
	nop                                              ; $7481: $00
	add e                                            ; $7482: $83
	rst $38                                          ; $7483: $ff
	ld sp, hl                                        ; $7484: $f9
	inc d                                            ; $7485: $14
	ld c, c                                          ; $7486: $49
	ld e, b                                          ; $7487: $58
	nop                                              ; $7488: $00
	add e                                            ; $7489: $83
	rst $38                                          ; $748a: $ff
	ld sp, hl                                        ; $748b: $f9
	inc d                                            ; $748c: $14
	and d                                            ; $748d: $a2
	ld d, a                                          ; $748e: $57
	nop                                              ; $748f: $00
	add l                                            ; $7490: $85
	rst $38                                          ; $7491: $ff
	ld sp, hl                                        ; $7492: $f9
	inc d                                            ; $7493: $14
	jr nz, jr_00a_74e9                               ; $7494: $20 $53

	ret nz                                           ; $7496: $c0

	add b                                            ; $7497: $80
	rst $38                                          ; $7498: $ff
	ld sp, hl                                        ; $7499: $f9
	inc d                                            ; $749a: $14
	cp d                                             ; $749b: $ba
	ld d, e                                          ; $749c: $53
	nop                                              ; $749d: $00
	add e                                            ; $749e: $83
	rst $38                                          ; $749f: $ff
	ld sp, hl                                        ; $74a0: $f9
	inc d                                            ; $74a1: $14
	db $10                                           ; $74a2: $10
	ld d, l                                          ; $74a3: $55
	nop                                              ; $74a4: $00
	add l                                            ; $74a5: $85
	rst $38                                          ; $74a6: $ff
	ld sp, hl                                        ; $74a7: $f9
	inc d                                            ; $74a8: $14
	ld a, [bc]                                       ; $74a9: $0a
	ld e, [hl]                                       ; $74aa: $5e

jr_00a_74ab:
	ret nz                                           ; $74ab: $c0

	add b                                            ; $74ac: $80
	rst $38                                          ; $74ad: $ff
	ld sp, hl                                        ; $74ae: $f9
	inc d                                            ; $74af: $14
	ld de, $0060                                     ; $74b0: $11 $60 $00
	add e                                            ; $74b3: $83
	rst $38                                          ; $74b4: $ff
	ld sp, hl                                        ; $74b5: $f9
	inc d                                            ; $74b6: $14
	xor c                                            ; $74b7: $a9
	ld e, [hl]                                       ; $74b8: $5e
	nop                                              ; $74b9: $00
	add e                                            ; $74ba: $83
	inc d                                            ; $74bb: $14
	ld d, c                                          ; $74bc: $51
	ld h, c                                          ; $74bd: $61
	nop                                              ; $74be: $00
	add h                                            ; $74bf: $84
	rst $38                                          ; $74c0: $ff
	ld sp, hl                                        ; $74c1: $f9
	inc d                                            ; $74c2: $14
	ld e, c                                          ; $74c3: $59
	ld e, a                                          ; $74c4: $5f
	nop                                              ; $74c5: $00
	add l                                            ; $74c6: $85
	rst $38                                          ; $74c7: $ff
	ld sp, hl                                        ; $74c8: $f9
	inc d                                            ; $74c9: $14
	rst AddAOntoHL                                          ; $74ca: $ef
	ld h, d                                          ; $74cb: $62
	ret nz                                           ; $74cc: $c0

	add b                                            ; $74cd: $80
	rst $38                                          ; $74ce: $ff
	ld sp, hl                                        ; $74cf: $f9
	inc d                                            ; $74d0: $14
	sub d                                            ; $74d1: $92
	ld h, e                                          ; $74d2: $63
	nop                                              ; $74d3: $00
	add e                                            ; $74d4: $83
	inc d                                            ; $74d5: $14
	ld c, b                                          ; $74d6: $48
	ld h, h                                          ; $74d7: $64
	ldh [hDisp0_SCY], a                                     ; $74d8: $e0 $83
	rst $38                                          ; $74da: $ff
	ld sp, hl                                        ; $74db: $f9
	inc d                                            ; $74dc: $14
	dec sp                                           ; $74dd: $3b
	ld h, l                                          ; $74de: $65
	nop                                              ; $74df: $00
	add l                                            ; $74e0: $85
	rst $38                                          ; $74e1: $ff
	ld sp, hl                                        ; $74e2: $f9
	inc d                                            ; $74e3: $14
	or l                                             ; $74e4: $b5
	halt                                             ; $74e5: $76
	nop                                              ; $74e6: $00
	add b                                            ; $74e7: $80
	inc d                                            ; $74e8: $14

jr_00a_74e9:
	ld h, c                                          ; $74e9: $61
	ld [hl], a                                       ; $74ea: $77
	nop                                              ; $74eb: $00
	add e                                            ; $74ec: $83
	rst $38                                          ; $74ed: $ff
	ld sp, hl                                        ; $74ee: $f9
	inc d                                            ; $74ef: $14
	adc c                                            ; $74f0: $89
	ld l, d                                          ; $74f1: $6a
	nop                                              ; $74f2: $00
	add b                                            ; $74f3: $80
	inc d                                            ; $74f4: $14
	daa                                              ; $74f5: $27
	ld l, e                                          ; $74f6: $6b
	nop                                              ; $74f7: $00
	add e                                            ; $74f8: $83
	rst $38                                          ; $74f9: $ff
	ld sp, hl                                        ; $74fa: $f9
	inc d                                            ; $74fb: $14
	or b                                             ; $74fc: $b0
	ld [hl], d                                       ; $74fd: $72
	nop                                              ; $74fe: $00
	add b                                            ; $74ff: $80
	inc d                                            ; $7500: $14
	ld d, b                                          ; $7501: $50
	ld [hl], e                                       ; $7502: $73
	nop                                              ; $7503: $00
	add e                                            ; $7504: $83
	rst $38                                          ; $7505: $ff
	ld sp, hl                                        ; $7506: $f9
	inc d                                            ; $7507: $14
	or l                                             ; $7508: $b5
	ld l, [hl]                                       ; $7509: $6e
	nop                                              ; $750a: $00
	add b                                            ; $750b: $80
	inc d                                            ; $750c: $14
	ld e, b                                          ; $750d: $58
	ld l, a                                          ; $750e: $6f
	nop                                              ; $750f: $00
	add e                                            ; $7510: $83
	rst $38                                          ; $7511: $ff
	ld sp, hl                                        ; $7512: $f9
	inc d                                            ; $7513: $14
	rlca                                             ; $7514: $07
	ld h, [hl]                                       ; $7515: $66
	nop                                              ; $7516: $00
	add b                                            ; $7517: $80
	inc d                                            ; $7518: $14
	and c                                            ; $7519: $a1
	ld h, [hl]                                       ; $751a: $66
	nop                                              ; $751b: $00
	add e                                            ; $751c: $83
	rst $38                                          ; $751d: $ff
	ld sp, hl                                        ; $751e: $f9
	inc d                                            ; $751f: $14
	dec l                                            ; $7520: $2d
	ld l, c                                          ; $7521: $69
	nop                                              ; $7522: $00
	add e                                            ; $7523: $83
	rst $38                                          ; $7524: $ff
	ld l, $20                                        ; $7525: $2e $20
	ld a, [hl]                                       ; $7527: $7e
	rst JumpTable                                          ; $7528: $c7
	dec a                                            ; $7529: $3d
	ld [hl], l                                       ; $752a: $75
	ld b, b                                          ; $752b: $40
	ld [hl], l                                       ; $752c: $75
	ld b, e                                          ; $752d: $43
	ld [hl], l                                       ; $752e: $75
	ld b, [hl]                                       ; $752f: $46
	ld [hl], l                                       ; $7530: $75
	ld c, c                                          ; $7531: $49
	ld [hl], l                                       ; $7532: $75
	ld e, a                                          ; $7533: $5f
	ld [hl], l                                       ; $7534: $75
	ld a, c                                          ; $7535: $79
	ld [hl], l                                       ; $7536: $75
	adc [hl]                                         ; $7537: $8e
	ld [hl], l                                       ; $7538: $75
	sbc h                                            ; $7539: $9c
	ld [hl], l                                       ; $753a: $75
	xor b                                            ; $753b: $a8
	ld [hl], l                                       ; $753c: $75
	jp Jump_00a_7dbe                                 ; $753d: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $7540: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $7543: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $7546: $c3 $f8 $7d


	ld l, $30                                        ; $7549: $2e $30
	dec [hl]                                         ; $754b: $35
	ret nz                                           ; $754c: $c0

	ld l, $20                                        ; $754d: $2e $20
	inc [hl]                                         ; $754f: $34
	call $3da5                                       ; $7550: $cd $a5 $3d
	ld bc, $5095                                     ; $7553: $01 $95 $50
	ld a, $30                                        ; $7556: $3e $30
	call $3bfc                                       ; $7558: $cd $fc $3b
	call $3d53                                       ; $755b: $cd $53 $3d
	ret                                              ; $755e: $c9


	call $16d0                                       ; $755f: $cd $d0 $16
	ld l, $0c                                        ; $7562: $2e $0c
	ld a, [hl]                                       ; $7564: $7e
	or a                                             ; $7565: $b7
	ret nz                                           ; $7566: $c0

	ld l, $20                                        ; $7567: $2e $20
	inc [hl]                                         ; $7569: $34
	ld l, $30                                        ; $756a: $2e $30
	ld [hl], $3c                                     ; $756c: $36 $3c
	ld a, $29                                        ; $756e: $3e $29
	ld [$ca00], a                                    ; $7570: $ea $00 $ca
	ld a, $51                                        ; $7573: $3e $51
	call $1e2e                                       ; $7575: $cd $2e $1e
	ret                                              ; $7578: $c9


	ld l, $30                                        ; $7579: $2e $30
	dec [hl]                                         ; $757b: $35
	ret nz                                           ; $757c: $c0

	ld [hl], $64                                     ; $757d: $36 $64
	ld l, $20                                        ; $757f: $2e $20
	inc [hl]                                         ; $7581: $34
	ld de, $8c48                                     ; $7582: $11 $48 $8c
	ld bc, $718c                                     ; $7585: $01 $8c $71
	ld a, $00                                        ; $7588: $3e $00
	call $3d99                                       ; $758a: $cd $99 $3d
	ret                                              ; $758d: $c9


	ld l, $30                                        ; $758e: $2e $30
	dec [hl]                                         ; $7590: $35
	ret nz                                           ; $7591: $c0

	ld l, $20                                        ; $7592: $2e $20
	inc [hl]                                         ; $7594: $34
	ld bc, $0105                                     ; $7595: $01 $05 $01
	call $3cd9                                       ; $7598: $cd $d9 $3c
	ret                                              ; $759b: $c9


	call $3ce2                                       ; $759c: $cd $e2 $3c
	ret nz                                           ; $759f: $c0

	ld l, $20                                        ; $75a0: $2e $20
	inc [hl]                                         ; $75a2: $34
	ld l, $30                                        ; $75a3: $2e $30
	ld [hl], $3c                                     ; $75a5: $36 $3c
	ret                                              ; $75a7: $c9


	push hl                                          ; $75a8: $e5
	ld hl, $ca00                                     ; $75a9: $21 $00 $ca
	call $3d4b                                       ; $75ac: $cd $4b $3d
	pop hl                                           ; $75af: $e1
	ld l, $30                                        ; $75b0: $2e $30
	dec [hl]                                         ; $75b2: $35
	ret nz                                           ; $75b3: $c0

	ld l, $0a                                        ; $75b4: $2e $0a
	ld [hl], $07                                     ; $75b6: $36 $07
	ld hl, $c900                                     ; $75b8: $21 $00 $c9
	call $2dfc                                       ; $75bb: $cd $fc $2d
	ld hl, $ca00                                     ; $75be: $21 $00 $ca
	call $2dfc                                       ; $75c1: $cd $fc $2d
	ret                                              ; $75c4: $c9


	rst JumpTable                                          ; $75c5: $c7
	jp nc, $e475                                     ; $75c6: $d2 $75 $e4

	ld [hl], l                                       ; $75c9: $75
	ld hl, sp+$75                                    ; $75ca: $f8 $75
	rla                                              ; $75cc: $17
	halt                                             ; $75cd: $76
	inc [hl]                                         ; $75ce: $34
	halt                                             ; $75cf: $76
	dec [hl]                                         ; $75d0: $35
	halt                                             ; $75d1: $76
	inc [hl]                                         ; $75d2: $34
	ld de, $8830                                     ; $75d3: $11 $30 $88
	call $3bf4                                       ; $75d6: $cd $f4 $3b
	ld bc, $5096                                     ; $75d9: $01 $96 $50
	ld a, $30                                        ; $75dc: $3e $30
	call $3bfc                                       ; $75de: $cd $fc $3b
	call $3d53                                       ; $75e1: $cd $53 $3d
	call $16d0                                       ; $75e4: $cd $d0 $16
	ld l, $05                                        ; $75e7: $2e $05
	ld a, [hl]                                       ; $75e9: $7e
	sub $03                                          ; $75ea: $d6 $03
	ld [hl], a                                       ; $75ec: $77
	cp $ce                                           ; $75ed: $fe $ce
	ret c                                            ; $75ef: $d8

	ld l, $0a                                        ; $75f0: $2e $0a
	inc [hl]                                         ; $75f2: $34
	ld l, $30                                        ; $75f3: $2e $30
	ld [hl], $3c                                     ; $75f5: $36 $3c
	ret                                              ; $75f7: $c9


	ld l, $30                                        ; $75f8: $2e $30
	dec [hl]                                         ; $75fa: $35
	ret nz                                           ; $75fb: $c0

	ld l, $0a                                        ; $75fc: $2e $0a
	inc [hl]                                         ; $75fe: $34
	call $3da5                                       ; $75ff: $cd $a5 $3d
	ld de, $2400                                     ; $7602: $11 $00 $24
	ld bc, $7240                                     ; $7605: $01 $40 $72
	ld a, $30                                        ; $7608: $3e $30
	call $3d99                                       ; $760a: $cd $99 $3d
	ld de, $0000                                     ; $760d: $11 $00 $00
	ld bc, $0300                                     ; $7610: $01 $00 $03
	call $3d32                                       ; $7613: $cd $32 $3d
	ret                                              ; $7616: $c9


	call $3d1b                                       ; $7617: $cd $1b $3d
	ld l, $05                                        ; $761a: $2e $05
	ld a, [hl]                                       ; $761c: $7e
	cp $54                                           ; $761d: $fe $54
	ret c                                            ; $761f: $d8

	ld [hl], $54                                     ; $7620: $36 $54
	ld l, $0a                                        ; $7622: $2e $0a
	inc [hl]                                         ; $7624: $34
	ld l, $30                                        ; $7625: $2e $30
	ld [hl], $3c                                     ; $7627: $36 $3c
	ld a, $2a                                        ; $7629: $3e $2a
	ld [$c900], a                                    ; $762b: $ea $00 $c9
	ld a, $52                                        ; $762e: $3e $52
	call $1e2e                                       ; $7630: $cd $2e $1e
	ret                                              ; $7633: $c9


	ret                                              ; $7634: $c9


	ret                                              ; $7635: $c9


	rst JumpTable                                          ; $7636: $c7
	dec sp                                           ; $7637: $3b
	halt                                             ; $7638: $76
	ld c, [hl]                                       ; $7639: $4e
	halt                                             ; $763a: $76
	inc [hl]                                         ; $763b: $34
	ld de, $2464                                     ; $763c: $11 $64 $24
	ld bc, $7278                                     ; $763f: $01 $78 $72
	ld a, $30                                        ; $7642: $3e $30
	call $3d99                                       ; $7644: $cd $99 $3d
	call $3d53                                       ; $7647: $cd $53 $3d
	ld l, $30                                        ; $764a: $2e $30
	ld [hl], $1c                                     ; $764c: $36 $1c
	ld l, $30                                        ; $764e: $2e $30
	inc [hl]                                         ; $7650: $34
	ld a, [hl]                                       ; $7651: $7e
	cp $30                                           ; $7652: $fe $30
	jr z, jr_00a_765e                                ; $7654: $28 $08

	cp $38                                           ; $7656: $fe $38
	jr c, jr_00a_7666                                ; $7658: $38 $0c

	call $2dfc                                       ; $765a: $cd $fc $2d
	ret                                              ; $765d: $c9


jr_00a_765e:
	ld bc, $7270                                     ; $765e: $01 $70 $72
	ld a, $30                                        ; $7661: $3e $30
	call $3d9f                                       ; $7663: $cd $9f $3d

jr_00a_7666:
	ld l, $03                                        ; $7666: $2e $03
	res 5, [hl]                                      ; $7668: $cb $ae
	ld a, [$c120]                                    ; $766a: $fa $20 $c1
	and $01                                          ; $766d: $e6 $01
	ld l, $30                                        ; $766f: $2e $30
	ld a, [hl]                                       ; $7671: $7e
	jr z, jr_00a_767a                                ; $7672: $28 $06

	ld l, $03                                        ; $7674: $2e $03
	set 5, [hl]                                      ; $7676: $cb $ee
	cpl                                              ; $7678: $2f
	inc a                                            ; $7679: $3c

jr_00a_767a:
	add $24                                          ; $767a: $c6 $24
	ld l, $07                                        ; $767c: $2e $07
	ld [hl], a                                       ; $767e: $77
	ret                                              ; $767f: $c9


	ld l, $20                                        ; $7680: $2e $20
	ld a, [hl]                                       ; $7682: $7e
	rst JumpTable                                          ; $7683: $c7
	xor b                                            ; $7684: $a8
	halt                                             ; $7685: $76
	xor e                                            ; $7686: $ab
	halt                                             ; $7687: $76
	xor [hl]                                         ; $7688: $ae
	halt                                             ; $7689: $76
	or c                                             ; $768a: $b1
	halt                                             ; $768b: $76
	or h                                             ; $768c: $b4
	halt                                             ; $768d: $76
	ret                                              ; $768e: $c9


	halt                                             ; $768f: $76
	jp c, $1d76                                      ; $7690: $da $76 $1d

	ld [hl], a                                       ; $7693: $77
	ld d, e                                          ; $7694: $53
	ld [hl], a                                       ; $7695: $77
	ld l, e                                          ; $7696: $6b
	ld [hl], a                                       ; $7697: $77
	add e                                            ; $7698: $83
	ld [hl], a                                       ; $7699: $77
	sub d                                            ; $769a: $92
	ld [hl], a                                       ; $769b: $77
	and h                                            ; $769c: $a4
	ld [hl], a                                       ; $769d: $77
	rst JumpTable                                          ; $769e: $c7
	ld [hl], a                                       ; $769f: $77
	inc de                                           ; $76a0: $13
	ld a, b                                          ; $76a1: $78
	dec a                                            ; $76a2: $3d
	ld a, b                                          ; $76a3: $78
	ld c, c                                          ; $76a4: $49
	ld a, b                                          ; $76a5: $78
	ld [hl], e                                       ; $76a6: $73
	ld a, b                                          ; $76a7: $78
	jp Jump_00a_7dbe                                 ; $76a8: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $76ab: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $76ae: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $76b1: $c3 $f8 $7d


	ld l, $30                                        ; $76b4: $2e $30
	dec [hl]                                         ; $76b6: $35
	ret nz                                           ; $76b7: $c0

	ld [hl], $5a                                     ; $76b8: $36 $5a
	ld l, $20                                        ; $76ba: $2e $20
	inc [hl]                                         ; $76bc: $34
	ld bc, $5097                                     ; $76bd: $01 $97 $50
	ld a, $30                                        ; $76c0: $3e $30
	call $3bfc                                       ; $76c2: $cd $fc $3b
	call $16d0                                       ; $76c5: $cd $d0 $16
	ret                                              ; $76c8: $c9


	call $16d0                                       ; $76c9: $cd $d0 $16
	ld l, $30                                        ; $76cc: $2e $30
	dec [hl]                                         ; $76ce: $35
	ret nz                                           ; $76cf: $c0

	ld [hl], $0f                                     ; $76d0: $36 $0f
	ld l, $20                                        ; $76d2: $2e $20
	inc [hl]                                         ; $76d4: $34
	rst FarCall                                          ; $76d5: $f7
	add b                                            ; $76d6: $80
	ld b, h                                          ; $76d7: $44
	add hl, bc                                       ; $76d8: $09
	ret                                              ; $76d9: $c9


	ld l, $07                                        ; $76da: $2e $07
	inc [hl]                                         ; $76dc: $34
	inc [hl]                                         ; $76dd: $34
	inc [hl]                                         ; $76de: $34
	ld l, $30                                        ; $76df: $2e $30
	dec [hl]                                         ; $76e1: $35
	ret nz                                           ; $76e2: $c0

	ld [hl], $2d                                     ; $76e3: $36 $2d
	ld l, $20                                        ; $76e5: $2e $20
	inc [hl]                                         ; $76e7: $34
	call $3da5                                       ; $76e8: $cd $a5 $3d
	ld de, $8000                                     ; $76eb: $11 $00 $80
	ld bc, $74e8                                     ; $76ee: $01 $e8 $74
	ld a, $30                                        ; $76f1: $3e $30
	call $3d99                                       ; $76f3: $cd $99 $3d
	ld bc, $643a                                     ; $76f6: $01 $3a $64
	call $18c4                                       ; $76f9: $cd $c4 $18
	ld a, [$d840]                                    ; $76fc: $fa $40 $d8
	cp $07                                           ; $76ff: $fe $07
	jr z, jr_00a_7716                                ; $7701: $28 $13

	cp $03                                           ; $7703: $fe $03
	jr z, jr_00a_7710                                ; $7705: $28 $09

	cp $09                                           ; $7707: $fe $09
	jr z, jr_00a_7710                                ; $7709: $28 $05

	ld bc, $6444                                     ; $770b: $01 $44 $64
	jr jr_00a_7713                                   ; $770e: $18 $03

jr_00a_7710:
	ld bc, $6440                                     ; $7710: $01 $40 $64

jr_00a_7713:
	call $18b7                                       ; $7713: $cd $b7 $18

jr_00a_7716:
	ld hl, $7cb6                                     ; $7716: $21 $b6 $7c
	call $3c78                                       ; $7719: $cd $78 $3c
	ret                                              ; $771c: $c9


	ld de, $0000                                     ; $771d: $11 $00 $00
	ld bc, $0180                                     ; $7720: $01 $80 $01
	call $3bd6                                       ; $7723: $cd $d6 $3b
	ld l, $05                                        ; $7726: $2e $05
	ld a, [hl]                                       ; $7728: $7e
	cp $66                                           ; $7729: $fe $66
	ret c                                            ; $772b: $d8

	ld [hl], $66                                     ; $772c: $36 $66
	ld l, $30                                        ; $772e: $2e $30
	dec [hl]                                         ; $7730: $35
	ld a, [hl]                                       ; $7731: $7e
	cp $01                                           ; $7732: $fe $01
	jr c, jr_00a_773d                                ; $7734: $38 $07

	ret nz                                           ; $7736: $c0

	ld a, $2b                                        ; $7737: $3e $2b
	ld [$ca00], a                                    ; $7739: $ea $00 $ca
	ret                                              ; $773c: $c9


jr_00a_773d:
	ld l, $20                                        ; $773d: $2e $20
	inc [hl]                                         ; $773f: $34
	ld l, $30                                        ; $7740: $2e $30
	ld [hl], $b4                                     ; $7742: $36 $b4
	ld bc, $7530                                     ; $7744: $01 $30 $75
	ld a, $30                                        ; $7747: $3e $30
	call $3d9f                                       ; $7749: $cd $9f $3d
	ld bc, $0203                                     ; $774c: $01 $03 $02
	call $3cd9                                       ; $774f: $cd $d9 $3c
	ret                                              ; $7752: $c9


	ld l, $30                                        ; $7753: $2e $30
	dec [hl]                                         ; $7755: $35
	ret nz                                           ; $7756: $c0

	ld [hl], $1e                                     ; $7757: $36 $1e
	ld l, $20                                        ; $7759: $2e $20
	inc [hl]                                         ; $775b: $34
	ld bc, $74e8                                     ; $775c: $01 $e8 $74
	ld a, $30                                        ; $775f: $3e $30
	call $3d9f                                       ; $7761: $cd $9f $3d
	ld hl, $ca00                                     ; $7764: $21 $00 $ca
	call $2dfc                                       ; $7767: $cd $fc $2d
	ret                                              ; $776a: $c9


	ld l, $30                                        ; $776b: $2e $30
	dec [hl]                                         ; $776d: $35
	ret nz                                           ; $776e: $c0

	ld [hl], $1e                                     ; $776f: $36 $1e
	ld l, $20                                        ; $7771: $2e $20
	inc [hl]                                         ; $7773: $34
	ld bc, $7598                                     ; $7774: $01 $98 $75
	ld a, $30                                        ; $7777: $3e $30
	call $3d9f                                       ; $7779: $cd $9f $3d
	ld bc, $0204                                     ; $777c: $01 $04 $02
	call $3cd9                                       ; $777f: $cd $d9 $3c
	ret                                              ; $7782: $c9


	ld l, $30                                        ; $7783: $2e $30
	dec [hl]                                         ; $7785: $35
	ret nz                                           ; $7786: $c0

	ld [hl], $64                                     ; $7787: $36 $64
	ld l, $20                                        ; $7789: $2e $20
	inc [hl]                                         ; $778b: $34
	ld a, $2c                                        ; $778c: $3e $2c
	ld [$ca00], a                                    ; $778e: $ea $00 $ca
	ret                                              ; $7791: $c9


	ld l, $30                                        ; $7792: $2e $30
	dec [hl]                                         ; $7794: $35
	ret nz                                           ; $7795: $c0

	ld [hl], $1e                                     ; $7796: $36 $1e
	ld l, $20                                        ; $7798: $2e $20
	inc [hl]                                         ; $779a: $34
	ld bc, $74e8                                     ; $779b: $01 $e8 $74
	ld a, $30                                        ; $779e: $3e $30
	call $3d9f                                       ; $77a0: $cd $9f $3d
	ret                                              ; $77a3: $c9


	ld l, $30                                        ; $77a4: $2e $30
	dec [hl]                                         ; $77a6: $35
	ret nz                                           ; $77a7: $c0

	ld [hl], $78                                     ; $77a8: $36 $78
	ld l, $20                                        ; $77aa: $2e $20
	inc [hl]                                         ; $77ac: $34
	ld bc, $7598                                     ; $77ad: $01 $98 $75
	ld a, $30                                        ; $77b0: $3e $30
	call $3d9f                                       ; $77b2: $cd $9f $3d
	ld bc, $0205                                     ; $77b5: $01 $05 $02
	call $3cd9                                       ; $77b8: $cd $d9 $3c
	ld hl, $ca00                                     ; $77bb: $21 $00 $ca
	call $2dfc                                       ; $77be: $cd $fc $2d
	ld a, $2d                                        ; $77c1: $3e $2d
	ld [$ca00], a                                    ; $77c3: $ea $00 $ca
	ret                                              ; $77c6: $c9


	ld l, $30                                        ; $77c7: $2e $30
	dec [hl]                                         ; $77c9: $35
	ret nz                                           ; $77ca: $c0

	ld [hl], $78                                     ; $77cb: $36 $78
	ld l, $20                                        ; $77cd: $2e $20
	inc [hl]                                         ; $77cf: $34
	ld bc, $762c                                     ; $77d0: $01 $2c $76
	ld a, $30                                        ; $77d3: $3e $30
	call $3d9f                                       ; $77d5: $cd $9f $3d
	rst FarCall                                          ; $77d8: $f7
	inc bc                                           ; $77d9: $03
	ld b, l                                          ; $77da: $45
	add hl, bc                                       ; $77db: $09
	jr z, jr_00a_77ee                                ; $77dc: $28 $10

	ld a, [$d840]                                    ; $77de: $fa $40 $d8
	cp $07                                           ; $77e1: $fe $07
	jr z, jr_00a_77ff                                ; $77e3: $28 $1a

	cp $03                                           ; $77e5: $fe $03
	jr z, jr_00a_7804                                ; $77e7: $28 $1b

	cp $09                                           ; $77e9: $fe $09
	jr z, jr_00a_7804                                ; $77eb: $28 $17

	ret                                              ; $77ed: $c9


jr_00a_77ee:
	rst FarCall                                          ; $77ee: $f7
	cpl                                              ; $77ef: $2f
	ld b, l                                          ; $77f0: $45
	add hl, bc                                       ; $77f1: $09
	ld hl, $480b                                     ; $77f2: $21 $0b $48
	ld a, [$d8b3]                                    ; $77f5: $fa $b3 $d8
	or a                                             ; $77f8: $b7
	jp z, $3c18                                      ; $77f9: $ca $18 $3c

	jp $3c1d                                         ; $77fc: $c3 $1d $3c


jr_00a_77ff:
	ld hl, $47f9                                     ; $77ff: $21 $f9 $47
	jr jr_00a_7807                                   ; $7802: $18 $03

jr_00a_7804:
	ld hl, $4802                                     ; $7804: $21 $02 $48

jr_00a_7807:
	push hl                                          ; $7807: $e5
	call $3c36                                       ; $7808: $cd $36 $3c
	pop hl                                           ; $780b: $e1
	call $3c1d                                       ; $780c: $cd $1d $3c
	call $3cf2                                       ; $780f: $cd $f2 $3c
	ret                                              ; $7812: $c9


	ld l, $30                                        ; $7813: $2e $30
	dec [hl]                                         ; $7815: $35
	ret nz                                           ; $7816: $c0

	ld l, $20                                        ; $7817: $2e $20
	inc [hl]                                         ; $7819: $34
	ld bc, $74e8                                     ; $781a: $01 $e8 $74
	ld a, $30                                        ; $781d: $3e $30
	call $3d9f                                       ; $781f: $cd $9f $3d
	ld bc, $0105                                     ; $7822: $01 $05 $01
	call $3cd9                                       ; $7825: $cd $d9 $3c
	ld hl, $ca00                                     ; $7828: $21 $00 $ca
	call $2dfc                                       ; $782b: $cd $fc $2d
	rst FarCall                                          ; $782e: $f7
	inc bc                                           ; $782f: $03
	ld b, l                                          ; $7830: $45
	add hl, bc                                       ; $7831: $09
	jr z, jr_00a_7838                                ; $7832: $28 $04

	call $3cee                                       ; $7834: $cd $ee $3c
	ret                                              ; $7837: $c9


jr_00a_7838:
	rst FarCall                                          ; $7838: $f7
	cpl                                              ; $7839: $2f
	ld b, l                                          ; $783a: $45
	add hl, bc                                       ; $783b: $09
	ret                                              ; $783c: $c9


	call $3ce2                                       ; $783d: $cd $e2 $3c
	ret nz                                           ; $7840: $c0

	ld l, $20                                        ; $7841: $2e $20
	inc [hl]                                         ; $7843: $34
	ld l, $30                                        ; $7844: $2e $30
	ld [hl], $3c                                     ; $7846: $36 $3c
	ret                                              ; $7848: $c9


	call $3d4b                                       ; $7849: $cd $4b $3d
	ld l, $30                                        ; $784c: $2e $30
	dec [hl]                                         ; $784e: $35
	ret nz                                           ; $784f: $c0

	ld l, $20                                        ; $7850: $2e $20
	inc [hl]                                         ; $7852: $34
	call $3da5                                       ; $7853: $cd $a5 $3d
	ld de, $a948                                     ; $7856: $11 $48 $a9
	ld bc, $4220                                     ; $7859: $01 $20 $42
	ld a, $00                                        ; $785c: $3e $00
	call $3d99                                       ; $785e: $cd $99 $3d
	call $3d53                                       ; $7861: $cd $53 $3d
	rst FarCall                                          ; $7864: $f7
	ld a, h                                          ; $7865: $7c
	ld b, h                                          ; $7866: $44
	add hl, bc                                       ; $7867: $09
	ld hl, $7e96                                     ; $7868: $21 $96 $7e
	call $3c78                                       ; $786b: $cd $78 $3c
	rst FarCall                                          ; $786e: $f7
	push af                                          ; $786f: $f5
	ld c, l                                          ; $7870: $4d
	ld a, [bc]                                       ; $7871: $0a
	ret                                              ; $7872: $c9


	ld l, $07                                        ; $7873: $2e $07
	dec [hl]                                         ; $7875: $35
	dec [hl]                                         ; $7876: $35
	dec [hl]                                         ; $7877: $35
	ld a, [hl]                                       ; $7878: $7e
	cp $8c                                           ; $7879: $fe $8c
	ret nc                                           ; $787b: $d0

	ld [hl], $8c                                     ; $787c: $36 $8c
	ld l, $0a                                        ; $787e: $2e $0a
	ld [hl], $07                                     ; $7880: $36 $07
	ret                                              ; $7882: $c9


	rst JumpTable                                          ; $7883: $c7
	adc [hl]                                         ; $7884: $8e
	ld a, b                                          ; $7885: $78
	sbc a                                            ; $7886: $9f
	ld a, b                                          ; $7887: $78
	cp c                                             ; $7888: $b9
	ld a, b                                          ; $7889: $78
	sub $78                                          ; $788a: $d6 $78
	ldh [c], a                                       ; $788c: $e2
	ld a, b                                          ; $788d: $78
	inc [hl]                                         ; $788e: $34
	ld l, $30                                        ; $788f: $2e $30
	ld [hl], $3c                                     ; $7891: $36 $3c
	ld de, $8066                                     ; $7893: $11 $66 $80
	ld bc, $7578                                     ; $7896: $01 $78 $75
	ld a, $30                                        ; $7899: $3e $30
	call $3d99                                       ; $789b: $cd $99 $3d
	ret                                              ; $789e: $c9


	ld l, $30                                        ; $789f: $2e $30
	dec [hl]                                         ; $78a1: $35
	ret nz                                           ; $78a2: $c0

	ld [hl], $32                                     ; $78a3: $36 $32
	ld l, $0a                                        ; $78a5: $2e $0a
	inc [hl]                                         ; $78a7: $34
	call $3da5                                       ; $78a8: $cd $a5 $3d
	ld bc, $5098                                     ; $78ab: $01 $98 $50
	ld a, $30                                        ; $78ae: $3e $30
	call $3bfc                                       ; $78b0: $cd $fc $3b
	ld a, $5f                                        ; $78b3: $3e $5f
	call $1e2e                                       ; $78b5: $cd $2e $1e
	ret                                              ; $78b8: $c9


	call $16d0                                       ; $78b9: $cd $d0 $16
	ld l, $07                                        ; $78bc: $2e $07
	dec [hl]                                         ; $78be: $35
	dec [hl]                                         ; $78bf: $35
	dec [hl]                                         ; $78c0: $35
	ld l, $30                                        ; $78c1: $2e $30
	dec [hl]                                         ; $78c3: $35
	ret nz                                           ; $78c4: $c0

	ld [hl], $32                                     ; $78c5: $36 $32
	ld l, $0a                                        ; $78c7: $2e $0a
	inc [hl]                                         ; $78c9: $34
	call $3da5                                       ; $78ca: $cd $a5 $3d
	ld bc, $7578                                     ; $78cd: $01 $78 $75
	ld a, $30                                        ; $78d0: $3e $30
	call $3d9f                                       ; $78d2: $cd $9f $3d
	ret                                              ; $78d5: $c9


	ld l, $07                                        ; $78d6: $2e $07
	inc [hl]                                         ; $78d8: $34
	inc [hl]                                         ; $78d9: $34
	inc [hl]                                         ; $78da: $34
	ld l, $30                                        ; $78db: $2e $30
	dec [hl]                                         ; $78dd: $35
	ret nz                                           ; $78de: $c0

	ld l, $0a                                        ; $78df: $2e $0a
	inc [hl]                                         ; $78e1: $34
	ret                                              ; $78e2: $c9


	rst JumpTable                                          ; $78e3: $c7
	ld [$0c78], a                                    ; $78e4: $ea $78 $0c
	ld a, c                                          ; $78e7: $79
	ld h, $79                                        ; $78e8: $26 $79
	inc [hl]                                         ; $78ea: $34
	ld l, $30                                        ; $78eb: $2e $30
	ld [hl], $3c                                     ; $78ed: $36 $3c
	ld de, $885f                                     ; $78ef: $11 $5f $88
	call $3bf4                                       ; $78f2: $cd $f4 $3b
	ld bc, $5099                                     ; $78f5: $01 $99 $50
	ld a, $30                                        ; $78f8: $3e $30
	call $3bfc                                       ; $78fa: $cd $fc $3b
	ld de, $ff80                                     ; $78fd: $11 $80 $ff
	ld bc, $0000                                     ; $7900: $01 $00 $00
	call $3d32                                       ; $7903: $cd $32 $3d
	ld a, $3c                                        ; $7906: $3e $3c
	call $1e2e                                       ; $7908: $cd $2e $1e
	ret                                              ; $790b: $c9


	call $16d0                                       ; $790c: $cd $d0 $16
	call $3d1b                                       ; $790f: $cd $1b $3d
	call $3d0b                                       ; $7912: $cd $0b $3d
	ld a, $14                                        ; $7915: $3e $14
	rst SubAFromDE                                          ; $7917: $df
	ld bc, $0000                                     ; $7918: $01 $00 $00
	call $3d32                                       ; $791b: $cd $32 $3d
	ld l, $30                                        ; $791e: $2e $30
	dec [hl]                                         ; $7920: $35
	ret nz                                           ; $7921: $c0

	ld l, $0a                                        ; $7922: $2e $0a
	inc [hl]                                         ; $7924: $34
	ret                                              ; $7925: $c9


	ret                                              ; $7926: $c9


	rst JumpTable                                          ; $7927: $c7
	jr nc, @+$7b                                     ; $7928: $30 $79

	ld c, e                                          ; $792a: $4b
	ld a, c                                          ; $792b: $79
	ld h, e                                          ; $792c: $63
	ld a, c                                          ; $792d: $79
	add [hl]                                         ; $792e: $86
	ld a, c                                          ; $792f: $79
	inc [hl]                                         ; $7930: $34
	ld l, $30                                        ; $7931: $2e $30
	ld [hl], $3c                                     ; $7933: $36 $3c
	ld a, $58                                        ; $7935: $3e $58
	call $1e2e                                       ; $7937: $cd $2e $1e
	ld de, $7f68                                     ; $793a: $11 $68 $7f
	call $3bf4                                       ; $793d: $cd $f4 $3b
	ld bc, $509b                                     ; $7940: $01 $9b $50
	ld a, $30                                        ; $7943: $3e $30
	call $3bfc                                       ; $7945: $cd $fc $3b
	jp $16d0                                         ; $7948: $c3 $d0 $16


	ld l, $30                                        ; $794b: $2e $30
	dec [hl]                                         ; $794d: $35
	jr nz, jr_00a_7960                               ; $794e: $20 $10

	ld [hl], $3c                                     ; $7950: $36 $3c
	ld l, $0a                                        ; $7952: $2e $0a
	inc [hl]                                         ; $7954: $34
	call $3da5                                       ; $7955: $cd $a5 $3d
	ld bc, $509c                                     ; $7958: $01 $9c $50
	ld a, $30                                        ; $795b: $3e $30
	call $3bfc                                       ; $795d: $cd $fc $3b

jr_00a_7960:
	jp $16d0                                         ; $7960: $c3 $d0 $16


	call $16d0                                       ; $7963: $cd $d0 $16
	ld l, $30                                        ; $7966: $2e $30
	dec [hl]                                         ; $7968: $35
	jr nz, jr_00a_7986                               ; $7969: $20 $1b

	ld [hl], $78                                     ; $796b: $36 $78
	ld l, $0a                                        ; $796d: $2e $0a
	inc [hl]                                         ; $796f: $34
	ld a, $04                                        ; $7970: $3e $04
	call $1e2e                                       ; $7972: $cd $2e $1e
	ld de, $8068                                     ; $7975: $11 $68 $80
	call $3bf4                                       ; $7978: $cd $f4 $3b
	call $3da5                                       ; $797b: $cd $a5 $3d
	ld bc, $509d                                     ; $797e: $01 $9d $50
	ld a, $30                                        ; $7981: $3e $30
	call $3bfc                                       ; $7983: $cd $fc $3b

jr_00a_7986:
	jp $16d0                                         ; $7986: $c3 $d0 $16


	ld l, $20                                        ; $7989: $2e $20
	ld a, [hl]                                       ; $798b: $7e
	rst JumpTable                                          ; $798c: $c7
	and c                                            ; $798d: $a1
	ld a, c                                          ; $798e: $79
	and h                                            ; $798f: $a4
	ld a, c                                          ; $7990: $79
	and a                                            ; $7991: $a7
	ld a, c                                          ; $7992: $79
	xor d                                            ; $7993: $aa
	ld a, c                                          ; $7994: $79
	xor l                                            ; $7995: $ad
	ld a, c                                          ; $7996: $79
	jp nz, $d479                                     ; $7997: $c2 $79 $d4

	ld a, c                                          ; $799a: $79
	and $79                                          ; $799b: $e6 $79
	rst FarCall                                          ; $799d: $f7
	ld a, c                                          ; $799e: $79
	dec c                                            ; $799f: $0d
	ld a, d                                          ; $79a0: $7a
	jp Jump_00a_7dbe                                 ; $79a1: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $79a4: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $79a7: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $79aa: $c3 $f8 $7d


	ld l, $30                                        ; $79ad: $2e $30
	dec [hl]                                         ; $79af: $35
	ret nz                                           ; $79b0: $c0

	ld [hl], $1e                                     ; $79b1: $36 $1e
	ld l, $20                                        ; $79b3: $2e $20
	inc [hl]                                         ; $79b5: $34
	ld bc, $509e                                     ; $79b6: $01 $9e $50
	ld a, $30                                        ; $79b9: $3e $30
	call $3bfc                                       ; $79bb: $cd $fc $3b
	call $16d0                                       ; $79be: $cd $d0 $16
	ret                                              ; $79c1: $c9


	call $16d0                                       ; $79c2: $cd $d0 $16
	ld l, $30                                        ; $79c5: $2e $30
	dec [hl]                                         ; $79c7: $35
	ret nz                                           ; $79c8: $c0

	ld [hl], $30                                     ; $79c9: $36 $30
	ld l, $20                                        ; $79cb: $2e $20
	inc [hl]                                         ; $79cd: $34
	ld a, $2e                                        ; $79ce: $3e $2e
	ld [$ca00], a                                    ; $79d0: $ea $00 $ca
	ret                                              ; $79d3: $c9


	call $16d0                                       ; $79d4: $cd $d0 $16
	ld l, $30                                        ; $79d7: $2e $30
	dec [hl]                                         ; $79d9: $35
	ret nz                                           ; $79da: $c0

	ld [hl], $78                                     ; $79db: $36 $78
	ld l, $20                                        ; $79dd: $2e $20
	inc [hl]                                         ; $79df: $34
	ld a, $2f                                        ; $79e0: $3e $2f
	ld [$c900], a                                    ; $79e2: $ea $00 $c9
	ret                                              ; $79e5: $c9


	call $16d0                                       ; $79e6: $cd $d0 $16
	ld l, $30                                        ; $79e9: $2e $30
	dec [hl]                                         ; $79eb: $35
	ret nz                                           ; $79ec: $c0

	ld l, $20                                        ; $79ed: $2e $20
	inc [hl]                                         ; $79ef: $34
	ld bc, $0105                                     ; $79f0: $01 $05 $01
	call $3cd9                                       ; $79f3: $cd $d9 $3c
	ret                                              ; $79f6: $c9


	call $3ce2                                       ; $79f7: $cd $e2 $3c
	ret nz                                           ; $79fa: $c0

	ld l, $20                                        ; $79fb: $2e $20
	inc [hl]                                         ; $79fd: $34
	ld l, $30                                        ; $79fe: $2e $30
	ld [hl], $3c                                     ; $7a00: $36 $3c
	ld hl, $c900                                     ; $7a02: $21 $00 $c9
	ld l, $31                                        ; $7a05: $2e $31
	ld a, $01                                        ; $7a07: $3e $01
	ld [hl], a                                       ; $7a09: $77
	inc h                                            ; $7a0a: $24
	ld [hl], a                                       ; $7a0b: $77
	ret                                              ; $7a0c: $c9


	ld l, $30                                        ; $7a0d: $2e $30
	dec [hl]                                         ; $7a0f: $35
	ret nz                                           ; $7a10: $c0

	ld l, $0a                                        ; $7a11: $2e $0a
	ld [hl], $07                                     ; $7a13: $36 $07
	ld hl, $c900                                     ; $7a15: $21 $00 $c9
	call $2dfc                                       ; $7a18: $cd $fc $2d
	ld hl, $ca00                                     ; $7a1b: $21 $00 $ca
	call $2dfc                                       ; $7a1e: $cd $fc $2d
	ret                                              ; $7a21: $c9


	rst JumpTable                                          ; $7a22: $c7
	daa                                              ; $7a23: $27
	ld a, d                                          ; $7a24: $7a
	inc a                                            ; $7a25: $3c
	ld a, d                                          ; $7a26: $7a
	inc [hl]                                         ; $7a27: $34
	rst FarCall                                          ; $7a28: $f7
	sbc h                                            ; $7a29: $9c
	ld b, l                                          ; $7a2a: $45
	add hl, bc                                       ; $7a2b: $09
	call $3bf4                                       ; $7a2c: $cd $f4 $3b
	ld bc, $509f                                     ; $7a2f: $01 $9f $50
	ld a, $30                                        ; $7a32: $3e $30
	call $3bfc                                       ; $7a34: $cd $fc $3b
	ld a, $5a                                        ; $7a37: $3e $5a
	call $1e2e                                       ; $7a39: $cd $2e $1e
	call $16d0                                       ; $7a3c: $cd $d0 $16
	ld l, $31                                        ; $7a3f: $2e $31
	ld a, [hl]                                       ; $7a41: $7e
	or a                                             ; $7a42: $b7
	ret z                                            ; $7a43: $c8

	call $3d4b                                       ; $7a44: $cd $4b $3d
	ret                                              ; $7a47: $c9


	rst JumpTable                                          ; $7a48: $c7
	ld c, l                                          ; $7a49: $4d
	ld a, d                                          ; $7a4a: $7a
	ld h, d                                          ; $7a4b: $62
	ld a, d                                          ; $7a4c: $7a
	inc [hl]                                         ; $7a4d: $34
	rst FarCall                                          ; $7a4e: $f7
	sbc h                                            ; $7a4f: $9c
	ld b, l                                          ; $7a50: $45
	add hl, bc                                       ; $7a51: $09
	call $3bf4                                       ; $7a52: $cd $f4 $3b
	ld bc, $50a0                                     ; $7a55: $01 $a0 $50
	ld a, $30                                        ; $7a58: $3e $30
	call $3bfc                                       ; $7a5a: $cd $fc $3b
	ld a, $5a                                        ; $7a5d: $3e $5a
	call $1e2e                                       ; $7a5f: $cd $2e $1e
	call $16d0                                       ; $7a62: $cd $d0 $16
	ld l, $31                                        ; $7a65: $2e $31
	ld a, [hl]                                       ; $7a67: $7e
	or a                                             ; $7a68: $b7
	ret z                                            ; $7a69: $c8

	call $3d4b                                       ; $7a6a: $cd $4b $3d
	ret                                              ; $7a6d: $c9


	ld l, $20                                        ; $7a6e: $2e $20
	ld a, [hl]                                       ; $7a70: $7e
	rst JumpTable                                          ; $7a71: $c7
	add [hl]                                         ; $7a72: $86
	ld a, d                                          ; $7a73: $7a
	adc c                                            ; $7a74: $89
	ld a, d                                          ; $7a75: $7a
	adc h                                            ; $7a76: $8c
	ld a, d                                          ; $7a77: $7a
	adc a                                            ; $7a78: $8f
	ld a, d                                          ; $7a79: $7a
	sub d                                            ; $7a7a: $92
	ld a, d                                          ; $7a7b: $7a
	and a                                            ; $7a7c: $a7
	ld a, d                                          ; $7a7d: $7a
	jp nz, $047a                                     ; $7a7e: $c2 $7a $04

	ld a, e                                          ; $7a81: $7b
	inc sp                                           ; $7a82: $33
	ld a, e                                          ; $7a83: $7b
	ld c, e                                          ; $7a84: $4b
	ld a, e                                          ; $7a85: $7b
	jp Jump_00a_7dbe                                 ; $7a86: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $7a89: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $7a8c: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $7a8f: $c3 $f8 $7d


	ld l, $30                                        ; $7a92: $2e $30
	dec [hl]                                         ; $7a94: $35
	ret nz                                           ; $7a95: $c0

	ld [hl], $b4                                     ; $7a96: $36 $b4
	ld l, $20                                        ; $7a98: $2e $20
	inc [hl]                                         ; $7a9a: $34
	ld bc, $50a1                                     ; $7a9b: $01 $a1 $50
	ld a, $30                                        ; $7a9e: $3e $30
	call $3bfc                                       ; $7aa0: $cd $fc $3b
	call $16d0                                       ; $7aa3: $cd $d0 $16
	ret                                              ; $7aa6: $c9


	call $16d0                                       ; $7aa7: $cd $d0 $16
	ld l, $30                                        ; $7aaa: $2e $30
	ld a, [hl]                                       ; $7aac: $7e
	cp $a0                                           ; $7aad: $fe $a0
	jr nz, jr_00a_7ab6                               ; $7aaf: $20 $05

	ld a, $4c                                        ; $7ab1: $3e $4c
	call $1e2e                                       ; $7ab3: $cd $2e $1e

jr_00a_7ab6:
	dec [hl]                                         ; $7ab6: $35
	ret nz                                           ; $7ab7: $c0

	ld [hl], $3b                                     ; $7ab8: $36 $3b
	ld l, $20                                        ; $7aba: $2e $20
	inc [hl]                                         ; $7abc: $34
	rst FarCall                                          ; $7abd: $f7
	adc b                                            ; $7abe: $88
	ld b, h                                          ; $7abf: $44
	add hl, bc                                       ; $7ac0: $09
	ret                                              ; $7ac1: $c9


	call $3d4b                                       ; $7ac2: $cd $4b $3d
	ld l, $30                                        ; $7ac5: $2e $30
	dec [hl]                                         ; $7ac7: $35
	ret nz                                           ; $7ac8: $c0

	ld [hl], $fa                                     ; $7ac9: $36 $fa
	ld l, $20                                        ; $7acb: $2e $20
	inc [hl]                                         ; $7acd: $34
	call $3d58                                       ; $7ace: $cd $58 $3d
	ld hl, $c600                                     ; $7ad1: $21 $00 $c6
	ld [hl], $30                                     ; $7ad4: $36 $30
	ld l, $31                                        ; $7ad6: $2e $31
	ld [hl], $00                                     ; $7ad8: $36 $00
	ld hl, $c700                                     ; $7ada: $21 $00 $c7
	ld [hl], $30                                     ; $7add: $36 $30
	ld l, $31                                        ; $7adf: $2e $31
	ld [hl], $01                                     ; $7ae1: $36 $01
	ld hl, $c800                                     ; $7ae3: $21 $00 $c8
	ld [hl], $30                                     ; $7ae6: $36 $30
	ld l, $31                                        ; $7ae8: $2e $31
	ld [hl], $02                                     ; $7aea: $36 $02
	ld hl, $c900                                     ; $7aec: $21 $00 $c9
	ld [hl], $31                                     ; $7aef: $36 $31
	ld l, $31                                        ; $7af1: $2e $31
	ld [hl], $00                                     ; $7af3: $36 $00
	ld hl, $ca00                                     ; $7af5: $21 $00 $ca
	ld [hl], $31                                     ; $7af8: $36 $31
	ld l, $31                                        ; $7afa: $2e $31
	ld [hl], $01                                     ; $7afc: $36 $01
	ld a, $4d                                        ; $7afe: $3e $4d
	call $1e2e                                       ; $7b00: $cd $2e $1e
	ret                                              ; $7b03: $c9


	call $16d0                                       ; $7b04: $cd $d0 $16
	ld l, $30                                        ; $7b07: $2e $30
	dec [hl]                                         ; $7b09: $35
	ret nz                                           ; $7b0a: $c0

	ld l, $20                                        ; $7b0b: $2e $20
	inc [hl]                                         ; $7b0d: $34
	ld bc, $0105                                     ; $7b0e: $01 $05 $01
	call $3cd9                                       ; $7b11: $cd $d9 $3c
	ld hl, $c600                                     ; $7b14: $21 $00 $c6
	call $2dfc                                       ; $7b17: $cd $fc $2d
	ld hl, $c700                                     ; $7b1a: $21 $00 $c7
	call $2dfc                                       ; $7b1d: $cd $fc $2d
	ld hl, $c800                                     ; $7b20: $21 $00 $c8
	call $2dfc                                       ; $7b23: $cd $fc $2d
	ld hl, $c900                                     ; $7b26: $21 $00 $c9
	call $2dfc                                       ; $7b29: $cd $fc $2d
	ld hl, $ca00                                     ; $7b2c: $21 $00 $ca
	call $2dfc                                       ; $7b2f: $cd $fc $2d
	ret                                              ; $7b32: $c9


	call $3ce2                                       ; $7b33: $cd $e2 $3c
	ret nz                                           ; $7b36: $c0

	ld l, $20                                        ; $7b37: $2e $20
	inc [hl]                                         ; $7b39: $34
	ld l, $30                                        ; $7b3a: $2e $30
	ld [hl], $3b                                     ; $7b3c: $36 $3b
	ld bc, $73bc                                     ; $7b3e: $01 $bc $73
	ld a, $00                                        ; $7b41: $3e $00

Jump_00a_7b43:
	call $3d9f                                       ; $7b43: $cd $9f $3d
	rst FarCall                                          ; $7b46: $f7

Jump_00a_7b47:
	add h                                            ; $7b47: $84
	ld b, h                                          ; $7b48: $44
	add hl, bc                                       ; $7b49: $09
	ret                                              ; $7b4a: $c9


	call $3d4b                                       ; $7b4b: $cd $4b $3d
	ld l, $30                                        ; $7b4e: $2e $30
	dec [hl]                                         ; $7b50: $35
	ret nz                                           ; $7b51: $c0

	call $3d53                                       ; $7b52: $cd $53 $3d
	ld l, $0a                                        ; $7b55: $2e $0a
	ld [hl], $07                                     ; $7b57: $36 $07
	ret                                              ; $7b59: $c9


	rst JumpTable                                          ; $7b5a: $c7
	ld e, a                                          ; $7b5b: $5f
	ld a, e                                          ; $7b5c: $7b
	add c                                            ; $7b5d: $81
	ld a, e                                          ; $7b5e: $7b
	inc [hl]                                         ; $7b5f: $34
	ld l, $30                                        ; $7b60: $2e $30
	ld [hl], $fa                                     ; $7b62: $36 $fa
	ld l, $31                                        ; $7b64: $2e $31
	ld a, [hl]                                       ; $7b66: $7e
	cp $01                                           ; $7b67: $fe $01
	ld de, $c448                                     ; $7b69: $11 $48 $c4
	jr c, jr_00a_7b76                                ; $7b6c: $38 $08

	ld de, $ac58                                     ; $7b6e: $11 $58 $ac
	jr z, jr_00a_7b76                                ; $7b71: $28 $03

	ld de, $c468                                     ; $7b73: $11 $68 $c4

jr_00a_7b76:
	call $3bf4                                       ; $7b76: $cd $f4 $3b
	ld bc, $50a2                                     ; $7b79: $01 $a2 $50
	ld a, $30                                        ; $7b7c: $3e $30
	call $3bfc                                       ; $7b7e: $cd $fc $3b
	ld l, $30                                        ; $7b81: $2e $30
	ld a, [hl]                                       ; $7b83: $7e
	or a                                             ; $7b84: $b7
	ret z                                            ; $7b85: $c8

	dec [hl]                                         ; $7b86: $35
	ld de, $ff00                                     ; $7b87: $11 $00 $ff
	ld bc, $0000                                     ; $7b8a: $01 $00 $00
	call $3bd6                                       ; $7b8d: $cd $d6 $3b
	call $16d0                                       ; $7b90: $cd $d0 $16
	ret                                              ; $7b93: $c9


	rst JumpTable                                          ; $7b94: $c7
	sbc c                                            ; $7b95: $99
	ld a, e                                          ; $7b96: $7b
	or l                                             ; $7b97: $b5
	ld a, e                                          ; $7b98: $7b
	inc [hl]                                         ; $7b99: $34
	ld l, $30                                        ; $7b9a: $2e $30
	ld [hl], $fa                                     ; $7b9c: $36 $fa
	ld l, $31                                        ; $7b9e: $2e $31
	ld a, [hl]                                       ; $7ba0: $7e
	or a                                             ; $7ba1: $b7
	ld de, $e248                                     ; $7ba2: $11 $48 $e2
	jr z, jr_00a_7baa                                ; $7ba5: $28 $03

	ld de, $e268                                     ; $7ba7: $11 $68 $e2

jr_00a_7baa:
	call $3bf4                                       ; $7baa: $cd $f4 $3b
	ld bc, $50a3                                     ; $7bad: $01 $a3 $50
	ld a, $30                                        ; $7bb0: $3e $30
	call $3bfc                                       ; $7bb2: $cd $fc $3b
	ld l, $30                                        ; $7bb5: $2e $30
	ld a, [hl]                                       ; $7bb7: $7e
	or a                                             ; $7bb8: $b7
	ret z                                            ; $7bb9: $c8

	dec [hl]                                         ; $7bba: $35
	ld de, $ff00                                     ; $7bbb: $11 $00 $ff
	ld bc, $0000                                     ; $7bbe: $01 $00 $00
	call $3bd6                                       ; $7bc1: $cd $d6 $3b
	call $16d0                                       ; $7bc4: $cd $d0 $16
	ret                                              ; $7bc7: $c9


	ld sp, hl                                        ; $7bc8: $f9
	dec d                                            ; $7bc9: $15
	nop                                              ; $7bca: $00
	ld b, b                                          ; $7bcb: $40
	ret nz                                           ; $7bcc: $c0

	add b                                            ; $7bcd: $80
	rst $38                                          ; $7bce: $ff
	ld sp, hl                                        ; $7bcf: $f9
	dec d                                            ; $7bd0: $15
	and e                                            ; $7bd1: $a3
	ld b, b                                          ; $7bd2: $40
	nop                                              ; $7bd3: $00
	add e                                            ; $7bd4: $83
	rst $38                                          ; $7bd5: $ff
	ld sp, hl                                        ; $7bd6: $f9
	dec d                                            ; $7bd7: $15
	ld c, l                                          ; $7bd8: $4d
	ld b, d                                          ; $7bd9: $42
	nop                                              ; $7bda: $00
	add l                                            ; $7bdb: $85
	rst $38                                          ; $7bdc: $ff
	ld sp, hl                                        ; $7bdd: $f9
	dec d                                            ; $7bde: $15
	ld b, $43                                        ; $7bdf: $06 $43
	ret nz                                           ; $7be1: $c0

	add b                                            ; $7be2: $80
	rst $38                                          ; $7be3: $ff
	ld sp, hl                                        ; $7be4: $f9
	dec d                                            ; $7be5: $15
	sub h                                            ; $7be6: $94
	ld b, e                                          ; $7be7: $43
	ret nz                                           ; $7be8: $c0

	add b                                            ; $7be9: $80
	rst $38                                          ; $7bea: $ff
	ld sp, hl                                        ; $7beb: $f9
	dec d                                            ; $7bec: $15
	add hl, de                                       ; $7bed: $19
	ld b, h                                          ; $7bee: $44
	nop                                              ; $7bef: $00
	add e                                            ; $7bf0: $83
	rst $38                                          ; $7bf1: $ff
	ld sp, hl                                        ; $7bf2: $f9
	dec d                                            ; $7bf3: $15
	ld d, c                                          ; $7bf4: $51
	ld b, l                                          ; $7bf5: $45
	nop                                              ; $7bf6: $00
	add l                                            ; $7bf7: $85
	rst $38                                          ; $7bf8: $ff
	ld sp, hl                                        ; $7bf9: $f9
	dec d                                            ; $7bfa: $15
	rst FarCall                                          ; $7bfb: $f7
	ld b, l                                          ; $7bfc: $45
	ret nz                                           ; $7bfd: $c0

	add b                                            ; $7bfe: $80
	rst $38                                          ; $7bff: $ff
	ld sp, hl                                        ; $7c00: $f9
	dec d                                            ; $7c01: $15
	sub h                                            ; $7c02: $94
	ld b, [hl]                                       ; $7c03: $46
	nop                                              ; $7c04: $00
	add e                                            ; $7c05: $83
	rst $38                                          ; $7c06: $ff
	ld sp, hl                                        ; $7c07: $f9
	dec d                                            ; $7c08: $15
	ld a, [de]                                       ; $7c09: $1a
	ld c, b                                          ; $7c0a: $48
	nop                                              ; $7c0b: $00
	add l                                            ; $7c0c: $85
	rst $38                                          ; $7c0d: $ff
	ld sp, hl                                        ; $7c0e: $f9
	dec d                                            ; $7c0f: $15
	reti                                             ; $7c10: $d9


	ld c, b                                          ; $7c11: $48
	ret nz                                           ; $7c12: $c0

	add b                                            ; $7c13: $80
	rst $38                                          ; $7c14: $ff
	ld sp, hl                                        ; $7c15: $f9
	dec d                                            ; $7c16: $15
	ld [hl], l                                       ; $7c17: $75
	ld c, c                                          ; $7c18: $49
	nop                                              ; $7c19: $00
	add e                                            ; $7c1a: $83
	rst $38                                          ; $7c1b: $ff
	ld sp, hl                                        ; $7c1c: $f9
	dec d                                            ; $7c1d: $15
	dec b                                            ; $7c1e: $05
	ld c, e                                          ; $7c1f: $4b
	nop                                              ; $7c20: $00
	add l                                            ; $7c21: $85
	rst $38                                          ; $7c22: $ff
	ld sp, hl                                        ; $7c23: $f9
	dec d                                            ; $7c24: $15
	cp [hl]                                          ; $7c25: $be
	ld c, e                                          ; $7c26: $4b
	ret nz                                           ; $7c27: $c0

	add b                                            ; $7c28: $80
	rst $38                                          ; $7c29: $ff
	ld sp, hl                                        ; $7c2a: $f9
	dec d                                            ; $7c2b: $15
	ld e, [hl]                                       ; $7c2c: $5e
	ld c, h                                          ; $7c2d: $4c
	nop                                              ; $7c2e: $00
	add e                                            ; $7c2f: $83
	rst $38                                          ; $7c30: $ff
	ld sp, hl                                        ; $7c31: $f9
	dec d                                            ; $7c32: $15
	db $eb                                           ; $7c33: $eb
	ld c, l                                          ; $7c34: $4d
	nop                                              ; $7c35: $00
	add l                                            ; $7c36: $85
	rst $38                                          ; $7c37: $ff
	ld sp, hl                                        ; $7c38: $f9
	dec d                                            ; $7c39: $15
	or c                                             ; $7c3a: $b1
	ld c, [hl]                                       ; $7c3b: $4e
	ret nz                                           ; $7c3c: $c0

	add b                                            ; $7c3d: $80
	rst $38                                          ; $7c3e: $ff
	ld sp, hl                                        ; $7c3f: $f9
	dec d                                            ; $7c40: $15
	ld d, a                                          ; $7c41: $57
	ld c, a                                          ; $7c42: $4f
	nop                                              ; $7c43: $00
	add e                                            ; $7c44: $83
	rst $38                                          ; $7c45: $ff
	ld sp, hl                                        ; $7c46: $f9
	dec d                                            ; $7c47: $15
	ld l, e                                          ; $7c48: $6b
	ld d, c                                          ; $7c49: $51
	nop                                              ; $7c4a: $00
	add l                                            ; $7c4b: $85
	rst $38                                          ; $7c4c: $ff
	ld sp, hl                                        ; $7c4d: $f9
	dec d                                            ; $7c4e: $15
	dec d                                            ; $7c4f: $15
	ld d, d                                          ; $7c50: $52
	ret nz                                           ; $7c51: $c0

	add b                                            ; $7c52: $80
	rst $38                                          ; $7c53: $ff
	ld sp, hl                                        ; $7c54: $f9
	dec d                                            ; $7c55: $15
	jr nz, jr_00a_7cac                               ; $7c56: $20 $54

	nop                                              ; $7c58: $00
	add e                                            ; $7c59: $83
	dec d                                            ; $7c5a: $15
	ret                                              ; $7c5b: $c9


	ld d, h                                          ; $7c5c: $54
	ldh [hDisp0_SCY], a                                     ; $7c5d: $e0 $83
	rst $38                                          ; $7c5f: $ff
	ld sp, hl                                        ; $7c60: $f9
	dec d                                            ; $7c61: $15
	ld b, b                                          ; $7c62: $40
	ld d, a                                          ; $7c63: $57
	ret nz                                           ; $7c64: $c0

	add b                                            ; $7c65: $80
	rst $38                                          ; $7c66: $ff
	ld sp, hl                                        ; $7c67: $f9
	dec d                                            ; $7c68: $15
	push de                                          ; $7c69: $d5
	ld d, a                                          ; $7c6a: $57
	ret nz                                           ; $7c6b: $c0

	add b                                            ; $7c6c: $80
	dec d                                            ; $7c6d: $15
	ld e, e                                          ; $7c6e: $5b
	ld e, b                                          ; $7c6f: $58
	nop                                              ; $7c70: $00
	add e                                            ; $7c71: $83
	rst $38                                          ; $7c72: $ff
	ld sp, hl                                        ; $7c73: $f9
	dec d                                            ; $7c74: $15
	jr nz, jr_00a_7ccb                               ; $7c75: $20 $54

	nop                                              ; $7c77: $00
	add e                                            ; $7c78: $83
	dec d                                            ; $7c79: $15
	cp d                                             ; $7c7a: $ba
	ld d, d                                          ; $7c7b: $52
	ldh [hDisp0_SCY], a                                     ; $7c7c: $e0 $83
	rst $38                                          ; $7c7e: $ff
	ld sp, hl                                        ; $7c7f: $f9
	dec d                                            ; $7c80: $15
	ld [hl], d                                       ; $7c81: $72
	ld d, e                                          ; $7c82: $53
	nop                                              ; $7c83: $00
	add l                                            ; $7c84: $85
	rst $38                                          ; $7c85: $ff
	ld sp, hl                                        ; $7c86: $f9
	dec d                                            ; $7c87: $15
	ld d, e                                          ; $7c88: $53
	ld e, d                                          ; $7c89: $5a
	nop                                              ; $7c8a: $00
	add b                                            ; $7c8b: $80
	dec d                                            ; $7c8c: $15
	ei                                               ; $7c8d: $fb
	ld e, d                                          ; $7c8e: $5a
	nop                                              ; $7c8f: $00
	add e                                            ; $7c90: $83
	rst $38                                          ; $7c91: $ff
	ld sp, hl                                        ; $7c92: $f9
	dec d                                            ; $7c93: $15
	add h                                            ; $7c94: $84
	ld h, d                                          ; $7c95: $62
	nop                                              ; $7c96: $00
	add b                                            ; $7c97: $80
	dec d                                            ; $7c98: $15
	inc l                                            ; $7c99: $2c
	ld h, e                                          ; $7c9a: $63
	nop                                              ; $7c9b: $00
	add e                                            ; $7c9c: $83
	rst $38                                          ; $7c9d: $ff
	ld sp, hl                                        ; $7c9e: $f9
	dec d                                            ; $7c9f: $15
	ld [hl], e                                       ; $7ca0: $73
	ld h, l                                          ; $7ca1: $65
	nop                                              ; $7ca2: $00
	add b                                            ; $7ca3: $80
	dec d                                            ; $7ca4: $15
	inc e                                            ; $7ca5: $1c
	ld h, [hl]                                       ; $7ca6: $66
	nop                                              ; $7ca7: $00
	add e                                            ; $7ca8: $83
	rst $38                                          ; $7ca9: $ff
	ld sp, hl                                        ; $7caa: $f9
	dec d                                            ; $7cab: $15

jr_00a_7cac:
	ld e, l                                          ; $7cac: $5d
	ld e, l                                          ; $7cad: $5d
	nop                                              ; $7cae: $00
	add b                                            ; $7caf: $80
	dec d                                            ; $7cb0: $15
	nop                                              ; $7cb1: $00
	ld e, [hl]                                       ; $7cb2: $5e
	nop                                              ; $7cb3: $00
	add e                                            ; $7cb4: $83
	rst $38                                          ; $7cb5: $ff
	ld sp, hl                                        ; $7cb6: $f9
	dec d                                            ; $7cb7: $15
	and [hl]                                         ; $7cb8: $a6
	ld e, [hl]                                       ; $7cb9: $5e
	nop                                              ; $7cba: $00
	add e                                            ; $7cbb: $83
	rst $38                                          ; $7cbc: $ff
	ld l, $20                                        ; $7cbd: $2e $20
	ld a, [hl]                                       ; $7cbf: $7e
	rst JumpTable                                          ; $7cc0: $c7
	pop de                                           ; $7cc1: $d1
	ld a, h                                          ; $7cc2: $7c
	call nc, $d77c                                   ; $7cc3: $d4 $7c $d7
	ld a, h                                          ; $7cc6: $7c
	jp c, $dd7c                                      ; $7cc7: $da $7c $dd

	ld a, h                                          ; $7cca: $7c

jr_00a_7ccb:
	ld sp, hl                                        ; $7ccb: $f9
	ld a, h                                          ; $7ccc: $7c
	db $10                                           ; $7ccd: $10
	ld a, l                                          ; $7cce: $7d
	ld e, $7d                                        ; $7ccf: $1e $7d
	jp Jump_00a_7dbe                                 ; $7cd1: $c3 $be $7d


	jp Jump_00a_7dd7                                 ; $7cd4: $c3 $d7 $7d


	jp Jump_00a_7de8                                 ; $7cd7: $c3 $e8 $7d


	jp Jump_00a_7df8                                 ; $7cda: $c3 $f8 $7d


	ld l, $30                                        ; $7cdd: $2e $30
	dec [hl]                                         ; $7cdf: $35
	ret nz                                           ; $7ce0: $c0

	ld [hl], $f0                                     ; $7ce1: $36 $f0
	ld l, $20                                        ; $7ce3: $2e $20
	inc [hl]                                         ; $7ce5: $34
	ld bc, $7688                                     ; $7ce6: $01 $88 $76
	ld a, $30                                        ; $7ce9: $3e $30
	call $3d9f                                       ; $7ceb: $cd $9f $3d
	ld a, $13                                        ; $7cee: $3e $13
	ld [$ca00], a                                    ; $7cf0: $ea $00 $ca
	ld a, $4e                                        ; $7cf3: $3e $4e
	call $1e2e                                       ; $7cf5: $cd $2e $1e
	ret                                              ; $7cf8: $c9


	ld l, $30                                        ; $7cf9: $2e $30
	dec [hl]                                         ; $7cfb: $35
	ret nz                                           ; $7cfc: $c0

	ld [hl], $3c                                     ; $7cfd: $36 $3c
	ld l, $20                                        ; $7cff: $2e $20
	inc [hl]                                         ; $7d01: $34
	ld bc, $76a0                                     ; $7d02: $01 $a0 $76
	ld a, $30                                        ; $7d05: $3e $30
	call $3d9f                                       ; $7d07: $cd $9f $3d
	ld a, $4f                                        ; $7d0a: $3e $4f
	call $1e2e                                       ; $7d0c: $cd $2e $1e
	ret                                              ; $7d0f: $c9


	ld l, $30                                        ; $7d10: $2e $30
	dec [hl]                                         ; $7d12: $35
	ret nz                                           ; $7d13: $c0

	ld l, $20                                        ; $7d14: $2e $20
	inc [hl]                                         ; $7d16: $34
	ld bc, $0105                                     ; $7d17: $01 $05 $01
	call $3cd9                                       ; $7d1a: $cd $d9 $3c
	ret                                              ; $7d1d: $c9


	call $3ce2                                       ; $7d1e: $cd $e2 $3c
	ret nz                                           ; $7d21: $c0

	ld l, $0a                                        ; $7d22: $2e $0a
	ld [hl], $07                                     ; $7d24: $36 $07
	ld hl, $ca00                                     ; $7d26: $21 $00 $ca
	call $2dfc                                       ; $7d29: $cd $fc $2d
	ret                                              ; $7d2c: $c9


	rst JumpTable                                          ; $7d2d: $c7
	ld a, [hl-]                                      ; $7d2e: $3a
	ld a, l                                          ; $7d2f: $7d
	ld d, b                                          ; $7d30: $50
	ld a, l                                          ; $7d31: $7d
	ld h, l                                          ; $7d32: $65
	ld a, l                                          ; $7d33: $7d
	ld a, d                                          ; $7d34: $7a
	ld a, l                                          ; $7d35: $7d
	sub d                                            ; $7d36: $92
	ld a, l                                          ; $7d37: $7d
	cp d                                             ; $7d38: $ba
	ld a, l                                          ; $7d39: $7d
	inc [hl]                                         ; $7d3a: $34
	ld l, $30                                        ; $7d3b: $2e $30
	ld [hl], $3c                                     ; $7d3d: $36 $3c
	ld de, $8c1c                                     ; $7d3f: $11 $1c $8c
	call $3bf4                                       ; $7d42: $cd $f4 $3b
	ld bc, $500e                                     ; $7d45: $01 $0e $50
	ld a, $30                                        ; $7d48: $3e $30
	call $3bfc                                       ; $7d4a: $cd $fc $3b
	call $3d53                                       ; $7d4d: $cd $53 $3d
	call $16d0                                       ; $7d50: $cd $d0 $16
	ld l, $30                                        ; $7d53: $2e $30
	dec [hl]                                         ; $7d55: $35
	ret nz                                           ; $7d56: $c0

	ld [hl], $3c                                     ; $7d57: $36 $3c
	ld l, $0a                                        ; $7d59: $2e $0a
	inc [hl]                                         ; $7d5b: $34
	ld bc, $500f                                     ; $7d5c: $01 $0f $50
	ld a, $30                                        ; $7d5f: $3e $30
	call $3bfc                                       ; $7d61: $cd $fc $3b
	ret                                              ; $7d64: $c9


	call $16d0                                       ; $7d65: $cd $d0 $16
	ld l, $30                                        ; $7d68: $2e $30
	dec [hl]                                         ; $7d6a: $35
	ret nz                                           ; $7d6b: $c0

	ld [hl], $78                                     ; $7d6c: $36 $78
	ld l, $0a                                        ; $7d6e: $2e $0a
	inc [hl]                                         ; $7d70: $34
	ld bc, $5010                                     ; $7d71: $01 $10 $50
	ld a, $30                                        ; $7d74: $3e $30
	call $3bfc                                       ; $7d76: $cd $fc $3b
	ret                                              ; $7d79: $c9


	call $16d0                                       ; $7d7a: $cd $d0 $16
	ld l, $30                                        ; $7d7d: $2e $30
	dec [hl]                                         ; $7d7f: $35
	ret nz                                           ; $7d80: $c0

	ld l, $0a                                        ; $7d81: $2e $0a
	inc [hl]                                         ; $7d83: $34
	rst FarCall                                          ; $7d84: $f7
	sbc h                                            ; $7d85: $9c
	ld b, l                                          ; $7d86: $45
	add hl, bc                                       ; $7d87: $09
	ld b, d                                          ; $7d88: $42
	ld c, e                                          ; $7d89: $4b
	ld de, $fe00                                     ; $7d8a: $11 $00 $fe
	rst FarCall                                          ; $7d8d: $f7
	xor l                                            ; $7d8e: $ad
	ld b, h                                          ; $7d8f: $44
	add hl, bc                                       ; $7d90: $09
	ret                                              ; $7d91: $c9


	call $3d1b                                       ; $7d92: $cd $1b $3d
	rst FarCall                                          ; $7d95: $f7
	sbc h                                            ; $7d96: $9c
	ld b, l                                          ; $7d97: $45
	add hl, bc                                       ; $7d98: $09
	ld l, $07                                        ; $7d99: $2e $07
	ld a, [hl]                                       ; $7d9b: $7e
	cp d                                             ; $7d9c: $ba
	jr nc, jr_00a_7db6                               ; $7d9d: $30 $17

	ld l, $0a                                        ; $7d9f: $2e $0a
	inc [hl]                                         ; $7da1: $34
	ld l, $30                                        ; $7da2: $2e $30
	ld [hl], $3c                                     ; $7da4: $36 $3c
	ld a, $09                                        ; $7da6: $3e $09
	call $1e2e                                       ; $7da8: $cd $2e $1e
	call $3da5                                       ; $7dab: $cd $a5 $3d
	ld bc, $5011                                     ; $7dae: $01 $11 $50
	ld a, $30                                        ; $7db1: $3e $30
	call $3bfc                                       ; $7db3: $cd $fc $3b

jr_00a_7db6:
	call $16d0                                       ; $7db6: $cd $d0 $16
	ret                                              ; $7db9: $c9


	call $16d0                                       ; $7dba: $cd $d0 $16
	ret                                              ; $7dbd: $c9


Jump_00a_7dbe:
	inc [hl]                                         ; $7dbe: $34
	ld hl, $7e2e                                     ; $7dbf: $21 $2e $7e
	ld a, [$d842]                                    ; $7dc2: $fa $42 $d8
	and $0f                                          ; $7dc5: $e6 $0f
	rst AddAOntoHL                                          ; $7dc7: $ef
	ld c, [hl]                                       ; $7dc8: $4e
	ld b, $02                                        ; $7dc9: $06 $02
	call $3cd9                                       ; $7dcb: $cd $d9 $3c
	xor a                                            ; $7dce: $af
	ld [$d8b0], a                                    ; $7dcf: $ea $b0 $d8
	rst FarCall                                          ; $7dd2: $f7
	ld h, h                                          ; $7dd3: $64
	ld b, [hl]                                       ; $7dd4: $46
	add hl, bc                                       ; $7dd5: $09
	ret                                              ; $7dd6: $c9


Jump_00a_7dd7:
	call $3ce2                                       ; $7dd7: $cd $e2 $3c
	ret nz                                           ; $7dda: $c0

	ld l, $20                                        ; $7ddb: $2e $20
	inc [hl]                                         ; $7ddd: $34
	ld l, $30                                        ; $7dde: $2e $30
	ld [hl], $3c                                     ; $7de0: $36 $3c
	ld a, $26                                        ; $7de2: $3e $26
	call $1e2e                                       ; $7de4: $cd $2e $1e
	ret                                              ; $7de7: $c9


Jump_00a_7de8:
	call $3d4b                                       ; $7de8: $cd $4b $3d
	ld l, $30                                        ; $7deb: $2e $30
	dec [hl]                                         ; $7ded: $35
	ret nz                                           ; $7dee: $c0

	ld [hl], $4b                                     ; $7def: $36 $4b
	ld l, $20                                        ; $7df1: $2e $20
	inc [hl]                                         ; $7df3: $34
	call $3d58                                       ; $7df4: $cd $58 $3d
	ret                                              ; $7df7: $c9


Jump_00a_7df8:
	inc [hl]                                         ; $7df8: $34
	push hl                                          ; $7df9: $e5
	ld hl, $7e38                                     ; $7dfa: $21 $38 $7e
	ld a, [$d842]                                    ; $7dfd: $fa $42 $d8
	and $0f                                          ; $7e00: $e6 $0f
	call $3c8f                                       ; $7e02: $cd $8f $3c
	pop hl                                           ; $7e05: $e1
	ld de, $8c48                                     ; $7e06: $11 $48 $8c
	ld a, $00                                        ; $7e09: $3e $00
	call $3d99                                       ; $7e0b: $cd $99 $3d
	call $3d53                                       ; $7e0e: $cd $53 $3d
	ld hl, $7e4c                                     ; $7e11: $21 $4c $7e
	ld a, [$d842]                                    ; $7e14: $fa $42 $d8
	and $0f                                          ; $7e17: $e6 $0f
	call $3c8f                                       ; $7e19: $cd $8f $3c
	call $18c4                                       ; $7e1c: $cd $c4 $18
	ld hl, $7e60                                     ; $7e1f: $21 $60 $7e
	ld a, [$d842]                                    ; $7e22: $fa $42 $d8
	and $0f                                          ; $7e25: $e6 $0f
	call $3c83                                       ; $7e27: $cd $83 $3c
	call $3c78                                       ; $7e2a: $cd $78 $3c
	ret                                              ; $7e2d: $c9


	ld bc, $0602                                     ; $7e2e: $01 $02 $06
	rlca                                             ; $7e31: $07
	ld [$0a09], sp                                   ; $7e32: $08 $09 $0a
	dec bc                                           ; $7e35: $0b
	inc c                                            ; $7e36: $0c
	dec c                                            ; $7e37: $0d
	adc h                                            ; $7e38: $8c
	ld [hl], c                                       ; $7e39: $71
	and b                                            ; $7e3a: $a0
	ld [hl], h                                       ; $7e3b: $74
	add h                                            ; $7e3c: $84
	ld [hl], d                                       ; $7e3d: $72
	cp h                                             ; $7e3e: $bc
	ld [hl], e                                       ; $7e3f: $73
	ld d, h                                          ; $7e40: $54
	ld h, c                                          ; $7e41: $61
	ld hl, sp+$5c                                    ; $7e42: $f8 $5c
	ld d, b                                          ; $7e44: $50
	ld h, b                                          ; $7e45: $60
	cp h                                             ; $7e46: $bc
	ld e, l                                          ; $7e47: $5d
	add h                                            ; $7e48: $84
	ld h, e                                          ; $7e49: $63
	ld [hl], b                                       ; $7e4a: $70
	halt                                             ; $7e4b: $76
	ld [de], a                                       ; $7e4c: $12
	ld h, h                                          ; $7e4d: $64
	ld [hl], $64                                     ; $7e4e: $36 $64
	jr jr_00a_7eb6                                   ; $7e50: $18 $64

	ld e, $64                                        ; $7e52: $1e $64
	ld d, h                                          ; $7e54: $54
	ld h, h                                          ; $7e55: $64
	jr nc, jr_00a_7ebc                               ; $7e56: $30 $64

	ld c, [hl]                                       ; $7e58: $4e
	ld h, h                                          ; $7e59: $64
	ld c, b                                          ; $7e5a: $48
	ld h, h                                          ; $7e5b: $64
	inc h                                            ; $7e5c: $24
	ld h, h                                          ; $7e5d: $64
	ld a, [hl+]                                      ; $7e5e: $2a
	ld h, h                                          ; $7e5f: $64
	add [hl]                                         ; $7e60: $86
	ld a, h                                          ; $7e61: $7c
	xor d                                            ; $7e62: $aa
	ld a, h                                          ; $7e63: $7c
	sub d                                            ; $7e64: $92
	ld a, h                                          ; $7e65: $7c
	sbc [hl]                                         ; $7e66: $9e
	ld a, h                                          ; $7e67: $7c
	ld [de], a                                       ; $7e68: $12
	ld [hl], l                                       ; $7e69: $75
	xor $74                                          ; $7e6a: $ee $74
	ld b, $75                                        ; $7e6c: $06 $75
	ld a, [$e274]                                    ; $7e6e: $fa $74 $e2
	ld [hl], h                                       ; $7e71: $74
	ld de, $f97f                                     ; $7e72: $11 $7f $f9
	ld [de], a                                       ; $7e75: $12
	inc e                                            ; $7e76: $1c
	ld b, c                                          ; $7e77: $41
	db $10                                           ; $7e78: $10
	sub d                                            ; $7e79: $92
	ld [de], a                                       ; $7e7a: $12
	jr c, jr_00a_7ebe                                ; $7e7b: $38 $41

	ld d, b                                          ; $7e7d: $50
	sub d                                            ; $7e7e: $92
	ld [de], a                                       ; $7e7f: $12
	ccf                                              ; $7e80: $3f
	ld b, c                                          ; $7e81: $41
	or b                                             ; $7e82: $b0
	sub a                                            ; $7e83: $97
	ld [de], a                                       ; $7e84: $12
	ld e, b                                          ; $7e85: $58
	ld b, c                                          ; $7e86: $41
	ldh a, [$97]                                     ; $7e87: $f0 $97
	rst $38                                          ; $7e89: $ff
	ld sp, hl                                        ; $7e8a: $f9
	ld [de], a                                       ; $7e8b: $12
	nop                                              ; $7e8c: $00
	ld b, b                                          ; $7e8d: $40
	nop                                              ; $7e8e: $00
	sub b                                            ; $7e8f: $90
	ld [de], a                                       ; $7e90: $12
	ld a, [$b040]                                    ; $7e91: $fa $40 $b0
	sub c                                            ; $7e94: $91
	rst $38                                          ; $7e95: $ff
	ld sp, hl                                        ; $7e96: $f9
	inc d                                            ; $7e97: $14
	nop                                              ; $7e98: $00
	ld b, b                                          ; $7e99: $40
	nop                                              ; $7e9a: $00
	add b                                            ; $7e9b: $80
	rst $38                                          ; $7e9c: $ff
	ld sp, hl                                        ; $7e9d: $f9
	inc d                                            ; $7e9e: $14
	or [hl]                                          ; $7e9f: $b6
	ld b, b                                          ; $7ea0: $40
	nop                                              ; $7ea1: $00
	add b                                            ; $7ea2: $80
	rst $38                                          ; $7ea3: $ff
	ld sp, hl                                        ; $7ea4: $f9
	inc d                                            ; $7ea5: $14
	ld l, d                                          ; $7ea6: $6a
	ld b, c                                          ; $7ea7: $41
	nop                                              ; $7ea8: $00
	add b                                            ; $7ea9: $80
	rst $38                                          ; $7eaa: $ff
	ld sp, hl                                        ; $7eab: $f9
	inc d                                            ; $7eac: $14
	call c, $0042                                    ; $7ead: $dc $42 $00
	add e                                            ; $7eb0: $83
	inc d                                            ; $7eb1: $14
	inc d                                            ; $7eb2: $14
	ld b, d                                          ; $7eb3: $42
	add b                                            ; $7eb4: $80
	add e                                            ; $7eb5: $83

jr_00a_7eb6:
	rst $38                                          ; $7eb6: $ff
	ld sp, hl                                        ; $7eb7: $f9
	inc d                                            ; $7eb8: $14
	ld e, b                                          ; $7eb9: $58
	ld b, e                                          ; $7eba: $43
	nop                                              ; $7ebb: $00

jr_00a_7ebc:
	add b                                            ; $7ebc: $80
	rst $38                                          ; $7ebd: $ff

jr_00a_7ebe:
	ld sp, hl                                        ; $7ebe: $f9
	inc d                                            ; $7ebf: $14
	dec bc                                           ; $7ec0: $0b
	ld b, h                                          ; $7ec1: $44
	nop                                              ; $7ec2: $00
	add b                                            ; $7ec3: $80
	rst $38                                          ; $7ec4: $ff
	ld sp, hl                                        ; $7ec5: $f9
	inc d                                            ; $7ec6: $14

jr_00a_7ec7:
	xor d                                            ; $7ec7: $aa
	ld b, h                                          ; $7ec8: $44
	nop                                              ; $7ec9: $00
	add e                                            ; $7eca: $83
	rst $38                                          ; $7ecb: $ff
	ld sp, hl                                        ; $7ecc: $f9
	inc d                                            ; $7ecd: $14
	sbc e                                            ; $7ece: $9b
	ld c, h                                          ; $7ecf: $4c
	ret nz                                           ; $7ed0: $c0

	add b                                            ; $7ed1: $80
	rst $38                                          ; $7ed2: $ff
	ld sp, hl                                        ; $7ed3: $f9
	inc d                                            ; $7ed4: $14

jr_00a_7ed5:
	inc l                                            ; $7ed5: $2c
	ld b, a                                          ; $7ed6: $47
	nop                                              ; $7ed7: $00
	add e                                            ; $7ed8: $83
	inc d                                            ; $7ed9: $14
	db $dd                                           ; $7eda: $dd
	ld b, a                                          ; $7edb: $47
	ldh [hDisp0_SCY], a                                     ; $7edc: $e0 $83
	inc d                                            ; $7ede: $14
	ld bc, $a04b                                     ; $7edf: $01 $4b $a0
	add [hl]                                         ; $7ee2: $86
	rst $38                                          ; $7ee3: $ff
	ld sp, hl                                        ; $7ee4: $f9
	inc d                                            ; $7ee5: $14
	inc l                                            ; $7ee6: $2c
	ld b, a                                          ; $7ee7: $47
	nop                                              ; $7ee8: $00
	add e                                            ; $7ee9: $83
	inc d                                            ; $7eea: $14
	ld a, b                                          ; $7eeb: $78
	ld c, c                                          ; $7eec: $49
	ldh [hDisp0_SCY], a                                     ; $7eed: $e0 $83
	inc d                                            ; $7eef: $14
	ld bc, $a04b                                     ; $7ef0: $01 $4b $a0
	add [hl]                                         ; $7ef3: $86
	rst $38                                          ; $7ef4: $ff
	ld sp, hl                                        ; $7ef5: $f9
	inc d                                            ; $7ef6: $14
	call z, $004b                                    ; $7ef7: $cc $4b $00
	add l                                            ; $7efa: $85
	rst $38                                          ; $7efb: $ff
	ld sp, hl                                        ; $7efc: $f9
	inc d                                            ; $7efd: $14
	ld b, l                                          ; $7efe: $45
	ld c, l                                          ; $7eff: $4d
	ret nz                                           ; $7f00: $c0

	add b                                            ; $7f01: $80
	rst $38                                          ; $7f02: $ff
	ld sp, hl                                        ; $7f03: $f9
	inc d                                            ; $7f04: $14
	rst SubAFromDE                                          ; $7f05: $df
	ld c, l                                          ; $7f06: $4d
	nop                                              ; $7f07: $00
	add e                                            ; $7f08: $83
	rst $38                                          ; $7f09: $ff
	ld sp, hl                                        ; $7f0a: $f9
	inc d                                            ; $7f0b: $14
	rst SubAFromDE                                          ; $7f0c: $df
	ld c, [hl]                                       ; $7f0d: $4e
	nop                                              ; $7f0e: $00
	add l                                            ; $7f0f: $85
	rst $38                                          ; $7f10: $ff
	ld sp, hl                                        ; $7f11: $f9
	inc d                                            ; $7f12: $14
	di                                               ; $7f13: $f3
	ld a, d                                          ; $7f14: $7a
	nop                                              ; $7f15: $00
	add b                                            ; $7f16: $80
	inc d                                            ; $7f17: $14
	sbc e                                            ; $7f18: $9b
	ld a, e                                          ; $7f19: $7b
	nop                                              ; $7f1a: $00
	add e                                            ; $7f1b: $83
	rst $38                                          ; $7f1c: $ff
	ld sp, hl                                        ; $7f1d: $f9
	inc de                                           ; $7f1e: $13
	add c                                            ; $7f1f: $81
	ld e, d                                          ; $7f20: $5a
	nop                                              ; $7f21: $00
	add e                                            ; $7f22: $83
	rst $38                                          ; $7f23: $ff
	ld sp, hl                                        ; $7f24: $f9
	inc de                                           ; $7f25: $13
	ld b, e                                          ; $7f26: $43
	ld e, h                                          ; $7f27: $5c
	nop                                              ; $7f28: $00
	add e                                            ; $7f29: $83
	rst $38                                          ; $7f2a: $ff
	ld sp, hl                                        ; $7f2b: $f9
	inc de                                           ; $7f2c: $13
	ld l, h                                          ; $7f2d: $6c
	ld e, [hl]                                       ; $7f2e: $5e
	nop                                              ; $7f2f: $00
	add e                                            ; $7f30: $83
	rst $38                                          ; $7f31: $ff
	ld sp, hl                                        ; $7f32: $f9
	inc de                                           ; $7f33: $13
	ld h, e                                          ; $7f34: $63
	ld h, b                                          ; $7f35: $60
	nop                                              ; $7f36: $00
	add e                                            ; $7f37: $83
	rst $38                                          ; $7f38: $ff
	ld sp, hl                                        ; $7f39: $f9
	inc de                                           ; $7f3a: $13
	dec [hl]                                         ; $7f3b: $35
	ld h, d                                          ; $7f3c: $62
	add b                                            ; $7f3d: $80
	add c                                            ; $7f3e: $81
	inc de                                           ; $7f3f: $13
	sub d                                            ; $7f40: $92
	ld h, d                                          ; $7f41: $62
	jr nz, jr_00a_7ec7                               ; $7f42: $20 $83

	rst $38                                          ; $7f44: $ff
	ld sp, hl                                        ; $7f45: $f9
	inc de                                           ; $7f46: $13
	and $64                                          ; $7f47: $e6 $64
	add b                                            ; $7f49: $80
	add c                                            ; $7f4a: $81
	rst $38                                          ; $7f4b: $ff
	ld sp, hl                                        ; $7f4c: $f9
	inc de                                           ; $7f4d: $13
	jr nc, jr_00a_7fb6                               ; $7f4e: $30 $66

	jr nz, jr_00a_7ed5                               ; $7f50: $20 $83

	rst $38                                          ; $7f52: $ff
	ld sp, hl                                        ; $7f53: $f9
	inc de                                           ; $7f54: $13
	ld a, e                                          ; $7f55: $7b
	ld h, a                                          ; $7f56: $67
	add b                                            ; $7f57: $80
	add c                                            ; $7f58: $81
	inc de                                           ; $7f59: $13
	dec h                                            ; $7f5a: $25
	ld l, b                                          ; $7f5b: $68
	nop                                              ; $7f5c: $00
	add e                                            ; $7f5d: $83
	rst $38                                          ; $7f5e: $ff
	ld sp, hl                                        ; $7f5f: $f9
	inc de                                           ; $7f60: $13
	rst FarCall                                          ; $7f61: $f7
	ld l, c                                          ; $7f62: $69
	ld b, b                                          ; $7f63: $40
	add d                                            ; $7f64: $82
	inc de                                           ; $7f65: $13
	adc l                                            ; $7f66: $8d
	ld l, d                                          ; $7f67: $6a
	nop                                              ; $7f68: $00
	add e                                            ; $7f69: $83
	rst $38                                          ; $7f6a: $ff
	ld sp, hl                                        ; $7f6b: $f9
	inc de                                           ; $7f6c: $13
	add a                                            ; $7f6d: $87
	ld l, h                                          ; $7f6e: $6c
	nop                                              ; $7f6f: $00
	add e                                            ; $7f70: $83
	rst $38                                          ; $7f71: $ff
	ld sp, hl                                        ; $7f72: $f9
	inc de                                           ; $7f73: $13
	rrca                                             ; $7f74: $0f
	ld l, l                                          ; $7f75: $6d
	nop                                              ; $7f76: $00
	add e                                            ; $7f77: $83
	rst $38                                          ; $7f78: $ff
	ld sp, hl                                        ; $7f79: $f9
	inc de                                           ; $7f7a: $13
	or l                                             ; $7f7b: $b5
	ld l, l                                          ; $7f7c: $6d
	nop                                              ; $7f7d: $00
	add e                                            ; $7f7e: $83
	rst $38                                          ; $7f7f: $ff
	ld sp, hl                                        ; $7f80: $f9
	inc de                                           ; $7f81: $13
	sub l                                            ; $7f82: $95
	ld [hl], b                                       ; $7f83: $70
	nop                                              ; $7f84: $00
	add e                                            ; $7f85: $83
	rst $38                                          ; $7f86: $ff
	ld sp, hl                                        ; $7f87: $f9
	inc de                                           ; $7f88: $13
	cp e                                             ; $7f89: $bb
	ld [hl], d                                       ; $7f8a: $72
	nop                                              ; $7f8b: $00
	add e                                            ; $7f8c: $83
	rst $38                                          ; $7f8d: $ff
	ld sp, hl                                        ; $7f8e: $f9
	inc de                                           ; $7f8f: $13
	call z, $0072                                    ; $7f90: $cc $72 $00
	add e                                            ; $7f93: $83
	rst $38                                          ; $7f94: $ff
	ld sp, hl                                        ; $7f95: $f9
	inc de                                           ; $7f96: $13
	or c                                             ; $7f97: $b1
	ld [hl], e                                       ; $7f98: $73
	nop                                              ; $7f99: $00
	add e                                            ; $7f9a: $83
	rst $38                                          ; $7f9b: $ff
	ld sp, hl                                        ; $7f9c: $f9
	inc de                                           ; $7f9d: $13
	and c                                            ; $7f9e: $a1
	ld [hl], l                                       ; $7f9f: $75
	nop                                              ; $7fa0: $00
	add e                                            ; $7fa1: $83
	rst $38                                          ; $7fa2: $ff
	ld sp, hl                                        ; $7fa3: $f9
	inc de                                           ; $7fa4: $13
	and c                                            ; $7fa5: $a1
	ld [hl], l                                       ; $7fa6: $75
	and b                                            ; $7fa7: $a0
	add h                                            ; $7fa8: $84
	rst $38                                          ; $7fa9: $ff
	ld sp, hl                                        ; $7faa: $f9
	inc de                                           ; $7fab: $13
	ld l, b                                          ; $7fac: $68
	ld [hl], a                                       ; $7fad: $77
	nop                                              ; $7fae: $00
	add e                                            ; $7faf: $83
	rst $38                                          ; $7fb0: $ff
	ld sp, hl                                        ; $7fb1: $f9
	inc de                                           ; $7fb2: $13
	sub d                                            ; $7fb3: $92
	ld a, c                                          ; $7fb4: $79
	nop                                              ; $7fb5: $00

jr_00a_7fb6:
	add e                                            ; $7fb6: $83
	rst $38                                          ; $7fb7: $ff
	ld sp, hl                                        ; $7fb8: $f9
	inc de                                           ; $7fb9: $13
	db $fc                                           ; $7fba: $fc
	ld a, c                                          ; $7fbb: $79
	ret nz                                           ; $7fbc: $c0

	add b                                            ; $7fbd: $80
	rst $38                                          ; $7fbe: $ff
	ld sp, hl                                        ; $7fbf: $f9
	inc de                                           ; $7fc0: $13
	and d                                            ; $7fc1: $a2
	ld a, d                                          ; $7fc2: $7a
	ret nz                                           ; $7fc3: $c0

	add b                                            ; $7fc4: $80
	rst $38                                          ; $7fc5: $ff
	ld sp, hl                                        ; $7fc6: $f9
	inc de                                           ; $7fc7: $13
	ld h, c                                          ; $7fc8: $61
	ld a, e                                          ; $7fc9: $7b
	ret nz                                           ; $7fca: $c0

	add b                                            ; $7fcb: $80
	rst $38                                          ; $7fcc: $ff
	ld sp, hl                                        ; $7fcd: $f9
	inc de                                           ; $7fce: $13
	add hl, sp                                       ; $7fcf: $39
	ld a, h                                          ; $7fd0: $7c
	nop                                              ; $7fd1: $00
	add e                                            ; $7fd2: $83
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
